package main

import (
	"github.com/ReconfigureIO/sdaccel/xcl"
	"log"
	"time"
)

func main() {
	world := xcl.NewWorld()
	defer world.Release()

	krnl := world.Import("kernel_test").GetKernel("reconfigure_io_sdaccel_builder_stub_0_1")
	defer krnl.Release()

	for i := 0; i != 10; i++ {
		log.Printf("Running instance: %d", i)
		res := make(chan struct{})
		go func() {
			krnl.Run(1, 1, 1)
			res <- struct{}{}

		}()
		select {
		case <-res:
		case <-time.After(time.Minute):
			log.Fatal("Timeout")
		}
	}
	log.Print("job's done!")
}
