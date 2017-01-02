-- Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2016.3_sdx (lin64) Build 1721784 Tue Nov 29 22:12:24 MST 2016
-- Date        : Fri Dec 30 08:19:45 2016
-- Host        : hms-beatdown running 64-bit Ubuntu 15.10
-- Command     : write_vhdl -force -mode funcsim
--               /home/joshbohde/code/nerabus/refdesign_test/adm-pcie-ku3_2ddr_3.1/adm-pcie-ku3_2ddr_3.1.srcs/sources_1/bd/xcl_design/ip/xcl_design_logic_ddrcalib_op_0/xcl_design_logic_ddrcalib_op_0_sim_netlist.vhdl
-- Design      : xcl_design_logic_ddrcalib_op_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xcku060-ffva1156-2-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity xcl_design_logic_ddrcalib_op_0 is
  port (
    Op1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    Op2 : in STD_LOGIC_VECTOR ( 0 to 0 );
    Res : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of xcl_design_logic_ddrcalib_op_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of xcl_design_logic_ddrcalib_op_0 : entity is "xcl_design_logic_ddrcalib_op_0,util_vector_logic,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of xcl_design_logic_ddrcalib_op_0 : entity is "yes";
  attribute x_core_info : string;
  attribute x_core_info of xcl_design_logic_ddrcalib_op_0 : entity is "util_vector_logic,Vivado 2016.3_sdx";
end xcl_design_logic_ddrcalib_op_0;

architecture STRUCTURE of xcl_design_logic_ddrcalib_op_0 is
begin
\Res[0]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => Op1(0),
      I1 => Op2(0),
      O => Res(0)
    );
end STRUCTURE;
