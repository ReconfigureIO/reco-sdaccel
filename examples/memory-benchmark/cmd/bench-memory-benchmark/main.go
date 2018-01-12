package main

import (
	"crypto/rand"
	"encoding/binary"
	"fmt"
	"testing"

	"github.com/ReconfigureIO/sdaccel/xcl"

	"ReconfigureIO/reco-sdaccel/benchmarks"
)

type Result struct {
	something uint32
}

const (
	DATA_WIDTH = 1024
	// Burst width in bytes
	BURST_WIDTH = 8
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
	benchmarks.GipedaResults("memcopy", bm)
}

func doit(world xcl.World, krnl *xcl.Kernel, B *testing.B) {
	B.SetBytes(int64(BURST_WIDTH * B.N))
	B.ReportAllocs()

	byteLength := B.N
	input := make([]byte, byteLength)
	_, err := rand.Read(input)

	if err != nil {
		fmt.Println("error:", err)
		return
	}

	inputBuff := world.Malloc(xcl.WriteOnly, DATA_WIDTH)
	defer inputBuff.Free()

	var result Result

	outputBuff := world.Malloc(xcl.WriteOnly, uint(binary.Size(result)))
	defer outputBuff.Free()

	burstCount := uint32(B.N)

	krnl.SetMemoryArg(0, inputBuff)
	krnl.SetArg(1, DATA_WIDTH)
	krnl.SetArg(2, burstCount)
	krnl.SetMemoryArg(3, outputBuff)

	B.ResetTimer()
	krnl.Run(1, 1, 1)
	B.StopTimer()
}
