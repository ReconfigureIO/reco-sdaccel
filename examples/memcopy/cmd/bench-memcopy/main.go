package main

import (
	"crypto/rand"
	"encoding/binary"
	"fmt"
	"testing"
	"xcl"
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
	print("runtime/memcopy;")
	println(bm.NsPerOp())
	print("allocs/memcopy;")
	println(bm.AllocsPerOp())
	print("bytes/memcopy;")
	println(bm.AllocedBytesPerOp())
}

func doit(world xcl.World, krnl *xcl.Kernel, B *testing.B) {
	B.SetBytes(8)
	B.ReportAllocs()
	byteLength := uint(8 * B.N)

	input := make([]byte, byteLength)
	_, err := rand.Read(input)

	if err != nil {
		fmt.Println("error:", err)
		return
	}

	outputBuff := world.Malloc(xcl.WriteOnly, byteLength)
	defer outputBuff.Free()

	inputBuff := world.Malloc(xcl.ReadOnly, byteLength)
	defer inputBuff.Free()

	binary.Write(inputBuff.Writer(), binary.LittleEndian, &input)

	krnl.SetMemoryArg(0, inputBuff)
	krnl.SetMemoryArg(1, outputBuff)
	krnl.SetArg(2, uint32(B.N))

	B.ResetTimer()
	krnl.Run(1, 1, 1)
	B.StopTimer()
}
