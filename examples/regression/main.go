package main

import (
	_ "sdaccel"

	axiarbitrate "axi/arbitrate"
	aximemory "axi/memory"
	axiprotocol "axi/protocol"
)

const (
    ARRAY_SPLIT_SIZE = 15
)

func add_slice(x [8]int32) int32 {
    var x_total int32 = ((x[0] + x[1]) + (x[2] + x[3])) + ((x[4] + x[5]) + (x[6] + x[7]))
    return x_total
}

func product_sum_slice(x [8]int32, y [8]int32) int32 {
    product_slice := [8]int32{x[0] * y[0],
        x[1] * y[1],
        x[2] * y[2],
        x[3] * y[3],
        x[4] * y[4],
        x[5] * y[5],
        x[6] * y[6],
        x[7] * y[7]}
    return add_slice(product_slice)
}

type Pair struct {
	X int32
	Y int32
}

func MakePair(c <-chan uint64) Pair {
	return Pair{
		X: int32(<-c >> 32),
		Y: int32(<-c),
	}
}

type Result struct {
    x_total int32
    y_total int32
    product_sum int32
    squared_sum int32
}

func squared_sum_func(x [8]int32) int32 {
    squared_array := [8]int32{x[0] * x[0],
        x[1] * x[1],
        x[2] * x[2],
        x[3] * x[3],
        x[4] * x[4],
        x[5] * x[5],
        x[6] * x[6],
        x[7] * x[7]}

    return add_slice(squared_array)
}

func regression(inputLength uint32, inputChannel <-chan uint64) Result {

    var x_total int32 = 0
    var y_total int32 = 0

    // scale by 1024 so fractions are more precise. Divide by 8 because that's how many inputs we have

    // nΣxy
    var product_sum int32 = 0

    // nΣx^2
    var squared_sum int32 = 0

    var input_length_int int32 = 0
    input_length_int = int32(inputLength)

    var length int = 0
    length = int(inputLength)/8

    for ; length > 0; length-- {

        x_arr := [8]int32{}
        y_arr := [8]int32{}

        for i := 1; i <= 8; i ++ {
            next := int32(<- inputChannel)
            x_arr[i-1] = int32(next >> 32)
            y_arr[i-1] = int32(next)
        }

        product_sum = product_sum + input_length_int * product_sum_slice(x_arr, y_arr)
        x_total = x_total + add_slice(x_arr)
        y_total = y_total + add_slice(y_arr)
        squared_sum = squared_sum + input_length_int * squared_sum_func(x_arr)

    }
    return Result { x_total: x_total, y_total: y_total, product_sum: product_sum, squared_sum: squared_sum }
}


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
		memReadAddr, memReadData, true, inputData, inputLength * 2, inputChannel)

            result := regression(inputLength, inputChannel)

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
            alpha := y_avg << 10 - beta * x_avg

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
