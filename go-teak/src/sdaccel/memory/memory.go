//
// (c) 2017 ReconfigureIO
//
// <COPYRIGHT TERMS>
//

//
// AXI master interface to memory mapped RAM and I/O. This defines the data
// types to be used on the AXI write address (AXI_AW), write data (AXI_W),
// write status (AXI_B), read address (AXI_RA) and read data (AXI_R) channels.
// Note that in order to ensure the correct ordering of AXI channel requests
// and responses, the AXI master interface channels must only ever be accessed
// sequentially from within the same goroutine. A suitable memory arbitration
// adapter will be required to support concurrent memory accesses.
//

package memory

// Specifies AXI memory address channel fields.
type Addr struct {
	Id     bool
	Addr   uintptr
	Len    byte
	Size   [3]bool
	Burst  [2]bool
	Lock   bool
	Cache  [4]bool
	Prot   [3]bool
	Region [4]bool
	Qos    [4]bool
	User   bool
}

// Specifies AXI memory read data channel fields.
type ReadData struct {
	Id   bool
	Data uint32
	Resp [2]bool
	Last bool
	User bool
}

// Specifies AXI memory write data channel fields.
type WriteData struct {
	Data uint32
	Strb [4]bool
	Last bool
	User bool
}

// Specifies AXI memory write response channel fields.
type Response struct {
	Id   bool
	Resp [2]bool
	User bool
}

// Goroutine to disable memory bus read transactions. Should only be run
// once for each memory interface.
func DisableReads(memoryReadAddr chan<- Addr,
	memoryReadData <-chan ReadData) {

	memoryReadAddr <- Addr{}
	for {
		<-memoryReadData
	}
}

// Goroutine to disable memory bus write transactions. Should only be run once
// for each memory interface.
func DisableWrites(
	memoryWriteAddr chan<- Addr,
	memoryWriteData chan<- WriteData,
	memoryWriteResp <-chan Response) {

	memoryWriteAddr <- Addr{}
	memoryWriteData <- WriteData{}
	for {
		<-memoryWriteResp
	}
}

func Write(
	address uintptr,
	data uint32,
	memoryWriteAddr chan<- Addr,
	memoryWriteData chan<- WriteData,
	memoryWriteResp <-chan Response) Response {

	go func() {
		memoryWriteAddr <- Addr{
			Addr:  address,
			Size:  [3]bool{false, true, false},
			Cache: [4]bool{true, true, false, false},
			Burst: [2]bool{true, false},
		}
	}()

	go func() {
		memoryWriteData <- WriteData{
			Data: data,
			Strb: [4]bool{true, true, true, true},
			Last: true,
		}
	}()

	return <-memoryWriteResp
}

func Read(
	address uintptr,
	memoryReadAddr chan<- Addr,
	memoryReadData <-chan ReadData) uint32 {

	go func() {
		memoryReadAddr <- Addr{
			Addr:  address,
			Size:  [3]bool{false, true, false},
			Cache: [4]bool{true, true, false, false},
			Burst: [2]bool{true, false},
		}
	}()

	d := <-memoryReadData
	return d.Data
}

func ReadBurst(
	address uintptr,
	burst uint32,
	dataStream chan<- uint32,
	memoryReadAddr chan<- Addr,
	memoryReadData <-chan ReadData) {

	for burst > 0 {
		burstSize := byte(128)

		if burst < uint32(burstSize) {
			burstSize = byte(burst)
		}

		go func() {
			memoryReadAddr <- Addr{
				Addr:  address,
				Len:   burstSize - 1,
				Size:  [3]bool{false, true, false},
				Cache: [4]bool{true, true, false, false},
				Burst: [2]bool{true, false},
			}
		}()
		for i := byte(0); i < burstSize; i++ {
			d := <-memoryReadData
			dataStream <- d.Data
		}
		burst -= uint32(burstSize)
		address += uintptr(burstSize) << 2
	}
}

func WriteBurst(
	address uintptr,
	burst uint32,
	dataStream <-chan uint32,
	memoryWriteAddr chan<- Addr,
	memoryWriteData chan<- WriteData,
	memoryWriteResp <-chan Response) {

	for burst > 0 {
		burstSize := byte(128)

		if burst < uint32(burstSize) {
			burstSize = byte(burst)
		}

		go func() {
			memoryWriteAddr <- Addr{
				Addr:  address,
				Len:   burstSize - 1,
				Size:  [3]bool{false, true, false},
				Cache: [4]bool{false, false, true, false},
				Burst: [2]bool{true, false},
			}
		}()
		go func() {
			for i := byte(0); i < burstSize; i++ {
				d := <-dataStream
				memoryWriteData <- WriteData{
					Data: d,
					Strb: [4]bool{true, true, true, true},
					Last: i == (burstSize - 1),
				}
			}
		}()
		<-memoryWriteResp
		burst -= uint32(burstSize)
		address += uintptr(burstSize) << 2
	}
}
