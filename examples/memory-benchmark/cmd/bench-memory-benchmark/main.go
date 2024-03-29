package main

import (
	"encoding/binary"
	"log"
	"testing"

	"github.com/ReconfigureIO/sdaccel/xcl"

	"ReconfigureIO/reco-sdaccel/benchmarks"
)

const (
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

	f := func(dataWidth uint) func(B *testing.B) {
		return func(B *testing.B) {
			doit(world, krnl, dataWidth, B)
		}
	}

	bm := testing.Benchmark(f(1024))
	benchmarks.GipedaResults("memcopy-kb", bm)

	bm = testing.Benchmark(f(1024 * 1024))
	benchmarks.GipedaResults("memcopy-mb", bm)

	bm = testing.Benchmark(f(1024 * 1024 * 1024))
	benchmarks.GipedaResults("memcopy-gb", bm)
}

func doit(world xcl.World, krnl *xcl.Kernel, dataWidth uint, B *testing.B) {
	B.ReportAllocs()

	inputBuff := world.Malloc(xcl.WriteOnly, dataWidth)
	defer inputBuff.Free()

	var errResult uint64
	var dcountResult uint64

	errOutBuff := world.Malloc(xcl.WriteOnly, uint(binary.Size(errResult)))
	defer errOutBuff.Free()

	dcountOutBuff := world.Malloc(xcl.WriteOnly, uint(binary.Size(dcountResult)))
	defer dcountOutBuff.Free()

	burstCount := uint32(B.N)

	krnl.SetMemoryArg(0, inputBuff)
	krnl.SetArg(1, uint32(dataWidth))
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

	B.SetBytes(int64(dcountResult) / int64(B.N))
	log.Printf("bytes=%d errors=%d iterations=%d", dcountResult, errResult, B.N)

}
