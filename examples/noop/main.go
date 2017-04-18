package main

import (
	// Import the entire framework (including bundled verilog)
	_ "sdaccel"
	// Use the new AXI protocol package
	"axi/protocol"
	// Use the simple memory access API
	"sdaccel/memory"
)

// Magic identifier for exporting
func Top(
	memReadAddr chan<- protocol.Addr,
	memReadData <-chan protocol.ReadData,

	memWriteAddr chan<- protocol.Addr,
	memWriteData chan<- protocol.WriteData,
	memWriteResp <-chan protocol.WriteResp) {

	// Disable AXI memory accesses.
	go memory.DisableReads(memReadAddr, memReadData)
	go memory.DisableWrites(memWriteAddr, memWriteData, memWriteResp)
}
