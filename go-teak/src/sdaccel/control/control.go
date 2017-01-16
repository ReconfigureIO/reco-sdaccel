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
