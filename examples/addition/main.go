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

	// Disable AXI memory accesses.
	go memory.DisableReads(memReadAddr, memReadData)
	go memory.DisableWrites(memWriteAddr, memWriteData, memResp)

	read := func(a uint32) uint32 {
		controlAddr <- a
		return <-controlData
	}

	val := read(0x40) + read(0x44)
//	addr := uint64(read(0x4C))<<32 | uint64(read(0x48))

//	memWriteAddr <- memory.Addr{
//		Addr: addr,
//		Len:  1,
//	}

//	memWriteData <- memory.WriteData{
//		Data: val,
//		Strb: [4]bool{1, 1, 1, 1},
//	}

//	<-memResp
}
