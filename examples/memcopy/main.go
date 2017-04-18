package main

import (
	// Import the entire framework (including bundled verilog)
	_ "sdaccel"
	// Use the new AXI protocol package
	"axi/protocol"
	// Use the simple memory access API
	"sdaccel/memory"
)

// Magic identifier for exporting
func Top(
	inputData uintptr,
	outputData uintptr,
	length uint32,

	memReadAddr chan<- protocol.Addr,
	memReadData <-chan protocol.ReadData,

	memWriteAddr chan<- protocol.Addr,
	memWriteData chan<- protocol.WriteData,
	memWriteResp <-chan protocol.WriteResp) {

	data := make(chan uint32)
	go memory.ReadBurst(inputData, length, data, memReadAddr, memReadData)
	memory.WriteBurst(outputData, length, data, memWriteAddr, memWriteData, memWriteResp)
}
