package main

import (
	// import the entire framework (including bundled verilog)
	_ "sdaccel"
	"sdaccel/control"
	"sdaccel/memory"
)

const (
	INPUT_INDEX  = 0x40
	OUTPUT_INDEX = 0x48
	LENGTH_INDEX = 0x48 + 8
)

type Histogram [512]uint32

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

	readParam := func(a uint32) uint32 {
		controlAddr <- a
		return <-controlData
	}

	readAddressParam := func(a uint32) uint64 {
		return (uint64(readParam(a+4)) << 32) + uint64(readParam(a))
	}

	inputData := readAddressParam(INPUT_INDEX)
	outputData := readAddressParam(OUTPUT_INDEX)

	// how many samples are there? (uint32)
	length := readParam(LENGTH_INDEX)

	var histogram Histogram

	for ; length > 0; length-- {
		sample := memory.Read(inputData, memoryReadAddr, memoryReadData)
		hist[sample>>(32-9)] += 1
		inputData += 4

	}

	endAddr := outputData + (512 * 4)
	for i := 0; i < 512; i++ {
		memory.Write(outputData, histogram[i], memWriteAddr, memWriteData, memResp)
	}
}