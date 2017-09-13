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
	n uint,

	memReadAddr chan<- axiprotocol.Addr,
	memReadData <-chan axiprotocol.ReadData,

	memWriteAddr chan<- axiprotocol.Addr,
	memWriteData chan<- axiprotocol.WriteData,
	memWriteResp <-chan axiprotocol.WriteResp) {

	// Disable AXI memory accesses.
	go axiprotocol.ReadDisable(memReadAddr, memReadData)
	go axiprotocol.WriteDisable(memWriteAddr, memWriteData, memWriteResp)

	d := md5.New()
	b := [16]uint32{}

	for i := n; i != 0; i-- {
		d = d.Block(b)
	}
}
