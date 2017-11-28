package main

import (
	// import the entire framework (including bundled verilog)
	_ "sdaccel"
	// Use the new AXI protocol package
	memory "smi/memory"
	protocol "smi/protocol"
)

// magic identifier for exporting
func Top(
	inputData uintptr,
	outputData uintptr,
	length uint32,

	readReqFlit chan<- protocol.Flit64,
	readRespFlit <-chan protocol.Flit64,

	writeReqFlit chan<- protocol.Flit64,
	writeRespFlit <-chan protocol.Flit64) {

	var histogram [512]uint32

	// Read all of the input data into a channel
	inputChan := make(chan uint32)
	go memory.ReadBurstUInt32(readReqFlit, readRespFlit, inputData,
		protocol.SmiMemReadOptDefault, uint16(length), inputChan)

	// The host needs to provide the length we should read
	for ; length > 0; length-- {
		// First we'll pull of each sample from the channel
		sample := <-inputChan
		// calculate the bin for the histogram
		index := uint16(sample) >> (16 - 9)

		// And increment the value in that bin
		histogram[uint(index)] += 1
	}

	data := make(chan uint32)
	go func() {
		for i := 0; i < 512; i++ {
			data <- histogram[i]
		}
	}()

	memory.WriteBurstUInt32(writeReqFlit, writeRespFlit, outputData,
		protocol.SmiMemWriteOptDirect, 512, data)
}
