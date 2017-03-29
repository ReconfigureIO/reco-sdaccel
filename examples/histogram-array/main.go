package main

import (
	// import the entire framework (including bundled verilog)
	_ "sdaccel"
	"sdaccel/memory"
)

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

	var histogram [512]uint32

	// The host needs to provide the length we should read
	for ; length > 0; length-- {
		// First we'll read each sample
		sample := memory.Read(inputData, memReadAddr, memReadData)
		// calculate the bin for the histogram
		index := uint16(sample) >> (16 - 9)

		// And increment the value in that bin
		histogram[uint(index)] += 1

		inputData += 4
	}

	for i := 0; i < 512; i++ {
		val := histogram[i]
		// we assume ouput memory is already zeroed
		if val > 0 {
			// write the val to the appropriate address
			memory.Write(outputData, val, memWriteAddr, memWriteData, memResp)
		}
		outputData += 4

	}
}
