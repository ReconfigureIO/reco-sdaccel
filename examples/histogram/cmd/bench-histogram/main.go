package main

import (
	"encoding/binary"
	"math/rand"
	"xcl"
	"testing"
)

const (
	MAX_BIT_WIDTH       = 16
	HISTOGRAM_BIT_WIDTH = 9
	HISTOGRAM_WIDTH     = 1 << 9
)

func main() {
	bm := testing.Benchmark(doit)
	print("runtime/histogram;")
	println(bm.NsPerOp())
	print("allocs/histogram;")
	println(bm.AllocsPerOp())
	print("bytes/histogram;")
	println(bm.AllocedBytesPerOp())
}

func doit(B *testing.B) {
	B.SetBytes(int64(B.N))
	B.ReportAllocs()
	B.StopTimer()
	world := xcl.NewWorld()
	defer world.Release()

	krnl := world.Import("kernel_test").GetKernel("reconfigure_io_sdaccel_builder_stub_0_1")
	defer krnl.Release()

	input := make([]uint32, B.N)

	// seed it with 20 random values, bound to 0 - 2**16
	for i, _ := range input {
		input[i] = uint32(uint16(rand.Uint32()))
	}

	buff := world.Malloc(xcl.ReadOnly, uint(binary.Size(input)))
	defer buff.Free()

	resp := make([]byte, 4*HISTOGRAM_WIDTH)
	outputBuff := world.Malloc(xcl.ReadWrite, uint(binary.Size(resp)))
	defer outputBuff.Free()

	binary.Write(buff.Writer(), binary.LittleEndian, &input)

	outputBuff.Write(resp)

	krnl.SetMemoryArg(0, buff)
	krnl.SetMemoryArg(1, outputBuff)
	krnl.SetArg(2, uint32(len(input)))

	B.ResetTimer()
	B.StartTimer()
	krnl.Run(1, 1, 1)
	B.StopTimer()
}
