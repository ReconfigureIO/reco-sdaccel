package main

import (
	// import the entire framework (including bundled verilog)
	_ "sdaccel"
)

// magic identifier for exporting
func Top(
	controlAddr chan<- uint32,
	controlData <-chan uint32) {
}
