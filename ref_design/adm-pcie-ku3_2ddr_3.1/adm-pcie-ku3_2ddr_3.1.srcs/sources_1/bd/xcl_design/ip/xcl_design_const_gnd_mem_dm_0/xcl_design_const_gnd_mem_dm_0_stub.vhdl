-- Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2016.3_sdx (lin64) Build 1721784 Tue Nov 29 22:12:24 MST 2016
-- Date        : Fri Dec 30 08:25:25 2016
-- Host        : hms-beatdown running 64-bit Ubuntu 15.10
-- Command     : write_vhdl -force -mode synth_stub
--               /home/joshbohde/code/nerabus/refdesign_test/adm-pcie-ku3_2ddr_3.1/adm-pcie-ku3_2ddr_3.1.srcs/sources_1/bd/xcl_design/ip/xcl_design_const_gnd_mem_dm_0/xcl_design_const_gnd_mem_dm_0_stub.vhdl
-- Design      : xcl_design_const_gnd_mem_dm_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xcku060-ffva1156-2-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity xcl_design_const_gnd_mem_dm_0 is
  Port ( 
    dout : out STD_LOGIC_VECTOR ( 8 downto 0 )
  );

end xcl_design_const_gnd_mem_dm_0;

architecture stub of xcl_design_const_gnd_mem_dm_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "dout[8:0]";
begin
end;
