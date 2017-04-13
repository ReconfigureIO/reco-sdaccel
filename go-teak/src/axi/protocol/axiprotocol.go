//
// (c) 2017 ReconfigureIO
//
// <COPYRIGHT TERMS>
//

//
// AXI protocol interface to memory mapped RAM and I/O. This defines the data
// types to be used on the AXI write address (AXI_AW), write data (AXI_W),
// write status response (AXI_B), read address (AXI_RA) and read data (AXI_R)
// channels. The protocol package also includes goroutines for running read and
// write AXI bus arbiters and for disabling unused AXI inferface ports. The data
// bus width is fixed at 64 bits, which corresponds to the largest Go primitive
// data types.
//

package protocol

//
// Specifies AXI memory address channel fields.
//
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

//
// Specifies AXI memory read data channel fields.
//
type ReadData struct {
	Id   bool
	Data uint64
	Resp [2]bool
	Last bool
	User bool
}

//
// Specifies AXI memory write data channel fields.
//
type WriteData struct {
	Data uint64
	Strb [8]bool
	Last bool
	User bool
}

//
// Specifies AXI memory write response channel fields.
//
type WriteResp struct {
	Id   bool
	Resp [2]bool
	User bool
}

//
// Perform write data transfers.
//
func writeDataTransfer(
	clientData chan<- WriteData,
	serverData <-chan WriteData) {

	// Terminate transfers on write data channel 'last' flag.
	writeData := WriteData{Last: false}
	for writeData.Last == false {
		writeData = <-serverData
		clientData <- writeData
	}
}

//
// Perform read data transfers.
//
func readDataTransfer(
	clientData <-chan ReadData,
	serverData chan<- ReadData) {

	// Terminate transfers on write data channel 'last' flag.
	readData := ReadData{Last: false}
	for readData.Last == false {
		readData = <-clientData
		serverData <- readData
	}
}

//
// Goroutine which implements AXI arbitration between two AXI write interfaces.
//
func WriteArbitrateX2(
	clientAddr chan<- Addr,
	clientData chan<- WriteData,
	clientResp <-chan WriteResp,
	serverAddr0 <-chan Addr,
	serverData0 <-chan WriteData,
	serverResp0 chan<- WriteResp,
	serverAddr1 <-chan Addr,
	serverData1 <-chan WriteData,
	serverResp1 chan<- WriteResp) {

	// Specify the input selection channels.
	dataChanSelect := make(chan byte)
	respChanSelect := make(chan byte)

	// Run write data channel handler.
	go func() {
		for {
			chanSelect := <-dataChanSelect
			respChanSelect <- chanSelect
			switch chanSelect {
			case 0:
				writeDataTransfer(clientData, serverData0)
			default:
				writeDataTransfer(clientData, serverData1)
			}
		}
	}()

	// Run response channel handler.
	go func() {
		for {
			chanSelect := <-respChanSelect
			writeResp := <-clientResp
			switch chanSelect {
			case 0:
				serverResp0 <- writeResp
			default:
				serverResp1 <- writeResp
			}
		}
	}()

	// Use independent write addresses for efficient implementation.
	var writeAddr0 Addr
	var writeAddr1 Addr
	for {
		select {
		case writeAddr0 = <-serverAddr0:
			clientAddr <- writeAddr0
			dataChanSelect <- 0
		case writeAddr1 = <-serverAddr1:
			clientAddr <- writeAddr1
			dataChanSelect <- 1
		}
	}
}

//
// Goroutine which implements AXI arbitration between three AXI write interfaces.
//
func WriteArbitrateX3(
	clientAddr chan<- Addr,
	clientData chan<- WriteData,
	clientResp <-chan WriteResp,
	serverAddr0 <-chan Addr,
	serverData0 <-chan WriteData,
	serverResp0 chan<- WriteResp,
	serverAddr1 <-chan Addr,
	serverData1 <-chan WriteData,
	serverResp1 chan<- WriteResp,
	serverAddr2 <-chan Addr,
	serverData2 <-chan WriteData,
	serverResp2 chan<- WriteResp) {

	// Specify the input selection channels.
	dataChanSelect := make(chan byte)
	respChanSelect := make(chan byte)

	// Run write data channel handler.
	go func() {
		for {
			chanSelect := <-dataChanSelect
			respChanSelect <- chanSelect
			switch chanSelect {
			case 0:
				writeDataTransfer(clientData, serverData0)
			case 1:
				writeDataTransfer(clientData, serverData1)
			default:
				writeDataTransfer(clientData, serverData2)
			}
		}
	}()

	// Run response channel handler.
	go func() {
		for {
			chanSelect := <-respChanSelect
			writeResp := <-clientResp
			switch chanSelect {
			case 0:
				serverResp0 <- writeResp
			case 1:
				serverResp1 <- writeResp
			default:
				serverResp2 <- writeResp
			}
		}
	}()

	// Use independent write addresses for efficient implementation.
	var writeAddr0 Addr
	var writeAddr1 Addr
	var writeAddr2 Addr
	for {
		select {
		case writeAddr0 = <-serverAddr0:
			clientAddr <- writeAddr0
			dataChanSelect <- 0
		case writeAddr1 = <-serverAddr1:
			clientAddr <- writeAddr1
			dataChanSelect <- 1
		case writeAddr2 = <-serverAddr2:
			clientAddr <- writeAddr2
			dataChanSelect <- 2
		}
	}
}

//
// Goroutine which implements AXI arbitration between four AXI write interfaces.
//
func WriteArbitrateX4(
	clientAddr chan<- Addr,
	clientData chan<- WriteData,
	clientResp <-chan WriteResp,
	serverAddr0 <-chan Addr,
	serverData0 <-chan WriteData,
	serverResp0 chan<- WriteResp,
	serverAddr1 <-chan Addr,
	serverData1 <-chan WriteData,
	serverResp1 chan<- WriteResp,
	serverAddr2 <-chan Addr,
	serverData2 <-chan WriteData,
	serverResp2 chan<- WriteResp,
	serverAddr3 <-chan Addr,
	serverData3 <-chan WriteData,
	serverResp3 chan<- WriteResp) {

	// Specify the input selection channels.
	dataChanSelect := make(chan byte)
	respChanSelect := make(chan byte)

	// Run write data channel handler.
	go func() {
		for {
			chanSelect := <-dataChanSelect
			respChanSelect <- chanSelect
			switch chanSelect {
			case 0:
				writeDataTransfer(clientData, serverData0)
			case 1:
				writeDataTransfer(clientData, serverData1)
			case 2:
				writeDataTransfer(clientData, serverData2)
			default:
				writeDataTransfer(clientData, serverData3)
			}
		}
	}()

	// Run response channel handler.
	go func() {
		for {
			chanSelect := <-respChanSelect
			writeResp := <-clientResp
			switch chanSelect {
			case 0:
				serverResp0 <- writeResp
			case 1:
				serverResp1 <- writeResp
			case 2:
				serverResp2 <- writeResp
			default:
				serverResp3 <- writeResp
			}
		}
	}()

	// Use independent write addresses for efficient implementation.
	var writeAddr0 Addr
	var writeAddr1 Addr
	var writeAddr2 Addr
	var writeAddr3 Addr
	for {
		select {
		case writeAddr0 = <-serverAddr0:
			clientAddr <- writeAddr0
			dataChanSelect <- 0
		case writeAddr1 = <-serverAddr1:
			clientAddr <- writeAddr1
			dataChanSelect <- 1
		case writeAddr2 = <-serverAddr2:
			clientAddr <- writeAddr2
			dataChanSelect <- 2
		case writeAddr3 = <-serverAddr3:
			clientAddr <- writeAddr3
			dataChanSelect <- 3
		}
	}
}

//
// Goroutine which implements AXI arbitration between two AXI read interfaces.
//
func ReadArbitrateX2(
	clientAddr chan<- Addr,
	clientData <-chan ReadData,
	serverAddr0 <-chan Addr,
	serverData0 chan<- ReadData,
	serverAddr1 <-chan Addr,
	serverData1 chan<- ReadData) {

	// Specify the input selection channel.
	dataChanSelect := make(chan byte)

	// Run write data channel handler.
	go func() {
		for {
			chanSelect := <-dataChanSelect
			switch chanSelect {
			case 0:
				readDataTransfer(clientData, serverData0)
			default:
				readDataTransfer(clientData, serverData1)
			}
		}
	}()

	// Use independent read addresses for efficient implementation.
	var readAddr0 Addr
	var readAddr1 Addr
	for {
		select {
		case readAddr0 = <-serverAddr0:
			clientAddr <- readAddr0
			dataChanSelect <- 0
		case readAddr1 = <-serverAddr1:
			clientAddr <- readAddr1
			dataChanSelect <- 1
		}
	}
}

//
// Goroutine which implements AXI arbitration between three AXI read interfaces.
//
func ReadArbitrateX3(
	clientAddr chan<- Addr,
	clientData <-chan ReadData,
	serverAddr0 <-chan Addr,
	serverData0 chan<- ReadData,
	serverAddr1 <-chan Addr,
	serverData1 chan<- ReadData,
	serverAddr2 <-chan Addr,
	serverData2 chan<- ReadData) {

	// Specify the input selection channel.
	dataChanSelect := make(chan byte)

	// Run write data channel handler.
	go func() {
		for {
			chanSelect := <-dataChanSelect
			switch chanSelect {
			case 0:
				readDataTransfer(clientData, serverData0)
			case 1:
				readDataTransfer(clientData, serverData1)
			default:
				readDataTransfer(clientData, serverData2)
			}
		}
	}()

	// Use independent read addresses for efficient implementation.
	var readAddr0 Addr
	var readAddr1 Addr
	var readAddr2 Addr
	for {
		select {
		case readAddr0 = <-serverAddr0:
			clientAddr <- readAddr0
			dataChanSelect <- 0
		case readAddr1 = <-serverAddr1:
			clientAddr <- readAddr1
			dataChanSelect <- 1
		case readAddr2 = <-serverAddr2:
			clientAddr <- readAddr2
			dataChanSelect <- 2
		}
	}
}

//
// Goroutine which implements AXI arbitration between four AXI read interfaces.
//
func ReadArbitrateX4(
	clientAddr chan<- Addr,
	clientData <-chan ReadData,
	serverAddr0 <-chan Addr,
	serverData0 chan<- ReadData,
	serverAddr1 <-chan Addr,
	serverData1 chan<- ReadData,
	serverAddr2 <-chan Addr,
	serverData2 chan<- ReadData,
	serverAddr3 <-chan Addr,
	serverData3 chan<- ReadData) {

	// Specify the input selection channel.
	dataChanSelect := make(chan byte)

	// Run write data channel handler.
	go func() {
		for {
			chanSelect := <-dataChanSelect
			switch chanSelect {
			case 0:
				readDataTransfer(clientData, serverData0)
			case 1:
				readDataTransfer(clientData, serverData1)
			case 2:
				readDataTransfer(clientData, serverData2)
			default:
				readDataTransfer(clientData, serverData3)
			}
		}
	}()

	// Use independent read addresses for efficient implementation.
	var readAddr0 Addr
	var readAddr1 Addr
	var readAddr2 Addr
	var readAddr3 Addr
	for {
		select {
		case readAddr0 = <-serverAddr0:
			clientAddr <- readAddr0
			dataChanSelect <- 0
		case readAddr1 = <-serverAddr1:
			clientAddr <- readAddr1
			dataChanSelect <- 1
		case readAddr2 = <-serverAddr2:
			clientAddr <- readAddr2
			dataChanSelect <- 2
		case readAddr3 = <-serverAddr3:
			clientAddr <- readAddr3
			dataChanSelect <- 3
		}
	}
}

//
// Goroutine to disable AXI bus write transactions. Should be run once for each
// unused AXI write interface.
//
func WriteDisable(
	clientAddr chan<- Addr,
	clientData chan<- WriteData,
	clientResp <-chan WriteResp) {

	clientAddr <- Addr{}
	clientData <- WriteData{Last: true}
	for {
		<-clientResp
	}
}

//
// Goroutine to disable AXI bus read transactions. Should be run once for
// each unused AXI read interface.
//
func ReadDisable(
	clientAddr chan<- Addr,
	clientData <-chan ReadData) {

	clientAddr <- Addr{}
	for {
		<-clientData
	}
}
