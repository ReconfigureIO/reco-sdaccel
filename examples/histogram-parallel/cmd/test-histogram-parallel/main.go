package main

import (
	"fmt"
	"xcl"
)

func main() {
	world := xcl.NewWorld()
	defer world.Release()

	krnl := world.Import("kernel_test").GetKernel("reconfigure_io_sdaccel_builder_stub_0_1")
	defer krnl.Release()

	buff := world.Malloc(xcl.ReadOnly, 2)
	defer buff.Free()

	source := []byte{5, 25}
	buff.Write(source)

	krnl.SetMemoryArg(0, buff)

	krnl.Run(1, 1, 1)
	fmt.Println("job's done!")
}
