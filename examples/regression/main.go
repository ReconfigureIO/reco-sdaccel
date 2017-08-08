package main

import (
	_ "sdaccel"

	axiarbitrate "axi/arbitrate"
	aximemory "axi/memory"
	axiprotocol "axi/protocol"
)

const (
    ARRAY_SIZE = 15
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

	inputChannel := make(chan uint32)
	alphaResponse := make(chan int32)
	betaResponse := make(chan int32)

	go aximemory.ReadBurstUInt32(
		memReadAddr, memReadData, true, inputData, inputLength, inputChannel)

        go func() {

            x_arr := [8]int32{1,2,3,4,5,6,7,8}
            x_arr_2 := [8]int32{1,2,3,4,5,6,7,8}
            y_arr := [8]int32{2,3,5,7,11,13,17,19}

            var x_total int32 = 0
            var y_total int32 = 0

            for i:= inputLength - 1; i != 0; i-- {
                x_total = x_arr[i] + x_total
                y_total = y_arr[i] + y_total
            }

            // scale by 1024 so fractions are more precise. Divide by 8 because that's how many inputs we have
            x_avg := (x_total << 10) / int32(inputLength)
            y_avg := (y_total << 10) / int32(inputLength)

            var beta1 int32 = 0
            var beta2 int32 = 0

            for i := inputLength - 1; i != 0; i-- {
                y_next := <- inputChannel
                beta1 = beta1 + (x_arr[i] << 10 - x_avg) * (int32(y_next) << 10 - y_avg)
                beta2 = beta2 + (x_arr_2[i] << 10 - x_avg) * (x_arr[i] << 10 - x_avg)
            }

            beta := beta2 / beta1

            alpha := y_avg - beta * x_avg

            // Calculate alpha
            alphaResponse <- alpha

            // Calculate beta
            betaResponse <- beta

        }()

        val1 := <-alphaResponse
        val2 := <-betaResponse

        // Write them back to the pointers the host requests
        aximemory.WriteUInt32(
                memWriteAddr, memWriteData, memWriteResp, false, output1, uint32(val1))
        aximemory.WriteUInt32(
                memWriteAddr, memWriteData, memWriteResp, false, output2, uint32(val2))

}
