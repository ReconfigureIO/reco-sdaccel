# File Hierarchy

What should the format of the files be for our users to send us Go code?

## Problem

We need to build _kernels_ separately from _cmds_.

## Existing Conventions

Go seems to use the "cmd" convention, under a Go project. A top level
"cmd" directory exists, where subdirectories are the executable to
build, with each of these having a "main.go".

Example from our goblin project:

```
$ tree cmd
cmd
`-- goblin
    `-- main.go

1 directory, 1 file
```

This lets end users run `go install github.com/ReconfigureIO/goblin/cmd/goblin`
and have a working `goblin` binary installed.

## Kernels

We could have a top level "kernel" folder, where subdirectories are
structured the same way as "cmd". For now, our build framework can
make the decision to build these as part of the artifact process, and
generate a corresponding xclbin file.

For example:

```
$ tree kernel
kernel
`-- addition
    `-- main.go

1 directory, 1 file
```

Building would resul in a file `addition.hw_emu.xilinx_adm-pcie-ku3_2ddr-xpr_3_2.xclbin`
