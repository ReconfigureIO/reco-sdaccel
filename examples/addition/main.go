package main

import (
	// Import the entire framework (including bundled verilog)
	_ "sdaccel"
	// Use the new AXI protocol package
	memory "smi/memory"
	protocol "smi/protocol"

	"github.com/ReconfigureIO/addition"
)

// Magic identifier for exporting
func Top(
	a uint32,
	b uint32,
	addr uintptr,

	readReqFlit chan<- protocol.Flit64,
	readRespFlit <-chan protocol.Flit64,

	writeReqFlit chan<- protocol.Flit64,
	writeRespFlit <-chan protocol.Flit64) {

	val := addition.Add(a, b)

	memory.WriteUInt32(writeReqFlit, writeRespFlit, addr, val)
}
