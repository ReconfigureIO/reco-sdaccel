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

	data := make(chan uint32)
	go memory.ReadBurst(inputData, length, data, memReadAddr, memReadData)
	memory.WriteBurst(outputData, length, data, memWriteAddr, memWriteData, memResp)
}
