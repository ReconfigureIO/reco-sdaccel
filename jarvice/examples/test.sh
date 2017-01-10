#!/bin/bash
cd ~
git clone https://github.com/Xilinx/SDAccel_Examples.git examples

cd examples/getting_started/basic/hello

source /opt/Xilinx/SDx/2016.3/settings64.sh

make TARGETS=hw_emu check
