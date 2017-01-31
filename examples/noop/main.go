package main

import (
	// import the entire framework (including bundled verilog)
	_ "sdaccel"

	"sdaccel/memory"
)

// magic identifier for exporting
func Top(
	controlAddr chan<- uint32,
	controlData <-chan uint32,

	memReadAddr <-chan memory.Addr,
	memReadData chan<- memory.ReadData,
	memWriteAddr <-chan memory.Addr,
	memWriteData <-chan memory.WriteData,
	memResp chan<- memory.Response) {
}
