package main

import (
	// Import the entire framework (including bundled verilog)
	_ "sdaccel"
	// Use the new AXI protocol package
	protocol "smi/protocol"
)

// Magic identifier for exporting
func Top(
	readReqFlit chan<- protocol.Flit64,
	readRespFlit <-chan protocol.Flit64,

	writeReqFlit chan<- protocol.Flit64,
	writeRespFlit <-chan protocol.Flit64) {
}
