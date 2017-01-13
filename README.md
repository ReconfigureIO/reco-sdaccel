# reco-sdaccel

## Installation

## Docker

## Using

### Build

```
reco-sdaccel build
```

This will take Go code at main.go, and bundle it into the sdaccel framework. It will include the eTeak specific Go files, but all other Go code will need to be on your $GOPATH already.

The resulting code will be suitable for image generation or simulation.

The results of the build will be available under .reco-work/sdaccel in the working directory.


### Simulate

```
reco-sdaccel simulate path/to/host/code.go
```

This will take the previously built Go code from the build stage, and simulate it.

The simulation executable of the host side code will be built & executed while linking to the simulation versions of libraries suitable for running on x86 systems.


### Clean

This will remove everything under .reco-work

## Jarvice

Published versions of this is available on Jarvice. You can find the
`reco-sdaccel` tool available under `/data/reco/$VERSION`, with a set of
workflows in `/data/workflows/$VERSION`.
