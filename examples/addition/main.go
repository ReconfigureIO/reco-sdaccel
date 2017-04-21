package main

import (
	// Import the entire framework (including bundled verilog)
	_ "sdaccel"
	// Use the new AXI protocol package
	aximemory "axi/memory"
	axiprotocol "axi/protocol"
	// Use the simple memory access API
	"sdaccel/memory"
)

// Magic identifier for exporting
func Top(
	a uint32,
	b uint32,
	addr uintptr,

	memReadAddr chan<- axiprotocol.Addr,
	memReadData <-chan axiprotocol.ReadData,

	memWriteAddr chan<- axiprotocol.Addr,
	memWriteData chan<- axiprotocol.WriteData,
	memWriteResp <-chan axiprotocol.WriteResp) {

	// Disable memory reads
	go memory.DisableReads(memReadAddr, memReadData)

	val := a + b

	memory.Write(addr, val, memWriteAddr, memWriteData, memWriteResp)
}
