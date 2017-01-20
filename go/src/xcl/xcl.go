package xcl

// #include "xcl.h"
import "C"

type World C.xcl_world
type Program C.cl_program
type Kernel C.cl_kernel

func NewWorld() World {
	return World(C.xcl_world_single())
}

func (world *World) Release() {
	C.xcl_release_world(C.xcl_world(world))
}

func (world *World) Import(program string) *Program {
	return Program(C.xcl_import_binary(C.xcl_world(world)))
}
