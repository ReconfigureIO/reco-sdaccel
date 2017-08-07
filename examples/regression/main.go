package main

import (
	// Import the entire framework (including bundled verilog)
	_ "sdaccel"

	aximemory "axi/memory"
	axiprotocol "axi/protocol"
)

const (
    ARRAY_SIZE = 15
)

// The Top function will be presented as a kernel
func Top(
	// The first set of arguments to this function can be any number
	// of Go primitive types and can be provided via `SetArg` on the host.

	// For this example, we have 3 arguments: two operands to add
	// together and an address to memory (the uuint32s) on the FPGA to
	// store the output (the uintptr)
	a uint32,
	addr1 uintptr,
        addr2 uintptr,

	// The second set of arguments will be the ports for interacting with memory
	memReadAddr chan<- axiprotocol.Addr,
	memReadData <-chan axiprotocol.ReadData,

	memWriteAddr chan<- axiprotocol.Addr,
	memWriteData chan<- axiprotocol.WriteData,
	memWriteResp <-chan axiprotocol.WriteResp) {

        x_arr_2 := [8]uint32{1,2,3,4,5,6,7,8}
        x_arr := [8]uint32{1,2,3,4,5,6,7,8}
        y_arr := [8]uint32{2,3,5,7,11,13,17,19}

        var x_total uint32 = 0
        var y_total uint32 = 0

        for i:= 7; i != 0; i-- {
            x_total = x_arr[i] + x_total
        }

        for i:= 7; i != 0; i-- {
            y_total = y_arr[i] + y_total
        }

        // scale by 1024 so fractions are more precise
        x_avg := 1024 * x_total / 8
        y_avg := 1024 * y_total / 8

        var beta1 uint32 = 0

        for i := 7; i != 0; i-- {
            beta1 = beta1 + (x_arr[i] * 1024 - x_avg) * (y_arr[i] * 1024 - y_avg)
        }

        // can't multiply x_arr[i] by itself??
        var beta2 uint32 = 0
        for i := 7; i != 0; i-- {
            beta2 = beta2 + (x_arr_2[i] * 1024 - x_avg) * (x_arr[i] * 1024 - x_avg)
        }

        beta := beta2 / beta1

        alpha := y_avg - beta * x_avg

	// Calculate alpha
	val1 := uint32(alpha)

        // Calculate beta
        val2 := uint32(beta)

	// Write them back to the pointers the host requests
	aximemory.WriteUInt32(
		memWriteAddr, memWriteData, memWriteResp, false, addr1, val1)
	aximemory.WriteUInt32(
		memWriteAddr, memWriteData, memWriteResp, false, addr2, val2)

}
