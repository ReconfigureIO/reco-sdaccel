package main

import (
	// Import the framework
	_ "github.com/ReconfigureIO/sdaccel"
	// Use the new AXI protocol package
	"github.com/ReconfigureIO/sdaccel/smi"
)

// Magic identifier for exporting
func Top(
	inputData uintptr,
	outputData uintptr,
	length uint32,

	request chan<- smi.Flit64,
	response <-chan smi.Flit64) {

	// The host needs to provide the length we should read
	for ; length > 0; length-- {
		// First we'll read each sample
		sample := smi.ReadUInt32(request, response, inputData, smi.DefaultOptions)

		// If we think of external memory we are writing to as a
		// [512]uint32, this would be the index we access, with an
		// extra 2 bits to make it a pointer
		outputPointer := outputData + uintptr((uint16(sample)>>(16-9))<<2)

		current := smi.ReadUInt32(request, response, outputPointer, smi.DefaultOptions)
		smi.WriteUInt32(request, response, outputPointer, smi.DefaultOptions, current+1)

		inputData += 4
	}
}
