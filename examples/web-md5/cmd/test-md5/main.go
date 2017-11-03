package main

import (
	"encoding/binary"
	"encoding/hex"
	"log"
	"xcl"

	"github.com/ReconfigureIO/crypto/md5/host"
	"github.com/gin-gonic/gin"
)

func main() {
	world := xcl.NewWorld()
	defer world.Release()

	krnl := world.Import("kernel_test").GetKernel("reconfigure_io_sdaccel_builder_stub_0_1")
	defer krnl.Release()

	//gin
	r := gin.Default()
	r.GET("/md5/:input", func(c *gin.Context) {
		input := c.Param("input")
		msg := host.Pad([]byte(input))
		msgSize := binary.Size(msg)

		inputBuff := world.Malloc(xcl.ReadOnly, uint(msgSize))
		defer inputBuff.Free()

		outputBuff := world.Malloc(xcl.ReadOnly, 16)
		defer outputBuff.Free()

		binary.Write(inputBuff.Writer(), binary.LittleEndian, msg)
		numBlocks := uint32(msgSize / 64)

		krnl.SetArg(0, numBlocks)
		krnl.SetMemoryArg(1, inputBuff)
		krnl.SetMemoryArg(2, outputBuff)

		krnl.Run(1, 1, 1)

		ret := make([]byte, 16)
		err := binary.Read(outputBuff.Reader(), binary.LittleEndian, ret)
		if err != nil {
			log.Fatal("binary.Read failed:", err)
		}

		s := hex.EncodeToString(ret)
		log.Printf("Got hex string of %s", s)
		c.String(http.StatusOK, "MD5: %s", s)

	})
	r.Run(":80") // listen and serve on 0.0.0.0:80

}
