package main

import (
	_ "sdaccel"

	aximemory "axi/memory"
	axiprotocol "axi/protocol"
	"github.com/Reconfigure.io/regression/linear"
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

	independentChannel := make(chan uint64)
	inputChannel := make(chan uint64)
	alphaResponse := make(chan int32)
	betaResponse := make(chan int32)

	go aximemory.ReadBurstUInt64(
		memReadAddr, memReadData, true, inputData, inputLength, inputChannel)

	result := linear.regression(inputLength, inputChannel)

	var x_avg int32 = result.x_total / int32(inputLength)
	var y_avg int32 = result.y_total / int32(inputLength)

	// ΣxΣy
	var pairwise_product int32 = result.x_total * result.y_total

	// nΣxy - ΣxΣy
	var beta2 int32 = result.product_sum - (result.x_total * result.y_total)

	// nΣx^2 - (Σx)^2
	var beta1 int32 = result.squared_sum - (result.x_total * result.x_total)

	// slope
	beta := beta2 << 10 / beta1
	// y-intercept
	alpha := y_avg<<10 - beta*x_avg

	alphaResponse <- alpha
	betaResponse <- beta

	val1 := <-alphaResponse
	val2 := <-betaResponse

	// Write them back to the pointers the host requests
	aximemory.WriteUInt32(
		memWriteAddr, memWriteData, memWriteResp, false, output1, uint32(val1))
	aximemory.WriteUInt32(
		memWriteAddr, memWriteData, memWriteResp, false, output2, uint32(val2))

}
