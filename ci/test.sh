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

sdaccel-builder lint

#docker run --rm -i -v "$PWD":/mnt sdaccel-builder:latest /opt/sdaccel-builder/sdaccel-builder graph
#test -f main-graph.pdf
