package main

import (
	// import the entire framework (including bundled verilog)
	_ "sdaccel"
	"sdaccel/memory"
)

type MemoryOpParams struct {
	op int8
	memOffset uintptr
	data uint32
}

func MemoryOp(p MemoryOpParams) uint32 {

	if p.op==0 {
		return memory.Read(p.memOffset, memReadAddr, memReadData)
	}
	else if p.op==1 { //write
		memory.Write(p.memOffset, p.data, memWriteData, memWriteData)
	}
	else if p.op==2 { //write to response-to-host channel
		memory.Write(p.memOffset, p.data, memWriteData, memWriteData, memResp)
	}
}

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

	samples := make([]uint32, 8)
	binAddrs := make([]uintptr, 8)

	// The host needs to provide the length we should read
	for ; length > 0; length-- {
		// First we'll read each sample
		samples[length] := MemoryOp(MemoryOpParams{op: 0, memOffset: inputData})
	}

	for i := 0; i < samples.length; i++ {
		//cut sample down to 9 MSBs to determine destination bin
		index := uint16(sample) >> (16 - 9)
		binAddrs[] := index << 2
		// And this is that index as a pointer to external memory
	}

	for i := 0; i < binAddrs.length; i++ {
		current := MemoryOp(MemoryOpParams{op: 0, memOffset: binAddrs[i]})
		MemoryOp(MemoryOpParams{op: 2, memOffset: binAddrs[i], data: current+1})
	}

}
