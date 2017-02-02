//
// (c) 2017 ReconfigureIO
//
// <COPYRIGHT TERMS>
//

//
// AXI-Lite interface definitions for interactive kernel control transactions.
//

package control

// Specifies AXI-Lite address channel fields.
type Addr struct {
	Addr  uint32
	Cache [4]bool
	Prot  [3]bool
}

// Specifies AXI-List response channel fields.
type Resp [2]bool

// Specifies AXI-Lite read data channel fields.
type ReadData struct {
	Data uint32
	Resp Resp
}

// Specifies AXI-Lite write data channel fields.
type WriteData struct {
	Data uint32
	Strb [4]bool
}

// Disable control bus read transactions. Should only be called once for each
// control interface.
func DisableReads(controlReadAddr <-chan Addr,
	controlReadData chan<- ReadData) {
	go nullReadHandler(controlReadAddr, controlReadData)
}

// Disable control bus write transactions. Should only be called once for each
// control interface.
func DisableWrites(
	controlWriteAddr <-chan Addr,
	controlWriteData <-chan WriteData,
	controlResp chan<- Resp) {
	go nullWriteHandler(controlWriteAddr, controlWriteData, controlResp)
}

// Responds to all simple AXI reads with zero value.
func nullReadHandler(controlReadAddr <-chan Addr,
	controlReadData chan<- ReadData) {
	nullRead := ReadData{0, [2]bool{false, false}}
	for {
		<-controlReadAddr
		controlReadData <- nullRead
	}
}

// Responds to all simple AXI writes with 'OK'.
func nullWriteHandler(
	controlWriteAddr <-chan Addr,
	controlWriteData <-chan WriteData,
	controlResp chan<- Resp) {
	nullResp := Resp{false, false}
	for {
		<-controlWriteAddr
		<-controlWriteData
		controlResp <- nullResp
	}
}
