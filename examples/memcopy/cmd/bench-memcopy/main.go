package main

import (
	"bytes"
	"crypto/rand"
	"encoding/binary"
	"fmt"
	"testing"
	"xcl"

	"ReconfigureIO/reco-sdaccel/benchmarks"
)

func main() {
	bm := testing.Benchmark(doit)
	benchmarks.GipedaResults("memcopy", bm)
}

func doit(B *testing.B) {
	B.SetBytes(4)
	B.ReportAllocs()
	B.StopTimer()
	world := xcl.NewWorld()
	defer world.Release()

	krnl := world.Import("kernel_test").GetKernel("reconfigure_io_sdaccel_builder_stub_0_1")
	defer krnl.Release()

	byteLength := uint(B.N)

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

	inToBytes := new(bytes.Buffer)
	binary.Write(inToBytes, binary.LittleEndian, &input)
	inputBuff.Write(inToBytes.Bytes())

	krnl.SetMemoryArg(0, inputBuff)
	krnl.SetMemoryArg(1, outputBuff)
	krnl.SetArg(2, uint32(len(input)))

	B.ResetTimer()
	B.StartTimer()
	krnl.Run(1, 1, 1)
	B.StopTimer()
}
