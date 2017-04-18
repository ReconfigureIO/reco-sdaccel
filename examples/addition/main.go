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
	a uint32,
	b uint32,
	addr uintptr,

	memReadAddr chan<- protocol.Addr,
	memReadData <-chan protocol.ReadData,

	memWriteAddr chan<- protocol.Addr,
	memWriteData chan<- protocol.WriteData,
	memWriteResp <-chan protocol.WriteResp) {

	// Disable memory reads
	go memory.DisableReads(memReadAddr, memReadData)

	val := a + b

	memory.Write(addr, val, memWriteAddr, memWriteData, memWriteResp)
}
