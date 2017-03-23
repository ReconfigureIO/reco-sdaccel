#!/bin/sh

# 
# Vivado(TM)
# runme.sh: a Vivado-generated Runs Script for UNIX
# Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
# 

if [ -z "$PATH" ]; then
  PATH=/home/joshbohde/xilinix/SDx/2016.3/SDK/bin:/home/joshbohde/xilinix/SDx/2016.3/Vivado/ids_lite/ISE/bin/lin64:/home/joshbohde/xilinix/SDx/2016.3/Vivado/bin
else
  PATH=/home/joshbohde/xilinix/SDx/2016.3/SDK/bin:/home/joshbohde/xilinix/SDx/2016.3/Vivado/ids_lite/ISE/bin/lin64:/home/joshbohde/xilinix/SDx/2016.3/Vivado/bin:$PATH
fi
export PATH

if [ -z "$LD_LIBRARY_PATH" ]; then
  LD_LIBRARY_PATH=/home/joshbohde/xilinix/SDx/2016.3/Vivado/ids_lite/ISE/lib/lin64
else
  LD_LIBRARY_PATH=/home/joshbohde/xilinix/SDx/2016.3/Vivado/ids_lite/ISE/lib/lin64:$LD_LIBRARY_PATH
fi
export LD_LIBRARY_PATH

HD_PWD='/home/joshbohde/code/nerabus/refdesign_test/adm-pcie-ku3_2ddr_3.1/adm-pcie-ku3_2ddr_3.1.runs/xcl_design_psreset_perst_n_0_synth_1'
cd "$HD_PWD"

HD_LOG=runme.log
/bin/touch $HD_LOG

ISEStep="./ISEWrap.sh"
EAStep()
{
     $ISEStep $HD_LOG "$@" >> $HD_LOG 2>&1
     if [ $? -ne 0 ]
     then
         exit
     fi
}

EAStep vivado -log xcl_design_psreset_perst_n_0.vds -m64 -product Vivado -mode batch -messageDb vivado.pb -notrace -source xcl_design_psreset_perst_n_0.tcl
