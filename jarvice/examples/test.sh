#!/bin/bash
export DIR
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

cd ~
git clone https://github.com/Xilinx/SDAccel_Examples.git examples

cd examples/getting_started/basic/hello

source /opt/Xilinx/SDx/2016.3/settings64.sh
export LC_ALL=C
export LM_LICENSE_FILE=2100@l3976.local.nimbix.net

echo "build hw sim"
time make TARGETS=hw_emu all

echo "run hw sim"
time make TARGETS=hw_emu check

echo "build hw"
time make TARGETS=hw all

echo "copy to output to $DIR"
cp hello xclbin/krnl_hello.hw.xilinx_xil-accel-rd-ku115_4ddr-xpr_3_2.xclbin "$DIR"
