package main

import (
	// Import the entire framework (including bundled verilog)
	_ "sdaccel"

	// Use the new SMI memory access layer
	memory "smi/memory"
	protocol "smi/protocol"
)

// Magic identifier for exporting
func Top(
	inputData uintptr,
	outputData uintptr,
	length uint32,

	readReqFlit chan<- protocol.Flit64,
	readRespFlit <-chan protocol.Flit64,

	writeReqFlit chan<- protocol.Flit64,
	writeRespFlit <-chan protocol.Flit64) {

	data := make(chan uint64)
	go memory.ReadBurstUInt64(readReqFlit, readRespFlit, inputData, uint16(length), data)
	memory.WriteBurstUInt64(writeReqFlit, writeRespFlit, outputData, uint16(length), data)
}
