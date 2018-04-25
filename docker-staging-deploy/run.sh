#!/bin/bash
set -ex
aws s3 cp --quiet "$DIST_URL" /tmp/bundle.zip --region us-east-1
unzip /tmp/bundle.zip -d "$PWD"

fpga-clear-local-image -S 0
fpga-load-local-image -S 0 -I agfi-09c2a21805a8b9257
fpga-clear-local-image -S 0

fpga-describe-local-image -S 0 -H –R
fpga-load-local-image -S 0 -I "$AGFI"
fpga-describe-local-image -S 0 -H –R

export XCL_BINDIR="$PWD/.reco-work/sdaccel/dist/xclbin"

# Set the default RTE
export RTE="${XILINX_SDX%.op}.rte"

# Check if we have a 1DDR, and load that RTE instead
if compgen -G "$XCL_BINDIR/*-f1_1ddr-xpr-2pr_4_0.xclbin" > /dev/null; then
    export RTE="${XILINX_SDX%.op}.rte.1ddr"
fi

# for some reason the .rte only accepts 1ddr formats, so rename them
for file in "$XCL_BINDIR"/*.xclbin ; do mv "$file" "${file//f1_1ddr/f1_4ddr}"; done

# Setup environment
source "${XILINX_SDX}/settings64.sh"
source "${RTE}/setup.sh"
export PATH=$PWD/.reco-work/sdaccel/dist/:$PATH

# This is in case they have anything in dist we want a relative path to
cd "$PWD/.reco-work/sdaccel/dist"
bash -c "$CMD"
