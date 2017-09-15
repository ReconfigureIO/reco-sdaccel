package main

import (
	"encoding/binary"
	"fmt"
	"log"
	"reflect"
	"xcl"
)

func main() {

	// Allocate a world for interacting with kernels
	world := xcl.NewWorld()
	defer world.Release()

	// Import the kernel.
	// Right now these two idenitifers are hard coded as an output from the build process
	krnl := world.Import("kernel_test").GetKernel("reconfigure_io_sdaccel_builder_stub_0_1")
	defer krnl.Release()

	// The data we'll send to the kernel for processing
	input := [32]int32{1, 2,
		2, 3,
		3, 5,
		4, 7,
		5, 11,
		6, 13,
		7, 17,
		8, 19,
		9, 23,
		10, 29,
		11, 31,
		12, 37,
		13, 41,
		15, 43,
		16, 47,
	}

	// On the FGPA, allocated ReadOnly memory for the input to the kernel.
	inputBuff := world.Malloc(xcl.ReadOnly, uint(binary.Size(input)))
	defer inputBuff.Free()

	// Allocate a buffer on the FPGA to store the return value of our computation
	// The output is a uint32, so we need 4 bytes to store it
	buff1 := world.Malloc(xcl.WriteOnly, 4)
	defer buff1.Free()

	buff2 := world.Malloc(xcl.WriteOnly, 4)
	defer buff2.Free()

	// Pass the arguments to the kernel
	// Set the pointer to the first output buffer
	krnl.SetMemoryArg(0, inputBuff)
	krnl.SetArg(1, 16)
	krnl.SetMemoryArg(2, buff1)
	krnl.SetMemoryArg(3, buff2)

	// write our input to the kernel at the memory we've previously allocated
	// IDK if littleEndian is the right way to do this :|
	binary.Write(inputBuff.Writer(), binary.LittleEndian, &input)

	// Run the kernel with the supplied arguments
	krnl.Run(1, 1, 1)

	// Decode that byte slice into the int32 we're expecting
	var alpha int32
	err1 := binary.Read(buff1.Reader(), binary.LittleEndian, &alpha)
	if err1 != nil {
		fmt.Println("binary.Read failed:", err1)
	}
	var beta int32
	err2 := binary.Read(buff2.Reader(), binary.LittleEndian, &beta)
	if err2 != nil {
		fmt.Println("binary.Read failed:", err2)
	}

	var alpha_scale float32
	alpha_scale = float32(alpha) / 1024

	var beta_scale float32
	beta_scale = float32(beta) / 1024

	expected_slope := 3.1533203
	expected_intercept := -2.073242

	// error if they didn't do the same calculation
	if !reflect.DeepEqual(expected_slope, beta_scale) {
		log.Fatalf("%f != %f\n", beta_scale, expected_slope)
	} else if !reflect.DeepEqual(expected_intercept, alpha_scale) {
		log.Fatalf("%f != %f\n", alpha_scale, expected_intercept)
	}

	// Print the value we got from the FPGA
	fmt.Printf("\nIntercept: %f\nSlope: %f\n", alpha_scale, beta_scale)

}
