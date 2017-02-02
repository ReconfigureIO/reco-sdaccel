package main

import (
	// import the entire framework (including bundled verilog)
	_ "sdaccel"

	"sdaccel/control"
	"sdaccel/memory"
)

// magic identifier for exporting
func Top(
	paramAddr chan<- uint32,
	paramData <-chan uint32,

	memReadAddr chan<- memory.Addr,
	memReadData <-chan memory.ReadData,

	memWriteAddr chan<- memory.Addr,
	memWriteData chan<- memory.WriteData,
	memWriteResp <-chan memory.Response,

	controlReadAddr <-chan control.Addr,
	controlReadData chan<- control.ReadData,

	controlWriteAddr <-chan control.Addr,
	controlWriteData <-chan control.WriteData,
	controlResp chan<- control.Resp) {

	// Disable parameter RAM accesses.
	go control.DisableParams(paramAddr, paramData)

	// Disable AXI-Lite control accesses.
	go control.DisableReads(controlReadAddr, controlReadData)
	go control.DisableWrites(controlWriteAddr, controlWriteData, controlResp)

	// Disable AXI memory accesses.
	go memory.DisableReads(memReadAddr, memReadData)
	go memory.DisableWrites(memWriteAddr, memWriteData, memWriteResp)
}
