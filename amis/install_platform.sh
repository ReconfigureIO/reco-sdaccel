#!/bin/bash
set -x
VERSION=1.3.3
mkdir -p /tmp/aws-fpga
cd /tmp/aws-fpga
aws s3 cp --quiet s3://nerabus/platform/aws-fpga-$VERSION.zip .
unzip aws-fpga-$VERSION.zip
cd aws-fpga-$VERSION
export XILINX_SDX=/opt/Xilinx/SDx/2017.1.op
export AWS_FPGA_REPO_DIR="$PWD"
export SDK_DIR="$PWD/sdk"

source $XILINX_SDX/settings64.sh
cd sdk
source sdk_install.sh

cd ..
# This isn't correctly generated in sdaccel_setup.sh
PATH=/usr/bin:$PATH source sdaccel_setup.sh
cp SDAccel/tools/create_sdaccel_afi.sh "$XILINX_SDX/bin"
cp -R SDAccel/aws_platform/xilinx_aws-vu9p-f1_4ddr-xpr-2pr_4_0/ "$XILINX_SDX/platforms"
rm -rf /tmp/aws-fpga
