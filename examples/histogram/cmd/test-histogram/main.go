package main

import (
	"bytes"
	"encoding/binary"
	"fmt"
	"os"
	"xcl"
)

func main() {
	world := xcl.NewWorld()
	defer world.Release()

	krnl := world.Import("kernel_test").GetKernel("reconfigure_io_reco_sdaccel_stub_0_1")
	defer krnl.Release()

	buff := world.Malloc(xcl.ReadOnly, 4*2)
	defer buff.Free()

	outputBuff := world.Malloc(xcl.ReadOnly, 4*512)
	defer outputBuff.Free()

	input := []uint32{10, 2 ^ 31}

	inputBuff := new(bytes.Buffer)
	binary.Write(inputBuff, binary.LittleEndian, &input)
	buff.Write(inputBuff.Bytes())

	krnl.SetMemoryArg(0, buff)
	krnl.SetMemoryArg(1, outputBuff)
	krnl.SetArg(2, 2)

	krnl.Run(1, 1, 1)

	resp := make([]byte, 4*512)
	outputBuff.Read(resp)

	var ret [512]uint32
	err := binary.Read(bytes.NewReader(resp), binary.LittleEndian, &ret)
	if err != nil {
		fmt.Println("binary.Read failed:", err)
	}

	sum := uint32(0)

	for _, val := range ret {
		sum += val
	}

	if sum != 2 {
		os.Exit(1)
	}

}
