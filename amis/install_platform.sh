#!/bin/bash
set -x
VERSION=0.3.0
mkdir -p /tmp/aws-fpga
cd /tmp/aws-fpga
aws s3 cp --quiet s3://nerabus/platform/aws-fpga-preview-$VERSION.zip .
unzip aws-fpga-preview-$VERSION.zip
cd aws-fpga-preview-$VERSION
export XILINX_SDX=/opt/Xilinx/SDx/2017.1.op
export AWS_FPGA_REPO_DIR="$PWD"
export SDK_DIR="$PWD/sdk"

source $XILINX_SDX/settings64.sh
bash -c "set -x && cd sdk && source sdk_install.sh && cd - && PATH=/usr/bin:$PATH make ec2=1 -C sdk/SDAccel/userspace/src && PATH=/usr/bin:$PATH make ec2=1 -C sdk/SDAccel/tools/awssak && source sdaccel_setup.sh"
cp sdk/SDAccel/tools/create_sdaccel_afi.sh "$XILINX_SDX/bin"
cp -R ./sdk/SDAccel/aws_platform/xilinx_aws-vu9p-f1_4ddr-xpr-2pr_4_0/ "$XILINX_SDX/platforms"
rm -rf /tmp/aws-fpga
