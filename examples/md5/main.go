// DO NOT EDIT.
// Generate with: go run gen.go -output main.go

package main

import (
	// import the entire framework (including bundled verilog)
	_ "sdaccel"
	// Use the new AXI protocol package
	memory "smi/memory"
	protocol "smi/protocol"

	"github.com/ReconfigureIO/crypto/md5"
)

// Read the number of blocks from
func ProcessMD5(
	numBlocks uint,
	inputData uintptr,

	readReqFlit chan<- protocol.Flit64,
	readRespFlit <-chan protocol.Flit64) md5.Digest {

	d := md5.New()

	blocks := make(chan [16]uint32)

	go func() {
		num32s := numBlocks << 4
		block := [16]uint32{}

		data := make(chan uint32)

		go memory.ReadBurstUInt32(readReqFlit, readRespFlit, inputData,
			protocol.SmiMemReadOptDefault, uint16(num32s), data)

		for i := numBlocks; i != 0; i-- {
			for j := 0; j != 16; j += 1 {
				block[j] = <-data
			}
			blocks <- block
		}
	}()

	for i := numBlocks; i != 0; i-- {
		d = d.Block(<-blocks)
	}

	return d
}

func WriteSum(
	d md5.Digest,
	outputData uintptr,

	writeReqFlit chan<- protocol.Flit64,
	writeRespFlit <-chan protocol.Flit64) {

	vals := d.Sum()
	data := make(chan uint8)
	go func() {
		for i := 0; i < 16; i++ {
			data <- uint8(vals[i])
		}
	}()

	memory.WriteBurstUInt8(writeReqFlit, writeRespFlit, outputData,
		protocol.SmiMemWriteOptDefault, 16, data)
}

func Top(
	// The number of blocks to process
	numBlocks uint,

	inputData uintptr,
	outputData uintptr,

	readReqFlit chan<- protocol.Flit64,
	readRespFlit <-chan protocol.Flit64,

	writeReqFlit chan<- protocol.Flit64,
	writeRespFlit <-chan protocol.Flit64) {

	d := ProcessMD5(numBlocks, inputData, readReqFlit, readRespFlit)
	WriteSum(d, outputData, writeReqFlit, writeRespFlit)
}
