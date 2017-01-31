package main

import (
	// import the entire framework (including bundled verilog)
	_ "sdaccel"
)

func add(x uint32, y uint32) uint32 {
	return x + y
}

// magic identifier for exporting
func Top(
	controlAddr chan<- uint32,
	controlData <-chan uint32) {

	read := func(a uint32) uint32 {
		controlAddr <- a
		return <-controlData
	}

	println(add(read(0), read(1)))
}
