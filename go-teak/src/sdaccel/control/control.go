//
// (c) 2017 ReconfigureIO
//
// <COPYRIGHT TERMS>
//

//
// AXI slave interface for control registers. This defines the data types to be
// used on the AXI write address (AXI_AW), write data (AXI_W), write status
// (AXI_B), read address (AXI_RA) and read data (AXI_R) channels. Note that in
// order to ensure the correct ordering of AXI channel requests and responses,
// the AXI slave interface channels must only ever be accessed sequentially
// from within the same goroutine.
//

package control

type Addr struct {
        Addr  uint32
        Cache [4]bool
        Prot  [3]bool
}

type Resp [2]bool

type ReadData struct {
        Data uint32
        Resp Resp
}

type WriteData struct {
        Data uint32
        Strb [4]bool
}
