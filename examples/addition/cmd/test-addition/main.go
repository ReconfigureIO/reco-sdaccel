package main

import (
	"xcl"
)

func main() {
	world := xcl.NewWorld()
	defer world.Release()

	krnl := world.Import("kernel_test").GetKernel("reconfigure_io_reco_sdaccel_stub_0_1")
	defer krnl.Release()

	buff := world.Malloc(xcl.WriteOnly, 4)
	defer buff.Free()

	krnl.SetArg(0, 1)
	krnl.SetArg(1, 2)
	krnl.SetMemoryArg(2, buff)

	krnl.Run(1, 1, 1)
}
