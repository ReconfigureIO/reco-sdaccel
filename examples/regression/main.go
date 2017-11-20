package main

import (
	_ "sdaccel"

	memory "smi/memory"
	protocol "smi/protocol"

	"github.com/ReconfigureIO/regression/linear"
)

// The Top function will be presented as a kernel
func Top(
	// The first set of arguments to this function can be any number
	// of Go primitive types and can be provided via `SetArg` on the host.

	// For this example, we have 3 arguments: two operands to add
	// together and an address to memory (the uuint32s) on the FPGA to
	// store the output (the uintptr)
	inputData uintptr,
	inputLength uint32,
	output1 uintptr,
	output2 uintptr,

	// The second set of arguments will be the ports for interacting with memory
	readReqFlit chan<- protocol.Flit64,
	readRespFlit <-chan protocol.Flit64,

	writeReqFlit chan<- protocol.Flit64,
	writeRespFlit <-chan protocol.Flit64) {

	inputChannel := make(chan uint64)

	go memory.ReadBurstUInt64(readReqFlit, readReqFlit, inputData, uint16(inputLength), inputChannel)

	result := linear.Regression(inputLength, inputChannel)

	alpha := result.Intercept
	beta := result.Slope

	// Write them back to the pointers the host requests
	memory.WriteUInt32(
		writeReqFlit, writeRespFlit, output1, uint32(alpha))
	memory.WriteUInt32(
		writeReqFlit, writeRespFlit, output2, uint32(beta))

}
