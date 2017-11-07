//
// (c) 2017 ReconfigureIO
//
// <COPYRIGHT TERMS>
//

//
// Package smi/memory provides high level operations for SMI access to memory
// mapped RAM and I/O. This defines the memory access functions to support
// reading and writing of the various Go primitive types over an SMI memory
// access endpoint. Note that in order to ensure the correct ordering of SMI
// channel requests and responses, each SMI client/server interface must only
// ever be accessed sequentially from within the same goroutine. A suitable
// memory arbitration component from the smi/protocol package will be required
// to support concurrent memory accesses on a single SMI memory access
// endpoint.
//
package memory

import (
	"smi/protocol"
)

//
// WriteUInt64 writes a single 64-bit unsigned data value to a word aligned
// address on the specified SMI memory endpoint, with the bottom three address
// bits being ignored. The status of the write transaction is returned as the
// boolean 'writeOk' flag.
//
func WriteUInt64(
	smiRequest chan<- protocol.Flit64,
	smiResponse <-chan protocol.Flit64,
	writeAddr uintptr,
	writeData uint64) bool {

	// Assemble the request message.
	reqFlit1 := protocol.Flit64{
		Eofc: 0,
		Data: [8]uint8{
			uint8(protocol.SmiMemWriteReq),
			uint8(0),
			uint8(0),
			uint8(0),
			uint8(writeAddr) & 0xF8,
			uint8(writeAddr >> 8),
			uint8(writeAddr >> 16),
			uint8(writeAddr >> 24)}}

	reqFlit2 := protocol.Flit64{
		Eofc: 0,
		Data: [8]uint8{
			uint8(writeAddr >> 32),
			uint8(writeAddr >> 40),
			uint8(writeAddr >> 48),
			uint8(writeAddr >> 56),
			uint8(8),
			uint8(0),
			uint8(writeData),
			uint8(writeData >> 8)}}

	reqFlit3 := protocol.Flit64{
		Eofc: 6,
		Data: [8]uint8{
			uint8(writeData >> 16),
			uint8(writeData >> 24),
			uint8(writeData >> 32),
			uint8(writeData >> 40),
			uint8(writeData >> 48),
			uint8(writeData >> 56),
			uint8(0),
			uint8(0)}}

	// Transmit the request message.
	smiRequest <- reqFlit1
	smiRequest <- reqFlit2
	smiRequest <- reqFlit3

	// Accept the response message.
	respFlit := <-smiResponse
	var writeOk bool
	if (respFlit.Data[1] & 0x02) == uint8(0x00) {
		writeOk = true
	} else {
		writeOk = false
	}
	return writeOk
}

//
// WriteUInt32 writes a single 32-bit unsigned data value to a word aligned
// address on the specified SMI memory endpoint, with the bottom two address
// bits being ignored. The status of the write transaction is returned as the
// boolean 'writeOk' flag.
//
func WriteUInt32(
	smiRequest chan<- protocol.Flit64,
	smiResponse <-chan protocol.Flit64,
	writeAddr uintptr,
	writeData uint32) bool {

	// Assemble the request message.
	reqFlit1 := protocol.Flit64{
		Eofc: 0,
		Data: [8]uint8{
			uint8(protocol.SmiMemWriteReq),
			uint8(0),
			uint8(0),
			uint8(0),
			uint8(writeAddr) & 0xFC,
			uint8(writeAddr >> 8),
			uint8(writeAddr >> 16),
			uint8(writeAddr >> 24)}}

	reqFlit2 := protocol.Flit64{
		Eofc: 0,
		Data: [8]uint8{
			uint8(writeAddr >> 32),
			uint8(writeAddr >> 40),
			uint8(writeAddr >> 48),
			uint8(writeAddr >> 56),
			uint8(4),
			uint8(0),
			uint8(writeData),
			uint8(writeData >> 8)}}

	reqFlit3 := protocol.Flit64{
		Eofc: 2,
		Data: [8]uint8{
			uint8(writeData >> 16),
			uint8(writeData >> 24),
			uint8(0),
			uint8(0),
			uint8(0),
			uint8(0),
			uint8(0),
			uint8(0)}}

	// Transmit the request message.
	smiRequest <- reqFlit1
	smiRequest <- reqFlit2
	smiRequest <- reqFlit3

	// Accept the response message.
	respFlit := <-smiResponse
	var writeOk bool
	if (respFlit.Data[1] & 0x02) == uint8(0x00) {
		writeOk = true
	} else {
		writeOk = false
	}
	return writeOk
}

//
// WriteUInt16 writes a single 16-bit unsigned data value to a word aligned
// address on the specified SMI memory endpoint, with the bottom address
// bit being ignored. The status of the write transaction is returned as the
// boolean 'writeOk' flag.
//
func WriteUInt16(
	smiRequest chan<- protocol.Flit64,
	smiResponse <-chan protocol.Flit64,
	writeAddr uintptr,
	writeData uint16) bool {

	// Assemble the request message.
	reqFlit1 := protocol.Flit64{
		Eofc: 0,
		Data: [8]uint8{
			uint8(protocol.SmiMemWriteReq),
			uint8(0),
			uint8(0),
			uint8(0),
			uint8(writeAddr) & 0xFE,
			uint8(writeAddr >> 8),
			uint8(writeAddr >> 16),
			uint8(writeAddr >> 24)}}

	reqFlit2 := protocol.Flit64{
		Eofc: 8,
		Data: [8]uint8{
			uint8(writeAddr >> 32),
			uint8(writeAddr >> 40),
			uint8(writeAddr >> 48),
			uint8(writeAddr >> 56),
			uint8(2),
			uint8(0),
			uint8(writeData),
			uint8(writeData >> 8)}}

	// Transmit the request message.
	smiRequest <- reqFlit1
	smiRequest <- reqFlit2

	// Accept the response message.
	respFlit := <-smiResponse
	var writeOk bool
	if (respFlit.Data[1] & 0x02) == uint8(0x00) {
		writeOk = true
	} else {
		writeOk = false
	}
	return writeOk
}

//
// WriteUInt8 writes a single 8-bit unsigned data value to a byte aligned
// address on the specified SMI memory endpoint. The status of the write
// transaction is returned as the boolean 'writeOk' flag.
//
func WriteUInt8(
	smiRequest chan<- protocol.Flit64,
	smiResponse <-chan protocol.Flit64,
	writeAddr uintptr,
	writeData uint8) bool {

	// Assemble the request message.
	reqFlit1 := protocol.Flit64{
		Eofc: 0,
		Data: [8]uint8{
			uint8(protocol.SmiMemWriteReq),
			uint8(0),
			uint8(0),
			uint8(0),
			uint8(writeAddr),
			uint8(writeAddr >> 8),
			uint8(writeAddr >> 16),
			uint8(writeAddr >> 24)}}

	reqFlit2 := protocol.Flit64{
		Eofc: 7,
		Data: [8]uint8{
			uint8(writeAddr >> 32),
			uint8(writeAddr >> 40),
			uint8(writeAddr >> 48),
			uint8(writeAddr >> 56),
			uint8(1),
			uint8(0),
			uint8(writeData),
			uint8(0)}}

	// Transmit the request message.
	smiRequest <- reqFlit1
	smiRequest <- reqFlit2

	// Accept the response message.
	respFlit := <-smiResponse
	var writeOk bool
	if (respFlit.Data[1] & 0x02) == uint8(0x00) {
		writeOk = true
	} else {
		writeOk = false
	}
	return writeOk
}

//
// ReadUInt64 reads a single 64-bit unsigned data value from a word aligned
// address on the specified SMI memory endpoint, with the bottom three address
// bits being ignored.
// TODO: The status of the write transaction should also be returned as the
// boolean 'readOk' flag.
//
func ReadUInt64(
	smiRequest chan<- protocol.Flit64,
	smiResponse <-chan protocol.Flit64,
	readAddr uintptr) uint64 {

	// Assemble the request message.
	reqFlit1 := protocol.Flit64{
		Eofc: 0,
		Data: [8]uint8{
			uint8(protocol.SmiMemReadReq),
			uint8(0),
			uint8(0),
			uint8(0),
			uint8(readAddr) & 0xF8,
			uint8(readAddr >> 8),
			uint8(readAddr >> 16),
			uint8(readAddr >> 24)}}

	reqFlit2 := protocol.Flit64{
		Eofc: 6,
		Data: [8]uint8{
			uint8(readAddr >> 32),
			uint8(readAddr >> 40),
			uint8(readAddr >> 48),
			uint8(readAddr >> 56),
			uint8(8),
			uint8(0),
			uint8(0),
			uint8(0)}}

	// Transmit the request message.
	smiRequest <- reqFlit1
	smiRequest <- reqFlit2

	// Accept the response message.
	respFlit1 := <-smiResponse
	respFlit2 := <-smiResponse

	return (((uint64(respFlit1.Data[4])) |
		(uint64(respFlit1.Data[5]) << 8)) |
		((uint64(respFlit1.Data[6]) << 16) |
			(uint64(respFlit1.Data[7]) << 24))) |
		(((uint64(respFlit2.Data[0]) << 32) |
			(uint64(respFlit2.Data[1]) << 40)) |
			((uint64(respFlit2.Data[2]) << 48) |
				(uint64(respFlit2.Data[3]) << 56)))
}

//
// ReadUInt32 reads a single 32-bit unsigned data value from a word aligned
// address on the specified SMI memory endpoint, with the bottom two address
// bits being ignored.
// TODO: The status of the write transaction should also be returned as the
// boolean 'readOk' flag.
//
func ReadUInt32(
	smiRequest chan<- protocol.Flit64,
	smiResponse <-chan protocol.Flit64,
	readAddr uintptr) uint32 {

	// Assemble the request message.
	reqFlit1 := protocol.Flit64{
		Eofc: 0,
		Data: [8]uint8{
			uint8(protocol.SmiMemReadReq),
			uint8(0),
			uint8(0),
			uint8(0),
			uint8(readAddr) & 0xFC,
			uint8(readAddr >> 8),
			uint8(readAddr >> 16),
			uint8(readAddr >> 24)}}

	reqFlit2 := protocol.Flit64{
		Eofc: 6,
		Data: [8]uint8{
			uint8(readAddr >> 32),
			uint8(readAddr >> 40),
			uint8(readAddr >> 48),
			uint8(readAddr >> 56),
			uint8(4),
			uint8(0),
			uint8(0),
			uint8(0)}}

	// Transmit the request message.
	smiRequest <- reqFlit1
	smiRequest <- reqFlit2

	// Accept the response message.
	respFlit1 := <-smiResponse

	return (((uint32(respFlit1.Data[4])) |
		(uint32(respFlit1.Data[5]) << 8)) |
		((uint32(respFlit1.Data[6]) << 16) |
			(uint32(respFlit1.Data[7]) << 24)))
}

//
// ReadUInt16 reads a single 16-bit unsigned data value from a word aligned
// address on the specified SMI memory endpoint, with the bottom address
// bit being ignored.
// TODO: The status of the write transaction should also be returned as the
// boolean 'readOk' flag.
//
func ReadUInt16(
	smiRequest chan<- protocol.Flit64,
	smiResponse <-chan protocol.Flit64,
	readAddr uintptr) uint16 {

	// Assemble the request message.
	reqFlit1 := protocol.Flit64{
		Eofc: 0,
		Data: [8]uint8{
			uint8(protocol.SmiMemReadReq),
			uint8(0),
			uint8(0),
			uint8(0),
			uint8(readAddr) & 0xFE,
			uint8(readAddr >> 8),
			uint8(readAddr >> 16),
			uint8(readAddr >> 24)}}

	reqFlit2 := protocol.Flit64{
		Eofc: 6,
		Data: [8]uint8{
			uint8(readAddr >> 32),
			uint8(readAddr >> 40),
			uint8(readAddr >> 48),
			uint8(readAddr >> 56),
			uint8(2),
			uint8(0),
			uint8(0),
			uint8(0)}}

	// Transmit the request message.
	smiRequest <- reqFlit1
	smiRequest <- reqFlit2

	// Accept the response message.
	respFlit1 := <-smiResponse

	return uint16(respFlit1.Data[4]) |
		(uint16(respFlit1.Data[5]) << 8)
}

//
// ReadUInt8 reads a single 8-bit unsigned data value from a byte aligned
// address on the specified SMI memory endpoint.
// TODO: The status of the write transaction should also be returned as the
// boolean 'readOk' flag.
//
func ReadUInt8(
	smiRequest chan<- protocol.Flit64,
	smiResponse <-chan protocol.Flit64,
	readAddr uintptr) uint8 {

	// Assemble the request message.
	reqFlit1 := protocol.Flit64{
		Eofc: 0,
		Data: [8]uint8{
			uint8(protocol.SmiMemReadReq),
			uint8(0),
			uint8(0),
			uint8(0),
			uint8(readAddr),
			uint8(readAddr >> 8),
			uint8(readAddr >> 16),
			uint8(readAddr >> 24)}}

	reqFlit2 := protocol.Flit64{
		Eofc: 6,
		Data: [8]uint8{
			uint8(readAddr >> 32),
			uint8(readAddr >> 40),
			uint8(readAddr >> 48),
			uint8(readAddr >> 56),
			uint8(1),
			uint8(0),
			uint8(0),
			uint8(0)}}

	// Transmit the request message.
	smiRequest <- reqFlit1
	smiRequest <- reqFlit2

	// Accept the response message.
	respFlit1 := <-smiResponse

	return respFlit1.Data[4]
}

//
// writeSingleBurstUInt64 is the core logic for writing a single incrementing
// burst of 64-bit unsigned data. Requires validated and word aligned input
// parameters.
//
func writeSingleBurstUInt64(
	smiRequest chan<- protocol.Flit64,
	smiResponse <-chan protocol.Flit64,
	writeAddr uintptr,
	writeLength uint16,
	writeDataChan <-chan uint64) bool {

	// Set up the initial flit data.
	firstFlit := protocol.Flit64{
		Eofc: 0,
		Data: [8]uint8{
			uint8(protocol.SmiMemWriteReq),
			uint8(0),
			uint8(0),
			uint8(0),
			uint8(writeAddr),
			uint8(writeAddr >> 8),
			uint8(writeAddr >> 16),
			uint8(writeAddr >> 24)}}

	flitData := [6]uint8{
		uint8(writeAddr >> 32),
		uint8(writeAddr >> 40),
		uint8(writeAddr >> 48),
		uint8(writeAddr >> 56),
		uint8(writeLength),
		uint8(writeLength >> 8)}

	// Transmit the initial request flit.
	smiRequest <- firstFlit

	// Pull the requested number of words from the write data channel and
	// write the updated flit data to the request output.
	for i := (writeLength >> 3); i != 0; i-- {
		writeData := <-writeDataChan
		outputFlit := protocol.Flit64{
			Eofc: 0,
			Data: [8]uint8{
				flitData[0],
				flitData[1],
				flitData[2],
				flitData[3],
				flitData[4],
				flitData[5],
				uint8(writeData),
				uint8(writeData >> 8)}}
		flitData[0] = uint8(writeData >> 16)
		flitData[1] = uint8(writeData >> 24)
		flitData[2] = uint8(writeData >> 32)
		flitData[3] = uint8(writeData >> 40)
		flitData[4] = uint8(writeData >> 48)
		flitData[5] = uint8(writeData >> 56)
		smiRequest <- outputFlit
	}

	// Send the final flit.
	smiRequest <- protocol.Flit64{
		Eofc: 6,
		Data: [8]uint8{
			flitData[0],
			flitData[1],
			flitData[2],
			flitData[3],
			flitData[4],
			flitData[5],
			uint8(0),
			uint8(0)}}

	// Accept the response message.
	respFlit := <-smiResponse
	var writeOk bool
	if (respFlit.Data[1] & 0x02) == uint8(0x00) {
		writeOk = true
	} else {
		writeOk = false
	}
	return writeOk
}

//
// writeSingleBurstUInt32 is the core logic for writing a single incrementing
// burst of 32-bit unsigned data. Requires validated and word aligned input
// parameters.
//
func writeSingleBurstUInt32(
	smiRequest chan<- protocol.Flit64,
	smiResponse <-chan protocol.Flit64,
	writeAddr uintptr,
	writeLength uint16,
	writeDataChan <-chan uint32) bool {

	// Set up the initial flit data.
	firstFlit := protocol.Flit64{
		Eofc: 0,
		Data: [8]uint8{
			uint8(protocol.SmiMemWriteReq),
			uint8(0),
			uint8(0),
			uint8(0),
			uint8(writeAddr),
			uint8(writeAddr >> 8),
			uint8(writeAddr >> 16),
			uint8(writeAddr >> 24)}}

	flitData := [6]uint8{
		uint8(writeAddr >> 32),
		uint8(writeAddr >> 40),
		uint8(writeAddr >> 48),
		uint8(writeAddr >> 56),
		uint8(writeLength),
		uint8(writeLength >> 8)}
	finalEofc := uint8(6)

	// Transmit the initial request flit.
	smiRequest <- firstFlit

	// Pull the requested number of words from the write data channel and
	// write the updated flit data to the request output.
	for i := (writeLength >> 2); i != 0; i-- {
		writeData := <-writeDataChan
		if finalEofc == 6 {
			outputFlit := protocol.Flit64{
				Eofc: 0,
				Data: [8]uint8{
					flitData[0],
					flitData[1],
					flitData[2],
					flitData[3],
					flitData[4],
					flitData[5],
					uint8(writeData),
					uint8(writeData >> 8)}}
			flitData[0] = uint8(writeData >> 16)
			flitData[1] = uint8(writeData >> 24)
			smiRequest <- outputFlit
			finalEofc = 2
		} else {
			flitData[2] = uint8(writeData)
			flitData[3] = uint8(writeData >> 8)
			flitData[4] = uint8(writeData >> 16)
			flitData[5] = uint8(writeData >> 24)
			finalEofc = 6
		}
	}

	// Send the final flit.
	smiRequest <- protocol.Flit64{
		Eofc: finalEofc,
		Data: [8]uint8{
			flitData[0],
			flitData[1],
			flitData[2],
			flitData[3],
			flitData[4],
			flitData[5],
			uint8(0),
			uint8(0)}}

	// Accept the response message.
	respFlit := <-smiResponse
	var writeOk bool
	if (respFlit.Data[1] & 0x02) == uint8(0x00) {
		writeOk = true
	} else {
		writeOk = false
	}
	return writeOk
}

//
// writeSingleBurstUInt16 is the core logic for writing a single incrementing
// burst of 16-bit unsigned data. Requires validated and word aligned input
// parameters.
//
func writeSingleBurstUInt16(
	smiRequest chan<- protocol.Flit64,
	smiResponse <-chan protocol.Flit64,
	writeAddr uintptr,
	writeLength uint16,
	writeDataChan <-chan uint16) bool {

	// Set up the initial flit data.
	firstFlit := protocol.Flit64{
		Eofc: 0,
		Data: [8]uint8{
			uint8(protocol.SmiMemWriteReq),
			uint8(0),
			uint8(0),
			uint8(0),
			uint8(writeAddr),
			uint8(writeAddr >> 8),
			uint8(writeAddr >> 16),
			uint8(writeAddr >> 24)}}

	flitData := [8]uint8{
		uint8(writeAddr >> 32),
		uint8(writeAddr >> 40),
		uint8(writeAddr >> 48),
		uint8(writeAddr >> 56),
		uint8(writeLength),
		uint8(writeLength >> 8),
		uint8(0),
		uint8(0)}
	finalEofc := uint8(6)

	// Transmit the initial request flit.
	smiRequest <- firstFlit

	// Pull the requested number of words from the write data channel and
	// write the updated flit data to the request output.
	for i := (writeLength >> 1); i != 0; i-- {
		writeData := <-writeDataChan
		switch finalEofc {
		case 2:
			flitData[2] = uint8(writeData)
			flitData[3] = uint8(writeData >> 8)
			finalEofc = 4
		case 4:
			flitData[4] = uint8(writeData)
			flitData[5] = uint8(writeData >> 8)
			finalEofc = 6
		case 6:
			flitData[6] = uint8(writeData)
			flitData[7] = uint8(writeData >> 8)
			finalEofc = 8
		default:
			outputFlit := protocol.Flit64{
				Eofc: 0,
				Data: flitData}
			flitData[0] = uint8(writeData)
			flitData[1] = uint8(writeData >> 8)
			smiRequest <- outputFlit
			finalEofc = 2
		}
	}

	// Send the final flit.
	smiRequest <- protocol.Flit64{
		Eofc: finalEofc,
		Data: flitData}

	// Accept the response message.
	respFlit := <-smiResponse
	var writeOk bool
	if (respFlit.Data[1] & 0x02) == uint8(0x00) {
		writeOk = true
	} else {
		writeOk = false
	}
	return writeOk
}

//
// writeSingleBurstUInt8 is the core logic for writing a single incrementing
// burst of 8-bit unsigned data. Requires validated input parameters.
//
func writeSingleBurstUInt8(
	smiRequest chan<- protocol.Flit64,
	smiResponse <-chan protocol.Flit64,
	writeAddr uintptr,
	writeLength uint16,
	writeDataChan <-chan uint8) bool {

	// Set up the initial flit data.
	firstFlit := protocol.Flit64{
		Eofc: 0,
		Data: [8]uint8{
			uint8(protocol.SmiMemWriteReq),
			uint8(0),
			uint8(0),
			uint8(0),
			uint8(writeAddr),
			uint8(writeAddr >> 8),
			uint8(writeAddr >> 16),
			uint8(writeAddr >> 24)}}

	flitData := [8]uint8{
		uint8(writeAddr >> 32),
		uint8(writeAddr >> 40),
		uint8(writeAddr >> 48),
		uint8(writeAddr >> 56),
		uint8(writeLength),
		uint8(writeLength >> 8),
		uint8(0),
		uint8(0)}
	finalEofc := uint8(6)

	// Transmit the initial request flit.
	smiRequest <- firstFlit

	// Pull the requested number of words from the write data channel and
	// write the updated flit data to the request output.
	for i := (writeLength); i != 0; i-- {
		writeData := <-writeDataChan
		switch finalEofc {
		case 1:
			flitData[1] = writeData
			finalEofc = 2
		case 2:
			flitData[2] = writeData
			finalEofc = 3
		case 3:
			flitData[3] = writeData
			finalEofc = 4
		case 4:
			flitData[4] = writeData
			finalEofc = 5
		case 5:
			flitData[5] = writeData
			finalEofc = 6
		case 6:
			flitData[6] = writeData
			finalEofc = 7
		case 7:
			flitData[7] = writeData
			finalEofc = 8
		default:
			outputFlit := protocol.Flit64{
				Eofc: 0,
				Data: flitData}
			flitData[0] = writeData
			smiRequest <- outputFlit
			finalEofc = 1
		}
	}

	// Send the final flit.
	smiRequest <- protocol.Flit64{
		Eofc: finalEofc,
		Data: flitData}

	// Accept the response message.
	respFlit := <-smiResponse
	var writeOk bool
	if (respFlit.Data[1] & 0x02) == uint8(0x00) {
		writeOk = true
	} else {
		writeOk = false
	}
	return writeOk
}

//
// WritePagedBurstUInt64 writes an incrementing burst of 64-bit unsigned data
// values to a word aligned address on the specified SMI memory endpoint, with
// the bottom three address and burst length bits being ignored. The burst
// must be contained within a single 4096 byte page and must not cross page
// boundaries. In order to ensure optimum performance, the write data channel
// should be a buffered channel that already contains all the data to be
// written prior to invoking this function. The status of the write transaction
// is returned as the boolean 'writeOk' flag.
//
func WritePagedBurstUInt64(
	smiRequest chan<- protocol.Flit64,
	smiResponse <-chan protocol.Flit64,
	writeAddrIn uintptr,
	writeLengthIn uint16,
	writeDataChan <-chan uint64) bool {

	// TODO: Page boundary validation.
	// Force word alignment.
	writeAddr := writeAddrIn & 0xFFFFFFFFFFFFFFF8
	writeLength := writeLengthIn & 0xFFF8

	return writeSingleBurstUInt64(
		smiRequest, smiResponse, writeAddr, writeLength, writeDataChan)
}

//
// WritePagedBurstUInt32 writes an incrementing burst of 32-bit unsigned data
// values to a word aligned address on the specified SMI memory endpoint, with
// the bottom two address and burst length bits being ignored. The burst
// must be contained within a single 4096 byte page and must not cross page
// boundaries. In order to ensure optimum performance, the write data channel
// should be a buffered channel that already contains all the data to be
// written prior to invoking this function. The status of the write transaction
// is returned as the boolean 'writeOk' flag.
//
func WritePagedBurstUInt32(
	smiRequest chan<- protocol.Flit64,
	smiResponse <-chan protocol.Flit64,
	writeAddrIn uintptr,
	writeLengthIn uint16,
	writeDataChan <-chan uint32) bool {

	// TODO: Page boundary validation.
	// Force word alignment.
	writeAddr := writeAddrIn & 0xFFFFFFFFFFFFFFFC
	writeLength := writeLengthIn & 0xFFFC

	return writeSingleBurstUInt32(
		smiRequest, smiResponse, writeAddr, writeLength, writeDataChan)
}

//
// WritePagedBurstUInt16 writes an incrementing burst of 16-bit unsigned data
// values to a word aligned address on the specified SMI memory endpoint, with
// the bottom address and burst length bits being ignored. The burst must be
// contained within a single 4096 byte page and must not cross page boundaries.
// In order to ensure optimum performance, the write data channel should be a
// buffered channel that already contains all the data to be written prior to
// invoking this function. The status of the write transaction is returned as
// the boolean 'writeOk' flag.
//
func WritePagedBurstUInt16(
	smiRequest chan<- protocol.Flit64,
	smiResponse <-chan protocol.Flit64,
	writeAddrIn uintptr,
	writeLengthIn uint16,
	writeDataChan <-chan uint16) bool {

	// TODO: Page boundary validation.
	// Force word alignment.
	writeAddr := writeAddrIn & 0xFFFFFFFFFFFFFFFE
	writeLength := writeLengthIn & 0xFFFE

	return writeSingleBurstUInt16(
		smiRequest, smiResponse, writeAddr, writeLength, writeDataChan)
}

//
// WritePagedBurstUInt8 writes an incrementing burst of 8-bit unsigned data
// values to a byte aligned address on the specified SMI memory endpoint. The
// burst must be contained within a single 4096 byte page and must not cross
// page boundaries. In order to ensure optimum performance, the write data
// channel should be a buffered channel that already contains all the data to
// be written prior to invoking this function. The status of the write
// transaction is returned as the boolean 'writeOk' flag.
//
func WritePagedBurstUInt8(
	smiRequest chan<- protocol.Flit64,
	smiResponse <-chan protocol.Flit64,
	writeAddrIn uintptr,
	writeLengthIn uint16,
	writeDataChan <-chan uint8) bool {

	// TODO: Page boundary validation.

	return writeSingleBurstUInt8(
		smiRequest, smiResponse, writeAddrIn, writeLengthIn, writeDataChan)
}

//
// WriteBurstUInt64 writes an incrementing burst of 64-bit unsigned data
// values to a word aligned address on the specified SMI memory endpoint, with
// the bottom three address and burst length bits being ignored. The burst is
// automatically segmented to respect page boundaries and avoid blocking other
// transactions. In order to ensure optimum performance, the write data channel
// should be a buffered channel that already contains all the data to be
// written prior to invoking this function. The status of the write transaction
// is returned as the boolean 'writeOk' flag.
//
func WriteBurstUInt64(
	smiRequest chan<- protocol.Flit64,
	smiResponse <-chan protocol.Flit64,
	writeAddrIn uintptr,
	writeLengthIn uint16,
	writeDataChan <-chan uint64) bool {

	writeOk := true
	writeAddr := writeAddrIn & 0xFFFFFFFFFFFFFFF8
	writeLength := writeLengthIn & 0xFFF8
	burstOffset := uint16(writeAddr) & uint16(protocol.SmiMemBurstSize-1)
	burstSize := protocol.SmiMemBurstSize - burstOffset

	for writeLength != 0 {
		if writeLength < burstSize {
			burstSize = writeLength
		}
		writeOk = writeOk && writeSingleBurstUInt64(
			smiRequest, smiResponse, writeAddr, burstSize, writeDataChan)
		writeAddr += uintptr(burstSize)
		writeLength -= burstSize
		burstSize = protocol.SmiMemBurstSize
	}
	return writeOk
}

//
// WriteBurstUInt32 writes an incrementing burst of 32-bit unsigned data
// values to a word aligned address on the specified SMI memory endpoint, with
// the bottom two address and burst length bits being ignored. The burst is
// automatically segmented to respect page boundaries and avoid blocking other
// transactions. In order to ensure optimum performance, the write data channel
// should be a buffered channel that already contains all the data to be
// written prior to invoking this function. The status of the write transaction
// is returned as the boolean 'writeOk' flag.
//
func WriteBurstUInt32(
	smiRequest chan<- protocol.Flit64,
	smiResponse <-chan protocol.Flit64,
	writeAddrIn uintptr,
	writeLengthIn uint16,
	writeDataChan <-chan uint32) bool {

	writeOk := true
	writeAddr := writeAddrIn & 0xFFFFFFFFFFFFFFFC
	writeLength := writeLengthIn & 0xFFFC
	burstOffset := uint16(writeAddr) & uint16(protocol.SmiMemBurstSize-1)
	burstSize := protocol.SmiMemBurstSize - burstOffset

	for writeLength != 0 {
		if writeLength < burstSize {
			burstSize = writeLength
		}
		writeOk = writeOk && writeSingleBurstUInt32(
			smiRequest, smiResponse, writeAddr, burstSize, writeDataChan)
		writeAddr += uintptr(burstSize)
		writeLength -= burstSize
		burstSize = protocol.SmiMemBurstSize
	}
	return writeOk
}

//
// WriteBurstUInt16 writes an incrementing burst of 16-bit unsigned data
// values to a word aligned address on the specified SMI memory endpoint, with
// the bottom address and burst length bits being ignored. The burst is
// automatically segmented to respect page boundaries and avoid blocking other
// transactions. In order to ensure optimum performance, the write data channel
// should be a buffered channel that already contains all the data to be
// written prior to invoking this function. The status of the write transaction
// is returned as the boolean 'writeOk' flag.
//
func WriteBurstUInt16(
	smiRequest chan<- protocol.Flit64,
	smiResponse <-chan protocol.Flit64,
	writeAddrIn uintptr,
	writeLengthIn uint16,
	writeDataChan <-chan uint16) bool {

	writeOk := true
	writeAddr := writeAddrIn & 0xFFFFFFFFFFFFFFFE
	writeLength := writeLengthIn & 0xFFFE
	burstOffset := uint16(writeAddr) & uint16(protocol.SmiMemBurstSize-1)
	burstSize := protocol.SmiMemBurstSize - burstOffset

	for writeLength != 0 {
		if writeLength < burstSize {
			burstSize = writeLength
		}
		writeOk = writeOk && writeSingleBurstUInt16(
			smiRequest, smiResponse, writeAddr, burstSize, writeDataChan)
		writeAddr += uintptr(burstSize)
		writeLength -= burstSize
		burstSize = protocol.SmiMemBurstSize
	}
	return writeOk
}

//
// WriteBurstUInt8 writes an incrementing burst of 8-bit unsigned data
// values to a byte aligned address on the specified SMI memory endpoint. The
// burst is automatically segmented to respect page boundaries and avoid
// blocking other transactions. In order to ensure optimum performance, the
// write data channel should be a buffered channel that already contains all
// the data to be written prior to invoking this function. The status of the
// write transaction is returned as the boolean 'writeOk' flag.
//
func WriteBurstUInt8(
	smiRequest chan<- protocol.Flit64,
	smiResponse <-chan protocol.Flit64,
	writeAddrIn uintptr,
	writeLengthIn uint16,
	writeDataChan <-chan uint8) bool {

	writeOk := true
	writeAddr := writeAddrIn
	writeLength := writeLengthIn
	burstOffset := uint16(writeAddr) & uint16(protocol.SmiMemBurstSize-1)
	burstSize := protocol.SmiMemBurstSize - burstOffset

	for writeLength != 0 {
		if writeLength < burstSize {
			burstSize = writeLength
		}
		writeOk = writeOk && writeSingleBurstUInt8(
			smiRequest, smiResponse, writeAddr, burstSize, writeDataChan)
		writeAddr += uintptr(burstSize)
		writeLength -= burstSize
		burstSize = protocol.SmiMemBurstSize
	}
	return writeOk
}

//
// readSingleBurstUInt64 is the core logic for reading a single incrementing
// burst of 64-bit unsigned data. Requires validated and word aligned input
// parameters.
//
func readSingleBurstUInt64(
	smiRequest chan<- protocol.Flit64,
	smiResponse <-chan protocol.Flit64,
	readAddr uintptr,
	readLength uint16,
	readDataChan chan<- uint64) bool {

	// Set up the request flit data.
	reqFlit1 := protocol.Flit64{
		Eofc: 0,
		Data: [8]uint8{
			uint8(protocol.SmiMemReadReq),
			uint8(0),
			uint8(0),
			uint8(0),
			uint8(readAddr),
			uint8(readAddr >> 8),
			uint8(readAddr >> 16),
			uint8(readAddr >> 24)}}

	reqFlit2 := protocol.Flit64{
		Eofc: 6,
		Data: [8]uint8{
			uint8(readAddr >> 32),
			uint8(readAddr >> 40),
			uint8(readAddr >> 48),
			uint8(readAddr >> 56),
			uint8(readLength),
			uint8(readLength >> 8),
			uint8(0),
			uint8(0)}}

	// Transmit the request flits.
	smiRequest <- reqFlit1
	smiRequest <- reqFlit2

	// Pull the response header flit from the response channel
	respFlit1 := <-smiResponse
	flitData := [4]uint8{
		respFlit1.Data[4],
		respFlit1.Data[5],
		respFlit1.Data[6],
		respFlit1.Data[7]}
	moreFlits := respFlit1.Eofc == 0

	var readOk bool
	if (respFlit1.Data[1] & 0x02) == uint8(0x00) {
		readOk = true
	} else {
		readOk = false
	}

	// Pull all the payload flits from the response channel and copy the data
	// to the output channel.
	for moreFlits {
		respFlitN := <-smiResponse
		readDataVal :=
			((uint64(flitData[0]) |
				(uint64(flitData[1]) << 8)) |
				((uint64(flitData[2]) << 16) |
					(uint64(flitData[3]) << 24))) |
				(((uint64(respFlitN.Data[0]) << 32) |
					(uint64(respFlitN.Data[1]) << 40)) |
					((uint64(respFlitN.Data[2]) << 48) |
						(uint64(respFlitN.Data[3]) << 56)))
		flitData = [4]uint8{
			respFlitN.Data[4],
			respFlitN.Data[5],
			respFlitN.Data[6],
			respFlitN.Data[7]}
		moreFlits = respFlitN.Eofc == 0
		readDataChan <- readDataVal
	}
	return readOk
}

//
// readSingleBurstUInt32 is the core logic for reading a single incrementing
// burst of 32-bit unsigned data. Requires validated and word aligned input
// parameters.
//
func readSingleBurstUInt32(
	smiRequest chan<- protocol.Flit64,
	smiResponse <-chan protocol.Flit64,
	readAddr uintptr,
	readLength uint16,
	readDataChan chan<- uint32) bool {

	// Set up the request flit data.
	reqFlit1 := protocol.Flit64{
		Eofc: 0,
		Data: [8]uint8{
			uint8(protocol.SmiMemReadReq),
			uint8(0),
			uint8(0),
			uint8(0),
			uint8(readAddr),
			uint8(readAddr >> 8),
			uint8(readAddr >> 16),
			uint8(readAddr >> 24)}}

	reqFlit2 := protocol.Flit64{
		Eofc: 6,
		Data: [8]uint8{
			uint8(readAddr >> 32),
			uint8(readAddr >> 40),
			uint8(readAddr >> 48),
			uint8(readAddr >> 56),
			uint8(readLength),
			uint8(readLength >> 8),
			uint8(0),
			uint8(0)}}

	// Transmit the request flits.
	smiRequest <- reqFlit1
	smiRequest <- reqFlit2

	// Pull the response header flit from the response channel
	respFlit1 := <-smiResponse
	flitData := [4]uint8{
		respFlit1.Data[4],
		respFlit1.Data[5],
		respFlit1.Data[6],
		respFlit1.Data[7]}
	readOffset := uint8(4)

	var readOk bool
	if (respFlit1.Data[1] & 0x02) == uint8(0x00) {
		readOk = true
	} else {
		readOk = false
	}

	// Pull all the payload flits from the response channel and copy the data
	// to the output channel.
	for i := (readLength >> 2); i != 0; i-- {
		var readData uint32
		if readOffset == 4 {
			readData =
				(uint32(flitData[0]) |
					(uint32(flitData[1]) << 8)) |
					((uint32(flitData[2]) << 16) |
						(uint32(flitData[3]) << 24))
			readOffset = 0
		} else {
			respFlitN := <-smiResponse
			flitData = [4]uint8{
				respFlitN.Data[4],
				respFlitN.Data[5],
				respFlitN.Data[6],
				respFlitN.Data[7]}
			readData =
				(uint32(respFlitN.Data[0]) |
					(uint32(respFlitN.Data[1]) << 8)) |
					((uint32(respFlitN.Data[2]) << 16) |
						(uint32(respFlitN.Data[3]) << 24))
			readOffset = 4
		}
		readDataChan <- readData
	}
	return readOk
}

//
// readSingleBurstUInt16 is the core logic for reading a single incrementing
// burst of 16-bit unsigned data. Requires validated and word aligned input
// parameters.
//
func readSingleBurstUInt16(
	smiRequest chan<- protocol.Flit64,
	smiResponse <-chan protocol.Flit64,
	readAddr uintptr,
	readLength uint16,
	readDataChan chan<- uint16) bool {

	// Set up the request flit data.
	reqFlit1 := protocol.Flit64{
		Eofc: 0,
		Data: [8]uint8{
			uint8(protocol.SmiMemReadReq),
			uint8(0),
			uint8(0),
			uint8(0),
			uint8(readAddr),
			uint8(readAddr >> 8),
			uint8(readAddr >> 16),
			uint8(readAddr >> 24)}}

	reqFlit2 := protocol.Flit64{
		Eofc: 6,
		Data: [8]uint8{
			uint8(readAddr >> 32),
			uint8(readAddr >> 40),
			uint8(readAddr >> 48),
			uint8(readAddr >> 56),
			uint8(readLength),
			uint8(readLength >> 8),
			uint8(0),
			uint8(0)}}

	// Transmit the request flits.
	smiRequest <- reqFlit1
	smiRequest <- reqFlit2

	// Pull the response header flit from the response channel
	respFlit1 := <-smiResponse
	flitData := [6]uint8{
		uint8(0),
		uint8(0),
		respFlit1.Data[4],
		respFlit1.Data[5],
		respFlit1.Data[6],
		respFlit1.Data[7]}
	readOffset := uint8(4)

	var readOk bool
	if (respFlit1.Data[1] & 0x02) == uint8(0x00) {
		readOk = true
	} else {
		readOk = false
	}

	// Pull all the payload flits from the response channel and copy the data
	// to the output channel.
	for i := (readLength >> 1); i != 0; i-- {
		var readData uint16
		switch readOffset {
		case 2:
			readData =
				(uint16(flitData[0])) |
					(uint16(flitData[1]) << 8)
			readOffset = 4
		case 4:
			readData =
				(uint16(flitData[2])) |
					(uint16(flitData[3]) << 8)
			readOffset = 6
		case 6:
			readData =
				(uint16(flitData[4])) |
					(uint16(flitData[5]) << 8)
			readOffset = 0
		default:
			respFlitN := <-smiResponse
			flitData = [6]uint8{
				respFlitN.Data[2],
				respFlitN.Data[3],
				respFlitN.Data[4],
				respFlitN.Data[5],
				respFlitN.Data[6],
				respFlitN.Data[7]}
			readData =
				(uint16(respFlitN.Data[0])) |
					(uint16(respFlitN.Data[1]) << 8)
			readOffset = 2
		}
		readDataChan <- readData
	}
	return readOk
}

//
// readSingleBurstUInt8 is the core logic for reading a single incrementing
// burst of 8-bit unsigned data. Requires validated input parameters.
//
func readSingleBurstUInt8(
	smiRequest chan<- protocol.Flit64,
	smiResponse <-chan protocol.Flit64,
	readAddr uintptr,
	readLength uint16,
	readDataChan chan<- uint8) bool {

	// Set up the request flit data.
	reqFlit1 := protocol.Flit64{
		Eofc: 0,
		Data: [8]uint8{
			uint8(protocol.SmiMemReadReq),
			uint8(0),
			uint8(0),
			uint8(0),
			uint8(readAddr),
			uint8(readAddr >> 8),
			uint8(readAddr >> 16),
			uint8(readAddr >> 24)}}

	reqFlit2 := protocol.Flit64{
		Eofc: 6,
		Data: [8]uint8{
			uint8(readAddr >> 32),
			uint8(readAddr >> 40),
			uint8(readAddr >> 48),
			uint8(readAddr >> 56),
			uint8(readLength),
			uint8(readLength >> 8),
			uint8(0),
			uint8(0)}}

	// Transmit the request flits.
	smiRequest <- reqFlit1
	smiRequest <- reqFlit2

	// Pull the response header flit from the response channel
	respFlit1 := <-smiResponse
	flitData := [7]uint8{
		uint8(0),
		uint8(0),
		uint8(0),
		respFlit1.Data[4],
		respFlit1.Data[5],
		respFlit1.Data[6],
		respFlit1.Data[7]}
	readOffset := uint8(4)

	var readOk bool
	if (respFlit1.Data[1] & 0x02) == uint8(0x00) {
		readOk = true
	} else {
		readOk = false
	}

	// Pull all the payload flits from the response channel and copy the data
	// to the output channel.
	for i := readLength; i != 0; i-- {
		var readData uint8
		switch readOffset {
		case 1:
			readData = flitData[0]
			readOffset = 2
		case 2:
			readData = flitData[1]
			readOffset = 3
		case 3:
			readData = flitData[2]
			readOffset = 4
		case 4:
			readData = flitData[3]
			readOffset = 5
		case 5:
			readData = flitData[4]
			readOffset = 6
		case 6:
			readData = flitData[5]
			readOffset = 7
		case 7:
			readData = flitData[6]
			readOffset = 0
		default:
			respFlitN := <-smiResponse
			flitData = [7]uint8{
				respFlitN.Data[1],
				respFlitN.Data[2],
				respFlitN.Data[3],
				respFlitN.Data[4],
				respFlitN.Data[5],
				respFlitN.Data[6],
				respFlitN.Data[7]}
			readData =
				respFlitN.Data[0]
			readOffset = 1
		}
		readDataChan <- readData
	}
	return readOk
}

//
// ReadPagedBurstUInt64 reads an incrementing burst of 64-bit unsigned data
// values from a word aligned address on the specified SMI memory endpoint,
// with the bottom three address and burst length bits being ignored. The burst
// must be contained within a single 4096 byte page and must not cross page
// boundaries. In order to ensure optimum performance, the read data channel
// should be a buffered channel that has sufficient free space to hold all the
// data to be transferred. The status of the read transaction is returned as
// the boolean 'readOk' flag.
//
func ReadPagedBurstUInt64(
	smiRequest chan<- protocol.Flit64,
	smiResponse <-chan protocol.Flit64,
	readAddrIn uintptr,
	readLengthIn uint16,
	readDataChan chan<- uint64) bool {

	// TODO: Page boundary validation.
	// Force word alignment.
	readAddr := readAddrIn & 0xFFFFFFFFFFFFFFF8
	readLength := readLengthIn & 0xFFF8

	return readSingleBurstUInt64(
		smiRequest, smiResponse, readAddr, readLength, readDataChan)
}

//
// ReadPagedBurstUInt32 reads an incrementing burst of 32-bit unsigned data
// values from a word aligned address on the specified SMI memory endpoint,
// with the bottom two address and burst length bits being ignored. The burst
// must be contained within a single 4096 byte page and must not cross page
// boundaries. In order to ensure optimum performance, the read data channel
// should be a buffered channel that has sufficient free space to hold all the
// data to be transferred. The status of the read transaction is returned as
// the boolean 'readOk' flag.
//
func ReadPagedBurstUInt32(
	smiRequest chan<- protocol.Flit64,
	smiResponse <-chan protocol.Flit64,
	readAddrIn uintptr,
	readLengthIn uint16,
	readDataChan chan<- uint32) bool {

	// TODO: Page boundary validation.
	// Force word alignment.
	readAddr := readAddrIn & 0xFFFFFFFFFFFFFFFC
	readLength := readLengthIn & 0xFFFC

	return readSingleBurstUInt32(
		smiRequest, smiResponse, readAddr, readLength, readDataChan)
}

//
// ReadPagedBurstUInt16 reads an incrementing burst of 16-bit unsigned data
// values from a word aligned address on the specified SMI memory endpoint,
// with the bottom address and burst length bits being ignored. The burst
// must be contained within a single 4096 byte page and must not cross page
// boundaries. In order to ensure optimum performance, the read data channel
// should be a buffered channel that has sufficient free space to hold all the
// data to be transferred. The status of the read transaction is returned as
// the boolean 'readOk' flag.
//
func ReadPagedBurstUInt16(
	smiRequest chan<- protocol.Flit64,
	smiResponse <-chan protocol.Flit64,
	readAddrIn uintptr,
	readLengthIn uint16,
	readDataChan chan<- uint16) bool {

	// TODO: Page boundary validation.
	// Force word alignment.
	readAddr := readAddrIn & 0xFFFFFFFFFFFFFFFE
	readLength := readLengthIn & 0xFFFE

	return readSingleBurstUInt16(
		smiRequest, smiResponse, readAddr, readLength, readDataChan)
}

//
// ReadPagedBurstUInt8 reads an incrementing burst of 8-bit unsigned data
// values from a byte aligned address on the specified SMI memory endpoint.
// The burst must be contained within a single 4096 byte page and must not
// cross page boundaries. In order to ensure optimum performance, the read
// data channel should be a buffered channel that has sufficient free space to
// hold all the data to be transferred. The status of the read transaction is
// returned as the boolean 'readOk' flag.
//
func ReadPagedBurstUInt8(
	smiRequest chan<- protocol.Flit64,
	smiResponse <-chan protocol.Flit64,
	readAddrIn uintptr,
	readLengthIn uint16,
	readDataChan chan<- uint8) bool {

	// TODO: Page boundary validation.

	return readSingleBurstUInt8(
		smiRequest, smiResponse, readAddrIn, readLengthIn, readDataChan)
}

//
// ReadBurstUInt64 reads an incrementing burst of 64-bit unsigned data
// values from a word aligned address on the specified SMI memory endpoint,
// with the bottom three address and burst length bits being ignored. The burst
// is automatically segmented to respect page boundaries and avoid blocking
// other transactions. In order to ensure optimum performance, the read data
// channel should be a buffered channel that has sufficient free space to
// hold all the data to be transferred. The status of the read transaction
// is returned as the boolean 'readOk' flag.
//
func ReadBurstUInt64(
	smiRequest chan<- protocol.Flit64,
	smiResponse <-chan protocol.Flit64,
	readAddrIn uintptr,
	readLengthIn uint16,
	readDataChan <-chan uint64) bool {

	readOk := true
	readAddr := readAddrIn & 0xFFFFFFFFFFFFFFF8
	readLength := readLengthIn & 0xFFF8
	burstOffset := uint16(readAddr) & uint16(protocol.SmiMemBurstSize-1)
	burstSize := protocol.SmiMemBurstSize - burstOffset

	for readLength != 0 {
		if readLength < burstSize {
			burstSize = readLength
		}
		readOk = readOk && readSingleBurstUInt64(
			smiRequest, smiResponse, readAddr, burstSize, readDataChan)
		readAddr += uintptr(burstSize)
		readLength -= burstSize
		burstSize = protocol.SmiMemBurstSize
	}
	return readOk
}

//
// ReadBurstUInt32 reads an incrementing burst of 32-bit unsigned data
// values from a word aligned address on the specified SMI memory endpoint,
// with the bottom two address and burst length bits being ignored. The burst
// is automatically segmented to respect page boundaries and avoid blocking
// other transactions. In order to ensure optimum performance, the read data
// channel should be a buffered channel that has sufficient free space to
// hold all the data to be transferred. The status of the read transaction
// is returned as the boolean 'readOk' flag.
//
func ReadBurstUInt32(
	smiRequest chan<- protocol.Flit64,
	smiResponse <-chan protocol.Flit64,
	readAddrIn uintptr,
	readLengthIn uint16,
	readDataChan <-chan uint32) bool {

	readOk := true
	readAddr := readAddrIn & 0xFFFFFFFFFFFFFFFC
	readLength := readLengthIn & 0xFFFC
	burstOffset := uint16(readAddr) & uint16(protocol.SmiMemBurstSize-1)
	burstSize := protocol.SmiMemBurstSize - burstOffset

	for readLength != 0 {
		if readLength < burstSize {
			burstSize = readLength
		}
		readOk = readOk && readSingleBurstUInt32(
			smiRequest, smiResponse, readAddr, burstSize, readDataChan)
		readAddr += uintptr(burstSize)
		readLength -= burstSize
		burstSize = protocol.SmiMemBurstSize
	}
	return readOk
}

//
// ReadBurstUInt16 reads an incrementing burst of 16-bit unsigned data
// values from a word aligned address on the specified SMI memory endpoint,
// with the bottom address and burst length bits being ignored. The burst
// is automatically segmented to respect page boundaries and avoid blocking
// other transactions. In order to ensure optimum performance, the read data
// channel should be a buffered channel that has sufficient free space to
// hold all the data to be transferred. The status of the read transaction
// is returned as the boolean 'readOk' flag.
//
func ReadBurstUInt16(
	smiRequest chan<- protocol.Flit64,
	smiResponse <-chan protocol.Flit64,
	readAddrIn uintptr,
	readLengthIn uint16,
	readDataChan <-chan uint16) bool {

	readOk := true
	readAddr := readAddrIn & 0xFFFFFFFFFFFFFFFE
	readLength := readLengthIn & 0xFFFE
	burstOffset := uint16(readAddr) & uint16(protocol.SmiMemBurstSize-1)
	burstSize := protocol.SmiMemBurstSize - burstOffset

	for readLength != 0 {
		if readLength < burstSize {
			burstSize = readLength
		}
		readOk = readOk && readSingleBurstUInt16(
			smiRequest, smiResponse, readAddr, burstSize, readDataChan)
		readAddr += uintptr(burstSize)
		readLength -= burstSize
		burstSize = protocol.SmiMemBurstSize
	}
	return readOk
}

//
// ReadBurstUInt8 reads an incrementing burst of 8-bit unsigned data values
// from a byte aligned address on the specified SMI memory endpoint. The burst
// is automatically segmented to respect page boundaries and avoid blocking
// other transactions. In order to ensure optimum performance, the read data
// channel should be a buffered channel that has sufficient free space to
// hold all the data to be transferred. The status of the read transaction
// is returned as the boolean 'readOk' flag.
//
func ReadBurstUInt8(
	smiRequest chan<- protocol.Flit64,
	smiResponse <-chan protocol.Flit64,
	readAddrIn uintptr,
	readLengthIn uint16,
	readDataChan <-chan uint8) bool {

	readOk := true
	readAddr := readAddrIn
	readLength := readLengthIn
	burstOffset := uint16(readAddr) & uint16(protocol.SmiMemBurstSize-1)
	burstSize := protocol.SmiMemBurstSize - burstOffset

	for readLength != 0 {
		if readLength < burstSize {
			burstSize = readLength
		}
		readOk = readOk && readSingleBurstUInt8(
			smiRequest, smiResponse, readAddr, burstSize, readDataChan)
		readAddr += uintptr(burstSize)
		readLength -= burstSize
		burstSize = protocol.SmiMemBurstSize
	}
	return readOk
}