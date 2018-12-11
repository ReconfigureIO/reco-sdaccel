#!/bin/bash
set -eux

VERSION=1.4.5

mkdir -p /tmp/aws-fpga
cd /tmp/aws-fpga

wget -q -O aws-fpga-$VERSION.zip https://github.com/aws/aws-fpga/archive/v$VERSION.zip
unzip -q aws-fpga-$VERSION.zip
cd aws-fpga-$VERSION

export XILINX_SDX=/opt/Xilinx/SDx/2018.2.op2258646
export AWS_FPGA_REPO_DIR="$PWD"
export SDK_DIR="$PWD/sdk"

{
    # Beware, must disable `set -eu` for running code from elsewhere...
    set +eu

    source $XILINX_SDX/settings64.sh

    cd sdk
    source sdk_install.sh

    cd ..
    # This isn't correctly generated in sdaccel_setup.sh
    PATH=/usr/bin:$PATH source sdaccel_setup.sh

    set -eu
}

cp -R SDAccel/aws_platform/xilinx_aws-vu9p-f1-04261818_dynamic_5_0/ "$XILINX_SDX/platforms"

rm -rf /tmp/aws-fpga
