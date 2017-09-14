#!/bin/bash
set -ex
aws s3 cp "$DIST_URL" /tmp/bundle.zip --region us-east-1
unzip /tmp/bundle.zip -d "$PWD"

fpga-clear-local-image -S 0
fpga-load-local-image -S 0 -I agfi-09c2a21805a8b9257
fpga-clear-local-image -S 0
fpga-describe-local-image -S 0 -H –R
fpga-load-local-image -S 0 -I "$AGFI"
fpga-describe-local-image -S 0 -H –R


source "${XILINX_SDX}/settings64.sh"
source "${XILINX_SDX%.op}.rte/setup.sh"
export PATH=$PWD/.reco-work/sdaccel/dist/:$PATH
export XCL_BINDIR="$PWD/.reco-work/sdaccel/dist/xclbin"
cd "$PWD/.reco-work/sdaccel/dist"
bash -c "$CMD"
