package main

import (
	// Import the entire framework (including bundled verilog)
	_ "sdaccel"
	// Use the new AXI protocol package

	memory "smi/memory"
	protocol "smi/protocol"
)

// Magic identifier for exporting
func Top(
	inputData uintptr,
	outputData uintptr,
	length uint32,

	portAReqFlit chan<- protocol.Flit64,
	portARespFlit <-chan protocol.Flit64,

	portBReqFlit chan<- protocol.Flit64,
	portBRespFlit <-chan protocol.Flit64) {

	readRespChan := make(chan uint32, 16)
	incrRespChan := make(chan uint32, 1)

	go func() {
		// Length is the number of addresses we are supposed to read
		// so this block queues reads from each one in turn.
		for i := length; i != 0; i-- {
			readRespChan <- memory.ReadUInt32(portAReqFlit, portARespFlit,
				inputData, protocol.SmiMemReadOptDefault)
			inputData += 4
		}
	}()

	go func() {
		for i := length; i != 0; i-- {
			// Get the read response that was previously enqueued.
			sample := <-readRespChan
			// If we think of external memory we are writing to as a
			// [512]uint32, this would be the index we access.
			index := uint16(sample) >> (16 - 9)
			// And this is that index as a pointer to external memory.
			outputPointer := outputData + uintptr(index<<2)
			// Perform an increment operation on that location.
			current := memory.ReadUInt32(portBReqFlit, portBRespFlit,
				outputPointer, protocol.SmiMemReadOptDefault)
			current += 1
			memory.WriteUInt32(portBReqFlit, portBRespFlit,
				outputPointer, protocol.SmiMemWriteOptDefault, current)
			incrRespChan <- current
		}
	}()

	// Wait for each response for increment operations.
	for i := length; i != 0; i-- {
		<-incrRespChan
	}

	// Once that's done, we can exit.
}
