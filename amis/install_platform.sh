#!/bin/bash
set -x
VERSION=v1.3.0-pre
mkdir -p /tmp/aws-fpga
cd /tmp/aws-fpga
aws s3 cp --quiet s3://nerabus/platform/aws-fpga-preview-$VERSION.zip .
unzip aws-fpga-preview-$VERSION.zip
#cd aws-fpga-preview-master
export XILINX_SDX=/opt/Xilinx/SDx/2017.1.op/
export AWS_FPGA_REPO_DIR="$PWD"
export SDK_DIR="$PWD/sdk"

source $XILINX_SDX/settings.sh
cd sdk
source sdk_install.sh
cd SDAccel
# This isn't correctly generated in sdaccel_setup.sh
make ec2=1 -C userspace/src
source sdaccel_setup.sh
cd ../..
cp -R ./sdk/SDAccel/aws_platform/xilinx_aws-vu9p-f1_4ddr-xpr-2pr_4_0/ "$XILINX_SDX/platforms"
rm -rf /tmp/aws-fpga
