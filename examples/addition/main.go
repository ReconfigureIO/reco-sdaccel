package main

import (
	// import the entire framework (including bundled verilog)
	"sdaccel"

	"sdaccel/control"
)

func add(x uint32, y uint32) uint32 {
	return x + y
}

// magic identifier for exporting
func Top(
	controlReadAddr <-chan control.Addr,
	controlReadData chan<- control.ReadData,
	controlWriteAddr <-chan control.Addr,
	controlWriteData <-chan control.WriteData,
	controlResp chan<- control.Resp) {

	read := func(addr uint32) uint32 {
		controlReadAddr <- control.Addr{
			Addr:  addr,
			Cache: [4]bool{false, false, false, false},
			Prot:  [3]bool{false, false, false},
		}
		d := <-controlReadData
		return d.Data
	}

	println(add(read(0), read(1)))
}
