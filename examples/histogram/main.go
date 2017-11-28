package main

import (
	// Import the entire framework (including bundled verilog)
	_ "sdaccel"
	// Use the new AXI protocol package
	memory "smi/memory"
	protocol "smi/protocol"
)

// Magic identifier for exporting
func Top(
	inputData uintptr,
	outputData uintptr,
	length uint32,

	readWriteReqFlit chan<- protocol.Flit64,
	readWriteRespFlit <-chan protocol.Flit64,

	unusedReqFlit chan<- protocol.Flit64,
	unusedRespFlit <-chan protocol.Flit64) {

	// The host needs to provide the length we should read
	for ; length > 0; length-- {
		// First we'll read each sample
		sample := memory.ReadUInt32(readWriteReqFlit, readWriteRespFlit,
			inputData, protocol.SmiMemReadOptDefault)

		// If we think of external memory we are writing to as a
		// [512]uint32, this would be the index we access, with an
		// extra 2 bits to make it a pointer
		outputPointer := outputData + uintptr((uint16(sample)>>(16-9))<<2)

		current := memory.ReadUInt32(readWriteReqFlit, readWriteRespFlit,
			outputPointer, protocol.SmiMemReadOptDefault)

		memory.WriteUInt32(readWriteReqFlit, readWriteRespFlit,
			outputPointer, protocol.SmiMemWriteOptDirect, current+1)

		inputData += 4
	}
}
