package main

import (
	"bytes"
	"encoding/binary"
	"log"
	"reflect"
	"xcl"
)

func main() {
	world := xcl.NewWorld()
	defer world.Release()

	krnl := world.Import("kernel_test").GetKernel("reconfigure_io_reco_sdaccel_stub_0_1")
	defer krnl.Release()

	input := []uint32{10, 1 << 31}
	inputByteLength := uint(4 * len(input))

	buff := world.Malloc(xcl.ReadOnly, inputByteLength)
	defer buff.Free()

	resp := make([]byte, 4*512)
	outputBuff := world.Malloc(xcl.ReadWrite, uint(len(resp)))
	defer outputBuff.Free()

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
		log.Fatal("binary.Read failed:", err)
	}

	var expected [512]uint32

	for _, val := range input {
		expected[val>>(32-9)] += 1
	}

	if !reflect.DeepEqual(expected, ret) {
		log.Fatalf("%v != %v\n", ret, expected)
	}
}
