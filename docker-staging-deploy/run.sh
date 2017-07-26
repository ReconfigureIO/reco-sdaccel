#!/bin/bash
aws s3 cp "$DIST_URL" /tmp/bundle.zip
unzip /tmp/bundle.zip -d "$PWD"

source "$XILINX_SDX"/settings64.sh
export PATH=$PWD/.reco-work/sdaccel/dist/:$PATH
export XCL_EMULATION_MODE=hw XCL_BINDIR="$PWD/.reco-work/sdaccel/dist/xclbin"
bash -c "$CMD"
