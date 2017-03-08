package xcl

// #cgo CFLAGS: -std=gnu99
// #cgo LDFLAGS: -lxilinxopencl -llmx6.0
// #include "xcl.h"
// #include <stdlib.h>
//
// cl_int setMemArg(cl_kernel kernel, cl_uint arg_index, cl_mem m) {
//    return clSetKernelArg(kernel, arg_index, sizeof(cl_mem), &m);
// }
//
import "C"

import (
	"errors"
	"fmt"
	"io"
	"log"
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
	size  uint
	mem   C.cl_mem
}

type MemoryWriter struct {
	left   uint
	offset uint
	memory *Memory
}

type MemoryReader struct {
	left   uint
	offset uint
	memory *Memory
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
	return &Memory{world, size, m}
}

func (mem *Memory) Free() {
	C.clReleaseMemObject(mem.mem)
}

func (mem *Memory) Writer() *MemoryWriter {
	return &MemoryWriter{mem.size, 0, mem}
}

func ErrorCode(code C.cl_int) error {
	switch code {
	case C.CL_SUCCESS:
		return nil
	case C.CL_INVALID_COMMAND_QUEUE:
		return errors.New("CL_INVALID_COMMAND_QUEUE")
	case C.CL_INVALID_CONTEXT:
		return errors.New("CL_INVALID_CONTEXT")
	case C.CL_INVALID_MEM_OBJECT:
		return errors.New("CL_INVALID_MEM_OBJECT")
	case C.CL_INVALID_VALUE:
		return errors.New("CL_INVALID_VALUE")
	case C.CL_INVALID_EVENT_WAIT_LIST:
		return errors.New("CL_INVALID_EVENT_WAIT_LIST")
	case C.CL_MISALIGNED_SUB_BUFFER_OFFSET:
		return errors.New("CL_MISALIGNED_SUB_BUFFER_OFFSET")
	case C.CL_EXEC_STATUS_ERROR_FOR_EVENTS_IN_WAIT_LIST:
		return errors.New("CL_EXEC_STATUS_ERROR_FOR_EVENTS_IN_WAIT_LIST")
	case C.CL_MEM_OBJECT_ALLOCATION_FAILURE:
		return errors.New("CL_MEM_OBJECT_ALLOCATION_FAILURE")
	case C.CL_INVALID_OPERATION:
		return errors.New("CL_INVALID_OPERATION")
	case C.CL_OUT_OF_RESOURCES:
		return errors.New("CL_OUT_OF_RESOURCES")
	case C.CL_OUT_OF_HOST_MEMORY:
		return errors.New("CL_OUT_OF_HOST_MEMORY")
	default:
		return fmt.Errorf("Unknown error code %d", code)
	}
}

func (writer *MemoryWriter) Write(bytes []byte) (n int, err error) {
	if writer.left == 0 {
		return 0, io.ErrShortWrite
	}
	toWrite := uint(len(bytes))
	if toWrite > writer.left {
		toWrite = writer.left
	}
	// I think we can make this zero copy like in Read
	p := C.CBytes(bytes[0:toWrite])

	ret := C.clEnqueueWriteBuffer(
		C.xcl_world(*writer.memory.world).command_queue,
		writer.memory.mem,
		C.CL_TRUE,
		C.size_t(writer.offset), C.size_t(toWrite), p, C.cl_uint(0), nil, nil)

	err = ErrorCode(ret)
	C.free(p)
	writer.left -= toWrite
	writer.offset += toWrite
	return int(toWrite), err
}

func (mem *Memory) Write(bytes []byte) {
	_, err := mem.Writer().Write(bytes)
	if err != nil {
		log.Fatalf("Unhandled error in Write %v. Use the Writer interface to handle this\n", err)
	}
}

func (mem *Memory) Reader() *MemoryReader {
	return &MemoryReader{mem.size, 0, mem}
}

func (reader *MemoryReader) Read(bytes []byte) (n int, err error) {
	if reader.left == 0 {
		return 0, io.EOF
	}
	toRead := uint(len(bytes))
	if toRead > reader.left {
		toRead = reader.left
	}

	p := unsafe.Pointer(&bytes[0])

	ret := C.clEnqueueReadBuffer(
		C.xcl_world(*reader.memory.world).command_queue,
		reader.memory.mem,
		C.CL_TRUE,
		C.size_t(reader.offset), C.size_t(toRead), p, C.cl_uint(0), nil, nil)

	err = ErrorCode(ret)
	reader.left -= toRead
	reader.offset += toRead
	return int(toRead), err
}

func (mem *Memory) Read(bytes []byte) {
	_, err := mem.Reader().Read(bytes)
	if err != nil && err != io.EOF {
		log.Fatalf("Unhandled error in Read %v. Use the Reader interface to handle this\n", err)
	}
}

func (kernel *Kernel) SetMemoryArg(index uint, mem *Memory) {
	C.setMemArg(kernel.kernel, C.cl_uint(index), mem.mem)
}

func (kernel *Kernel) SetArg(index uint, val uint32) {
	C.clSetKernelArg(kernel.kernel, C.cl_uint(index), C.size_t(unsafe.Sizeof(&val)), unsafe.Pointer(&val))
}

func (kernel *Kernel) Run(x, y, z uint) {
	C.xcl_run_kernel3d(C.xcl_world(*kernel.program.world), kernel.kernel, C.size_t(x), C.size_t(y), C.size_t(z))
}
