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

package aximaster

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

type ReadData struct {
        Id   bool
        Data uint32
        Resp [2]bool
        Last bool
        User bool
}

type WriteData struct {
        Data uint32
        Strb [4]bool
        Last bool
        User bool
}

type Response struct {
        Id   bool
        Resp [2]bool
        User bool
}
