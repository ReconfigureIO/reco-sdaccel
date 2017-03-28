#!/bin/bash
set -e
export PATH=$XILINX_SDX/bin:$XILINX_VIVADO/bin:$PATH

aws s3 cp "$INPUT_URL" - | tar zxf -
/opt/sdaccel-builder/sdaccel-builder build
