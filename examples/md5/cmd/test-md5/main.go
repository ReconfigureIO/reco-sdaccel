package main

import (
	"encoding/binary"
	"encoding/hex"
	"log"
	"xcl"

	"github.com/ReconfigureIO/crypto/md5/host"
)

func main() {
	world := xcl.NewWorld()
	defer world.Release()

	krnl := world.Import("kernel_test").GetKernel("reconfigure_io_sdaccel_builder_stub_0_1")
	defer krnl.Release()

	msg := host.Pad([]byte("The quick brown fox jumps over the lazy dog"))

	outputBuff := world.Malloc(xcl.WriteOnly, uint(len(msg)))
	defer outputBuff.Free()

	inputBuff := world.Malloc(xcl.ReadOnly, 16)
	defer inputBuff.Free()

	binary.Write(inputBuff.Writer(), binary.LittleEndian, msg)
	numBlocks := uint32(binary.Size(msg) / 8)

	krnl.SetArg(0, numBlocks)
	krnl.SetMemoryArg(1, inputBuff)
	krnl.SetMemoryArg(2, outputBuff)

	krnl.Run(1, 1, 1)

	var ret []byte
	err := binary.Read(outputBuff.Reader(), binary.LittleEndian, &ret)
	if err != nil {
		log.Fatal("binary.Read failed:", err)
	}

	s := hex.EncodeToString(ret)
	if s != "9e107d9d372bb6826bd81d3542a419d6" {
		log.Fatalf("%s != %s", s, "9e107d9d372bb6826bd81d3542a419d6")
	}
}