package main

import (
	"crypto/md5"
	"encoding/binary"
	"encoding/hex"
	"log"
	"net/http"
	"xcl"

	"github.com/ReconfigureIO/crypto/md5/host"
	"github.com/gin-gonic/gin"
)

func main() {
	world := xcl.NewWorld()
	defer world.Release()

	r := gin.Default()
	r.GET("/", func(c *gin.Context) {
		c.String(http.StatusOK, "Visit /md5/{your text here} to have your string hashed by an FPGA")
	})
	r.GET("/md5/:input", func(c *gin.Context) {
		input := c.Param("input")
		hash := GetMD5Hash(input)
		fpgaHash := GetMD5HashFPGA(world, input)
		c.String(http.StatusOK, "CPU says: %s, FPGA says: %s", hash, fpgaHash)

	})
	r.Run(":80") // listen and serve on 0.0.0.0:80

}

func GetMD5Hash(text string) string {
	hasher := md5.New()
	hasher.Write([]byte(text))
	return hex.EncodeToString(hasher.Sum(nil))
}

func GetMD5HashFPGA(world xcl.World, text string) string {
	krnl := world.Import("kernel_test").GetKernel("reconfigure_io_sdaccel_builder_stub_0_1")
	defer krnl.Release()

	msg := host.Pad([]byte(text))
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

	return hex.EncodeToString(ret)
}
