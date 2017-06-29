package main

import (
	"teak"
)

// This is a kernels for counting the number of 1s in a uint32. We're
// going to transform it into a bitarray, and loop through counting each

// Magic identifier for exporting
func Top(
	a uint32) {

	// This will create a [32]bool
	var array [32]bool = teak.SmashU32(a)

	// We'll store results in sum
	sum := uint32(0)

	// We can now access each individual bit as a boolean
	for i := 0; i < 32; i++ {
		if array[i] {
			sum += 1
		}
	}
}
