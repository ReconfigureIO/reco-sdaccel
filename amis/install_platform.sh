#!/bin/bash
set -x
VERSION=1.4.5
mkdir -p /tmp/aws-fpga
cd /tmp/aws-fpga
wget -O aws-fpga-$VERSION.zip https://github.com/aws/aws-fpga/archive/v$VERSION.zip
unzip aws-fpga-$VERSION.zip
cd aws-fpga-$VERSION
export XILINX_SDX=/opt/Xilinx/SDx/2017.4.op
export AWS_FPGA_REPO_DIR="$PWD"
export SDK_DIR="$PWD/sdk"

source $XILINX_SDX/settings64.sh
cd sdk
source sdk_install.sh

cd ..
# This isn't correctly generated in sdaccel_setup.sh
PATH=/usr/bin:$PATH source sdaccel_setup.sh
cp -R SDAccel/aws_platform/xilinx_aws-vu9p-f1_4ddr-xpr-2pr_4_0/ "$XILINX_SDX/platforms"
cp -R SDAccel/aws_platform/xilinx_aws-vu9p-f1_1ddr-xpr-2pr_4_0/ "$XILINX_SDX/platforms"

# We depend on the bare 2017.4 rte, but the ami splits it out into 1ddr and 4ddr versions.
# Symlink to keep backwards compatability
ln -s /opt/Xilinx/SDx/2017.4.rte.4ddr /opt/Xilinx/SDx/2017.4.rte
rm -rf /tmp/aws-fpga
