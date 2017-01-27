package main

import (
	// import the entire framework (including bundled verilog)
	"sdaccel"

	"sdaccel/control"
	"sdaccel/memory"
)

// magic identifier for exporting
func Top(
	controlReadAddr <-chan control.Addr,
	controlReadData chan<- control.ReadData,
	controlWriteAddr <-chan control.Addr,
	controlWriteData <-chan control.WriteData,
	controlResp chan<- control.Resp,

	memReadAddr <-chan memory.Addr,
	memReadData chan<- memory.ReadData,
	memWriteAddr <-chan memory.Addr,
	memWriteData <-chan memory.WriteData,
	memResp chan<- memory.Response) {
}
