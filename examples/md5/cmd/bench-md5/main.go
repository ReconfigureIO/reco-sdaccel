package main

import (
	"github.com/ReconfigureIO/sdaccel/xcl"
	"testing"

	"ReconfigureIO/reco-sdaccel/benchmarks"
)

func main() {
	world := xcl.NewWorld()
	defer world.Release()

	program := world.Import("kernel_test")
	defer program.Release()

	krnl := program.GetKernel("reconfigure_io_sdaccel_builder_stub_0_1")
	defer krnl.Release()

	f := func(B *testing.B) {
		doit(world, krnl, B)
	}

	bm := testing.Benchmark(f)
	benchmarks.GipedaResults("md5", bm)
}

func doit(world xcl.World, krnl *xcl.Kernel, B *testing.B) {
	B.SetBytes(64)
	B.ReportAllocs()

	krnl.SetArg(0, uint32(B.N))

	B.ResetTimer()
	krnl.Run(1, 1, 1)
	B.StopTimer()
}
