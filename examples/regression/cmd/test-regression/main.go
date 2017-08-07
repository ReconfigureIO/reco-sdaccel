package main

import (
	"encoding/binary"
	"fmt"
	//"os"
	"xcl"
)

// check if a number is prime
/*func IsPrime(value int) bool {

    for i := 2; i <= int(math.Floor(math.Sqrt(float64(value)))); i++ {
        if value % i == 0 {
            return false
        }
    }

    return value > 1
}*/

func main() {

	// Allocate a world for interacting with kernels
	world := xcl.NewWorld()
	defer world.Release()

	// Import the kernel.
	// Right now these two idenitifers are hard coded as an output from the build process
	krnl := world.Import("kernel_test").GetKernel("reconfigure_io_sdaccel_builder_stub_0_1")
	defer krnl.Release()

	// Allocate a buffer on the FPGA to store the return value of our computation
	// The output is a uint32, so we need 4 bytes to store it
	buff1 := world.Malloc(xcl.WriteOnly, 4)
	defer buff1.Free()

	buff2 := world.Malloc(xcl.WriteOnly, 4)
	defer buff2.Free()

	// Pass the arguments to the kernel
	// Set the pointer to the first output buffer
	krnl.SetArg(0, 1)
	krnl.SetMemoryArg(1, buff1)
	krnl.SetMemoryArg(2, buff2)
        //krnl.SetMemoryArg(1, buff2)

	// Run the kernel with the supplied arguments
	krnl.Run(1, 1, 1)

	// Decode that byte slice into the uint32 we're expecting
	var alpha uint32
	err1 := binary.Read(buff1.Reader(), binary.LittleEndian, &alpha)
	if err1 != nil {
		fmt.Println("binary.Read failed:", err1)
	}
	var beta uint32
	err2 := binary.Read(buff2.Reader(), binary.LittleEndian, &beta)
	if err2 != nil {
		fmt.Println("binary.Read failed:", err2)
	}

        var alpha_scale float32
        alpha_scale = float32(alpha)/1024

        var beta_scale float32
        beta_scale = float32(beta)/1024

	// Print the value we got from the FPGA
	fmt.Printf("\n%f\n%f\n", alpha_scale, beta_scale)

}
