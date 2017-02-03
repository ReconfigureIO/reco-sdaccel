package xcl

// #cgo CFLAGS: -std=gnu99
// #cgo LDFLAGS: -lxilinxopencl -llmx6.0
// #include "xcl.h"
import "C"

import (
	"unsafe"
)

type World C.xcl_world

type Program struct {
	world   *World
	program C.cl_program
}

type Kernel struct {
	program *Program
	kernel  C.cl_kernel
}

type Memory struct {
	world *World
	mem   C.cl_mem
}

const (
	ReadOnly = iota
	WriteOnly
	ReadWrite
)

func NewWorld() World {
	return World(C.xcl_world_single())
}

func (world *World) Release() {
	C.xcl_release_world(C.xcl_world(*world))
}

func (world *World) Import(program string) *Program {
	p := C.xcl_import_binary(C.xcl_world(*world), C.CString(program))
	return &Program{world, p}
}

func (program *Program) GetKernel(kernelName string) *Kernel {
	k := C.xcl_get_kernel(C.cl_program(program.program), C.CString(kernelName))
	return &Kernel{program, k}
}

func (kernel *Kernel) Release() {
	C.clReleaseKernel(kernel.kernel)
}

func (world *World) Malloc(flags uint, size uint) *Memory {
	var f C.cl_mem_flags
	switch flags {
	case ReadOnly:
		f = C.CL_MEM_READ_ONLY
	case WriteOnly:
		f = C.CL_MEM_WRITE_ONLY
	case ReadWrite:
		f = C.CL_MEM_READ_WRITE
	}
	m := C.xcl_malloc(C.xcl_world(*world), f, C.size_t(size))
	return &Memory{world, m}
}

func (mem *Memory) Free() {
	C.clReleaseMemObject(mem.mem)
}

func (mem *Memory) Write(bytes []byte) {
	p := C.CBytes(bytes)
	C.xcl_memcpy_to_device(C.xcl_world(*mem.world), mem.mem, p, C.size_t(len(bytes)))
}

func (kernel *Kernel) SetMemoryArg(index uint, mem *Memory) {
	C.clSetKernelArg(kernel.kernel, C.cl_uint(index), C.sizeof_cl_mem, unsafe.Pointer(&mem.mem))
}

func (kernel *Kernel) SetArg(index uint, val uint32) {
	C.clSetKernelArg(kernel.kernel, C.cl_uint(index), C.size_t(unsafe.Sizeof(&val)), unsafe.Pointer(&val))
}

func (kernel *Kernel) Run(x, y, z uint) {
	C.xcl_run_kernel3d(C.xcl_world(*kernel.program.world), kernel.kernel, C.size_t(x), C.size_t(y), C.size_t(z))
}
