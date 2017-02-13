package main

import (
	"fmt"
	"xcl"
)

func main() {
	world := xcl.NewWorld()
	defer world.Release()

	krnl := world.Import("kernel_test").GetKernel("reconfigure_io_reco_sdaccel_stub_0_1")
	defer krnl.Release()

	krnl.Run(1, 1, 1)
	fmt.Println("job's done!")
}
