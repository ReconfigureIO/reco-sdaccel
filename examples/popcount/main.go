package main

import (
	"teak"

	// Import support for SMI memory access
	memory "smi/memory"
	protocol "smi/protocol"
	// Import the entire framework (including bundled verilog)
	_ "sdaccel"
)

// This is a kernel for showcasing the builtin Smash functionality.
// It implements popcount, by counting the number of 1s in a
// uint32. We're going to transform it into a bool array, and loop
// through counting each 1.

// Magic identifier for exporting
func Top(
	a uint32,
	output uintptr,

	readReqFlit chan<- protocol.Flit64,
	readRespFlit <-chan protocol.Flit64,

	writeReqFlit chan<- protocol.Flit64,
	writeRespFlit <-chan protocol.Flit64) {

	// This will create a [32]bool
	var array [32]bool = teak.SmashU32(a)

	// We'll store results in sum
	sum := uint32(0)

	// We can now access each individual bit as a boolean
	for i := 0; i < 32; i++ {
		if array[i] {
			sum++
		}
	}

	// Write out the result.
	memory.WriteUInt32(writeReqFlit, writeRespFlit, output,
		protocol.SmiMemWriteOptDirect, sum)

}
