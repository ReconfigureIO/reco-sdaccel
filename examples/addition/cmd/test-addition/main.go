package main

import (
	"xcl"
)

func main() {
	world := xcl.NewWorld()
	defer world.Release()

	krnl := world.Import("kernel_test").GetKernel("reconfigure_io_reco_sdaccel_stub_0_1")
	defer krnl.Release()

	krnl.SetArg(0, 1)
	krnl.SetArg(1, 2)

	krnl.Run(1, 1, 1)
}
