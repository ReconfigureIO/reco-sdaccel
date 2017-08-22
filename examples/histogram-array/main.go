package main

import (
	// import the entire framework (including bundled verilog)
	_ "sdaccel"
	// Use the new AXI protocol package
	aximemory "axi/memory"
	axiprotocol "axi/protocol"
)

// magic identifier for exporting
func Top(
	inputData uintptr,
	outputData uintptr,
	length uint32,
	loopCount uint32,

	memReadAddr chan<- axiprotocol.Addr,
	memReadData <-chan axiprotocol.ReadData,

	memWriteAddr chan<- axiprotocol.Addr,
	memWriteData chan<- axiprotocol.WriteData,
	memWriteResp <-chan axiprotocol.WriteResp) {

	var cache [1024]uint32
	var histogram [512]uint32

	// read data from RAM to local cache
	read := func() {
		// Read all of the input data into a channel
		inputChan := make(chan uint32)
		go aximemory.ReadBurstUInt32(
			memReadAddr, memReadData, true, inputData, length, inputChan)

		// The host needs to provide the length we should read
		for i := uint32(0); i < length; i++ {
			cache[i] = <-inputChan
		}
	}

	process := func() {
		i := length
		// The host needs to provide the length we should read
		for ; i > 0; i-- {
			// First we'll pull of each sample from the channel
			sample := cache[i]
			// calculate the bin for the histogram
			index := uint16(sample) >> (16 - 9)

			// And increment the value in that bin
			histogram[uint(index)] += 1
		}
	}

	write := func() {
		data := make(chan uint32)
		go func() {
			for i := 0; i < 512; i++ {
				data <- histogram[i]
			}
		}()

		aximemory.WriteBurstUInt32(
			memWriteAddr, memWriteData, memWriteResp, true, outputData, 512, data)
	}

	read()

	// if loopCount != 1, this will give bogus results
	for ; loopCount > 0; loopCount-- {
		process()
	}

	write()
}
