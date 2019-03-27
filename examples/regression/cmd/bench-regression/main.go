package main

import (
	"encoding/binary"
	//"math/rand"
	"github.com/ReconfigureIO/sdaccel/xcl"
	"testing"

	"ReconfigureIO/reco-sdaccel/benchmarks"
)

const (
	MAX_BIT_WIDTH       = 16
	HISTOGRAM_BIT_WIDTH = 9
	HISTOGRAM_WIDTH     = 1 << 9
)

func main() {
	Process("Linear regression")
}

func Process(name string) {
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
	benchmarks.GipedaResults(name, bm)
}

func doit(world xcl.World, krnl *xcl.Kernel, B *testing.B) {
	B.SetBytes(4)
	B.ReportAllocs()

	// The data we'll send to the kernel for processing
	input := [64]uint64{}

	// so we don't get a divide by zero error
	input[0] = 1
	input[1] = 0

	inputBuff := world.Malloc(xcl.ReadOnly, uint(binary.Size(input)))
	defer inputBuff.Free()

	// don't care about these
	buff1 := world.Malloc(xcl.WriteOnly, 4)
	defer buff1.Free()
	buff2 := world.Malloc(xcl.WriteOnly, 4)
	defer buff2.Free()

	binary.Write(inputBuff.Writer(), binary.LittleEndian, &input)

	krnl.SetMemoryArg(0, inputBuff)
	krnl.SetArg(1, 64)

	// don't care about 3rd/4th
	krnl.SetMemoryArg(2, buff1)
	krnl.SetMemoryArg(3, buff2)

	krnl.Run(1, 1, 1)
	B.StopTimer()
}
