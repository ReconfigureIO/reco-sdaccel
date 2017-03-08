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

	readChan := make(chan uintptr)
	readRespChan := make(chan uint32)

	incrChan := make(chan uintptr)
	incrResp := make(chan uint32)

	// handle memory reading & writing
	go func() {
		for {
			select {
			case addr := <-readChan:
				readRespChan := memory.Read(addr, memReadAddr, memReadData)
			case addr := <-incrChan:
				current := memory.Read(outputPointer, memReadAddr, memReadData)
				memory.Write(outputPointer, current+1, memWriteAddr, memWriteData, memResp)
				incrResp <- current + 1
			}
		}
	}()

	// queue up all read operations
	go func() {
		for i := length; i > 0; i-- {
			readChan <- inputData
			inputData += 4
		}
	}()

	// for every read response, queue up the increment operations
	go func() {
		for i := length; i > 0; i-- {
			sample := <-readRespChan
			// If we think of external memory we are writing to as a [512]uint32, this would be the index we access
			index := uint16(sample) >> (16 - 9)
			pointerDiff := index << 2
			// And this is that index as a pointer to external memory
			incrChan <- outputData + uintptr(pointerDiff)
		}
	}()

	// drain all the increment operations
	for i := length; i > 0; i-- {
		<-incrResp
	}
}
