package main

import (
	// import the entire framework (including bundled verilog)
	_ "sdaccel"
	"sdaccel/memory"
)

// magic identifier for exporting
func Top(
	inputData uintptr,
	outputData uintptr,
	length uint32,

	memReadAddr chan<- memory.Addr,
	memReadData <-chan memory.ReadData,

	memWriteAddr chan<- memory.Addr,
	memWriteData chan<- memory.WriteData,
	memResp <-chan memory.Response) {

	//set up worker input and output channels, create worker for each pair
	var workerinput [1]chan int
	var workeroutput [1]chan int
	for i := range workerinput {
   		workerinput[i] = make(chan uint32)
   		workeroutput[i] = make(chan uint32)
		Worker(workerinput[i], workeroutput[i])
	}
	//trigger function to update bin values based on worker output
	memUpdate()

	// The host needs to provide the length we should read
	for ; length > 0; length-- {
		// First we'll read each sample
		sample := memory.Read(inputData, memReadAddr, memReadData)
		//length modulo number of workers determines which worker to give sample to
		workerNo = length % 1
		workerinput[workerNo]<- sample
	}


func worker(chan input, chan output) {

	for {
		sample := <-input
		//cut sample down to 9 MSBs to determine destination bin
		binNo := uint16(sample) >> (16 - 9)
		output<- binNo
	}

}


	func memUpdate() {

		for {
			binNo := <-workeroutput[current]
			binPtr := binNo << 2
			current := memory.Read(binPtr, memReadAddr, memReadData)
			memory.Write(binPtr, current+1, memWriteData, memWriteData, memResp)
			current := current+1
		}


}

