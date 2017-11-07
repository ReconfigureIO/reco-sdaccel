//
// (c) 2017 ReconfigureIO
//
// <COPYRIGHT TERMS>
//

//
// Package smi/protocol provides low level primitives and data types for working
// with the SMI protocol.
//
package protocol

//
// Constants specifying the supported SMI frame type bytes.
//
const (
	SmiMemWriteReq  = 0x01
	SmiMemWriteResp = 0xFE
	SmiMemReadReq   = 0x02
	SmiMemReadResp  = 0xFD
)

//
// Specify the standard burst fragment size.
//
const SmiMemBurstSize = 256

//
// Specify the number of in-flight transactions supported by each
// arbitrated SMI port.
//
const SmiMemInFlightLimit = 4

//
// Type Flit64 specifies an SMI flit format with a 64-bit datapath.
//
type Flit64 struct {
	Data [8]uint8
	Eofc uint8
}
