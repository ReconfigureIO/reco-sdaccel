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
	Addr   uint64
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
	nullReadAddr := Addr{false, 0, 0, [3]bool{false, false, false},
		[2]bool{false, false}, false, [4]bool{false, false, false, false},
		[3]bool{false, true, false}, [4]bool{false, false, false, false},
		[4]bool{false, false, false, false}, false}
	memoryReadAddr <- nullReadAddr
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
	nullWriteAddr := Addr{false, 0, 0, [3]bool{false, false, false},
		[2]bool{false, false}, false, [4]bool{false, false, false, false},
		[3]bool{false, true, false}, [4]bool{false, false, false, false},
		[4]bool{false, false, false, false}, false}
	nullWriteData := WriteData{0, [4]bool{false, false, false, false},
		false, false}
	memoryWriteAddr <- nullWriteAddr
	memoryWriteData <- nullWriteData
	for {
		<-memoryWriteResp
	}
}

func Write(
	address uint64,
	data uint32,
	memoryWriteAddr chan<- Addr,
	memoryWriteData chan<- WriteData,
	memoryWriteResp <-chan Response) Response {

	go func() {
		memoryWriteAddr <- Addr{
			Addr: address,
			Prot: [3]bool{false, true, false},
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
	address uint64,
	memoryReadAddr chan<- Addr,
	memoryReadData <-chan ReadData) uint32 {

	go func() {
		memoryReadAddr <- Addr{
			Addr: address,
			Prot: [3]bool{false, true, false},
		}
	}()

	d := <-memoryReadData
	return d.Data
}
