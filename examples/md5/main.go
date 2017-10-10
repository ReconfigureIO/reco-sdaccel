// DO NOT EDIT.
// Generate with: go run gen.go -output main.go

package main

import (
	// import the entire framework (including bundled verilog)
	_ "sdaccel"
	// Use the new AXI protocol package
	aximemory "axi/memory"
	axiprotocol "axi/protocol"

	"github.com/ReconfigureIO/crypto/md5"
)

// Read the number of blocks from
func ProcessMD5(
	numBlock uint,
	inputData uintptr,
	memReadAddr chan<- axiprotocol.Addr,
	memReadData <-chan axiprotocol.ReadData) md5.Digest {

	d := md5.New()

	blocks := make(chan [16]uint32)

	go func() {
		num64s := numBlocks << 3
		block := [16]uint32{}

		data := make(chan uint64)

		go aximemory.ReadBurstUInt64(
			memReadAddr, memReadData, true, inputData, num64s, data)

		for i := numBlocks; i != 0; i-- {
			for j := 0; j != 16; j += 2 {
				val := <-data
				block[j] = uint32(val >> 32)
				block[j+1] = uint32(val)
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
	memWriteAddr chan<- axiprotocol.Addr,
	memWriteData chan<- axiprotocol.WriteData,
	memWriteResp <-chan axiprotocol.WriteResp) {

	vals := d.Digest()
	data := make(chan uint32)
	go func() {
		for i := 0; i < 4; i++ {
			data <- vals[i]
		}
	}()

	aximemory.WriteBurstUInt32(
		memWriteAddr, memWriteData, memWriteResp, true, outputData, 4, data)
}

func Top(
	// The number of blocks to process
	numBlocks uint,

	inputData uintptr,
	outputData uintptr,

	memReadAddr chan<- axiprotocol.Addr,
	memReadData <-chan axiprotocol.ReadData,

	memWriteAddr chan<- axiprotocol.Addr,
	memWriteData chan<- axiprotocol.WriteData,
	memWriteResp <-chan axiprotocol.WriteResp) {

	d := ProcessMD5(numBlock, inputData, memReadAddr, memReadData)
	WriteSum(d, outputData, memWriteAddr, memWriteData, memWriteResp)
}
