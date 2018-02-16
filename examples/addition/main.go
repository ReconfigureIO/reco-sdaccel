package main

import (
	// Import the framework
	_ "github.com/ReconfigureIO/sdaccel"
	// Use the new SMI protocol package
	"github.com/ReconfigureIO/sdaccel/smi"
)

// Magic identifier for exporting
func Top(
	a uint32,
	b uint32,
	addr uintptr,

	request chan<- smi.Flit64,
	response <-chan smi.Flit64) {

	val := addition.Add(a, b)

	smi.WriteUInt32(request, response, addr, smi.DefaultOptions, val)
}
