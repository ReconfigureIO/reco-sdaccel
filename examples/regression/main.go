package main

import (
	_ "github.com/ReconfigureIO/sdaccel"

	"github.com/ReconfigureIO/regression/linear"
	aximemory "github.com/ReconfigureIO/sdaccel/axi/memory"
	axiprotocol "github.com/ReconfigureIO/sdaccel/axi/protocol"
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
	memReadAddr chan<- axiprotocol.Addr,
	memReadData <-chan axiprotocol.ReadData,

	memWriteAddr chan<- axiprotocol.Addr,
	memWriteData chan<- axiprotocol.WriteData,
	memWriteResp <-chan axiprotocol.WriteResp) {

	inputChannel := make(chan uint64)

	go aximemory.ReadBurstUInt64(
		memReadAddr, memReadData, true, inputData, inputLength, inputChannel)

	result := linear.Regression(inputLength, inputChannel)

	alpha := result.Intercept
	beta := result.Slope

	// Write them back to the pointers the host requests
	aximemory.WriteUInt32(
		memWriteAddr, memWriteData, memWriteResp, false, output1, uint32(alpha))
	aximemory.WriteUInt32(
		memWriteAddr, memWriteData, memWriteResp, false, output2, uint32(beta))

}
