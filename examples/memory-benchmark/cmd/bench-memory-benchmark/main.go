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
	Something uint64
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

	var errResult Result
	var dcountResult Result

	errOutBuff := world.Malloc(xcl.WriteOnly, uint(binary.Size(errResult)))
	defer errOutBuff.Free()

	dcountOutBuff := world.Malloc(xcl.WriteOnly, uint(binary.Size(dcountResult)))
	defer dcountOutBuff.Free()

	burstCount := uint32(B.N)

	krnl.SetMemoryArg(0, inputBuff)
	krnl.SetArg(1, DATA_WIDTH)
	krnl.SetArg(2, burstCount)
	krnl.SetMemoryArg(3, errOutBuff)
	krnl.SetMemoryArg(4, dcountOutBuff)

	B.ResetTimer()
	krnl.Run(1, 1, 1)
	B.StopTimer()

	err := binary.Read(errOutBuff.Reader(), binary.LittleEndian, &errResult)
	if err != nil {
		log.Fatal("binary.Read failed:", err)
	}

	err = binary.Read(dcountOutBuff.Reader(), binary.LittleEndian, &dcountResult)
	if err != nil {
		log.Fatal("binary.Read failed:", err)
	}
}
