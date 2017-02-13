# sdaccel-builder

## Installation

## Using

### Build

```
sdaccel-builder build
```

This will take Go code at main.go, and bundle it into the sdaccel framework. It will include the eTeak specific Go files, but all other Go code will need to be on your $GOPATH already.

The resulting code will be suitable for image generation or simulation.

The results of the build will be available under .reco-work/sdaccel in the working directory.


### Simulate

```
sdaccel-builder simulate path/to/host/code.go
```

This will take the previously built Go code from the build stage, and simulate it.

The simulation executable of the host side code will be built & executed while linking to the simulation versions of libraries suitable for running on x86 systems.


### Clean

This will remove everything under .reco-work

## Jarvice

Published versions of this is available on Jarvice. You can find the
`sdaccel-builder` tool available under `/data/reco/$VERSION`, with a set of
workflows in `/data/workflows/$VERSION`.

## Architecture

### sdaccel-builder

Command line tools using eTeak & Vivado to build & simulate Go code.

### workflows

Scripts and workflors to be run on top of the Jarvice platform.

### jarvice

Command line tools for deploying and managing workflows on the Jarvice platform.
