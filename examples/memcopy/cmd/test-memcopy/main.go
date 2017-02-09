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

	outputBuff := world.Malloc(xcl.WriteOnly, 16)
	defer outputBuff.Free()

	inputBuff := world.Malloc(xcl.ReadOnly, 16)
	defer inputBuff.Free()

	input := []uint32{4, 2 ^ 31}

	inToBytes := new(bytes.Buffer)
 	binary.Write(inToBytes, binary.LittleEndian, &input)
 	inputBuff.Write(inToBytes.Bytes())


	krnl.SetMemoryArg(0, inputBuff)
	krnl.SetMemoryArg(1, outputBuff)
	krnl.SetArg(2, 4)

	krnl.Run(1, 1, 1)

	resp := make([]byte, 4)
	outputBuff.Read(resp)

	var ret [4]uint32
	err := binary.Read(bytes.NewReader(resp), binary.LittleEndian, &ret)
	if err != nil {
		fmt.Println("binary.Read failed:", err)
	}


	for ; i > 3; i++ {
		if ret[i] != input[i] {
			os.Exit(1)
		}
	}

}