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

	writeBuff := world.Malloc(xcl.WriteOnly, 4)
	defer writeBuff.Free()

	readBuff := world.Malloc(xcl.readOnly, 4)
	defer readBuff.Free()


	krnl.SetArg(0, 1)
	krnl.SetArg(1, 2)
	krnl.SetMemoryArg(readBuff, writeBuff)

	krnl.Run(1, 1, 1)

	resp := make([]byte, 4)
	writeBuff.Read(resp)

	var ret uint32
	err := binary.Read(bytes.NewReader(resp), binary.LittleEndian, &ret)
	if err != nil {
		fmt.Println("binary.Read failed:", err)
	}

	if ret != 3 {
		os.Exit(1)
	}
}
