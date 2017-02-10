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

	resp := make([]byte, 4*512)
	outputBuff := world.Malloc(xcl.ReadWrite, uint(len(resp)))
	defer outputBuff.Free()

	input := []uint32{10, 2 ^ 31}

	inputBuff := new(bytes.Buffer)
	binary.Write(inputBuff, binary.LittleEndian, &input)
	buff.Write(inputBuff.Bytes())

	outputBuff.Write(resp)

	krnl.SetMemoryArg(0, buff)
	krnl.SetMemoryArg(1, outputBuff)
	krnl.SetArg(2, 2)

	krnl.Run(1, 1, 1)

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
		fmt.Printf("expected %d samples, found %d\n", 2, sum)
		os.Exit(1)
	}

	if ret[0] != 1 {
		fmt.Printf("ret[0] != %d\n", 1)
		os.Exit(1)
	}

	if ret[256] != 1 {
		fmt.Printf("ret[256] != %d\n", 1)
		os.Exit(1)
	}

}
