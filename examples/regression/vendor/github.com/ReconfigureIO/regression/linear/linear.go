package linear

const (
	ARRAY_SPLIT_SIZE = 15
)

type dataBlock struct {
	Last bool
	xs   [8]int32
	ys   [8]int32
}

func addSlice(x [8]int32) int32 {
	var x_total int32 = ((x[0] + x[1]) + (x[2] + x[3])) + ((x[4] + x[5]) + (x[6] + x[7]))
	return x_total
}

func productSumSlice(x [8]int32, y [8]int32) int32 {
	product_slice := [8]int32{x[0] * y[0],
		x[1] * y[1],
		x[2] * y[2],
		x[3] * y[3],
		x[4] * y[4],
		x[5] * y[5],
		x[6] * y[6],
		x[7] * y[7]}
	return addSlice(product_slice)
}

type Characteristic struct {
	Slope     int32
	Intercept int32
}

type pair struct {
	X int32
	Y int32
}

func makeBlock(length uint32, last bool, inputChannel <-chan uint64) dataBlock {
	var x_arr [8]int32
	var y_arr [8]int32

	for i := length; i != 0; {
		next := <-inputChannel
		t := i - 1
		x_arr[t] = int32(next)
		y_arr[t] = int32(next >> 32)
		i = t
	}

	return dataBlock{
		Last: last,
		xs:   x_arr,
		ys:   y_arr,
	}
}

type arraySums struct {
	x_total     int32
	y_total     int32
	product_sum int32
	squared_sum int32
}

func squaredSumFunc(x [8]int32) int32 {
	squared_array := [8]int32{x[0] * x[0],
		x[1] * x[1],
		x[2] * x[2],
		x[3] * x[3],
		x[4] * x[4],
		x[5] * x[5],
		x[6] * x[6],
		x[7] * x[7]}

	return addSlice(squared_array)
}

func makeResult(block dataBlock, inputLengthInt int32) arraySums {
	x_total := make(chan int32)
	y_total := make(chan int32)
	productSum := make(chan int32)
	squaredSum := make(chan int32)

	go func() {
		x_total <- addSlice(block.xs)
	}()
	go func() {
		y_total <- addSlice(block.ys)
	}()
	go func() {
		productSum <- inputLengthInt * productSumSlice(block.xs, block.ys)
	}()
	go func() {
		squaredSum <- inputLengthInt * squaredSumFunc(block.xs)
	}()
	return arraySums{
		x_total:     (<-x_total),
		y_total:     (<-y_total),
		product_sum: (<-productSum),
		squared_sum: (<-squaredSum),
	}
}

func makePair(t uint64) pair {
	return pair{
		X: int32(t >> 32),
		Y: int32(t),
	}
}

func (a arraySums) Add(b arraySums) arraySums {
	return arraySums{
		x_total:     a.x_total + b.x_total,
		y_total:     a.y_total + b.y_total,
		product_sum: a.product_sum + b.product_sum,
		squared_sum: a.squared_sum + b.squared_sum,
	}
}

func makeBlocks(inputLength uint32, inputChannel <-chan uint64, blocks chan<- dataBlock) {
	for inputLength != 0 {

		toProcess := inputLength
		if toProcess > 8 {
			toProcess = 8
		}

		blocks <- makeBlock(toProcess, inputLength <= 8, inputChannel)
		inputLength -= toProcess
	}
}

func makeSums(inputLength uint32, inputChannel <-chan uint64) arraySums {

	blocks := make(chan dataBlock)

	input_length_int := int32(inputLength)

	go makeBlocks(inputLength, inputChannel, blocks)

	var result arraySums
	notDone := true
	for notDone {
		block := <-blocks
		result = result.Add(makeResult(block, input_length_int))
		notDone = !block.Last
	}
	return result
}

func Regression(inputLength uint32, inputChannel <-chan uint64) Characteristic {

	result := makeSums(inputLength, inputChannel)

	var x_avg int32 = result.x_total / int32(inputLength)
	var y_avg int32 = result.y_total / int32(inputLength)

	// nΣxy - ΣxΣy
	var beta2 int32 = result.product_sum - (result.x_total * result.y_total)

	// nΣx^2 - (Σx)^2
	var beta1 int32 = result.squared_sum - (result.x_total * result.x_total)

	// slope
	beta := beta2 << 10 / beta1
	// y-intercept
	alpha := y_avg<<10 - beta*x_avg

	return Characteristic{Intercept: alpha, Slope: beta}
}

/*
func Benchmark(n int32) {
	data := make(chan uint64)

	go func() {
		for i := n; i != 0; i-- {
			data <- 0
		}
	}()

	regression_sums(uint32(n), data)

}*/
