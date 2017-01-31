# jarvice

## Installation

## Using

Most commands will require you to be in a project.

## Project layout

Each project should have top-level `main.go` file. Commands should be
located under a `cmd` subdirectory. For instance, in the project
below, we would have a `test-noop` command.

```
$ tree .
.
|-- cmd
|   `-- test-noop
|       `-- main.go
`-- main.go

2 directories, 2 files
```


### Test

```
jarvice test <command>
```

This will take package your project, upload it to a development
server, compile it for hardware emulation, and run the command
specified, using hardware emulation for the required kernel.

After running, the output of compiling and running will be output, and
the exit code will match the exit code on the server.

### Build

```
jarvice build
```

This will take package your project, upload it to a development
server, compile all your commands, and compiler your kernel for
hardware execution.

After running, the output of compiling and running will be output, and
the exit code will match the exit code on the server.

If this succeeds, the output on stdout will be the identifier of a build.

### Builds

```
jarvice builds
```

This will output a table of all builds.

### Run

```
run <build identifier> <command> <args>
```

Take a previously successful build, and run the specified command on a
server with an FPGA.

After running, the output of the command will be output, and
the exit code will match the exit code on the server.
