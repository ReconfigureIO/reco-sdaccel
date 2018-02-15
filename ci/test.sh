#!/bin/bash
set -ex

# Do as much local testing as we can locally

cd "$1"

if [ -e "glide.yaml" ]
then
    glide install
fi

INPUT="go"
if [ -e "main.v" ]
then
    INPUT="verilog"
fi



export INPUT=$INPUT

sdaccel-builder test-go

EXTRA=""
if [ -e ".reco-work/sdaccel/verilog/includes/teak_action_wrapper.v" ]
then
    EXTRA=".reco-work/sdaccel/verilog/includes/teak_action_wrapper.v"
fi

verilator -Wall --lint-only -I".reco-work/sdaccel/verilog/includes" .reco-work/sdaccel/verilog/main.v $EXTRA --top-module sda_kernel_wrapper_gmem --report-unoptflat -Wno-UNUSED -Wno-UNDRIVEN -Wno-REDEFMACRO -Wno-DECLFILENAME
#docker run --rm -i -v "$PWD":/mnt sdaccel-builder:latest /opt/sdaccel-builder/sdaccel-builder graph
#test -f main-graph.pdf
