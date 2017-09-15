// DO NOT EDIT.
// Generate with: go run gen.go -output main.go

package main

import (
	// import the entire framework (including bundled verilog)
	_ "sdaccel"
	// Use the new AXI protocol package
	aximemory "axi/memory"
	axiprotocol "axi/protocol"

	"github.com/Reconfigure.io/crypto/md5"
)

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

	d := md5.New()

	blocks := make(chan [16]uint32)

	go func() {
		num64s := numBlocks << 3
		block := [16]uint32{}

		go

		for i := numBlocks; i != 0; i-- {
			for j := 0; j != 16; j += 2 {

				block
			}
		}
	}()

	for i := numBlocks; i != 0; i-- {
		d = d.Block(<-blocks)
	}
}
