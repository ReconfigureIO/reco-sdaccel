package main

import (
	_ "sdaccel"

	aximemory "axi/memory"
	axiprotocol "axi/protocol"
)

const (
	ARRAY_SPLIT_SIZE = 15
)

type DataBlock struct {
	Last bool
	xs   [8]int32
	ys   [8]int32
}

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

func MakeBlock(length uint32, last bool, inputChannel <-chan uint64) DataBlock {
	var x_arr [8]int32
	var y_arr [8]int32

	for i := length; i != 0; {
		next := <-inputChannel
		t := i - 1
		go func() {
			x_arr[t] = int32(next >> 32)
		}()
		go func() {
			y_arr[t] = int32(next)
		}()
		i = t
	}

	return DataBlock{
		Last: last,
		xs:   x_arr,
		ys:   y_arr,
	}
}

type Result struct {
	x_total     int32
	y_total     int32
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

func MakeResult(block DataBlock, input_length_int int32) Result {
	x_total := make(chan int32)
	y_total := make(chan int32)
	product_sum := make(chan int32)
	squared_sum := make(chan int32)

	go func() {
		x_total <- add_slice(block.xs)
	}()
	go func() {
		y_total <- add_slice(block.ys)
	}()
	go func() {
		product_sum <- input_length_int * product_sum_slice(block.xs, block.ys)
	}()
	go func() {
		squared_sum <- input_length_int * squared_sum_func(block.xs)
	}()
	return Result{
		x_total:     (<-x_total),
		y_total:     (<-y_total),
		product_sum: (<-product_sum),
		squared_sum: (<-squared_sum),
	}
}

func MakePair(t uint64) Pair {
	return Pair{
		X: int32(t >> 32),
		Y: int32(t),
	}
}

func (a Result) Add(b Result) Result {
	return Result{
		x_total:     a.x_total + b.x_total,
		y_total:     a.y_total + b.y_total,
		product_sum: a.product_sum + b.product_sum,
		squared_sum: a.squared_sum + b.squared_sum,
	}
}

func MakeBlocks(inputLength uint32, inputChannel <-chan uint64, blocks chan<- DataBlock) {
	for inputLength != 0 {

		toProcess := inputLength
		if toProcess > 8 {
			toProcess = 8
		}

		blocks <- MakeBlock(toProcess, inputLength <= 8, inputChannel)
		inputLength -= toProcess
	}
}

func regression(inputLength uint32, inputChannel <-chan uint64) Result {

	blocks := make(chan DataBlock)

	input_length_int := int32(inputLength)

	go MakeBlocks(inputLength, inputChannel, blocks)

	var result Result
	notDone := true
	for notDone {
		block := <-blocks
		result = result.Add(MakeResult(block, input_length_int))
		notDone = !block.Last
	}
	return result
}

func Benchmark(n int32) {
	data := make(chan uint64)

	go func() {
		for i := n; i != 0; i-- {
			data <- 0
		}
	}()

	regression(uint32(n), data)

}

/*func main() {

	n := uint32(8)
	data := make(chan uint64)

	go func() {
		for i := n * 2; i != 0; i = i - 2 {
			println(i)
			data <- uint64(i)<<32 + uint64(i+1)
		}
	}()

	result := regression(n, data)
	println(result.x_total)
}*/

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
	beta := result.x_total << 10 // beta2 << 10 / beta1
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
