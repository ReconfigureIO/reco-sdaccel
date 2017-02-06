package main

import (
	// import the entire framework (including bundled verilog)
	_ "sdaccel"
)

const (
	INPUT_INDEX = iota
	OUTPUT_INDEX
	LENGTH_INDEX
)

type Histogram [512]uint32

func (hist Histogram) Add(sample uint32) {
	hist[sample>>(32-9)] += 1
}

func (hist Histogram) ToBytes() [4][512]byte {
	var ret [4][512]byte
	for i := 0; i < 4; i++ {
		for j := 0; j < 512; j += 4 {
			k := j / 4
			val := hist[i<<7|k]
			ret[i][k] = byte(val >> 24)
			ret[i][k+1] = byte(val >> 16)
			ret[i][k+2] = byte(val >> 8)
			ret[i][k+3] = byte(val)
		}
	}
	return ret
}

// magic identifier for exporting
func Top(
	controlAddr chan<- uint32,
	controlData <-chan uint32) {

	readParam := func(a uint32) uint32 {
		controlAddr <- a
		return <-controlData
	}

	readAddressParam := func(a uint32) uint64 {
		controlAddr <- a
		top := <-controlData
		controlAddr <- a + 1
		return (uint64(top) << 32) + uint64(<-controlData)
	}

	readMemory := func(a uint64) [512]byte {
		return [512]byte{}
	}

	writeMemory := func(a uint64, bytes [512]byte) {
	}

	inputData := readAddressParam(INPUT_INDEX)
	outputData := readAddressParam(INPUT_INDEX)

	// how many samples are there? (uint32)
	length := readParam(LENGTH_INDEX)

	var histogram Histogram

	for ; length > 0; length -= 16 {
		toProcess := length

		if toProcess > 16 {
			toProcess = 16
		}

		bytes := readMemory(inputData)

		inputData += 1

		for i := uint32(0); i < toProcess; i++ {
			sample :=
				uint32(bytes[i])<<24 |
					uint32(bytes[i+1])<<16 |
					uint32(bytes[i+2])<<8 |
					uint32(bytes[i+3])

			histogram.Add(sample)
		}

	}

	bytes := histogram.ToBytes()

	for i := 0; i <= 4; i++ {
		writeMemory(outputData+uint64(i), bytes[i])
	}
}
