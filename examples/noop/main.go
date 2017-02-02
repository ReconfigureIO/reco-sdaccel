package main

import (
	// import the entire framework (including bundled verilog)
	_ "sdaccel"

	"sdaccel/control"
	"sdaccel/memory"
)

// magic identifier for exporting
func Top(
	controlAddr chan<- uint32,
	controlData <-chan uint32,

	memReadAddr chan<- memory.Addr,
	memReadData <-chan memory.ReadData,

	memWriteAddr chan<- memory.Addr,
	memWriteData chan<- memory.WriteData,
	memResp <-chan memory.Response,

	controlReadAddr <-chan control.Addr,
	controlReadData chan<- control.ReadData,

	controlWriteAddr <-chan control.Addr,
	controlWriteData <-chan control.WriteData,
	controlResp chan<- control.Resp) {

	// Disable AXI-Lite control accesses.
	go control.DisableReads(controlReadAddr, controlReadData)
	go control.DisableWrites(controlWriteAddr, controlWriteData, controlResp)
}
