package main

import (
	// import the entire framework (including bundled verilog)
	_ "sdaccel"
	"sdaccel/memory"
)

type Histogram [512]uint32

// magic identifier for exporting
func Top(
	inputData uintptr,
	outputData uintptr,
	length uint32,

	memReadAddr chan<- memory.Addr,
	memReadData <-chan memory.ReadData,

	memWriteAddr chan<- memory.Addr,
	memWriteData chan<- memory.WriteData,
	memResp <-chan memory.Response) {

	var histogram Histogram

	for ; length > 0; length-- {
		sample := memory.Read(inputData, memoryReadAddr, memoryReadData)
		hist[sample>>(32-9)] += 1
		inputData += 4

	}

	endAddr := outputData + (512 * 4)
	for i := 0; i < 512; i++ {
		memory.Write(endAddr, histogram[i], memWriteAddr, memWriteData, memResp)
		endAddr += 4
	}
}
