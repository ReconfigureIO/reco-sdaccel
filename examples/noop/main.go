package main

import (
	// import the entire framework (including bundled verilog)
	_ "sdaccel"

	"sdaccel/memory"
)

// magic identifier for exporting
func Top(
	memReadAddr chan<- memory.Addr,
	memReadData <-chan memory.ReadData,

	memWriteAddr chan<- memory.Addr,
	memWriteData chan<- memory.WriteData,
	memWriteResp <-chan memory.Response) {

	// Disable AXI memory accesses.
	go memory.DisableReads(memReadAddr, memReadData)
	go memory.DisableWrites(memWriteAddr, memWriteData, memWriteResp)
}
