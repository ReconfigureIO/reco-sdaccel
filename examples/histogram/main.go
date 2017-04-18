package main

import (
	// Import the entire framework (including bundled verilog)
	_ "sdaccel"
	// Use the new AXI protocol package
	"axi/protocol"
	// Use the simple memory access API
	"sdaccel/memory"
)

// Magic identifier for exporting
func Top(
	inputData uintptr,
	outputData uintptr,
	length uint32,

	memReadAddr chan<- protocol.Addr,
	memReadData <-chan protocol.ReadData,

	memWriteAddr chan<- protocol.Addr,
	memWriteData chan<- protocol.WriteData,
	memWriteResp <-chan protocol.WriteResp) {

	// The host needs to provide the length we should read
	for ; length > 0; length-- {
		// First we'll read each sample
		sample := memory.Read(inputData, memReadAddr, memReadData)

		// If we think of external memory we are writing to as a
		// [512]uint32, this would be the index we access, with an
		// extra 2 bits to make it a pointer
		outputPointer := outputData + uintptr((uint16(sample)>>(16-9))<<2)

		current := memory.Read(outputPointer, memReadAddr, memReadData)

		memory.Write(outputPointer, current+1, memWriteAddr, memWriteData, memWriteResp)

		inputData += 4
	}
}
