package main

import (
	"encoding/binary"
	"log"

	"github.com/ReconfigureIO/sdaccel/xcl"
)

type Result struct {
	something uint32
}

const DATA_WIDTH = 1024

func main() {
	world := xcl.NewWorld()
	defer world.Release()

	krnl := world.Import("kernel_test").GetKernel("reconfigure_io_sdaccel_builder_stub_0_1")
	defer krnl.Release()

	inputBuff := world.Malloc(xcl.WriteOnly, DATA_WIDTH)
	defer inputBuff.Free()

	var result Result

	outputBuff := world.Malloc(xcl.WriteOnly, uint(binary.Size(result)))
	defer outputBuff.Free()

	burstCount := uint32(DATA_WIDTH / 64)

	krnl.SetMemoryArg(0, inputBuff)
	krnl.SetArg(1, DATA_WIDTH)
	krnl.SetArg(2, burstCount)
	krnl.SetMemoryArg(3, outputBuff)

	krnl.Run(1, 1, 1)

	err := binary.Read(outputBuff.Reader(), binary.LittleEndian, &result)

	if err != nil {
		log.Fatal("binary.Read failed:", err)
	}
}
