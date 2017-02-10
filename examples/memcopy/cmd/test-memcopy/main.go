package main

import (
	"bytes"
	"encoding/binary"
	"fmt"
	"xcl"
	"reflect"
)

func main() {
	world := xcl.NewWorld()
	defer world.Release()

	krnl := world.Import("kernel_test").GetKernel("reconfigure_io_reco_sdaccel_stub_0_1")
	defer krnl.Release()

	input := []uint32{7, 2 ^ 31, 0, 1}
	byteLength := uint(len(input) * 4)

	outputBuff := world.Malloc(xcl.WriteOnly, byteLength)
	defer outputBuff.Free()

	inputBuff := world.Malloc(xcl.ReadOnly, byteLength)
	defer inputBuff.Free()



	inToBytes := new(bytes.Buffer)
 	binary.Write(inToBytes, binary.LittleEndian, &input)
 	inputBuff.Write(inToBytes.Bytes())


	krnl.SetMemoryArg(0, inputBuff)
	krnl.SetMemoryArg(1, outputBuff)
	krnl.SetArg(2, 4)

	krnl.Run(1, 1, 1)

	resp := make([]byte, byteLength)
	outputBuff.Read(resp)

	var ret [4]uint32
	err := binary.Read(bytes.NewReader(resp), binary.LittleEndian, &ret)
	if err != nil {
		fmt.Println("binary.Read failed:", err)
	}


	if !reflect.DeepEqual(ret, input) {
		fmt.Printf("%v != %v", ret, input)
	}

}