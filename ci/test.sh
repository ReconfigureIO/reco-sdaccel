#!/bin/bash
set -ex

# Do as much local testing as we can locally

cd "$1"
sdaccel-builder test-go
docker run --rm -i -v "$PWD":/mnt verilator -Wall --lint-only -I".reco-work/sdaccel/verilog/includes" .reco-work/sdaccel/verilog/main.v --top-module sda_kernel_wrapper_gmem --report-unoptflat -Wno-UNDRIVEN
docker run --rm -i -v "$PWD":/mnt sdaccel-builder:latest /opt/sdaccel-builder/sdaccel-builder graph
test -f main-graph.pdf
