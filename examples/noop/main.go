package main

import (
	// import the entire framework (including bundled verilog)
	"sdaccel"

	"sdaccel/control"
)

// magic identifier for exporting
func Top(
	controlReadAddr <-chan control.Addr,
	controlReadData chan<- control.ReadData,
	controlWriteAddr <-chan control.Addr,
	controlWriteData <-chan control.WriteData,
	controlResp chan<- control.Resp) {

	return
}
