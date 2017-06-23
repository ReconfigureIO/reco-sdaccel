#!/bin/bash
set -ex
mkdir -p /tmp/aws-fpga
cd /tmp/aws-fpga
aws s3 cp s3://nerabus/platform/aws-fpga-preview-master.zip .
unzip aws-fpga-preview-master.zip
cd aws-fpga-preview-master
export XILINX_SDX=/opt/Xilinx/SDx/2017.1.op/
export AWS_FPGA_REPO_DIR="$PWD"
export SDK_DIR="$PWD/sdk"

# workaround their usage of module
module() { true; }

source sdk/SDAccel/sdaccel_setup.sh -d
cp -R ./sdk/SDAccel/aws_platform/xilinx_aws-vu9p-f1_4ddr-xpr-2pr_4_0/ "$XILINX_SDX/platforms"
rm -rf /tmp/aws-fpga
