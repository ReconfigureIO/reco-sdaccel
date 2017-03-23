-- Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2016.3_sdx (lin64) Build 1721784 Tue Nov 29 22:12:24 MST 2016
-- Date        : Fri Dec 30 08:22:42 2016
-- Host        : hms-beatdown running 64-bit Ubuntu 15.10
-- Command     : write_vhdl -force -mode funcsim
--               /home/joshbohde/code/nerabus/refdesign_test/adm-pcie-ku3_2ddr_3.1/adm-pcie-ku3_2ddr_3.1.srcs/sources_1/bd/xcl_design/ip/xcl_design_flash_programmer_0/xcl_design_flash_programmer_0_sim_netlist.vhdl
-- Design      : xcl_design_flash_programmer_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xcku060-ffva1156-2-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity xcl_design_flash_programmer_0_programmer is
  port (
    CLK : in STD_LOGIC;
    RST : in STD_LOGIC;
    A : out STD_LOGIC_VECTOR ( 24 downto 1 );
    DQ_I : in STD_LOGIC_VECTOR ( 15 downto 0 );
    DQ_O : out STD_LOGIC_VECTOR ( 15 downto 0 );
    OE_N : out STD_LOGIC;
    WE_N : out STD_LOGIC;
    CS_N : out STD_LOGIC;
    TRI_CTRL : out STD_LOGIC;
    FIFO_RD_EN : out STD_LOGIC;
    FIFO_EMPTY : in STD_LOGIC;
    DATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    PROM_SR : out STD_LOGIC_VECTOR ( 7 downto 0 );
    PROG_RDY : out STD_LOGIC;
    ERROR : out STD_LOGIC_VECTOR ( 2 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of xcl_design_flash_programmer_0_programmer : entity is "programmer";
  attribute blk_lck_setup_cmd : string;
  attribute blk_lck_setup_cmd of xcl_design_flash_programmer_0_programmer : entity is "6'b000010";
  attribute command : string;
  attribute command of xcl_design_flash_programmer_0_programmer : entity is "6'b000001";
  attribute eras_chk_SR : string;
  attribute eras_chk_SR of xcl_design_flash_programmer_0_programmer : entity is "6'b010000";
  attribute eras_chk_pollcnt : string;
  attribute eras_chk_pollcnt of xcl_design_flash_programmer_0_programmer : entity is "6'b010001";
  attribute eras_clear_SR : string;
  attribute eras_clear_SR of xcl_design_flash_programmer_0_programmer : entity is "6'b100100";
  attribute eras_clear_SR_1 : string;
  attribute eras_clear_SR_1 of xcl_design_flash_programmer_0_programmer : entity is "6'b100101";
  attribute eras_confirm : string;
  attribute eras_confirm of xcl_design_flash_programmer_0_programmer : entity is "6'b001100";
  attribute eras_confirm_1 : string;
  attribute eras_confirm_1 of xcl_design_flash_programmer_0_programmer : entity is "6'b001101";
  attribute eras_rd_SR : string;
  attribute eras_rd_SR of xcl_design_flash_programmer_0_programmer : entity is "6'b001110";
  attribute eras_rd_SR_1 : string;
  attribute eras_rd_SR_1 of xcl_design_flash_programmer_0_programmer : entity is "6'b001111";
  attribute eras_rd_SR_2 : string;
  attribute eras_rd_SR_2 of xcl_design_flash_programmer_0_programmer : entity is "6'b100000";
  attribute eras_setup : string;
  attribute eras_setup of xcl_design_flash_programmer_0_programmer : entity is "6'b001011";
  attribute idle : string;
  attribute idle of xcl_design_flash_programmer_0_programmer : entity is "6'b000000";
  attribute prog_buf : string;
  attribute prog_buf of xcl_design_flash_programmer_0_programmer : entity is "6'b011001";
  attribute prog_buf_1 : string;
  attribute prog_buf_1 of xcl_design_flash_programmer_0_programmer : entity is "6'b101011";
  attribute prog_bufprog_chk_SR : string;
  attribute prog_bufprog_chk_SR of xcl_design_flash_programmer_0_programmer : entity is "6'b011100";
  attribute prog_bufprog_chk_pollcnt : string;
  attribute prog_bufprog_chk_pollcnt of xcl_design_flash_programmer_0_programmer : entity is "6'b011101";
  attribute prog_bufprog_rd_SR : string;
  attribute prog_bufprog_rd_SR of xcl_design_flash_programmer_0_programmer : entity is "6'b011010";
  attribute prog_bufprog_rd_SR_1 : string;
  attribute prog_bufprog_rd_SR_1 of xcl_design_flash_programmer_0_programmer : entity is "6'b011011";
  attribute prog_chk_SR : string;
  attribute prog_chk_SR of xcl_design_flash_programmer_0_programmer : entity is "6'b010101";
  attribute prog_chk_data_count : string;
  attribute prog_chk_data_count of xcl_design_flash_programmer_0_programmer : entity is "6'b011000";
  attribute prog_chk_pollcnt : string;
  attribute prog_chk_pollcnt of xcl_design_flash_programmer_0_programmer : entity is "6'b010110";
  attribute prog_load_addr : string;
  attribute prog_load_addr of xcl_design_flash_programmer_0_programmer : entity is "6'b010111";
  attribute prog_load_addr_1 : string;
  attribute prog_load_addr_1 of xcl_design_flash_programmer_0_programmer : entity is "6'b100110";
  attribute prog_load_addr_2 : string;
  attribute prog_load_addr_2 of xcl_design_flash_programmer_0_programmer : entity is "6'b100111";
  attribute prog_load_buffer : string;
  attribute prog_load_buffer of xcl_design_flash_programmer_0_programmer : entity is "6'b100010";
  attribute prog_load_buffer_underrun : string;
  attribute prog_load_buffer_underrun of xcl_design_flash_programmer_0_programmer : entity is "6'b101000";
  attribute prog_load_buffer_underrun1 : string;
  attribute prog_load_buffer_underrun1 of xcl_design_flash_programmer_0_programmer : entity is "6'b101001";
  attribute prog_load_buffer_underrun2 : string;
  attribute prog_load_buffer_underrun2 of xcl_design_flash_programmer_0_programmer : entity is "6'b101010";
  attribute prog_rd_SR : string;
  attribute prog_rd_SR of xcl_design_flash_programmer_0_programmer : entity is "6'b010011";
  attribute prog_rd_SR_1 : string;
  attribute prog_rd_SR_1 of xcl_design_flash_programmer_0_programmer : entity is "6'b010100";
  attribute prog_rd_SR_2 : string;
  attribute prog_rd_SR_2 of xcl_design_flash_programmer_0_programmer : entity is "6'b100001";
  attribute prog_setup : string;
  attribute prog_setup of xcl_design_flash_programmer_0_programmer : entity is "6'b010010";
  attribute rd_id : string;
  attribute rd_id of xcl_design_flash_programmer_0_programmer : entity is "6'b000101";
  attribute rd_id_1 : string;
  attribute rd_id_1 of xcl_design_flash_programmer_0_programmer : entity is "6'b000110";
  attribute unlck_chk_id : string;
  attribute unlck_chk_id of xcl_design_flash_programmer_0_programmer : entity is "6'b001001";
  attribute unlck_chk_pollcnt : string;
  attribute unlck_chk_pollcnt of xcl_design_flash_programmer_0_programmer : entity is "6'b001010";
  attribute unlck_cmd : string;
  attribute unlck_cmd of xcl_design_flash_programmer_0_programmer : entity is "6'b000011";
  attribute unlck_cmd_1 : string;
  attribute unlck_cmd_1 of xcl_design_flash_programmer_0_programmer : entity is "6'b000100";
  attribute unlck_rd_SR : string;
  attribute unlck_rd_SR of xcl_design_flash_programmer_0_programmer : entity is "6'b000111";
  attribute unlck_rd_SR_1 : string;
  attribute unlck_rd_SR_1 of xcl_design_flash_programmer_0_programmer : entity is "6'b001000";
  attribute unlck_rd_SR_2 : string;
  attribute unlck_rd_SR_2 of xcl_design_flash_programmer_0_programmer : entity is "6'b011110";
end xcl_design_flash_programmer_0_programmer;

architecture STRUCTURE of xcl_design_flash_programmer_0_programmer is
  signal \^a\ : STD_LOGIC_VECTOR ( 24 downto 1 );
  signal A_inc : STD_LOGIC_VECTOR ( 22 downto 0 );
  signal \A_reg[15]_i_10_n_0\ : STD_LOGIC;
  signal \A_reg[15]_i_11_n_0\ : STD_LOGIC;
  signal \A_reg[15]_i_12_n_0\ : STD_LOGIC;
  signal \A_reg[15]_i_13_n_0\ : STD_LOGIC;
  signal \A_reg[15]_i_14_n_0\ : STD_LOGIC;
  signal \A_reg[15]_i_15_n_0\ : STD_LOGIC;
  signal \A_reg[15]_i_16_n_0\ : STD_LOGIC;
  signal \A_reg[15]_i_17_n_0\ : STD_LOGIC;
  signal \A_reg[23]_i_14_n_0\ : STD_LOGIC;
  signal \A_reg[23]_i_15_n_0\ : STD_LOGIC;
  signal \A_reg[23]_i_16_n_0\ : STD_LOGIC;
  signal \A_reg[23]_i_17_n_0\ : STD_LOGIC;
  signal \A_reg[23]_i_18_n_0\ : STD_LOGIC;
  signal \A_reg[23]_i_19_n_0\ : STD_LOGIC;
  signal \A_reg[23]_i_20_n_0\ : STD_LOGIC;
  signal \A_reg[23]_i_21_n_0\ : STD_LOGIC;
  signal \A_reg[23]_i_22_n_0\ : STD_LOGIC;
  signal \A_reg[23]_i_23_n_0\ : STD_LOGIC;
  signal \A_reg[23]_i_24_n_0\ : STD_LOGIC;
  signal \A_reg[23]_i_25_n_0\ : STD_LOGIC;
  signal \A_reg[23]_i_26_n_0\ : STD_LOGIC;
  signal \A_reg[23]_i_27_n_0\ : STD_LOGIC;
  signal \A_reg[23]_i_28_n_0\ : STD_LOGIC;
  signal \A_reg[23]_i_29_n_0\ : STD_LOGIC;
  signal \A_reg[23]_i_30_n_0\ : STD_LOGIC;
  signal \A_reg[23]_i_31_n_0\ : STD_LOGIC;
  signal \A_reg[23]_i_32_n_0\ : STD_LOGIC;
  signal \A_reg[23]_i_33_n_0\ : STD_LOGIC;
  signal \A_reg[23]_i_34_n_0\ : STD_LOGIC;
  signal \A_reg[23]_i_35_n_0\ : STD_LOGIC;
  signal \A_reg[23]_i_36_n_0\ : STD_LOGIC;
  signal \A_reg[23]_i_37_n_0\ : STD_LOGIC;
  signal \A_reg[23]_i_38_n_0\ : STD_LOGIC;
  signal \A_reg[23]_i_39_n_0\ : STD_LOGIC;
  signal \A_reg[23]_i_3_n_0\ : STD_LOGIC;
  signal \A_reg[23]_i_40_n_0\ : STD_LOGIC;
  signal \A_reg[23]_i_41_n_0\ : STD_LOGIC;
  signal \A_reg[23]_i_42_n_0\ : STD_LOGIC;
  signal \A_reg[23]_i_4_n_0\ : STD_LOGIC;
  signal \A_reg[23]_i_5_n_0\ : STD_LOGIC;
  signal \A_reg[23]_i_6_n_0\ : STD_LOGIC;
  signal \A_reg[7]_i_10_n_0\ : STD_LOGIC;
  signal \A_reg[7]_i_11_n_0\ : STD_LOGIC;
  signal \A_reg[7]_i_12_n_0\ : STD_LOGIC;
  signal \A_reg[7]_i_13_n_0\ : STD_LOGIC;
  signal \A_reg[7]_i_14_n_0\ : STD_LOGIC;
  signal \A_reg[7]_i_15_n_0\ : STD_LOGIC;
  signal \A_reg[7]_i_16_n_0\ : STD_LOGIC;
  signal \A_reg[7]_i_4_n_0\ : STD_LOGIC;
  signal \A_reg[7]_i_5_n_0\ : STD_LOGIC;
  signal \A_reg[7]_i_6_n_0\ : STD_LOGIC;
  signal \A_reg[7]_i_7_n_0\ : STD_LOGIC;
  signal \A_reg[7]_i_8_n_0\ : STD_LOGIC;
  signal \A_reg[7]_i_9_n_0\ : STD_LOGIC;
  signal A_reg_en : STD_LOGIC;
  signal \A_reg_reg[15]_i_1_n_0\ : STD_LOGIC;
  signal \A_reg_reg[15]_i_1_n_1\ : STD_LOGIC;
  signal \A_reg_reg[15]_i_1_n_10\ : STD_LOGIC;
  signal \A_reg_reg[15]_i_1_n_11\ : STD_LOGIC;
  signal \A_reg_reg[15]_i_1_n_12\ : STD_LOGIC;
  signal \A_reg_reg[15]_i_1_n_13\ : STD_LOGIC;
  signal \A_reg_reg[15]_i_1_n_14\ : STD_LOGIC;
  signal \A_reg_reg[15]_i_1_n_15\ : STD_LOGIC;
  signal \A_reg_reg[15]_i_1_n_2\ : STD_LOGIC;
  signal \A_reg_reg[15]_i_1_n_3\ : STD_LOGIC;
  signal \A_reg_reg[15]_i_1_n_5\ : STD_LOGIC;
  signal \A_reg_reg[15]_i_1_n_6\ : STD_LOGIC;
  signal \A_reg_reg[15]_i_1_n_7\ : STD_LOGIC;
  signal \A_reg_reg[15]_i_1_n_8\ : STD_LOGIC;
  signal \A_reg_reg[15]_i_1_n_9\ : STD_LOGIC;
  signal \A_reg_reg[23]_i_2_n_1\ : STD_LOGIC;
  signal \A_reg_reg[23]_i_2_n_10\ : STD_LOGIC;
  signal \A_reg_reg[23]_i_2_n_11\ : STD_LOGIC;
  signal \A_reg_reg[23]_i_2_n_12\ : STD_LOGIC;
  signal \A_reg_reg[23]_i_2_n_13\ : STD_LOGIC;
  signal \A_reg_reg[23]_i_2_n_14\ : STD_LOGIC;
  signal \A_reg_reg[23]_i_2_n_15\ : STD_LOGIC;
  signal \A_reg_reg[23]_i_2_n_2\ : STD_LOGIC;
  signal \A_reg_reg[23]_i_2_n_3\ : STD_LOGIC;
  signal \A_reg_reg[23]_i_2_n_5\ : STD_LOGIC;
  signal \A_reg_reg[23]_i_2_n_6\ : STD_LOGIC;
  signal \A_reg_reg[23]_i_2_n_7\ : STD_LOGIC;
  signal \A_reg_reg[23]_i_2_n_8\ : STD_LOGIC;
  signal \A_reg_reg[23]_i_2_n_9\ : STD_LOGIC;
  signal \A_reg_reg[7]_i_1_n_0\ : STD_LOGIC;
  signal \A_reg_reg[7]_i_1_n_1\ : STD_LOGIC;
  signal \A_reg_reg[7]_i_1_n_10\ : STD_LOGIC;
  signal \A_reg_reg[7]_i_1_n_11\ : STD_LOGIC;
  signal \A_reg_reg[7]_i_1_n_12\ : STD_LOGIC;
  signal \A_reg_reg[7]_i_1_n_13\ : STD_LOGIC;
  signal \A_reg_reg[7]_i_1_n_14\ : STD_LOGIC;
  signal \A_reg_reg[7]_i_1_n_15\ : STD_LOGIC;
  signal \A_reg_reg[7]_i_1_n_2\ : STD_LOGIC;
  signal \A_reg_reg[7]_i_1_n_3\ : STD_LOGIC;
  signal \A_reg_reg[7]_i_1_n_5\ : STD_LOGIC;
  signal \A_reg_reg[7]_i_1_n_6\ : STD_LOGIC;
  signal \A_reg_reg[7]_i_1_n_7\ : STD_LOGIC;
  signal \A_reg_reg[7]_i_1_n_8\ : STD_LOGIC;
  signal \A_reg_reg[7]_i_1_n_9\ : STD_LOGIC;
  signal CS_N_i_10_n_0 : STD_LOGIC;
  signal CS_N_i_11_n_0 : STD_LOGIC;
  signal CS_N_i_12_n_0 : STD_LOGIC;
  signal CS_N_i_13_n_0 : STD_LOGIC;
  signal CS_N_i_2_n_0 : STD_LOGIC;
  signal CS_N_i_3_n_0 : STD_LOGIC;
  signal CS_N_i_4_n_0 : STD_LOGIC;
  signal CS_N_i_5_n_0 : STD_LOGIC;
  signal CS_N_i_6_n_0 : STD_LOGIC;
  signal CS_N_i_7_n_0 : STD_LOGIC;
  signal CS_N_i_8_n_0 : STD_LOGIC;
  signal CS_N_i_9_n_0 : STD_LOGIC;
  signal \CS_N_reg__0\ : STD_LOGIC;
  signal \DQ_O[15]_i_2_n_0\ : STD_LOGIC;
  signal \DQ_O[15]_i_3_n_0\ : STD_LOGIC;
  signal \DQ_O[4]_i_10_n_0\ : STD_LOGIC;
  signal \DQ_O[4]_i_11_n_0\ : STD_LOGIC;
  signal \DQ_O[4]_i_12_n_0\ : STD_LOGIC;
  signal \DQ_O[4]_i_2_n_0\ : STD_LOGIC;
  signal \DQ_O[4]_i_4_n_0\ : STD_LOGIC;
  signal \DQ_O[4]_i_5_n_0\ : STD_LOGIC;
  signal \DQ_O[4]_i_6_n_0\ : STD_LOGIC;
  signal \DQ_O[4]_i_7_n_0\ : STD_LOGIC;
  signal \DQ_O[4]_i_8_n_0\ : STD_LOGIC;
  signal \DQ_O[4]_i_9_n_0\ : STD_LOGIC;
  signal \DQ_O[5]_i_10_n_0\ : STD_LOGIC;
  signal \DQ_O[5]_i_11_n_0\ : STD_LOGIC;
  signal \DQ_O[5]_i_2_n_0\ : STD_LOGIC;
  signal \DQ_O[5]_i_4_n_0\ : STD_LOGIC;
  signal \DQ_O[5]_i_5_n_0\ : STD_LOGIC;
  signal \DQ_O[5]_i_6_n_0\ : STD_LOGIC;
  signal \DQ_O[5]_i_7_n_0\ : STD_LOGIC;
  signal \DQ_O[5]_i_8_n_0\ : STD_LOGIC;
  signal \DQ_O[5]_i_9_n_0\ : STD_LOGIC;
  signal \DQ_O[6]_i_2_n_0\ : STD_LOGIC;
  signal \DQ_O[6]_i_3_n_0\ : STD_LOGIC;
  signal \DQ_O[6]_i_4_n_0\ : STD_LOGIC;
  signal \DQ_O[6]_i_5_n_0\ : STD_LOGIC;
  signal \DQ_O[6]_i_6_n_0\ : STD_LOGIC;
  signal \DQ_O[6]_i_7_n_0\ : STD_LOGIC;
  signal \DQ_O[7]_i_2_n_0\ : STD_LOGIC;
  signal \DQ_O[7]_i_3_n_0\ : STD_LOGIC;
  signal \DQ_O[7]_i_4_n_0\ : STD_LOGIC;
  signal \DQ_O[7]_i_5_n_0\ : STD_LOGIC;
  signal \DQ_O[7]_i_7_n_0\ : STD_LOGIC;
  signal \DQ_O[7]_i_8_n_0\ : STD_LOGIC;
  signal \DQ_O[7]_i_9_n_0\ : STD_LOGIC;
  signal \DQ_O[8]_i_2_n_0\ : STD_LOGIC;
  signal \DQ_O_reg__0\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal FIFO_RD_EN_INST_0_i_2_n_0 : STD_LOGIC;
  signal FIFO_RD_EN_INST_0_i_3_n_0 : STD_LOGIC;
  signal FIFO_RD_EN_reg1_out : STD_LOGIC;
  signal \FSM_onehot_CurrentState[0]_i_10_n_0\ : STD_LOGIC;
  signal \FSM_onehot_CurrentState[0]_i_11_n_0\ : STD_LOGIC;
  signal \FSM_onehot_CurrentState[0]_i_12_n_0\ : STD_LOGIC;
  signal \FSM_onehot_CurrentState[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_CurrentState[0]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_onehot_CurrentState[0]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_onehot_CurrentState[0]_i_4_n_0\ : STD_LOGIC;
  signal \FSM_onehot_CurrentState[0]_i_5_n_0\ : STD_LOGIC;
  signal \FSM_onehot_CurrentState[0]_i_6_n_0\ : STD_LOGIC;
  signal \FSM_onehot_CurrentState[0]_i_7_n_0\ : STD_LOGIC;
  signal \FSM_onehot_CurrentState[0]_i_8_n_0\ : STD_LOGIC;
  signal \FSM_onehot_CurrentState[0]_i_9_n_0\ : STD_LOGIC;
  signal \FSM_onehot_CurrentState[10]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_CurrentState[11]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_CurrentState[12]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_CurrentState[12]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_onehot_CurrentState[12]_i_4_n_0\ : STD_LOGIC;
  signal \FSM_onehot_CurrentState[12]_i_5_n_0\ : STD_LOGIC;
  signal \FSM_onehot_CurrentState[12]_i_6_n_0\ : STD_LOGIC;
  signal \FSM_onehot_CurrentState[12]_i_7_n_0\ : STD_LOGIC;
  signal \FSM_onehot_CurrentState[12]_i_8_n_0\ : STD_LOGIC;
  signal \FSM_onehot_CurrentState[13]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_CurrentState[14]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_CurrentState[15]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_CurrentState[16]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_CurrentState[17]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_CurrentState[17]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_onehot_CurrentState[17]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_onehot_CurrentState[17]_i_4_n_0\ : STD_LOGIC;
  signal \FSM_onehot_CurrentState[17]_i_5_n_0\ : STD_LOGIC;
  signal \FSM_onehot_CurrentState[18]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_CurrentState[18]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_onehot_CurrentState[19]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_CurrentState[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_CurrentState[20]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_CurrentState[20]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_onehot_CurrentState[20]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_onehot_CurrentState[21]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_CurrentState[21]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_onehot_CurrentState[22]_i_10_n_0\ : STD_LOGIC;
  signal \FSM_onehot_CurrentState[22]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_CurrentState[22]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_onehot_CurrentState[22]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_onehot_CurrentState[22]_i_4_n_0\ : STD_LOGIC;
  signal \FSM_onehot_CurrentState[22]_i_5_n_0\ : STD_LOGIC;
  signal \FSM_onehot_CurrentState[22]_i_6_n_0\ : STD_LOGIC;
  signal \FSM_onehot_CurrentState[22]_i_7_n_0\ : STD_LOGIC;
  signal \FSM_onehot_CurrentState[22]_i_8_n_0\ : STD_LOGIC;
  signal \FSM_onehot_CurrentState[22]_i_9_n_0\ : STD_LOGIC;
  signal \FSM_onehot_CurrentState[23]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_CurrentState[24]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_CurrentState[25]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_CurrentState[25]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_onehot_CurrentState[26]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_CurrentState[27]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_CurrentState[27]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_onehot_CurrentState[28]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_CurrentState[29]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_CurrentState[29]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_onehot_CurrentState[2]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_CurrentState[2]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_onehot_CurrentState[2]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_onehot_CurrentState[2]_i_4_n_0\ : STD_LOGIC;
  signal \FSM_onehot_CurrentState[2]_i_5_n_0\ : STD_LOGIC;
  signal \FSM_onehot_CurrentState[2]_i_6_n_0\ : STD_LOGIC;
  signal \FSM_onehot_CurrentState[2]_i_7_n_0\ : STD_LOGIC;
  signal \FSM_onehot_CurrentState[2]_i_8_n_0\ : STD_LOGIC;
  signal \FSM_onehot_CurrentState[30]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_CurrentState[31]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_CurrentState[31]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_onehot_CurrentState[31]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_onehot_CurrentState[32]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_CurrentState[33]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_CurrentState[33]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_onehot_CurrentState[33]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_onehot_CurrentState[33]_i_4_n_0\ : STD_LOGIC;
  signal \FSM_onehot_CurrentState[33]_i_5_n_0\ : STD_LOGIC;
  signal \FSM_onehot_CurrentState[34]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_CurrentState[34]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_onehot_CurrentState[35]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_CurrentState[36]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_CurrentState[37]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_CurrentState[37]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_onehot_CurrentState[38]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_CurrentState[39]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_CurrentState[39]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_onehot_CurrentState[39]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_onehot_CurrentState[39]_i_4_n_0\ : STD_LOGIC;
  signal \FSM_onehot_CurrentState[3]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_CurrentState[40]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_CurrentState[40]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_onehot_CurrentState[40]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_onehot_CurrentState[40]_i_4_n_0\ : STD_LOGIC;
  signal \FSM_onehot_CurrentState[40]_i_5_n_0\ : STD_LOGIC;
  signal \FSM_onehot_CurrentState[40]_i_6_n_0\ : STD_LOGIC;
  signal \FSM_onehot_CurrentState[40]_i_7_n_0\ : STD_LOGIC;
  signal \FSM_onehot_CurrentState[40]_i_8_n_0\ : STD_LOGIC;
  signal \FSM_onehot_CurrentState[40]_i_9_n_0\ : STD_LOGIC;
  signal \FSM_onehot_CurrentState[41]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_CurrentState[41]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_onehot_CurrentState[41]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_onehot_CurrentState[41]_i_4_n_0\ : STD_LOGIC;
  signal \FSM_onehot_CurrentState[41]_i_5_n_0\ : STD_LOGIC;
  signal \FSM_onehot_CurrentState[42]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_CurrentState[42]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_onehot_CurrentState[4]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_CurrentState[5]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_CurrentState[6]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_CurrentState[7]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_CurrentState[8]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_CurrentState[8]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_onehot_CurrentState[9]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_CurrentState_reg_n_0_[10]\ : STD_LOGIC;
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of \FSM_onehot_CurrentState_reg_n_0_[10]\ : signal is "yes";
  signal \FSM_onehot_CurrentState_reg_n_0_[11]\ : STD_LOGIC;
  attribute RTL_KEEP of \FSM_onehot_CurrentState_reg_n_0_[11]\ : signal is "yes";
  signal \FSM_onehot_CurrentState_reg_n_0_[12]\ : STD_LOGIC;
  attribute RTL_KEEP of \FSM_onehot_CurrentState_reg_n_0_[12]\ : signal is "yes";
  signal \FSM_onehot_CurrentState_reg_n_0_[13]\ : STD_LOGIC;
  attribute RTL_KEEP of \FSM_onehot_CurrentState_reg_n_0_[13]\ : signal is "yes";
  signal \FSM_onehot_CurrentState_reg_n_0_[14]\ : STD_LOGIC;
  attribute RTL_KEEP of \FSM_onehot_CurrentState_reg_n_0_[14]\ : signal is "yes";
  signal \FSM_onehot_CurrentState_reg_n_0_[15]\ : STD_LOGIC;
  attribute RTL_KEEP of \FSM_onehot_CurrentState_reg_n_0_[15]\ : signal is "yes";
  signal \FSM_onehot_CurrentState_reg_n_0_[16]\ : STD_LOGIC;
  attribute RTL_KEEP of \FSM_onehot_CurrentState_reg_n_0_[16]\ : signal is "yes";
  signal \FSM_onehot_CurrentState_reg_n_0_[17]\ : STD_LOGIC;
  attribute RTL_KEEP of \FSM_onehot_CurrentState_reg_n_0_[17]\ : signal is "yes";
  signal \FSM_onehot_CurrentState_reg_n_0_[18]\ : STD_LOGIC;
  attribute RTL_KEEP of \FSM_onehot_CurrentState_reg_n_0_[18]\ : signal is "yes";
  signal \FSM_onehot_CurrentState_reg_n_0_[19]\ : STD_LOGIC;
  attribute RTL_KEEP of \FSM_onehot_CurrentState_reg_n_0_[19]\ : signal is "yes";
  signal \FSM_onehot_CurrentState_reg_n_0_[1]\ : STD_LOGIC;
  attribute RTL_KEEP of \FSM_onehot_CurrentState_reg_n_0_[1]\ : signal is "yes";
  signal \FSM_onehot_CurrentState_reg_n_0_[20]\ : STD_LOGIC;
  attribute RTL_KEEP of \FSM_onehot_CurrentState_reg_n_0_[20]\ : signal is "yes";
  signal \FSM_onehot_CurrentState_reg_n_0_[21]\ : STD_LOGIC;
  attribute RTL_KEEP of \FSM_onehot_CurrentState_reg_n_0_[21]\ : signal is "yes";
  signal \FSM_onehot_CurrentState_reg_n_0_[22]\ : STD_LOGIC;
  attribute RTL_KEEP of \FSM_onehot_CurrentState_reg_n_0_[22]\ : signal is "yes";
  signal \FSM_onehot_CurrentState_reg_n_0_[23]\ : STD_LOGIC;
  attribute RTL_KEEP of \FSM_onehot_CurrentState_reg_n_0_[23]\ : signal is "yes";
  signal \FSM_onehot_CurrentState_reg_n_0_[24]\ : STD_LOGIC;
  attribute RTL_KEEP of \FSM_onehot_CurrentState_reg_n_0_[24]\ : signal is "yes";
  signal \FSM_onehot_CurrentState_reg_n_0_[25]\ : STD_LOGIC;
  attribute RTL_KEEP of \FSM_onehot_CurrentState_reg_n_0_[25]\ : signal is "yes";
  signal \FSM_onehot_CurrentState_reg_n_0_[26]\ : STD_LOGIC;
  attribute RTL_KEEP of \FSM_onehot_CurrentState_reg_n_0_[26]\ : signal is "yes";
  signal \FSM_onehot_CurrentState_reg_n_0_[27]\ : STD_LOGIC;
  attribute RTL_KEEP of \FSM_onehot_CurrentState_reg_n_0_[27]\ : signal is "yes";
  signal \FSM_onehot_CurrentState_reg_n_0_[28]\ : STD_LOGIC;
  attribute RTL_KEEP of \FSM_onehot_CurrentState_reg_n_0_[28]\ : signal is "yes";
  signal \FSM_onehot_CurrentState_reg_n_0_[29]\ : STD_LOGIC;
  attribute RTL_KEEP of \FSM_onehot_CurrentState_reg_n_0_[29]\ : signal is "yes";
  signal \FSM_onehot_CurrentState_reg_n_0_[2]\ : STD_LOGIC;
  attribute RTL_KEEP of \FSM_onehot_CurrentState_reg_n_0_[2]\ : signal is "yes";
  signal \FSM_onehot_CurrentState_reg_n_0_[30]\ : STD_LOGIC;
  attribute RTL_KEEP of \FSM_onehot_CurrentState_reg_n_0_[30]\ : signal is "yes";
  signal \FSM_onehot_CurrentState_reg_n_0_[31]\ : STD_LOGIC;
  attribute RTL_KEEP of \FSM_onehot_CurrentState_reg_n_0_[31]\ : signal is "yes";
  signal \FSM_onehot_CurrentState_reg_n_0_[32]\ : STD_LOGIC;
  attribute RTL_KEEP of \FSM_onehot_CurrentState_reg_n_0_[32]\ : signal is "yes";
  signal \FSM_onehot_CurrentState_reg_n_0_[33]\ : STD_LOGIC;
  attribute RTL_KEEP of \FSM_onehot_CurrentState_reg_n_0_[33]\ : signal is "yes";
  signal \FSM_onehot_CurrentState_reg_n_0_[34]\ : STD_LOGIC;
  attribute RTL_KEEP of \FSM_onehot_CurrentState_reg_n_0_[34]\ : signal is "yes";
  signal \FSM_onehot_CurrentState_reg_n_0_[35]\ : STD_LOGIC;
  attribute RTL_KEEP of \FSM_onehot_CurrentState_reg_n_0_[35]\ : signal is "yes";
  signal \FSM_onehot_CurrentState_reg_n_0_[36]\ : STD_LOGIC;
  attribute RTL_KEEP of \FSM_onehot_CurrentState_reg_n_0_[36]\ : signal is "yes";
  signal \FSM_onehot_CurrentState_reg_n_0_[37]\ : STD_LOGIC;
  attribute RTL_KEEP of \FSM_onehot_CurrentState_reg_n_0_[37]\ : signal is "yes";
  signal \FSM_onehot_CurrentState_reg_n_0_[38]\ : STD_LOGIC;
  attribute RTL_KEEP of \FSM_onehot_CurrentState_reg_n_0_[38]\ : signal is "yes";
  signal \FSM_onehot_CurrentState_reg_n_0_[39]\ : STD_LOGIC;
  attribute RTL_KEEP of \FSM_onehot_CurrentState_reg_n_0_[39]\ : signal is "yes";
  signal \FSM_onehot_CurrentState_reg_n_0_[3]\ : STD_LOGIC;
  attribute RTL_KEEP of \FSM_onehot_CurrentState_reg_n_0_[3]\ : signal is "yes";
  signal \FSM_onehot_CurrentState_reg_n_0_[40]\ : STD_LOGIC;
  attribute RTL_KEEP of \FSM_onehot_CurrentState_reg_n_0_[40]\ : signal is "yes";
  signal \FSM_onehot_CurrentState_reg_n_0_[41]\ : STD_LOGIC;
  attribute RTL_KEEP of \FSM_onehot_CurrentState_reg_n_0_[41]\ : signal is "yes";
  signal \FSM_onehot_CurrentState_reg_n_0_[42]\ : STD_LOGIC;
  attribute RTL_KEEP of \FSM_onehot_CurrentState_reg_n_0_[42]\ : signal is "yes";
  signal \FSM_onehot_CurrentState_reg_n_0_[4]\ : STD_LOGIC;
  attribute RTL_KEEP of \FSM_onehot_CurrentState_reg_n_0_[4]\ : signal is "yes";
  signal \FSM_onehot_CurrentState_reg_n_0_[5]\ : STD_LOGIC;
  attribute RTL_KEEP of \FSM_onehot_CurrentState_reg_n_0_[5]\ : signal is "yes";
  signal \FSM_onehot_CurrentState_reg_n_0_[6]\ : STD_LOGIC;
  attribute RTL_KEEP of \FSM_onehot_CurrentState_reg_n_0_[6]\ : signal is "yes";
  signal \FSM_onehot_CurrentState_reg_n_0_[7]\ : STD_LOGIC;
  attribute RTL_KEEP of \FSM_onehot_CurrentState_reg_n_0_[7]\ : signal is "yes";
  signal \FSM_onehot_CurrentState_reg_n_0_[8]\ : STD_LOGIC;
  attribute RTL_KEEP of \FSM_onehot_CurrentState_reg_n_0_[8]\ : signal is "yes";
  signal \FSM_onehot_CurrentState_reg_n_0_[9]\ : STD_LOGIC;
  attribute RTL_KEEP of \FSM_onehot_CurrentState_reg_n_0_[9]\ : signal is "yes";
  signal OE_N_i_3_n_0 : STD_LOGIC;
  signal OE_N_i_4_n_0 : STD_LOGIC;
  signal OE_N_i_5_n_0 : STD_LOGIC;
  signal OE_N_i_6_n_0 : STD_LOGIC;
  signal OE_N_i_7_n_0 : STD_LOGIC;
  signal OE_N_i_8_n_0 : STD_LOGIC;
  signal \OE_N_reg__0\ : STD_LOGIC;
  signal \^prom_sr\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal SR_reg_regn_0_0 : STD_LOGIC;
  signal \^tri_ctrl\ : STD_LOGIC;
  signal TRI_CTRL_INST_0_i_1_n_0 : STD_LOGIC;
  signal TRI_CTRL_INST_0_i_2_n_0 : STD_LOGIC;
  signal WE_N_i_10_n_0 : STD_LOGIC;
  signal WE_N_i_11_n_0 : STD_LOGIC;
  signal WE_N_i_12_n_0 : STD_LOGIC;
  signal WE_N_i_13_n_0 : STD_LOGIC;
  signal WE_N_i_14_n_0 : STD_LOGIC;
  signal WE_N_i_15_n_0 : STD_LOGIC;
  signal WE_N_i_16_n_0 : STD_LOGIC;
  signal WE_N_i_17_n_0 : STD_LOGIC;
  signal WE_N_i_18_n_0 : STD_LOGIC;
  signal WE_N_i_19_n_0 : STD_LOGIC;
  signal WE_N_i_2_n_0 : STD_LOGIC;
  signal WE_N_i_3_n_0 : STD_LOGIC;
  signal WE_N_i_4_n_0 : STD_LOGIC;
  signal WE_N_i_5_n_0 : STD_LOGIC;
  signal WE_N_i_6_n_0 : STD_LOGIC;
  signal WE_N_i_7_n_0 : STD_LOGIC;
  signal WE_N_i_8_n_0 : STD_LOGIC;
  signal WE_N_i_9_n_0 : STD_LOGIC;
  signal \WE_N_reg__0\ : STD_LOGIC;
  signal byte_sel_reg : STD_LOGIC;
  signal byte_sel_reg_i_1_n_0 : STD_LOGIC;
  signal \data_cnt[5]_i_2_n_0\ : STD_LOGIC;
  signal \data_cnt[6]_i_2_n_0\ : STD_LOGIC;
  signal \data_cnt[8]_i_1_n_0\ : STD_LOGIC;
  signal \data_cnt[8]_i_2_n_0\ : STD_LOGIC;
  signal \data_cnt[8]_i_3_n_0\ : STD_LOGIC;
  signal \data_cnt_reg__0\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal data_sel : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal end_addr_reached04_in : STD_LOGIC;
  signal end_addr_reg_en : STD_LOGIC;
  signal \end_addr_reg_reg_n_0_[0]\ : STD_LOGIC;
  signal \end_addr_reg_reg_n_0_[10]\ : STD_LOGIC;
  signal \end_addr_reg_reg_n_0_[11]\ : STD_LOGIC;
  signal \end_addr_reg_reg_n_0_[12]\ : STD_LOGIC;
  signal \end_addr_reg_reg_n_0_[13]\ : STD_LOGIC;
  signal \end_addr_reg_reg_n_0_[14]\ : STD_LOGIC;
  signal \end_addr_reg_reg_n_0_[15]\ : STD_LOGIC;
  signal \end_addr_reg_reg_n_0_[16]\ : STD_LOGIC;
  signal \end_addr_reg_reg_n_0_[1]\ : STD_LOGIC;
  signal \end_addr_reg_reg_n_0_[2]\ : STD_LOGIC;
  signal \end_addr_reg_reg_n_0_[3]\ : STD_LOGIC;
  signal \end_addr_reg_reg_n_0_[4]\ : STD_LOGIC;
  signal \end_addr_reg_reg_n_0_[5]\ : STD_LOGIC;
  signal \end_addr_reg_reg_n_0_[6]\ : STD_LOGIC;
  signal \end_addr_reg_reg_n_0_[7]\ : STD_LOGIC;
  signal \end_addr_reg_reg_n_0_[8]\ : STD_LOGIC;
  signal \end_addr_reg_reg_n_0_[9]\ : STD_LOGIC;
  signal end_blk : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal error_flag : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \error_reg[1]_i_2_n_0\ : STD_LOGIC;
  signal \error_reg[1]_i_3_n_0\ : STD_LOGIC;
  signal \error_reg[1]_i_4_n_0\ : STD_LOGIC;
  signal \error_reg[1]_i_5_n_0\ : STD_LOGIC;
  signal \error_reg[1]_i_6_n_0\ : STD_LOGIC;
  signal \error_reg[2]_i_10_n_0\ : STD_LOGIC;
  signal \error_reg[2]_i_11_n_0\ : STD_LOGIC;
  signal \error_reg[2]_i_12_n_0\ : STD_LOGIC;
  signal \error_reg[2]_i_13_n_0\ : STD_LOGIC;
  signal \error_reg[2]_i_3_n_0\ : STD_LOGIC;
  signal \error_reg[2]_i_4_n_0\ : STD_LOGIC;
  signal \error_reg[2]_i_5_n_0\ : STD_LOGIC;
  signal \error_reg[2]_i_6_n_0\ : STD_LOGIC;
  signal \error_reg[2]_i_7_n_0\ : STD_LOGIC;
  signal \error_reg[2]_i_8_n_0\ : STD_LOGIC;
  signal \error_reg[2]_i_9_n_0\ : STD_LOGIC;
  signal error_reg_en : STD_LOGIC;
  signal last_blk : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \p_0_in__0\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \poll_cnt[0]_i_10_n_0\ : STD_LOGIC;
  signal \poll_cnt[0]_i_11_n_0\ : STD_LOGIC;
  signal \poll_cnt[0]_i_12_n_0\ : STD_LOGIC;
  signal \poll_cnt[0]_i_13_n_0\ : STD_LOGIC;
  signal \poll_cnt[0]_i_4_n_0\ : STD_LOGIC;
  signal \poll_cnt[0]_i_5_n_0\ : STD_LOGIC;
  signal \poll_cnt[0]_i_6_n_0\ : STD_LOGIC;
  signal \poll_cnt[0]_i_7_n_0\ : STD_LOGIC;
  signal \poll_cnt[0]_i_8_n_0\ : STD_LOGIC;
  signal \poll_cnt[0]_i_9_n_0\ : STD_LOGIC;
  signal \poll_cnt[16]_i_2_n_0\ : STD_LOGIC;
  signal \poll_cnt[16]_i_3_n_0\ : STD_LOGIC;
  signal \poll_cnt[16]_i_4_n_0\ : STD_LOGIC;
  signal \poll_cnt[16]_i_5_n_0\ : STD_LOGIC;
  signal \poll_cnt[16]_i_6_n_0\ : STD_LOGIC;
  signal \poll_cnt[16]_i_7_n_0\ : STD_LOGIC;
  signal \poll_cnt[16]_i_8_n_0\ : STD_LOGIC;
  signal \poll_cnt[16]_i_9_n_0\ : STD_LOGIC;
  signal \poll_cnt[8]_i_2_n_0\ : STD_LOGIC;
  signal \poll_cnt[8]_i_3_n_0\ : STD_LOGIC;
  signal \poll_cnt[8]_i_4_n_0\ : STD_LOGIC;
  signal \poll_cnt[8]_i_5_n_0\ : STD_LOGIC;
  signal \poll_cnt[8]_i_6_n_0\ : STD_LOGIC;
  signal \poll_cnt[8]_i_7_n_0\ : STD_LOGIC;
  signal \poll_cnt[8]_i_8_n_0\ : STD_LOGIC;
  signal \poll_cnt[8]_i_9_n_0\ : STD_LOGIC;
  signal poll_cnt_en : STD_LOGIC;
  signal poll_cnt_reg : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal \poll_cnt_reg[0]_i_3_n_0\ : STD_LOGIC;
  signal \poll_cnt_reg[0]_i_3_n_1\ : STD_LOGIC;
  signal \poll_cnt_reg[0]_i_3_n_10\ : STD_LOGIC;
  signal \poll_cnt_reg[0]_i_3_n_11\ : STD_LOGIC;
  signal \poll_cnt_reg[0]_i_3_n_12\ : STD_LOGIC;
  signal \poll_cnt_reg[0]_i_3_n_13\ : STD_LOGIC;
  signal \poll_cnt_reg[0]_i_3_n_14\ : STD_LOGIC;
  signal \poll_cnt_reg[0]_i_3_n_15\ : STD_LOGIC;
  signal \poll_cnt_reg[0]_i_3_n_2\ : STD_LOGIC;
  signal \poll_cnt_reg[0]_i_3_n_3\ : STD_LOGIC;
  signal \poll_cnt_reg[0]_i_3_n_5\ : STD_LOGIC;
  signal \poll_cnt_reg[0]_i_3_n_6\ : STD_LOGIC;
  signal \poll_cnt_reg[0]_i_3_n_7\ : STD_LOGIC;
  signal \poll_cnt_reg[0]_i_3_n_8\ : STD_LOGIC;
  signal \poll_cnt_reg[0]_i_3_n_9\ : STD_LOGIC;
  signal \poll_cnt_reg[16]_i_1_n_1\ : STD_LOGIC;
  signal \poll_cnt_reg[16]_i_1_n_10\ : STD_LOGIC;
  signal \poll_cnt_reg[16]_i_1_n_11\ : STD_LOGIC;
  signal \poll_cnt_reg[16]_i_1_n_12\ : STD_LOGIC;
  signal \poll_cnt_reg[16]_i_1_n_13\ : STD_LOGIC;
  signal \poll_cnt_reg[16]_i_1_n_14\ : STD_LOGIC;
  signal \poll_cnt_reg[16]_i_1_n_15\ : STD_LOGIC;
  signal \poll_cnt_reg[16]_i_1_n_2\ : STD_LOGIC;
  signal \poll_cnt_reg[16]_i_1_n_3\ : STD_LOGIC;
  signal \poll_cnt_reg[16]_i_1_n_5\ : STD_LOGIC;
  signal \poll_cnt_reg[16]_i_1_n_6\ : STD_LOGIC;
  signal \poll_cnt_reg[16]_i_1_n_7\ : STD_LOGIC;
  signal \poll_cnt_reg[16]_i_1_n_8\ : STD_LOGIC;
  signal \poll_cnt_reg[16]_i_1_n_9\ : STD_LOGIC;
  signal \poll_cnt_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \poll_cnt_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \poll_cnt_reg[8]_i_1_n_10\ : STD_LOGIC;
  signal \poll_cnt_reg[8]_i_1_n_11\ : STD_LOGIC;
  signal \poll_cnt_reg[8]_i_1_n_12\ : STD_LOGIC;
  signal \poll_cnt_reg[8]_i_1_n_13\ : STD_LOGIC;
  signal \poll_cnt_reg[8]_i_1_n_14\ : STD_LOGIC;
  signal \poll_cnt_reg[8]_i_1_n_15\ : STD_LOGIC;
  signal \poll_cnt_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \poll_cnt_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \poll_cnt_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \poll_cnt_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \poll_cnt_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal \poll_cnt_reg[8]_i_1_n_8\ : STD_LOGIC;
  signal \poll_cnt_reg[8]_i_1_n_9\ : STD_LOGIC;
  signal prog_done : STD_LOGIC;
  signal prog_done_i_10_n_0 : STD_LOGIC;
  signal prog_done_i_1_n_0 : STD_LOGIC;
  signal prog_done_i_3_n_0 : STD_LOGIC;
  signal prog_done_i_4_n_0 : STD_LOGIC;
  signal prog_done_i_5_n_0 : STD_LOGIC;
  signal prog_done_i_6_n_0 : STD_LOGIC;
  signal prog_done_i_7_n_0 : STD_LOGIC;
  signal prog_done_i_8_n_0 : STD_LOGIC;
  signal prog_done_i_9_n_0 : STD_LOGIC;
  signal prog_done_reg_i_2_n_1 : STD_LOGIC;
  signal prog_done_reg_i_2_n_2 : STD_LOGIC;
  signal prog_done_reg_i_2_n_3 : STD_LOGIC;
  signal prog_done_reg_i_2_n_5 : STD_LOGIC;
  signal prog_done_reg_i_2_n_6 : STD_LOGIC;
  signal prog_done_reg_i_2_n_7 : STD_LOGIC;
  signal rst_SR_reg : STD_LOGIC;
  signal rst_data_cnt : STD_LOGIC;
  signal rst_poll_cnt : STD_LOGIC;
  signal rst_reg : STD_LOGIC;
  attribute RTL_KEEP of rst_reg : signal is "yes";
  signal start_addr_reg : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \start_addr_reg[15]_i_2_n_0\ : STD_LOGIC;
  signal \start_addr_reg[15]_i_3_n_0\ : STD_LOGIC;
  signal \start_addr_reg[15]_i_4_n_0\ : STD_LOGIC;
  signal start_addr_reg_en : STD_LOGIC;
  signal \unlck_cnt[2]_i_1_n_0\ : STD_LOGIC;
  signal \unlck_cnt[8]_i_3_n_0\ : STD_LOGIC;
  signal unlck_cnt_en : STD_LOGIC;
  signal \unlck_cnt_reg__0\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \NLW_A_reg_reg[15]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_A_reg_reg[23]_i_2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 3 );
  signal \NLW_A_reg_reg[7]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_poll_cnt_reg[0]_i_3_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_poll_cnt_reg[16]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 3 );
  signal \NLW_poll_cnt_reg[8]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal NLW_prog_done_reg_i_2_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 3 to 3 );
  signal NLW_prog_done_reg_i_2_O_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \A_reg[23]_i_23\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \A_reg[23]_i_27\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \A_reg[23]_i_38\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \A_reg[23]_i_41\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \A_reg[23]_i_42\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \A_reg[7]_i_13\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \A_reg[7]_i_15\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of CS_N_i_10 : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of CS_N_i_11 : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of CS_N_i_12 : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of CS_N_i_5 : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \DQ_O[0]_i_2\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \DQ_O[1]_i_2\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \DQ_O[2]_i_2\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \DQ_O[3]_i_2\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \DQ_O[4]_i_12\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \DQ_O[4]_i_3\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \DQ_O[4]_i_9\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \DQ_O[5]_i_11\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \DQ_O[5]_i_3\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \DQ_O[7]_i_6\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \DQ_O[7]_i_9\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \DQ_O[8]_i_3\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \FSM_onehot_CurrentState[0]_i_10\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \FSM_onehot_CurrentState[12]_i_7\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \FSM_onehot_CurrentState[17]_i_5\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \FSM_onehot_CurrentState[22]_i_5\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \FSM_onehot_CurrentState[22]_i_7\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \FSM_onehot_CurrentState[22]_i_8\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \FSM_onehot_CurrentState[2]_i_4\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \FSM_onehot_CurrentState[2]_i_5\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \FSM_onehot_CurrentState[2]_i_6\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \FSM_onehot_CurrentState[39]_i_2\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \FSM_onehot_CurrentState[39]_i_4\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \FSM_onehot_CurrentState[40]_i_8\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \FSM_onehot_CurrentState[41]_i_4\ : label is "soft_lutpair28";
  attribute KEEP : string;
  attribute KEEP of \FSM_onehot_CurrentState_reg[0]\ : label is "yes";
  attribute KEEP of \FSM_onehot_CurrentState_reg[10]\ : label is "yes";
  attribute KEEP of \FSM_onehot_CurrentState_reg[11]\ : label is "yes";
  attribute KEEP of \FSM_onehot_CurrentState_reg[12]\ : label is "yes";
  attribute KEEP of \FSM_onehot_CurrentState_reg[13]\ : label is "yes";
  attribute KEEP of \FSM_onehot_CurrentState_reg[14]\ : label is "yes";
  attribute KEEP of \FSM_onehot_CurrentState_reg[15]\ : label is "yes";
  attribute KEEP of \FSM_onehot_CurrentState_reg[16]\ : label is "yes";
  attribute KEEP of \FSM_onehot_CurrentState_reg[17]\ : label is "yes";
  attribute KEEP of \FSM_onehot_CurrentState_reg[18]\ : label is "yes";
  attribute KEEP of \FSM_onehot_CurrentState_reg[19]\ : label is "yes";
  attribute KEEP of \FSM_onehot_CurrentState_reg[1]\ : label is "yes";
  attribute KEEP of \FSM_onehot_CurrentState_reg[20]\ : label is "yes";
  attribute KEEP of \FSM_onehot_CurrentState_reg[21]\ : label is "yes";
  attribute KEEP of \FSM_onehot_CurrentState_reg[22]\ : label is "yes";
  attribute KEEP of \FSM_onehot_CurrentState_reg[23]\ : label is "yes";
  attribute KEEP of \FSM_onehot_CurrentState_reg[24]\ : label is "yes";
  attribute KEEP of \FSM_onehot_CurrentState_reg[25]\ : label is "yes";
  attribute KEEP of \FSM_onehot_CurrentState_reg[26]\ : label is "yes";
  attribute KEEP of \FSM_onehot_CurrentState_reg[27]\ : label is "yes";
  attribute KEEP of \FSM_onehot_CurrentState_reg[28]\ : label is "yes";
  attribute KEEP of \FSM_onehot_CurrentState_reg[29]\ : label is "yes";
  attribute KEEP of \FSM_onehot_CurrentState_reg[2]\ : label is "yes";
  attribute KEEP of \FSM_onehot_CurrentState_reg[30]\ : label is "yes";
  attribute KEEP of \FSM_onehot_CurrentState_reg[31]\ : label is "yes";
  attribute KEEP of \FSM_onehot_CurrentState_reg[32]\ : label is "yes";
  attribute KEEP of \FSM_onehot_CurrentState_reg[33]\ : label is "yes";
  attribute KEEP of \FSM_onehot_CurrentState_reg[34]\ : label is "yes";
  attribute KEEP of \FSM_onehot_CurrentState_reg[35]\ : label is "yes";
  attribute KEEP of \FSM_onehot_CurrentState_reg[36]\ : label is "yes";
  attribute KEEP of \FSM_onehot_CurrentState_reg[37]\ : label is "yes";
  attribute KEEP of \FSM_onehot_CurrentState_reg[38]\ : label is "yes";
  attribute KEEP of \FSM_onehot_CurrentState_reg[39]\ : label is "yes";
  attribute KEEP of \FSM_onehot_CurrentState_reg[3]\ : label is "yes";
  attribute KEEP of \FSM_onehot_CurrentState_reg[40]\ : label is "yes";
  attribute KEEP of \FSM_onehot_CurrentState_reg[41]\ : label is "yes";
  attribute KEEP of \FSM_onehot_CurrentState_reg[42]\ : label is "yes";
  attribute KEEP of \FSM_onehot_CurrentState_reg[4]\ : label is "yes";
  attribute KEEP of \FSM_onehot_CurrentState_reg[5]\ : label is "yes";
  attribute KEEP of \FSM_onehot_CurrentState_reg[6]\ : label is "yes";
  attribute KEEP of \FSM_onehot_CurrentState_reg[7]\ : label is "yes";
  attribute KEEP of \FSM_onehot_CurrentState_reg[8]\ : label is "yes";
  attribute KEEP of \FSM_onehot_CurrentState_reg[9]\ : label is "yes";
  attribute SOFT_HLUTNM of WE_N_i_12 : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of WE_N_i_13 : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of WE_N_i_19 : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \data_cnt[2]_i_1\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \data_cnt[3]_i_1\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \data_cnt[5]_i_2\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \error_reg[1]_i_3\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \error_reg[2]_i_13\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \start_addr_reg[15]_i_4\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \unlck_cnt[0]_i_1\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \unlck_cnt[1]_i_1\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \unlck_cnt[2]_i_1\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \unlck_cnt[3]_i_1\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \unlck_cnt[4]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \unlck_cnt[6]_i_1\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \unlck_cnt[7]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \unlck_cnt[8]_i_2\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \unlck_cnt[8]_i_3\ : label is "soft_lutpair18";
begin
  A(24 downto 1) <= \^a\(24 downto 1);
  PROM_SR(7 downto 0) <= \^prom_sr\(7 downto 0);
  TRI_CTRL <= \^tri_ctrl\;
\A_reg[15]_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F708"
    )
        port map (
      I0 => \FSM_onehot_CurrentState_reg_n_0_[1]\,
      I1 => start_addr_reg(7),
      I2 => \A_reg[23]_i_30_n_0\,
      I3 => \^a\(16),
      O => \A_reg[15]_i_10_n_0\
    );
\A_reg[15]_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F708"
    )
        port map (
      I0 => \FSM_onehot_CurrentState_reg_n_0_[1]\,
      I1 => start_addr_reg(6),
      I2 => \A_reg[23]_i_30_n_0\,
      I3 => \^a\(15),
      O => \A_reg[15]_i_11_n_0\
    );
\A_reg[15]_i_12\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F708"
    )
        port map (
      I0 => \FSM_onehot_CurrentState_reg_n_0_[1]\,
      I1 => start_addr_reg(5),
      I2 => \A_reg[23]_i_30_n_0\,
      I3 => \^a\(14),
      O => \A_reg[15]_i_12_n_0\
    );
\A_reg[15]_i_13\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F708"
    )
        port map (
      I0 => \FSM_onehot_CurrentState_reg_n_0_[1]\,
      I1 => start_addr_reg(4),
      I2 => \A_reg[23]_i_30_n_0\,
      I3 => \^a\(13),
      O => \A_reg[15]_i_13_n_0\
    );
\A_reg[15]_i_14\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F708"
    )
        port map (
      I0 => \FSM_onehot_CurrentState_reg_n_0_[1]\,
      I1 => start_addr_reg(3),
      I2 => \A_reg[23]_i_30_n_0\,
      I3 => \^a\(12),
      O => \A_reg[15]_i_14_n_0\
    );
\A_reg[15]_i_15\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F708"
    )
        port map (
      I0 => \FSM_onehot_CurrentState_reg_n_0_[1]\,
      I1 => start_addr_reg(2),
      I2 => \A_reg[23]_i_30_n_0\,
      I3 => \^a\(11),
      O => \A_reg[15]_i_15_n_0\
    );
\A_reg[15]_i_16\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F708"
    )
        port map (
      I0 => \FSM_onehot_CurrentState_reg_n_0_[1]\,
      I1 => start_addr_reg(1),
      I2 => \A_reg[23]_i_30_n_0\,
      I3 => \^a\(10),
      O => \A_reg[15]_i_16_n_0\
    );
\A_reg[15]_i_17\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F708"
    )
        port map (
      I0 => \FSM_onehot_CurrentState_reg_n_0_[1]\,
      I1 => start_addr_reg(0),
      I2 => \A_reg[23]_i_30_n_0\,
      I3 => \^a\(9),
      O => \A_reg[15]_i_17_n_0\
    );
\A_reg[15]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => \A_reg[23]_i_30_n_0\,
      I1 => start_addr_reg(7),
      I2 => \FSM_onehot_CurrentState_reg_n_0_[1]\,
      O => A_inc(15)
    );
\A_reg[15]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => \A_reg[23]_i_30_n_0\,
      I1 => start_addr_reg(6),
      I2 => \FSM_onehot_CurrentState_reg_n_0_[1]\,
      O => A_inc(14)
    );
\A_reg[15]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => \A_reg[23]_i_30_n_0\,
      I1 => start_addr_reg(5),
      I2 => \FSM_onehot_CurrentState_reg_n_0_[1]\,
      O => A_inc(13)
    );
\A_reg[15]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => \A_reg[23]_i_30_n_0\,
      I1 => start_addr_reg(4),
      I2 => \FSM_onehot_CurrentState_reg_n_0_[1]\,
      O => A_inc(12)
    );
\A_reg[15]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => \A_reg[23]_i_30_n_0\,
      I1 => start_addr_reg(3),
      I2 => \FSM_onehot_CurrentState_reg_n_0_[1]\,
      O => A_inc(11)
    );
\A_reg[15]_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => \A_reg[23]_i_30_n_0\,
      I1 => start_addr_reg(2),
      I2 => \FSM_onehot_CurrentState_reg_n_0_[1]\,
      O => A_inc(10)
    );
\A_reg[15]_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => \A_reg[23]_i_30_n_0\,
      I1 => start_addr_reg(1),
      I2 => \FSM_onehot_CurrentState_reg_n_0_[1]\,
      O => A_inc(9)
    );
\A_reg[15]_i_9\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => \A_reg[23]_i_30_n_0\,
      I1 => start_addr_reg(0),
      I2 => \FSM_onehot_CurrentState_reg_n_0_[1]\,
      O => A_inc(8)
    );
\A_reg[23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFEEE"
    )
        port map (
      I0 => \A_reg[23]_i_3_n_0\,
      I1 => \FSM_onehot_CurrentState_reg_n_0_[30]\,
      I2 => \A_reg[23]_i_4_n_0\,
      I3 => \FSM_onehot_CurrentState_reg_n_0_[1]\,
      I4 => \A_reg[23]_i_5_n_0\,
      I5 => \A_reg[23]_i_6_n_0\,
      O => A_reg_en
    );
\A_reg[23]_i_10\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \A_reg[23]_i_4_n_0\,
      I1 => start_addr_reg(11),
      I2 => \FSM_onehot_CurrentState_reg_n_0_[1]\,
      O => A_inc(19)
    );
\A_reg[23]_i_11\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \A_reg[23]_i_4_n_0\,
      I1 => start_addr_reg(10),
      I2 => \FSM_onehot_CurrentState_reg_n_0_[1]\,
      O => A_inc(18)
    );
\A_reg[23]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFEEEEEEE"
    )
        port map (
      I0 => \A_reg[23]_i_28_n_0\,
      I1 => \A_reg[23]_i_29_n_0\,
      I2 => \FSM_onehot_CurrentState_reg_n_0_[1]\,
      I3 => start_addr_reg(9),
      I4 => \A_reg[23]_i_4_n_0\,
      I5 => \A_reg[23]_i_6_n_0\,
      O => A_inc(17)
    );
\A_reg[23]_i_13\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => \A_reg[23]_i_30_n_0\,
      I1 => start_addr_reg(8),
      I2 => \FSM_onehot_CurrentState_reg_n_0_[1]\,
      O => A_inc(16)
    );
\A_reg[23]_i_14\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \FSM_onehot_CurrentState_reg_n_0_[1]\,
      I1 => start_addr_reg(15),
      I2 => \A_reg[23]_i_4_n_0\,
      I3 => \^a\(24),
      O => \A_reg[23]_i_14_n_0\
    );
\A_reg[23]_i_15\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \FSM_onehot_CurrentState_reg_n_0_[1]\,
      I1 => start_addr_reg(14),
      I2 => \A_reg[23]_i_4_n_0\,
      I3 => \^a\(23),
      O => \A_reg[23]_i_15_n_0\
    );
\A_reg[23]_i_16\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \FSM_onehot_CurrentState_reg_n_0_[1]\,
      I1 => start_addr_reg(13),
      I2 => \A_reg[23]_i_4_n_0\,
      I3 => \^a\(22),
      O => \A_reg[23]_i_16_n_0\
    );
\A_reg[23]_i_17\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \FSM_onehot_CurrentState_reg_n_0_[1]\,
      I1 => start_addr_reg(12),
      I2 => \A_reg[23]_i_4_n_0\,
      I3 => \^a\(21),
      O => \A_reg[23]_i_17_n_0\
    );
\A_reg[23]_i_18\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \FSM_onehot_CurrentState_reg_n_0_[1]\,
      I1 => start_addr_reg(11),
      I2 => \A_reg[23]_i_4_n_0\,
      I3 => \^a\(20),
      O => \A_reg[23]_i_18_n_0\
    );
\A_reg[23]_i_19\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \FSM_onehot_CurrentState_reg_n_0_[1]\,
      I1 => start_addr_reg(10),
      I2 => \A_reg[23]_i_4_n_0\,
      I3 => \^a\(19),
      O => \A_reg[23]_i_19_n_0\
    );
\A_reg[23]_i_20\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000001FFFFFFFE"
    )
        port map (
      I0 => \A_reg[23]_i_31_n_0\,
      I1 => \FSM_onehot_CurrentState_reg_n_0_[10]\,
      I2 => \A_reg[23]_i_32_n_0\,
      I3 => \FSM_onehot_CurrentState_reg_n_0_[2]\,
      I4 => \A_reg[23]_i_33_n_0\,
      I5 => \^a\(18),
      O => \A_reg[23]_i_20_n_0\
    );
\A_reg[23]_i_21\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F708"
    )
        port map (
      I0 => \FSM_onehot_CurrentState_reg_n_0_[1]\,
      I1 => start_addr_reg(8),
      I2 => \A_reg[23]_i_30_n_0\,
      I3 => \^a\(17),
      O => \A_reg[23]_i_21_n_0\
    );
\A_reg[23]_i_22\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000080FF85FF"
    )
        port map (
      I0 => DATA(18),
      I1 => DATA(19),
      I2 => DATA(24),
      I3 => DATA(11),
      I4 => DATA(26),
      I5 => \A_reg[23]_i_34_n_0\,
      O => \A_reg[23]_i_22_n_0\
    );
\A_reg[23]_i_23\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFFDEFFB"
    )
        port map (
      I0 => DATA(4),
      I1 => DATA(3),
      I2 => DATA(2),
      I3 => DATA(9),
      I4 => DATA(8),
      O => \A_reg[23]_i_23_n_0\
    );
\A_reg[23]_i_24\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FBFBFBFFFBFFFBFF"
    )
        port map (
      I0 => DATA(29),
      I1 => DATA(30),
      I2 => DATA(31),
      I3 => DATA(11),
      I4 => DATA(26),
      I5 => DATA(24),
      O => \A_reg[23]_i_24_n_0\
    );
\A_reg[23]_i_25\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEFFFEFFFEFFFEFE"
    )
        port map (
      I0 => DATA(16),
      I1 => DATA(27),
      I2 => DATA(7),
      I3 => DATA(11),
      I4 => DATA(19),
      I5 => DATA(18),
      O => \A_reg[23]_i_25_n_0\
    );
\A_reg[23]_i_26\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFF7F"
    )
        port map (
      I0 => DATA(22),
      I1 => DATA(5),
      I2 => DATA(21),
      I3 => DATA(25),
      I4 => DATA(23),
      I5 => DATA(12),
      O => \A_reg[23]_i_26_n_0\
    );
\A_reg[23]_i_27\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F7FFCFFB"
    )
        port map (
      I0 => DATA(11),
      I1 => DATA(8),
      I2 => DATA(18),
      I3 => DATA(10),
      I4 => DATA(9),
      O => \A_reg[23]_i_27_n_0\
    );
\A_reg[23]_i_28\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \FSM_onehot_CurrentState_reg_n_0_[2]\,
      I1 => \FSM_onehot_CurrentState_reg_n_0_[7]\,
      I2 => \FSM_onehot_CurrentState_reg_n_0_[5]\,
      I3 => \FSM_onehot_CurrentState_reg_n_0_[3]\,
      I4 => \FSM_onehot_CurrentState_reg_n_0_[4]\,
      I5 => \FSM_onehot_CurrentState_reg_n_0_[6]\,
      O => \A_reg[23]_i_28_n_0\
    );
\A_reg[23]_i_29\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => \FSM_onehot_CurrentState_reg_n_0_[9]\,
      I1 => \FSM_onehot_CurrentState_reg_n_0_[8]\,
      I2 => \FSM_onehot_CurrentState_reg_n_0_[10]\,
      O => \A_reg[23]_i_29_n_0\
    );
\A_reg[23]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"444444F4"
    )
        port map (
      I0 => \DQ_O[15]_i_3_n_0\,
      I1 => \FSM_onehot_CurrentState_reg_n_0_[33]\,
      I2 => \FSM_onehot_CurrentState_reg_n_0_[38]\,
      I3 => prog_done,
      I4 => \poll_cnt[0]_i_4_n_0\,
      O => \A_reg[23]_i_3_n_0\
    );
\A_reg[23]_i_30\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFEBF"
    )
        port map (
      I0 => \DQ_O[4]_i_8_n_0\,
      I1 => DATA(2),
      I2 => DATA(9),
      I3 => DATA(4),
      I4 => \A_reg[23]_i_35_n_0\,
      I5 => \A_reg[23]_i_36_n_0\,
      O => \A_reg[23]_i_30_n_0\
    );
\A_reg[23]_i_31\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF00080000"
    )
        port map (
      I0 => \FSM_onehot_CurrentState_reg_n_0_[1]\,
      I1 => start_addr_reg(9),
      I2 => \A_reg[23]_i_27_n_0\,
      I3 => \A_reg[23]_i_37_n_0\,
      I4 => \A_reg[23]_i_22_n_0\,
      I5 => \A_reg[23]_i_6_n_0\,
      O => \A_reg[23]_i_31_n_0\
    );
\A_reg[23]_i_32\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \FSM_onehot_CurrentState_reg_n_0_[8]\,
      I1 => \FSM_onehot_CurrentState_reg_n_0_[9]\,
      O => \A_reg[23]_i_32_n_0\
    );
\A_reg[23]_i_33\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \FSM_onehot_CurrentState_reg_n_0_[6]\,
      I1 => \FSM_onehot_CurrentState_reg_n_0_[4]\,
      I2 => \FSM_onehot_CurrentState_reg_n_0_[3]\,
      I3 => \FSM_onehot_CurrentState_reg_n_0_[5]\,
      I4 => \FSM_onehot_CurrentState_reg_n_0_[7]\,
      O => \A_reg[23]_i_33_n_0\
    );
\A_reg[23]_i_34\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFEBBFFFFFFFFFFF"
    )
        port map (
      I0 => WE_N_i_8_n_0,
      I1 => DATA(26),
      I2 => DATA(28),
      I3 => DATA(19),
      I4 => DATA(20),
      I5 => DATA(6),
      O => \A_reg[23]_i_34_n_0\
    );
\A_reg[23]_i_35\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFDDFFFFF"
    )
        port map (
      I0 => DATA(20),
      I1 => DATA(19),
      I2 => DATA(28),
      I3 => DATA(26),
      I4 => DATA(6),
      I5 => \A_reg[23]_i_38_n_0\,
      O => \A_reg[23]_i_35_n_0\
    );
\A_reg[23]_i_36\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFEFFFFEF"
    )
        port map (
      I0 => \A_reg[23]_i_39_n_0\,
      I1 => CS_N_i_8_n_0,
      I2 => DATA(11),
      I3 => DATA(26),
      I4 => DATA(24),
      I5 => \A_reg[23]_i_26_n_0\,
      O => \A_reg[23]_i_36_n_0\
    );
\A_reg[23]_i_37\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFDFE3F"
    )
        port map (
      I0 => DATA(8),
      I1 => DATA(9),
      I2 => DATA(2),
      I3 => DATA(3),
      I4 => DATA(4),
      I5 => \A_reg[23]_i_40_n_0\,
      O => \A_reg[23]_i_37_n_0\
    );
\A_reg[23]_i_38\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7E"
    )
        port map (
      I0 => DATA(9),
      I1 => DATA(11),
      I2 => DATA(10),
      O => \A_reg[23]_i_38_n_0\
    );
\A_reg[23]_i_39\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => DATA(3),
      I1 => DATA(7),
      I2 => \A_reg[23]_i_41_n_0\,
      I3 => \A_reg[23]_i_42_n_0\,
      I4 => DATA(16),
      I5 => DATA(27),
      O => \A_reg[23]_i_39_n_0\
    );
\A_reg[23]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000002"
    )
        port map (
      I0 => \A_reg[23]_i_22_n_0\,
      I1 => \A_reg[23]_i_23_n_0\,
      I2 => \A_reg[23]_i_24_n_0\,
      I3 => \A_reg[23]_i_25_n_0\,
      I4 => \A_reg[23]_i_26_n_0\,
      I5 => \A_reg[23]_i_27_n_0\,
      O => \A_reg[23]_i_4_n_0\
    );
\A_reg[23]_i_40\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFEFEFEFEE"
    )
        port map (
      I0 => \A_reg[23]_i_26_n_0\,
      I1 => WE_N_i_17_n_0,
      I2 => DATA(11),
      I3 => DATA(19),
      I4 => DATA(18),
      I5 => \A_reg[23]_i_24_n_0\,
      O => \A_reg[23]_i_40_n_0\
    );
\A_reg[23]_i_41\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => DATA(13),
      I1 => DATA(14),
      O => \A_reg[23]_i_41_n_0\
    );
\A_reg[23]_i_42\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => DATA(18),
      I1 => DATA(8),
      O => \A_reg[23]_i_42_n_0\
    );
\A_reg[23]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"10"
    )
        port map (
      I0 => last_blk,
      I1 => \^prom_sr\(0),
      I2 => \FSM_onehot_CurrentState_reg_n_0_[10]\,
      O => \A_reg[23]_i_5_n_0\
    );
\A_reg[23]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \FSM_onehot_CurrentState_reg_n_0_[20]\,
      I1 => \poll_cnt[0]_i_4_n_0\,
      O => \A_reg[23]_i_6_n_0\
    );
\A_reg[23]_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \A_reg[23]_i_4_n_0\,
      I1 => start_addr_reg(14),
      I2 => \FSM_onehot_CurrentState_reg_n_0_[1]\,
      O => A_inc(22)
    );
\A_reg[23]_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \A_reg[23]_i_4_n_0\,
      I1 => start_addr_reg(13),
      I2 => \FSM_onehot_CurrentState_reg_n_0_[1]\,
      O => A_inc(21)
    );
\A_reg[23]_i_9\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \A_reg[23]_i_4_n_0\,
      I1 => start_addr_reg(12),
      I2 => \FSM_onehot_CurrentState_reg_n_0_[1]\,
      O => A_inc(20)
    );
\A_reg[7]_i_10\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => A_inc(1),
      I1 => \^a\(2),
      O => \A_reg[7]_i_10_n_0\
    );
\A_reg[7]_i_11\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => A_inc(0),
      I1 => \^a\(1),
      O => \A_reg[7]_i_11_n_0\
    );
\A_reg[7]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF7FFFFFFFFFFFFF"
    )
        port map (
      I0 => DATA(24),
      I1 => DATA(26),
      I2 => DATA(28),
      I3 => DATA(20),
      I4 => DATA(19),
      I5 => DATA(18),
      O => \A_reg[7]_i_12_n_0\
    );
\A_reg[7]_i_13\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EFFF"
    )
        port map (
      I0 => DATA(23),
      I1 => DATA(25),
      I2 => DATA(10),
      I3 => DATA(11),
      O => \A_reg[7]_i_13_n_0\
    );
\A_reg[7]_i_14\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFFFFFF"
    )
        port map (
      I0 => DATA(0),
      I1 => DATA(1),
      I2 => DATA(17),
      I3 => DATA(14),
      I4 => DATA(13),
      O => \A_reg[7]_i_14_n_0\
    );
\A_reg[7]_i_15\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFB"
    )
        port map (
      I0 => DATA(8),
      I1 => DATA(3),
      I2 => DATA(2),
      I3 => DATA(4),
      I4 => DATA(9),
      O => \A_reg[7]_i_15_n_0\
    );
\A_reg[7]_i_16\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000002"
    )
        port map (
      I0 => \DQ_O[4]_i_9_n_0\,
      I1 => DATA(15),
      I2 => DATA(12),
      I3 => DATA(7),
      I4 => DATA(27),
      I5 => DATA(16),
      O => \A_reg[7]_i_16_n_0\
    );
\A_reg[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0001000000000000"
    )
        port map (
      I0 => \A_reg[7]_i_12_n_0\,
      I1 => \A_reg[7]_i_13_n_0\,
      I2 => \A_reg[7]_i_14_n_0\,
      I3 => \A_reg[7]_i_15_n_0\,
      I4 => \A_reg[7]_i_16_n_0\,
      I5 => \FSM_onehot_CurrentState_reg_n_0_[1]\,
      O => A_inc(1)
    );
\A_reg[7]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF1010FF10"
    )
        port map (
      I0 => \poll_cnt[0]_i_4_n_0\,
      I1 => prog_done,
      I2 => \FSM_onehot_CurrentState_reg_n_0_[38]\,
      I3 => \FSM_onehot_CurrentState_reg_n_0_[33]\,
      I4 => \DQ_O[15]_i_3_n_0\,
      I5 => \FSM_onehot_CurrentState_reg_n_0_[30]\,
      O => A_inc(0)
    );
\A_reg[7]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^a\(8),
      O => \A_reg[7]_i_4_n_0\
    );
\A_reg[7]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^a\(7),
      O => \A_reg[7]_i_5_n_0\
    );
\A_reg[7]_i_6\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^a\(6),
      O => \A_reg[7]_i_6_n_0\
    );
\A_reg[7]_i_7\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^a\(5),
      O => \A_reg[7]_i_7_n_0\
    );
\A_reg[7]_i_8\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^a\(4),
      O => \A_reg[7]_i_8_n_0\
    );
\A_reg[7]_i_9\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^a\(3),
      O => \A_reg[7]_i_9_n_0\
    );
\A_reg_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => A_reg_en,
      D => \A_reg_reg[7]_i_1_n_15\,
      Q => \^a\(1),
      R => rst_reg
    );
\A_reg_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => A_reg_en,
      D => \A_reg_reg[15]_i_1_n_13\,
      Q => \^a\(11),
      R => rst_reg
    );
\A_reg_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => A_reg_en,
      D => \A_reg_reg[15]_i_1_n_12\,
      Q => \^a\(12),
      R => rst_reg
    );
\A_reg_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => A_reg_en,
      D => \A_reg_reg[15]_i_1_n_11\,
      Q => \^a\(13),
      R => rst_reg
    );
\A_reg_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => A_reg_en,
      D => \A_reg_reg[15]_i_1_n_10\,
      Q => \^a\(14),
      R => rst_reg
    );
\A_reg_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => A_reg_en,
      D => \A_reg_reg[15]_i_1_n_9\,
      Q => \^a\(15),
      R => rst_reg
    );
\A_reg_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => A_reg_en,
      D => \A_reg_reg[15]_i_1_n_8\,
      Q => \^a\(16),
      R => rst_reg
    );
\A_reg_reg[15]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => \A_reg_reg[7]_i_1_n_0\,
      CI_TOP => '0',
      CO(7) => \A_reg_reg[15]_i_1_n_0\,
      CO(6) => \A_reg_reg[15]_i_1_n_1\,
      CO(5) => \A_reg_reg[15]_i_1_n_2\,
      CO(4) => \A_reg_reg[15]_i_1_n_3\,
      CO(3) => \NLW_A_reg_reg[15]_i_1_CO_UNCONNECTED\(3),
      CO(2) => \A_reg_reg[15]_i_1_n_5\,
      CO(1) => \A_reg_reg[15]_i_1_n_6\,
      CO(0) => \A_reg_reg[15]_i_1_n_7\,
      DI(7 downto 0) => A_inc(15 downto 8),
      O(7) => \A_reg_reg[15]_i_1_n_8\,
      O(6) => \A_reg_reg[15]_i_1_n_9\,
      O(5) => \A_reg_reg[15]_i_1_n_10\,
      O(4) => \A_reg_reg[15]_i_1_n_11\,
      O(3) => \A_reg_reg[15]_i_1_n_12\,
      O(2) => \A_reg_reg[15]_i_1_n_13\,
      O(1) => \A_reg_reg[15]_i_1_n_14\,
      O(0) => \A_reg_reg[15]_i_1_n_15\,
      S(7) => \A_reg[15]_i_10_n_0\,
      S(6) => \A_reg[15]_i_11_n_0\,
      S(5) => \A_reg[15]_i_12_n_0\,
      S(4) => \A_reg[15]_i_13_n_0\,
      S(3) => \A_reg[15]_i_14_n_0\,
      S(2) => \A_reg[15]_i_15_n_0\,
      S(1) => \A_reg[15]_i_16_n_0\,
      S(0) => \A_reg[15]_i_17_n_0\
    );
\A_reg_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => A_reg_en,
      D => \A_reg_reg[23]_i_2_n_15\,
      Q => \^a\(17),
      R => rst_reg
    );
\A_reg_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => A_reg_en,
      D => \A_reg_reg[23]_i_2_n_14\,
      Q => \^a\(18),
      R => rst_reg
    );
\A_reg_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => A_reg_en,
      D => \A_reg_reg[23]_i_2_n_13\,
      Q => \^a\(19),
      R => rst_reg
    );
\A_reg_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => A_reg_en,
      D => \A_reg_reg[23]_i_2_n_12\,
      Q => \^a\(20),
      R => rst_reg
    );
\A_reg_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => A_reg_en,
      D => \A_reg_reg[7]_i_1_n_14\,
      Q => \^a\(2),
      R => rst_reg
    );
\A_reg_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => A_reg_en,
      D => \A_reg_reg[23]_i_2_n_11\,
      Q => \^a\(21),
      R => rst_reg
    );
\A_reg_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => A_reg_en,
      D => \A_reg_reg[23]_i_2_n_10\,
      Q => \^a\(22),
      R => rst_reg
    );
\A_reg_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => A_reg_en,
      D => \A_reg_reg[23]_i_2_n_9\,
      Q => \^a\(23),
      R => rst_reg
    );
\A_reg_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => A_reg_en,
      D => \A_reg_reg[23]_i_2_n_8\,
      Q => \^a\(24),
      R => rst_reg
    );
\A_reg_reg[23]_i_2\: unisim.vcomponents.CARRY8
     port map (
      CI => \A_reg_reg[15]_i_1_n_0\,
      CI_TOP => '0',
      CO(7) => \NLW_A_reg_reg[23]_i_2_CO_UNCONNECTED\(7),
      CO(6) => \A_reg_reg[23]_i_2_n_1\,
      CO(5) => \A_reg_reg[23]_i_2_n_2\,
      CO(4) => \A_reg_reg[23]_i_2_n_3\,
      CO(3) => \NLW_A_reg_reg[23]_i_2_CO_UNCONNECTED\(3),
      CO(2) => \A_reg_reg[23]_i_2_n_5\,
      CO(1) => \A_reg_reg[23]_i_2_n_6\,
      CO(0) => \A_reg_reg[23]_i_2_n_7\,
      DI(7) => '0',
      DI(6 downto 0) => A_inc(22 downto 16),
      O(7) => \A_reg_reg[23]_i_2_n_8\,
      O(6) => \A_reg_reg[23]_i_2_n_9\,
      O(5) => \A_reg_reg[23]_i_2_n_10\,
      O(4) => \A_reg_reg[23]_i_2_n_11\,
      O(3) => \A_reg_reg[23]_i_2_n_12\,
      O(2) => \A_reg_reg[23]_i_2_n_13\,
      O(1) => \A_reg_reg[23]_i_2_n_14\,
      O(0) => \A_reg_reg[23]_i_2_n_15\,
      S(7) => \A_reg[23]_i_14_n_0\,
      S(6) => \A_reg[23]_i_15_n_0\,
      S(5) => \A_reg[23]_i_16_n_0\,
      S(4) => \A_reg[23]_i_17_n_0\,
      S(3) => \A_reg[23]_i_18_n_0\,
      S(2) => \A_reg[23]_i_19_n_0\,
      S(1) => \A_reg[23]_i_20_n_0\,
      S(0) => \A_reg[23]_i_21_n_0\
    );
\A_reg_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => A_reg_en,
      D => \A_reg_reg[7]_i_1_n_13\,
      Q => \^a\(3),
      R => rst_reg
    );
\A_reg_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => A_reg_en,
      D => \A_reg_reg[7]_i_1_n_12\,
      Q => \^a\(4),
      R => rst_reg
    );
\A_reg_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => A_reg_en,
      D => \A_reg_reg[7]_i_1_n_11\,
      Q => \^a\(5),
      R => rst_reg
    );
\A_reg_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => A_reg_en,
      D => \A_reg_reg[7]_i_1_n_10\,
      Q => \^a\(6),
      R => rst_reg
    );
\A_reg_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => A_reg_en,
      D => \A_reg_reg[7]_i_1_n_9\,
      Q => \^a\(7),
      R => rst_reg
    );
\A_reg_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => A_reg_en,
      D => \A_reg_reg[7]_i_1_n_8\,
      Q => \^a\(8),
      R => rst_reg
    );
\A_reg_reg[7]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => '0',
      CI_TOP => '0',
      CO(7) => \A_reg_reg[7]_i_1_n_0\,
      CO(6) => \A_reg_reg[7]_i_1_n_1\,
      CO(5) => \A_reg_reg[7]_i_1_n_2\,
      CO(4) => \A_reg_reg[7]_i_1_n_3\,
      CO(3) => \NLW_A_reg_reg[7]_i_1_CO_UNCONNECTED\(3),
      CO(2) => \A_reg_reg[7]_i_1_n_5\,
      CO(1) => \A_reg_reg[7]_i_1_n_6\,
      CO(0) => \A_reg_reg[7]_i_1_n_7\,
      DI(7 downto 2) => B"000000",
      DI(1 downto 0) => A_inc(1 downto 0),
      O(7) => \A_reg_reg[7]_i_1_n_8\,
      O(6) => \A_reg_reg[7]_i_1_n_9\,
      O(5) => \A_reg_reg[7]_i_1_n_10\,
      O(4) => \A_reg_reg[7]_i_1_n_11\,
      O(3) => \A_reg_reg[7]_i_1_n_12\,
      O(2) => \A_reg_reg[7]_i_1_n_13\,
      O(1) => \A_reg_reg[7]_i_1_n_14\,
      O(0) => \A_reg_reg[7]_i_1_n_15\,
      S(7) => \A_reg[7]_i_4_n_0\,
      S(6) => \A_reg[7]_i_5_n_0\,
      S(5) => \A_reg[7]_i_6_n_0\,
      S(4) => \A_reg[7]_i_7_n_0\,
      S(3) => \A_reg[7]_i_8_n_0\,
      S(2) => \A_reg[7]_i_9_n_0\,
      S(1) => \A_reg[7]_i_10_n_0\,
      S(0) => \A_reg[7]_i_11_n_0\
    );
\A_reg_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => A_reg_en,
      D => \A_reg_reg[15]_i_1_n_15\,
      Q => \^a\(9),
      R => rst_reg
    );
\A_reg_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => A_reg_en,
      D => \A_reg_reg[15]_i_1_n_14\,
      Q => \^a\(10),
      R => rst_reg
    );
CS_N_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFABAA"
    )
        port map (
      I0 => rst_reg,
      I1 => CS_N_i_2_n_0,
      I2 => CS_N_i_3_n_0,
      I3 => \FSM_onehot_CurrentState_reg_n_0_[1]\,
      I4 => CS_N_i_4_n_0,
      O => \CS_N_reg__0\
    );
CS_N_i_10: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => DATA(26),
      I1 => DATA(24),
      O => CS_N_i_10_n_0
    );
CS_N_i_11: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => DATA(11),
      I1 => DATA(10),
      O => CS_N_i_11_n_0
    );
CS_N_i_12: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => DATA(12),
      I1 => DATA(23),
      I2 => DATA(25),
      O => CS_N_i_12_n_0
    );
CS_N_i_13: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => DATA(28),
      I1 => DATA(20),
      O => CS_N_i_13_n_0
    );
CS_N_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAAAAAAE"
    )
        port map (
      I0 => \start_addr_reg[15]_i_2_n_0\,
      I1 => CS_N_i_5_n_0,
      I2 => CS_N_i_6_n_0,
      I3 => CS_N_i_7_n_0,
      I4 => WE_N_i_9_n_0,
      I5 => WE_N_i_8_n_0,
      O => CS_N_i_2_n_0
    );
CS_N_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0001000000000000"
    )
        port map (
      I0 => CS_N_i_8_n_0,
      I1 => DATA(25),
      I2 => DATA(27),
      I3 => DATA(28),
      I4 => DATA(26),
      I5 => DATA(24),
      O => CS_N_i_3_n_0
    );
CS_N_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AAEA"
    )
        port map (
      I0 => CS_N_i_9_n_0,
      I1 => \FSM_onehot_CurrentState_reg_n_0_[10]\,
      I2 => last_blk,
      I3 => \^prom_sr\(0),
      O => CS_N_i_4_n_0
    );
CS_N_i_5: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00009800"
    )
        port map (
      I0 => DATA(19),
      I1 => DATA(18),
      I2 => DATA(20),
      I3 => WE_N_i_12_n_0,
      I4 => WE_N_i_11_n_0,
      O => CS_N_i_5_n_0
    );
CS_N_i_6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFF2F2FFF2"
    )
        port map (
      I0 => DATA(9),
      I1 => CS_N_i_10_n_0,
      I2 => CS_N_i_8_n_0,
      I3 => CS_N_i_11_n_0,
      I4 => DATA(4),
      I5 => CS_N_i_12_n_0,
      O => CS_N_i_6_n_0
    );
CS_N_i_7: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF22FF2F2FFFF"
    )
        port map (
      I0 => DATA(19),
      I1 => CS_N_i_13_n_0,
      I2 => DATA(2),
      I3 => DATA(4),
      I4 => DATA(3),
      I5 => DATA(8),
      O => CS_N_i_7_n_0
    );
CS_N_i_8: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FB"
    )
        port map (
      I0 => DATA(31),
      I1 => DATA(30),
      I2 => DATA(29),
      O => CS_N_i_8_n_0
    );
CS_N_i_9: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000F888"
    )
        port map (
      I0 => \FSM_onehot_CurrentState_reg_n_0_[20]\,
      I1 => last_blk,
      I2 => \FSM_onehot_CurrentState_reg_n_0_[38]\,
      I3 => prog_done,
      I4 => \poll_cnt[0]_i_4_n_0\,
      O => CS_N_i_9_n_0
    );
CS_N_reg: unisim.vcomponents.FDSE
     port map (
      C => CLK,
      CE => '1',
      D => \CS_N_reg__0\,
      Q => CS_N,
      S => rst_reg
    );
\DQ_O[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFF0FFF4FFF0"
    )
        port map (
      I0 => \DQ_O[15]_i_3_n_0\,
      I1 => \FSM_onehot_CurrentState_reg_n_0_[33]\,
      I2 => \DQ_O[5]_i_5_n_0\,
      I3 => \DQ_O[7]_i_3_n_0\,
      I4 => data_sel(0),
      I5 => \DQ_O[15]_i_2_n_0\,
      O => \DQ_O_reg__0\(0)
    );
\DQ_O[0]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => DATA(8),
      I1 => byte_sel_reg,
      I2 => DATA(24),
      O => data_sel(0)
    );
\DQ_O[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAA000A0EEE000E0"
    )
        port map (
      I0 => \DQ_O[15]_i_2_n_0\,
      I1 => \FSM_onehot_CurrentState_reg_n_0_[33]\,
      I2 => DATA(18),
      I3 => byte_sel_reg,
      I4 => DATA(2),
      I5 => \DQ_O[15]_i_3_n_0\,
      O => \DQ_O_reg__0\(10)
    );
\DQ_O[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAA000A0EEE000E0"
    )
        port map (
      I0 => \DQ_O[15]_i_2_n_0\,
      I1 => \FSM_onehot_CurrentState_reg_n_0_[33]\,
      I2 => DATA(19),
      I3 => byte_sel_reg,
      I4 => DATA(3),
      I5 => \DQ_O[15]_i_3_n_0\,
      O => \DQ_O_reg__0\(11)
    );
\DQ_O[12]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAA000A0EEE000E0"
    )
        port map (
      I0 => \DQ_O[15]_i_2_n_0\,
      I1 => \FSM_onehot_CurrentState_reg_n_0_[33]\,
      I2 => DATA(20),
      I3 => byte_sel_reg,
      I4 => DATA(4),
      I5 => \DQ_O[15]_i_3_n_0\,
      O => \DQ_O_reg__0\(12)
    );
\DQ_O[13]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAA000A0EEE000E0"
    )
        port map (
      I0 => \DQ_O[15]_i_2_n_0\,
      I1 => \FSM_onehot_CurrentState_reg_n_0_[33]\,
      I2 => DATA(21),
      I3 => byte_sel_reg,
      I4 => DATA(5),
      I5 => \DQ_O[15]_i_3_n_0\,
      O => \DQ_O_reg__0\(13)
    );
\DQ_O[14]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAA000A0EEE000E0"
    )
        port map (
      I0 => \DQ_O[15]_i_2_n_0\,
      I1 => \FSM_onehot_CurrentState_reg_n_0_[33]\,
      I2 => DATA(22),
      I3 => byte_sel_reg,
      I4 => DATA(6),
      I5 => \DQ_O[15]_i_3_n_0\,
      O => \DQ_O_reg__0\(14)
    );
\DQ_O[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAA000A0EEE000E0"
    )
        port map (
      I0 => \DQ_O[15]_i_2_n_0\,
      I1 => \FSM_onehot_CurrentState_reg_n_0_[33]\,
      I2 => DATA(23),
      I3 => byte_sel_reg,
      I4 => DATA(7),
      I5 => \DQ_O[15]_i_3_n_0\,
      O => \DQ_O_reg__0\(15)
    );
\DQ_O[15]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \FSM_onehot_CurrentState_reg_n_0_[30]\,
      I1 => \FSM_onehot_CurrentState_reg_n_0_[29]\,
      I2 => \FSM_onehot_CurrentState_reg_n_0_[28]\,
      I3 => \FSM_onehot_CurrentState_reg_n_0_[41]\,
      I4 => \FSM_onehot_CurrentState_reg_n_0_[31]\,
      O => \DQ_O[15]_i_2_n_0\
    );
\DQ_O[15]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => \data_cnt_reg__0\(8),
      I1 => \data_cnt_reg__0\(6),
      I2 => \data_cnt[6]_i_2_n_0\,
      I3 => \data_cnt_reg__0\(7),
      O => \DQ_O[15]_i_3_n_0\
    );
\DQ_O[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFAABAAA"
    )
        port map (
      I0 => \DQ_O[8]_i_2_n_0\,
      I1 => \DQ_O[15]_i_3_n_0\,
      I2 => \FSM_onehot_CurrentState_reg_n_0_[33]\,
      I3 => data_sel(1),
      I4 => \DQ_O[15]_i_2_n_0\,
      O => \DQ_O_reg__0\(1)
    );
\DQ_O[1]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => DATA(9),
      I1 => byte_sel_reg,
      I2 => DATA(25),
      O => data_sel(1)
    );
\DQ_O[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFAABAAA"
    )
        port map (
      I0 => \DQ_O[8]_i_2_n_0\,
      I1 => \DQ_O[15]_i_3_n_0\,
      I2 => \FSM_onehot_CurrentState_reg_n_0_[33]\,
      I3 => data_sel(2),
      I4 => \DQ_O[15]_i_2_n_0\,
      O => \DQ_O_reg__0\(2)
    );
\DQ_O[2]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => DATA(10),
      I1 => byte_sel_reg,
      I2 => DATA(26),
      O => data_sel(2)
    );
\DQ_O[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFF0FFF4FFF0"
    )
        port map (
      I0 => \DQ_O[15]_i_3_n_0\,
      I1 => \FSM_onehot_CurrentState_reg_n_0_[33]\,
      I2 => \DQ_O[5]_i_5_n_0\,
      I3 => \DQ_O[7]_i_3_n_0\,
      I4 => data_sel(3),
      I5 => \DQ_O[15]_i_2_n_0\,
      O => \DQ_O_reg__0\(3)
    );
\DQ_O[3]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => DATA(11),
      I1 => byte_sel_reg,
      I2 => DATA(27),
      O => data_sel(3)
    );
\DQ_O[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFEAFFFAFFEA"
    )
        port map (
      I0 => \DQ_O[4]_i_2_n_0\,
      I1 => \DQ_O[15]_i_2_n_0\,
      I2 => data_sel(4),
      I3 => \DQ_O[4]_i_4_n_0\,
      I4 => \FSM_onehot_CurrentState_reg_n_0_[33]\,
      I5 => \DQ_O[15]_i_3_n_0\,
      O => \DQ_O_reg__0\(4)
    );
\DQ_O[4]_i_10\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => DATA(3),
      I1 => DATA(8),
      O => \DQ_O[4]_i_10_n_0\
    );
\DQ_O[4]_i_11\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => DATA(19),
      I1 => DATA(18),
      O => \DQ_O[4]_i_11_n_0\
    );
\DQ_O[4]_i_12\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => DATA(26),
      I1 => DATA(24),
      O => \DQ_O[4]_i_12_n_0\
    );
\DQ_O[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \DQ_O[7]_i_4_n_0\,
      I1 => \DQ_O[6]_i_6_n_0\,
      I2 => \DQ_O[8]_i_2_n_0\,
      I3 => \FSM_onehot_CurrentState_reg_n_0_[12]\,
      I4 => \FSM_onehot_CurrentState_reg_n_0_[16]\,
      I5 => \DQ_O[7]_i_5_n_0\,
      O => \DQ_O[4]_i_2_n_0\
    );
\DQ_O[4]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => DATA(12),
      I1 => byte_sel_reg,
      I2 => DATA(28),
      O => data_sel(4)
    );
\DQ_O[4]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0001000000000000"
    )
        port map (
      I0 => \DQ_O[4]_i_5_n_0\,
      I1 => \DQ_O[4]_i_6_n_0\,
      I2 => \DQ_O[4]_i_7_n_0\,
      I3 => \DQ_O[4]_i_8_n_0\,
      I4 => \DQ_O[4]_i_9_n_0\,
      I5 => \FSM_onehot_CurrentState_reg_n_0_[1]\,
      O => \DQ_O[4]_i_4_n_0\
    );
\DQ_O[4]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFEFF"
    )
        port map (
      I0 => DATA(25),
      I1 => DATA(23),
      I2 => DATA(12),
      I3 => DATA(4),
      I4 => DATA(9),
      I5 => DATA(2),
      O => \DQ_O[4]_i_5_n_0\
    );
\DQ_O[4]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFBFFFFFF"
    )
        port map (
      I0 => DATA(7),
      I1 => DATA(20),
      I2 => DATA(16),
      I3 => DATA(13),
      I4 => DATA(14),
      I5 => \DQ_O[4]_i_10_n_0\,
      O => \DQ_O[4]_i_6_n_0\
    );
\DQ_O[4]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => DATA(11),
      I1 => DATA(10),
      I2 => \DQ_O[4]_i_11_n_0\,
      I3 => DATA(28),
      I4 => DATA(27),
      I5 => \DQ_O[4]_i_12_n_0\,
      O => \DQ_O[4]_i_7_n_0\
    );
\DQ_O[4]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BFFF"
    )
        port map (
      I0 => DATA(15),
      I1 => DATA(0),
      I2 => DATA(1),
      I3 => DATA(17),
      O => \DQ_O[4]_i_8_n_0\
    );
\DQ_O[4]_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00008000"
    )
        port map (
      I0 => DATA(21),
      I1 => DATA(5),
      I2 => DATA(22),
      I3 => DATA(6),
      I4 => CS_N_i_8_n_0,
      O => \DQ_O[4]_i_9_n_0\
    );
\DQ_O[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFEA"
    )
        port map (
      I0 => \DQ_O[5]_i_2_n_0\,
      I1 => data_sel(5),
      I2 => \DQ_O[15]_i_2_n_0\,
      I3 => \DQ_O[5]_i_4_n_0\,
      I4 => \DQ_O[5]_i_5_n_0\,
      I5 => \DQ_O[5]_i_6_n_0\,
      O => \DQ_O_reg__0\(5)
    );
\DQ_O[5]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000004"
    )
        port map (
      I0 => \unlck_cnt_reg__0\(7),
      I1 => \unlck_cnt_reg__0\(8),
      I2 => \unlck_cnt_reg__0\(2),
      I3 => \DQ_O[5]_i_11_n_0\,
      I4 => \unlck_cnt_reg__0\(0),
      I5 => \unlck_cnt_reg__0\(1),
      O => \DQ_O[5]_i_10_n_0\
    );
\DQ_O[5]_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \unlck_cnt_reg__0\(4),
      I1 => \unlck_cnt_reg__0\(3),
      I2 => \unlck_cnt_reg__0\(6),
      I3 => \unlck_cnt_reg__0\(5),
      O => \DQ_O[5]_i_11_n_0\
    );
\DQ_O[5]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF0008"
    )
        port map (
      I0 => \FSM_onehot_CurrentState_reg_n_0_[1]\,
      I1 => \A_reg[7]_i_16_n_0\,
      I2 => \DQ_O[5]_i_7_n_0\,
      I3 => \DQ_O[5]_i_8_n_0\,
      I4 => \DQ_O[5]_i_9_n_0\,
      O => \DQ_O[5]_i_2_n_0\
    );
\DQ_O[5]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => DATA(13),
      I1 => byte_sel_reg,
      I2 => DATA(29),
      O => data_sel(5)
    );
\DQ_O[5]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02FF0202"
    )
        port map (
      I0 => \FSM_onehot_CurrentState_reg_n_0_[10]\,
      I1 => \^prom_sr\(0),
      I2 => last_blk,
      I3 => \DQ_O[5]_i_10_n_0\,
      I4 => \FSM_onehot_CurrentState_reg_n_0_[11]\,
      O => \DQ_O[5]_i_4_n_0\
    );
\DQ_O[5]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFF101010"
    )
        port map (
      I0 => \poll_cnt[0]_i_4_n_0\,
      I1 => prog_done,
      I2 => \FSM_onehot_CurrentState_reg_n_0_[38]\,
      I3 => \^prom_sr\(7),
      I4 => \FSM_onehot_CurrentState_reg_n_0_[26]\,
      I5 => \FSM_onehot_CurrentState_reg_n_0_[22]\,
      O => \DQ_O[5]_i_5_n_0\
    );
\DQ_O[5]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \FSM_onehot_CurrentState_reg_n_0_[27]\,
      I1 => \FSM_onehot_CurrentState_reg_n_0_[42]\,
      I2 => \FSM_onehot_CurrentState_reg_n_0_[13]\,
      I3 => \FSM_onehot_CurrentState_reg_n_0_[14]\,
      I4 => \FSM_onehot_CurrentState_reg_n_0_[2]\,
      O => \DQ_O[5]_i_6_n_0\
    );
\DQ_O[5]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFFFEFFFEFFFEFFB"
    )
        port map (
      I0 => \DQ_O[7]_i_8_n_0\,
      I1 => DATA(20),
      I2 => DATA(24),
      I3 => DATA(26),
      I4 => DATA(19),
      I5 => DATA(18),
      O => \DQ_O[5]_i_7_n_0\
    );
\DQ_O[5]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFEFFFFBFFFFF"
    )
        port map (
      I0 => WE_N_i_13_n_0,
      I1 => DATA(9),
      I2 => DATA(8),
      I3 => DATA(18),
      I4 => DATA(2),
      I5 => DATA(3),
      O => \DQ_O[5]_i_8_n_0\
    );
\DQ_O[5]_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"45400000"
    )
        port map (
      I0 => \DQ_O[15]_i_3_n_0\,
      I1 => DATA(13),
      I2 => byte_sel_reg,
      I3 => DATA(29),
      I4 => \FSM_onehot_CurrentState_reg_n_0_[33]\,
      O => \DQ_O[5]_i_9_n_0\
    );
\DQ_O[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFEA"
    )
        port map (
      I0 => \DQ_O[6]_i_2_n_0\,
      I1 => \A_reg[23]_i_4_n_0\,
      I2 => \FSM_onehot_CurrentState_reg_n_0_[1]\,
      I3 => \DQ_O[6]_i_3_n_0\,
      I4 => \DQ_O[6]_i_4_n_0\,
      I5 => \DQ_O[6]_i_5_n_0\,
      O => \DQ_O_reg__0\(6)
    );
\DQ_O[6]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFB80000"
    )
        port map (
      I0 => DATA(14),
      I1 => byte_sel_reg,
      I2 => DATA(30),
      I3 => \DQ_O[15]_i_3_n_0\,
      I4 => \FSM_onehot_CurrentState_reg_n_0_[33]\,
      O => \DQ_O[6]_i_2_n_0\
    );
\DQ_O[6]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A808"
    )
        port map (
      I0 => \DQ_O[15]_i_2_n_0\,
      I1 => DATA(30),
      I2 => byte_sel_reg,
      I3 => DATA(14),
      O => \DQ_O[6]_i_3_n_0\
    );
\DQ_O[6]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \DQ_O[6]_i_6_n_0\,
      I1 => \FSM_onehot_CurrentState_reg_n_0_[27]\,
      I2 => \FSM_onehot_CurrentState_reg_n_0_[12]\,
      I3 => \DQ_O[6]_i_7_n_0\,
      I4 => \poll_cnt[0]_i_5_n_0\,
      I5 => \DQ_O[7]_i_5_n_0\,
      O => \DQ_O[6]_i_4_n_0\
    );
\DQ_O[6]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \DQ_O[5]_i_4_n_0\,
      I1 => \FSM_onehot_CurrentState_reg_n_0_[3]\,
      I2 => \FSM_onehot_CurrentState_reg_n_0_[4]\,
      I3 => \FSM_onehot_CurrentState_reg_n_0_[2]\,
      O => \DQ_O[6]_i_5_n_0\
    );
\DQ_O[6]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF02"
    )
        port map (
      I0 => \FSM_onehot_CurrentState_reg_n_0_[20]\,
      I1 => last_blk,
      I2 => \poll_cnt[0]_i_4_n_0\,
      I3 => \FSM_onehot_CurrentState_reg_n_0_[15]\,
      O => \DQ_O[6]_i_6_n_0\
    );
\DQ_O[6]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \FSM_onehot_CurrentState_reg_n_0_[16]\,
      I1 => \FSM_onehot_CurrentState_reg_n_0_[22]\,
      O => \DQ_O[6]_i_7_n_0\
    );
\DQ_O[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \DQ_O[7]_i_2_n_0\,
      I1 => \FSM_onehot_CurrentState_reg_n_0_[22]\,
      I2 => \FSM_onehot_CurrentState_reg_n_0_[16]\,
      I3 => \DQ_O[7]_i_3_n_0\,
      I4 => \FSM_onehot_CurrentState_reg_n_0_[15]\,
      I5 => \DQ_O[7]_i_4_n_0\,
      O => \DQ_O_reg__0\(7)
    );
\DQ_O[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFF8FFFCFFF8"
    )
        port map (
      I0 => \DQ_O[15]_i_3_n_0\,
      I1 => \FSM_onehot_CurrentState_reg_n_0_[33]\,
      I2 => \DQ_O[7]_i_5_n_0\,
      I3 => \poll_cnt[0]_i_5_n_0\,
      I4 => data_sel(7),
      I5 => \DQ_O[15]_i_2_n_0\,
      O => \DQ_O[7]_i_2_n_0\
    );
\DQ_O[7]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF08"
    )
        port map (
      I0 => \FSM_onehot_CurrentState_reg_n_0_[1]\,
      I1 => \A_reg[7]_i_16_n_0\,
      I2 => \DQ_O[7]_i_7_n_0\,
      I3 => \FSM_onehot_CurrentState_reg_n_0_[27]\,
      O => \DQ_O[7]_i_3_n_0\
    );
\DQ_O[7]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \FSM_onehot_CurrentState_reg_n_0_[5]\,
      I1 => \FSM_onehot_CurrentState_reg_n_0_[3]\,
      I2 => \FSM_onehot_CurrentState_reg_n_0_[4]\,
      I3 => \FSM_onehot_CurrentState_reg_n_0_[6]\,
      O => \DQ_O[7]_i_4_n_0\
    );
\DQ_O[7]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \FSM_onehot_CurrentState_reg_n_0_[32]\,
      I1 => \FSM_onehot_CurrentState_reg_n_0_[34]\,
      O => \DQ_O[7]_i_5_n_0\
    );
\DQ_O[7]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => DATA(15),
      I1 => byte_sel_reg,
      I2 => DATA(31),
      O => data_sel(7)
    );
\DQ_O[7]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFBFFFFFF"
    )
        port map (
      I0 => \DQ_O[7]_i_8_n_0\,
      I1 => DATA(8),
      I2 => DATA(3),
      I3 => DATA(2),
      I4 => DATA(9),
      I5 => \DQ_O[7]_i_9_n_0\,
      O => \DQ_O[7]_i_7_n_0\
    );
\DQ_O[7]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFEF"
    )
        port map (
      I0 => \A_reg[7]_i_14_n_0\,
      I1 => DATA(4),
      I2 => DATA(28),
      I3 => DATA(23),
      I4 => DATA(25),
      I5 => CS_N_i_11_n_0,
      O => \DQ_O[7]_i_8_n_0\
    );
\DQ_O[7]_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFD"
    )
        port map (
      I0 => DATA(20),
      I1 => DATA(19),
      I2 => DATA(26),
      I3 => DATA(24),
      I4 => DATA(18),
      O => \DQ_O[7]_i_9_n_0\
    );
\DQ_O[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFAABAAA"
    )
        port map (
      I0 => \DQ_O[8]_i_2_n_0\,
      I1 => \DQ_O[15]_i_3_n_0\,
      I2 => \FSM_onehot_CurrentState_reg_n_0_[33]\,
      I3 => data_sel(8),
      I4 => \DQ_O[15]_i_2_n_0\,
      O => \DQ_O_reg__0\(8)
    );
\DQ_O[8]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F8"
    )
        port map (
      I0 => \FSM_onehot_CurrentState_reg_n_0_[26]\,
      I1 => \^prom_sr\(7),
      I2 => \FSM_onehot_CurrentState_reg_n_0_[27]\,
      O => \DQ_O[8]_i_2_n_0\
    );
\DQ_O[8]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => DATA(0),
      I1 => byte_sel_reg,
      I2 => DATA(16),
      O => data_sel(8)
    );
\DQ_O[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAA000A0EEE000E0"
    )
        port map (
      I0 => \DQ_O[15]_i_2_n_0\,
      I1 => \FSM_onehot_CurrentState_reg_n_0_[33]\,
      I2 => DATA(17),
      I3 => byte_sel_reg,
      I4 => DATA(1),
      I5 => \DQ_O[15]_i_3_n_0\,
      O => \DQ_O_reg__0\(9)
    );
\DQ_O_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \DQ_O_reg__0\(0),
      Q => DQ_O(0),
      R => rst_reg
    );
\DQ_O_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \DQ_O_reg__0\(10),
      Q => DQ_O(10),
      R => rst_reg
    );
\DQ_O_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \DQ_O_reg__0\(11),
      Q => DQ_O(11),
      R => rst_reg
    );
\DQ_O_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \DQ_O_reg__0\(12),
      Q => DQ_O(12),
      R => rst_reg
    );
\DQ_O_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \DQ_O_reg__0\(13),
      Q => DQ_O(13),
      R => rst_reg
    );
\DQ_O_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \DQ_O_reg__0\(14),
      Q => DQ_O(14),
      R => rst_reg
    );
\DQ_O_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \DQ_O_reg__0\(15),
      Q => DQ_O(15),
      R => rst_reg
    );
\DQ_O_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \DQ_O_reg__0\(1),
      Q => DQ_O(1),
      R => rst_reg
    );
\DQ_O_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \DQ_O_reg__0\(2),
      Q => DQ_O(2),
      R => rst_reg
    );
\DQ_O_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \DQ_O_reg__0\(3),
      Q => DQ_O(3),
      R => rst_reg
    );
\DQ_O_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \DQ_O_reg__0\(4),
      Q => DQ_O(4),
      R => rst_reg
    );
\DQ_O_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \DQ_O_reg__0\(5),
      Q => DQ_O(5),
      R => rst_reg
    );
\DQ_O_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \DQ_O_reg__0\(6),
      Q => DQ_O(6),
      R => rst_reg
    );
\DQ_O_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \DQ_O_reg__0\(7),
      Q => DQ_O(7),
      R => rst_reg
    );
\DQ_O_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \DQ_O_reg__0\(8),
      Q => DQ_O(8),
      R => rst_reg
    );
\DQ_O_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \DQ_O_reg__0\(9),
      Q => DQ_O(9),
      R => rst_reg
    );
FIFO_RD_EN_INST_0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F8FFF8FFF8FFF8F8"
    )
        port map (
      I0 => FIFO_RD_EN_reg1_out,
      I1 => \FSM_onehot_CurrentState_reg_n_0_[41]\,
      I2 => FIFO_RD_EN_INST_0_i_2_n_0,
      I3 => FIFO_EMPTY,
      I4 => rst_reg,
      I5 => \FSM_onehot_CurrentState_reg_n_0_[27]\,
      O => FIFO_RD_EN
    );
FIFO_RD_EN_INST_0_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4444444444444440"
    )
        port map (
      I0 => FIFO_EMPTY,
      I1 => byte_sel_reg,
      I2 => FIFO_RD_EN_INST_0_i_3_n_0,
      I3 => \data_cnt_reg__0\(8),
      I4 => \data_cnt_reg__0\(6),
      I5 => \data_cnt_reg__0\(7),
      O => FIFO_RD_EN_reg1_out
    );
FIFO_RD_EN_INST_0_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"10"
    )
        port map (
      I0 => \DQ_O[15]_i_3_n_0\,
      I1 => FIFO_EMPTY,
      I2 => \FSM_onehot_CurrentState_reg_n_0_[31]\,
      O => FIFO_RD_EN_INST_0_i_2_n_0
    );
FIFO_RD_EN_INST_0_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF7FFFFFFFFFF"
    )
        port map (
      I0 => \data_cnt_reg__0\(3),
      I1 => \data_cnt_reg__0\(2),
      I2 => \data_cnt_reg__0\(0),
      I3 => \data_cnt_reg__0\(1),
      I4 => \data_cnt_reg__0\(5),
      I5 => \data_cnt_reg__0\(4),
      O => FIFO_RD_EN_INST_0_i_3_n_0
    );
\FSM_onehot_CurrentState[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFEEFE"
    )
        port map (
      I0 => \FSM_onehot_CurrentState[0]_i_2_n_0\,
      I1 => \FSM_onehot_CurrentState[0]_i_3_n_0\,
      I2 => \FSM_onehot_CurrentState[40]_i_3_n_0\,
      I3 => \FSM_onehot_CurrentState[0]_i_4_n_0\,
      I4 => \FSM_onehot_CurrentState[0]_i_5_n_0\,
      I5 => \FSM_onehot_CurrentState[0]_i_6_n_0\,
      O => \FSM_onehot_CurrentState[0]_i_1_n_0\
    );
\FSM_onehot_CurrentState[0]_i_10\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"DF"
    )
        port map (
      I0 => DATA(9),
      I1 => DATA(26),
      I2 => DATA(2),
      O => \FSM_onehot_CurrentState[0]_i_10_n_0\
    );
\FSM_onehot_CurrentState[0]_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0008"
    )
        port map (
      I0 => prog_done,
      I1 => \FSM_onehot_CurrentState_reg_n_0_[38]\,
      I2 => \FSM_onehot_CurrentState_reg_n_0_[35]\,
      I3 => \FSM_onehot_CurrentState[39]_i_2_n_0\,
      O => \FSM_onehot_CurrentState[0]_i_11_n_0\
    );
\FSM_onehot_CurrentState[0]_i_12\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000010"
    )
        port map (
      I0 => \FSM_onehot_CurrentState_reg_n_0_[18]\,
      I1 => \FSM_onehot_CurrentState_reg_n_0_[19]\,
      I2 => \FSM_onehot_CurrentState_reg_n_0_[20]\,
      I3 => \FSM_onehot_CurrentState_reg_n_0_[16]\,
      I4 => \FSM_onehot_CurrentState[20]_i_2_n_0\,
      O => \FSM_onehot_CurrentState[0]_i_12_n_0\
    );
\FSM_onehot_CurrentState[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \FSM_onehot_CurrentState[12]_i_7_n_0\,
      I1 => \FSM_onehot_CurrentState[0]_i_7_n_0\,
      I2 => FIFO_EMPTY,
      I3 => rst_reg,
      I4 => \FSM_onehot_CurrentState[2]_i_3_n_0\,
      I5 => \FSM_onehot_CurrentState[2]_i_6_n_0\,
      O => \FSM_onehot_CurrentState[0]_i_2_n_0\
    );
\FSM_onehot_CurrentState[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEFFFCFCFEFEFCFC"
    )
        port map (
      I0 => \FSM_onehot_CurrentState[22]_i_3_n_0\,
      I1 => \FSM_onehot_CurrentState[0]_i_8_n_0\,
      I2 => \FSM_onehot_CurrentState[0]_i_9_n_0\,
      I3 => DATA(24),
      I4 => \FSM_onehot_CurrentState[12]_i_8_n_0\,
      I5 => \FSM_onehot_CurrentState[0]_i_10_n_0\,
      O => \FSM_onehot_CurrentState[0]_i_3_n_0\
    );
\FSM_onehot_CurrentState[0]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => \FSM_onehot_CurrentState_reg_n_0_[39]\,
      I1 => \FSM_onehot_CurrentState_reg_n_0_[35]\,
      I2 => \FSM_onehot_CurrentState_reg_n_0_[40]\,
      O => \FSM_onehot_CurrentState[0]_i_4_n_0\
    );
\FSM_onehot_CurrentState[0]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"20220000"
    )
        port map (
      I0 => \FSM_onehot_CurrentState_reg_n_0_[1]\,
      I1 => rst_reg,
      I2 => DATA(19),
      I3 => DATA(24),
      I4 => \FSM_onehot_CurrentState[2]_i_5_n_0\,
      O => \FSM_onehot_CurrentState[0]_i_5_n_0\
    );
\FSM_onehot_CurrentState[0]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000020000"
    )
        port map (
      I0 => \FSM_onehot_CurrentState[0]_i_11_n_0\,
      I1 => \FSM_onehot_CurrentState_reg_n_0_[36]\,
      I2 => \FSM_onehot_CurrentState_reg_n_0_[37]\,
      I3 => \FSM_onehot_CurrentState_reg_n_0_[33]\,
      I4 => \FSM_onehot_CurrentState[41]_i_3_n_0\,
      I5 => OE_N_i_6_n_0,
      O => \FSM_onehot_CurrentState[0]_i_6_n_0\
    );
\FSM_onehot_CurrentState[0]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0040"
    )
        port map (
      I0 => rst_reg,
      I1 => \FSM_onehot_CurrentState_reg_n_0_[1]\,
      I2 => DATA(24),
      I3 => DATA(19),
      O => \FSM_onehot_CurrentState[0]_i_7_n_0\
    );
\FSM_onehot_CurrentState[0]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F2000000220000"
    )
        port map (
      I0 => \FSM_onehot_CurrentState[22]_i_5_n_0\,
      I1 => DATA(19),
      I2 => \FSM_onehot_CurrentState[2]_i_4_n_0\,
      I3 => rst_reg,
      I4 => \FSM_onehot_CurrentState_reg_n_0_[1]\,
      I5 => DATA(24),
      O => \FSM_onehot_CurrentState[0]_i_8_n_0\
    );
\FSM_onehot_CurrentState[0]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0080008088880080"
    )
        port map (
      I0 => last_blk,
      I1 => \FSM_onehot_CurrentState[2]_i_8_n_0\,
      I2 => \FSM_onehot_CurrentState_reg_n_0_[10]\,
      I3 => \^prom_sr\(0),
      I4 => \FSM_onehot_CurrentState[0]_i_12_n_0\,
      I5 => \FSM_onehot_CurrentState[39]_i_2_n_0\,
      O => \FSM_onehot_CurrentState[0]_i_9_n_0\
    );
\FSM_onehot_CurrentState[10]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => \FSM_onehot_CurrentState_reg_n_0_[8]\,
      I1 => \FSM_onehot_CurrentState_reg_n_0_[9]\,
      I2 => OE_N_i_5_n_0,
      O => \FSM_onehot_CurrentState[10]_i_1_n_0\
    );
\FSM_onehot_CurrentState[11]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000008"
    )
        port map (
      I0 => \FSM_onehot_CurrentState_reg_n_0_[10]\,
      I1 => \^prom_sr\(0),
      I2 => \FSM_onehot_CurrentState_reg_n_0_[8]\,
      I3 => \FSM_onehot_CurrentState_reg_n_0_[9]\,
      I4 => OE_N_i_5_n_0,
      O => \FSM_onehot_CurrentState[11]_i_1_n_0\
    );
\FSM_onehot_CurrentState[12]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0020FFFF00200020"
    )
        port map (
      I0 => \FSM_onehot_CurrentState[21]_i_2_n_0\,
      I1 => last_blk,
      I2 => \FSM_onehot_CurrentState[12]_i_3_n_0\,
      I3 => \FSM_onehot_CurrentState[39]_i_2_n_0\,
      I4 => \FSM_onehot_CurrentState[22]_i_3_n_0\,
      I5 => \FSM_onehot_CurrentState[12]_i_4_n_0\,
      O => \FSM_onehot_CurrentState[12]_i_1_n_0\
    );
\FSM_onehot_CurrentState[12]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8008"
    )
        port map (
      I0 => \FSM_onehot_CurrentState[12]_i_5_n_0\,
      I1 => \FSM_onehot_CurrentState[12]_i_6_n_0\,
      I2 => \^a\(18),
      I3 => end_blk(0),
      O => last_blk
    );
\FSM_onehot_CurrentState[12]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \FSM_onehot_CurrentState_reg_n_0_[20]\,
      I1 => \FSM_onehot_CurrentState_reg_n_0_[16]\,
      O => \FSM_onehot_CurrentState[12]_i_3_n_0\
    );
\FSM_onehot_CurrentState[12]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000040"
    )
        port map (
      I0 => \FSM_onehot_CurrentState[12]_i_7_n_0\,
      I1 => \FSM_onehot_CurrentState[12]_i_8_n_0\,
      I2 => DATA(24),
      I3 => DATA(19),
      I4 => \FSM_onehot_CurrentState[22]_i_5_n_0\,
      I5 => \FSM_onehot_CurrentState[2]_i_4_n_0\,
      O => \FSM_onehot_CurrentState[12]_i_4_n_0\
    );
\FSM_onehot_CurrentState[12]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => end_blk(6),
      I1 => \^a\(24),
      I2 => \^a\(23),
      I3 => end_blk(5),
      I4 => \^a\(22),
      I5 => end_blk(4),
      O => \FSM_onehot_CurrentState[12]_i_5_n_0\
    );
\FSM_onehot_CurrentState[12]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^a\(20),
      I1 => end_blk(2),
      I2 => \^a\(19),
      I3 => end_blk(1),
      I4 => end_blk(3),
      I5 => \^a\(21),
      O => \FSM_onehot_CurrentState[12]_i_6_n_0\
    );
\FSM_onehot_CurrentState[12]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFD"
    )
        port map (
      I0 => DATA(4),
      I1 => DATA(10),
      I2 => DATA(28),
      I3 => DATA(11),
      O => \FSM_onehot_CurrentState[12]_i_7_n_0\
    );
\FSM_onehot_CurrentState[12]_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \FSM_onehot_CurrentState_reg_n_0_[1]\,
      I1 => rst_reg,
      O => \FSM_onehot_CurrentState[12]_i_8_n_0\
    );
\FSM_onehot_CurrentState[13]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => \FSM_onehot_CurrentState_reg_n_0_[11]\,
      I1 => \FSM_onehot_CurrentState_reg_n_0_[12]\,
      I2 => \FSM_onehot_CurrentState[20]_i_3_n_0\,
      O => \FSM_onehot_CurrentState[13]_i_1_n_0\
    );
\FSM_onehot_CurrentState[14]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => \FSM_onehot_CurrentState_reg_n_0_[11]\,
      I1 => \FSM_onehot_CurrentState_reg_n_0_[12]\,
      I2 => \FSM_onehot_CurrentState_reg_n_0_[13]\,
      I3 => \FSM_onehot_CurrentState[20]_i_3_n_0\,
      O => \FSM_onehot_CurrentState[14]_i_1_n_0\
    );
\FSM_onehot_CurrentState[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00100000"
    )
        port map (
      I0 => \FSM_onehot_CurrentState_reg_n_0_[11]\,
      I1 => \FSM_onehot_CurrentState_reg_n_0_[12]\,
      I2 => \FSM_onehot_CurrentState_reg_n_0_[14]\,
      I3 => \FSM_onehot_CurrentState_reg_n_0_[13]\,
      I4 => \FSM_onehot_CurrentState[20]_i_3_n_0\,
      O => \FSM_onehot_CurrentState[15]_i_1_n_0\
    );
\FSM_onehot_CurrentState[16]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0001000000000000"
    )
        port map (
      I0 => \FSM_onehot_CurrentState_reg_n_0_[14]\,
      I1 => \FSM_onehot_CurrentState_reg_n_0_[13]\,
      I2 => \FSM_onehot_CurrentState_reg_n_0_[12]\,
      I3 => \FSM_onehot_CurrentState_reg_n_0_[11]\,
      I4 => \FSM_onehot_CurrentState_reg_n_0_[15]\,
      I5 => \FSM_onehot_CurrentState[20]_i_3_n_0\,
      O => \FSM_onehot_CurrentState[16]_i_1_n_0\
    );
\FSM_onehot_CurrentState[17]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF08080808080808"
    )
        port map (
      I0 => \FSM_onehot_CurrentState[20]_i_3_n_0\,
      I1 => \FSM_onehot_CurrentState_reg_n_0_[16]\,
      I2 => \FSM_onehot_CurrentState[18]_i_2_n_0\,
      I3 => \FSM_onehot_CurrentState[25]_i_2_n_0\,
      I4 => \FSM_onehot_CurrentState_reg_n_0_[21]\,
      I5 => \FSM_onehot_CurrentState[17]_i_2_n_0\,
      O => \FSM_onehot_CurrentState[17]_i_1_n_0\
    );
\FSM_onehot_CurrentState[17]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFEF"
    )
        port map (
      I0 => \FSM_onehot_CurrentState[17]_i_3_n_0\,
      I1 => \FSM_onehot_CurrentState[17]_i_4_n_0\,
      I2 => \FSM_onehot_CurrentState[17]_i_5_n_0\,
      I3 => poll_cnt_reg(16),
      I4 => poll_cnt_reg(17),
      I5 => \FSM_onehot_CurrentState[40]_i_6_n_0\,
      O => \FSM_onehot_CurrentState[17]_i_2_n_0\
    );
\FSM_onehot_CurrentState[17]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFF7FFF"
    )
        port map (
      I0 => poll_cnt_reg(22),
      I1 => poll_cnt_reg(23),
      I2 => poll_cnt_reg(20),
      I3 => poll_cnt_reg(21),
      I4 => poll_cnt_reg(6),
      I5 => poll_cnt_reg(4),
      O => \FSM_onehot_CurrentState[17]_i_3_n_0\
    );
\FSM_onehot_CurrentState[17]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFD"
    )
        port map (
      I0 => poll_cnt_reg(13),
      I1 => poll_cnt_reg(9),
      I2 => poll_cnt_reg(15),
      I3 => poll_cnt_reg(14),
      O => \FSM_onehot_CurrentState[17]_i_4_n_0\
    );
\FSM_onehot_CurrentState[17]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => poll_cnt_reg(18),
      I1 => poll_cnt_reg(19),
      O => \FSM_onehot_CurrentState[17]_i_5_n_0\
    );
\FSM_onehot_CurrentState[18]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0400"
    )
        port map (
      I0 => \FSM_onehot_CurrentState[18]_i_2_n_0\,
      I1 => \FSM_onehot_CurrentState_reg_n_0_[17]\,
      I2 => \FSM_onehot_CurrentState_reg_n_0_[16]\,
      I3 => \FSM_onehot_CurrentState[20]_i_3_n_0\,
      O => \FSM_onehot_CurrentState[18]_i_1_n_0\
    );
\FSM_onehot_CurrentState[18]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \FSM_onehot_CurrentState_reg_n_0_[11]\,
      I1 => \FSM_onehot_CurrentState_reg_n_0_[12]\,
      I2 => \FSM_onehot_CurrentState_reg_n_0_[13]\,
      I3 => \FSM_onehot_CurrentState_reg_n_0_[14]\,
      I4 => \FSM_onehot_CurrentState_reg_n_0_[15]\,
      O => \FSM_onehot_CurrentState[18]_i_2_n_0\
    );
\FSM_onehot_CurrentState[19]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0400"
    )
        port map (
      I0 => \FSM_onehot_CurrentState_reg_n_0_[16]\,
      I1 => \FSM_onehot_CurrentState_reg_n_0_[18]\,
      I2 => \FSM_onehot_CurrentState[20]_i_2_n_0\,
      I3 => \FSM_onehot_CurrentState[20]_i_3_n_0\,
      O => \FSM_onehot_CurrentState[19]_i_1_n_0\
    );
\FSM_onehot_CurrentState[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => rst_reg,
      I1 => FIFO_EMPTY,
      O => \FSM_onehot_CurrentState[1]_i_1_n_0\
    );
\FSM_onehot_CurrentState[20]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00040000"
    )
        port map (
      I0 => \FSM_onehot_CurrentState_reg_n_0_[16]\,
      I1 => \FSM_onehot_CurrentState_reg_n_0_[19]\,
      I2 => \FSM_onehot_CurrentState_reg_n_0_[18]\,
      I3 => \FSM_onehot_CurrentState[20]_i_2_n_0\,
      I4 => \FSM_onehot_CurrentState[20]_i_3_n_0\,
      O => \FSM_onehot_CurrentState[20]_i_1_n_0\
    );
\FSM_onehot_CurrentState[20]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \FSM_onehot_CurrentState_reg_n_0_[15]\,
      I1 => \FSM_onehot_CurrentState_reg_n_0_[14]\,
      I2 => \FSM_onehot_CurrentState_reg_n_0_[13]\,
      I3 => \FSM_onehot_CurrentState_reg_n_0_[12]\,
      I4 => \FSM_onehot_CurrentState_reg_n_0_[11]\,
      I5 => \FSM_onehot_CurrentState_reg_n_0_[17]\,
      O => \FSM_onehot_CurrentState[20]_i_2_n_0\
    );
\FSM_onehot_CurrentState[20]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => \FSM_onehot_CurrentState_reg_n_0_[8]\,
      I1 => \FSM_onehot_CurrentState_reg_n_0_[9]\,
      I2 => \FSM_onehot_CurrentState_reg_n_0_[7]\,
      I3 => \DQ_O[7]_i_4_n_0\,
      I4 => \FSM_onehot_CurrentState[8]_i_2_n_0\,
      I5 => \FSM_onehot_CurrentState_reg_n_0_[10]\,
      O => \FSM_onehot_CurrentState[20]_i_3_n_0\
    );
\FSM_onehot_CurrentState[21]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0400"
    )
        port map (
      I0 => \^prom_sr\(7),
      I1 => \FSM_onehot_CurrentState_reg_n_0_[20]\,
      I2 => \FSM_onehot_CurrentState_reg_n_0_[16]\,
      I3 => \FSM_onehot_CurrentState[21]_i_2_n_0\,
      O => \FSM_onehot_CurrentState[21]_i_1_n_0\
    );
\FSM_onehot_CurrentState[21]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => \FSM_onehot_CurrentState[20]_i_2_n_0\,
      I1 => \A_reg[23]_i_32_n_0\,
      I2 => \A_reg[23]_i_33_n_0\,
      I3 => \FSM_onehot_CurrentState[8]_i_2_n_0\,
      I4 => \FSM_onehot_CurrentState_reg_n_0_[10]\,
      I5 => TRI_CTRL_INST_0_i_1_n_0,
      O => \FSM_onehot_CurrentState[21]_i_2_n_0\
    );
\FSM_onehot_CurrentState[22]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF00002000"
    )
        port map (
      I0 => DATA(9),
      I1 => DATA(26),
      I2 => DATA(2),
      I3 => \FSM_onehot_CurrentState[22]_i_2_n_0\,
      I4 => \FSM_onehot_CurrentState[22]_i_3_n_0\,
      I5 => \FSM_onehot_CurrentState[22]_i_4_n_0\,
      O => \FSM_onehot_CurrentState[22]_i_1_n_0\
    );
\FSM_onehot_CurrentState[22]_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"DFFF"
    )
        port map (
      I0 => DATA(17),
      I1 => DATA(16),
      I2 => DATA(22),
      I3 => DATA(21),
      O => \FSM_onehot_CurrentState[22]_i_10_n_0\
    );
\FSM_onehot_CurrentState[22]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000010000"
    )
        port map (
      I0 => \FSM_onehot_CurrentState[2]_i_5_n_0\,
      I1 => DATA(24),
      I2 => DATA(19),
      I3 => rst_reg,
      I4 => \FSM_onehot_CurrentState_reg_n_0_[1]\,
      I5 => \FSM_onehot_CurrentState[22]_i_5_n_0\,
      O => \FSM_onehot_CurrentState[22]_i_2_n_0\
    );
\FSM_onehot_CurrentState[22]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFEFFFFF"
    )
        port map (
      I0 => \FSM_onehot_CurrentState[22]_i_6_n_0\,
      I1 => \FSM_onehot_CurrentState[22]_i_7_n_0\,
      I2 => DATA(0),
      I3 => DATA(31),
      I4 => DATA(30),
      I5 => \FSM_onehot_CurrentState[22]_i_8_n_0\,
      O => \FSM_onehot_CurrentState[22]_i_3_n_0\
    );
\FSM_onehot_CurrentState[22]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8888888C88888888"
    )
        port map (
      I0 => \FSM_onehot_CurrentState_reg_n_0_[42]\,
      I1 => \FSM_onehot_CurrentState[29]_i_2_n_0\,
      I2 => \FSM_onehot_CurrentState_reg_n_0_[36]\,
      I3 => \FSM_onehot_CurrentState_reg_n_0_[37]\,
      I4 => \FSM_onehot_CurrentState[39]_i_2_n_0\,
      I5 => \FSM_onehot_CurrentState[22]_i_9_n_0\,
      O => \FSM_onehot_CurrentState[22]_i_4_n_0\
    );
\FSM_onehot_CurrentState[22]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFDF"
    )
        port map (
      I0 => DATA(8),
      I1 => DATA(3),
      I2 => DATA(20),
      I3 => DATA(18),
      O => \FSM_onehot_CurrentState[22]_i_5_n_0\
    );
\FSM_onehot_CurrentState[22]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF7F"
    )
        port map (
      I0 => DATA(5),
      I1 => DATA(1),
      I2 => DATA(6),
      I3 => DATA(7),
      O => \FSM_onehot_CurrentState[22]_i_6_n_0\
    );
\FSM_onehot_CurrentState[22]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => DATA(25),
      I1 => DATA(23),
      I2 => DATA(29),
      I3 => DATA(27),
      O => \FSM_onehot_CurrentState[22]_i_7_n_0\
    );
\FSM_onehot_CurrentState[22]_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFBFF"
    )
        port map (
      I0 => DATA(15),
      I1 => DATA(14),
      I2 => DATA(12),
      I3 => DATA(13),
      I4 => \FSM_onehot_CurrentState[22]_i_10_n_0\,
      O => \FSM_onehot_CurrentState[22]_i_8_n_0\
    );
\FSM_onehot_CurrentState[22]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000002"
    )
        port map (
      I0 => \FSM_onehot_CurrentState_reg_n_0_[38]\,
      I1 => \FSM_onehot_CurrentState_reg_n_0_[35]\,
      I2 => \FSM_onehot_CurrentState_reg_n_0_[33]\,
      I3 => \FSM_onehot_CurrentState_reg_n_0_[27]\,
      I4 => prog_done,
      I5 => OE_N_i_6_n_0,
      O => \FSM_onehot_CurrentState[22]_i_9_n_0\
    );
\FSM_onehot_CurrentState[23]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0400"
    )
        port map (
      I0 => \FSM_onehot_CurrentState_reg_n_0_[16]\,
      I1 => \FSM_onehot_CurrentState_reg_n_0_[22]\,
      I2 => \FSM_onehot_CurrentState_reg_n_0_[21]\,
      I3 => \FSM_onehot_CurrentState[25]_i_2_n_0\,
      O => \FSM_onehot_CurrentState[23]_i_1_n_0\
    );
\FSM_onehot_CurrentState[24]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"01000000"
    )
        port map (
      I0 => \FSM_onehot_CurrentState_reg_n_0_[22]\,
      I1 => \FSM_onehot_CurrentState_reg_n_0_[16]\,
      I2 => \FSM_onehot_CurrentState_reg_n_0_[21]\,
      I3 => \FSM_onehot_CurrentState_reg_n_0_[23]\,
      I4 => \FSM_onehot_CurrentState[25]_i_2_n_0\,
      O => \FSM_onehot_CurrentState[24]_i_1_n_0\
    );
\FSM_onehot_CurrentState[25]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0001000000000000"
    )
        port map (
      I0 => \FSM_onehot_CurrentState_reg_n_0_[21]\,
      I1 => \FSM_onehot_CurrentState_reg_n_0_[16]\,
      I2 => \FSM_onehot_CurrentState_reg_n_0_[22]\,
      I3 => \FSM_onehot_CurrentState_reg_n_0_[23]\,
      I4 => \FSM_onehot_CurrentState[25]_i_2_n_0\,
      I5 => \FSM_onehot_CurrentState_reg_n_0_[24]\,
      O => \FSM_onehot_CurrentState[25]_i_1_n_0\
    );
\FSM_onehot_CurrentState[25]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000010"
    )
        port map (
      I0 => \FSM_onehot_CurrentState_reg_n_0_[18]\,
      I1 => \FSM_onehot_CurrentState_reg_n_0_[19]\,
      I2 => \FSM_onehot_CurrentState[20]_i_3_n_0\,
      I3 => \FSM_onehot_CurrentState[20]_i_2_n_0\,
      I4 => \FSM_onehot_CurrentState_reg_n_0_[20]\,
      O => \FSM_onehot_CurrentState[25]_i_2_n_0\
    );
\FSM_onehot_CurrentState[26]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => \FSM_onehot_CurrentState_reg_n_0_[24]\,
      I1 => \FSM_onehot_CurrentState_reg_n_0_[25]\,
      I2 => \FSM_onehot_CurrentState[42]_i_2_n_0\,
      O => \FSM_onehot_CurrentState[26]_i_1_n_0\
    );
\FSM_onehot_CurrentState[27]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"808C808080808080"
    )
        port map (
      I0 => \^prom_sr\(7),
      I1 => \FSM_onehot_CurrentState[27]_i_2_n_0\,
      I2 => \FSM_onehot_CurrentState_reg_n_0_[26]\,
      I3 => \FSM_onehot_CurrentState_reg_n_0_[42]\,
      I4 => \FSM_onehot_CurrentState_reg_n_0_[27]\,
      I5 => FIFO_EMPTY,
      O => \FSM_onehot_CurrentState[27]_i_1_n_0\
    );
\FSM_onehot_CurrentState[27]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000004"
    )
        port map (
      I0 => OE_N_i_8_n_0,
      I1 => \FSM_onehot_CurrentState[21]_i_2_n_0\,
      I2 => \FSM_onehot_CurrentState_reg_n_0_[20]\,
      I3 => \FSM_onehot_CurrentState_reg_n_0_[25]\,
      I4 => \FSM_onehot_CurrentState_reg_n_0_[24]\,
      O => \FSM_onehot_CurrentState[27]_i_2_n_0\
    );
\FSM_onehot_CurrentState[28]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0400"
    )
        port map (
      I0 => FIFO_EMPTY,
      I1 => \FSM_onehot_CurrentState_reg_n_0_[27]\,
      I2 => \FSM_onehot_CurrentState_reg_n_0_[42]\,
      I3 => \FSM_onehot_CurrentState[29]_i_2_n_0\,
      O => \FSM_onehot_CurrentState[28]_i_1_n_0\
    );
\FSM_onehot_CurrentState[29]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => \FSM_onehot_CurrentState_reg_n_0_[27]\,
      I1 => \FSM_onehot_CurrentState_reg_n_0_[42]\,
      I2 => \FSM_onehot_CurrentState[29]_i_2_n_0\,
      I3 => \FSM_onehot_CurrentState_reg_n_0_[28]\,
      O => \FSM_onehot_CurrentState[29]_i_1_n_0\
    );
\FSM_onehot_CurrentState[29]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000100"
    )
        port map (
      I0 => \FSM_onehot_CurrentState_reg_n_0_[24]\,
      I1 => \FSM_onehot_CurrentState_reg_n_0_[25]\,
      I2 => \FSM_onehot_CurrentState_reg_n_0_[20]\,
      I3 => \FSM_onehot_CurrentState[21]_i_2_n_0\,
      I4 => OE_N_i_8_n_0,
      I5 => \FSM_onehot_CurrentState_reg_n_0_[26]\,
      O => \FSM_onehot_CurrentState[29]_i_2_n_0\
    );
\FSM_onehot_CurrentState[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAAAAABA"
    )
        port map (
      I0 => \FSM_onehot_CurrentState[2]_i_2_n_0\,
      I1 => \FSM_onehot_CurrentState[22]_i_3_n_0\,
      I2 => \FSM_onehot_CurrentState[2]_i_3_n_0\,
      I3 => \FSM_onehot_CurrentState[2]_i_4_n_0\,
      I4 => \FSM_onehot_CurrentState[2]_i_5_n_0\,
      I5 => \FSM_onehot_CurrentState[2]_i_6_n_0\,
      O => \FSM_onehot_CurrentState[2]_i_1_n_0\
    );
\FSM_onehot_CurrentState[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000808000F08080"
    )
        port map (
      I0 => \FSM_onehot_CurrentState_reg_n_0_[11]\,
      I1 => \FSM_onehot_CurrentState[2]_i_7_n_0\,
      I2 => \FSM_onehot_CurrentState[2]_i_8_n_0\,
      I3 => \^prom_sr\(0),
      I4 => \FSM_onehot_CurrentState_reg_n_0_[10]\,
      I5 => last_blk,
      O => \FSM_onehot_CurrentState[2]_i_2_n_0\
    );
\FSM_onehot_CurrentState[2]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => rst_reg,
      I1 => \FSM_onehot_CurrentState_reg_n_0_[1]\,
      I2 => DATA(19),
      O => \FSM_onehot_CurrentState[2]_i_3_n_0\
    );
\FSM_onehot_CurrentState[2]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FD"
    )
        port map (
      I0 => DATA(26),
      I1 => DATA(9),
      I2 => DATA(2),
      O => \FSM_onehot_CurrentState[2]_i_4_n_0\
    );
\FSM_onehot_CurrentState[2]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"DFFF"
    )
        port map (
      I0 => DATA(10),
      I1 => DATA(4),
      I2 => DATA(28),
      I3 => DATA(11),
      O => \FSM_onehot_CurrentState[2]_i_5_n_0\
    );
\FSM_onehot_CurrentState[2]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFDFFF"
    )
        port map (
      I0 => DATA(3),
      I1 => DATA(20),
      I2 => DATA(24),
      I3 => DATA(18),
      I4 => DATA(8),
      O => \FSM_onehot_CurrentState[2]_i_6_n_0\
    );
\FSM_onehot_CurrentState[2]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFEF"
    )
        port map (
      I0 => \unlck_cnt_reg__0\(1),
      I1 => \unlck_cnt_reg__0\(2),
      I2 => \unlck_cnt_reg__0\(8),
      I3 => \unlck_cnt_reg__0\(7),
      I4 => \unlck_cnt_reg__0\(0),
      I5 => \DQ_O[5]_i_11_n_0\,
      O => \FSM_onehot_CurrentState[2]_i_7_n_0\
    );
\FSM_onehot_CurrentState[2]_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => \FSM_onehot_CurrentState[8]_i_2_n_0\,
      I1 => \DQ_O[7]_i_4_n_0\,
      I2 => \FSM_onehot_CurrentState_reg_n_0_[7]\,
      I3 => \FSM_onehot_CurrentState_reg_n_0_[9]\,
      I4 => \FSM_onehot_CurrentState_reg_n_0_[8]\,
      O => \FSM_onehot_CurrentState[2]_i_8_n_0\
    );
\FSM_onehot_CurrentState[30]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4400440004000000"
    )
        port map (
      I0 => \FSM_onehot_CurrentState_reg_n_0_[28]\,
      I1 => FIFO_EMPTY,
      I2 => \FSM_onehot_CurrentState_reg_n_0_[33]\,
      I3 => \FSM_onehot_CurrentState[41]_i_3_n_0\,
      I4 => \FSM_onehot_CurrentState_reg_n_0_[41]\,
      I5 => \FSM_onehot_CurrentState_reg_n_0_[29]\,
      O => \FSM_onehot_CurrentState[30]_i_1_n_0\
    );
\FSM_onehot_CurrentState[31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F020202020202020"
    )
        port map (
      I0 => \FSM_onehot_CurrentState_reg_n_0_[30]\,
      I1 => \FSM_onehot_CurrentState[31]_i_2_n_0\,
      I2 => \FSM_onehot_CurrentState[37]_i_2_n_0\,
      I3 => \FSM_onehot_CurrentState_reg_n_0_[31]\,
      I4 => \FSM_onehot_CurrentState[31]_i_3_n_0\,
      I5 => \FSM_onehot_CurrentState[41]_i_2_n_0\,
      O => \FSM_onehot_CurrentState[31]_i_1_n_0\
    );
\FSM_onehot_CurrentState[31]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => \FSM_onehot_CurrentState_reg_n_0_[29]\,
      I1 => \FSM_onehot_CurrentState_reg_n_0_[28]\,
      I2 => \FSM_onehot_CurrentState_reg_n_0_[41]\,
      O => \FSM_onehot_CurrentState[31]_i_2_n_0\
    );
\FSM_onehot_CurrentState[31]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000070"
    )
        port map (
      I0 => \DQ_O[15]_i_3_n_0\,
      I1 => prog_done,
      I2 => FIFO_EMPTY,
      I3 => \FSM_onehot_CurrentState_reg_n_0_[41]\,
      I4 => \FSM_onehot_CurrentState_reg_n_0_[28]\,
      I5 => \FSM_onehot_CurrentState_reg_n_0_[29]\,
      O => \FSM_onehot_CurrentState[31]_i_3_n_0\
    );
\FSM_onehot_CurrentState[32]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000100000000"
    )
        port map (
      I0 => \FSM_onehot_CurrentState_reg_n_0_[41]\,
      I1 => \FSM_onehot_CurrentState_reg_n_0_[28]\,
      I2 => \FSM_onehot_CurrentState_reg_n_0_[29]\,
      I3 => \FSM_onehot_CurrentState_reg_n_0_[30]\,
      I4 => \FSM_onehot_CurrentState[41]_i_2_n_0\,
      I5 => \FSM_onehot_CurrentState[33]_i_3_n_0\,
      O => \FSM_onehot_CurrentState[32]_i_1_n_0\
    );
\FSM_onehot_CurrentState[33]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF02020202020202"
    )
        port map (
      I0 => \FSM_onehot_CurrentState[33]_i_2_n_0\,
      I1 => FIFO_EMPTY,
      I2 => \FSM_onehot_CurrentState_reg_n_0_[28]\,
      I3 => \FSM_onehot_CurrentState[33]_i_3_n_0\,
      I4 => \FSM_onehot_CurrentState[33]_i_4_n_0\,
      I5 => \FSM_onehot_CurrentState[41]_i_2_n_0\,
      O => \FSM_onehot_CurrentState[33]_i_1_n_0\
    );
\FSM_onehot_CurrentState[33]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000A0000000E0000"
    )
        port map (
      I0 => \FSM_onehot_CurrentState_reg_n_0_[29]\,
      I1 => \FSM_onehot_CurrentState_reg_n_0_[41]\,
      I2 => \FSM_onehot_CurrentState_reg_n_0_[27]\,
      I3 => \FSM_onehot_CurrentState_reg_n_0_[42]\,
      I4 => \FSM_onehot_CurrentState[29]_i_2_n_0\,
      I5 => \FSM_onehot_CurrentState_reg_n_0_[33]\,
      O => \FSM_onehot_CurrentState[33]_i_2_n_0\
    );
\FSM_onehot_CurrentState[33]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00040000"
    )
        port map (
      I0 => \FSM_onehot_CurrentState_reg_n_0_[33]\,
      I1 => \FSM_onehot_CurrentState[29]_i_2_n_0\,
      I2 => \FSM_onehot_CurrentState_reg_n_0_[42]\,
      I3 => \FSM_onehot_CurrentState_reg_n_0_[27]\,
      I4 => \FSM_onehot_CurrentState_reg_n_0_[31]\,
      O => \FSM_onehot_CurrentState[33]_i_3_n_0\
    );
\FSM_onehot_CurrentState[33]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0101011101010101"
    )
        port map (
      I0 => \FSM_onehot_CurrentState_reg_n_0_[30]\,
      I1 => \FSM_onehot_CurrentState_reg_n_0_[28]\,
      I2 => FIFO_EMPTY,
      I3 => \FSM_onehot_CurrentState_reg_n_0_[41]\,
      I4 => \FSM_onehot_CurrentState_reg_n_0_[29]\,
      I5 => \FSM_onehot_CurrentState[33]_i_5_n_0\,
      O => \FSM_onehot_CurrentState[33]_i_4_n_0\
    );
\FSM_onehot_CurrentState[33]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \DQ_O[15]_i_3_n_0\,
      I1 => prog_done,
      O => \FSM_onehot_CurrentState[33]_i_5_n_0\
    );
\FSM_onehot_CurrentState[34]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"04000400FF000400"
    )
        port map (
      I0 => \FSM_onehot_CurrentState_reg_n_0_[33]\,
      I1 => \FSM_onehot_CurrentState_reg_n_0_[32]\,
      I2 => \DQ_O[15]_i_2_n_0\,
      I3 => \FSM_onehot_CurrentState[41]_i_3_n_0\,
      I4 => \FSM_onehot_CurrentState[34]_i_2_n_0\,
      I5 => \FSM_onehot_CurrentState[41]_i_2_n_0\,
      O => \FSM_onehot_CurrentState[34]_i_1_n_0\
    );
\FSM_onehot_CurrentState[34]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => \FSM_onehot_CurrentState_reg_n_0_[33]\,
      I1 => \FSM_onehot_CurrentState_reg_n_0_[29]\,
      I2 => \FSM_onehot_CurrentState_reg_n_0_[28]\,
      O => \FSM_onehot_CurrentState[34]_i_2_n_0\
    );
\FSM_onehot_CurrentState[35]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0400"
    )
        port map (
      I0 => \DQ_O[15]_i_2_n_0\,
      I1 => \FSM_onehot_CurrentState_reg_n_0_[34]\,
      I2 => \FSM_onehot_CurrentState_reg_n_0_[32]\,
      I3 => \FSM_onehot_CurrentState[37]_i_2_n_0\,
      O => \FSM_onehot_CurrentState[35]_i_1_n_0\
    );
\FSM_onehot_CurrentState[36]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A0B0A0A0A0A0A0A0"
    )
        port map (
      I0 => \FSM_onehot_CurrentState_reg_n_0_[35]\,
      I1 => \FSM_onehot_CurrentState_reg_n_0_[38]\,
      I2 => \FSM_onehot_CurrentState[39]_i_3_n_0\,
      I3 => TRI_CTRL_INST_0_i_2_n_0,
      I4 => \FSM_onehot_CurrentState_reg_n_0_[39]\,
      I5 => \FSM_onehot_CurrentState[40]_i_4_n_0\,
      O => \FSM_onehot_CurrentState[36]_i_1_n_0\
    );
\FSM_onehot_CurrentState[37]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000400000000"
    )
        port map (
      I0 => \FSM_onehot_CurrentState_reg_n_0_[35]\,
      I1 => \FSM_onehot_CurrentState_reg_n_0_[36]\,
      I2 => \FSM_onehot_CurrentState_reg_n_0_[34]\,
      I3 => \FSM_onehot_CurrentState_reg_n_0_[32]\,
      I4 => \DQ_O[15]_i_2_n_0\,
      I5 => \FSM_onehot_CurrentState[37]_i_2_n_0\,
      O => \FSM_onehot_CurrentState[37]_i_1_n_0\
    );
\FSM_onehot_CurrentState[37]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0010"
    )
        port map (
      I0 => \FSM_onehot_CurrentState_reg_n_0_[27]\,
      I1 => \FSM_onehot_CurrentState_reg_n_0_[42]\,
      I2 => \FSM_onehot_CurrentState[29]_i_2_n_0\,
      I3 => \FSM_onehot_CurrentState_reg_n_0_[33]\,
      O => \FSM_onehot_CurrentState[37]_i_2_n_0\
    );
\FSM_onehot_CurrentState[38]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0400"
    )
        port map (
      I0 => \FSM_onehot_CurrentState_reg_n_0_[35]\,
      I1 => \FSM_onehot_CurrentState_reg_n_0_[37]\,
      I2 => \FSM_onehot_CurrentState_reg_n_0_[36]\,
      I3 => \FSM_onehot_CurrentState[39]_i_3_n_0\,
      O => \FSM_onehot_CurrentState[38]_i_1_n_0\
    );
\FSM_onehot_CurrentState[39]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000800000000"
    )
        port map (
      I0 => \FSM_onehot_CurrentState[39]_i_2_n_0\,
      I1 => \FSM_onehot_CurrentState_reg_n_0_[38]\,
      I2 => \FSM_onehot_CurrentState_reg_n_0_[35]\,
      I3 => \FSM_onehot_CurrentState_reg_n_0_[36]\,
      I4 => \FSM_onehot_CurrentState_reg_n_0_[37]\,
      I5 => \FSM_onehot_CurrentState[39]_i_3_n_0\,
      O => \FSM_onehot_CurrentState[39]_i_1_n_0\
    );
\FSM_onehot_CurrentState[39]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFEFFFF"
    )
        port map (
      I0 => \^prom_sr\(6),
      I1 => \^prom_sr\(5),
      I2 => \^prom_sr\(0),
      I3 => \FSM_onehot_CurrentState[39]_i_4_n_0\,
      I4 => \^prom_sr\(7),
      O => \FSM_onehot_CurrentState[39]_i_2_n_0\
    );
\FSM_onehot_CurrentState[39]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000004"
    )
        port map (
      I0 => \FSM_onehot_CurrentState_reg_n_0_[33]\,
      I1 => \FSM_onehot_CurrentState[41]_i_3_n_0\,
      I2 => \DQ_O[15]_i_2_n_0\,
      I3 => \FSM_onehot_CurrentState_reg_n_0_[32]\,
      I4 => \FSM_onehot_CurrentState_reg_n_0_[34]\,
      O => \FSM_onehot_CurrentState[39]_i_3_n_0\
    );
\FSM_onehot_CurrentState[39]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \^prom_sr\(2),
      I1 => \^prom_sr\(1),
      I2 => \^prom_sr\(4),
      I3 => \^prom_sr\(3),
      O => \FSM_onehot_CurrentState[39]_i_4_n_0\
    );
\FSM_onehot_CurrentState[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => \FSM_onehot_CurrentState_reg_n_0_[2]\,
      I1 => \FSM_onehot_CurrentState_reg_n_0_[1]\,
      I2 => rst_reg,
      O => \FSM_onehot_CurrentState[3]_i_1_n_0\
    );
\FSM_onehot_CurrentState[40]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ABAAAAAABBBAAAAA"
    )
        port map (
      I0 => \FSM_onehot_CurrentState[40]_i_2_n_0\,
      I1 => \FSM_onehot_CurrentState_reg_n_0_[35]\,
      I2 => \FSM_onehot_CurrentState_reg_n_0_[39]\,
      I3 => \FSM_onehot_CurrentState_reg_n_0_[40]\,
      I4 => \FSM_onehot_CurrentState[40]_i_3_n_0\,
      I5 => \FSM_onehot_CurrentState[40]_i_4_n_0\,
      O => \FSM_onehot_CurrentState[40]_i_1_n_0\
    );
\FSM_onehot_CurrentState[40]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF0008"
    )
        port map (
      I0 => \FSM_onehot_CurrentState[25]_i_2_n_0\,
      I1 => \FSM_onehot_CurrentState_reg_n_0_[21]\,
      I2 => \FSM_onehot_CurrentState[17]_i_2_n_0\,
      I3 => \FSM_onehot_CurrentState_reg_n_0_[16]\,
      I4 => \FSM_onehot_CurrentState[40]_i_5_n_0\,
      O => \FSM_onehot_CurrentState[40]_i_2_n_0\
    );
\FSM_onehot_CurrentState[40]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000100"
    )
        port map (
      I0 => \FSM_onehot_CurrentState_reg_n_0_[36]\,
      I1 => \FSM_onehot_CurrentState_reg_n_0_[37]\,
      I2 => \FSM_onehot_CurrentState_reg_n_0_[33]\,
      I3 => \FSM_onehot_CurrentState[41]_i_3_n_0\,
      I4 => OE_N_i_6_n_0,
      I5 => \FSM_onehot_CurrentState_reg_n_0_[38]\,
      O => \FSM_onehot_CurrentState[40]_i_3_n_0\
    );
\FSM_onehot_CurrentState[40]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFF7FFFFF"
    )
        port map (
      I0 => poll_cnt_reg(6),
      I1 => poll_cnt_reg(9),
      I2 => poll_cnt_reg(14),
      I3 => poll_cnt_reg(13),
      I4 => poll_cnt_reg(4),
      I5 => \FSM_onehot_CurrentState[40]_i_6_n_0\,
      O => \FSM_onehot_CurrentState[40]_i_4_n_0\
    );
\FSM_onehot_CurrentState[40]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F444444444444444"
    )
        port map (
      I0 => \FSM_onehot_CurrentState[2]_i_7_n_0\,
      I1 => \FSM_onehot_CurrentState[40]_i_7_n_0\,
      I2 => \FSM_onehot_CurrentState[21]_i_2_n_0\,
      I3 => \^prom_sr\(7),
      I4 => \FSM_onehot_CurrentState[12]_i_3_n_0\,
      I5 => \FSM_onehot_CurrentState[40]_i_8_n_0\,
      O => \FSM_onehot_CurrentState[40]_i_5_n_0\
    );
\FSM_onehot_CurrentState[40]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \FSM_onehot_CurrentState[40]_i_9_n_0\,
      I1 => poll_cnt_reg(5),
      I2 => poll_cnt_reg(7),
      I3 => poll_cnt_reg(2),
      I4 => poll_cnt_reg(3),
      O => \FSM_onehot_CurrentState[40]_i_6_n_0\
    );
\FSM_onehot_CurrentState[40]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000100000000"
    )
        port map (
      I0 => \FSM_onehot_CurrentState_reg_n_0_[10]\,
      I1 => \FSM_onehot_CurrentState[8]_i_2_n_0\,
      I2 => \DQ_O[7]_i_4_n_0\,
      I3 => \FSM_onehot_CurrentState_reg_n_0_[7]\,
      I4 => \A_reg[23]_i_32_n_0\,
      I5 => \FSM_onehot_CurrentState_reg_n_0_[11]\,
      O => \FSM_onehot_CurrentState[40]_i_7_n_0\
    );
\FSM_onehot_CurrentState[40]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \FSM_onehot_CurrentState[39]_i_4_n_0\,
      I1 => \^prom_sr\(0),
      I2 => \^prom_sr\(5),
      I3 => \^prom_sr\(6),
      O => \FSM_onehot_CurrentState[40]_i_8_n_0\
    );
\FSM_onehot_CurrentState[40]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFEFF"
    )
        port map (
      I0 => poll_cnt_reg(11),
      I1 => poll_cnt_reg(12),
      I2 => poll_cnt_reg(8),
      I3 => poll_cnt_reg(10),
      I4 => poll_cnt_reg(1),
      I5 => poll_cnt_reg(0),
      O => \FSM_onehot_CurrentState[40]_i_9_n_0\
    );
\FSM_onehot_CurrentState[41]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00080000"
    )
        port map (
      I0 => \FSM_onehot_CurrentState[41]_i_2_n_0\,
      I1 => \FSM_onehot_CurrentState_reg_n_0_[33]\,
      I2 => \FSM_onehot_CurrentState_reg_n_0_[29]\,
      I3 => \FSM_onehot_CurrentState_reg_n_0_[28]\,
      I4 => \FSM_onehot_CurrentState[41]_i_3_n_0\,
      O => \FSM_onehot_CurrentState[41]_i_1_n_0\
    );
\FSM_onehot_CurrentState[41]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFFFFFFF"
    )
        port map (
      I0 => \FSM_onehot_CurrentState[41]_i_4_n_0\,
      I1 => \data_cnt_reg__0\(5),
      I2 => \data_cnt_reg__0\(6),
      I3 => \data_cnt_reg__0\(3),
      I4 => \data_cnt_reg__0\(4),
      O => \FSM_onehot_CurrentState[41]_i_2_n_0\
    );
\FSM_onehot_CurrentState[41]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000010"
    )
        port map (
      I0 => \FSM_onehot_CurrentState_reg_n_0_[26]\,
      I1 => OE_N_i_8_n_0,
      I2 => \FSM_onehot_CurrentState[21]_i_2_n_0\,
      I3 => \FSM_onehot_CurrentState_reg_n_0_[20]\,
      I4 => \FSM_onehot_CurrentState[41]_i_5_n_0\,
      I5 => OE_N_i_7_n_0,
      O => \FSM_onehot_CurrentState[41]_i_3_n_0\
    );
\FSM_onehot_CurrentState[41]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFFFFFF"
    )
        port map (
      I0 => \data_cnt_reg__0\(0),
      I1 => \data_cnt_reg__0\(7),
      I2 => \data_cnt_reg__0\(8),
      I3 => \data_cnt_reg__0\(2),
      I4 => \data_cnt_reg__0\(1),
      O => \FSM_onehot_CurrentState[41]_i_4_n_0\
    );
\FSM_onehot_CurrentState[41]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \FSM_onehot_CurrentState_reg_n_0_[24]\,
      I1 => \FSM_onehot_CurrentState_reg_n_0_[25]\,
      O => \FSM_onehot_CurrentState[41]_i_5_n_0\
    );
\FSM_onehot_CurrentState[42]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00040000"
    )
        port map (
      I0 => \^prom_sr\(7),
      I1 => \FSM_onehot_CurrentState_reg_n_0_[26]\,
      I2 => \FSM_onehot_CurrentState_reg_n_0_[24]\,
      I3 => \FSM_onehot_CurrentState_reg_n_0_[25]\,
      I4 => \FSM_onehot_CurrentState[42]_i_2_n_0\,
      O => \FSM_onehot_CurrentState[42]_i_1_n_0\
    );
\FSM_onehot_CurrentState[42]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000004"
    )
        port map (
      I0 => \FSM_onehot_CurrentState_reg_n_0_[20]\,
      I1 => \FSM_onehot_CurrentState[21]_i_2_n_0\,
      I2 => \FSM_onehot_CurrentState_reg_n_0_[23]\,
      I3 => \FSM_onehot_CurrentState_reg_n_0_[22]\,
      I4 => \FSM_onehot_CurrentState_reg_n_0_[16]\,
      I5 => \FSM_onehot_CurrentState_reg_n_0_[21]\,
      O => \FSM_onehot_CurrentState[42]_i_2_n_0\
    );
\FSM_onehot_CurrentState[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0002"
    )
        port map (
      I0 => \FSM_onehot_CurrentState_reg_n_0_[3]\,
      I1 => \FSM_onehot_CurrentState_reg_n_0_[2]\,
      I2 => rst_reg,
      I3 => \FSM_onehot_CurrentState_reg_n_0_[1]\,
      O => \FSM_onehot_CurrentState[4]_i_1_n_0\
    );
\FSM_onehot_CurrentState[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000004"
    )
        port map (
      I0 => \FSM_onehot_CurrentState_reg_n_0_[3]\,
      I1 => \FSM_onehot_CurrentState_reg_n_0_[4]\,
      I2 => \FSM_onehot_CurrentState_reg_n_0_[2]\,
      I3 => rst_reg,
      I4 => \FSM_onehot_CurrentState_reg_n_0_[1]\,
      O => \FSM_onehot_CurrentState[5]_i_1_n_0\
    );
\FSM_onehot_CurrentState[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000010"
    )
        port map (
      I0 => \FSM_onehot_CurrentState_reg_n_0_[3]\,
      I1 => \FSM_onehot_CurrentState_reg_n_0_[4]\,
      I2 => \FSM_onehot_CurrentState_reg_n_0_[5]\,
      I3 => \FSM_onehot_CurrentState_reg_n_0_[2]\,
      I4 => rst_reg,
      I5 => \FSM_onehot_CurrentState_reg_n_0_[1]\,
      O => \FSM_onehot_CurrentState[6]_i_1_n_0\
    );
\FSM_onehot_CurrentState[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000004"
    )
        port map (
      I0 => \FSM_onehot_CurrentState[8]_i_2_n_0\,
      I1 => \FSM_onehot_CurrentState_reg_n_0_[6]\,
      I2 => \FSM_onehot_CurrentState_reg_n_0_[5]\,
      I3 => \FSM_onehot_CurrentState_reg_n_0_[3]\,
      I4 => \FSM_onehot_CurrentState_reg_n_0_[4]\,
      O => \FSM_onehot_CurrentState[7]_i_1_n_0\
    );
\FSM_onehot_CurrentState[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000004"
    )
        port map (
      I0 => \FSM_onehot_CurrentState[8]_i_2_n_0\,
      I1 => \FSM_onehot_CurrentState_reg_n_0_[7]\,
      I2 => \FSM_onehot_CurrentState_reg_n_0_[6]\,
      I3 => \FSM_onehot_CurrentState_reg_n_0_[4]\,
      I4 => \FSM_onehot_CurrentState_reg_n_0_[3]\,
      I5 => \FSM_onehot_CurrentState_reg_n_0_[5]\,
      O => \FSM_onehot_CurrentState[8]_i_1_n_0\
    );
\FSM_onehot_CurrentState[8]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => \FSM_onehot_CurrentState_reg_n_0_[1]\,
      I1 => rst_reg,
      I2 => \FSM_onehot_CurrentState_reg_n_0_[2]\,
      O => \FSM_onehot_CurrentState[8]_i_2_n_0\
    );
\FSM_onehot_CurrentState[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000002"
    )
        port map (
      I0 => \FSM_onehot_CurrentState_reg_n_0_[8]\,
      I1 => \FSM_onehot_CurrentState_reg_n_0_[1]\,
      I2 => rst_reg,
      I3 => \FSM_onehot_CurrentState_reg_n_0_[2]\,
      I4 => \DQ_O[7]_i_4_n_0\,
      I5 => \FSM_onehot_CurrentState_reg_n_0_[7]\,
      O => \FSM_onehot_CurrentState[9]_i_1_n_0\
    );
\FSM_onehot_CurrentState_reg[0]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \FSM_onehot_CurrentState[0]_i_1_n_0\,
      PRE => RST,
      Q => rst_reg
    );
\FSM_onehot_CurrentState_reg[10]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => RST,
      D => \FSM_onehot_CurrentState[10]_i_1_n_0\,
      Q => \FSM_onehot_CurrentState_reg_n_0_[10]\
    );
\FSM_onehot_CurrentState_reg[11]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => RST,
      D => \FSM_onehot_CurrentState[11]_i_1_n_0\,
      Q => \FSM_onehot_CurrentState_reg_n_0_[11]\
    );
\FSM_onehot_CurrentState_reg[12]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => RST,
      D => \FSM_onehot_CurrentState[12]_i_1_n_0\,
      Q => \FSM_onehot_CurrentState_reg_n_0_[12]\
    );
\FSM_onehot_CurrentState_reg[13]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => RST,
      D => \FSM_onehot_CurrentState[13]_i_1_n_0\,
      Q => \FSM_onehot_CurrentState_reg_n_0_[13]\
    );
\FSM_onehot_CurrentState_reg[14]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => RST,
      D => \FSM_onehot_CurrentState[14]_i_1_n_0\,
      Q => \FSM_onehot_CurrentState_reg_n_0_[14]\
    );
\FSM_onehot_CurrentState_reg[15]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => RST,
      D => \FSM_onehot_CurrentState[15]_i_1_n_0\,
      Q => \FSM_onehot_CurrentState_reg_n_0_[15]\
    );
\FSM_onehot_CurrentState_reg[16]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => RST,
      D => \FSM_onehot_CurrentState[16]_i_1_n_0\,
      Q => \FSM_onehot_CurrentState_reg_n_0_[16]\
    );
\FSM_onehot_CurrentState_reg[17]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => RST,
      D => \FSM_onehot_CurrentState[17]_i_1_n_0\,
      Q => \FSM_onehot_CurrentState_reg_n_0_[17]\
    );
\FSM_onehot_CurrentState_reg[18]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => RST,
      D => \FSM_onehot_CurrentState[18]_i_1_n_0\,
      Q => \FSM_onehot_CurrentState_reg_n_0_[18]\
    );
\FSM_onehot_CurrentState_reg[19]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => RST,
      D => \FSM_onehot_CurrentState[19]_i_1_n_0\,
      Q => \FSM_onehot_CurrentState_reg_n_0_[19]\
    );
\FSM_onehot_CurrentState_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => RST,
      D => \FSM_onehot_CurrentState[1]_i_1_n_0\,
      Q => \FSM_onehot_CurrentState_reg_n_0_[1]\
    );
\FSM_onehot_CurrentState_reg[20]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => RST,
      D => \FSM_onehot_CurrentState[20]_i_1_n_0\,
      Q => \FSM_onehot_CurrentState_reg_n_0_[20]\
    );
\FSM_onehot_CurrentState_reg[21]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => RST,
      D => \FSM_onehot_CurrentState[21]_i_1_n_0\,
      Q => \FSM_onehot_CurrentState_reg_n_0_[21]\
    );
\FSM_onehot_CurrentState_reg[22]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => RST,
      D => \FSM_onehot_CurrentState[22]_i_1_n_0\,
      Q => \FSM_onehot_CurrentState_reg_n_0_[22]\
    );
\FSM_onehot_CurrentState_reg[23]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => RST,
      D => \FSM_onehot_CurrentState[23]_i_1_n_0\,
      Q => \FSM_onehot_CurrentState_reg_n_0_[23]\
    );
\FSM_onehot_CurrentState_reg[24]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => RST,
      D => \FSM_onehot_CurrentState[24]_i_1_n_0\,
      Q => \FSM_onehot_CurrentState_reg_n_0_[24]\
    );
\FSM_onehot_CurrentState_reg[25]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => RST,
      D => \FSM_onehot_CurrentState[25]_i_1_n_0\,
      Q => \FSM_onehot_CurrentState_reg_n_0_[25]\
    );
\FSM_onehot_CurrentState_reg[26]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => RST,
      D => \FSM_onehot_CurrentState[26]_i_1_n_0\,
      Q => \FSM_onehot_CurrentState_reg_n_0_[26]\
    );
\FSM_onehot_CurrentState_reg[27]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => RST,
      D => \FSM_onehot_CurrentState[27]_i_1_n_0\,
      Q => \FSM_onehot_CurrentState_reg_n_0_[27]\
    );
\FSM_onehot_CurrentState_reg[28]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => RST,
      D => \FSM_onehot_CurrentState[28]_i_1_n_0\,
      Q => \FSM_onehot_CurrentState_reg_n_0_[28]\
    );
\FSM_onehot_CurrentState_reg[29]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => RST,
      D => \FSM_onehot_CurrentState[29]_i_1_n_0\,
      Q => \FSM_onehot_CurrentState_reg_n_0_[29]\
    );
\FSM_onehot_CurrentState_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => RST,
      D => \FSM_onehot_CurrentState[2]_i_1_n_0\,
      Q => \FSM_onehot_CurrentState_reg_n_0_[2]\
    );
\FSM_onehot_CurrentState_reg[30]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => RST,
      D => \FSM_onehot_CurrentState[30]_i_1_n_0\,
      Q => \FSM_onehot_CurrentState_reg_n_0_[30]\
    );
\FSM_onehot_CurrentState_reg[31]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => RST,
      D => \FSM_onehot_CurrentState[31]_i_1_n_0\,
      Q => \FSM_onehot_CurrentState_reg_n_0_[31]\
    );
\FSM_onehot_CurrentState_reg[32]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => RST,
      D => \FSM_onehot_CurrentState[32]_i_1_n_0\,
      Q => \FSM_onehot_CurrentState_reg_n_0_[32]\
    );
\FSM_onehot_CurrentState_reg[33]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => RST,
      D => \FSM_onehot_CurrentState[33]_i_1_n_0\,
      Q => \FSM_onehot_CurrentState_reg_n_0_[33]\
    );
\FSM_onehot_CurrentState_reg[34]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => RST,
      D => \FSM_onehot_CurrentState[34]_i_1_n_0\,
      Q => \FSM_onehot_CurrentState_reg_n_0_[34]\
    );
\FSM_onehot_CurrentState_reg[35]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => RST,
      D => \FSM_onehot_CurrentState[35]_i_1_n_0\,
      Q => \FSM_onehot_CurrentState_reg_n_0_[35]\
    );
\FSM_onehot_CurrentState_reg[36]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => RST,
      D => \FSM_onehot_CurrentState[36]_i_1_n_0\,
      Q => \FSM_onehot_CurrentState_reg_n_0_[36]\
    );
\FSM_onehot_CurrentState_reg[37]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => RST,
      D => \FSM_onehot_CurrentState[37]_i_1_n_0\,
      Q => \FSM_onehot_CurrentState_reg_n_0_[37]\
    );
\FSM_onehot_CurrentState_reg[38]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => RST,
      D => \FSM_onehot_CurrentState[38]_i_1_n_0\,
      Q => \FSM_onehot_CurrentState_reg_n_0_[38]\
    );
\FSM_onehot_CurrentState_reg[39]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => RST,
      D => \FSM_onehot_CurrentState[39]_i_1_n_0\,
      Q => \FSM_onehot_CurrentState_reg_n_0_[39]\
    );
\FSM_onehot_CurrentState_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => RST,
      D => \FSM_onehot_CurrentState[3]_i_1_n_0\,
      Q => \FSM_onehot_CurrentState_reg_n_0_[3]\
    );
\FSM_onehot_CurrentState_reg[40]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => RST,
      D => \FSM_onehot_CurrentState[40]_i_1_n_0\,
      Q => \FSM_onehot_CurrentState_reg_n_0_[40]\
    );
\FSM_onehot_CurrentState_reg[41]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => RST,
      D => \FSM_onehot_CurrentState[41]_i_1_n_0\,
      Q => \FSM_onehot_CurrentState_reg_n_0_[41]\
    );
\FSM_onehot_CurrentState_reg[42]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => RST,
      D => \FSM_onehot_CurrentState[42]_i_1_n_0\,
      Q => \FSM_onehot_CurrentState_reg_n_0_[42]\
    );
\FSM_onehot_CurrentState_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => RST,
      D => \FSM_onehot_CurrentState[4]_i_1_n_0\,
      Q => \FSM_onehot_CurrentState_reg_n_0_[4]\
    );
\FSM_onehot_CurrentState_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => RST,
      D => \FSM_onehot_CurrentState[5]_i_1_n_0\,
      Q => \FSM_onehot_CurrentState_reg_n_0_[5]\
    );
\FSM_onehot_CurrentState_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => RST,
      D => \FSM_onehot_CurrentState[6]_i_1_n_0\,
      Q => \FSM_onehot_CurrentState_reg_n_0_[6]\
    );
\FSM_onehot_CurrentState_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => RST,
      D => \FSM_onehot_CurrentState[7]_i_1_n_0\,
      Q => \FSM_onehot_CurrentState_reg_n_0_[7]\
    );
\FSM_onehot_CurrentState_reg[8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => RST,
      D => \FSM_onehot_CurrentState[8]_i_1_n_0\,
      Q => \FSM_onehot_CurrentState_reg_n_0_[8]\
    );
\FSM_onehot_CurrentState_reg[9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => RST,
      D => \FSM_onehot_CurrentState[9]_i_1_n_0\,
      Q => \FSM_onehot_CurrentState_reg_n_0_[9]\
    );
OE_N_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => rst_reg,
      I1 => \FSM_onehot_CurrentState_reg_n_0_[34]\,
      O => rst_SR_reg
    );
OE_N_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => OE_N_i_3_n_0,
      I1 => OE_N_i_4_n_0,
      I2 => OE_N_i_5_n_0,
      I3 => \FSM_onehot_CurrentState_reg_n_0_[9]\,
      I4 => \FSM_onehot_CurrentState_reg_n_0_[10]\,
      O => \OE_N_reg__0\
    );
OE_N_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => OE_N_i_6_n_0,
      I1 => \FSM_onehot_CurrentState_reg_n_0_[37]\,
      I2 => \FSM_onehot_CurrentState[0]_i_4_n_0\,
      I3 => \FSM_onehot_CurrentState_reg_n_0_[33]\,
      I4 => \FSM_onehot_CurrentState_reg_n_0_[38]\,
      I5 => OE_N_i_7_n_0,
      O => OE_N_i_3_n_0
    );
OE_N_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \FSM_onehot_CurrentState[20]_i_2_n_0\,
      I1 => \FSM_onehot_CurrentState_reg_n_0_[20]\,
      I2 => OE_N_i_8_n_0,
      I3 => \FSM_onehot_CurrentState_reg_n_0_[19]\,
      I4 => \FSM_onehot_CurrentState_reg_n_0_[25]\,
      I5 => \FSM_onehot_CurrentState_reg_n_0_[26]\,
      O => OE_N_i_4_n_0
    );
OE_N_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \FSM_onehot_CurrentState_reg_n_0_[7]\,
      I1 => \FSM_onehot_CurrentState_reg_n_0_[5]\,
      I2 => \FSM_onehot_CurrentState_reg_n_0_[3]\,
      I3 => \FSM_onehot_CurrentState_reg_n_0_[4]\,
      I4 => \FSM_onehot_CurrentState_reg_n_0_[6]\,
      I5 => \FSM_onehot_CurrentState[8]_i_2_n_0\,
      O => OE_N_i_5_n_0
    );
OE_N_i_6: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => \FSM_onehot_CurrentState_reg_n_0_[34]\,
      I1 => \FSM_onehot_CurrentState_reg_n_0_[32]\,
      I2 => \DQ_O[15]_i_2_n_0\,
      O => OE_N_i_6_n_0
    );
OE_N_i_7: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \FSM_onehot_CurrentState_reg_n_0_[27]\,
      I1 => \FSM_onehot_CurrentState_reg_n_0_[42]\,
      O => OE_N_i_7_n_0
    );
OE_N_i_8: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \FSM_onehot_CurrentState_reg_n_0_[21]\,
      I1 => \FSM_onehot_CurrentState_reg_n_0_[16]\,
      I2 => \FSM_onehot_CurrentState_reg_n_0_[22]\,
      I3 => \FSM_onehot_CurrentState_reg_n_0_[23]\,
      O => OE_N_i_8_n_0
    );
OE_N_reg: unisim.vcomponents.FDSE
     port map (
      C => SR_reg_regn_0_0,
      CE => \^tri_ctrl\,
      D => \OE_N_reg__0\,
      Q => OE_N,
      S => rst_SR_reg
    );
PROG_RDY_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => rst_reg,
      I1 => \FSM_onehot_CurrentState_reg_n_0_[1]\,
      O => PROG_RDY
    );
\SR_reg_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => SR_reg_regn_0_0,
      CE => \^tri_ctrl\,
      D => DQ_I(0),
      Q => \^prom_sr\(0),
      R => rst_SR_reg
    );
\SR_reg_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => SR_reg_regn_0_0,
      CE => \^tri_ctrl\,
      D => DQ_I(1),
      Q => \^prom_sr\(1),
      R => rst_SR_reg
    );
\SR_reg_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => SR_reg_regn_0_0,
      CE => \^tri_ctrl\,
      D => DQ_I(2),
      Q => \^prom_sr\(2),
      R => rst_SR_reg
    );
\SR_reg_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => SR_reg_regn_0_0,
      CE => \^tri_ctrl\,
      D => DQ_I(3),
      Q => \^prom_sr\(3),
      R => rst_SR_reg
    );
\SR_reg_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => SR_reg_regn_0_0,
      CE => \^tri_ctrl\,
      D => DQ_I(4),
      Q => \^prom_sr\(4),
      R => rst_SR_reg
    );
\SR_reg_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => SR_reg_regn_0_0,
      CE => \^tri_ctrl\,
      D => DQ_I(5),
      Q => \^prom_sr\(5),
      R => rst_SR_reg
    );
\SR_reg_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => SR_reg_regn_0_0,
      CE => \^tri_ctrl\,
      D => DQ_I(6),
      Q => \^prom_sr\(6),
      R => rst_SR_reg
    );
\SR_reg_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => SR_reg_regn_0_0,
      CE => \^tri_ctrl\,
      D => DQ_I(7),
      Q => \^prom_sr\(7),
      R => rst_SR_reg
    );
SR_reg_regi_0: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => CLK,
      O => SR_reg_regn_0_0
    );
TRI_CTRL_INST_0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => TRI_CTRL_INST_0_i_1_n_0,
      I1 => \FSM_onehot_CurrentState_reg_n_0_[8]\,
      I2 => \FSM_onehot_CurrentState_reg_n_0_[9]\,
      I3 => TRI_CTRL_INST_0_i_2_n_0,
      I4 => \FSM_onehot_CurrentState_reg_n_0_[24]\,
      I5 => \FSM_onehot_CurrentState_reg_n_0_[25]\,
      O => \^tri_ctrl\
    );
TRI_CTRL_INST_0_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \FSM_onehot_CurrentState_reg_n_0_[18]\,
      I1 => \FSM_onehot_CurrentState_reg_n_0_[19]\,
      O => TRI_CTRL_INST_0_i_1_n_0
    );
TRI_CTRL_INST_0_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \FSM_onehot_CurrentState_reg_n_0_[36]\,
      I1 => \FSM_onehot_CurrentState_reg_n_0_[37]\,
      O => TRI_CTRL_INST_0_i_2_n_0
    );
WE_N_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFEA"
    )
        port map (
      I0 => WE_N_i_2_n_0,
      I1 => WE_N_i_3_n_0,
      I2 => \FSM_onehot_CurrentState_reg_n_0_[1]\,
      I3 => WE_N_i_4_n_0,
      I4 => WE_N_i_5_n_0,
      I5 => WE_N_i_6_n_0,
      O => \WE_N_reg__0\
    );
WE_N_i_10: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFEFEFEFEFE"
    )
        port map (
      I0 => CS_N_i_7_n_0,
      I1 => WE_N_i_18_n_0,
      I2 => CS_N_i_8_n_0,
      I3 => DATA(26),
      I4 => DATA(24),
      I5 => DATA(9),
      O => WE_N_i_10_n_0
    );
WE_N_i_11: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0F0F0F0FFFFE0EF"
    )
        port map (
      I0 => DATA(18),
      I1 => WE_N_i_19_n_0,
      I2 => DATA(4),
      I3 => DATA(3),
      I4 => \DQ_O[4]_i_12_n_0\,
      I5 => DATA(9),
      O => WE_N_i_11_n_0
    );
WE_N_i_12: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => DATA(6),
      I1 => DATA(22),
      I2 => DATA(5),
      I3 => DATA(21),
      O => WE_N_i_12_n_0
    );
WE_N_i_13: unisim.vcomponents.LUT3
    generic map(
      INIT => X"67"
    )
        port map (
      I0 => DATA(19),
      I1 => DATA(18),
      I2 => DATA(20),
      O => WE_N_i_13_n_0
    );
WE_N_i_14: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \FSM_onehot_CurrentState_reg_n_0_[26]\,
      I1 => \^prom_sr\(7),
      O => WE_N_i_14_n_0
    );
WE_N_i_15: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \FSM_onehot_CurrentState_reg_n_0_[7]\,
      I1 => \FSM_onehot_CurrentState_reg_n_0_[12]\,
      I2 => \FSM_onehot_CurrentState_reg_n_0_[2]\,
      I3 => \FSM_onehot_CurrentState_reg_n_0_[4]\,
      I4 => \A_reg[23]_i_32_n_0\,
      I5 => \FSM_onehot_CurrentState_reg_n_0_[6]\,
      O => WE_N_i_15_n_0
    );
WE_N_i_16: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \FSM_onehot_CurrentState_reg_n_0_[37]\,
      I1 => \FSM_onehot_CurrentState_reg_n_0_[36]\,
      I2 => \FSM_onehot_CurrentState_reg_n_0_[40]\,
      I3 => \FSM_onehot_CurrentState_reg_n_0_[35]\,
      I4 => \FSM_onehot_CurrentState_reg_n_0_[39]\,
      O => WE_N_i_16_n_0
    );
WE_N_i_17: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => DATA(7),
      I1 => DATA(27),
      I2 => DATA(16),
      O => WE_N_i_17_n_0
    );
WE_N_i_18: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEFEFEFFFEFFFEFF"
    )
        port map (
      I0 => DATA(25),
      I1 => DATA(23),
      I2 => DATA(12),
      I3 => DATA(4),
      I4 => DATA(11),
      I5 => DATA(10),
      O => WE_N_i_18_n_0
    );
WE_N_i_19: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => DATA(11),
      I1 => DATA(10),
      O => WE_N_i_19_n_0
    );
WE_N_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => WE_N_i_7_n_0,
      I1 => \FSM_onehot_CurrentState_reg_n_0_[21]\,
      I2 => \FSM_onehot_CurrentState_reg_n_0_[16]\,
      I3 => \FSM_onehot_CurrentState_reg_n_0_[22]\,
      I4 => \FSM_onehot_CurrentState_reg_n_0_[23]\,
      I5 => TRI_CTRL_INST_0_i_1_n_0,
      O => WE_N_i_2_n_0
    );
WE_N_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFEFFFF"
    )
        port map (
      I0 => WE_N_i_8_n_0,
      I1 => WE_N_i_9_n_0,
      I2 => WE_N_i_10_n_0,
      I3 => WE_N_i_11_n_0,
      I4 => WE_N_i_12_n_0,
      I5 => WE_N_i_13_n_0,
      O => WE_N_i_3_n_0
    );
WE_N_i_4: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFE0E0E0"
    )
        port map (
      I0 => \^prom_sr\(0),
      I1 => last_blk,
      I2 => \FSM_onehot_CurrentState_reg_n_0_[10]\,
      I3 => \FSM_onehot_CurrentState_reg_n_0_[11]\,
      I4 => \DQ_O[5]_i_10_n_0\,
      O => WE_N_i_4_n_0
    );
WE_N_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFF8FAFAF8F8"
    )
        port map (
      I0 => \FSM_onehot_CurrentState_reg_n_0_[38]\,
      I1 => prog_done,
      I2 => WE_N_i_14_n_0,
      I3 => last_blk,
      I4 => \poll_cnt[0]_i_4_n_0\,
      I5 => \FSM_onehot_CurrentState_reg_n_0_[20]\,
      O => WE_N_i_5_n_0
    );
WE_N_i_6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => WE_N_i_15_n_0,
      I1 => WE_N_i_16_n_0,
      I2 => \FSM_onehot_CurrentState_reg_n_0_[31]\,
      I3 => \FSM_onehot_CurrentState_reg_n_0_[29]\,
      I4 => \FSM_onehot_CurrentState_reg_n_0_[41]\,
      I5 => \FSM_onehot_CurrentState_reg_n_0_[34]\,
      O => WE_N_i_6_n_0
    );
WE_N_i_7: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \FSM_onehot_CurrentState_reg_n_0_[17]\,
      I1 => \FSM_onehot_CurrentState_reg_n_0_[14]\,
      I2 => rst_reg,
      I3 => \FSM_onehot_CurrentState_reg_n_0_[27]\,
      I4 => \FSM_onehot_CurrentState_reg_n_0_[24]\,
      I5 => \FSM_onehot_CurrentState_reg_n_0_[25]\,
      O => WE_N_i_7_n_0
    );
WE_N_i_8: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF7FFFFFFFFFFFFF"
    )
        port map (
      I0 => DATA(17),
      I1 => DATA(1),
      I2 => DATA(0),
      I3 => DATA(15),
      I4 => DATA(14),
      I5 => DATA(13),
      O => WE_N_i_8_n_0
    );
WE_N_i_9: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFBFBF455"
    )
        port map (
      I0 => DATA(18),
      I1 => DATA(28),
      I2 => DATA(3),
      I3 => DATA(4),
      I4 => DATA(9),
      I5 => WE_N_i_17_n_0,
      O => WE_N_i_9_n_0
    );
WE_N_reg: unisim.vcomponents.FDSE
     port map (
      C => CLK,
      CE => '1',
      D => \WE_N_reg__0\,
      Q => WE_N,
      S => rst_reg
    );
byte_sel_reg_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0001FFFE"
    )
        port map (
      I0 => \FSM_onehot_CurrentState_reg_n_0_[32]\,
      I1 => \FSM_onehot_CurrentState_reg_n_0_[41]\,
      I2 => FIFO_RD_EN_INST_0_i_2_n_0,
      I3 => \FSM_onehot_CurrentState_reg_n_0_[29]\,
      I4 => byte_sel_reg,
      O => byte_sel_reg_i_1_n_0
    );
byte_sel_reg_reg: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => byte_sel_reg_i_1_n_0,
      Q => byte_sel_reg,
      R => rst_reg
    );
\data_cnt[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000007"
    )
        port map (
      I0 => \DQ_O[15]_i_3_n_0\,
      I1 => \FSM_onehot_CurrentState_reg_n_0_[33]\,
      I2 => rst_reg,
      I3 => \FSM_onehot_CurrentState_reg_n_0_[32]\,
      I4 => \data_cnt_reg__0\(0),
      O => p_0_in(0)
    );
\data_cnt[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000600060006"
    )
        port map (
      I0 => \data_cnt_reg__0\(0),
      I1 => \data_cnt_reg__0\(1),
      I2 => \FSM_onehot_CurrentState_reg_n_0_[32]\,
      I3 => rst_reg,
      I4 => \FSM_onehot_CurrentState_reg_n_0_[33]\,
      I5 => \DQ_O[15]_i_3_n_0\,
      O => p_0_in(1)
    );
\data_cnt[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1540"
    )
        port map (
      I0 => rst_data_cnt,
      I1 => \data_cnt_reg__0\(0),
      I2 => \data_cnt_reg__0\(1),
      I3 => \data_cnt_reg__0\(2),
      O => p_0_in(2)
    );
\data_cnt[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00006AAA"
    )
        port map (
      I0 => \data_cnt_reg__0\(3),
      I1 => \data_cnt_reg__0\(2),
      I2 => \data_cnt_reg__0\(1),
      I3 => \data_cnt_reg__0\(0),
      I4 => rst_data_cnt,
      O => p_0_in(3)
    );
\data_cnt[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000007FFF8000"
    )
        port map (
      I0 => \data_cnt_reg__0\(0),
      I1 => \data_cnt_reg__0\(1),
      I2 => \data_cnt_reg__0\(2),
      I3 => \data_cnt_reg__0\(3),
      I4 => \data_cnt_reg__0\(4),
      I5 => rst_data_cnt,
      O => p_0_in(4)
    );
\data_cnt[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FF7F0080"
    )
        port map (
      I0 => \data_cnt_reg__0\(4),
      I1 => \data_cnt_reg__0\(3),
      I2 => \data_cnt_reg__0\(2),
      I3 => \data_cnt[5]_i_2_n_0\,
      I4 => \data_cnt_reg__0\(5),
      I5 => rst_data_cnt,
      O => p_0_in(5)
    );
\data_cnt[5]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \data_cnt_reg__0\(0),
      I1 => \data_cnt_reg__0\(1),
      O => \data_cnt[5]_i_2_n_0\
    );
\data_cnt[5]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FEEE"
    )
        port map (
      I0 => \FSM_onehot_CurrentState_reg_n_0_[32]\,
      I1 => rst_reg,
      I2 => \FSM_onehot_CurrentState_reg_n_0_[33]\,
      I3 => \DQ_O[15]_i_3_n_0\,
      O => rst_data_cnt
    );
\data_cnt[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0111000000000111"
    )
        port map (
      I0 => \FSM_onehot_CurrentState_reg_n_0_[32]\,
      I1 => rst_reg,
      I2 => \FSM_onehot_CurrentState_reg_n_0_[33]\,
      I3 => \DQ_O[15]_i_3_n_0\,
      I4 => \data_cnt[6]_i_2_n_0\,
      I5 => \data_cnt_reg__0\(6),
      O => p_0_in(6)
    );
\data_cnt[6]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFFFFFFFFFF"
    )
        port map (
      I0 => \data_cnt_reg__0\(4),
      I1 => \data_cnt_reg__0\(3),
      I2 => \data_cnt_reg__0\(2),
      I3 => \data_cnt_reg__0\(1),
      I4 => \data_cnt_reg__0\(0),
      I5 => \data_cnt_reg__0\(5),
      O => \data_cnt[6]_i_2_n_0\
    );
\data_cnt[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0006"
    )
        port map (
      I0 => \data_cnt_reg__0\(7),
      I1 => \data_cnt[8]_i_3_n_0\,
      I2 => \FSM_onehot_CurrentState_reg_n_0_[32]\,
      I3 => rst_reg,
      O => p_0_in(7)
    );
\data_cnt[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFEEE"
    )
        port map (
      I0 => \FSM_onehot_CurrentState_reg_n_0_[41]\,
      I1 => \FSM_onehot_CurrentState_reg_n_0_[30]\,
      I2 => \DQ_O[15]_i_3_n_0\,
      I3 => \FSM_onehot_CurrentState_reg_n_0_[33]\,
      I4 => rst_reg,
      I5 => \FSM_onehot_CurrentState_reg_n_0_[32]\,
      O => \data_cnt[8]_i_1_n_0\
    );
\data_cnt[8]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000078"
    )
        port map (
      I0 => \data_cnt[8]_i_3_n_0\,
      I1 => \data_cnt_reg__0\(7),
      I2 => \data_cnt_reg__0\(8),
      I3 => \FSM_onehot_CurrentState_reg_n_0_[32]\,
      I4 => rst_reg,
      O => \data_cnt[8]_i_2_n_0\
    );
\data_cnt[8]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0800000000000000"
    )
        port map (
      I0 => \data_cnt_reg__0\(6),
      I1 => \data_cnt_reg__0\(5),
      I2 => \data_cnt[5]_i_2_n_0\,
      I3 => \data_cnt_reg__0\(2),
      I4 => \data_cnt_reg__0\(3),
      I5 => \data_cnt_reg__0\(4),
      O => \data_cnt[8]_i_3_n_0\
    );
\data_cnt_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \data_cnt[8]_i_1_n_0\,
      D => p_0_in(0),
      Q => \data_cnt_reg__0\(0),
      R => '0'
    );
\data_cnt_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \data_cnt[8]_i_1_n_0\,
      D => p_0_in(1),
      Q => \data_cnt_reg__0\(1),
      R => '0'
    );
\data_cnt_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \data_cnt[8]_i_1_n_0\,
      D => p_0_in(2),
      Q => \data_cnt_reg__0\(2),
      R => '0'
    );
\data_cnt_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \data_cnt[8]_i_1_n_0\,
      D => p_0_in(3),
      Q => \data_cnt_reg__0\(3),
      R => '0'
    );
\data_cnt_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \data_cnt[8]_i_1_n_0\,
      D => p_0_in(4),
      Q => \data_cnt_reg__0\(4),
      R => '0'
    );
\data_cnt_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \data_cnt[8]_i_1_n_0\,
      D => p_0_in(5),
      Q => \data_cnt_reg__0\(5),
      R => '0'
    );
\data_cnt_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \data_cnt[8]_i_1_n_0\,
      D => p_0_in(6),
      Q => \data_cnt_reg__0\(6),
      R => '0'
    );
\data_cnt_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \data_cnt[8]_i_1_n_0\,
      D => p_0_in(7),
      Q => \data_cnt_reg__0\(7),
      R => '0'
    );
\data_cnt_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \data_cnt[8]_i_1_n_0\,
      D => \data_cnt[8]_i_2_n_0\,
      Q => \data_cnt_reg__0\(8),
      R => '0'
    );
\end_addr_reg[23]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => \FSM_onehot_CurrentState_reg_n_0_[1]\,
      I1 => CS_N_i_2_n_0,
      I2 => CS_N_i_3_n_0,
      O => end_addr_reg_en
    );
\end_addr_reg_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => end_addr_reg_en,
      D => DATA(0),
      Q => \end_addr_reg_reg_n_0_[0]\,
      R => RST
    );
\end_addr_reg_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => end_addr_reg_en,
      D => DATA(10),
      Q => \end_addr_reg_reg_n_0_[10]\,
      R => RST
    );
\end_addr_reg_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => end_addr_reg_en,
      D => DATA(11),
      Q => \end_addr_reg_reg_n_0_[11]\,
      R => RST
    );
\end_addr_reg_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => end_addr_reg_en,
      D => DATA(12),
      Q => \end_addr_reg_reg_n_0_[12]\,
      R => RST
    );
\end_addr_reg_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => end_addr_reg_en,
      D => DATA(13),
      Q => \end_addr_reg_reg_n_0_[13]\,
      R => RST
    );
\end_addr_reg_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => end_addr_reg_en,
      D => DATA(14),
      Q => \end_addr_reg_reg_n_0_[14]\,
      R => RST
    );
\end_addr_reg_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => end_addr_reg_en,
      D => DATA(15),
      Q => \end_addr_reg_reg_n_0_[15]\,
      R => RST
    );
\end_addr_reg_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => end_addr_reg_en,
      D => DATA(16),
      Q => \end_addr_reg_reg_n_0_[16]\,
      R => RST
    );
\end_addr_reg_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => end_addr_reg_en,
      D => DATA(17),
      Q => end_blk(0),
      R => RST
    );
\end_addr_reg_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => end_addr_reg_en,
      D => DATA(18),
      Q => end_blk(1),
      R => RST
    );
\end_addr_reg_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => end_addr_reg_en,
      D => DATA(19),
      Q => end_blk(2),
      R => RST
    );
\end_addr_reg_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => end_addr_reg_en,
      D => DATA(1),
      Q => \end_addr_reg_reg_n_0_[1]\,
      R => RST
    );
\end_addr_reg_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => end_addr_reg_en,
      D => DATA(20),
      Q => end_blk(3),
      R => RST
    );
\end_addr_reg_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => end_addr_reg_en,
      D => DATA(21),
      Q => end_blk(4),
      R => RST
    );
\end_addr_reg_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => end_addr_reg_en,
      D => DATA(22),
      Q => end_blk(5),
      R => RST
    );
\end_addr_reg_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => end_addr_reg_en,
      D => DATA(23),
      Q => end_blk(6),
      R => RST
    );
\end_addr_reg_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => end_addr_reg_en,
      D => DATA(2),
      Q => \end_addr_reg_reg_n_0_[2]\,
      R => RST
    );
\end_addr_reg_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => end_addr_reg_en,
      D => DATA(3),
      Q => \end_addr_reg_reg_n_0_[3]\,
      R => RST
    );
\end_addr_reg_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => end_addr_reg_en,
      D => DATA(4),
      Q => \end_addr_reg_reg_n_0_[4]\,
      R => RST
    );
\end_addr_reg_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => end_addr_reg_en,
      D => DATA(5),
      Q => \end_addr_reg_reg_n_0_[5]\,
      R => RST
    );
\end_addr_reg_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => end_addr_reg_en,
      D => DATA(6),
      Q => \end_addr_reg_reg_n_0_[6]\,
      R => RST
    );
\end_addr_reg_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => end_addr_reg_en,
      D => DATA(7),
      Q => \end_addr_reg_reg_n_0_[7]\,
      R => RST
    );
\end_addr_reg_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => end_addr_reg_en,
      D => DATA(8),
      Q => \end_addr_reg_reg_n_0_[8]\,
      R => RST
    );
\end_addr_reg_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => end_addr_reg_en,
      D => DATA(9),
      Q => \end_addr_reg_reg_n_0_[9]\,
      R => RST
    );
\error_reg[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF00100000"
    )
        port map (
      I0 => \error_reg[2]_i_4_n_0\,
      I1 => \error_reg[1]_i_2_n_0\,
      I2 => \error_reg[1]_i_3_n_0\,
      I3 => \error_reg[1]_i_4_n_0\,
      I4 => \FSM_onehot_CurrentState_reg_n_0_[21]\,
      I5 => \error_reg[2]_i_3_n_0\,
      O => error_flag(0)
    );
\error_reg[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF00100000"
    )
        port map (
      I0 => \error_reg[2]_i_4_n_0\,
      I1 => \error_reg[1]_i_2_n_0\,
      I2 => \error_reg[1]_i_3_n_0\,
      I3 => \error_reg[1]_i_4_n_0\,
      I4 => \FSM_onehot_CurrentState_reg_n_0_[21]\,
      I5 => \error_reg[2]_i_7_n_0\,
      O => error_flag(1)
    );
\error_reg[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \error_reg[1]_i_5_n_0\,
      I1 => \error_reg[1]_i_6_n_0\,
      I2 => poll_cnt_reg(15),
      I3 => poll_cnt_reg(8),
      I4 => poll_cnt_reg(17),
      I5 => poll_cnt_reg(5),
      O => \error_reg[1]_i_2_n_0\
    );
\error_reg[1]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0004"
    )
        port map (
      I0 => poll_cnt_reg(19),
      I1 => poll_cnt_reg(18),
      I2 => poll_cnt_reg(17),
      I3 => poll_cnt_reg(16),
      O => \error_reg[1]_i_3_n_0\
    );
\error_reg[1]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFF7F"
    )
        port map (
      I0 => poll_cnt_reg(23),
      I1 => poll_cnt_reg(22),
      I2 => poll_cnt_reg(13),
      I3 => poll_cnt_reg(11),
      I4 => poll_cnt_reg(14),
      I5 => poll_cnt_reg(19),
      O => \error_reg[1]_i_4_n_0\
    );
\error_reg[1]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"77F777F7FFFF77F7"
    )
        port map (
      I0 => poll_cnt_reg(20),
      I1 => poll_cnt_reg(21),
      I2 => poll_cnt_reg(3),
      I3 => poll_cnt_reg(4),
      I4 => poll_cnt_reg(6),
      I5 => poll_cnt_reg(7),
      O => \error_reg[1]_i_5_n_0\
    );
\error_reg[1]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FDDD"
    )
        port map (
      I0 => poll_cnt_reg(10),
      I1 => poll_cnt_reg(9),
      I2 => poll_cnt_reg(13),
      I3 => poll_cnt_reg(12),
      O => \error_reg[1]_i_6_n_0\
    );
\error_reg[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFABAAAAAA"
    )
        port map (
      I0 => \error_reg[2]_i_3_n_0\,
      I1 => \error_reg[2]_i_4_n_0\,
      I2 => \error_reg[2]_i_5_n_0\,
      I3 => \error_reg[2]_i_6_n_0\,
      I4 => \FSM_onehot_CurrentState_reg_n_0_[21]\,
      I5 => \error_reg[2]_i_7_n_0\,
      O => error_reg_en
    );
\error_reg[2]_i_10\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => poll_cnt_reg(6),
      I1 => poll_cnt_reg(7),
      O => \error_reg[2]_i_10_n_0\
    );
\error_reg[2]_i_11\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => poll_cnt_reg(2),
      I1 => poll_cnt_reg(1),
      I2 => poll_cnt_reg(0),
      O => \error_reg[2]_i_11_n_0\
    );
\error_reg[2]_i_12\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"DFFF"
    )
        port map (
      I0 => poll_cnt_reg(13),
      I1 => poll_cnt_reg(14),
      I2 => poll_cnt_reg(22),
      I3 => poll_cnt_reg(23),
      O => \error_reg[2]_i_12_n_0\
    );
\error_reg[2]_i_13\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \^prom_sr\(1),
      I1 => \^prom_sr\(0),
      I2 => \^prom_sr\(2),
      I3 => \^prom_sr\(3),
      O => \error_reg[2]_i_13_n_0\
    );
\error_reg[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000004000000000"
    )
        port map (
      I0 => \error_reg[2]_i_8_n_0\,
      I1 => \error_reg[2]_i_9_n_0\,
      I2 => \error_reg[2]_i_10_n_0\,
      I3 => poll_cnt_reg(12),
      I4 => poll_cnt_reg(11),
      I5 => \FSM_onehot_CurrentState_reg_n_0_[39]\,
      O => error_flag(2)
    );
\error_reg[2]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F8"
    )
        port map (
      I0 => \FSM_onehot_CurrentState_reg_n_0_[11]\,
      I1 => \DQ_O[5]_i_10_n_0\,
      I2 => error_flag(2),
      O => \error_reg[2]_i_3_n_0\
    );
\error_reg[2]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \error_reg[2]_i_11_n_0\,
      I1 => poll_cnt_reg(8),
      I2 => poll_cnt_reg(4),
      I3 => poll_cnt_reg(7),
      I4 => poll_cnt_reg(5),
      O => \error_reg[2]_i_4_n_0\
    );
\error_reg[2]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFF7FF"
    )
        port map (
      I0 => poll_cnt_reg(20),
      I1 => poll_cnt_reg(21),
      I2 => poll_cnt_reg(9),
      I3 => poll_cnt_reg(10),
      I4 => poll_cnt_reg(12),
      I5 => poll_cnt_reg(11),
      O => \error_reg[2]_i_5_n_0\
    );
\error_reg[2]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000002"
    )
        port map (
      I0 => \error_reg[1]_i_3_n_0\,
      I1 => poll_cnt_reg(6),
      I2 => poll_cnt_reg(15),
      I3 => poll_cnt_reg(3),
      I4 => \error_reg[2]_i_12_n_0\,
      O => \error_reg[2]_i_6_n_0\
    );
\error_reg[2]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAA800000000"
    )
        port map (
      I0 => \^prom_sr\(7),
      I1 => \error_reg[2]_i_13_n_0\,
      I2 => \^prom_sr\(5),
      I3 => \^prom_sr\(4),
      I4 => \^prom_sr\(6),
      I5 => \FSM_onehot_CurrentState_reg_n_0_[20]\,
      O => \error_reg[2]_i_7_n_0\
    );
\error_reg[2]_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFEFFFF"
    )
        port map (
      I0 => \error_reg[2]_i_11_n_0\,
      I1 => poll_cnt_reg(8),
      I2 => poll_cnt_reg(3),
      I3 => poll_cnt_reg(13),
      I4 => poll_cnt_reg(14),
      O => \error_reg[2]_i_8_n_0\
    );
\error_reg[2]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => poll_cnt_reg(9),
      I1 => poll_cnt_reg(10),
      I2 => poll_cnt_reg(4),
      I3 => poll_cnt_reg(5),
      O => \error_reg[2]_i_9_n_0\
    );
\error_reg_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => error_reg_en,
      D => error_flag(0),
      Q => ERROR(0),
      R => RST
    );
\error_reg_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => error_reg_en,
      D => error_flag(1),
      Q => ERROR(1),
      R => RST
    );
\error_reg_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => error_reg_en,
      D => error_flag(2),
      Q => ERROR(2),
      R => RST
    );
\poll_cnt[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFABAA"
    )
        port map (
      I0 => rst_reg,
      I1 => \poll_cnt[0]_i_4_n_0\,
      I2 => last_blk,
      I3 => \FSM_onehot_CurrentState_reg_n_0_[20]\,
      I4 => \poll_cnt[0]_i_5_n_0\,
      I5 => \FSM_onehot_CurrentState_reg_n_0_[4]\,
      O => rst_poll_cnt
    );
\poll_cnt[0]_i_10\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => poll_cnt_reg(3),
      O => \poll_cnt[0]_i_10_n_0\
    );
\poll_cnt[0]_i_11\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => poll_cnt_reg(2),
      O => \poll_cnt[0]_i_11_n_0\
    );
\poll_cnt[0]_i_12\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => poll_cnt_reg(1),
      O => \poll_cnt[0]_i_12_n_0\
    );
\poll_cnt[0]_i_13\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => poll_cnt_reg(0),
      O => \poll_cnt[0]_i_13_n_0\
    );
\poll_cnt[0]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88FF88F8"
    )
        port map (
      I0 => \poll_cnt[0]_i_4_n_0\,
      I1 => \FSM_onehot_CurrentState_reg_n_0_[38]\,
      I2 => \FSM_onehot_CurrentState_reg_n_0_[26]\,
      I3 => \^prom_sr\(7),
      I4 => \FSM_onehot_CurrentState_reg_n_0_[20]\,
      O => poll_cnt_en
    );
\poll_cnt[0]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFEFFFF"
    )
        port map (
      I0 => \^prom_sr\(6),
      I1 => \^prom_sr\(4),
      I2 => \^prom_sr\(5),
      I3 => \error_reg[2]_i_13_n_0\,
      I4 => \^prom_sr\(7),
      O => \poll_cnt[0]_i_4_n_0\
    );
\poll_cnt[0]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"888888F8"
    )
        port map (
      I0 => \FSM_onehot_CurrentState_reg_n_0_[26]\,
      I1 => \^prom_sr\(7),
      I2 => \FSM_onehot_CurrentState_reg_n_0_[38]\,
      I3 => prog_done,
      I4 => \poll_cnt[0]_i_4_n_0\,
      O => \poll_cnt[0]_i_5_n_0\
    );
\poll_cnt[0]_i_6\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => poll_cnt_reg(7),
      O => \poll_cnt[0]_i_6_n_0\
    );
\poll_cnt[0]_i_7\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => poll_cnt_reg(6),
      O => \poll_cnt[0]_i_7_n_0\
    );
\poll_cnt[0]_i_8\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => poll_cnt_reg(5),
      O => \poll_cnt[0]_i_8_n_0\
    );
\poll_cnt[0]_i_9\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => poll_cnt_reg(4),
      O => \poll_cnt[0]_i_9_n_0\
    );
\poll_cnt[16]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => poll_cnt_reg(23),
      O => \poll_cnt[16]_i_2_n_0\
    );
\poll_cnt[16]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => poll_cnt_reg(22),
      O => \poll_cnt[16]_i_3_n_0\
    );
\poll_cnt[16]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => poll_cnt_reg(21),
      O => \poll_cnt[16]_i_4_n_0\
    );
\poll_cnt[16]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => poll_cnt_reg(20),
      O => \poll_cnt[16]_i_5_n_0\
    );
\poll_cnt[16]_i_6\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => poll_cnt_reg(19),
      O => \poll_cnt[16]_i_6_n_0\
    );
\poll_cnt[16]_i_7\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => poll_cnt_reg(18),
      O => \poll_cnt[16]_i_7_n_0\
    );
\poll_cnt[16]_i_8\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => poll_cnt_reg(17),
      O => \poll_cnt[16]_i_8_n_0\
    );
\poll_cnt[16]_i_9\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => poll_cnt_reg(16),
      O => \poll_cnt[16]_i_9_n_0\
    );
\poll_cnt[8]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => poll_cnt_reg(15),
      O => \poll_cnt[8]_i_2_n_0\
    );
\poll_cnt[8]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => poll_cnt_reg(14),
      O => \poll_cnt[8]_i_3_n_0\
    );
\poll_cnt[8]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => poll_cnt_reg(13),
      O => \poll_cnt[8]_i_4_n_0\
    );
\poll_cnt[8]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => poll_cnt_reg(12),
      O => \poll_cnt[8]_i_5_n_0\
    );
\poll_cnt[8]_i_6\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => poll_cnt_reg(11),
      O => \poll_cnt[8]_i_6_n_0\
    );
\poll_cnt[8]_i_7\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => poll_cnt_reg(10),
      O => \poll_cnt[8]_i_7_n_0\
    );
\poll_cnt[8]_i_8\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => poll_cnt_reg(9),
      O => \poll_cnt[8]_i_8_n_0\
    );
\poll_cnt[8]_i_9\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => poll_cnt_reg(8),
      O => \poll_cnt[8]_i_9_n_0\
    );
\poll_cnt_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => poll_cnt_en,
      D => \poll_cnt_reg[0]_i_3_n_15\,
      Q => poll_cnt_reg(0),
      R => rst_poll_cnt
    );
\poll_cnt_reg[0]_i_3\: unisim.vcomponents.CARRY8
     port map (
      CI => '0',
      CI_TOP => '0',
      CO(7) => \poll_cnt_reg[0]_i_3_n_0\,
      CO(6) => \poll_cnt_reg[0]_i_3_n_1\,
      CO(5) => \poll_cnt_reg[0]_i_3_n_2\,
      CO(4) => \poll_cnt_reg[0]_i_3_n_3\,
      CO(3) => \NLW_poll_cnt_reg[0]_i_3_CO_UNCONNECTED\(3),
      CO(2) => \poll_cnt_reg[0]_i_3_n_5\,
      CO(1) => \poll_cnt_reg[0]_i_3_n_6\,
      CO(0) => \poll_cnt_reg[0]_i_3_n_7\,
      DI(7 downto 0) => B"00000001",
      O(7) => \poll_cnt_reg[0]_i_3_n_8\,
      O(6) => \poll_cnt_reg[0]_i_3_n_9\,
      O(5) => \poll_cnt_reg[0]_i_3_n_10\,
      O(4) => \poll_cnt_reg[0]_i_3_n_11\,
      O(3) => \poll_cnt_reg[0]_i_3_n_12\,
      O(2) => \poll_cnt_reg[0]_i_3_n_13\,
      O(1) => \poll_cnt_reg[0]_i_3_n_14\,
      O(0) => \poll_cnt_reg[0]_i_3_n_15\,
      S(7) => \poll_cnt[0]_i_6_n_0\,
      S(6) => \poll_cnt[0]_i_7_n_0\,
      S(5) => \poll_cnt[0]_i_8_n_0\,
      S(4) => \poll_cnt[0]_i_9_n_0\,
      S(3) => \poll_cnt[0]_i_10_n_0\,
      S(2) => \poll_cnt[0]_i_11_n_0\,
      S(1) => \poll_cnt[0]_i_12_n_0\,
      S(0) => \poll_cnt[0]_i_13_n_0\
    );
\poll_cnt_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => poll_cnt_en,
      D => \poll_cnt_reg[8]_i_1_n_13\,
      Q => poll_cnt_reg(10),
      R => rst_poll_cnt
    );
\poll_cnt_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => poll_cnt_en,
      D => \poll_cnt_reg[8]_i_1_n_12\,
      Q => poll_cnt_reg(11),
      R => rst_poll_cnt
    );
\poll_cnt_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => poll_cnt_en,
      D => \poll_cnt_reg[8]_i_1_n_11\,
      Q => poll_cnt_reg(12),
      R => rst_poll_cnt
    );
\poll_cnt_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => poll_cnt_en,
      D => \poll_cnt_reg[8]_i_1_n_10\,
      Q => poll_cnt_reg(13),
      R => rst_poll_cnt
    );
\poll_cnt_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => poll_cnt_en,
      D => \poll_cnt_reg[8]_i_1_n_9\,
      Q => poll_cnt_reg(14),
      R => rst_poll_cnt
    );
\poll_cnt_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => poll_cnt_en,
      D => \poll_cnt_reg[8]_i_1_n_8\,
      Q => poll_cnt_reg(15),
      R => rst_poll_cnt
    );
\poll_cnt_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => poll_cnt_en,
      D => \poll_cnt_reg[16]_i_1_n_15\,
      Q => poll_cnt_reg(16),
      R => rst_poll_cnt
    );
\poll_cnt_reg[16]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => \poll_cnt_reg[8]_i_1_n_0\,
      CI_TOP => '0',
      CO(7) => \NLW_poll_cnt_reg[16]_i_1_CO_UNCONNECTED\(7),
      CO(6) => \poll_cnt_reg[16]_i_1_n_1\,
      CO(5) => \poll_cnt_reg[16]_i_1_n_2\,
      CO(4) => \poll_cnt_reg[16]_i_1_n_3\,
      CO(3) => \NLW_poll_cnt_reg[16]_i_1_CO_UNCONNECTED\(3),
      CO(2) => \poll_cnt_reg[16]_i_1_n_5\,
      CO(1) => \poll_cnt_reg[16]_i_1_n_6\,
      CO(0) => \poll_cnt_reg[16]_i_1_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7) => \poll_cnt_reg[16]_i_1_n_8\,
      O(6) => \poll_cnt_reg[16]_i_1_n_9\,
      O(5) => \poll_cnt_reg[16]_i_1_n_10\,
      O(4) => \poll_cnt_reg[16]_i_1_n_11\,
      O(3) => \poll_cnt_reg[16]_i_1_n_12\,
      O(2) => \poll_cnt_reg[16]_i_1_n_13\,
      O(1) => \poll_cnt_reg[16]_i_1_n_14\,
      O(0) => \poll_cnt_reg[16]_i_1_n_15\,
      S(7) => \poll_cnt[16]_i_2_n_0\,
      S(6) => \poll_cnt[16]_i_3_n_0\,
      S(5) => \poll_cnt[16]_i_4_n_0\,
      S(4) => \poll_cnt[16]_i_5_n_0\,
      S(3) => \poll_cnt[16]_i_6_n_0\,
      S(2) => \poll_cnt[16]_i_7_n_0\,
      S(1) => \poll_cnt[16]_i_8_n_0\,
      S(0) => \poll_cnt[16]_i_9_n_0\
    );
\poll_cnt_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => poll_cnt_en,
      D => \poll_cnt_reg[16]_i_1_n_14\,
      Q => poll_cnt_reg(17),
      R => rst_poll_cnt
    );
\poll_cnt_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => poll_cnt_en,
      D => \poll_cnt_reg[16]_i_1_n_13\,
      Q => poll_cnt_reg(18),
      R => rst_poll_cnt
    );
\poll_cnt_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => poll_cnt_en,
      D => \poll_cnt_reg[16]_i_1_n_12\,
      Q => poll_cnt_reg(19),
      R => rst_poll_cnt
    );
\poll_cnt_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => poll_cnt_en,
      D => \poll_cnt_reg[0]_i_3_n_14\,
      Q => poll_cnt_reg(1),
      R => rst_poll_cnt
    );
\poll_cnt_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => poll_cnt_en,
      D => \poll_cnt_reg[16]_i_1_n_11\,
      Q => poll_cnt_reg(20),
      R => rst_poll_cnt
    );
\poll_cnt_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => poll_cnt_en,
      D => \poll_cnt_reg[16]_i_1_n_10\,
      Q => poll_cnt_reg(21),
      R => rst_poll_cnt
    );
\poll_cnt_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => poll_cnt_en,
      D => \poll_cnt_reg[16]_i_1_n_9\,
      Q => poll_cnt_reg(22),
      R => rst_poll_cnt
    );
\poll_cnt_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => poll_cnt_en,
      D => \poll_cnt_reg[16]_i_1_n_8\,
      Q => poll_cnt_reg(23),
      R => rst_poll_cnt
    );
\poll_cnt_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => poll_cnt_en,
      D => \poll_cnt_reg[0]_i_3_n_13\,
      Q => poll_cnt_reg(2),
      R => rst_poll_cnt
    );
\poll_cnt_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => poll_cnt_en,
      D => \poll_cnt_reg[0]_i_3_n_12\,
      Q => poll_cnt_reg(3),
      R => rst_poll_cnt
    );
\poll_cnt_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => poll_cnt_en,
      D => \poll_cnt_reg[0]_i_3_n_11\,
      Q => poll_cnt_reg(4),
      R => rst_poll_cnt
    );
\poll_cnt_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => poll_cnt_en,
      D => \poll_cnt_reg[0]_i_3_n_10\,
      Q => poll_cnt_reg(5),
      R => rst_poll_cnt
    );
\poll_cnt_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => poll_cnt_en,
      D => \poll_cnt_reg[0]_i_3_n_9\,
      Q => poll_cnt_reg(6),
      R => rst_poll_cnt
    );
\poll_cnt_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => poll_cnt_en,
      D => \poll_cnt_reg[0]_i_3_n_8\,
      Q => poll_cnt_reg(7),
      R => rst_poll_cnt
    );
\poll_cnt_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => poll_cnt_en,
      D => \poll_cnt_reg[8]_i_1_n_15\,
      Q => poll_cnt_reg(8),
      R => rst_poll_cnt
    );
\poll_cnt_reg[8]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => \poll_cnt_reg[0]_i_3_n_0\,
      CI_TOP => '0',
      CO(7) => \poll_cnt_reg[8]_i_1_n_0\,
      CO(6) => \poll_cnt_reg[8]_i_1_n_1\,
      CO(5) => \poll_cnt_reg[8]_i_1_n_2\,
      CO(4) => \poll_cnt_reg[8]_i_1_n_3\,
      CO(3) => \NLW_poll_cnt_reg[8]_i_1_CO_UNCONNECTED\(3),
      CO(2) => \poll_cnt_reg[8]_i_1_n_5\,
      CO(1) => \poll_cnt_reg[8]_i_1_n_6\,
      CO(0) => \poll_cnt_reg[8]_i_1_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7) => \poll_cnt_reg[8]_i_1_n_8\,
      O(6) => \poll_cnt_reg[8]_i_1_n_9\,
      O(5) => \poll_cnt_reg[8]_i_1_n_10\,
      O(4) => \poll_cnt_reg[8]_i_1_n_11\,
      O(3) => \poll_cnt_reg[8]_i_1_n_12\,
      O(2) => \poll_cnt_reg[8]_i_1_n_13\,
      O(1) => \poll_cnt_reg[8]_i_1_n_14\,
      O(0) => \poll_cnt_reg[8]_i_1_n_15\,
      S(7) => \poll_cnt[8]_i_2_n_0\,
      S(6) => \poll_cnt[8]_i_3_n_0\,
      S(5) => \poll_cnt[8]_i_4_n_0\,
      S(4) => \poll_cnt[8]_i_5_n_0\,
      S(3) => \poll_cnt[8]_i_6_n_0\,
      S(2) => \poll_cnt[8]_i_7_n_0\,
      S(1) => \poll_cnt[8]_i_8_n_0\,
      S(0) => \poll_cnt[8]_i_9_n_0\
    );
\poll_cnt_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => poll_cnt_en,
      D => \poll_cnt_reg[8]_i_1_n_14\,
      Q => poll_cnt_reg(9),
      R => rst_poll_cnt
    );
prog_done_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FEAA"
    )
        port map (
      I0 => prog_done,
      I1 => \FSM_onehot_CurrentState_reg_n_0_[33]\,
      I2 => \FSM_onehot_CurrentState_reg_n_0_[30]\,
      I3 => end_addr_reached04_in,
      O => prog_done_i_1_n_0
    );
prog_done_i_10: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \end_addr_reg_reg_n_0_[1]\,
      I1 => \^a\(2),
      I2 => \end_addr_reg_reg_n_0_[2]\,
      I3 => \^a\(3),
      I4 => \^a\(1),
      I5 => \end_addr_reg_reg_n_0_[0]\,
      O => prog_done_i_10_n_0
    );
prog_done_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => end_blk(6),
      I1 => \^a\(24),
      I2 => \^a\(23),
      I3 => end_blk(5),
      I4 => \^a\(22),
      I5 => end_blk(4),
      O => prog_done_i_3_n_0
    );
prog_done_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^a\(20),
      I1 => end_blk(2),
      I2 => \^a\(19),
      I3 => end_blk(1),
      I4 => end_blk(3),
      I5 => \^a\(21),
      O => prog_done_i_4_n_0
    );
prog_done_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => end_blk(0),
      I1 => \^a\(18),
      I2 => \end_addr_reg_reg_n_0_[16]\,
      I3 => \^a\(17),
      I4 => \end_addr_reg_reg_n_0_[15]\,
      I5 => \^a\(16),
      O => prog_done_i_5_n_0
    );
prog_done_i_6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \end_addr_reg_reg_n_0_[13]\,
      I1 => \^a\(14),
      I2 => \end_addr_reg_reg_n_0_[14]\,
      I3 => \^a\(15),
      I4 => \^a\(13),
      I5 => \end_addr_reg_reg_n_0_[12]\,
      O => prog_done_i_6_n_0
    );
prog_done_i_7: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \end_addr_reg_reg_n_0_[11]\,
      I1 => \^a\(12),
      I2 => \end_addr_reg_reg_n_0_[9]\,
      I3 => \^a\(10),
      I4 => \^a\(11),
      I5 => \end_addr_reg_reg_n_0_[10]\,
      O => prog_done_i_7_n_0
    );
prog_done_i_8: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \end_addr_reg_reg_n_0_[6]\,
      I1 => \^a\(7),
      I2 => \end_addr_reg_reg_n_0_[8]\,
      I3 => \^a\(9),
      I4 => \^a\(8),
      I5 => \end_addr_reg_reg_n_0_[7]\,
      O => prog_done_i_8_n_0
    );
prog_done_i_9: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \end_addr_reg_reg_n_0_[5]\,
      I1 => \^a\(6),
      I2 => \end_addr_reg_reg_n_0_[3]\,
      I3 => \^a\(4),
      I4 => \^a\(5),
      I5 => \end_addr_reg_reg_n_0_[4]\,
      O => prog_done_i_9_n_0
    );
prog_done_reg: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => prog_done_i_1_n_0,
      Q => prog_done,
      R => rst_reg
    );
prog_done_reg_i_2: unisim.vcomponents.CARRY8
     port map (
      CI => '1',
      CI_TOP => '0',
      CO(7) => end_addr_reached04_in,
      CO(6) => prog_done_reg_i_2_n_1,
      CO(5) => prog_done_reg_i_2_n_2,
      CO(4) => prog_done_reg_i_2_n_3,
      CO(3) => NLW_prog_done_reg_i_2_CO_UNCONNECTED(3),
      CO(2) => prog_done_reg_i_2_n_5,
      CO(1) => prog_done_reg_i_2_n_6,
      CO(0) => prog_done_reg_i_2_n_7,
      DI(7 downto 0) => B"00000000",
      O(7 downto 0) => NLW_prog_done_reg_i_2_O_UNCONNECTED(7 downto 0),
      S(7) => prog_done_i_3_n_0,
      S(6) => prog_done_i_4_n_0,
      S(5) => prog_done_i_5_n_0,
      S(4) => prog_done_i_6_n_0,
      S(3) => prog_done_i_7_n_0,
      S(2) => prog_done_i_8_n_0,
      S(1) => prog_done_i_9_n_0,
      S(0) => prog_done_i_10_n_0
    );
\start_addr_reg[15]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_CurrentState_reg_n_0_[1]\,
      I1 => \start_addr_reg[15]_i_2_n_0\,
      O => start_addr_reg_en
    );
\start_addr_reg[15]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000800"
    )
        port map (
      I0 => \start_addr_reg[15]_i_3_n_0\,
      I1 => DATA(24),
      I2 => DATA(17),
      I3 => DATA(25),
      I4 => \start_addr_reg[15]_i_4_n_0\,
      I5 => CS_N_i_8_n_0,
      O => \start_addr_reg[15]_i_2_n_0\
    );
\start_addr_reg[15]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000400"
    )
        port map (
      I0 => DATA(20),
      I1 => DATA(28),
      I2 => DATA(27),
      I3 => DATA(22),
      I4 => DATA(19),
      I5 => DATA(18),
      O => \start_addr_reg[15]_i_3_n_0\
    );
\start_addr_reg[15]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFEF"
    )
        port map (
      I0 => DATA(23),
      I1 => DATA(21),
      I2 => DATA(16),
      I3 => DATA(26),
      O => \start_addr_reg[15]_i_4_n_0\
    );
\start_addr_reg_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => start_addr_reg_en,
      D => DATA(0),
      Q => start_addr_reg(0),
      R => RST
    );
\start_addr_reg_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => start_addr_reg_en,
      D => DATA(10),
      Q => start_addr_reg(10),
      R => RST
    );
\start_addr_reg_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => start_addr_reg_en,
      D => DATA(11),
      Q => start_addr_reg(11),
      R => RST
    );
\start_addr_reg_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => start_addr_reg_en,
      D => DATA(12),
      Q => start_addr_reg(12),
      R => RST
    );
\start_addr_reg_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => start_addr_reg_en,
      D => DATA(13),
      Q => start_addr_reg(13),
      R => RST
    );
\start_addr_reg_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => start_addr_reg_en,
      D => DATA(14),
      Q => start_addr_reg(14),
      R => RST
    );
\start_addr_reg_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => start_addr_reg_en,
      D => DATA(15),
      Q => start_addr_reg(15),
      R => RST
    );
\start_addr_reg_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => start_addr_reg_en,
      D => DATA(1),
      Q => start_addr_reg(1),
      R => RST
    );
\start_addr_reg_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => start_addr_reg_en,
      D => DATA(2),
      Q => start_addr_reg(2),
      R => RST
    );
\start_addr_reg_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => start_addr_reg_en,
      D => DATA(3),
      Q => start_addr_reg(3),
      R => RST
    );
\start_addr_reg_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => start_addr_reg_en,
      D => DATA(4),
      Q => start_addr_reg(4),
      R => RST
    );
\start_addr_reg_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => start_addr_reg_en,
      D => DATA(5),
      Q => start_addr_reg(5),
      R => RST
    );
\start_addr_reg_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => start_addr_reg_en,
      D => DATA(6),
      Q => start_addr_reg(6),
      R => RST
    );
\start_addr_reg_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => start_addr_reg_en,
      D => DATA(7),
      Q => start_addr_reg(7),
      R => RST
    );
\start_addr_reg_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => start_addr_reg_en,
      D => DATA(8),
      Q => start_addr_reg(8),
      R => RST
    );
\start_addr_reg_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => start_addr_reg_en,
      D => DATA(9),
      Q => start_addr_reg(9),
      R => RST
    );
\unlck_cnt[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \unlck_cnt_reg__0\(0),
      O => \p_0_in__0\(0)
    );
\unlck_cnt[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \unlck_cnt_reg__0\(0),
      I1 => \unlck_cnt_reg__0\(1),
      O => \p_0_in__0\(1)
    );
\unlck_cnt[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => \unlck_cnt_reg__0\(2),
      I1 => \unlck_cnt_reg__0\(1),
      I2 => \unlck_cnt_reg__0\(0),
      O => \unlck_cnt[2]_i_1_n_0\
    );
\unlck_cnt[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => \unlck_cnt_reg__0\(3),
      I1 => \unlck_cnt_reg__0\(1),
      I2 => \unlck_cnt_reg__0\(0),
      I3 => \unlck_cnt_reg__0\(2),
      O => \p_0_in__0\(3)
    );
\unlck_cnt[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \unlck_cnt_reg__0\(2),
      I1 => \unlck_cnt_reg__0\(0),
      I2 => \unlck_cnt_reg__0\(1),
      I3 => \unlck_cnt_reg__0\(3),
      I4 => \unlck_cnt_reg__0\(4),
      O => \p_0_in__0\(4)
    );
\unlck_cnt[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAAAAAAAAAAAAAA"
    )
        port map (
      I0 => \unlck_cnt_reg__0\(5),
      I1 => \unlck_cnt_reg__0\(2),
      I2 => \unlck_cnt_reg__0\(0),
      I3 => \unlck_cnt_reg__0\(1),
      I4 => \unlck_cnt_reg__0\(3),
      I5 => \unlck_cnt_reg__0\(4),
      O => \p_0_in__0\(5)
    );
\unlck_cnt[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => \unlck_cnt_reg__0\(6),
      I1 => \unlck_cnt[8]_i_3_n_0\,
      I2 => \unlck_cnt_reg__0\(5),
      O => \p_0_in__0\(6)
    );
\unlck_cnt[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => \unlck_cnt_reg__0\(7),
      I1 => \unlck_cnt_reg__0\(5),
      I2 => \unlck_cnt[8]_i_3_n_0\,
      I3 => \unlck_cnt_reg__0\(6),
      O => \p_0_in__0\(7)
    );
\unlck_cnt[8]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_CurrentState_reg_n_0_[10]\,
      I1 => \^prom_sr\(0),
      O => unlck_cnt_en
    );
\unlck_cnt[8]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => \unlck_cnt_reg__0\(8),
      I1 => \unlck_cnt_reg__0\(6),
      I2 => \unlck_cnt[8]_i_3_n_0\,
      I3 => \unlck_cnt_reg__0\(5),
      I4 => \unlck_cnt_reg__0\(7),
      O => \p_0_in__0\(8)
    );
\unlck_cnt[8]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => \unlck_cnt_reg__0\(4),
      I1 => \unlck_cnt_reg__0\(3),
      I2 => \unlck_cnt_reg__0\(1),
      I3 => \unlck_cnt_reg__0\(0),
      I4 => \unlck_cnt_reg__0\(2),
      O => \unlck_cnt[8]_i_3_n_0\
    );
\unlck_cnt_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => unlck_cnt_en,
      D => \p_0_in__0\(0),
      Q => \unlck_cnt_reg__0\(0),
      R => rst_reg
    );
\unlck_cnt_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => unlck_cnt_en,
      D => \p_0_in__0\(1),
      Q => \unlck_cnt_reg__0\(1),
      R => rst_reg
    );
\unlck_cnt_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => unlck_cnt_en,
      D => \unlck_cnt[2]_i_1_n_0\,
      Q => \unlck_cnt_reg__0\(2),
      R => rst_reg
    );
\unlck_cnt_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => unlck_cnt_en,
      D => \p_0_in__0\(3),
      Q => \unlck_cnt_reg__0\(3),
      R => rst_reg
    );
\unlck_cnt_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => unlck_cnt_en,
      D => \p_0_in__0\(4),
      Q => \unlck_cnt_reg__0\(4),
      R => rst_reg
    );
\unlck_cnt_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => unlck_cnt_en,
      D => \p_0_in__0\(5),
      Q => \unlck_cnt_reg__0\(5),
      R => rst_reg
    );
\unlck_cnt_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => unlck_cnt_en,
      D => \p_0_in__0\(6),
      Q => \unlck_cnt_reg__0\(6),
      R => rst_reg
    );
\unlck_cnt_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => unlck_cnt_en,
      D => \p_0_in__0\(7),
      Q => \unlck_cnt_reg__0\(7),
      R => rst_reg
    );
\unlck_cnt_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => unlck_cnt_en,
      D => \p_0_in__0\(8),
      Q => \unlck_cnt_reg__0\(8),
      R => rst_reg
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity xcl_design_flash_programmer_0_compare is
  port (
    comp1 : out STD_LOGIC;
    v1_reg : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \gnxpm_cdc.rd_pntr_bin_reg[8]\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of xcl_design_flash_programmer_0_compare : entity is "compare";
end xcl_design_flash_programmer_0_compare;

architecture STRUCTURE of xcl_design_flash_programmer_0_compare is
  signal carrynet_0 : STD_LOGIC;
  signal carrynet_1 : STD_LOGIC;
  signal carrynet_2 : STD_LOGIC;
  signal \NLW_gmux.gm[0].gm1.m1_CARRY4_CARRY8_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 3 );
  signal \NLW_gmux.gm[0].gm1.m1_CARRY4_CARRY8_DI_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 5 );
  signal \NLW_gmux.gm[0].gm1.m1_CARRY4_CARRY8_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_gmux.gm[0].gm1.m1_CARRY4_CARRY8_S_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 5 );
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \gmux.gm[0].gm1.m1_CARRY4_CARRY8\ : label is "(CARRY4)";
  attribute box_type : string;
  attribute box_type of \gmux.gm[0].gm1.m1_CARRY4_CARRY8\ : label is "PRIMITIVE";
begin
\gmux.gm[0].gm1.m1_CARRY4_CARRY8\: unisim.vcomponents.CARRY8
     port map (
      CI => '1',
      CI_TOP => '0',
      CO(7 downto 5) => \NLW_gmux.gm[0].gm1.m1_CARRY4_CARRY8_CO_UNCONNECTED\(7 downto 5),
      CO(4) => comp1,
      CO(3) => \NLW_gmux.gm[0].gm1.m1_CARRY4_CARRY8_CO_UNCONNECTED\(3),
      CO(2) => carrynet_2,
      CO(1) => carrynet_1,
      CO(0) => carrynet_0,
      DI(7 downto 5) => \NLW_gmux.gm[0].gm1.m1_CARRY4_CARRY8_DI_UNCONNECTED\(7 downto 5),
      DI(4 downto 0) => B"00000",
      O(7 downto 0) => \NLW_gmux.gm[0].gm1.m1_CARRY4_CARRY8_O_UNCONNECTED\(7 downto 0),
      S(7 downto 5) => \NLW_gmux.gm[0].gm1.m1_CARRY4_CARRY8_S_UNCONNECTED\(7 downto 5),
      S(4) => \gnxpm_cdc.rd_pntr_bin_reg[8]\,
      S(3 downto 0) => v1_reg(3 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity xcl_design_flash_programmer_0_compare_3 is
  port (
    ram_full_fb_i_reg : out STD_LOGIC;
    v1_reg_0 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \gnxpm_cdc.rd_pntr_bin_reg[8]\ : in STD_LOGIC;
    wr_rst_busy : in STD_LOGIC;
    \out\ : in STD_LOGIC;
    wr_en : in STD_LOGIC;
    comp1 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of xcl_design_flash_programmer_0_compare_3 : entity is "compare";
end xcl_design_flash_programmer_0_compare_3;

architecture STRUCTURE of xcl_design_flash_programmer_0_compare_3 is
  signal carrynet_0 : STD_LOGIC;
  signal carrynet_1 : STD_LOGIC;
  signal carrynet_2 : STD_LOGIC;
  signal comp2 : STD_LOGIC;
  signal \NLW_gmux.gm[0].gm1.m1_CARRY4_CARRY8_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 3 );
  signal \NLW_gmux.gm[0].gm1.m1_CARRY4_CARRY8_DI_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 5 );
  signal \NLW_gmux.gm[0].gm1.m1_CARRY4_CARRY8_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_gmux.gm[0].gm1.m1_CARRY4_CARRY8_S_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 5 );
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \gmux.gm[0].gm1.m1_CARRY4_CARRY8\ : label is "(CARRY4)";
  attribute box_type : string;
  attribute box_type of \gmux.gm[0].gm1.m1_CARRY4_CARRY8\ : label is "PRIMITIVE";
begin
\gmux.gm[0].gm1.m1_CARRY4_CARRY8\: unisim.vcomponents.CARRY8
     port map (
      CI => '1',
      CI_TOP => '0',
      CO(7 downto 5) => \NLW_gmux.gm[0].gm1.m1_CARRY4_CARRY8_CO_UNCONNECTED\(7 downto 5),
      CO(4) => comp2,
      CO(3) => \NLW_gmux.gm[0].gm1.m1_CARRY4_CARRY8_CO_UNCONNECTED\(3),
      CO(2) => carrynet_2,
      CO(1) => carrynet_1,
      CO(0) => carrynet_0,
      DI(7 downto 5) => \NLW_gmux.gm[0].gm1.m1_CARRY4_CARRY8_DI_UNCONNECTED\(7 downto 5),
      DI(4 downto 0) => B"00000",
      O(7 downto 0) => \NLW_gmux.gm[0].gm1.m1_CARRY4_CARRY8_O_UNCONNECTED\(7 downto 0),
      S(7 downto 5) => \NLW_gmux.gm[0].gm1.m1_CARRY4_CARRY8_S_UNCONNECTED\(7 downto 5),
      S(4) => \gnxpm_cdc.rd_pntr_bin_reg[8]\,
      S(3 downto 0) => v1_reg_0(3 downto 0)
    );
ram_full_i_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"55550400"
    )
        port map (
      I0 => wr_rst_busy,
      I1 => comp2,
      I2 => \out\,
      I3 => wr_en,
      I4 => comp1,
      O => ram_full_fb_i_reg
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity xcl_design_flash_programmer_0_compare_4 is
  port (
    ram_empty_fb_i_reg : out STD_LOGIC;
    v1_reg : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \gc0.count_d1_reg[8]\ : in STD_LOGIC;
    rd_en : in STD_LOGIC;
    \out\ : in STD_LOGIC;
    comp1 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of xcl_design_flash_programmer_0_compare_4 : entity is "compare";
end xcl_design_flash_programmer_0_compare_4;

architecture STRUCTURE of xcl_design_flash_programmer_0_compare_4 is
  signal carrynet_0 : STD_LOGIC;
  signal carrynet_1 : STD_LOGIC;
  signal carrynet_2 : STD_LOGIC;
  signal comp0 : STD_LOGIC;
  signal \NLW_gmux.gm[0].gm1.m1_CARRY4_CARRY8_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 3 );
  signal \NLW_gmux.gm[0].gm1.m1_CARRY4_CARRY8_DI_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 5 );
  signal \NLW_gmux.gm[0].gm1.m1_CARRY4_CARRY8_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_gmux.gm[0].gm1.m1_CARRY4_CARRY8_S_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 5 );
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \gmux.gm[0].gm1.m1_CARRY4_CARRY8\ : label is "(CARRY4)";
  attribute box_type : string;
  attribute box_type of \gmux.gm[0].gm1.m1_CARRY4_CARRY8\ : label is "PRIMITIVE";
begin
\gmux.gm[0].gm1.m1_CARRY4_CARRY8\: unisim.vcomponents.CARRY8
     port map (
      CI => '1',
      CI_TOP => '0',
      CO(7 downto 5) => \NLW_gmux.gm[0].gm1.m1_CARRY4_CARRY8_CO_UNCONNECTED\(7 downto 5),
      CO(4) => comp0,
      CO(3) => \NLW_gmux.gm[0].gm1.m1_CARRY4_CARRY8_CO_UNCONNECTED\(3),
      CO(2) => carrynet_2,
      CO(1) => carrynet_1,
      CO(0) => carrynet_0,
      DI(7 downto 5) => \NLW_gmux.gm[0].gm1.m1_CARRY4_CARRY8_DI_UNCONNECTED\(7 downto 5),
      DI(4 downto 0) => B"00000",
      O(7 downto 0) => \NLW_gmux.gm[0].gm1.m1_CARRY4_CARRY8_O_UNCONNECTED\(7 downto 0),
      S(7 downto 5) => \NLW_gmux.gm[0].gm1.m1_CARRY4_CARRY8_S_UNCONNECTED\(7 downto 5),
      S(4) => \gc0.count_d1_reg[8]\,
      S(3 downto 0) => v1_reg(3 downto 0)
    );
ram_empty_i_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AEAA"
    )
        port map (
      I0 => comp0,
      I1 => rd_en,
      I2 => \out\,
      I3 => comp1,
      O => ram_empty_fb_i_reg
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity xcl_design_flash_programmer_0_compare_5 is
  port (
    comp1 : out STD_LOGIC;
    v1_reg_0 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \gc0.count_reg[8]\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of xcl_design_flash_programmer_0_compare_5 : entity is "compare";
end xcl_design_flash_programmer_0_compare_5;

architecture STRUCTURE of xcl_design_flash_programmer_0_compare_5 is
  signal carrynet_0 : STD_LOGIC;
  signal carrynet_1 : STD_LOGIC;
  signal carrynet_2 : STD_LOGIC;
  signal \NLW_gmux.gm[0].gm1.m1_CARRY4_CARRY8_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 3 );
  signal \NLW_gmux.gm[0].gm1.m1_CARRY4_CARRY8_DI_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 5 );
  signal \NLW_gmux.gm[0].gm1.m1_CARRY4_CARRY8_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_gmux.gm[0].gm1.m1_CARRY4_CARRY8_S_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 5 );
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \gmux.gm[0].gm1.m1_CARRY4_CARRY8\ : label is "(CARRY4)";
  attribute box_type : string;
  attribute box_type of \gmux.gm[0].gm1.m1_CARRY4_CARRY8\ : label is "PRIMITIVE";
begin
\gmux.gm[0].gm1.m1_CARRY4_CARRY8\: unisim.vcomponents.CARRY8
     port map (
      CI => '1',
      CI_TOP => '0',
      CO(7 downto 5) => \NLW_gmux.gm[0].gm1.m1_CARRY4_CARRY8_CO_UNCONNECTED\(7 downto 5),
      CO(4) => comp1,
      CO(3) => \NLW_gmux.gm[0].gm1.m1_CARRY4_CARRY8_CO_UNCONNECTED\(3),
      CO(2) => carrynet_2,
      CO(1) => carrynet_1,
      CO(0) => carrynet_0,
      DI(7 downto 5) => \NLW_gmux.gm[0].gm1.m1_CARRY4_CARRY8_DI_UNCONNECTED\(7 downto 5),
      DI(4 downto 0) => B"00000",
      O(7 downto 0) => \NLW_gmux.gm[0].gm1.m1_CARRY4_CARRY8_O_UNCONNECTED\(7 downto 0),
      S(7 downto 5) => \NLW_gmux.gm[0].gm1.m1_CARRY4_CARRY8_S_UNCONNECTED\(7 downto 5),
      S(4) => \gc0.count_reg[8]\,
      S(3 downto 0) => v1_reg_0(3 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity xcl_design_flash_programmer_0_dmem is
  port (
    dout : out STD_LOGIC_VECTOR ( 31 downto 0 );
    wr_clk : in STD_LOGIC;
    din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 8 downto 0 );
    \gic0.gc0.count_d2_reg[5]\ : in STD_LOGIC_VECTOR ( 5 downto 0 );
    ram_full_fb_i_reg : in STD_LOGIC;
    \gic0.gc0.count_d2_reg[7]\ : in STD_LOGIC;
    \gic0.gc0.count_d2_reg[6]\ : in STD_LOGIC;
    ram_full_fb_i_reg_0 : in STD_LOGIC;
    \gic0.gc0.count_d2_reg[6]_0\ : in STD_LOGIC;
    ram_full_fb_i_reg_1 : in STD_LOGIC;
    ram_full_fb_i_reg_2 : in STD_LOGIC;
    \gic0.gc0.count_d2_reg[8]\ : in STD_LOGIC;
    ADDRG : in STD_LOGIC_VECTOR ( 5 downto 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    rd_clk : in STD_LOGIC;
    AR : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of xcl_design_flash_programmer_0_dmem : entity is "dmem";
end xcl_design_flash_programmer_0_dmem;

architecture STRUCTURE of xcl_design_flash_programmer_0_dmem is
  signal RAM_reg_0_63_0_6_n_0 : STD_LOGIC;
  signal RAM_reg_0_63_0_6_n_1 : STD_LOGIC;
  signal RAM_reg_0_63_0_6_n_2 : STD_LOGIC;
  signal RAM_reg_0_63_0_6_n_3 : STD_LOGIC;
  signal RAM_reg_0_63_0_6_n_4 : STD_LOGIC;
  signal RAM_reg_0_63_0_6_n_5 : STD_LOGIC;
  signal RAM_reg_0_63_0_6_n_6 : STD_LOGIC;
  signal RAM_reg_0_63_14_20_n_0 : STD_LOGIC;
  signal RAM_reg_0_63_14_20_n_1 : STD_LOGIC;
  signal RAM_reg_0_63_14_20_n_2 : STD_LOGIC;
  signal RAM_reg_0_63_14_20_n_3 : STD_LOGIC;
  signal RAM_reg_0_63_14_20_n_4 : STD_LOGIC;
  signal RAM_reg_0_63_14_20_n_5 : STD_LOGIC;
  signal RAM_reg_0_63_14_20_n_6 : STD_LOGIC;
  signal RAM_reg_0_63_21_27_n_0 : STD_LOGIC;
  signal RAM_reg_0_63_21_27_n_1 : STD_LOGIC;
  signal RAM_reg_0_63_21_27_n_2 : STD_LOGIC;
  signal RAM_reg_0_63_21_27_n_3 : STD_LOGIC;
  signal RAM_reg_0_63_21_27_n_4 : STD_LOGIC;
  signal RAM_reg_0_63_21_27_n_5 : STD_LOGIC;
  signal RAM_reg_0_63_21_27_n_6 : STD_LOGIC;
  signal RAM_reg_0_63_28_31_n_0 : STD_LOGIC;
  signal RAM_reg_0_63_28_31_n_1 : STD_LOGIC;
  signal RAM_reg_0_63_28_31_n_2 : STD_LOGIC;
  signal RAM_reg_0_63_28_31_n_3 : STD_LOGIC;
  signal RAM_reg_0_63_7_13_n_0 : STD_LOGIC;
  signal RAM_reg_0_63_7_13_n_1 : STD_LOGIC;
  signal RAM_reg_0_63_7_13_n_2 : STD_LOGIC;
  signal RAM_reg_0_63_7_13_n_3 : STD_LOGIC;
  signal RAM_reg_0_63_7_13_n_4 : STD_LOGIC;
  signal RAM_reg_0_63_7_13_n_5 : STD_LOGIC;
  signal RAM_reg_0_63_7_13_n_6 : STD_LOGIC;
  signal RAM_reg_128_191_0_6_n_0 : STD_LOGIC;
  signal RAM_reg_128_191_0_6_n_1 : STD_LOGIC;
  signal RAM_reg_128_191_0_6_n_2 : STD_LOGIC;
  signal RAM_reg_128_191_0_6_n_3 : STD_LOGIC;
  signal RAM_reg_128_191_0_6_n_4 : STD_LOGIC;
  signal RAM_reg_128_191_0_6_n_5 : STD_LOGIC;
  signal RAM_reg_128_191_0_6_n_6 : STD_LOGIC;
  signal RAM_reg_128_191_14_20_n_0 : STD_LOGIC;
  signal RAM_reg_128_191_14_20_n_1 : STD_LOGIC;
  signal RAM_reg_128_191_14_20_n_2 : STD_LOGIC;
  signal RAM_reg_128_191_14_20_n_3 : STD_LOGIC;
  signal RAM_reg_128_191_14_20_n_4 : STD_LOGIC;
  signal RAM_reg_128_191_14_20_n_5 : STD_LOGIC;
  signal RAM_reg_128_191_14_20_n_6 : STD_LOGIC;
  signal RAM_reg_128_191_21_27_n_0 : STD_LOGIC;
  signal RAM_reg_128_191_21_27_n_1 : STD_LOGIC;
  signal RAM_reg_128_191_21_27_n_2 : STD_LOGIC;
  signal RAM_reg_128_191_21_27_n_3 : STD_LOGIC;
  signal RAM_reg_128_191_21_27_n_4 : STD_LOGIC;
  signal RAM_reg_128_191_21_27_n_5 : STD_LOGIC;
  signal RAM_reg_128_191_21_27_n_6 : STD_LOGIC;
  signal RAM_reg_128_191_28_31_n_0 : STD_LOGIC;
  signal RAM_reg_128_191_28_31_n_1 : STD_LOGIC;
  signal RAM_reg_128_191_28_31_n_2 : STD_LOGIC;
  signal RAM_reg_128_191_28_31_n_3 : STD_LOGIC;
  signal RAM_reg_128_191_7_13_n_0 : STD_LOGIC;
  signal RAM_reg_128_191_7_13_n_1 : STD_LOGIC;
  signal RAM_reg_128_191_7_13_n_2 : STD_LOGIC;
  signal RAM_reg_128_191_7_13_n_3 : STD_LOGIC;
  signal RAM_reg_128_191_7_13_n_4 : STD_LOGIC;
  signal RAM_reg_128_191_7_13_n_5 : STD_LOGIC;
  signal RAM_reg_128_191_7_13_n_6 : STD_LOGIC;
  signal RAM_reg_192_255_0_6_n_0 : STD_LOGIC;
  signal RAM_reg_192_255_0_6_n_1 : STD_LOGIC;
  signal RAM_reg_192_255_0_6_n_2 : STD_LOGIC;
  signal RAM_reg_192_255_0_6_n_3 : STD_LOGIC;
  signal RAM_reg_192_255_0_6_n_4 : STD_LOGIC;
  signal RAM_reg_192_255_0_6_n_5 : STD_LOGIC;
  signal RAM_reg_192_255_0_6_n_6 : STD_LOGIC;
  signal RAM_reg_192_255_14_20_n_0 : STD_LOGIC;
  signal RAM_reg_192_255_14_20_n_1 : STD_LOGIC;
  signal RAM_reg_192_255_14_20_n_2 : STD_LOGIC;
  signal RAM_reg_192_255_14_20_n_3 : STD_LOGIC;
  signal RAM_reg_192_255_14_20_n_4 : STD_LOGIC;
  signal RAM_reg_192_255_14_20_n_5 : STD_LOGIC;
  signal RAM_reg_192_255_14_20_n_6 : STD_LOGIC;
  signal RAM_reg_192_255_21_27_n_0 : STD_LOGIC;
  signal RAM_reg_192_255_21_27_n_1 : STD_LOGIC;
  signal RAM_reg_192_255_21_27_n_2 : STD_LOGIC;
  signal RAM_reg_192_255_21_27_n_3 : STD_LOGIC;
  signal RAM_reg_192_255_21_27_n_4 : STD_LOGIC;
  signal RAM_reg_192_255_21_27_n_5 : STD_LOGIC;
  signal RAM_reg_192_255_21_27_n_6 : STD_LOGIC;
  signal RAM_reg_192_255_28_31_n_0 : STD_LOGIC;
  signal RAM_reg_192_255_28_31_n_1 : STD_LOGIC;
  signal RAM_reg_192_255_28_31_n_2 : STD_LOGIC;
  signal RAM_reg_192_255_28_31_n_3 : STD_LOGIC;
  signal RAM_reg_192_255_7_13_n_0 : STD_LOGIC;
  signal RAM_reg_192_255_7_13_n_1 : STD_LOGIC;
  signal RAM_reg_192_255_7_13_n_2 : STD_LOGIC;
  signal RAM_reg_192_255_7_13_n_3 : STD_LOGIC;
  signal RAM_reg_192_255_7_13_n_4 : STD_LOGIC;
  signal RAM_reg_192_255_7_13_n_5 : STD_LOGIC;
  signal RAM_reg_192_255_7_13_n_6 : STD_LOGIC;
  signal RAM_reg_256_319_0_6_n_0 : STD_LOGIC;
  signal RAM_reg_256_319_0_6_n_1 : STD_LOGIC;
  signal RAM_reg_256_319_0_6_n_2 : STD_LOGIC;
  signal RAM_reg_256_319_0_6_n_3 : STD_LOGIC;
  signal RAM_reg_256_319_0_6_n_4 : STD_LOGIC;
  signal RAM_reg_256_319_0_6_n_5 : STD_LOGIC;
  signal RAM_reg_256_319_0_6_n_6 : STD_LOGIC;
  signal RAM_reg_256_319_14_20_n_0 : STD_LOGIC;
  signal RAM_reg_256_319_14_20_n_1 : STD_LOGIC;
  signal RAM_reg_256_319_14_20_n_2 : STD_LOGIC;
  signal RAM_reg_256_319_14_20_n_3 : STD_LOGIC;
  signal RAM_reg_256_319_14_20_n_4 : STD_LOGIC;
  signal RAM_reg_256_319_14_20_n_5 : STD_LOGIC;
  signal RAM_reg_256_319_14_20_n_6 : STD_LOGIC;
  signal RAM_reg_256_319_21_27_n_0 : STD_LOGIC;
  signal RAM_reg_256_319_21_27_n_1 : STD_LOGIC;
  signal RAM_reg_256_319_21_27_n_2 : STD_LOGIC;
  signal RAM_reg_256_319_21_27_n_3 : STD_LOGIC;
  signal RAM_reg_256_319_21_27_n_4 : STD_LOGIC;
  signal RAM_reg_256_319_21_27_n_5 : STD_LOGIC;
  signal RAM_reg_256_319_21_27_n_6 : STD_LOGIC;
  signal RAM_reg_256_319_28_31_n_0 : STD_LOGIC;
  signal RAM_reg_256_319_28_31_n_1 : STD_LOGIC;
  signal RAM_reg_256_319_28_31_n_2 : STD_LOGIC;
  signal RAM_reg_256_319_28_31_n_3 : STD_LOGIC;
  signal RAM_reg_256_319_7_13_n_0 : STD_LOGIC;
  signal RAM_reg_256_319_7_13_n_1 : STD_LOGIC;
  signal RAM_reg_256_319_7_13_n_2 : STD_LOGIC;
  signal RAM_reg_256_319_7_13_n_3 : STD_LOGIC;
  signal RAM_reg_256_319_7_13_n_4 : STD_LOGIC;
  signal RAM_reg_256_319_7_13_n_5 : STD_LOGIC;
  signal RAM_reg_256_319_7_13_n_6 : STD_LOGIC;
  signal RAM_reg_320_383_0_6_n_0 : STD_LOGIC;
  signal RAM_reg_320_383_0_6_n_1 : STD_LOGIC;
  signal RAM_reg_320_383_0_6_n_2 : STD_LOGIC;
  signal RAM_reg_320_383_0_6_n_3 : STD_LOGIC;
  signal RAM_reg_320_383_0_6_n_4 : STD_LOGIC;
  signal RAM_reg_320_383_0_6_n_5 : STD_LOGIC;
  signal RAM_reg_320_383_0_6_n_6 : STD_LOGIC;
  signal RAM_reg_320_383_14_20_n_0 : STD_LOGIC;
  signal RAM_reg_320_383_14_20_n_1 : STD_LOGIC;
  signal RAM_reg_320_383_14_20_n_2 : STD_LOGIC;
  signal RAM_reg_320_383_14_20_n_3 : STD_LOGIC;
  signal RAM_reg_320_383_14_20_n_4 : STD_LOGIC;
  signal RAM_reg_320_383_14_20_n_5 : STD_LOGIC;
  signal RAM_reg_320_383_14_20_n_6 : STD_LOGIC;
  signal RAM_reg_320_383_21_27_n_0 : STD_LOGIC;
  signal RAM_reg_320_383_21_27_n_1 : STD_LOGIC;
  signal RAM_reg_320_383_21_27_n_2 : STD_LOGIC;
  signal RAM_reg_320_383_21_27_n_3 : STD_LOGIC;
  signal RAM_reg_320_383_21_27_n_4 : STD_LOGIC;
  signal RAM_reg_320_383_21_27_n_5 : STD_LOGIC;
  signal RAM_reg_320_383_21_27_n_6 : STD_LOGIC;
  signal RAM_reg_320_383_28_31_n_0 : STD_LOGIC;
  signal RAM_reg_320_383_28_31_n_1 : STD_LOGIC;
  signal RAM_reg_320_383_28_31_n_2 : STD_LOGIC;
  signal RAM_reg_320_383_28_31_n_3 : STD_LOGIC;
  signal RAM_reg_320_383_7_13_n_0 : STD_LOGIC;
  signal RAM_reg_320_383_7_13_n_1 : STD_LOGIC;
  signal RAM_reg_320_383_7_13_n_2 : STD_LOGIC;
  signal RAM_reg_320_383_7_13_n_3 : STD_LOGIC;
  signal RAM_reg_320_383_7_13_n_4 : STD_LOGIC;
  signal RAM_reg_320_383_7_13_n_5 : STD_LOGIC;
  signal RAM_reg_320_383_7_13_n_6 : STD_LOGIC;
  signal RAM_reg_384_447_0_6_n_0 : STD_LOGIC;
  signal RAM_reg_384_447_0_6_n_1 : STD_LOGIC;
  signal RAM_reg_384_447_0_6_n_2 : STD_LOGIC;
  signal RAM_reg_384_447_0_6_n_3 : STD_LOGIC;
  signal RAM_reg_384_447_0_6_n_4 : STD_LOGIC;
  signal RAM_reg_384_447_0_6_n_5 : STD_LOGIC;
  signal RAM_reg_384_447_0_6_n_6 : STD_LOGIC;
  signal RAM_reg_384_447_14_20_n_0 : STD_LOGIC;
  signal RAM_reg_384_447_14_20_n_1 : STD_LOGIC;
  signal RAM_reg_384_447_14_20_n_2 : STD_LOGIC;
  signal RAM_reg_384_447_14_20_n_3 : STD_LOGIC;
  signal RAM_reg_384_447_14_20_n_4 : STD_LOGIC;
  signal RAM_reg_384_447_14_20_n_5 : STD_LOGIC;
  signal RAM_reg_384_447_14_20_n_6 : STD_LOGIC;
  signal RAM_reg_384_447_21_27_n_0 : STD_LOGIC;
  signal RAM_reg_384_447_21_27_n_1 : STD_LOGIC;
  signal RAM_reg_384_447_21_27_n_2 : STD_LOGIC;
  signal RAM_reg_384_447_21_27_n_3 : STD_LOGIC;
  signal RAM_reg_384_447_21_27_n_4 : STD_LOGIC;
  signal RAM_reg_384_447_21_27_n_5 : STD_LOGIC;
  signal RAM_reg_384_447_21_27_n_6 : STD_LOGIC;
  signal RAM_reg_384_447_28_31_n_0 : STD_LOGIC;
  signal RAM_reg_384_447_28_31_n_1 : STD_LOGIC;
  signal RAM_reg_384_447_28_31_n_2 : STD_LOGIC;
  signal RAM_reg_384_447_28_31_n_3 : STD_LOGIC;
  signal RAM_reg_384_447_7_13_n_0 : STD_LOGIC;
  signal RAM_reg_384_447_7_13_n_1 : STD_LOGIC;
  signal RAM_reg_384_447_7_13_n_2 : STD_LOGIC;
  signal RAM_reg_384_447_7_13_n_3 : STD_LOGIC;
  signal RAM_reg_384_447_7_13_n_4 : STD_LOGIC;
  signal RAM_reg_384_447_7_13_n_5 : STD_LOGIC;
  signal RAM_reg_384_447_7_13_n_6 : STD_LOGIC;
  signal RAM_reg_448_511_0_6_n_0 : STD_LOGIC;
  signal RAM_reg_448_511_0_6_n_1 : STD_LOGIC;
  signal RAM_reg_448_511_0_6_n_2 : STD_LOGIC;
  signal RAM_reg_448_511_0_6_n_3 : STD_LOGIC;
  signal RAM_reg_448_511_0_6_n_4 : STD_LOGIC;
  signal RAM_reg_448_511_0_6_n_5 : STD_LOGIC;
  signal RAM_reg_448_511_0_6_n_6 : STD_LOGIC;
  signal RAM_reg_448_511_14_20_n_0 : STD_LOGIC;
  signal RAM_reg_448_511_14_20_n_1 : STD_LOGIC;
  signal RAM_reg_448_511_14_20_n_2 : STD_LOGIC;
  signal RAM_reg_448_511_14_20_n_3 : STD_LOGIC;
  signal RAM_reg_448_511_14_20_n_4 : STD_LOGIC;
  signal RAM_reg_448_511_14_20_n_5 : STD_LOGIC;
  signal RAM_reg_448_511_14_20_n_6 : STD_LOGIC;
  signal RAM_reg_448_511_21_27_n_0 : STD_LOGIC;
  signal RAM_reg_448_511_21_27_n_1 : STD_LOGIC;
  signal RAM_reg_448_511_21_27_n_2 : STD_LOGIC;
  signal RAM_reg_448_511_21_27_n_3 : STD_LOGIC;
  signal RAM_reg_448_511_21_27_n_4 : STD_LOGIC;
  signal RAM_reg_448_511_21_27_n_5 : STD_LOGIC;
  signal RAM_reg_448_511_21_27_n_6 : STD_LOGIC;
  signal RAM_reg_448_511_28_31_n_0 : STD_LOGIC;
  signal RAM_reg_448_511_28_31_n_1 : STD_LOGIC;
  signal RAM_reg_448_511_28_31_n_2 : STD_LOGIC;
  signal RAM_reg_448_511_28_31_n_3 : STD_LOGIC;
  signal RAM_reg_448_511_7_13_n_0 : STD_LOGIC;
  signal RAM_reg_448_511_7_13_n_1 : STD_LOGIC;
  signal RAM_reg_448_511_7_13_n_2 : STD_LOGIC;
  signal RAM_reg_448_511_7_13_n_3 : STD_LOGIC;
  signal RAM_reg_448_511_7_13_n_4 : STD_LOGIC;
  signal RAM_reg_448_511_7_13_n_5 : STD_LOGIC;
  signal RAM_reg_448_511_7_13_n_6 : STD_LOGIC;
  signal RAM_reg_64_127_0_6_n_0 : STD_LOGIC;
  signal RAM_reg_64_127_0_6_n_1 : STD_LOGIC;
  signal RAM_reg_64_127_0_6_n_2 : STD_LOGIC;
  signal RAM_reg_64_127_0_6_n_3 : STD_LOGIC;
  signal RAM_reg_64_127_0_6_n_4 : STD_LOGIC;
  signal RAM_reg_64_127_0_6_n_5 : STD_LOGIC;
  signal RAM_reg_64_127_0_6_n_6 : STD_LOGIC;
  signal RAM_reg_64_127_14_20_n_0 : STD_LOGIC;
  signal RAM_reg_64_127_14_20_n_1 : STD_LOGIC;
  signal RAM_reg_64_127_14_20_n_2 : STD_LOGIC;
  signal RAM_reg_64_127_14_20_n_3 : STD_LOGIC;
  signal RAM_reg_64_127_14_20_n_4 : STD_LOGIC;
  signal RAM_reg_64_127_14_20_n_5 : STD_LOGIC;
  signal RAM_reg_64_127_14_20_n_6 : STD_LOGIC;
  signal RAM_reg_64_127_21_27_n_0 : STD_LOGIC;
  signal RAM_reg_64_127_21_27_n_1 : STD_LOGIC;
  signal RAM_reg_64_127_21_27_n_2 : STD_LOGIC;
  signal RAM_reg_64_127_21_27_n_3 : STD_LOGIC;
  signal RAM_reg_64_127_21_27_n_4 : STD_LOGIC;
  signal RAM_reg_64_127_21_27_n_5 : STD_LOGIC;
  signal RAM_reg_64_127_21_27_n_6 : STD_LOGIC;
  signal RAM_reg_64_127_28_31_n_0 : STD_LOGIC;
  signal RAM_reg_64_127_28_31_n_1 : STD_LOGIC;
  signal RAM_reg_64_127_28_31_n_2 : STD_LOGIC;
  signal RAM_reg_64_127_28_31_n_3 : STD_LOGIC;
  signal RAM_reg_64_127_7_13_n_0 : STD_LOGIC;
  signal RAM_reg_64_127_7_13_n_1 : STD_LOGIC;
  signal RAM_reg_64_127_7_13_n_2 : STD_LOGIC;
  signal RAM_reg_64_127_7_13_n_3 : STD_LOGIC;
  signal RAM_reg_64_127_7_13_n_4 : STD_LOGIC;
  signal RAM_reg_64_127_7_13_n_5 : STD_LOGIC;
  signal RAM_reg_64_127_7_13_n_6 : STD_LOGIC;
  signal \gpr1.dout_i[0]_i_2_n_0\ : STD_LOGIC;
  signal \gpr1.dout_i[0]_i_3_n_0\ : STD_LOGIC;
  signal \gpr1.dout_i[10]_i_2_n_0\ : STD_LOGIC;
  signal \gpr1.dout_i[10]_i_3_n_0\ : STD_LOGIC;
  signal \gpr1.dout_i[11]_i_2_n_0\ : STD_LOGIC;
  signal \gpr1.dout_i[11]_i_3_n_0\ : STD_LOGIC;
  signal \gpr1.dout_i[12]_i_2_n_0\ : STD_LOGIC;
  signal \gpr1.dout_i[12]_i_3_n_0\ : STD_LOGIC;
  signal \gpr1.dout_i[13]_i_2_n_0\ : STD_LOGIC;
  signal \gpr1.dout_i[13]_i_3_n_0\ : STD_LOGIC;
  signal \gpr1.dout_i[14]_i_2_n_0\ : STD_LOGIC;
  signal \gpr1.dout_i[14]_i_3_n_0\ : STD_LOGIC;
  signal \gpr1.dout_i[15]_i_2_n_0\ : STD_LOGIC;
  signal \gpr1.dout_i[15]_i_3_n_0\ : STD_LOGIC;
  signal \gpr1.dout_i[16]_i_2_n_0\ : STD_LOGIC;
  signal \gpr1.dout_i[16]_i_3_n_0\ : STD_LOGIC;
  signal \gpr1.dout_i[17]_i_2_n_0\ : STD_LOGIC;
  signal \gpr1.dout_i[17]_i_3_n_0\ : STD_LOGIC;
  signal \gpr1.dout_i[18]_i_2_n_0\ : STD_LOGIC;
  signal \gpr1.dout_i[18]_i_3_n_0\ : STD_LOGIC;
  signal \gpr1.dout_i[19]_i_2_n_0\ : STD_LOGIC;
  signal \gpr1.dout_i[19]_i_3_n_0\ : STD_LOGIC;
  signal \gpr1.dout_i[1]_i_2_n_0\ : STD_LOGIC;
  signal \gpr1.dout_i[1]_i_3_n_0\ : STD_LOGIC;
  signal \gpr1.dout_i[20]_i_2_n_0\ : STD_LOGIC;
  signal \gpr1.dout_i[20]_i_3_n_0\ : STD_LOGIC;
  signal \gpr1.dout_i[21]_i_2_n_0\ : STD_LOGIC;
  signal \gpr1.dout_i[21]_i_3_n_0\ : STD_LOGIC;
  signal \gpr1.dout_i[22]_i_2_n_0\ : STD_LOGIC;
  signal \gpr1.dout_i[22]_i_3_n_0\ : STD_LOGIC;
  signal \gpr1.dout_i[23]_i_2_n_0\ : STD_LOGIC;
  signal \gpr1.dout_i[23]_i_3_n_0\ : STD_LOGIC;
  signal \gpr1.dout_i[24]_i_2_n_0\ : STD_LOGIC;
  signal \gpr1.dout_i[24]_i_3_n_0\ : STD_LOGIC;
  signal \gpr1.dout_i[25]_i_2_n_0\ : STD_LOGIC;
  signal \gpr1.dout_i[25]_i_3_n_0\ : STD_LOGIC;
  signal \gpr1.dout_i[26]_i_2_n_0\ : STD_LOGIC;
  signal \gpr1.dout_i[26]_i_3_n_0\ : STD_LOGIC;
  signal \gpr1.dout_i[27]_i_2_n_0\ : STD_LOGIC;
  signal \gpr1.dout_i[27]_i_3_n_0\ : STD_LOGIC;
  signal \gpr1.dout_i[28]_i_2_n_0\ : STD_LOGIC;
  signal \gpr1.dout_i[28]_i_3_n_0\ : STD_LOGIC;
  signal \gpr1.dout_i[29]_i_2_n_0\ : STD_LOGIC;
  signal \gpr1.dout_i[29]_i_3_n_0\ : STD_LOGIC;
  signal \gpr1.dout_i[2]_i_2_n_0\ : STD_LOGIC;
  signal \gpr1.dout_i[2]_i_3_n_0\ : STD_LOGIC;
  signal \gpr1.dout_i[30]_i_2_n_0\ : STD_LOGIC;
  signal \gpr1.dout_i[30]_i_3_n_0\ : STD_LOGIC;
  signal \gpr1.dout_i[31]_i_3_n_0\ : STD_LOGIC;
  signal \gpr1.dout_i[31]_i_4_n_0\ : STD_LOGIC;
  signal \gpr1.dout_i[3]_i_2_n_0\ : STD_LOGIC;
  signal \gpr1.dout_i[3]_i_3_n_0\ : STD_LOGIC;
  signal \gpr1.dout_i[4]_i_2_n_0\ : STD_LOGIC;
  signal \gpr1.dout_i[4]_i_3_n_0\ : STD_LOGIC;
  signal \gpr1.dout_i[5]_i_2_n_0\ : STD_LOGIC;
  signal \gpr1.dout_i[5]_i_3_n_0\ : STD_LOGIC;
  signal \gpr1.dout_i[6]_i_2_n_0\ : STD_LOGIC;
  signal \gpr1.dout_i[6]_i_3_n_0\ : STD_LOGIC;
  signal \gpr1.dout_i[7]_i_2_n_0\ : STD_LOGIC;
  signal \gpr1.dout_i[7]_i_3_n_0\ : STD_LOGIC;
  signal \gpr1.dout_i[8]_i_2_n_0\ : STD_LOGIC;
  signal \gpr1.dout_i[8]_i_3_n_0\ : STD_LOGIC;
  signal \gpr1.dout_i[9]_i_2_n_0\ : STD_LOGIC;
  signal \gpr1.dout_i[9]_i_3_n_0\ : STD_LOGIC;
  signal p_0_out : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_RAM_reg_0_63_0_6_DOH_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_0_63_14_20_DOH_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_0_63_21_27_DOH_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_0_63_28_31_DOE_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_0_63_28_31_DOF_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_0_63_28_31_DOG_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_0_63_28_31_DOH_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_0_63_7_13_DOH_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_128_191_0_6_DOH_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_128_191_14_20_DOH_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_128_191_21_27_DOH_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_128_191_28_31_DOE_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_128_191_28_31_DOF_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_128_191_28_31_DOG_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_128_191_28_31_DOH_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_128_191_7_13_DOH_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_192_255_0_6_DOH_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_192_255_14_20_DOH_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_192_255_21_27_DOH_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_192_255_28_31_DOE_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_192_255_28_31_DOF_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_192_255_28_31_DOG_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_192_255_28_31_DOH_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_192_255_7_13_DOH_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_256_319_0_6_DOH_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_256_319_14_20_DOH_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_256_319_21_27_DOH_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_256_319_28_31_DOE_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_256_319_28_31_DOF_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_256_319_28_31_DOG_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_256_319_28_31_DOH_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_256_319_7_13_DOH_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_320_383_0_6_DOH_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_320_383_14_20_DOH_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_320_383_21_27_DOH_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_320_383_28_31_DOE_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_320_383_28_31_DOF_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_320_383_28_31_DOG_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_320_383_28_31_DOH_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_320_383_7_13_DOH_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_384_447_0_6_DOH_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_384_447_14_20_DOH_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_384_447_21_27_DOH_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_384_447_28_31_DOE_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_384_447_28_31_DOF_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_384_447_28_31_DOG_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_384_447_28_31_DOH_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_384_447_7_13_DOH_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_448_511_0_6_DOH_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_448_511_14_20_DOH_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_448_511_21_27_DOH_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_448_511_28_31_DOE_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_448_511_28_31_DOF_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_448_511_28_31_DOG_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_448_511_28_31_DOH_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_448_511_7_13_DOH_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_64_127_0_6_DOH_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_64_127_14_20_DOH_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_64_127_21_27_DOH_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_64_127_28_31_DOE_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_64_127_28_31_DOF_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_64_127_28_31_DOG_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_64_127_28_31_DOH_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_64_127_7_13_DOH_UNCONNECTED : STD_LOGIC;
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_0_63_0_6 : label is "";
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_0_63_14_20 : label is "";
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_0_63_21_27 : label is "";
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_0_63_28_31 : label is "";
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_0_63_7_13 : label is "";
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_128_191_0_6 : label is "";
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_128_191_14_20 : label is "";
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_128_191_21_27 : label is "";
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_128_191_28_31 : label is "";
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_128_191_7_13 : label is "";
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_192_255_0_6 : label is "";
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_192_255_14_20 : label is "";
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_192_255_21_27 : label is "";
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_192_255_28_31 : label is "";
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_192_255_7_13 : label is "";
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_256_319_0_6 : label is "";
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_256_319_14_20 : label is "";
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_256_319_21_27 : label is "";
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_256_319_28_31 : label is "";
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_256_319_7_13 : label is "";
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_320_383_0_6 : label is "";
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_320_383_14_20 : label is "";
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_320_383_21_27 : label is "";
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_320_383_28_31 : label is "";
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_320_383_7_13 : label is "";
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_384_447_0_6 : label is "";
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_384_447_14_20 : label is "";
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_384_447_21_27 : label is "";
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_384_447_28_31 : label is "";
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_384_447_7_13 : label is "";
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_448_511_0_6 : label is "";
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_448_511_14_20 : label is "";
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_448_511_21_27 : label is "";
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_448_511_28_31 : label is "";
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_448_511_7_13 : label is "";
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_64_127_0_6 : label is "";
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_64_127_14_20 : label is "";
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_64_127_21_27 : label is "";
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_64_127_28_31 : label is "";
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_64_127_7_13 : label is "";
begin
RAM_reg_0_63_0_6: unisim.vcomponents.RAM64M8
     port map (
      ADDRA(5 downto 0) => Q(5 downto 0),
      ADDRB(5 downto 0) => Q(5 downto 0),
      ADDRC(5 downto 0) => Q(5 downto 0),
      ADDRD(5 downto 0) => Q(5 downto 0),
      ADDRE(5 downto 0) => Q(5 downto 0),
      ADDRF(5 downto 0) => Q(5 downto 0),
      ADDRG(5 downto 0) => Q(5 downto 0),
      ADDRH(5 downto 0) => \gic0.gc0.count_d2_reg[5]\(5 downto 0),
      DIA => din(0),
      DIB => din(1),
      DIC => din(2),
      DID => din(3),
      DIE => din(4),
      DIF => din(5),
      DIG => din(6),
      DIH => '0',
      DOA => RAM_reg_0_63_0_6_n_0,
      DOB => RAM_reg_0_63_0_6_n_1,
      DOC => RAM_reg_0_63_0_6_n_2,
      DOD => RAM_reg_0_63_0_6_n_3,
      DOE => RAM_reg_0_63_0_6_n_4,
      DOF => RAM_reg_0_63_0_6_n_5,
      DOG => RAM_reg_0_63_0_6_n_6,
      DOH => NLW_RAM_reg_0_63_0_6_DOH_UNCONNECTED,
      WCLK => wr_clk,
      WE => ram_full_fb_i_reg
    );
RAM_reg_0_63_14_20: unisim.vcomponents.RAM64M8
     port map (
      ADDRA(5 downto 0) => Q(5 downto 0),
      ADDRB(5 downto 0) => Q(5 downto 0),
      ADDRC(5 downto 0) => Q(5 downto 0),
      ADDRD(5 downto 0) => Q(5 downto 0),
      ADDRE(5 downto 0) => Q(5 downto 0),
      ADDRF(5 downto 0) => Q(5 downto 0),
      ADDRG(5 downto 0) => Q(5 downto 0),
      ADDRH(5 downto 0) => \gic0.gc0.count_d2_reg[5]\(5 downto 0),
      DIA => din(14),
      DIB => din(15),
      DIC => din(16),
      DID => din(17),
      DIE => din(18),
      DIF => din(19),
      DIG => din(20),
      DIH => '0',
      DOA => RAM_reg_0_63_14_20_n_0,
      DOB => RAM_reg_0_63_14_20_n_1,
      DOC => RAM_reg_0_63_14_20_n_2,
      DOD => RAM_reg_0_63_14_20_n_3,
      DOE => RAM_reg_0_63_14_20_n_4,
      DOF => RAM_reg_0_63_14_20_n_5,
      DOG => RAM_reg_0_63_14_20_n_6,
      DOH => NLW_RAM_reg_0_63_14_20_DOH_UNCONNECTED,
      WCLK => wr_clk,
      WE => ram_full_fb_i_reg
    );
RAM_reg_0_63_21_27: unisim.vcomponents.RAM64M8
     port map (
      ADDRA(5 downto 0) => ADDRG(5 downto 0),
      ADDRB(5 downto 0) => ADDRG(5 downto 0),
      ADDRC(5 downto 0) => ADDRG(5 downto 0),
      ADDRD(5 downto 0) => ADDRG(5 downto 0),
      ADDRE(5 downto 0) => ADDRG(5 downto 0),
      ADDRF(5 downto 0) => ADDRG(5 downto 0),
      ADDRG(5 downto 0) => ADDRG(5 downto 0),
      ADDRH(5 downto 0) => \gic0.gc0.count_d2_reg[5]\(5 downto 0),
      DIA => din(21),
      DIB => din(22),
      DIC => din(23),
      DID => din(24),
      DIE => din(25),
      DIF => din(26),
      DIG => din(27),
      DIH => '0',
      DOA => RAM_reg_0_63_21_27_n_0,
      DOB => RAM_reg_0_63_21_27_n_1,
      DOC => RAM_reg_0_63_21_27_n_2,
      DOD => RAM_reg_0_63_21_27_n_3,
      DOE => RAM_reg_0_63_21_27_n_4,
      DOF => RAM_reg_0_63_21_27_n_5,
      DOG => RAM_reg_0_63_21_27_n_6,
      DOH => NLW_RAM_reg_0_63_21_27_DOH_UNCONNECTED,
      WCLK => wr_clk,
      WE => ram_full_fb_i_reg
    );
RAM_reg_0_63_28_31: unisim.vcomponents.RAM64M8
     port map (
      ADDRA(5 downto 0) => ADDRG(5 downto 0),
      ADDRB(5 downto 0) => ADDRG(5 downto 0),
      ADDRC(5 downto 0) => ADDRG(5 downto 0),
      ADDRD(5 downto 0) => ADDRG(5 downto 0),
      ADDRE(5 downto 0) => ADDRG(5 downto 0),
      ADDRF(5 downto 0) => ADDRG(5 downto 0),
      ADDRG(5 downto 0) => ADDRG(5 downto 0),
      ADDRH(5 downto 0) => \gic0.gc0.count_d2_reg[5]\(5 downto 0),
      DIA => din(28),
      DIB => din(29),
      DIC => din(30),
      DID => din(31),
      DIE => '0',
      DIF => '0',
      DIG => '0',
      DIH => '0',
      DOA => RAM_reg_0_63_28_31_n_0,
      DOB => RAM_reg_0_63_28_31_n_1,
      DOC => RAM_reg_0_63_28_31_n_2,
      DOD => RAM_reg_0_63_28_31_n_3,
      DOE => NLW_RAM_reg_0_63_28_31_DOE_UNCONNECTED,
      DOF => NLW_RAM_reg_0_63_28_31_DOF_UNCONNECTED,
      DOG => NLW_RAM_reg_0_63_28_31_DOG_UNCONNECTED,
      DOH => NLW_RAM_reg_0_63_28_31_DOH_UNCONNECTED,
      WCLK => wr_clk,
      WE => ram_full_fb_i_reg
    );
RAM_reg_0_63_7_13: unisim.vcomponents.RAM64M8
     port map (
      ADDRA(5 downto 0) => Q(5 downto 0),
      ADDRB(5 downto 0) => Q(5 downto 0),
      ADDRC(5 downto 0) => Q(5 downto 0),
      ADDRD(5 downto 0) => Q(5 downto 0),
      ADDRE(5 downto 0) => Q(5 downto 0),
      ADDRF(5 downto 0) => Q(5 downto 0),
      ADDRG(5 downto 0) => Q(5 downto 0),
      ADDRH(5 downto 0) => \gic0.gc0.count_d2_reg[5]\(5 downto 0),
      DIA => din(7),
      DIB => din(8),
      DIC => din(9),
      DID => din(10),
      DIE => din(11),
      DIF => din(12),
      DIG => din(13),
      DIH => '0',
      DOA => RAM_reg_0_63_7_13_n_0,
      DOB => RAM_reg_0_63_7_13_n_1,
      DOC => RAM_reg_0_63_7_13_n_2,
      DOD => RAM_reg_0_63_7_13_n_3,
      DOE => RAM_reg_0_63_7_13_n_4,
      DOF => RAM_reg_0_63_7_13_n_5,
      DOG => RAM_reg_0_63_7_13_n_6,
      DOH => NLW_RAM_reg_0_63_7_13_DOH_UNCONNECTED,
      WCLK => wr_clk,
      WE => ram_full_fb_i_reg
    );
RAM_reg_128_191_0_6: unisim.vcomponents.RAM64M8
     port map (
      ADDRA(5 downto 0) => Q(5 downto 0),
      ADDRB(5 downto 0) => Q(5 downto 0),
      ADDRC(5 downto 0) => Q(5 downto 0),
      ADDRD(5 downto 0) => Q(5 downto 0),
      ADDRE(5 downto 0) => Q(5 downto 0),
      ADDRF(5 downto 0) => Q(5 downto 0),
      ADDRG(5 downto 0) => Q(5 downto 0),
      ADDRH(5 downto 0) => \gic0.gc0.count_d2_reg[5]\(5 downto 0),
      DIA => din(0),
      DIB => din(1),
      DIC => din(2),
      DID => din(3),
      DIE => din(4),
      DIF => din(5),
      DIG => din(6),
      DIH => '0',
      DOA => RAM_reg_128_191_0_6_n_0,
      DOB => RAM_reg_128_191_0_6_n_1,
      DOC => RAM_reg_128_191_0_6_n_2,
      DOD => RAM_reg_128_191_0_6_n_3,
      DOE => RAM_reg_128_191_0_6_n_4,
      DOF => RAM_reg_128_191_0_6_n_5,
      DOG => RAM_reg_128_191_0_6_n_6,
      DOH => NLW_RAM_reg_128_191_0_6_DOH_UNCONNECTED,
      WCLK => wr_clk,
      WE => \gic0.gc0.count_d2_reg[6]\
    );
RAM_reg_128_191_14_20: unisim.vcomponents.RAM64M8
     port map (
      ADDRA(5 downto 0) => Q(5 downto 0),
      ADDRB(5 downto 0) => Q(5 downto 0),
      ADDRC(5 downto 0) => Q(5 downto 0),
      ADDRD(5 downto 0) => Q(5 downto 0),
      ADDRE(5 downto 0) => Q(5 downto 0),
      ADDRF(5 downto 0) => Q(5 downto 0),
      ADDRG(5 downto 0) => Q(5 downto 0),
      ADDRH(5 downto 0) => \gic0.gc0.count_d2_reg[5]\(5 downto 0),
      DIA => din(14),
      DIB => din(15),
      DIC => din(16),
      DID => din(17),
      DIE => din(18),
      DIF => din(19),
      DIG => din(20),
      DIH => '0',
      DOA => RAM_reg_128_191_14_20_n_0,
      DOB => RAM_reg_128_191_14_20_n_1,
      DOC => RAM_reg_128_191_14_20_n_2,
      DOD => RAM_reg_128_191_14_20_n_3,
      DOE => RAM_reg_128_191_14_20_n_4,
      DOF => RAM_reg_128_191_14_20_n_5,
      DOG => RAM_reg_128_191_14_20_n_6,
      DOH => NLW_RAM_reg_128_191_14_20_DOH_UNCONNECTED,
      WCLK => wr_clk,
      WE => \gic0.gc0.count_d2_reg[6]\
    );
RAM_reg_128_191_21_27: unisim.vcomponents.RAM64M8
     port map (
      ADDRA(5 downto 0) => ADDRG(5 downto 0),
      ADDRB(5 downto 0) => ADDRG(5 downto 0),
      ADDRC(5 downto 0) => ADDRG(5 downto 0),
      ADDRD(5 downto 0) => ADDRG(5 downto 0),
      ADDRE(5 downto 0) => ADDRG(5 downto 0),
      ADDRF(5 downto 0) => ADDRG(5 downto 0),
      ADDRG(5 downto 0) => ADDRG(5 downto 0),
      ADDRH(5 downto 0) => \gic0.gc0.count_d2_reg[5]\(5 downto 0),
      DIA => din(21),
      DIB => din(22),
      DIC => din(23),
      DID => din(24),
      DIE => din(25),
      DIF => din(26),
      DIG => din(27),
      DIH => '0',
      DOA => RAM_reg_128_191_21_27_n_0,
      DOB => RAM_reg_128_191_21_27_n_1,
      DOC => RAM_reg_128_191_21_27_n_2,
      DOD => RAM_reg_128_191_21_27_n_3,
      DOE => RAM_reg_128_191_21_27_n_4,
      DOF => RAM_reg_128_191_21_27_n_5,
      DOG => RAM_reg_128_191_21_27_n_6,
      DOH => NLW_RAM_reg_128_191_21_27_DOH_UNCONNECTED,
      WCLK => wr_clk,
      WE => \gic0.gc0.count_d2_reg[6]\
    );
RAM_reg_128_191_28_31: unisim.vcomponents.RAM64M8
     port map (
      ADDRA(5 downto 0) => ADDRG(5 downto 0),
      ADDRB(5 downto 0) => ADDRG(5 downto 0),
      ADDRC(5 downto 0) => ADDRG(5 downto 0),
      ADDRD(5 downto 0) => ADDRG(5 downto 0),
      ADDRE(5 downto 0) => ADDRG(5 downto 0),
      ADDRF(5 downto 0) => ADDRG(5 downto 0),
      ADDRG(5 downto 0) => ADDRG(5 downto 0),
      ADDRH(5 downto 0) => \gic0.gc0.count_d2_reg[5]\(5 downto 0),
      DIA => din(28),
      DIB => din(29),
      DIC => din(30),
      DID => din(31),
      DIE => '0',
      DIF => '0',
      DIG => '0',
      DIH => '0',
      DOA => RAM_reg_128_191_28_31_n_0,
      DOB => RAM_reg_128_191_28_31_n_1,
      DOC => RAM_reg_128_191_28_31_n_2,
      DOD => RAM_reg_128_191_28_31_n_3,
      DOE => NLW_RAM_reg_128_191_28_31_DOE_UNCONNECTED,
      DOF => NLW_RAM_reg_128_191_28_31_DOF_UNCONNECTED,
      DOG => NLW_RAM_reg_128_191_28_31_DOG_UNCONNECTED,
      DOH => NLW_RAM_reg_128_191_28_31_DOH_UNCONNECTED,
      WCLK => wr_clk,
      WE => \gic0.gc0.count_d2_reg[6]\
    );
RAM_reg_128_191_7_13: unisim.vcomponents.RAM64M8
     port map (
      ADDRA(5 downto 0) => Q(5 downto 0),
      ADDRB(5 downto 0) => Q(5 downto 0),
      ADDRC(5 downto 0) => Q(5 downto 0),
      ADDRD(5 downto 0) => Q(5 downto 0),
      ADDRE(5 downto 0) => Q(5 downto 0),
      ADDRF(5 downto 0) => Q(5 downto 0),
      ADDRG(5 downto 0) => Q(5 downto 0),
      ADDRH(5 downto 0) => \gic0.gc0.count_d2_reg[5]\(5 downto 0),
      DIA => din(7),
      DIB => din(8),
      DIC => din(9),
      DID => din(10),
      DIE => din(11),
      DIF => din(12),
      DIG => din(13),
      DIH => '0',
      DOA => RAM_reg_128_191_7_13_n_0,
      DOB => RAM_reg_128_191_7_13_n_1,
      DOC => RAM_reg_128_191_7_13_n_2,
      DOD => RAM_reg_128_191_7_13_n_3,
      DOE => RAM_reg_128_191_7_13_n_4,
      DOF => RAM_reg_128_191_7_13_n_5,
      DOG => RAM_reg_128_191_7_13_n_6,
      DOH => NLW_RAM_reg_128_191_7_13_DOH_UNCONNECTED,
      WCLK => wr_clk,
      WE => \gic0.gc0.count_d2_reg[6]\
    );
RAM_reg_192_255_0_6: unisim.vcomponents.RAM64M8
     port map (
      ADDRA(5 downto 0) => Q(5 downto 0),
      ADDRB(5 downto 0) => Q(5 downto 0),
      ADDRC(5 downto 0) => Q(5 downto 0),
      ADDRD(5 downto 0) => Q(5 downto 0),
      ADDRE(5 downto 0) => Q(5 downto 0),
      ADDRF(5 downto 0) => Q(5 downto 0),
      ADDRG(5 downto 0) => Q(5 downto 0),
      ADDRH(5 downto 0) => \gic0.gc0.count_d2_reg[5]\(5 downto 0),
      DIA => din(0),
      DIB => din(1),
      DIC => din(2),
      DID => din(3),
      DIE => din(4),
      DIF => din(5),
      DIG => din(6),
      DIH => '0',
      DOA => RAM_reg_192_255_0_6_n_0,
      DOB => RAM_reg_192_255_0_6_n_1,
      DOC => RAM_reg_192_255_0_6_n_2,
      DOD => RAM_reg_192_255_0_6_n_3,
      DOE => RAM_reg_192_255_0_6_n_4,
      DOF => RAM_reg_192_255_0_6_n_5,
      DOG => RAM_reg_192_255_0_6_n_6,
      DOH => NLW_RAM_reg_192_255_0_6_DOH_UNCONNECTED,
      WCLK => wr_clk,
      WE => ram_full_fb_i_reg_0
    );
RAM_reg_192_255_14_20: unisim.vcomponents.RAM64M8
     port map (
      ADDRA(5 downto 0) => Q(5 downto 0),
      ADDRB(5 downto 0) => Q(5 downto 0),
      ADDRC(5 downto 0) => Q(5 downto 0),
      ADDRD(5 downto 0) => Q(5 downto 0),
      ADDRE(5 downto 0) => Q(5 downto 0),
      ADDRF(5 downto 0) => Q(5 downto 0),
      ADDRG(5 downto 0) => Q(5 downto 0),
      ADDRH(5 downto 0) => \gic0.gc0.count_d2_reg[5]\(5 downto 0),
      DIA => din(14),
      DIB => din(15),
      DIC => din(16),
      DID => din(17),
      DIE => din(18),
      DIF => din(19),
      DIG => din(20),
      DIH => '0',
      DOA => RAM_reg_192_255_14_20_n_0,
      DOB => RAM_reg_192_255_14_20_n_1,
      DOC => RAM_reg_192_255_14_20_n_2,
      DOD => RAM_reg_192_255_14_20_n_3,
      DOE => RAM_reg_192_255_14_20_n_4,
      DOF => RAM_reg_192_255_14_20_n_5,
      DOG => RAM_reg_192_255_14_20_n_6,
      DOH => NLW_RAM_reg_192_255_14_20_DOH_UNCONNECTED,
      WCLK => wr_clk,
      WE => ram_full_fb_i_reg_0
    );
RAM_reg_192_255_21_27: unisim.vcomponents.RAM64M8
     port map (
      ADDRA(5 downto 0) => ADDRG(5 downto 0),
      ADDRB(5 downto 0) => ADDRG(5 downto 0),
      ADDRC(5 downto 0) => ADDRG(5 downto 0),
      ADDRD(5 downto 0) => ADDRG(5 downto 0),
      ADDRE(5 downto 0) => ADDRG(5 downto 0),
      ADDRF(5 downto 0) => ADDRG(5 downto 0),
      ADDRG(5 downto 0) => ADDRG(5 downto 0),
      ADDRH(5 downto 0) => \gic0.gc0.count_d2_reg[5]\(5 downto 0),
      DIA => din(21),
      DIB => din(22),
      DIC => din(23),
      DID => din(24),
      DIE => din(25),
      DIF => din(26),
      DIG => din(27),
      DIH => '0',
      DOA => RAM_reg_192_255_21_27_n_0,
      DOB => RAM_reg_192_255_21_27_n_1,
      DOC => RAM_reg_192_255_21_27_n_2,
      DOD => RAM_reg_192_255_21_27_n_3,
      DOE => RAM_reg_192_255_21_27_n_4,
      DOF => RAM_reg_192_255_21_27_n_5,
      DOG => RAM_reg_192_255_21_27_n_6,
      DOH => NLW_RAM_reg_192_255_21_27_DOH_UNCONNECTED,
      WCLK => wr_clk,
      WE => ram_full_fb_i_reg_0
    );
RAM_reg_192_255_28_31: unisim.vcomponents.RAM64M8
     port map (
      ADDRA(5 downto 0) => ADDRG(5 downto 0),
      ADDRB(5 downto 0) => ADDRG(5 downto 0),
      ADDRC(5 downto 0) => ADDRG(5 downto 0),
      ADDRD(5 downto 0) => ADDRG(5 downto 0),
      ADDRE(5 downto 0) => ADDRG(5 downto 0),
      ADDRF(5 downto 0) => ADDRG(5 downto 0),
      ADDRG(5 downto 0) => ADDRG(5 downto 0),
      ADDRH(5 downto 0) => \gic0.gc0.count_d2_reg[5]\(5 downto 0),
      DIA => din(28),
      DIB => din(29),
      DIC => din(30),
      DID => din(31),
      DIE => '0',
      DIF => '0',
      DIG => '0',
      DIH => '0',
      DOA => RAM_reg_192_255_28_31_n_0,
      DOB => RAM_reg_192_255_28_31_n_1,
      DOC => RAM_reg_192_255_28_31_n_2,
      DOD => RAM_reg_192_255_28_31_n_3,
      DOE => NLW_RAM_reg_192_255_28_31_DOE_UNCONNECTED,
      DOF => NLW_RAM_reg_192_255_28_31_DOF_UNCONNECTED,
      DOG => NLW_RAM_reg_192_255_28_31_DOG_UNCONNECTED,
      DOH => NLW_RAM_reg_192_255_28_31_DOH_UNCONNECTED,
      WCLK => wr_clk,
      WE => ram_full_fb_i_reg_0
    );
RAM_reg_192_255_7_13: unisim.vcomponents.RAM64M8
     port map (
      ADDRA(5 downto 0) => Q(5 downto 0),
      ADDRB(5 downto 0) => Q(5 downto 0),
      ADDRC(5 downto 0) => Q(5 downto 0),
      ADDRD(5 downto 0) => Q(5 downto 0),
      ADDRE(5 downto 0) => Q(5 downto 0),
      ADDRF(5 downto 0) => Q(5 downto 0),
      ADDRG(5 downto 0) => Q(5 downto 0),
      ADDRH(5 downto 0) => \gic0.gc0.count_d2_reg[5]\(5 downto 0),
      DIA => din(7),
      DIB => din(8),
      DIC => din(9),
      DID => din(10),
      DIE => din(11),
      DIF => din(12),
      DIG => din(13),
      DIH => '0',
      DOA => RAM_reg_192_255_7_13_n_0,
      DOB => RAM_reg_192_255_7_13_n_1,
      DOC => RAM_reg_192_255_7_13_n_2,
      DOD => RAM_reg_192_255_7_13_n_3,
      DOE => RAM_reg_192_255_7_13_n_4,
      DOF => RAM_reg_192_255_7_13_n_5,
      DOG => RAM_reg_192_255_7_13_n_6,
      DOH => NLW_RAM_reg_192_255_7_13_DOH_UNCONNECTED,
      WCLK => wr_clk,
      WE => ram_full_fb_i_reg_0
    );
RAM_reg_256_319_0_6: unisim.vcomponents.RAM64M8
     port map (
      ADDRA(5 downto 0) => Q(5 downto 0),
      ADDRB(5 downto 0) => Q(5 downto 0),
      ADDRC(5 downto 0) => Q(5 downto 0),
      ADDRD(5 downto 0) => Q(5 downto 0),
      ADDRE(5 downto 0) => Q(5 downto 0),
      ADDRF(5 downto 0) => Q(5 downto 0),
      ADDRG(5 downto 0) => Q(5 downto 0),
      ADDRH(5 downto 0) => \gic0.gc0.count_d2_reg[5]\(5 downto 0),
      DIA => din(0),
      DIB => din(1),
      DIC => din(2),
      DID => din(3),
      DIE => din(4),
      DIF => din(5),
      DIG => din(6),
      DIH => '0',
      DOA => RAM_reg_256_319_0_6_n_0,
      DOB => RAM_reg_256_319_0_6_n_1,
      DOC => RAM_reg_256_319_0_6_n_2,
      DOD => RAM_reg_256_319_0_6_n_3,
      DOE => RAM_reg_256_319_0_6_n_4,
      DOF => RAM_reg_256_319_0_6_n_5,
      DOG => RAM_reg_256_319_0_6_n_6,
      DOH => NLW_RAM_reg_256_319_0_6_DOH_UNCONNECTED,
      WCLK => wr_clk,
      WE => \gic0.gc0.count_d2_reg[6]_0\
    );
RAM_reg_256_319_14_20: unisim.vcomponents.RAM64M8
     port map (
      ADDRA(5 downto 0) => Q(5 downto 0),
      ADDRB(5 downto 0) => Q(5 downto 0),
      ADDRC(5 downto 0) => Q(5 downto 0),
      ADDRD(5 downto 0) => Q(5 downto 0),
      ADDRE(5 downto 0) => Q(5 downto 0),
      ADDRF(5 downto 0) => Q(5 downto 0),
      ADDRG(5 downto 0) => Q(5 downto 0),
      ADDRH(5 downto 0) => \gic0.gc0.count_d2_reg[5]\(5 downto 0),
      DIA => din(14),
      DIB => din(15),
      DIC => din(16),
      DID => din(17),
      DIE => din(18),
      DIF => din(19),
      DIG => din(20),
      DIH => '0',
      DOA => RAM_reg_256_319_14_20_n_0,
      DOB => RAM_reg_256_319_14_20_n_1,
      DOC => RAM_reg_256_319_14_20_n_2,
      DOD => RAM_reg_256_319_14_20_n_3,
      DOE => RAM_reg_256_319_14_20_n_4,
      DOF => RAM_reg_256_319_14_20_n_5,
      DOG => RAM_reg_256_319_14_20_n_6,
      DOH => NLW_RAM_reg_256_319_14_20_DOH_UNCONNECTED,
      WCLK => wr_clk,
      WE => \gic0.gc0.count_d2_reg[6]_0\
    );
RAM_reg_256_319_21_27: unisim.vcomponents.RAM64M8
     port map (
      ADDRA(5 downto 0) => ADDRG(5 downto 0),
      ADDRB(5 downto 0) => ADDRG(5 downto 0),
      ADDRC(5 downto 0) => ADDRG(5 downto 0),
      ADDRD(5 downto 0) => ADDRG(5 downto 0),
      ADDRE(5 downto 0) => ADDRG(5 downto 0),
      ADDRF(5 downto 0) => ADDRG(5 downto 0),
      ADDRG(5 downto 0) => ADDRG(5 downto 0),
      ADDRH(5 downto 0) => \gic0.gc0.count_d2_reg[5]\(5 downto 0),
      DIA => din(21),
      DIB => din(22),
      DIC => din(23),
      DID => din(24),
      DIE => din(25),
      DIF => din(26),
      DIG => din(27),
      DIH => '0',
      DOA => RAM_reg_256_319_21_27_n_0,
      DOB => RAM_reg_256_319_21_27_n_1,
      DOC => RAM_reg_256_319_21_27_n_2,
      DOD => RAM_reg_256_319_21_27_n_3,
      DOE => RAM_reg_256_319_21_27_n_4,
      DOF => RAM_reg_256_319_21_27_n_5,
      DOG => RAM_reg_256_319_21_27_n_6,
      DOH => NLW_RAM_reg_256_319_21_27_DOH_UNCONNECTED,
      WCLK => wr_clk,
      WE => \gic0.gc0.count_d2_reg[6]_0\
    );
RAM_reg_256_319_28_31: unisim.vcomponents.RAM64M8
     port map (
      ADDRA(5 downto 0) => ADDRG(5 downto 0),
      ADDRB(5 downto 0) => ADDRG(5 downto 0),
      ADDRC(5 downto 0) => ADDRG(5 downto 0),
      ADDRD(5 downto 0) => ADDRG(5 downto 0),
      ADDRE(5 downto 0) => ADDRG(5 downto 0),
      ADDRF(5 downto 0) => ADDRG(5 downto 0),
      ADDRG(5 downto 0) => ADDRG(5 downto 0),
      ADDRH(5 downto 0) => \gic0.gc0.count_d2_reg[5]\(5 downto 0),
      DIA => din(28),
      DIB => din(29),
      DIC => din(30),
      DID => din(31),
      DIE => '0',
      DIF => '0',
      DIG => '0',
      DIH => '0',
      DOA => RAM_reg_256_319_28_31_n_0,
      DOB => RAM_reg_256_319_28_31_n_1,
      DOC => RAM_reg_256_319_28_31_n_2,
      DOD => RAM_reg_256_319_28_31_n_3,
      DOE => NLW_RAM_reg_256_319_28_31_DOE_UNCONNECTED,
      DOF => NLW_RAM_reg_256_319_28_31_DOF_UNCONNECTED,
      DOG => NLW_RAM_reg_256_319_28_31_DOG_UNCONNECTED,
      DOH => NLW_RAM_reg_256_319_28_31_DOH_UNCONNECTED,
      WCLK => wr_clk,
      WE => \gic0.gc0.count_d2_reg[6]_0\
    );
RAM_reg_256_319_7_13: unisim.vcomponents.RAM64M8
     port map (
      ADDRA(5 downto 0) => Q(5 downto 0),
      ADDRB(5 downto 0) => Q(5 downto 0),
      ADDRC(5 downto 0) => Q(5 downto 0),
      ADDRD(5 downto 0) => Q(5 downto 0),
      ADDRE(5 downto 0) => Q(5 downto 0),
      ADDRF(5 downto 0) => Q(5 downto 0),
      ADDRG(5 downto 0) => Q(5 downto 0),
      ADDRH(5 downto 0) => \gic0.gc0.count_d2_reg[5]\(5 downto 0),
      DIA => din(7),
      DIB => din(8),
      DIC => din(9),
      DID => din(10),
      DIE => din(11),
      DIF => din(12),
      DIG => din(13),
      DIH => '0',
      DOA => RAM_reg_256_319_7_13_n_0,
      DOB => RAM_reg_256_319_7_13_n_1,
      DOC => RAM_reg_256_319_7_13_n_2,
      DOD => RAM_reg_256_319_7_13_n_3,
      DOE => RAM_reg_256_319_7_13_n_4,
      DOF => RAM_reg_256_319_7_13_n_5,
      DOG => RAM_reg_256_319_7_13_n_6,
      DOH => NLW_RAM_reg_256_319_7_13_DOH_UNCONNECTED,
      WCLK => wr_clk,
      WE => \gic0.gc0.count_d2_reg[6]_0\
    );
RAM_reg_320_383_0_6: unisim.vcomponents.RAM64M8
     port map (
      ADDRA(5 downto 0) => Q(5 downto 0),
      ADDRB(5 downto 0) => Q(5 downto 0),
      ADDRC(5 downto 0) => Q(5 downto 0),
      ADDRD(5 downto 0) => Q(5 downto 0),
      ADDRE(5 downto 0) => Q(5 downto 0),
      ADDRF(5 downto 0) => Q(5 downto 0),
      ADDRG(5 downto 0) => Q(5 downto 0),
      ADDRH(5 downto 0) => \gic0.gc0.count_d2_reg[5]\(5 downto 0),
      DIA => din(0),
      DIB => din(1),
      DIC => din(2),
      DID => din(3),
      DIE => din(4),
      DIF => din(5),
      DIG => din(6),
      DIH => '0',
      DOA => RAM_reg_320_383_0_6_n_0,
      DOB => RAM_reg_320_383_0_6_n_1,
      DOC => RAM_reg_320_383_0_6_n_2,
      DOD => RAM_reg_320_383_0_6_n_3,
      DOE => RAM_reg_320_383_0_6_n_4,
      DOF => RAM_reg_320_383_0_6_n_5,
      DOG => RAM_reg_320_383_0_6_n_6,
      DOH => NLW_RAM_reg_320_383_0_6_DOH_UNCONNECTED,
      WCLK => wr_clk,
      WE => ram_full_fb_i_reg_1
    );
RAM_reg_320_383_14_20: unisim.vcomponents.RAM64M8
     port map (
      ADDRA(5 downto 0) => Q(5 downto 0),
      ADDRB(5 downto 0) => Q(5 downto 0),
      ADDRC(5 downto 0) => Q(5 downto 0),
      ADDRD(5 downto 0) => Q(5 downto 0),
      ADDRE(5 downto 0) => Q(5 downto 0),
      ADDRF(5 downto 0) => Q(5 downto 0),
      ADDRG(5 downto 0) => Q(5 downto 0),
      ADDRH(5 downto 0) => \gic0.gc0.count_d2_reg[5]\(5 downto 0),
      DIA => din(14),
      DIB => din(15),
      DIC => din(16),
      DID => din(17),
      DIE => din(18),
      DIF => din(19),
      DIG => din(20),
      DIH => '0',
      DOA => RAM_reg_320_383_14_20_n_0,
      DOB => RAM_reg_320_383_14_20_n_1,
      DOC => RAM_reg_320_383_14_20_n_2,
      DOD => RAM_reg_320_383_14_20_n_3,
      DOE => RAM_reg_320_383_14_20_n_4,
      DOF => RAM_reg_320_383_14_20_n_5,
      DOG => RAM_reg_320_383_14_20_n_6,
      DOH => NLW_RAM_reg_320_383_14_20_DOH_UNCONNECTED,
      WCLK => wr_clk,
      WE => ram_full_fb_i_reg_1
    );
RAM_reg_320_383_21_27: unisim.vcomponents.RAM64M8
     port map (
      ADDRA(5 downto 0) => ADDRG(5 downto 0),
      ADDRB(5 downto 0) => ADDRG(5 downto 0),
      ADDRC(5 downto 0) => ADDRG(5 downto 0),
      ADDRD(5 downto 0) => ADDRG(5 downto 0),
      ADDRE(5 downto 0) => ADDRG(5 downto 0),
      ADDRF(5 downto 0) => ADDRG(5 downto 0),
      ADDRG(5 downto 0) => ADDRG(5 downto 0),
      ADDRH(5 downto 0) => \gic0.gc0.count_d2_reg[5]\(5 downto 0),
      DIA => din(21),
      DIB => din(22),
      DIC => din(23),
      DID => din(24),
      DIE => din(25),
      DIF => din(26),
      DIG => din(27),
      DIH => '0',
      DOA => RAM_reg_320_383_21_27_n_0,
      DOB => RAM_reg_320_383_21_27_n_1,
      DOC => RAM_reg_320_383_21_27_n_2,
      DOD => RAM_reg_320_383_21_27_n_3,
      DOE => RAM_reg_320_383_21_27_n_4,
      DOF => RAM_reg_320_383_21_27_n_5,
      DOG => RAM_reg_320_383_21_27_n_6,
      DOH => NLW_RAM_reg_320_383_21_27_DOH_UNCONNECTED,
      WCLK => wr_clk,
      WE => ram_full_fb_i_reg_1
    );
RAM_reg_320_383_28_31: unisim.vcomponents.RAM64M8
     port map (
      ADDRA(5 downto 0) => ADDRG(5 downto 0),
      ADDRB(5 downto 0) => ADDRG(5 downto 0),
      ADDRC(5 downto 0) => ADDRG(5 downto 0),
      ADDRD(5 downto 0) => ADDRG(5 downto 0),
      ADDRE(5 downto 0) => ADDRG(5 downto 0),
      ADDRF(5 downto 0) => ADDRG(5 downto 0),
      ADDRG(5 downto 0) => ADDRG(5 downto 0),
      ADDRH(5 downto 0) => \gic0.gc0.count_d2_reg[5]\(5 downto 0),
      DIA => din(28),
      DIB => din(29),
      DIC => din(30),
      DID => din(31),
      DIE => '0',
      DIF => '0',
      DIG => '0',
      DIH => '0',
      DOA => RAM_reg_320_383_28_31_n_0,
      DOB => RAM_reg_320_383_28_31_n_1,
      DOC => RAM_reg_320_383_28_31_n_2,
      DOD => RAM_reg_320_383_28_31_n_3,
      DOE => NLW_RAM_reg_320_383_28_31_DOE_UNCONNECTED,
      DOF => NLW_RAM_reg_320_383_28_31_DOF_UNCONNECTED,
      DOG => NLW_RAM_reg_320_383_28_31_DOG_UNCONNECTED,
      DOH => NLW_RAM_reg_320_383_28_31_DOH_UNCONNECTED,
      WCLK => wr_clk,
      WE => ram_full_fb_i_reg_1
    );
RAM_reg_320_383_7_13: unisim.vcomponents.RAM64M8
     port map (
      ADDRA(5 downto 0) => Q(5 downto 0),
      ADDRB(5 downto 0) => Q(5 downto 0),
      ADDRC(5 downto 0) => Q(5 downto 0),
      ADDRD(5 downto 0) => Q(5 downto 0),
      ADDRE(5 downto 0) => Q(5 downto 0),
      ADDRF(5 downto 0) => Q(5 downto 0),
      ADDRG(5 downto 0) => Q(5 downto 0),
      ADDRH(5 downto 0) => \gic0.gc0.count_d2_reg[5]\(5 downto 0),
      DIA => din(7),
      DIB => din(8),
      DIC => din(9),
      DID => din(10),
      DIE => din(11),
      DIF => din(12),
      DIG => din(13),
      DIH => '0',
      DOA => RAM_reg_320_383_7_13_n_0,
      DOB => RAM_reg_320_383_7_13_n_1,
      DOC => RAM_reg_320_383_7_13_n_2,
      DOD => RAM_reg_320_383_7_13_n_3,
      DOE => RAM_reg_320_383_7_13_n_4,
      DOF => RAM_reg_320_383_7_13_n_5,
      DOG => RAM_reg_320_383_7_13_n_6,
      DOH => NLW_RAM_reg_320_383_7_13_DOH_UNCONNECTED,
      WCLK => wr_clk,
      WE => ram_full_fb_i_reg_1
    );
RAM_reg_384_447_0_6: unisim.vcomponents.RAM64M8
     port map (
      ADDRA(5 downto 0) => Q(5 downto 0),
      ADDRB(5 downto 0) => Q(5 downto 0),
      ADDRC(5 downto 0) => Q(5 downto 0),
      ADDRD(5 downto 0) => Q(5 downto 0),
      ADDRE(5 downto 0) => Q(5 downto 0),
      ADDRF(5 downto 0) => Q(5 downto 0),
      ADDRG(5 downto 0) => Q(5 downto 0),
      ADDRH(5 downto 0) => \gic0.gc0.count_d2_reg[5]\(5 downto 0),
      DIA => din(0),
      DIB => din(1),
      DIC => din(2),
      DID => din(3),
      DIE => din(4),
      DIF => din(5),
      DIG => din(6),
      DIH => '0',
      DOA => RAM_reg_384_447_0_6_n_0,
      DOB => RAM_reg_384_447_0_6_n_1,
      DOC => RAM_reg_384_447_0_6_n_2,
      DOD => RAM_reg_384_447_0_6_n_3,
      DOE => RAM_reg_384_447_0_6_n_4,
      DOF => RAM_reg_384_447_0_6_n_5,
      DOG => RAM_reg_384_447_0_6_n_6,
      DOH => NLW_RAM_reg_384_447_0_6_DOH_UNCONNECTED,
      WCLK => wr_clk,
      WE => ram_full_fb_i_reg_2
    );
RAM_reg_384_447_14_20: unisim.vcomponents.RAM64M8
     port map (
      ADDRA(5 downto 0) => Q(5 downto 0),
      ADDRB(5 downto 0) => Q(5 downto 0),
      ADDRC(5 downto 0) => Q(5 downto 0),
      ADDRD(5 downto 0) => Q(5 downto 0),
      ADDRE(5 downto 0) => Q(5 downto 0),
      ADDRF(5 downto 0) => Q(5 downto 0),
      ADDRG(5 downto 0) => Q(5 downto 0),
      ADDRH(5 downto 0) => \gic0.gc0.count_d2_reg[5]\(5 downto 0),
      DIA => din(14),
      DIB => din(15),
      DIC => din(16),
      DID => din(17),
      DIE => din(18),
      DIF => din(19),
      DIG => din(20),
      DIH => '0',
      DOA => RAM_reg_384_447_14_20_n_0,
      DOB => RAM_reg_384_447_14_20_n_1,
      DOC => RAM_reg_384_447_14_20_n_2,
      DOD => RAM_reg_384_447_14_20_n_3,
      DOE => RAM_reg_384_447_14_20_n_4,
      DOF => RAM_reg_384_447_14_20_n_5,
      DOG => RAM_reg_384_447_14_20_n_6,
      DOH => NLW_RAM_reg_384_447_14_20_DOH_UNCONNECTED,
      WCLK => wr_clk,
      WE => ram_full_fb_i_reg_2
    );
RAM_reg_384_447_21_27: unisim.vcomponents.RAM64M8
     port map (
      ADDRA(5 downto 0) => ADDRG(5 downto 0),
      ADDRB(5 downto 0) => ADDRG(5 downto 0),
      ADDRC(5 downto 0) => ADDRG(5 downto 0),
      ADDRD(5 downto 0) => ADDRG(5 downto 0),
      ADDRE(5 downto 0) => ADDRG(5 downto 0),
      ADDRF(5 downto 0) => ADDRG(5 downto 0),
      ADDRG(5 downto 0) => ADDRG(5 downto 0),
      ADDRH(5 downto 0) => \gic0.gc0.count_d2_reg[5]\(5 downto 0),
      DIA => din(21),
      DIB => din(22),
      DIC => din(23),
      DID => din(24),
      DIE => din(25),
      DIF => din(26),
      DIG => din(27),
      DIH => '0',
      DOA => RAM_reg_384_447_21_27_n_0,
      DOB => RAM_reg_384_447_21_27_n_1,
      DOC => RAM_reg_384_447_21_27_n_2,
      DOD => RAM_reg_384_447_21_27_n_3,
      DOE => RAM_reg_384_447_21_27_n_4,
      DOF => RAM_reg_384_447_21_27_n_5,
      DOG => RAM_reg_384_447_21_27_n_6,
      DOH => NLW_RAM_reg_384_447_21_27_DOH_UNCONNECTED,
      WCLK => wr_clk,
      WE => ram_full_fb_i_reg_2
    );
RAM_reg_384_447_28_31: unisim.vcomponents.RAM64M8
     port map (
      ADDRA(5 downto 0) => ADDRG(5 downto 0),
      ADDRB(5 downto 0) => ADDRG(5 downto 0),
      ADDRC(5 downto 0) => ADDRG(5 downto 0),
      ADDRD(5 downto 0) => ADDRG(5 downto 0),
      ADDRE(5 downto 0) => ADDRG(5 downto 0),
      ADDRF(5 downto 0) => ADDRG(5 downto 0),
      ADDRG(5 downto 0) => ADDRG(5 downto 0),
      ADDRH(5 downto 0) => \gic0.gc0.count_d2_reg[5]\(5 downto 0),
      DIA => din(28),
      DIB => din(29),
      DIC => din(30),
      DID => din(31),
      DIE => '0',
      DIF => '0',
      DIG => '0',
      DIH => '0',
      DOA => RAM_reg_384_447_28_31_n_0,
      DOB => RAM_reg_384_447_28_31_n_1,
      DOC => RAM_reg_384_447_28_31_n_2,
      DOD => RAM_reg_384_447_28_31_n_3,
      DOE => NLW_RAM_reg_384_447_28_31_DOE_UNCONNECTED,
      DOF => NLW_RAM_reg_384_447_28_31_DOF_UNCONNECTED,
      DOG => NLW_RAM_reg_384_447_28_31_DOG_UNCONNECTED,
      DOH => NLW_RAM_reg_384_447_28_31_DOH_UNCONNECTED,
      WCLK => wr_clk,
      WE => ram_full_fb_i_reg_2
    );
RAM_reg_384_447_7_13: unisim.vcomponents.RAM64M8
     port map (
      ADDRA(5 downto 0) => Q(5 downto 0),
      ADDRB(5 downto 0) => Q(5 downto 0),
      ADDRC(5 downto 0) => Q(5 downto 0),
      ADDRD(5 downto 0) => Q(5 downto 0),
      ADDRE(5 downto 0) => Q(5 downto 0),
      ADDRF(5 downto 0) => Q(5 downto 0),
      ADDRG(5 downto 0) => Q(5 downto 0),
      ADDRH(5 downto 0) => \gic0.gc0.count_d2_reg[5]\(5 downto 0),
      DIA => din(7),
      DIB => din(8),
      DIC => din(9),
      DID => din(10),
      DIE => din(11),
      DIF => din(12),
      DIG => din(13),
      DIH => '0',
      DOA => RAM_reg_384_447_7_13_n_0,
      DOB => RAM_reg_384_447_7_13_n_1,
      DOC => RAM_reg_384_447_7_13_n_2,
      DOD => RAM_reg_384_447_7_13_n_3,
      DOE => RAM_reg_384_447_7_13_n_4,
      DOF => RAM_reg_384_447_7_13_n_5,
      DOG => RAM_reg_384_447_7_13_n_6,
      DOH => NLW_RAM_reg_384_447_7_13_DOH_UNCONNECTED,
      WCLK => wr_clk,
      WE => ram_full_fb_i_reg_2
    );
RAM_reg_448_511_0_6: unisim.vcomponents.RAM64M8
     port map (
      ADDRA(5 downto 0) => Q(5 downto 0),
      ADDRB(5 downto 0) => Q(5 downto 0),
      ADDRC(5 downto 0) => Q(5 downto 0),
      ADDRD(5 downto 0) => Q(5 downto 0),
      ADDRE(5 downto 0) => Q(5 downto 0),
      ADDRF(5 downto 0) => Q(5 downto 0),
      ADDRG(5 downto 0) => Q(5 downto 0),
      ADDRH(5 downto 0) => \gic0.gc0.count_d2_reg[5]\(5 downto 0),
      DIA => din(0),
      DIB => din(1),
      DIC => din(2),
      DID => din(3),
      DIE => din(4),
      DIF => din(5),
      DIG => din(6),
      DIH => '0',
      DOA => RAM_reg_448_511_0_6_n_0,
      DOB => RAM_reg_448_511_0_6_n_1,
      DOC => RAM_reg_448_511_0_6_n_2,
      DOD => RAM_reg_448_511_0_6_n_3,
      DOE => RAM_reg_448_511_0_6_n_4,
      DOF => RAM_reg_448_511_0_6_n_5,
      DOG => RAM_reg_448_511_0_6_n_6,
      DOH => NLW_RAM_reg_448_511_0_6_DOH_UNCONNECTED,
      WCLK => wr_clk,
      WE => \gic0.gc0.count_d2_reg[8]\
    );
RAM_reg_448_511_14_20: unisim.vcomponents.RAM64M8
     port map (
      ADDRA(5 downto 0) => Q(5 downto 0),
      ADDRB(5 downto 0) => Q(5 downto 0),
      ADDRC(5 downto 0) => Q(5 downto 0),
      ADDRD(5 downto 0) => Q(5 downto 0),
      ADDRE(5 downto 0) => Q(5 downto 0),
      ADDRF(5 downto 0) => Q(5 downto 0),
      ADDRG(5 downto 0) => Q(5 downto 0),
      ADDRH(5 downto 0) => \gic0.gc0.count_d2_reg[5]\(5 downto 0),
      DIA => din(14),
      DIB => din(15),
      DIC => din(16),
      DID => din(17),
      DIE => din(18),
      DIF => din(19),
      DIG => din(20),
      DIH => '0',
      DOA => RAM_reg_448_511_14_20_n_0,
      DOB => RAM_reg_448_511_14_20_n_1,
      DOC => RAM_reg_448_511_14_20_n_2,
      DOD => RAM_reg_448_511_14_20_n_3,
      DOE => RAM_reg_448_511_14_20_n_4,
      DOF => RAM_reg_448_511_14_20_n_5,
      DOG => RAM_reg_448_511_14_20_n_6,
      DOH => NLW_RAM_reg_448_511_14_20_DOH_UNCONNECTED,
      WCLK => wr_clk,
      WE => \gic0.gc0.count_d2_reg[8]\
    );
RAM_reg_448_511_21_27: unisim.vcomponents.RAM64M8
     port map (
      ADDRA(5 downto 0) => ADDRG(5 downto 0),
      ADDRB(5 downto 0) => ADDRG(5 downto 0),
      ADDRC(5 downto 0) => ADDRG(5 downto 0),
      ADDRD(5 downto 0) => ADDRG(5 downto 0),
      ADDRE(5 downto 0) => ADDRG(5 downto 0),
      ADDRF(5 downto 0) => ADDRG(5 downto 0),
      ADDRG(5 downto 0) => ADDRG(5 downto 0),
      ADDRH(5 downto 0) => \gic0.gc0.count_d2_reg[5]\(5 downto 0),
      DIA => din(21),
      DIB => din(22),
      DIC => din(23),
      DID => din(24),
      DIE => din(25),
      DIF => din(26),
      DIG => din(27),
      DIH => '0',
      DOA => RAM_reg_448_511_21_27_n_0,
      DOB => RAM_reg_448_511_21_27_n_1,
      DOC => RAM_reg_448_511_21_27_n_2,
      DOD => RAM_reg_448_511_21_27_n_3,
      DOE => RAM_reg_448_511_21_27_n_4,
      DOF => RAM_reg_448_511_21_27_n_5,
      DOG => RAM_reg_448_511_21_27_n_6,
      DOH => NLW_RAM_reg_448_511_21_27_DOH_UNCONNECTED,
      WCLK => wr_clk,
      WE => \gic0.gc0.count_d2_reg[8]\
    );
RAM_reg_448_511_28_31: unisim.vcomponents.RAM64M8
     port map (
      ADDRA(5 downto 0) => ADDRG(5 downto 0),
      ADDRB(5 downto 0) => ADDRG(5 downto 0),
      ADDRC(5 downto 0) => ADDRG(5 downto 0),
      ADDRD(5 downto 0) => ADDRG(5 downto 0),
      ADDRE(5 downto 0) => ADDRG(5 downto 0),
      ADDRF(5 downto 0) => ADDRG(5 downto 0),
      ADDRG(5 downto 0) => ADDRG(5 downto 0),
      ADDRH(5 downto 0) => \gic0.gc0.count_d2_reg[5]\(5 downto 0),
      DIA => din(28),
      DIB => din(29),
      DIC => din(30),
      DID => din(31),
      DIE => '0',
      DIF => '0',
      DIG => '0',
      DIH => '0',
      DOA => RAM_reg_448_511_28_31_n_0,
      DOB => RAM_reg_448_511_28_31_n_1,
      DOC => RAM_reg_448_511_28_31_n_2,
      DOD => RAM_reg_448_511_28_31_n_3,
      DOE => NLW_RAM_reg_448_511_28_31_DOE_UNCONNECTED,
      DOF => NLW_RAM_reg_448_511_28_31_DOF_UNCONNECTED,
      DOG => NLW_RAM_reg_448_511_28_31_DOG_UNCONNECTED,
      DOH => NLW_RAM_reg_448_511_28_31_DOH_UNCONNECTED,
      WCLK => wr_clk,
      WE => \gic0.gc0.count_d2_reg[8]\
    );
RAM_reg_448_511_7_13: unisim.vcomponents.RAM64M8
     port map (
      ADDRA(5 downto 0) => Q(5 downto 0),
      ADDRB(5 downto 0) => Q(5 downto 0),
      ADDRC(5 downto 0) => Q(5 downto 0),
      ADDRD(5 downto 0) => Q(5 downto 0),
      ADDRE(5 downto 0) => Q(5 downto 0),
      ADDRF(5 downto 0) => Q(5 downto 0),
      ADDRG(5 downto 0) => Q(5 downto 0),
      ADDRH(5 downto 0) => \gic0.gc0.count_d2_reg[5]\(5 downto 0),
      DIA => din(7),
      DIB => din(8),
      DIC => din(9),
      DID => din(10),
      DIE => din(11),
      DIF => din(12),
      DIG => din(13),
      DIH => '0',
      DOA => RAM_reg_448_511_7_13_n_0,
      DOB => RAM_reg_448_511_7_13_n_1,
      DOC => RAM_reg_448_511_7_13_n_2,
      DOD => RAM_reg_448_511_7_13_n_3,
      DOE => RAM_reg_448_511_7_13_n_4,
      DOF => RAM_reg_448_511_7_13_n_5,
      DOG => RAM_reg_448_511_7_13_n_6,
      DOH => NLW_RAM_reg_448_511_7_13_DOH_UNCONNECTED,
      WCLK => wr_clk,
      WE => \gic0.gc0.count_d2_reg[8]\
    );
RAM_reg_64_127_0_6: unisim.vcomponents.RAM64M8
     port map (
      ADDRA(5 downto 0) => Q(5 downto 0),
      ADDRB(5 downto 0) => Q(5 downto 0),
      ADDRC(5 downto 0) => Q(5 downto 0),
      ADDRD(5 downto 0) => Q(5 downto 0),
      ADDRE(5 downto 0) => Q(5 downto 0),
      ADDRF(5 downto 0) => Q(5 downto 0),
      ADDRG(5 downto 0) => Q(5 downto 0),
      ADDRH(5 downto 0) => \gic0.gc0.count_d2_reg[5]\(5 downto 0),
      DIA => din(0),
      DIB => din(1),
      DIC => din(2),
      DID => din(3),
      DIE => din(4),
      DIF => din(5),
      DIG => din(6),
      DIH => '0',
      DOA => RAM_reg_64_127_0_6_n_0,
      DOB => RAM_reg_64_127_0_6_n_1,
      DOC => RAM_reg_64_127_0_6_n_2,
      DOD => RAM_reg_64_127_0_6_n_3,
      DOE => RAM_reg_64_127_0_6_n_4,
      DOF => RAM_reg_64_127_0_6_n_5,
      DOG => RAM_reg_64_127_0_6_n_6,
      DOH => NLW_RAM_reg_64_127_0_6_DOH_UNCONNECTED,
      WCLK => wr_clk,
      WE => \gic0.gc0.count_d2_reg[7]\
    );
RAM_reg_64_127_14_20: unisim.vcomponents.RAM64M8
     port map (
      ADDRA(5 downto 0) => Q(5 downto 0),
      ADDRB(5 downto 0) => Q(5 downto 0),
      ADDRC(5 downto 0) => Q(5 downto 0),
      ADDRD(5 downto 0) => Q(5 downto 0),
      ADDRE(5 downto 0) => Q(5 downto 0),
      ADDRF(5 downto 0) => Q(5 downto 0),
      ADDRG(5 downto 0) => Q(5 downto 0),
      ADDRH(5 downto 0) => \gic0.gc0.count_d2_reg[5]\(5 downto 0),
      DIA => din(14),
      DIB => din(15),
      DIC => din(16),
      DID => din(17),
      DIE => din(18),
      DIF => din(19),
      DIG => din(20),
      DIH => '0',
      DOA => RAM_reg_64_127_14_20_n_0,
      DOB => RAM_reg_64_127_14_20_n_1,
      DOC => RAM_reg_64_127_14_20_n_2,
      DOD => RAM_reg_64_127_14_20_n_3,
      DOE => RAM_reg_64_127_14_20_n_4,
      DOF => RAM_reg_64_127_14_20_n_5,
      DOG => RAM_reg_64_127_14_20_n_6,
      DOH => NLW_RAM_reg_64_127_14_20_DOH_UNCONNECTED,
      WCLK => wr_clk,
      WE => \gic0.gc0.count_d2_reg[7]\
    );
RAM_reg_64_127_21_27: unisim.vcomponents.RAM64M8
     port map (
      ADDRA(5 downto 0) => ADDRG(5 downto 0),
      ADDRB(5 downto 0) => ADDRG(5 downto 0),
      ADDRC(5 downto 0) => ADDRG(5 downto 0),
      ADDRD(5 downto 0) => ADDRG(5 downto 0),
      ADDRE(5 downto 0) => ADDRG(5 downto 0),
      ADDRF(5 downto 0) => ADDRG(5 downto 0),
      ADDRG(5 downto 0) => ADDRG(5 downto 0),
      ADDRH(5 downto 0) => \gic0.gc0.count_d2_reg[5]\(5 downto 0),
      DIA => din(21),
      DIB => din(22),
      DIC => din(23),
      DID => din(24),
      DIE => din(25),
      DIF => din(26),
      DIG => din(27),
      DIH => '0',
      DOA => RAM_reg_64_127_21_27_n_0,
      DOB => RAM_reg_64_127_21_27_n_1,
      DOC => RAM_reg_64_127_21_27_n_2,
      DOD => RAM_reg_64_127_21_27_n_3,
      DOE => RAM_reg_64_127_21_27_n_4,
      DOF => RAM_reg_64_127_21_27_n_5,
      DOG => RAM_reg_64_127_21_27_n_6,
      DOH => NLW_RAM_reg_64_127_21_27_DOH_UNCONNECTED,
      WCLK => wr_clk,
      WE => \gic0.gc0.count_d2_reg[7]\
    );
RAM_reg_64_127_28_31: unisim.vcomponents.RAM64M8
     port map (
      ADDRA(5 downto 0) => ADDRG(5 downto 0),
      ADDRB(5 downto 0) => ADDRG(5 downto 0),
      ADDRC(5 downto 0) => ADDRG(5 downto 0),
      ADDRD(5 downto 0) => ADDRG(5 downto 0),
      ADDRE(5 downto 0) => ADDRG(5 downto 0),
      ADDRF(5 downto 0) => ADDRG(5 downto 0),
      ADDRG(5 downto 0) => ADDRG(5 downto 0),
      ADDRH(5 downto 0) => \gic0.gc0.count_d2_reg[5]\(5 downto 0),
      DIA => din(28),
      DIB => din(29),
      DIC => din(30),
      DID => din(31),
      DIE => '0',
      DIF => '0',
      DIG => '0',
      DIH => '0',
      DOA => RAM_reg_64_127_28_31_n_0,
      DOB => RAM_reg_64_127_28_31_n_1,
      DOC => RAM_reg_64_127_28_31_n_2,
      DOD => RAM_reg_64_127_28_31_n_3,
      DOE => NLW_RAM_reg_64_127_28_31_DOE_UNCONNECTED,
      DOF => NLW_RAM_reg_64_127_28_31_DOF_UNCONNECTED,
      DOG => NLW_RAM_reg_64_127_28_31_DOG_UNCONNECTED,
      DOH => NLW_RAM_reg_64_127_28_31_DOH_UNCONNECTED,
      WCLK => wr_clk,
      WE => \gic0.gc0.count_d2_reg[7]\
    );
RAM_reg_64_127_7_13: unisim.vcomponents.RAM64M8
     port map (
      ADDRA(5 downto 0) => Q(5 downto 0),
      ADDRB(5 downto 0) => Q(5 downto 0),
      ADDRC(5 downto 0) => Q(5 downto 0),
      ADDRD(5 downto 0) => Q(5 downto 0),
      ADDRE(5 downto 0) => Q(5 downto 0),
      ADDRF(5 downto 0) => Q(5 downto 0),
      ADDRG(5 downto 0) => Q(5 downto 0),
      ADDRH(5 downto 0) => \gic0.gc0.count_d2_reg[5]\(5 downto 0),
      DIA => din(7),
      DIB => din(8),
      DIC => din(9),
      DID => din(10),
      DIE => din(11),
      DIF => din(12),
      DIG => din(13),
      DIH => '0',
      DOA => RAM_reg_64_127_7_13_n_0,
      DOB => RAM_reg_64_127_7_13_n_1,
      DOC => RAM_reg_64_127_7_13_n_2,
      DOD => RAM_reg_64_127_7_13_n_3,
      DOE => RAM_reg_64_127_7_13_n_4,
      DOF => RAM_reg_64_127_7_13_n_5,
      DOG => RAM_reg_64_127_7_13_n_6,
      DOH => NLW_RAM_reg_64_127_7_13_DOH_UNCONNECTED,
      WCLK => wr_clk,
      WE => \gic0.gc0.count_d2_reg[7]\
    );
\gpr1.dout_i[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RAM_reg_192_255_0_6_n_0,
      I1 => RAM_reg_128_191_0_6_n_0,
      I2 => Q(7),
      I3 => RAM_reg_64_127_0_6_n_0,
      I4 => Q(6),
      I5 => RAM_reg_0_63_0_6_n_0,
      O => \gpr1.dout_i[0]_i_2_n_0\
    );
\gpr1.dout_i[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RAM_reg_448_511_0_6_n_0,
      I1 => RAM_reg_384_447_0_6_n_0,
      I2 => Q(7),
      I3 => RAM_reg_320_383_0_6_n_0,
      I4 => Q(6),
      I5 => RAM_reg_256_319_0_6_n_0,
      O => \gpr1.dout_i[0]_i_3_n_0\
    );
\gpr1.dout_i[10]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RAM_reg_192_255_7_13_n_3,
      I1 => RAM_reg_128_191_7_13_n_3,
      I2 => Q(7),
      I3 => RAM_reg_64_127_7_13_n_3,
      I4 => Q(6),
      I5 => RAM_reg_0_63_7_13_n_3,
      O => \gpr1.dout_i[10]_i_2_n_0\
    );
\gpr1.dout_i[10]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RAM_reg_448_511_7_13_n_3,
      I1 => RAM_reg_384_447_7_13_n_3,
      I2 => Q(7),
      I3 => RAM_reg_320_383_7_13_n_3,
      I4 => Q(6),
      I5 => RAM_reg_256_319_7_13_n_3,
      O => \gpr1.dout_i[10]_i_3_n_0\
    );
\gpr1.dout_i[11]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RAM_reg_192_255_7_13_n_4,
      I1 => RAM_reg_128_191_7_13_n_4,
      I2 => Q(7),
      I3 => RAM_reg_64_127_7_13_n_4,
      I4 => Q(6),
      I5 => RAM_reg_0_63_7_13_n_4,
      O => \gpr1.dout_i[11]_i_2_n_0\
    );
\gpr1.dout_i[11]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RAM_reg_448_511_7_13_n_4,
      I1 => RAM_reg_384_447_7_13_n_4,
      I2 => Q(7),
      I3 => RAM_reg_320_383_7_13_n_4,
      I4 => Q(6),
      I5 => RAM_reg_256_319_7_13_n_4,
      O => \gpr1.dout_i[11]_i_3_n_0\
    );
\gpr1.dout_i[12]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RAM_reg_192_255_7_13_n_5,
      I1 => RAM_reg_128_191_7_13_n_5,
      I2 => Q(7),
      I3 => RAM_reg_64_127_7_13_n_5,
      I4 => Q(6),
      I5 => RAM_reg_0_63_7_13_n_5,
      O => \gpr1.dout_i[12]_i_2_n_0\
    );
\gpr1.dout_i[12]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RAM_reg_448_511_7_13_n_5,
      I1 => RAM_reg_384_447_7_13_n_5,
      I2 => Q(7),
      I3 => RAM_reg_320_383_7_13_n_5,
      I4 => Q(6),
      I5 => RAM_reg_256_319_7_13_n_5,
      O => \gpr1.dout_i[12]_i_3_n_0\
    );
\gpr1.dout_i[13]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RAM_reg_192_255_7_13_n_6,
      I1 => RAM_reg_128_191_7_13_n_6,
      I2 => Q(7),
      I3 => RAM_reg_64_127_7_13_n_6,
      I4 => Q(6),
      I5 => RAM_reg_0_63_7_13_n_6,
      O => \gpr1.dout_i[13]_i_2_n_0\
    );
\gpr1.dout_i[13]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RAM_reg_448_511_7_13_n_6,
      I1 => RAM_reg_384_447_7_13_n_6,
      I2 => Q(7),
      I3 => RAM_reg_320_383_7_13_n_6,
      I4 => Q(6),
      I5 => RAM_reg_256_319_7_13_n_6,
      O => \gpr1.dout_i[13]_i_3_n_0\
    );
\gpr1.dout_i[14]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RAM_reg_192_255_14_20_n_0,
      I1 => RAM_reg_128_191_14_20_n_0,
      I2 => Q(7),
      I3 => RAM_reg_64_127_14_20_n_0,
      I4 => Q(6),
      I5 => RAM_reg_0_63_14_20_n_0,
      O => \gpr1.dout_i[14]_i_2_n_0\
    );
\gpr1.dout_i[14]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RAM_reg_448_511_14_20_n_0,
      I1 => RAM_reg_384_447_14_20_n_0,
      I2 => Q(7),
      I3 => RAM_reg_320_383_14_20_n_0,
      I4 => Q(6),
      I5 => RAM_reg_256_319_14_20_n_0,
      O => \gpr1.dout_i[14]_i_3_n_0\
    );
\gpr1.dout_i[15]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RAM_reg_192_255_14_20_n_1,
      I1 => RAM_reg_128_191_14_20_n_1,
      I2 => Q(7),
      I3 => RAM_reg_64_127_14_20_n_1,
      I4 => Q(6),
      I5 => RAM_reg_0_63_14_20_n_1,
      O => \gpr1.dout_i[15]_i_2_n_0\
    );
\gpr1.dout_i[15]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RAM_reg_448_511_14_20_n_1,
      I1 => RAM_reg_384_447_14_20_n_1,
      I2 => Q(7),
      I3 => RAM_reg_320_383_14_20_n_1,
      I4 => Q(6),
      I5 => RAM_reg_256_319_14_20_n_1,
      O => \gpr1.dout_i[15]_i_3_n_0\
    );
\gpr1.dout_i[16]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RAM_reg_192_255_14_20_n_2,
      I1 => RAM_reg_128_191_14_20_n_2,
      I2 => Q(7),
      I3 => RAM_reg_64_127_14_20_n_2,
      I4 => Q(6),
      I5 => RAM_reg_0_63_14_20_n_2,
      O => \gpr1.dout_i[16]_i_2_n_0\
    );
\gpr1.dout_i[16]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RAM_reg_448_511_14_20_n_2,
      I1 => RAM_reg_384_447_14_20_n_2,
      I2 => Q(7),
      I3 => RAM_reg_320_383_14_20_n_2,
      I4 => Q(6),
      I5 => RAM_reg_256_319_14_20_n_2,
      O => \gpr1.dout_i[16]_i_3_n_0\
    );
\gpr1.dout_i[17]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RAM_reg_192_255_14_20_n_3,
      I1 => RAM_reg_128_191_14_20_n_3,
      I2 => Q(7),
      I3 => RAM_reg_64_127_14_20_n_3,
      I4 => Q(6),
      I5 => RAM_reg_0_63_14_20_n_3,
      O => \gpr1.dout_i[17]_i_2_n_0\
    );
\gpr1.dout_i[17]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RAM_reg_448_511_14_20_n_3,
      I1 => RAM_reg_384_447_14_20_n_3,
      I2 => Q(7),
      I3 => RAM_reg_320_383_14_20_n_3,
      I4 => Q(6),
      I5 => RAM_reg_256_319_14_20_n_3,
      O => \gpr1.dout_i[17]_i_3_n_0\
    );
\gpr1.dout_i[18]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RAM_reg_192_255_14_20_n_4,
      I1 => RAM_reg_128_191_14_20_n_4,
      I2 => Q(7),
      I3 => RAM_reg_64_127_14_20_n_4,
      I4 => Q(6),
      I5 => RAM_reg_0_63_14_20_n_4,
      O => \gpr1.dout_i[18]_i_2_n_0\
    );
\gpr1.dout_i[18]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RAM_reg_448_511_14_20_n_4,
      I1 => RAM_reg_384_447_14_20_n_4,
      I2 => Q(7),
      I3 => RAM_reg_320_383_14_20_n_4,
      I4 => Q(6),
      I5 => RAM_reg_256_319_14_20_n_4,
      O => \gpr1.dout_i[18]_i_3_n_0\
    );
\gpr1.dout_i[19]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RAM_reg_192_255_14_20_n_5,
      I1 => RAM_reg_128_191_14_20_n_5,
      I2 => Q(7),
      I3 => RAM_reg_64_127_14_20_n_5,
      I4 => Q(6),
      I5 => RAM_reg_0_63_14_20_n_5,
      O => \gpr1.dout_i[19]_i_2_n_0\
    );
\gpr1.dout_i[19]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RAM_reg_448_511_14_20_n_5,
      I1 => RAM_reg_384_447_14_20_n_5,
      I2 => Q(7),
      I3 => RAM_reg_320_383_14_20_n_5,
      I4 => Q(6),
      I5 => RAM_reg_256_319_14_20_n_5,
      O => \gpr1.dout_i[19]_i_3_n_0\
    );
\gpr1.dout_i[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RAM_reg_192_255_0_6_n_1,
      I1 => RAM_reg_128_191_0_6_n_1,
      I2 => Q(7),
      I3 => RAM_reg_64_127_0_6_n_1,
      I4 => Q(6),
      I5 => RAM_reg_0_63_0_6_n_1,
      O => \gpr1.dout_i[1]_i_2_n_0\
    );
\gpr1.dout_i[1]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RAM_reg_448_511_0_6_n_1,
      I1 => RAM_reg_384_447_0_6_n_1,
      I2 => Q(7),
      I3 => RAM_reg_320_383_0_6_n_1,
      I4 => Q(6),
      I5 => RAM_reg_256_319_0_6_n_1,
      O => \gpr1.dout_i[1]_i_3_n_0\
    );
\gpr1.dout_i[20]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RAM_reg_192_255_14_20_n_6,
      I1 => RAM_reg_128_191_14_20_n_6,
      I2 => Q(7),
      I3 => RAM_reg_64_127_14_20_n_6,
      I4 => Q(6),
      I5 => RAM_reg_0_63_14_20_n_6,
      O => \gpr1.dout_i[20]_i_2_n_0\
    );
\gpr1.dout_i[20]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RAM_reg_448_511_14_20_n_6,
      I1 => RAM_reg_384_447_14_20_n_6,
      I2 => Q(7),
      I3 => RAM_reg_320_383_14_20_n_6,
      I4 => Q(6),
      I5 => RAM_reg_256_319_14_20_n_6,
      O => \gpr1.dout_i[20]_i_3_n_0\
    );
\gpr1.dout_i[21]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RAM_reg_192_255_21_27_n_0,
      I1 => RAM_reg_128_191_21_27_n_0,
      I2 => Q(7),
      I3 => RAM_reg_64_127_21_27_n_0,
      I4 => Q(6),
      I5 => RAM_reg_0_63_21_27_n_0,
      O => \gpr1.dout_i[21]_i_2_n_0\
    );
\gpr1.dout_i[21]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RAM_reg_448_511_21_27_n_0,
      I1 => RAM_reg_384_447_21_27_n_0,
      I2 => Q(7),
      I3 => RAM_reg_320_383_21_27_n_0,
      I4 => Q(6),
      I5 => RAM_reg_256_319_21_27_n_0,
      O => \gpr1.dout_i[21]_i_3_n_0\
    );
\gpr1.dout_i[22]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RAM_reg_192_255_21_27_n_1,
      I1 => RAM_reg_128_191_21_27_n_1,
      I2 => Q(7),
      I3 => RAM_reg_64_127_21_27_n_1,
      I4 => Q(6),
      I5 => RAM_reg_0_63_21_27_n_1,
      O => \gpr1.dout_i[22]_i_2_n_0\
    );
\gpr1.dout_i[22]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RAM_reg_448_511_21_27_n_1,
      I1 => RAM_reg_384_447_21_27_n_1,
      I2 => Q(7),
      I3 => RAM_reg_320_383_21_27_n_1,
      I4 => Q(6),
      I5 => RAM_reg_256_319_21_27_n_1,
      O => \gpr1.dout_i[22]_i_3_n_0\
    );
\gpr1.dout_i[23]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RAM_reg_192_255_21_27_n_2,
      I1 => RAM_reg_128_191_21_27_n_2,
      I2 => Q(7),
      I3 => RAM_reg_64_127_21_27_n_2,
      I4 => Q(6),
      I5 => RAM_reg_0_63_21_27_n_2,
      O => \gpr1.dout_i[23]_i_2_n_0\
    );
\gpr1.dout_i[23]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RAM_reg_448_511_21_27_n_2,
      I1 => RAM_reg_384_447_21_27_n_2,
      I2 => Q(7),
      I3 => RAM_reg_320_383_21_27_n_2,
      I4 => Q(6),
      I5 => RAM_reg_256_319_21_27_n_2,
      O => \gpr1.dout_i[23]_i_3_n_0\
    );
\gpr1.dout_i[24]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RAM_reg_192_255_21_27_n_3,
      I1 => RAM_reg_128_191_21_27_n_3,
      I2 => Q(7),
      I3 => RAM_reg_64_127_21_27_n_3,
      I4 => Q(6),
      I5 => RAM_reg_0_63_21_27_n_3,
      O => \gpr1.dout_i[24]_i_2_n_0\
    );
\gpr1.dout_i[24]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RAM_reg_448_511_21_27_n_3,
      I1 => RAM_reg_384_447_21_27_n_3,
      I2 => Q(7),
      I3 => RAM_reg_320_383_21_27_n_3,
      I4 => Q(6),
      I5 => RAM_reg_256_319_21_27_n_3,
      O => \gpr1.dout_i[24]_i_3_n_0\
    );
\gpr1.dout_i[25]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RAM_reg_192_255_21_27_n_4,
      I1 => RAM_reg_128_191_21_27_n_4,
      I2 => Q(7),
      I3 => RAM_reg_64_127_21_27_n_4,
      I4 => Q(6),
      I5 => RAM_reg_0_63_21_27_n_4,
      O => \gpr1.dout_i[25]_i_2_n_0\
    );
\gpr1.dout_i[25]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RAM_reg_448_511_21_27_n_4,
      I1 => RAM_reg_384_447_21_27_n_4,
      I2 => Q(7),
      I3 => RAM_reg_320_383_21_27_n_4,
      I4 => Q(6),
      I5 => RAM_reg_256_319_21_27_n_4,
      O => \gpr1.dout_i[25]_i_3_n_0\
    );
\gpr1.dout_i[26]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RAM_reg_192_255_21_27_n_5,
      I1 => RAM_reg_128_191_21_27_n_5,
      I2 => Q(7),
      I3 => RAM_reg_64_127_21_27_n_5,
      I4 => Q(6),
      I5 => RAM_reg_0_63_21_27_n_5,
      O => \gpr1.dout_i[26]_i_2_n_0\
    );
\gpr1.dout_i[26]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RAM_reg_448_511_21_27_n_5,
      I1 => RAM_reg_384_447_21_27_n_5,
      I2 => Q(7),
      I3 => RAM_reg_320_383_21_27_n_5,
      I4 => Q(6),
      I5 => RAM_reg_256_319_21_27_n_5,
      O => \gpr1.dout_i[26]_i_3_n_0\
    );
\gpr1.dout_i[27]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RAM_reg_192_255_21_27_n_6,
      I1 => RAM_reg_128_191_21_27_n_6,
      I2 => Q(7),
      I3 => RAM_reg_64_127_21_27_n_6,
      I4 => Q(6),
      I5 => RAM_reg_0_63_21_27_n_6,
      O => \gpr1.dout_i[27]_i_2_n_0\
    );
\gpr1.dout_i[27]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RAM_reg_448_511_21_27_n_6,
      I1 => RAM_reg_384_447_21_27_n_6,
      I2 => Q(7),
      I3 => RAM_reg_320_383_21_27_n_6,
      I4 => Q(6),
      I5 => RAM_reg_256_319_21_27_n_6,
      O => \gpr1.dout_i[27]_i_3_n_0\
    );
\gpr1.dout_i[28]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RAM_reg_192_255_28_31_n_0,
      I1 => RAM_reg_128_191_28_31_n_0,
      I2 => Q(7),
      I3 => RAM_reg_64_127_28_31_n_0,
      I4 => Q(6),
      I5 => RAM_reg_0_63_28_31_n_0,
      O => \gpr1.dout_i[28]_i_2_n_0\
    );
\gpr1.dout_i[28]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RAM_reg_448_511_28_31_n_0,
      I1 => RAM_reg_384_447_28_31_n_0,
      I2 => Q(7),
      I3 => RAM_reg_320_383_28_31_n_0,
      I4 => Q(6),
      I5 => RAM_reg_256_319_28_31_n_0,
      O => \gpr1.dout_i[28]_i_3_n_0\
    );
\gpr1.dout_i[29]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RAM_reg_192_255_28_31_n_1,
      I1 => RAM_reg_128_191_28_31_n_1,
      I2 => Q(7),
      I3 => RAM_reg_64_127_28_31_n_1,
      I4 => Q(6),
      I5 => RAM_reg_0_63_28_31_n_1,
      O => \gpr1.dout_i[29]_i_2_n_0\
    );
\gpr1.dout_i[29]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RAM_reg_448_511_28_31_n_1,
      I1 => RAM_reg_384_447_28_31_n_1,
      I2 => Q(7),
      I3 => RAM_reg_320_383_28_31_n_1,
      I4 => Q(6),
      I5 => RAM_reg_256_319_28_31_n_1,
      O => \gpr1.dout_i[29]_i_3_n_0\
    );
\gpr1.dout_i[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RAM_reg_192_255_0_6_n_2,
      I1 => RAM_reg_128_191_0_6_n_2,
      I2 => Q(7),
      I3 => RAM_reg_64_127_0_6_n_2,
      I4 => Q(6),
      I5 => RAM_reg_0_63_0_6_n_2,
      O => \gpr1.dout_i[2]_i_2_n_0\
    );
\gpr1.dout_i[2]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RAM_reg_448_511_0_6_n_2,
      I1 => RAM_reg_384_447_0_6_n_2,
      I2 => Q(7),
      I3 => RAM_reg_320_383_0_6_n_2,
      I4 => Q(6),
      I5 => RAM_reg_256_319_0_6_n_2,
      O => \gpr1.dout_i[2]_i_3_n_0\
    );
\gpr1.dout_i[30]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RAM_reg_192_255_28_31_n_2,
      I1 => RAM_reg_128_191_28_31_n_2,
      I2 => Q(7),
      I3 => RAM_reg_64_127_28_31_n_2,
      I4 => Q(6),
      I5 => RAM_reg_0_63_28_31_n_2,
      O => \gpr1.dout_i[30]_i_2_n_0\
    );
\gpr1.dout_i[30]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RAM_reg_448_511_28_31_n_2,
      I1 => RAM_reg_384_447_28_31_n_2,
      I2 => Q(7),
      I3 => RAM_reg_320_383_28_31_n_2,
      I4 => Q(6),
      I5 => RAM_reg_256_319_28_31_n_2,
      O => \gpr1.dout_i[30]_i_3_n_0\
    );
\gpr1.dout_i[31]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RAM_reg_192_255_28_31_n_3,
      I1 => RAM_reg_128_191_28_31_n_3,
      I2 => Q(7),
      I3 => RAM_reg_64_127_28_31_n_3,
      I4 => Q(6),
      I5 => RAM_reg_0_63_28_31_n_3,
      O => \gpr1.dout_i[31]_i_3_n_0\
    );
\gpr1.dout_i[31]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RAM_reg_448_511_28_31_n_3,
      I1 => RAM_reg_384_447_28_31_n_3,
      I2 => Q(7),
      I3 => RAM_reg_320_383_28_31_n_3,
      I4 => Q(6),
      I5 => RAM_reg_256_319_28_31_n_3,
      O => \gpr1.dout_i[31]_i_4_n_0\
    );
\gpr1.dout_i[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RAM_reg_192_255_0_6_n_3,
      I1 => RAM_reg_128_191_0_6_n_3,
      I2 => Q(7),
      I3 => RAM_reg_64_127_0_6_n_3,
      I4 => Q(6),
      I5 => RAM_reg_0_63_0_6_n_3,
      O => \gpr1.dout_i[3]_i_2_n_0\
    );
\gpr1.dout_i[3]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RAM_reg_448_511_0_6_n_3,
      I1 => RAM_reg_384_447_0_6_n_3,
      I2 => Q(7),
      I3 => RAM_reg_320_383_0_6_n_3,
      I4 => Q(6),
      I5 => RAM_reg_256_319_0_6_n_3,
      O => \gpr1.dout_i[3]_i_3_n_0\
    );
\gpr1.dout_i[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RAM_reg_192_255_0_6_n_4,
      I1 => RAM_reg_128_191_0_6_n_4,
      I2 => Q(7),
      I3 => RAM_reg_64_127_0_6_n_4,
      I4 => Q(6),
      I5 => RAM_reg_0_63_0_6_n_4,
      O => \gpr1.dout_i[4]_i_2_n_0\
    );
\gpr1.dout_i[4]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RAM_reg_448_511_0_6_n_4,
      I1 => RAM_reg_384_447_0_6_n_4,
      I2 => Q(7),
      I3 => RAM_reg_320_383_0_6_n_4,
      I4 => Q(6),
      I5 => RAM_reg_256_319_0_6_n_4,
      O => \gpr1.dout_i[4]_i_3_n_0\
    );
\gpr1.dout_i[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RAM_reg_192_255_0_6_n_5,
      I1 => RAM_reg_128_191_0_6_n_5,
      I2 => Q(7),
      I3 => RAM_reg_64_127_0_6_n_5,
      I4 => Q(6),
      I5 => RAM_reg_0_63_0_6_n_5,
      O => \gpr1.dout_i[5]_i_2_n_0\
    );
\gpr1.dout_i[5]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RAM_reg_448_511_0_6_n_5,
      I1 => RAM_reg_384_447_0_6_n_5,
      I2 => Q(7),
      I3 => RAM_reg_320_383_0_6_n_5,
      I4 => Q(6),
      I5 => RAM_reg_256_319_0_6_n_5,
      O => \gpr1.dout_i[5]_i_3_n_0\
    );
\gpr1.dout_i[6]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RAM_reg_192_255_0_6_n_6,
      I1 => RAM_reg_128_191_0_6_n_6,
      I2 => Q(7),
      I3 => RAM_reg_64_127_0_6_n_6,
      I4 => Q(6),
      I5 => RAM_reg_0_63_0_6_n_6,
      O => \gpr1.dout_i[6]_i_2_n_0\
    );
\gpr1.dout_i[6]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RAM_reg_448_511_0_6_n_6,
      I1 => RAM_reg_384_447_0_6_n_6,
      I2 => Q(7),
      I3 => RAM_reg_320_383_0_6_n_6,
      I4 => Q(6),
      I5 => RAM_reg_256_319_0_6_n_6,
      O => \gpr1.dout_i[6]_i_3_n_0\
    );
\gpr1.dout_i[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RAM_reg_192_255_7_13_n_0,
      I1 => RAM_reg_128_191_7_13_n_0,
      I2 => Q(7),
      I3 => RAM_reg_64_127_7_13_n_0,
      I4 => Q(6),
      I5 => RAM_reg_0_63_7_13_n_0,
      O => \gpr1.dout_i[7]_i_2_n_0\
    );
\gpr1.dout_i[7]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RAM_reg_448_511_7_13_n_0,
      I1 => RAM_reg_384_447_7_13_n_0,
      I2 => Q(7),
      I3 => RAM_reg_320_383_7_13_n_0,
      I4 => Q(6),
      I5 => RAM_reg_256_319_7_13_n_0,
      O => \gpr1.dout_i[7]_i_3_n_0\
    );
\gpr1.dout_i[8]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RAM_reg_192_255_7_13_n_1,
      I1 => RAM_reg_128_191_7_13_n_1,
      I2 => Q(7),
      I3 => RAM_reg_64_127_7_13_n_1,
      I4 => Q(6),
      I5 => RAM_reg_0_63_7_13_n_1,
      O => \gpr1.dout_i[8]_i_2_n_0\
    );
\gpr1.dout_i[8]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RAM_reg_448_511_7_13_n_1,
      I1 => RAM_reg_384_447_7_13_n_1,
      I2 => Q(7),
      I3 => RAM_reg_320_383_7_13_n_1,
      I4 => Q(6),
      I5 => RAM_reg_256_319_7_13_n_1,
      O => \gpr1.dout_i[8]_i_3_n_0\
    );
\gpr1.dout_i[9]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RAM_reg_192_255_7_13_n_2,
      I1 => RAM_reg_128_191_7_13_n_2,
      I2 => Q(7),
      I3 => RAM_reg_64_127_7_13_n_2,
      I4 => Q(6),
      I5 => RAM_reg_0_63_7_13_n_2,
      O => \gpr1.dout_i[9]_i_2_n_0\
    );
\gpr1.dout_i[9]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RAM_reg_448_511_7_13_n_2,
      I1 => RAM_reg_384_447_7_13_n_2,
      I2 => Q(7),
      I3 => RAM_reg_320_383_7_13_n_2,
      I4 => Q(6),
      I5 => RAM_reg_256_319_7_13_n_2,
      O => \gpr1.dout_i[9]_i_3_n_0\
    );
\gpr1.dout_i_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => E(0),
      CLR => AR(0),
      D => p_0_out(0),
      Q => dout(0)
    );
\gpr1.dout_i_reg[0]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \gpr1.dout_i[0]_i_2_n_0\,
      I1 => \gpr1.dout_i[0]_i_3_n_0\,
      O => p_0_out(0),
      S => Q(8)
    );
\gpr1.dout_i_reg[10]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => E(0),
      CLR => AR(0),
      D => p_0_out(10),
      Q => dout(10)
    );
\gpr1.dout_i_reg[10]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \gpr1.dout_i[10]_i_2_n_0\,
      I1 => \gpr1.dout_i[10]_i_3_n_0\,
      O => p_0_out(10),
      S => Q(8)
    );
\gpr1.dout_i_reg[11]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => E(0),
      CLR => AR(0),
      D => p_0_out(11),
      Q => dout(11)
    );
\gpr1.dout_i_reg[11]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \gpr1.dout_i[11]_i_2_n_0\,
      I1 => \gpr1.dout_i[11]_i_3_n_0\,
      O => p_0_out(11),
      S => Q(8)
    );
\gpr1.dout_i_reg[12]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => E(0),
      CLR => AR(0),
      D => p_0_out(12),
      Q => dout(12)
    );
\gpr1.dout_i_reg[12]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \gpr1.dout_i[12]_i_2_n_0\,
      I1 => \gpr1.dout_i[12]_i_3_n_0\,
      O => p_0_out(12),
      S => Q(8)
    );
\gpr1.dout_i_reg[13]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => E(0),
      CLR => AR(0),
      D => p_0_out(13),
      Q => dout(13)
    );
\gpr1.dout_i_reg[13]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \gpr1.dout_i[13]_i_2_n_0\,
      I1 => \gpr1.dout_i[13]_i_3_n_0\,
      O => p_0_out(13),
      S => Q(8)
    );
\gpr1.dout_i_reg[14]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => E(0),
      CLR => AR(0),
      D => p_0_out(14),
      Q => dout(14)
    );
\gpr1.dout_i_reg[14]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \gpr1.dout_i[14]_i_2_n_0\,
      I1 => \gpr1.dout_i[14]_i_3_n_0\,
      O => p_0_out(14),
      S => Q(8)
    );
\gpr1.dout_i_reg[15]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => E(0),
      CLR => AR(0),
      D => p_0_out(15),
      Q => dout(15)
    );
\gpr1.dout_i_reg[15]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \gpr1.dout_i[15]_i_2_n_0\,
      I1 => \gpr1.dout_i[15]_i_3_n_0\,
      O => p_0_out(15),
      S => Q(8)
    );
\gpr1.dout_i_reg[16]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => E(0),
      CLR => AR(0),
      D => p_0_out(16),
      Q => dout(16)
    );
\gpr1.dout_i_reg[16]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \gpr1.dout_i[16]_i_2_n_0\,
      I1 => \gpr1.dout_i[16]_i_3_n_0\,
      O => p_0_out(16),
      S => Q(8)
    );
\gpr1.dout_i_reg[17]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => E(0),
      CLR => AR(0),
      D => p_0_out(17),
      Q => dout(17)
    );
\gpr1.dout_i_reg[17]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \gpr1.dout_i[17]_i_2_n_0\,
      I1 => \gpr1.dout_i[17]_i_3_n_0\,
      O => p_0_out(17),
      S => Q(8)
    );
\gpr1.dout_i_reg[18]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => E(0),
      CLR => AR(0),
      D => p_0_out(18),
      Q => dout(18)
    );
\gpr1.dout_i_reg[18]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \gpr1.dout_i[18]_i_2_n_0\,
      I1 => \gpr1.dout_i[18]_i_3_n_0\,
      O => p_0_out(18),
      S => Q(8)
    );
\gpr1.dout_i_reg[19]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => E(0),
      CLR => AR(0),
      D => p_0_out(19),
      Q => dout(19)
    );
\gpr1.dout_i_reg[19]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \gpr1.dout_i[19]_i_2_n_0\,
      I1 => \gpr1.dout_i[19]_i_3_n_0\,
      O => p_0_out(19),
      S => Q(8)
    );
\gpr1.dout_i_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => E(0),
      CLR => AR(0),
      D => p_0_out(1),
      Q => dout(1)
    );
\gpr1.dout_i_reg[1]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \gpr1.dout_i[1]_i_2_n_0\,
      I1 => \gpr1.dout_i[1]_i_3_n_0\,
      O => p_0_out(1),
      S => Q(8)
    );
\gpr1.dout_i_reg[20]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => E(0),
      CLR => AR(0),
      D => p_0_out(20),
      Q => dout(20)
    );
\gpr1.dout_i_reg[20]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \gpr1.dout_i[20]_i_2_n_0\,
      I1 => \gpr1.dout_i[20]_i_3_n_0\,
      O => p_0_out(20),
      S => Q(8)
    );
\gpr1.dout_i_reg[21]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => E(0),
      CLR => AR(0),
      D => p_0_out(21),
      Q => dout(21)
    );
\gpr1.dout_i_reg[21]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \gpr1.dout_i[21]_i_2_n_0\,
      I1 => \gpr1.dout_i[21]_i_3_n_0\,
      O => p_0_out(21),
      S => Q(8)
    );
\gpr1.dout_i_reg[22]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => E(0),
      CLR => AR(0),
      D => p_0_out(22),
      Q => dout(22)
    );
\gpr1.dout_i_reg[22]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \gpr1.dout_i[22]_i_2_n_0\,
      I1 => \gpr1.dout_i[22]_i_3_n_0\,
      O => p_0_out(22),
      S => Q(8)
    );
\gpr1.dout_i_reg[23]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => E(0),
      CLR => AR(0),
      D => p_0_out(23),
      Q => dout(23)
    );
\gpr1.dout_i_reg[23]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \gpr1.dout_i[23]_i_2_n_0\,
      I1 => \gpr1.dout_i[23]_i_3_n_0\,
      O => p_0_out(23),
      S => Q(8)
    );
\gpr1.dout_i_reg[24]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => E(0),
      CLR => AR(0),
      D => p_0_out(24),
      Q => dout(24)
    );
\gpr1.dout_i_reg[24]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \gpr1.dout_i[24]_i_2_n_0\,
      I1 => \gpr1.dout_i[24]_i_3_n_0\,
      O => p_0_out(24),
      S => Q(8)
    );
\gpr1.dout_i_reg[25]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => E(0),
      CLR => AR(0),
      D => p_0_out(25),
      Q => dout(25)
    );
\gpr1.dout_i_reg[25]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \gpr1.dout_i[25]_i_2_n_0\,
      I1 => \gpr1.dout_i[25]_i_3_n_0\,
      O => p_0_out(25),
      S => Q(8)
    );
\gpr1.dout_i_reg[26]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => E(0),
      CLR => AR(0),
      D => p_0_out(26),
      Q => dout(26)
    );
\gpr1.dout_i_reg[26]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \gpr1.dout_i[26]_i_2_n_0\,
      I1 => \gpr1.dout_i[26]_i_3_n_0\,
      O => p_0_out(26),
      S => Q(8)
    );
\gpr1.dout_i_reg[27]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => E(0),
      CLR => AR(0),
      D => p_0_out(27),
      Q => dout(27)
    );
\gpr1.dout_i_reg[27]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \gpr1.dout_i[27]_i_2_n_0\,
      I1 => \gpr1.dout_i[27]_i_3_n_0\,
      O => p_0_out(27),
      S => Q(8)
    );
\gpr1.dout_i_reg[28]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => E(0),
      CLR => AR(0),
      D => p_0_out(28),
      Q => dout(28)
    );
\gpr1.dout_i_reg[28]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \gpr1.dout_i[28]_i_2_n_0\,
      I1 => \gpr1.dout_i[28]_i_3_n_0\,
      O => p_0_out(28),
      S => Q(8)
    );
\gpr1.dout_i_reg[29]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => E(0),
      CLR => AR(0),
      D => p_0_out(29),
      Q => dout(29)
    );
\gpr1.dout_i_reg[29]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \gpr1.dout_i[29]_i_2_n_0\,
      I1 => \gpr1.dout_i[29]_i_3_n_0\,
      O => p_0_out(29),
      S => Q(8)
    );
\gpr1.dout_i_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => E(0),
      CLR => AR(0),
      D => p_0_out(2),
      Q => dout(2)
    );
\gpr1.dout_i_reg[2]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \gpr1.dout_i[2]_i_2_n_0\,
      I1 => \gpr1.dout_i[2]_i_3_n_0\,
      O => p_0_out(2),
      S => Q(8)
    );
\gpr1.dout_i_reg[30]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => E(0),
      CLR => AR(0),
      D => p_0_out(30),
      Q => dout(30)
    );
\gpr1.dout_i_reg[30]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \gpr1.dout_i[30]_i_2_n_0\,
      I1 => \gpr1.dout_i[30]_i_3_n_0\,
      O => p_0_out(30),
      S => Q(8)
    );
\gpr1.dout_i_reg[31]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => E(0),
      CLR => AR(0),
      D => p_0_out(31),
      Q => dout(31)
    );
\gpr1.dout_i_reg[31]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \gpr1.dout_i[31]_i_3_n_0\,
      I1 => \gpr1.dout_i[31]_i_4_n_0\,
      O => p_0_out(31),
      S => Q(8)
    );
\gpr1.dout_i_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => E(0),
      CLR => AR(0),
      D => p_0_out(3),
      Q => dout(3)
    );
\gpr1.dout_i_reg[3]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \gpr1.dout_i[3]_i_2_n_0\,
      I1 => \gpr1.dout_i[3]_i_3_n_0\,
      O => p_0_out(3),
      S => Q(8)
    );
\gpr1.dout_i_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => E(0),
      CLR => AR(0),
      D => p_0_out(4),
      Q => dout(4)
    );
\gpr1.dout_i_reg[4]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \gpr1.dout_i[4]_i_2_n_0\,
      I1 => \gpr1.dout_i[4]_i_3_n_0\,
      O => p_0_out(4),
      S => Q(8)
    );
\gpr1.dout_i_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => E(0),
      CLR => AR(0),
      D => p_0_out(5),
      Q => dout(5)
    );
\gpr1.dout_i_reg[5]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \gpr1.dout_i[5]_i_2_n_0\,
      I1 => \gpr1.dout_i[5]_i_3_n_0\,
      O => p_0_out(5),
      S => Q(8)
    );
\gpr1.dout_i_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => E(0),
      CLR => AR(0),
      D => p_0_out(6),
      Q => dout(6)
    );
\gpr1.dout_i_reg[6]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \gpr1.dout_i[6]_i_2_n_0\,
      I1 => \gpr1.dout_i[6]_i_3_n_0\,
      O => p_0_out(6),
      S => Q(8)
    );
\gpr1.dout_i_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => E(0),
      CLR => AR(0),
      D => p_0_out(7),
      Q => dout(7)
    );
\gpr1.dout_i_reg[7]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \gpr1.dout_i[7]_i_2_n_0\,
      I1 => \gpr1.dout_i[7]_i_3_n_0\,
      O => p_0_out(7),
      S => Q(8)
    );
\gpr1.dout_i_reg[8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => E(0),
      CLR => AR(0),
      D => p_0_out(8),
      Q => dout(8)
    );
\gpr1.dout_i_reg[8]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \gpr1.dout_i[8]_i_2_n_0\,
      I1 => \gpr1.dout_i[8]_i_3_n_0\,
      O => p_0_out(8),
      S => Q(8)
    );
\gpr1.dout_i_reg[9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => E(0),
      CLR => AR(0),
      D => p_0_out(9),
      Q => dout(9)
    );
\gpr1.dout_i_reg[9]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \gpr1.dout_i[9]_i_2_n_0\,
      I1 => \gpr1.dout_i[9]_i_3_n_0\,
      O => p_0_out(9),
      S => Q(8)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity xcl_design_flash_programmer_0_rd_bin_cntr is
  port (
    ram_empty_fb_i_reg : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 8 downto 0 );
    ram_empty_fb_i_reg_0 : out STD_LOGIC;
    \gc0.count_d1_reg[7]_0\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    ADDRG : out STD_LOGIC_VECTOR ( 5 downto 0 );
    WR_PNTR_RD : in STD_LOGIC_VECTOR ( 0 to 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    rd_clk : in STD_LOGIC;
    \out\ : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of xcl_design_flash_programmer_0_rd_bin_cntr : entity is "rd_bin_cntr";
end xcl_design_flash_programmer_0_rd_bin_cntr;

architecture STRUCTURE of xcl_design_flash_programmer_0_rd_bin_cntr is
  signal \^q\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \gc0.count[8]_i_2_n_0\ : STD_LOGIC;
  signal \^gc0.count_d1_reg[7]_0\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \plusOp__0\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal rd_pntr_plus1 : STD_LOGIC_VECTOR ( 8 to 8 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \gc0.count[1]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \gc0.count[2]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \gc0.count[3]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \gc0.count[4]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \gc0.count[7]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \gc0.count[8]_i_1\ : label is "soft_lutpair9";
  attribute ORIG_CELL_NAME : string;
  attribute ORIG_CELL_NAME of \gc0.count_d1_reg[0]\ : label is "gc0.count_d1_reg[0]";
  attribute ORIG_CELL_NAME of \gc0.count_d1_reg[0]_rep\ : label is "gc0.count_d1_reg[0]";
  attribute ORIG_CELL_NAME of \gc0.count_d1_reg[1]\ : label is "gc0.count_d1_reg[1]";
  attribute ORIG_CELL_NAME of \gc0.count_d1_reg[1]_rep\ : label is "gc0.count_d1_reg[1]";
  attribute ORIG_CELL_NAME of \gc0.count_d1_reg[2]\ : label is "gc0.count_d1_reg[2]";
  attribute ORIG_CELL_NAME of \gc0.count_d1_reg[2]_rep\ : label is "gc0.count_d1_reg[2]";
  attribute ORIG_CELL_NAME of \gc0.count_d1_reg[3]\ : label is "gc0.count_d1_reg[3]";
  attribute ORIG_CELL_NAME of \gc0.count_d1_reg[3]_rep\ : label is "gc0.count_d1_reg[3]";
  attribute ORIG_CELL_NAME of \gc0.count_d1_reg[4]\ : label is "gc0.count_d1_reg[4]";
  attribute ORIG_CELL_NAME of \gc0.count_d1_reg[4]_rep\ : label is "gc0.count_d1_reg[4]";
  attribute ORIG_CELL_NAME of \gc0.count_d1_reg[5]\ : label is "gc0.count_d1_reg[5]";
  attribute ORIG_CELL_NAME of \gc0.count_d1_reg[5]_rep\ : label is "gc0.count_d1_reg[5]";
begin
  Q(8 downto 0) <= \^q\(8 downto 0);
  \gc0.count_d1_reg[7]_0\(7 downto 0) <= \^gc0.count_d1_reg[7]_0\(7 downto 0);
\gc0.count[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^gc0.count_d1_reg[7]_0\(0),
      O => \plusOp__0\(0)
    );
\gc0.count[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^gc0.count_d1_reg[7]_0\(0),
      I1 => \^gc0.count_d1_reg[7]_0\(1),
      O => \plusOp__0\(1)
    );
\gc0.count[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \^gc0.count_d1_reg[7]_0\(0),
      I1 => \^gc0.count_d1_reg[7]_0\(1),
      I2 => \^gc0.count_d1_reg[7]_0\(2),
      O => \plusOp__0\(2)
    );
\gc0.count[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \^gc0.count_d1_reg[7]_0\(1),
      I1 => \^gc0.count_d1_reg[7]_0\(0),
      I2 => \^gc0.count_d1_reg[7]_0\(2),
      I3 => \^gc0.count_d1_reg[7]_0\(3),
      O => \plusOp__0\(3)
    );
\gc0.count[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \^gc0.count_d1_reg[7]_0\(2),
      I1 => \^gc0.count_d1_reg[7]_0\(0),
      I2 => \^gc0.count_d1_reg[7]_0\(1),
      I3 => \^gc0.count_d1_reg[7]_0\(3),
      I4 => \^gc0.count_d1_reg[7]_0\(4),
      O => \plusOp__0\(4)
    );
\gc0.count[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => \^gc0.count_d1_reg[7]_0\(3),
      I1 => \^gc0.count_d1_reg[7]_0\(1),
      I2 => \^gc0.count_d1_reg[7]_0\(0),
      I3 => \^gc0.count_d1_reg[7]_0\(2),
      I4 => \^gc0.count_d1_reg[7]_0\(4),
      I5 => \^gc0.count_d1_reg[7]_0\(5),
      O => \plusOp__0\(5)
    );
\gc0.count[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \gc0.count[8]_i_2_n_0\,
      I1 => \^gc0.count_d1_reg[7]_0\(6),
      O => \plusOp__0\(6)
    );
\gc0.count[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \gc0.count[8]_i_2_n_0\,
      I1 => \^gc0.count_d1_reg[7]_0\(6),
      I2 => \^gc0.count_d1_reg[7]_0\(7),
      O => \plusOp__0\(7)
    );
\gc0.count[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \^gc0.count_d1_reg[7]_0\(6),
      I1 => \gc0.count[8]_i_2_n_0\,
      I2 => \^gc0.count_d1_reg[7]_0\(7),
      I3 => rd_pntr_plus1(8),
      O => \plusOp__0\(8)
    );
\gc0.count[8]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => \^gc0.count_d1_reg[7]_0\(5),
      I1 => \^gc0.count_d1_reg[7]_0\(3),
      I2 => \^gc0.count_d1_reg[7]_0\(1),
      I3 => \^gc0.count_d1_reg[7]_0\(0),
      I4 => \^gc0.count_d1_reg[7]_0\(2),
      I5 => \^gc0.count_d1_reg[7]_0\(4),
      O => \gc0.count[8]_i_2_n_0\
    );
\gc0.count_d1_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => E(0),
      CLR => \out\(0),
      D => \^gc0.count_d1_reg[7]_0\(0),
      Q => \^q\(0)
    );
\gc0.count_d1_reg[0]_rep\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => E(0),
      CLR => \out\(0),
      D => \^gc0.count_d1_reg[7]_0\(0),
      Q => ADDRG(0)
    );
\gc0.count_d1_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => E(0),
      CLR => \out\(0),
      D => \^gc0.count_d1_reg[7]_0\(1),
      Q => \^q\(1)
    );
\gc0.count_d1_reg[1]_rep\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => E(0),
      CLR => \out\(0),
      D => \^gc0.count_d1_reg[7]_0\(1),
      Q => ADDRG(1)
    );
\gc0.count_d1_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => E(0),
      CLR => \out\(0),
      D => \^gc0.count_d1_reg[7]_0\(2),
      Q => \^q\(2)
    );
\gc0.count_d1_reg[2]_rep\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => E(0),
      CLR => \out\(0),
      D => \^gc0.count_d1_reg[7]_0\(2),
      Q => ADDRG(2)
    );
\gc0.count_d1_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => E(0),
      CLR => \out\(0),
      D => \^gc0.count_d1_reg[7]_0\(3),
      Q => \^q\(3)
    );
\gc0.count_d1_reg[3]_rep\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => E(0),
      CLR => \out\(0),
      D => \^gc0.count_d1_reg[7]_0\(3),
      Q => ADDRG(3)
    );
\gc0.count_d1_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => E(0),
      CLR => \out\(0),
      D => \^gc0.count_d1_reg[7]_0\(4),
      Q => \^q\(4)
    );
\gc0.count_d1_reg[4]_rep\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => E(0),
      CLR => \out\(0),
      D => \^gc0.count_d1_reg[7]_0\(4),
      Q => ADDRG(4)
    );
\gc0.count_d1_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => E(0),
      CLR => \out\(0),
      D => \^gc0.count_d1_reg[7]_0\(5),
      Q => \^q\(5)
    );
\gc0.count_d1_reg[5]_rep\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => E(0),
      CLR => \out\(0),
      D => \^gc0.count_d1_reg[7]_0\(5),
      Q => ADDRG(5)
    );
\gc0.count_d1_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => E(0),
      CLR => \out\(0),
      D => \^gc0.count_d1_reg[7]_0\(6),
      Q => \^q\(6)
    );
\gc0.count_d1_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => E(0),
      CLR => \out\(0),
      D => \^gc0.count_d1_reg[7]_0\(7),
      Q => \^q\(7)
    );
\gc0.count_d1_reg[8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => E(0),
      CLR => \out\(0),
      D => rd_pntr_plus1(8),
      Q => \^q\(8)
    );
\gc0.count_reg[0]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => rd_clk,
      CE => E(0),
      D => \plusOp__0\(0),
      PRE => \out\(0),
      Q => \^gc0.count_d1_reg[7]_0\(0)
    );
\gc0.count_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => E(0),
      CLR => \out\(0),
      D => \plusOp__0\(1),
      Q => \^gc0.count_d1_reg[7]_0\(1)
    );
\gc0.count_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => E(0),
      CLR => \out\(0),
      D => \plusOp__0\(2),
      Q => \^gc0.count_d1_reg[7]_0\(2)
    );
\gc0.count_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => E(0),
      CLR => \out\(0),
      D => \plusOp__0\(3),
      Q => \^gc0.count_d1_reg[7]_0\(3)
    );
\gc0.count_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => E(0),
      CLR => \out\(0),
      D => \plusOp__0\(4),
      Q => \^gc0.count_d1_reg[7]_0\(4)
    );
\gc0.count_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => E(0),
      CLR => \out\(0),
      D => \plusOp__0\(5),
      Q => \^gc0.count_d1_reg[7]_0\(5)
    );
\gc0.count_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => E(0),
      CLR => \out\(0),
      D => \plusOp__0\(6),
      Q => \^gc0.count_d1_reg[7]_0\(6)
    );
\gc0.count_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => E(0),
      CLR => \out\(0),
      D => \plusOp__0\(7),
      Q => \^gc0.count_d1_reg[7]_0\(7)
    );
\gc0.count_reg[8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => E(0),
      CLR => \out\(0),
      D => \plusOp__0\(8),
      Q => rd_pntr_plus1(8)
    );
\gmux.gm[4].gms.ms_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(8),
      I1 => WR_PNTR_RD(0),
      O => ram_empty_fb_i_reg
    );
\gmux.gm[4].gms.ms_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => rd_pntr_plus1(8),
      I1 => WR_PNTR_RD(0),
      O => ram_empty_fb_i_reg_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity xcl_design_flash_programmer_0_synchronizer_ff is
  port (
    \out\ : out STD_LOGIC;
    \ngwrdrst.grst.g7serrst.rd_rst_asreg_reg\ : out STD_LOGIC;
    in0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    rd_clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of xcl_design_flash_programmer_0_synchronizer_ff : entity is "synchronizer_ff";
end xcl_design_flash_programmer_0_synchronizer_ff;

architecture STRUCTURE of xcl_design_flash_programmer_0_synchronizer_ff is
  signal Q_reg : STD_LOGIC;
  attribute async_reg : string;
  attribute async_reg of Q_reg : signal is "true";
  attribute msgon : string;
  attribute msgon of Q_reg : signal is "true";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \Q_reg_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \Q_reg_reg[0]\ : label is "yes";
  attribute msgon of \Q_reg_reg[0]\ : label is "true";
begin
  \out\ <= Q_reg;
\Q_reg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => in0(0),
      Q => Q_reg,
      R => '0'
    );
\ngwrdrst.grst.g7serrst.rd_rst_asreg_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => in0(0),
      I1 => Q_reg,
      O => \ngwrdrst.grst.g7serrst.rd_rst_asreg_reg\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity xcl_design_flash_programmer_0_synchronizer_ff_0 is
  port (
    \out\ : out STD_LOGIC;
    \ngwrdrst.grst.g7serrst.wr_rst_asreg_reg\ : out STD_LOGIC;
    in0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    wr_clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of xcl_design_flash_programmer_0_synchronizer_ff_0 : entity is "synchronizer_ff";
end xcl_design_flash_programmer_0_synchronizer_ff_0;

architecture STRUCTURE of xcl_design_flash_programmer_0_synchronizer_ff_0 is
  signal Q_reg : STD_LOGIC;
  attribute async_reg : string;
  attribute async_reg of Q_reg : signal is "true";
  attribute msgon : string;
  attribute msgon of Q_reg : signal is "true";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \Q_reg_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \Q_reg_reg[0]\ : label is "yes";
  attribute msgon of \Q_reg_reg[0]\ : label is "true";
begin
  \out\ <= Q_reg;
\Q_reg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => in0(0),
      Q => Q_reg,
      R => '0'
    );
\ngwrdrst.grst.g7serrst.wr_rst_asreg_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => in0(0),
      I1 => Q_reg,
      O => \ngwrdrst.grst.g7serrst.wr_rst_asreg_reg\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity xcl_design_flash_programmer_0_synchronizer_ff_1 is
  port (
    AS : out STD_LOGIC_VECTOR ( 0 to 0 );
    \out\ : in STD_LOGIC;
    rd_clk : in STD_LOGIC;
    in0 : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of xcl_design_flash_programmer_0_synchronizer_ff_1 : entity is "synchronizer_ff";
end xcl_design_flash_programmer_0_synchronizer_ff_1;

architecture STRUCTURE of xcl_design_flash_programmer_0_synchronizer_ff_1 is
  signal Q_reg : STD_LOGIC;
  attribute async_reg : string;
  attribute async_reg of Q_reg : signal is "true";
  attribute msgon : string;
  attribute msgon of Q_reg : signal is "true";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \Q_reg_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \Q_reg_reg[0]\ : label is "yes";
  attribute msgon of \Q_reg_reg[0]\ : label is "true";
begin
\Q_reg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => \out\,
      Q => Q_reg,
      R => '0'
    );
\ngwrdrst.grst.g7serrst.rd_rst_reg[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => in0(0),
      I1 => Q_reg,
      O => AS(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity xcl_design_flash_programmer_0_synchronizer_ff_2 is
  port (
    AS : out STD_LOGIC_VECTOR ( 0 to 0 );
    \out\ : in STD_LOGIC;
    wr_clk : in STD_LOGIC;
    in0 : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of xcl_design_flash_programmer_0_synchronizer_ff_2 : entity is "synchronizer_ff";
end xcl_design_flash_programmer_0_synchronizer_ff_2;

architecture STRUCTURE of xcl_design_flash_programmer_0_synchronizer_ff_2 is
  signal Q_reg : STD_LOGIC;
  attribute async_reg : string;
  attribute async_reg of Q_reg : signal is "true";
  attribute msgon : string;
  attribute msgon of Q_reg : signal is "true";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \Q_reg_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \Q_reg_reg[0]\ : label is "yes";
  attribute msgon of \Q_reg_reg[0]\ : label is "true";
begin
\Q_reg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => \out\,
      Q => Q_reg,
      R => '0'
    );
\ngwrdrst.grst.g7serrst.wr_rst_reg[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => in0(0),
      I1 => Q_reg,
      O => AS(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \xcl_design_flash_programmer_0_synchronizer_ff__parameterized0\ is
  port (
    D : out STD_LOGIC_VECTOR ( 8 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 8 downto 0 );
    rd_clk : in STD_LOGIC;
    \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1]\ : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \xcl_design_flash_programmer_0_synchronizer_ff__parameterized0\ : entity is "synchronizer_ff";
end \xcl_design_flash_programmer_0_synchronizer_ff__parameterized0\;

architecture STRUCTURE of \xcl_design_flash_programmer_0_synchronizer_ff__parameterized0\ is
  signal Q_reg : STD_LOGIC_VECTOR ( 8 downto 0 );
  attribute async_reg : string;
  attribute async_reg of Q_reg : signal is "true";
  attribute msgon : string;
  attribute msgon of Q_reg : signal is "true";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \Q_reg_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \Q_reg_reg[0]\ : label is "yes";
  attribute msgon of \Q_reg_reg[0]\ : label is "true";
  attribute ASYNC_REG_boolean of \Q_reg_reg[1]\ : label is std.standard.true;
  attribute KEEP of \Q_reg_reg[1]\ : label is "yes";
  attribute msgon of \Q_reg_reg[1]\ : label is "true";
  attribute ASYNC_REG_boolean of \Q_reg_reg[2]\ : label is std.standard.true;
  attribute KEEP of \Q_reg_reg[2]\ : label is "yes";
  attribute msgon of \Q_reg_reg[2]\ : label is "true";
  attribute ASYNC_REG_boolean of \Q_reg_reg[3]\ : label is std.standard.true;
  attribute KEEP of \Q_reg_reg[3]\ : label is "yes";
  attribute msgon of \Q_reg_reg[3]\ : label is "true";
  attribute ASYNC_REG_boolean of \Q_reg_reg[4]\ : label is std.standard.true;
  attribute KEEP of \Q_reg_reg[4]\ : label is "yes";
  attribute msgon of \Q_reg_reg[4]\ : label is "true";
  attribute ASYNC_REG_boolean of \Q_reg_reg[5]\ : label is std.standard.true;
  attribute KEEP of \Q_reg_reg[5]\ : label is "yes";
  attribute msgon of \Q_reg_reg[5]\ : label is "true";
  attribute ASYNC_REG_boolean of \Q_reg_reg[6]\ : label is std.standard.true;
  attribute KEEP of \Q_reg_reg[6]\ : label is "yes";
  attribute msgon of \Q_reg_reg[6]\ : label is "true";
  attribute ASYNC_REG_boolean of \Q_reg_reg[7]\ : label is std.standard.true;
  attribute KEEP of \Q_reg_reg[7]\ : label is "yes";
  attribute msgon of \Q_reg_reg[7]\ : label is "true";
  attribute ASYNC_REG_boolean of \Q_reg_reg[8]\ : label is std.standard.true;
  attribute KEEP of \Q_reg_reg[8]\ : label is "yes";
  attribute msgon of \Q_reg_reg[8]\ : label is "true";
begin
  D(8 downto 0) <= Q_reg(8 downto 0);
\Q_reg_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      CLR => \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1]\(0),
      D => Q(0),
      Q => Q_reg(0)
    );
\Q_reg_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      CLR => \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1]\(0),
      D => Q(1),
      Q => Q_reg(1)
    );
\Q_reg_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      CLR => \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1]\(0),
      D => Q(2),
      Q => Q_reg(2)
    );
\Q_reg_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      CLR => \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1]\(0),
      D => Q(3),
      Q => Q_reg(3)
    );
\Q_reg_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      CLR => \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1]\(0),
      D => Q(4),
      Q => Q_reg(4)
    );
\Q_reg_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      CLR => \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1]\(0),
      D => Q(5),
      Q => Q_reg(5)
    );
\Q_reg_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      CLR => \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1]\(0),
      D => Q(6),
      Q => Q_reg(6)
    );
\Q_reg_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      CLR => \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1]\(0),
      D => Q(7),
      Q => Q_reg(7)
    );
\Q_reg_reg[8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      CLR => \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1]\(0),
      D => Q(8),
      Q => Q_reg(8)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \xcl_design_flash_programmer_0_synchronizer_ff__parameterized1\ is
  port (
    D : out STD_LOGIC_VECTOR ( 8 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 8 downto 0 );
    wr_clk : in STD_LOGIC;
    AR : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \xcl_design_flash_programmer_0_synchronizer_ff__parameterized1\ : entity is "synchronizer_ff";
end \xcl_design_flash_programmer_0_synchronizer_ff__parameterized1\;

architecture STRUCTURE of \xcl_design_flash_programmer_0_synchronizer_ff__parameterized1\ is
  signal Q_reg : STD_LOGIC_VECTOR ( 8 downto 0 );
  attribute async_reg : string;
  attribute async_reg of Q_reg : signal is "true";
  attribute msgon : string;
  attribute msgon of Q_reg : signal is "true";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \Q_reg_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \Q_reg_reg[0]\ : label is "yes";
  attribute msgon of \Q_reg_reg[0]\ : label is "true";
  attribute ASYNC_REG_boolean of \Q_reg_reg[1]\ : label is std.standard.true;
  attribute KEEP of \Q_reg_reg[1]\ : label is "yes";
  attribute msgon of \Q_reg_reg[1]\ : label is "true";
  attribute ASYNC_REG_boolean of \Q_reg_reg[2]\ : label is std.standard.true;
  attribute KEEP of \Q_reg_reg[2]\ : label is "yes";
  attribute msgon of \Q_reg_reg[2]\ : label is "true";
  attribute ASYNC_REG_boolean of \Q_reg_reg[3]\ : label is std.standard.true;
  attribute KEEP of \Q_reg_reg[3]\ : label is "yes";
  attribute msgon of \Q_reg_reg[3]\ : label is "true";
  attribute ASYNC_REG_boolean of \Q_reg_reg[4]\ : label is std.standard.true;
  attribute KEEP of \Q_reg_reg[4]\ : label is "yes";
  attribute msgon of \Q_reg_reg[4]\ : label is "true";
  attribute ASYNC_REG_boolean of \Q_reg_reg[5]\ : label is std.standard.true;
  attribute KEEP of \Q_reg_reg[5]\ : label is "yes";
  attribute msgon of \Q_reg_reg[5]\ : label is "true";
  attribute ASYNC_REG_boolean of \Q_reg_reg[6]\ : label is std.standard.true;
  attribute KEEP of \Q_reg_reg[6]\ : label is "yes";
  attribute msgon of \Q_reg_reg[6]\ : label is "true";
  attribute ASYNC_REG_boolean of \Q_reg_reg[7]\ : label is std.standard.true;
  attribute KEEP of \Q_reg_reg[7]\ : label is "yes";
  attribute msgon of \Q_reg_reg[7]\ : label is "true";
  attribute ASYNC_REG_boolean of \Q_reg_reg[8]\ : label is std.standard.true;
  attribute KEEP of \Q_reg_reg[8]\ : label is "yes";
  attribute msgon of \Q_reg_reg[8]\ : label is "true";
begin
  D(8 downto 0) <= Q_reg(8 downto 0);
\Q_reg_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      CLR => AR(0),
      D => Q(0),
      Q => Q_reg(0)
    );
\Q_reg_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      CLR => AR(0),
      D => Q(1),
      Q => Q_reg(1)
    );
\Q_reg_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      CLR => AR(0),
      D => Q(2),
      Q => Q_reg(2)
    );
\Q_reg_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      CLR => AR(0),
      D => Q(3),
      Q => Q_reg(3)
    );
\Q_reg_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      CLR => AR(0),
      D => Q(4),
      Q => Q_reg(4)
    );
\Q_reg_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      CLR => AR(0),
      D => Q(5),
      Q => Q_reg(5)
    );
\Q_reg_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      CLR => AR(0),
      D => Q(6),
      Q => Q_reg(6)
    );
\Q_reg_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      CLR => AR(0),
      D => Q(7),
      Q => Q_reg(7)
    );
\Q_reg_reg[8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      CLR => AR(0),
      D => Q(8),
      Q => Q_reg(8)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \xcl_design_flash_programmer_0_synchronizer_ff__parameterized2\ is
  port (
    \out\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \gnxpm_cdc.wr_pntr_bin_reg[7]\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    D : in STD_LOGIC_VECTOR ( 8 downto 0 );
    rd_clk : in STD_LOGIC;
    \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1]\ : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \xcl_design_flash_programmer_0_synchronizer_ff__parameterized2\ : entity is "synchronizer_ff";
end \xcl_design_flash_programmer_0_synchronizer_ff__parameterized2\;

architecture STRUCTURE of \xcl_design_flash_programmer_0_synchronizer_ff__parameterized2\ is
  signal Q_reg : STD_LOGIC_VECTOR ( 8 downto 0 );
  attribute async_reg : string;
  attribute async_reg of Q_reg : signal is "true";
  attribute msgon : string;
  attribute msgon of Q_reg : signal is "true";
  signal \gnxpm_cdc.wr_pntr_bin[1]_i_2_n_0\ : STD_LOGIC;
  signal \gnxpm_cdc.wr_pntr_bin[2]_i_2_n_0\ : STD_LOGIC;
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \Q_reg_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \Q_reg_reg[0]\ : label is "yes";
  attribute msgon of \Q_reg_reg[0]\ : label is "true";
  attribute ASYNC_REG_boolean of \Q_reg_reg[1]\ : label is std.standard.true;
  attribute KEEP of \Q_reg_reg[1]\ : label is "yes";
  attribute msgon of \Q_reg_reg[1]\ : label is "true";
  attribute ASYNC_REG_boolean of \Q_reg_reg[2]\ : label is std.standard.true;
  attribute KEEP of \Q_reg_reg[2]\ : label is "yes";
  attribute msgon of \Q_reg_reg[2]\ : label is "true";
  attribute ASYNC_REG_boolean of \Q_reg_reg[3]\ : label is std.standard.true;
  attribute KEEP of \Q_reg_reg[3]\ : label is "yes";
  attribute msgon of \Q_reg_reg[3]\ : label is "true";
  attribute ASYNC_REG_boolean of \Q_reg_reg[4]\ : label is std.standard.true;
  attribute KEEP of \Q_reg_reg[4]\ : label is "yes";
  attribute msgon of \Q_reg_reg[4]\ : label is "true";
  attribute ASYNC_REG_boolean of \Q_reg_reg[5]\ : label is std.standard.true;
  attribute KEEP of \Q_reg_reg[5]\ : label is "yes";
  attribute msgon of \Q_reg_reg[5]\ : label is "true";
  attribute ASYNC_REG_boolean of \Q_reg_reg[6]\ : label is std.standard.true;
  attribute KEEP of \Q_reg_reg[6]\ : label is "yes";
  attribute msgon of \Q_reg_reg[6]\ : label is "true";
  attribute ASYNC_REG_boolean of \Q_reg_reg[7]\ : label is std.standard.true;
  attribute KEEP of \Q_reg_reg[7]\ : label is "yes";
  attribute msgon of \Q_reg_reg[7]\ : label is "true";
  attribute ASYNC_REG_boolean of \Q_reg_reg[8]\ : label is std.standard.true;
  attribute KEEP of \Q_reg_reg[8]\ : label is "yes";
  attribute msgon of \Q_reg_reg[8]\ : label is "true";
begin
  \out\(0) <= Q_reg(8);
\Q_reg_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      CLR => \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1]\(0),
      D => D(0),
      Q => Q_reg(0)
    );
\Q_reg_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      CLR => \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1]\(0),
      D => D(1),
      Q => Q_reg(1)
    );
\Q_reg_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      CLR => \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1]\(0),
      D => D(2),
      Q => Q_reg(2)
    );
\Q_reg_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      CLR => \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1]\(0),
      D => D(3),
      Q => Q_reg(3)
    );
\Q_reg_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      CLR => \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1]\(0),
      D => D(4),
      Q => Q_reg(4)
    );
\Q_reg_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      CLR => \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1]\(0),
      D => D(5),
      Q => Q_reg(5)
    );
\Q_reg_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      CLR => \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1]\(0),
      D => D(6),
      Q => Q_reg(6)
    );
\Q_reg_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      CLR => \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1]\(0),
      D => D(7),
      Q => Q_reg(7)
    );
\Q_reg_reg[8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      CLR => \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1]\(0),
      D => D(8),
      Q => Q_reg(8)
    );
\gnxpm_cdc.wr_pntr_bin[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => Q_reg(1),
      I1 => Q_reg(0),
      I2 => \gnxpm_cdc.wr_pntr_bin[1]_i_2_n_0\,
      I3 => Q_reg(3),
      I4 => Q_reg(2),
      I5 => Q_reg(8),
      O => \gnxpm_cdc.wr_pntr_bin_reg[7]\(0)
    );
\gnxpm_cdc.wr_pntr_bin[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96696996"
    )
        port map (
      I0 => \gnxpm_cdc.wr_pntr_bin[1]_i_2_n_0\,
      I1 => Q_reg(3),
      I2 => Q_reg(2),
      I3 => Q_reg(8),
      I4 => Q_reg(1),
      O => \gnxpm_cdc.wr_pntr_bin_reg[7]\(1)
    );
\gnxpm_cdc.wr_pntr_bin[1]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => Q_reg(7),
      I1 => Q_reg(6),
      I2 => Q_reg(5),
      I3 => Q_reg(4),
      O => \gnxpm_cdc.wr_pntr_bin[1]_i_2_n_0\
    );
\gnxpm_cdc.wr_pntr_bin[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => Q_reg(8),
      I1 => Q_reg(2),
      I2 => Q_reg(3),
      I3 => \gnxpm_cdc.wr_pntr_bin[2]_i_2_n_0\,
      I4 => Q_reg(6),
      I5 => Q_reg(7),
      O => \gnxpm_cdc.wr_pntr_bin_reg[7]\(2)
    );
\gnxpm_cdc.wr_pntr_bin[2]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => Q_reg(4),
      I1 => Q_reg(5),
      O => \gnxpm_cdc.wr_pntr_bin[2]_i_2_n_0\
    );
\gnxpm_cdc.wr_pntr_bin[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => Q_reg(5),
      I1 => Q_reg(3),
      I2 => Q_reg(4),
      I3 => Q_reg(8),
      I4 => Q_reg(6),
      I5 => Q_reg(7),
      O => \gnxpm_cdc.wr_pntr_bin_reg[7]\(3)
    );
\gnxpm_cdc.wr_pntr_bin[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96696996"
    )
        port map (
      I0 => Q_reg(6),
      I1 => Q_reg(4),
      I2 => Q_reg(5),
      I3 => Q_reg(8),
      I4 => Q_reg(7),
      O => \gnxpm_cdc.wr_pntr_bin_reg[7]\(4)
    );
\gnxpm_cdc.wr_pntr_bin[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => Q_reg(6),
      I1 => Q_reg(5),
      I2 => Q_reg(8),
      I3 => Q_reg(7),
      O => \gnxpm_cdc.wr_pntr_bin_reg[7]\(5)
    );
\gnxpm_cdc.wr_pntr_bin[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => Q_reg(7),
      I1 => Q_reg(6),
      I2 => Q_reg(8),
      O => \gnxpm_cdc.wr_pntr_bin_reg[7]\(6)
    );
\gnxpm_cdc.wr_pntr_bin[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => Q_reg(7),
      I1 => Q_reg(8),
      O => \gnxpm_cdc.wr_pntr_bin_reg[7]\(7)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \xcl_design_flash_programmer_0_synchronizer_ff__parameterized3\ is
  port (
    \out\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \gnxpm_cdc.rd_pntr_bin_reg[7]\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    D : in STD_LOGIC_VECTOR ( 8 downto 0 );
    wr_clk : in STD_LOGIC;
    AR : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \xcl_design_flash_programmer_0_synchronizer_ff__parameterized3\ : entity is "synchronizer_ff";
end \xcl_design_flash_programmer_0_synchronizer_ff__parameterized3\;

architecture STRUCTURE of \xcl_design_flash_programmer_0_synchronizer_ff__parameterized3\ is
  signal Q_reg : STD_LOGIC_VECTOR ( 8 downto 0 );
  attribute async_reg : string;
  attribute async_reg of Q_reg : signal is "true";
  attribute msgon : string;
  attribute msgon of Q_reg : signal is "true";
  signal \gnxpm_cdc.rd_pntr_bin[1]_i_2_n_0\ : STD_LOGIC;
  signal \gnxpm_cdc.rd_pntr_bin[2]_i_2_n_0\ : STD_LOGIC;
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \Q_reg_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \Q_reg_reg[0]\ : label is "yes";
  attribute msgon of \Q_reg_reg[0]\ : label is "true";
  attribute ASYNC_REG_boolean of \Q_reg_reg[1]\ : label is std.standard.true;
  attribute KEEP of \Q_reg_reg[1]\ : label is "yes";
  attribute msgon of \Q_reg_reg[1]\ : label is "true";
  attribute ASYNC_REG_boolean of \Q_reg_reg[2]\ : label is std.standard.true;
  attribute KEEP of \Q_reg_reg[2]\ : label is "yes";
  attribute msgon of \Q_reg_reg[2]\ : label is "true";
  attribute ASYNC_REG_boolean of \Q_reg_reg[3]\ : label is std.standard.true;
  attribute KEEP of \Q_reg_reg[3]\ : label is "yes";
  attribute msgon of \Q_reg_reg[3]\ : label is "true";
  attribute ASYNC_REG_boolean of \Q_reg_reg[4]\ : label is std.standard.true;
  attribute KEEP of \Q_reg_reg[4]\ : label is "yes";
  attribute msgon of \Q_reg_reg[4]\ : label is "true";
  attribute ASYNC_REG_boolean of \Q_reg_reg[5]\ : label is std.standard.true;
  attribute KEEP of \Q_reg_reg[5]\ : label is "yes";
  attribute msgon of \Q_reg_reg[5]\ : label is "true";
  attribute ASYNC_REG_boolean of \Q_reg_reg[6]\ : label is std.standard.true;
  attribute KEEP of \Q_reg_reg[6]\ : label is "yes";
  attribute msgon of \Q_reg_reg[6]\ : label is "true";
  attribute ASYNC_REG_boolean of \Q_reg_reg[7]\ : label is std.standard.true;
  attribute KEEP of \Q_reg_reg[7]\ : label is "yes";
  attribute msgon of \Q_reg_reg[7]\ : label is "true";
  attribute ASYNC_REG_boolean of \Q_reg_reg[8]\ : label is std.standard.true;
  attribute KEEP of \Q_reg_reg[8]\ : label is "yes";
  attribute msgon of \Q_reg_reg[8]\ : label is "true";
begin
  \out\(0) <= Q_reg(8);
\Q_reg_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      CLR => AR(0),
      D => D(0),
      Q => Q_reg(0)
    );
\Q_reg_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      CLR => AR(0),
      D => D(1),
      Q => Q_reg(1)
    );
\Q_reg_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      CLR => AR(0),
      D => D(2),
      Q => Q_reg(2)
    );
\Q_reg_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      CLR => AR(0),
      D => D(3),
      Q => Q_reg(3)
    );
\Q_reg_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      CLR => AR(0),
      D => D(4),
      Q => Q_reg(4)
    );
\Q_reg_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      CLR => AR(0),
      D => D(5),
      Q => Q_reg(5)
    );
\Q_reg_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      CLR => AR(0),
      D => D(6),
      Q => Q_reg(6)
    );
\Q_reg_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      CLR => AR(0),
      D => D(7),
      Q => Q_reg(7)
    );
\Q_reg_reg[8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      CLR => AR(0),
      D => D(8),
      Q => Q_reg(8)
    );
\gnxpm_cdc.rd_pntr_bin[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => Q_reg(1),
      I1 => Q_reg(0),
      I2 => \gnxpm_cdc.rd_pntr_bin[1]_i_2_n_0\,
      I3 => Q_reg(3),
      I4 => Q_reg(2),
      I5 => Q_reg(8),
      O => \gnxpm_cdc.rd_pntr_bin_reg[7]\(0)
    );
\gnxpm_cdc.rd_pntr_bin[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96696996"
    )
        port map (
      I0 => \gnxpm_cdc.rd_pntr_bin[1]_i_2_n_0\,
      I1 => Q_reg(3),
      I2 => Q_reg(2),
      I3 => Q_reg(8),
      I4 => Q_reg(1),
      O => \gnxpm_cdc.rd_pntr_bin_reg[7]\(1)
    );
\gnxpm_cdc.rd_pntr_bin[1]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => Q_reg(7),
      I1 => Q_reg(6),
      I2 => Q_reg(5),
      I3 => Q_reg(4),
      O => \gnxpm_cdc.rd_pntr_bin[1]_i_2_n_0\
    );
\gnxpm_cdc.rd_pntr_bin[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => Q_reg(8),
      I1 => Q_reg(2),
      I2 => Q_reg(3),
      I3 => \gnxpm_cdc.rd_pntr_bin[2]_i_2_n_0\,
      I4 => Q_reg(6),
      I5 => Q_reg(7),
      O => \gnxpm_cdc.rd_pntr_bin_reg[7]\(2)
    );
\gnxpm_cdc.rd_pntr_bin[2]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => Q_reg(4),
      I1 => Q_reg(5),
      O => \gnxpm_cdc.rd_pntr_bin[2]_i_2_n_0\
    );
\gnxpm_cdc.rd_pntr_bin[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => Q_reg(5),
      I1 => Q_reg(3),
      I2 => Q_reg(4),
      I3 => Q_reg(8),
      I4 => Q_reg(6),
      I5 => Q_reg(7),
      O => \gnxpm_cdc.rd_pntr_bin_reg[7]\(3)
    );
\gnxpm_cdc.rd_pntr_bin[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96696996"
    )
        port map (
      I0 => Q_reg(6),
      I1 => Q_reg(4),
      I2 => Q_reg(5),
      I3 => Q_reg(8),
      I4 => Q_reg(7),
      O => \gnxpm_cdc.rd_pntr_bin_reg[7]\(4)
    );
\gnxpm_cdc.rd_pntr_bin[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => Q_reg(6),
      I1 => Q_reg(5),
      I2 => Q_reg(8),
      I3 => Q_reg(7),
      O => \gnxpm_cdc.rd_pntr_bin_reg[7]\(5)
    );
\gnxpm_cdc.rd_pntr_bin[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => Q_reg(7),
      I1 => Q_reg(6),
      I2 => Q_reg(8),
      O => \gnxpm_cdc.rd_pntr_bin_reg[7]\(6)
    );
\gnxpm_cdc.rd_pntr_bin[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => Q_reg(7),
      I1 => Q_reg(8),
      O => \gnxpm_cdc.rd_pntr_bin_reg[7]\(7)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity xcl_design_flash_programmer_0_wr_bin_cntr is
  port (
    S : out STD_LOGIC_VECTOR ( 7 downto 0 );
    Q : out STD_LOGIC_VECTOR ( 8 downto 0 );
    \gdiff.diff_pntr_pad_reg[9]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \gpr1.dout_i_reg[28]\ : out STD_LOGIC;
    \gnxpm_cdc.wr_pntr_gc_reg[8]\ : out STD_LOGIC_VECTOR ( 8 downto 0 );
    \gpr1.dout_i_reg[28]_0\ : out STD_LOGIC;
    \gpr1.dout_i_reg[28]_1\ : out STD_LOGIC;
    \gpr1.dout_i_reg[28]_2\ : out STD_LOGIC;
    \gpr1.dout_i_reg[28]_3\ : out STD_LOGIC;
    \gpr1.dout_i_reg[28]_4\ : out STD_LOGIC;
    \gpr1.dout_i_reg[28]_5\ : out STD_LOGIC;
    \gpr1.dout_i_reg[28]_6\ : out STD_LOGIC;
    \gic0.gc0.count_d1_reg[8]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    v1_reg : out STD_LOGIC_VECTOR ( 3 downto 0 );
    v1_reg_0 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    RD_PNTR_WR : in STD_LOGIC_VECTOR ( 8 downto 0 );
    wr_en : in STD_LOGIC;
    \out\ : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    wr_clk : in STD_LOGIC;
    AR : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of xcl_design_flash_programmer_0_wr_bin_cntr : entity is "wr_bin_cntr";
end xcl_design_flash_programmer_0_wr_bin_cntr;

architecture STRUCTURE of xcl_design_flash_programmer_0_wr_bin_cntr is
  signal \^q\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \gic0.gc0.count[8]_i_2_n_0\ : STD_LOGIC;
  signal \^gic0.gc0.count_d1_reg[8]_0\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^gnxpm_cdc.wr_pntr_gc_reg[8]\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \plusOp__1\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal wr_pntr_plus2 : STD_LOGIC_VECTOR ( 7 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of RAM_reg_0_63_0_6_i_1 : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of RAM_reg_128_191_0_6_i_1 : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of RAM_reg_192_255_0_6_i_1 : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of RAM_reg_256_319_0_6_i_1 : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of RAM_reg_320_383_0_6_i_1 : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of RAM_reg_384_447_0_6_i_1 : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of RAM_reg_448_511_0_6_i_1 : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of RAM_reg_64_127_0_6_i_1 : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \gic0.gc0.count[0]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \gic0.gc0.count[2]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \gic0.gc0.count[3]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \gic0.gc0.count[4]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \gic0.gc0.count[7]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \gic0.gc0.count[8]_i_1\ : label is "soft_lutpair16";
begin
  Q(8 downto 0) <= \^q\(8 downto 0);
  \gic0.gc0.count_d1_reg[8]_0\(0) <= \^gic0.gc0.count_d1_reg[8]_0\(0);
  \gnxpm_cdc.wr_pntr_gc_reg[8]\(8 downto 0) <= \^gnxpm_cdc.wr_pntr_gc_reg[8]\(8 downto 0);
RAM_reg_0_63_0_6_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000002"
    )
        port map (
      I0 => wr_en,
      I1 => \out\,
      I2 => \^gnxpm_cdc.wr_pntr_gc_reg[8]\(8),
      I3 => \^gnxpm_cdc.wr_pntr_gc_reg[8]\(6),
      I4 => \^gnxpm_cdc.wr_pntr_gc_reg[8]\(7),
      O => \gpr1.dout_i_reg[28]\
    );
RAM_reg_128_191_0_6_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00001000"
    )
        port map (
      I0 => \^gnxpm_cdc.wr_pntr_gc_reg[8]\(6),
      I1 => \^gnxpm_cdc.wr_pntr_gc_reg[8]\(8),
      I2 => \^gnxpm_cdc.wr_pntr_gc_reg[8]\(7),
      I3 => wr_en,
      I4 => \out\,
      O => \gpr1.dout_i_reg[28]_1\
    );
RAM_reg_192_255_0_6_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02000000"
    )
        port map (
      I0 => wr_en,
      I1 => \out\,
      I2 => \^gnxpm_cdc.wr_pntr_gc_reg[8]\(8),
      I3 => \^gnxpm_cdc.wr_pntr_gc_reg[8]\(6),
      I4 => \^gnxpm_cdc.wr_pntr_gc_reg[8]\(7),
      O => \gpr1.dout_i_reg[28]_3\
    );
RAM_reg_256_319_0_6_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00001000"
    )
        port map (
      I0 => \^gnxpm_cdc.wr_pntr_gc_reg[8]\(6),
      I1 => \^gnxpm_cdc.wr_pntr_gc_reg[8]\(7),
      I2 => \^gnxpm_cdc.wr_pntr_gc_reg[8]\(8),
      I3 => wr_en,
      I4 => \out\,
      O => \gpr1.dout_i_reg[28]_4\
    );
RAM_reg_320_383_0_6_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02000000"
    )
        port map (
      I0 => wr_en,
      I1 => \out\,
      I2 => \^gnxpm_cdc.wr_pntr_gc_reg[8]\(7),
      I3 => \^gnxpm_cdc.wr_pntr_gc_reg[8]\(6),
      I4 => \^gnxpm_cdc.wr_pntr_gc_reg[8]\(8),
      O => \gpr1.dout_i_reg[28]_5\
    );
RAM_reg_384_447_0_6_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02000000"
    )
        port map (
      I0 => wr_en,
      I1 => \out\,
      I2 => \^gnxpm_cdc.wr_pntr_gc_reg[8]\(6),
      I3 => \^gnxpm_cdc.wr_pntr_gc_reg[8]\(7),
      I4 => \^gnxpm_cdc.wr_pntr_gc_reg[8]\(8),
      O => \gpr1.dout_i_reg[28]_6\
    );
RAM_reg_448_511_0_6_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"08000000"
    )
        port map (
      I0 => \^gnxpm_cdc.wr_pntr_gc_reg[8]\(8),
      I1 => wr_en,
      I2 => \out\,
      I3 => \^gnxpm_cdc.wr_pntr_gc_reg[8]\(6),
      I4 => \^gnxpm_cdc.wr_pntr_gc_reg[8]\(7),
      O => \gpr1.dout_i_reg[28]_2\
    );
RAM_reg_64_127_0_6_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00001000"
    )
        port map (
      I0 => \^gnxpm_cdc.wr_pntr_gc_reg[8]\(7),
      I1 => \^gnxpm_cdc.wr_pntr_gc_reg[8]\(8),
      I2 => \^gnxpm_cdc.wr_pntr_gc_reg[8]\(6),
      I3 => wr_en,
      I4 => \out\,
      O => \gpr1.dout_i_reg[28]_0\
    );
\gic0.gc0.count[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => wr_pntr_plus2(0),
      O => \plusOp__1\(0)
    );
\gic0.gc0.count[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => wr_pntr_plus2(0),
      I1 => wr_pntr_plus2(1),
      O => \plusOp__1\(1)
    );
\gic0.gc0.count[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => wr_pntr_plus2(0),
      I1 => wr_pntr_plus2(1),
      I2 => wr_pntr_plus2(2),
      O => \plusOp__1\(2)
    );
\gic0.gc0.count[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => wr_pntr_plus2(1),
      I1 => wr_pntr_plus2(0),
      I2 => wr_pntr_plus2(2),
      I3 => wr_pntr_plus2(3),
      O => \plusOp__1\(3)
    );
\gic0.gc0.count[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => wr_pntr_plus2(2),
      I1 => wr_pntr_plus2(0),
      I2 => wr_pntr_plus2(1),
      I3 => wr_pntr_plus2(3),
      I4 => wr_pntr_plus2(4),
      O => \plusOp__1\(4)
    );
\gic0.gc0.count[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => wr_pntr_plus2(3),
      I1 => wr_pntr_plus2(1),
      I2 => wr_pntr_plus2(0),
      I3 => wr_pntr_plus2(2),
      I4 => wr_pntr_plus2(4),
      I5 => wr_pntr_plus2(5),
      O => \plusOp__1\(5)
    );
\gic0.gc0.count[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \gic0.gc0.count[8]_i_2_n_0\,
      I1 => wr_pntr_plus2(6),
      O => \plusOp__1\(6)
    );
\gic0.gc0.count[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \gic0.gc0.count[8]_i_2_n_0\,
      I1 => wr_pntr_plus2(6),
      I2 => wr_pntr_plus2(7),
      O => \plusOp__1\(7)
    );
\gic0.gc0.count[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => wr_pntr_plus2(6),
      I1 => \gic0.gc0.count[8]_i_2_n_0\,
      I2 => wr_pntr_plus2(7),
      I3 => \^gic0.gc0.count_d1_reg[8]_0\(0),
      O => \plusOp__1\(8)
    );
\gic0.gc0.count[8]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => wr_pntr_plus2(5),
      I1 => wr_pntr_plus2(3),
      I2 => wr_pntr_plus2(1),
      I3 => wr_pntr_plus2(0),
      I4 => wr_pntr_plus2(2),
      I5 => wr_pntr_plus2(4),
      O => \gic0.gc0.count[8]_i_2_n_0\
    );
\gic0.gc0.count_d1_reg[0]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      D => wr_pntr_plus2(0),
      PRE => AR(0),
      Q => \^q\(0)
    );
\gic0.gc0.count_d1_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      CLR => AR(0),
      D => wr_pntr_plus2(1),
      Q => \^q\(1)
    );
\gic0.gc0.count_d1_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      CLR => AR(0),
      D => wr_pntr_plus2(2),
      Q => \^q\(2)
    );
\gic0.gc0.count_d1_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      CLR => AR(0),
      D => wr_pntr_plus2(3),
      Q => \^q\(3)
    );
\gic0.gc0.count_d1_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      CLR => AR(0),
      D => wr_pntr_plus2(4),
      Q => \^q\(4)
    );
\gic0.gc0.count_d1_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      CLR => AR(0),
      D => wr_pntr_plus2(5),
      Q => \^q\(5)
    );
\gic0.gc0.count_d1_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      CLR => AR(0),
      D => wr_pntr_plus2(6),
      Q => \^q\(6)
    );
\gic0.gc0.count_d1_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      CLR => AR(0),
      D => wr_pntr_plus2(7),
      Q => \^q\(7)
    );
\gic0.gc0.count_d1_reg[8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      CLR => AR(0),
      D => \^gic0.gc0.count_d1_reg[8]_0\(0),
      Q => \^q\(8)
    );
\gic0.gc0.count_d2_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      CLR => AR(0),
      D => \^q\(0),
      Q => \^gnxpm_cdc.wr_pntr_gc_reg[8]\(0)
    );
\gic0.gc0.count_d2_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      CLR => AR(0),
      D => \^q\(1),
      Q => \^gnxpm_cdc.wr_pntr_gc_reg[8]\(1)
    );
\gic0.gc0.count_d2_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      CLR => AR(0),
      D => \^q\(2),
      Q => \^gnxpm_cdc.wr_pntr_gc_reg[8]\(2)
    );
\gic0.gc0.count_d2_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      CLR => AR(0),
      D => \^q\(3),
      Q => \^gnxpm_cdc.wr_pntr_gc_reg[8]\(3)
    );
\gic0.gc0.count_d2_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      CLR => AR(0),
      D => \^q\(4),
      Q => \^gnxpm_cdc.wr_pntr_gc_reg[8]\(4)
    );
\gic0.gc0.count_d2_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      CLR => AR(0),
      D => \^q\(5),
      Q => \^gnxpm_cdc.wr_pntr_gc_reg[8]\(5)
    );
\gic0.gc0.count_d2_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      CLR => AR(0),
      D => \^q\(6),
      Q => \^gnxpm_cdc.wr_pntr_gc_reg[8]\(6)
    );
\gic0.gc0.count_d2_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      CLR => AR(0),
      D => \^q\(7),
      Q => \^gnxpm_cdc.wr_pntr_gc_reg[8]\(7)
    );
\gic0.gc0.count_d2_reg[8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      CLR => AR(0),
      D => \^q\(8),
      Q => \^gnxpm_cdc.wr_pntr_gc_reg[8]\(8)
    );
\gic0.gc0.count_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      CLR => AR(0),
      D => \plusOp__1\(0),
      Q => wr_pntr_plus2(0)
    );
\gic0.gc0.count_reg[1]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      D => \plusOp__1\(1),
      PRE => AR(0),
      Q => wr_pntr_plus2(1)
    );
\gic0.gc0.count_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      CLR => AR(0),
      D => \plusOp__1\(2),
      Q => wr_pntr_plus2(2)
    );
\gic0.gc0.count_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      CLR => AR(0),
      D => \plusOp__1\(3),
      Q => wr_pntr_plus2(3)
    );
\gic0.gc0.count_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      CLR => AR(0),
      D => \plusOp__1\(4),
      Q => wr_pntr_plus2(4)
    );
\gic0.gc0.count_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      CLR => AR(0),
      D => \plusOp__1\(5),
      Q => wr_pntr_plus2(5)
    );
\gic0.gc0.count_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      CLR => AR(0),
      D => \plusOp__1\(6),
      Q => wr_pntr_plus2(6)
    );
\gic0.gc0.count_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      CLR => AR(0),
      D => \plusOp__1\(7),
      Q => wr_pntr_plus2(7)
    );
\gic0.gc0.count_reg[8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      CLR => AR(0),
      D => \plusOp__1\(8),
      Q => \^gic0.gc0.count_d1_reg[8]_0\(0)
    );
\gmux.gm[0].gm1.m1_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^q\(0),
      I1 => RD_PNTR_WR(0),
      I2 => \^q\(1),
      I3 => RD_PNTR_WR(1),
      O => v1_reg(0)
    );
\gmux.gm[0].gm1.m1_i_1__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => wr_pntr_plus2(0),
      I1 => RD_PNTR_WR(0),
      I2 => wr_pntr_plus2(1),
      I3 => RD_PNTR_WR(1),
      O => v1_reg_0(0)
    );
\gmux.gm[1].gms.ms_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^q\(2),
      I1 => RD_PNTR_WR(2),
      I2 => \^q\(3),
      I3 => RD_PNTR_WR(3),
      O => v1_reg(1)
    );
\gmux.gm[1].gms.ms_i_1__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => wr_pntr_plus2(2),
      I1 => RD_PNTR_WR(2),
      I2 => wr_pntr_plus2(3),
      I3 => RD_PNTR_WR(3),
      O => v1_reg_0(1)
    );
\gmux.gm[2].gms.ms_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^q\(4),
      I1 => RD_PNTR_WR(4),
      I2 => \^q\(5),
      I3 => RD_PNTR_WR(5),
      O => v1_reg(2)
    );
\gmux.gm[2].gms.ms_i_1__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => wr_pntr_plus2(4),
      I1 => RD_PNTR_WR(4),
      I2 => wr_pntr_plus2(5),
      I3 => RD_PNTR_WR(5),
      O => v1_reg_0(2)
    );
\gmux.gm[3].gms.ms_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^q\(6),
      I1 => RD_PNTR_WR(6),
      I2 => \^q\(7),
      I3 => RD_PNTR_WR(7),
      O => v1_reg(3)
    );
\gmux.gm[3].gms.ms_i_1__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => wr_pntr_plus2(6),
      I1 => RD_PNTR_WR(6),
      I2 => wr_pntr_plus2(7),
      I3 => RD_PNTR_WR(7),
      O => v1_reg_0(3)
    );
\plusOp_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(8),
      I1 => RD_PNTR_WR(8),
      O => \gdiff.diff_pntr_pad_reg[9]\(0)
    );
plusOp_carry_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(7),
      I1 => RD_PNTR_WR(7),
      O => S(7)
    );
plusOp_carry_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(6),
      I1 => RD_PNTR_WR(6),
      O => S(6)
    );
plusOp_carry_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(5),
      I1 => RD_PNTR_WR(5),
      O => S(5)
    );
plusOp_carry_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(4),
      I1 => RD_PNTR_WR(4),
      O => S(4)
    );
plusOp_carry_i_5: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(3),
      I1 => RD_PNTR_WR(3),
      O => S(3)
    );
plusOp_carry_i_6: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(2),
      I1 => RD_PNTR_WR(2),
      O => S(2)
    );
plusOp_carry_i_7: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(1),
      I1 => RD_PNTR_WR(1),
      O => S(1)
    );
plusOp_carry_i_8: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(0),
      I1 => RD_PNTR_WR(0),
      O => S(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity xcl_design_flash_programmer_0_wr_pf_as is
  port (
    prog_full : out STD_LOGIC;
    wr_clk : in STD_LOGIC;
    \out\ : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    Q : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \gic0.gc0.count_d1_reg[8]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    wr_rst_busy : in STD_LOGIC;
    ram_full_fb_i_reg : in STD_LOGIC;
    AR : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of xcl_design_flash_programmer_0_wr_pf_as : entity is "wr_pf_as";
end xcl_design_flash_programmer_0_wr_pf_as;

architecture STRUCTURE of xcl_design_flash_programmer_0_wr_pf_as is
  signal diff_pntr : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \gpf1.prog_full_i_i_1_n_0\ : STD_LOGIC;
  signal \gpf1.prog_full_i_i_2_n_0\ : STD_LOGIC;
  signal \gpf1.prog_full_i_i_3_n_0\ : STD_LOGIC;
  signal plusOp : STD_LOGIC_VECTOR ( 9 downto 1 );
  signal plusOp_carry_n_0 : STD_LOGIC;
  signal plusOp_carry_n_1 : STD_LOGIC;
  signal plusOp_carry_n_2 : STD_LOGIC;
  signal plusOp_carry_n_3 : STD_LOGIC;
  signal plusOp_carry_n_5 : STD_LOGIC;
  signal plusOp_carry_n_6 : STD_LOGIC;
  signal plusOp_carry_n_7 : STD_LOGIC;
  signal \^prog_full\ : STD_LOGIC;
  signal NLW_plusOp_carry_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_plusOp_carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_plusOp_carry__0_DI_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 1 );
  signal \NLW_plusOp_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 1 );
  signal \NLW_plusOp_carry__0_S_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 1 );
begin
  prog_full <= \^prog_full\;
\gdiff.diff_pntr_pad_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      CLR => AR(0),
      D => plusOp(1),
      Q => diff_pntr(0)
    );
\gdiff.diff_pntr_pad_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      CLR => AR(0),
      D => plusOp(2),
      Q => diff_pntr(1)
    );
\gdiff.diff_pntr_pad_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      CLR => AR(0),
      D => plusOp(3),
      Q => diff_pntr(2)
    );
\gdiff.diff_pntr_pad_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      CLR => AR(0),
      D => plusOp(4),
      Q => diff_pntr(3)
    );
\gdiff.diff_pntr_pad_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      CLR => AR(0),
      D => plusOp(5),
      Q => diff_pntr(4)
    );
\gdiff.diff_pntr_pad_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      CLR => AR(0),
      D => plusOp(6),
      Q => diff_pntr(5)
    );
\gdiff.diff_pntr_pad_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      CLR => AR(0),
      D => plusOp(7),
      Q => diff_pntr(6)
    );
\gdiff.diff_pntr_pad_reg[8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      CLR => AR(0),
      D => plusOp(8),
      Q => diff_pntr(7)
    );
\gdiff.diff_pntr_pad_reg[9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      CLR => AR(0),
      D => plusOp(9),
      Q => diff_pntr(8)
    );
\gpf1.prog_full_i_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0F010001"
    )
        port map (
      I0 => \gpf1.prog_full_i_i_2_n_0\,
      I1 => \gpf1.prog_full_i_i_3_n_0\,
      I2 => wr_rst_busy,
      I3 => ram_full_fb_i_reg,
      I4 => \^prog_full\,
      O => \gpf1.prog_full_i_i_1_n_0\
    );
\gpf1.prog_full_i_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"777FFFFF"
    )
        port map (
      I0 => diff_pntr(2),
      I1 => diff_pntr(3),
      I2 => diff_pntr(0),
      I3 => diff_pntr(1),
      I4 => diff_pntr(6),
      O => \gpf1.prog_full_i_i_2_n_0\
    );
\gpf1.prog_full_i_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => diff_pntr(7),
      I1 => diff_pntr(8),
      I2 => diff_pntr(4),
      I3 => diff_pntr(5),
      O => \gpf1.prog_full_i_i_3_n_0\
    );
\gpf1.prog_full_i_reg\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => \gpf1.prog_full_i_i_1_n_0\,
      PRE => \out\,
      Q => \^prog_full\
    );
plusOp_carry: unisim.vcomponents.CARRY8
     port map (
      CI => E(0),
      CI_TOP => '0',
      CO(7) => plusOp_carry_n_0,
      CO(6) => plusOp_carry_n_1,
      CO(5) => plusOp_carry_n_2,
      CO(4) => plusOp_carry_n_3,
      CO(3) => NLW_plusOp_carry_CO_UNCONNECTED(3),
      CO(2) => plusOp_carry_n_5,
      CO(1) => plusOp_carry_n_6,
      CO(0) => plusOp_carry_n_7,
      DI(7 downto 0) => Q(7 downto 0),
      O(7 downto 0) => plusOp(8 downto 1),
      S(7 downto 0) => S(7 downto 0)
    );
\plusOp_carry__0\: unisim.vcomponents.CARRY8
     port map (
      CI => plusOp_carry_n_0,
      CI_TOP => '0',
      CO(7 downto 0) => \NLW_plusOp_carry__0_CO_UNCONNECTED\(7 downto 0),
      DI(7 downto 1) => \NLW_plusOp_carry__0_DI_UNCONNECTED\(7 downto 1),
      DI(0) => '0',
      O(7 downto 1) => \NLW_plusOp_carry__0_O_UNCONNECTED\(7 downto 1),
      O(0) => plusOp(9),
      S(7 downto 1) => \NLW_plusOp_carry__0_S_UNCONNECTED\(7 downto 1),
      S(0) => \gic0.gc0.count_d1_reg[8]\(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity xcl_design_flash_programmer_0_clk_x_pntrs is
  port (
    ram_full_fb_i_reg : out STD_LOGIC;
    RD_PNTR_WR : out STD_LOGIC_VECTOR ( 8 downto 0 );
    ram_full_fb_i_reg_0 : out STD_LOGIC;
    v1_reg : out STD_LOGIC_VECTOR ( 3 downto 0 );
    WR_PNTR_RD : out STD_LOGIC_VECTOR ( 0 to 0 );
    v1_reg_0 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    D : in STD_LOGIC_VECTOR ( 0 to 0 );
    \gc0.count_d1_reg[8]\ : in STD_LOGIC_VECTOR ( 8 downto 0 );
    \gc0.count_reg[7]\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \gic0.gc0.count_d2_reg[8]\ : in STD_LOGIC_VECTOR ( 8 downto 0 );
    wr_clk : in STD_LOGIC;
    AR : in STD_LOGIC_VECTOR ( 0 to 0 );
    rd_clk : in STD_LOGIC;
    \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1]\ : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of xcl_design_flash_programmer_0_clk_x_pntrs : entity is "clk_x_pntrs";
end xcl_design_flash_programmer_0_clk_x_pntrs;

architecture STRUCTURE of xcl_design_flash_programmer_0_clk_x_pntrs is
  signal \^rd_pntr_wr\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal bin2gray : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \gnxpm_cdc.gsync_stage[2].wr_stg_inst_n_1\ : STD_LOGIC;
  signal \gnxpm_cdc.gsync_stage[2].wr_stg_inst_n_2\ : STD_LOGIC;
  signal \gnxpm_cdc.gsync_stage[2].wr_stg_inst_n_3\ : STD_LOGIC;
  signal \gnxpm_cdc.gsync_stage[2].wr_stg_inst_n_4\ : STD_LOGIC;
  signal \gnxpm_cdc.gsync_stage[2].wr_stg_inst_n_5\ : STD_LOGIC;
  signal \gnxpm_cdc.gsync_stage[2].wr_stg_inst_n_6\ : STD_LOGIC;
  signal \gnxpm_cdc.gsync_stage[2].wr_stg_inst_n_7\ : STD_LOGIC;
  signal \gnxpm_cdc.gsync_stage[2].wr_stg_inst_n_8\ : STD_LOGIC;
  signal \gnxpm_cdc.rd_pntr_gc[0]_i_1_n_0\ : STD_LOGIC;
  signal \gnxpm_cdc.rd_pntr_gc[1]_i_1_n_0\ : STD_LOGIC;
  signal \gnxpm_cdc.rd_pntr_gc[2]_i_1_n_0\ : STD_LOGIC;
  signal \gnxpm_cdc.rd_pntr_gc[3]_i_1_n_0\ : STD_LOGIC;
  signal \gnxpm_cdc.rd_pntr_gc[4]_i_1_n_0\ : STD_LOGIC;
  signal \gnxpm_cdc.rd_pntr_gc[5]_i_1_n_0\ : STD_LOGIC;
  signal \gnxpm_cdc.rd_pntr_gc[6]_i_1_n_0\ : STD_LOGIC;
  signal \gnxpm_cdc.rd_pntr_gc[7]_i_1_n_0\ : STD_LOGIC;
  signal gray2bin : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal p_0_out : STD_LOGIC;
  signal p_22_out : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal p_3_out : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal p_4_out : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal p_5_out : STD_LOGIC_VECTOR ( 8 to 8 );
  signal p_6_out : STD_LOGIC_VECTOR ( 8 to 8 );
  signal rd_pntr_gc : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal wr_pntr_gc : STD_LOGIC_VECTOR ( 8 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \gnxpm_cdc.rd_pntr_gc[0]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \gnxpm_cdc.rd_pntr_gc[1]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \gnxpm_cdc.rd_pntr_gc[2]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \gnxpm_cdc.rd_pntr_gc[3]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \gnxpm_cdc.rd_pntr_gc[4]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \gnxpm_cdc.rd_pntr_gc[5]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \gnxpm_cdc.rd_pntr_gc[6]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \gnxpm_cdc.rd_pntr_gc[7]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \gnxpm_cdc.wr_pntr_gc[0]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \gnxpm_cdc.wr_pntr_gc[1]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \gnxpm_cdc.wr_pntr_gc[2]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \gnxpm_cdc.wr_pntr_gc[3]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \gnxpm_cdc.wr_pntr_gc[4]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \gnxpm_cdc.wr_pntr_gc[5]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \gnxpm_cdc.wr_pntr_gc[6]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \gnxpm_cdc.wr_pntr_gc[7]_i_1\ : label is "soft_lutpair3";
begin
  RD_PNTR_WR(8 downto 0) <= \^rd_pntr_wr\(8 downto 0);
\gmux.gm[0].gm1.m1_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => p_22_out(0),
      I1 => \gc0.count_d1_reg[8]\(0),
      I2 => p_22_out(1),
      I3 => \gc0.count_d1_reg[8]\(1),
      O => v1_reg(0)
    );
\gmux.gm[0].gm1.m1_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => p_22_out(0),
      I1 => \gc0.count_reg[7]\(0),
      I2 => p_22_out(1),
      I3 => \gc0.count_reg[7]\(1),
      O => v1_reg_0(0)
    );
\gmux.gm[1].gms.ms_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => p_22_out(2),
      I1 => \gc0.count_d1_reg[8]\(2),
      I2 => p_22_out(3),
      I3 => \gc0.count_d1_reg[8]\(3),
      O => v1_reg(1)
    );
\gmux.gm[1].gms.ms_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => p_22_out(2),
      I1 => \gc0.count_reg[7]\(2),
      I2 => p_22_out(3),
      I3 => \gc0.count_reg[7]\(3),
      O => v1_reg_0(1)
    );
\gmux.gm[2].gms.ms_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => p_22_out(4),
      I1 => \gc0.count_d1_reg[8]\(4),
      I2 => p_22_out(5),
      I3 => \gc0.count_d1_reg[8]\(5),
      O => v1_reg(2)
    );
\gmux.gm[2].gms.ms_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => p_22_out(4),
      I1 => \gc0.count_reg[7]\(4),
      I2 => p_22_out(5),
      I3 => \gc0.count_reg[7]\(5),
      O => v1_reg_0(2)
    );
\gmux.gm[3].gms.ms_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => p_22_out(6),
      I1 => \gc0.count_d1_reg[8]\(6),
      I2 => p_22_out(7),
      I3 => \gc0.count_d1_reg[8]\(7),
      O => v1_reg(3)
    );
\gmux.gm[3].gms.ms_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => p_22_out(6),
      I1 => \gc0.count_reg[7]\(6),
      I2 => p_22_out(7),
      I3 => \gc0.count_reg[7]\(7),
      O => v1_reg_0(3)
    );
\gmux.gm[4].gms.ms_i_1__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^rd_pntr_wr\(8),
      I1 => Q(0),
      O => ram_full_fb_i_reg
    );
\gmux.gm[4].gms.ms_i_1__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^rd_pntr_wr\(8),
      I1 => D(0),
      O => ram_full_fb_i_reg_0
    );
\gnxpm_cdc.gsync_stage[1].rd_stg_inst\: entity work.\xcl_design_flash_programmer_0_synchronizer_ff__parameterized0\
     port map (
      D(8 downto 0) => p_3_out(8 downto 0),
      Q(8 downto 0) => wr_pntr_gc(8 downto 0),
      \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1]\(0) => \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1]\(0),
      rd_clk => rd_clk
    );
\gnxpm_cdc.gsync_stage[1].wr_stg_inst\: entity work.\xcl_design_flash_programmer_0_synchronizer_ff__parameterized1\
     port map (
      AR(0) => AR(0),
      D(8 downto 0) => p_4_out(8 downto 0),
      Q(8 downto 0) => rd_pntr_gc(8 downto 0),
      wr_clk => wr_clk
    );
\gnxpm_cdc.gsync_stage[2].rd_stg_inst\: entity work.\xcl_design_flash_programmer_0_synchronizer_ff__parameterized2\
     port map (
      D(8 downto 0) => p_3_out(8 downto 0),
      \gnxpm_cdc.wr_pntr_bin_reg[7]\(7) => p_0_out,
      \gnxpm_cdc.wr_pntr_bin_reg[7]\(6 downto 0) => gray2bin(6 downto 0),
      \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1]\(0) => \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1]\(0),
      \out\(0) => p_5_out(8),
      rd_clk => rd_clk
    );
\gnxpm_cdc.gsync_stage[2].wr_stg_inst\: entity work.\xcl_design_flash_programmer_0_synchronizer_ff__parameterized3\
     port map (
      AR(0) => AR(0),
      D(8 downto 0) => p_4_out(8 downto 0),
      \gnxpm_cdc.rd_pntr_bin_reg[7]\(7) => \gnxpm_cdc.gsync_stage[2].wr_stg_inst_n_1\,
      \gnxpm_cdc.rd_pntr_bin_reg[7]\(6) => \gnxpm_cdc.gsync_stage[2].wr_stg_inst_n_2\,
      \gnxpm_cdc.rd_pntr_bin_reg[7]\(5) => \gnxpm_cdc.gsync_stage[2].wr_stg_inst_n_3\,
      \gnxpm_cdc.rd_pntr_bin_reg[7]\(4) => \gnxpm_cdc.gsync_stage[2].wr_stg_inst_n_4\,
      \gnxpm_cdc.rd_pntr_bin_reg[7]\(3) => \gnxpm_cdc.gsync_stage[2].wr_stg_inst_n_5\,
      \gnxpm_cdc.rd_pntr_bin_reg[7]\(2) => \gnxpm_cdc.gsync_stage[2].wr_stg_inst_n_6\,
      \gnxpm_cdc.rd_pntr_bin_reg[7]\(1) => \gnxpm_cdc.gsync_stage[2].wr_stg_inst_n_7\,
      \gnxpm_cdc.rd_pntr_bin_reg[7]\(0) => \gnxpm_cdc.gsync_stage[2].wr_stg_inst_n_8\,
      \out\(0) => p_6_out(8),
      wr_clk => wr_clk
    );
\gnxpm_cdc.rd_pntr_bin_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      CLR => AR(0),
      D => \gnxpm_cdc.gsync_stage[2].wr_stg_inst_n_8\,
      Q => \^rd_pntr_wr\(0)
    );
\gnxpm_cdc.rd_pntr_bin_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      CLR => AR(0),
      D => \gnxpm_cdc.gsync_stage[2].wr_stg_inst_n_7\,
      Q => \^rd_pntr_wr\(1)
    );
\gnxpm_cdc.rd_pntr_bin_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      CLR => AR(0),
      D => \gnxpm_cdc.gsync_stage[2].wr_stg_inst_n_6\,
      Q => \^rd_pntr_wr\(2)
    );
\gnxpm_cdc.rd_pntr_bin_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      CLR => AR(0),
      D => \gnxpm_cdc.gsync_stage[2].wr_stg_inst_n_5\,
      Q => \^rd_pntr_wr\(3)
    );
\gnxpm_cdc.rd_pntr_bin_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      CLR => AR(0),
      D => \gnxpm_cdc.gsync_stage[2].wr_stg_inst_n_4\,
      Q => \^rd_pntr_wr\(4)
    );
\gnxpm_cdc.rd_pntr_bin_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      CLR => AR(0),
      D => \gnxpm_cdc.gsync_stage[2].wr_stg_inst_n_3\,
      Q => \^rd_pntr_wr\(5)
    );
\gnxpm_cdc.rd_pntr_bin_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      CLR => AR(0),
      D => \gnxpm_cdc.gsync_stage[2].wr_stg_inst_n_2\,
      Q => \^rd_pntr_wr\(6)
    );
\gnxpm_cdc.rd_pntr_bin_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      CLR => AR(0),
      D => \gnxpm_cdc.gsync_stage[2].wr_stg_inst_n_1\,
      Q => \^rd_pntr_wr\(7)
    );
\gnxpm_cdc.rd_pntr_bin_reg[8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      CLR => AR(0),
      D => p_6_out(8),
      Q => \^rd_pntr_wr\(8)
    );
\gnxpm_cdc.rd_pntr_gc[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \gc0.count_d1_reg[8]\(0),
      I1 => \gc0.count_d1_reg[8]\(1),
      O => \gnxpm_cdc.rd_pntr_gc[0]_i_1_n_0\
    );
\gnxpm_cdc.rd_pntr_gc[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \gc0.count_d1_reg[8]\(1),
      I1 => \gc0.count_d1_reg[8]\(2),
      O => \gnxpm_cdc.rd_pntr_gc[1]_i_1_n_0\
    );
\gnxpm_cdc.rd_pntr_gc[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \gc0.count_d1_reg[8]\(2),
      I1 => \gc0.count_d1_reg[8]\(3),
      O => \gnxpm_cdc.rd_pntr_gc[2]_i_1_n_0\
    );
\gnxpm_cdc.rd_pntr_gc[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \gc0.count_d1_reg[8]\(3),
      I1 => \gc0.count_d1_reg[8]\(4),
      O => \gnxpm_cdc.rd_pntr_gc[3]_i_1_n_0\
    );
\gnxpm_cdc.rd_pntr_gc[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \gc0.count_d1_reg[8]\(4),
      I1 => \gc0.count_d1_reg[8]\(5),
      O => \gnxpm_cdc.rd_pntr_gc[4]_i_1_n_0\
    );
\gnxpm_cdc.rd_pntr_gc[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \gc0.count_d1_reg[8]\(5),
      I1 => \gc0.count_d1_reg[8]\(6),
      O => \gnxpm_cdc.rd_pntr_gc[5]_i_1_n_0\
    );
\gnxpm_cdc.rd_pntr_gc[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \gc0.count_d1_reg[8]\(6),
      I1 => \gc0.count_d1_reg[8]\(7),
      O => \gnxpm_cdc.rd_pntr_gc[6]_i_1_n_0\
    );
\gnxpm_cdc.rd_pntr_gc[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \gc0.count_d1_reg[8]\(7),
      I1 => \gc0.count_d1_reg[8]\(8),
      O => \gnxpm_cdc.rd_pntr_gc[7]_i_1_n_0\
    );
\gnxpm_cdc.rd_pntr_gc_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      CLR => \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1]\(0),
      D => \gnxpm_cdc.rd_pntr_gc[0]_i_1_n_0\,
      Q => rd_pntr_gc(0)
    );
\gnxpm_cdc.rd_pntr_gc_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      CLR => \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1]\(0),
      D => \gnxpm_cdc.rd_pntr_gc[1]_i_1_n_0\,
      Q => rd_pntr_gc(1)
    );
\gnxpm_cdc.rd_pntr_gc_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      CLR => \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1]\(0),
      D => \gnxpm_cdc.rd_pntr_gc[2]_i_1_n_0\,
      Q => rd_pntr_gc(2)
    );
\gnxpm_cdc.rd_pntr_gc_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      CLR => \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1]\(0),
      D => \gnxpm_cdc.rd_pntr_gc[3]_i_1_n_0\,
      Q => rd_pntr_gc(3)
    );
\gnxpm_cdc.rd_pntr_gc_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      CLR => \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1]\(0),
      D => \gnxpm_cdc.rd_pntr_gc[4]_i_1_n_0\,
      Q => rd_pntr_gc(4)
    );
\gnxpm_cdc.rd_pntr_gc_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      CLR => \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1]\(0),
      D => \gnxpm_cdc.rd_pntr_gc[5]_i_1_n_0\,
      Q => rd_pntr_gc(5)
    );
\gnxpm_cdc.rd_pntr_gc_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      CLR => \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1]\(0),
      D => \gnxpm_cdc.rd_pntr_gc[6]_i_1_n_0\,
      Q => rd_pntr_gc(6)
    );
\gnxpm_cdc.rd_pntr_gc_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      CLR => \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1]\(0),
      D => \gnxpm_cdc.rd_pntr_gc[7]_i_1_n_0\,
      Q => rd_pntr_gc(7)
    );
\gnxpm_cdc.rd_pntr_gc_reg[8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      CLR => \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1]\(0),
      D => \gc0.count_d1_reg[8]\(8),
      Q => rd_pntr_gc(8)
    );
\gnxpm_cdc.wr_pntr_bin_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      CLR => \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1]\(0),
      D => gray2bin(0),
      Q => p_22_out(0)
    );
\gnxpm_cdc.wr_pntr_bin_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      CLR => \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1]\(0),
      D => gray2bin(1),
      Q => p_22_out(1)
    );
\gnxpm_cdc.wr_pntr_bin_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      CLR => \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1]\(0),
      D => gray2bin(2),
      Q => p_22_out(2)
    );
\gnxpm_cdc.wr_pntr_bin_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      CLR => \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1]\(0),
      D => gray2bin(3),
      Q => p_22_out(3)
    );
\gnxpm_cdc.wr_pntr_bin_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      CLR => \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1]\(0),
      D => gray2bin(4),
      Q => p_22_out(4)
    );
\gnxpm_cdc.wr_pntr_bin_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      CLR => \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1]\(0),
      D => gray2bin(5),
      Q => p_22_out(5)
    );
\gnxpm_cdc.wr_pntr_bin_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      CLR => \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1]\(0),
      D => gray2bin(6),
      Q => p_22_out(6)
    );
\gnxpm_cdc.wr_pntr_bin_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      CLR => \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1]\(0),
      D => p_0_out,
      Q => p_22_out(7)
    );
\gnxpm_cdc.wr_pntr_bin_reg[8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      CLR => \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1]\(0),
      D => p_5_out(8),
      Q => WR_PNTR_RD(0)
    );
\gnxpm_cdc.wr_pntr_gc[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \gic0.gc0.count_d2_reg[8]\(0),
      I1 => \gic0.gc0.count_d2_reg[8]\(1),
      O => bin2gray(0)
    );
\gnxpm_cdc.wr_pntr_gc[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \gic0.gc0.count_d2_reg[8]\(1),
      I1 => \gic0.gc0.count_d2_reg[8]\(2),
      O => bin2gray(1)
    );
\gnxpm_cdc.wr_pntr_gc[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \gic0.gc0.count_d2_reg[8]\(2),
      I1 => \gic0.gc0.count_d2_reg[8]\(3),
      O => bin2gray(2)
    );
\gnxpm_cdc.wr_pntr_gc[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \gic0.gc0.count_d2_reg[8]\(3),
      I1 => \gic0.gc0.count_d2_reg[8]\(4),
      O => bin2gray(3)
    );
\gnxpm_cdc.wr_pntr_gc[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \gic0.gc0.count_d2_reg[8]\(4),
      I1 => \gic0.gc0.count_d2_reg[8]\(5),
      O => bin2gray(4)
    );
\gnxpm_cdc.wr_pntr_gc[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \gic0.gc0.count_d2_reg[8]\(5),
      I1 => \gic0.gc0.count_d2_reg[8]\(6),
      O => bin2gray(5)
    );
\gnxpm_cdc.wr_pntr_gc[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \gic0.gc0.count_d2_reg[8]\(6),
      I1 => \gic0.gc0.count_d2_reg[8]\(7),
      O => bin2gray(6)
    );
\gnxpm_cdc.wr_pntr_gc[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \gic0.gc0.count_d2_reg[8]\(7),
      I1 => \gic0.gc0.count_d2_reg[8]\(8),
      O => bin2gray(7)
    );
\gnxpm_cdc.wr_pntr_gc_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      CLR => AR(0),
      D => bin2gray(0),
      Q => wr_pntr_gc(0)
    );
\gnxpm_cdc.wr_pntr_gc_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      CLR => AR(0),
      D => bin2gray(1),
      Q => wr_pntr_gc(1)
    );
\gnxpm_cdc.wr_pntr_gc_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      CLR => AR(0),
      D => bin2gray(2),
      Q => wr_pntr_gc(2)
    );
\gnxpm_cdc.wr_pntr_gc_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      CLR => AR(0),
      D => bin2gray(3),
      Q => wr_pntr_gc(3)
    );
\gnxpm_cdc.wr_pntr_gc_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      CLR => AR(0),
      D => bin2gray(4),
      Q => wr_pntr_gc(4)
    );
\gnxpm_cdc.wr_pntr_gc_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      CLR => AR(0),
      D => bin2gray(5),
      Q => wr_pntr_gc(5)
    );
\gnxpm_cdc.wr_pntr_gc_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      CLR => AR(0),
      D => bin2gray(6),
      Q => wr_pntr_gc(6)
    );
\gnxpm_cdc.wr_pntr_gc_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      CLR => AR(0),
      D => bin2gray(7),
      Q => wr_pntr_gc(7)
    );
\gnxpm_cdc.wr_pntr_gc_reg[8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      CLR => AR(0),
      D => \gic0.gc0.count_d2_reg[8]\(8),
      Q => wr_pntr_gc(8)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity xcl_design_flash_programmer_0_memory is
  port (
    dout : out STD_LOGIC_VECTOR ( 31 downto 0 );
    wr_clk : in STD_LOGIC;
    din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 8 downto 0 );
    \gic0.gc0.count_d2_reg[5]\ : in STD_LOGIC_VECTOR ( 5 downto 0 );
    ram_full_fb_i_reg : in STD_LOGIC;
    \gic0.gc0.count_d2_reg[7]\ : in STD_LOGIC;
    \gic0.gc0.count_d2_reg[6]\ : in STD_LOGIC;
    ram_full_fb_i_reg_0 : in STD_LOGIC;
    \gic0.gc0.count_d2_reg[6]_0\ : in STD_LOGIC;
    ram_full_fb_i_reg_1 : in STD_LOGIC;
    ram_full_fb_i_reg_2 : in STD_LOGIC;
    \gic0.gc0.count_d2_reg[8]\ : in STD_LOGIC;
    ADDRG : in STD_LOGIC_VECTOR ( 5 downto 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    rd_clk : in STD_LOGIC;
    AR : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of xcl_design_flash_programmer_0_memory : entity is "memory";
end xcl_design_flash_programmer_0_memory;

architecture STRUCTURE of xcl_design_flash_programmer_0_memory is
begin
\gdm.dm_gen.dm\: entity work.xcl_design_flash_programmer_0_dmem
     port map (
      ADDRG(5 downto 0) => ADDRG(5 downto 0),
      AR(0) => AR(0),
      E(0) => E(0),
      Q(8 downto 0) => Q(8 downto 0),
      din(31 downto 0) => din(31 downto 0),
      dout(31 downto 0) => dout(31 downto 0),
      \gic0.gc0.count_d2_reg[5]\(5 downto 0) => \gic0.gc0.count_d2_reg[5]\(5 downto 0),
      \gic0.gc0.count_d2_reg[6]\ => \gic0.gc0.count_d2_reg[6]\,
      \gic0.gc0.count_d2_reg[6]_0\ => \gic0.gc0.count_d2_reg[6]_0\,
      \gic0.gc0.count_d2_reg[7]\ => \gic0.gc0.count_d2_reg[7]\,
      \gic0.gc0.count_d2_reg[8]\ => \gic0.gc0.count_d2_reg[8]\,
      ram_full_fb_i_reg => ram_full_fb_i_reg,
      ram_full_fb_i_reg_0 => ram_full_fb_i_reg_0,
      ram_full_fb_i_reg_1 => ram_full_fb_i_reg_1,
      ram_full_fb_i_reg_2 => ram_full_fb_i_reg_2,
      rd_clk => rd_clk,
      wr_clk => wr_clk
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity xcl_design_flash_programmer_0_rd_status_flags_as is
  port (
    empty : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    v1_reg : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \gc0.count_d1_reg[8]\ : in STD_LOGIC;
    v1_reg_0 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \gc0.count_reg[8]\ : in STD_LOGIC;
    rd_clk : in STD_LOGIC;
    \out\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    rd_en : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of xcl_design_flash_programmer_0_rd_status_flags_as : entity is "rd_status_flags_as";
end xcl_design_flash_programmer_0_rd_status_flags_as;

architecture STRUCTURE of xcl_design_flash_programmer_0_rd_status_flags_as is
  signal c0_n_0 : STD_LOGIC;
  signal comp1 : STD_LOGIC;
  signal ram_empty_fb_i : STD_LOGIC;
  attribute DONT_TOUCH : boolean;
  attribute DONT_TOUCH of ram_empty_fb_i : signal is std.standard.true;
  signal ram_empty_i : STD_LOGIC;
  attribute DONT_TOUCH of ram_empty_i : signal is std.standard.true;
  attribute DONT_TOUCH of ram_empty_fb_i_reg : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of ram_empty_fb_i_reg : label is "yes";
  attribute equivalent_register_removal : string;
  attribute equivalent_register_removal of ram_empty_fb_i_reg : label is "no";
  attribute DONT_TOUCH of ram_empty_i_reg : label is std.standard.true;
  attribute KEEP of ram_empty_i_reg : label is "yes";
  attribute equivalent_register_removal of ram_empty_i_reg : label is "no";
begin
  empty <= ram_empty_i;
c0: entity work.xcl_design_flash_programmer_0_compare_4
     port map (
      comp1 => comp1,
      \gc0.count_d1_reg[8]\ => \gc0.count_d1_reg[8]\,
      \out\ => ram_empty_fb_i,
      ram_empty_fb_i_reg => c0_n_0,
      rd_en => rd_en,
      v1_reg(3 downto 0) => v1_reg(3 downto 0)
    );
c1: entity work.xcl_design_flash_programmer_0_compare_5
     port map (
      comp1 => comp1,
      \gc0.count_reg[8]\ => \gc0.count_reg[8]\,
      v1_reg_0(3 downto 0) => v1_reg_0(3 downto 0)
    );
\gpr1.dout_i[31]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => rd_en,
      I1 => ram_empty_fb_i,
      O => E(0)
    );
ram_empty_fb_i_reg: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => c0_n_0,
      PRE => \out\(0),
      Q => ram_empty_fb_i
    );
ram_empty_i_reg: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => c0_n_0,
      PRE => \out\(0),
      Q => ram_empty_i
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity xcl_design_flash_programmer_0_reset_blk_ramfifo is
  port (
    \out\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \gc0.count_d1_reg[0]_rep\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \grstd1.grst_full.grst_f.rst_d3_reg_0\ : out STD_LOGIC;
    wr_rst_busy : out STD_LOGIC;
    rd_clk : in STD_LOGIC;
    wr_clk : in STD_LOGIC;
    rst : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of xcl_design_flash_programmer_0_reset_blk_ramfifo : entity is "reset_blk_ramfifo";
end xcl_design_flash_programmer_0_reset_blk_ramfifo;

architecture STRUCTURE of xcl_design_flash_programmer_0_reset_blk_ramfifo is
  signal \ngwrdrst.grst.g7serrst.gwrrd_rst_sync_stage[1].rrst_inst_n_1\ : STD_LOGIC;
  signal \ngwrdrst.grst.g7serrst.gwrrd_rst_sync_stage[1].wrst_inst_n_1\ : STD_LOGIC;
  signal \ngwrdrst.grst.g7serrst.gwrrd_rst_sync_stage[2].rrst_inst_n_0\ : STD_LOGIC;
  signal \ngwrdrst.grst.g7serrst.gwrrd_rst_sync_stage[2].wrst_inst_n_0\ : STD_LOGIC;
  signal p_7_out : STD_LOGIC;
  signal p_8_out : STD_LOGIC;
  signal rd_rst_asreg : STD_LOGIC;
  signal rd_rst_reg : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute DONT_TOUCH : boolean;
  attribute DONT_TOUCH of rd_rst_reg : signal is std.standard.true;
  signal rst_d1 : STD_LOGIC;
  attribute async_reg : string;
  attribute async_reg of rst_d1 : signal is "true";
  attribute msgon : string;
  attribute msgon of rst_d1 : signal is "true";
  signal rst_d2 : STD_LOGIC;
  attribute async_reg of rst_d2 : signal is "true";
  attribute msgon of rst_d2 : signal is "true";
  signal rst_d3 : STD_LOGIC;
  attribute async_reg of rst_d3 : signal is "true";
  attribute msgon of rst_d3 : signal is "true";
  signal rst_rd_reg1 : STD_LOGIC;
  attribute async_reg of rst_rd_reg1 : signal is "true";
  attribute msgon of rst_rd_reg1 : signal is "true";
  signal rst_rd_reg2 : STD_LOGIC;
  attribute async_reg of rst_rd_reg2 : signal is "true";
  attribute msgon of rst_rd_reg2 : signal is "true";
  signal rst_wr_reg1 : STD_LOGIC;
  attribute async_reg of rst_wr_reg1 : signal is "true";
  attribute msgon of rst_wr_reg1 : signal is "true";
  signal rst_wr_reg2 : STD_LOGIC;
  attribute async_reg of rst_wr_reg2 : signal is "true";
  attribute msgon of rst_wr_reg2 : signal is "true";
  signal wr_rst_asreg : STD_LOGIC;
  signal wr_rst_reg : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute DONT_TOUCH of wr_rst_reg : signal is std.standard.true;
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \grstd1.grst_full.grst_f.rst_d1_reg\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \grstd1.grst_full.grst_f.rst_d1_reg\ : label is "yes";
  attribute msgon of \grstd1.grst_full.grst_f.rst_d1_reg\ : label is "true";
  attribute ASYNC_REG_boolean of \grstd1.grst_full.grst_f.rst_d2_reg\ : label is std.standard.true;
  attribute KEEP of \grstd1.grst_full.grst_f.rst_d2_reg\ : label is "yes";
  attribute msgon of \grstd1.grst_full.grst_f.rst_d2_reg\ : label is "true";
  attribute ASYNC_REG_boolean of \grstd1.grst_full.grst_f.rst_d3_reg\ : label is std.standard.true;
  attribute KEEP of \grstd1.grst_full.grst_f.rst_d3_reg\ : label is "yes";
  attribute msgon of \grstd1.grst_full.grst_f.rst_d3_reg\ : label is "true";
  attribute DONT_TOUCH of \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[0]\ : label is std.standard.true;
  attribute KEEP of \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[0]\ : label is "yes";
  attribute equivalent_register_removal : string;
  attribute equivalent_register_removal of \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[0]\ : label is "no";
  attribute DONT_TOUCH of \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1]\ : label is std.standard.true;
  attribute KEEP of \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1]\ : label is "yes";
  attribute equivalent_register_removal of \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1]\ : label is "no";
  attribute DONT_TOUCH of \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[2]\ : label is std.standard.true;
  attribute KEEP of \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[2]\ : label is "yes";
  attribute equivalent_register_removal of \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[2]\ : label is "no";
  attribute ASYNC_REG_boolean of \ngwrdrst.grst.g7serrst.rst_rd_reg1_reg\ : label is std.standard.true;
  attribute KEEP of \ngwrdrst.grst.g7serrst.rst_rd_reg1_reg\ : label is "yes";
  attribute msgon of \ngwrdrst.grst.g7serrst.rst_rd_reg1_reg\ : label is "true";
  attribute ASYNC_REG_boolean of \ngwrdrst.grst.g7serrst.rst_rd_reg2_reg\ : label is std.standard.true;
  attribute KEEP of \ngwrdrst.grst.g7serrst.rst_rd_reg2_reg\ : label is "yes";
  attribute msgon of \ngwrdrst.grst.g7serrst.rst_rd_reg2_reg\ : label is "true";
  attribute ASYNC_REG_boolean of \ngwrdrst.grst.g7serrst.rst_wr_reg1_reg\ : label is std.standard.true;
  attribute KEEP of \ngwrdrst.grst.g7serrst.rst_wr_reg1_reg\ : label is "yes";
  attribute msgon of \ngwrdrst.grst.g7serrst.rst_wr_reg1_reg\ : label is "true";
  attribute ASYNC_REG_boolean of \ngwrdrst.grst.g7serrst.rst_wr_reg2_reg\ : label is std.standard.true;
  attribute KEEP of \ngwrdrst.grst.g7serrst.rst_wr_reg2_reg\ : label is "yes";
  attribute msgon of \ngwrdrst.grst.g7serrst.rst_wr_reg2_reg\ : label is "true";
  attribute DONT_TOUCH of \ngwrdrst.grst.g7serrst.wr_rst_reg_reg[0]\ : label is std.standard.true;
  attribute KEEP of \ngwrdrst.grst.g7serrst.wr_rst_reg_reg[0]\ : label is "yes";
  attribute equivalent_register_removal of \ngwrdrst.grst.g7serrst.wr_rst_reg_reg[0]\ : label is "no";
  attribute DONT_TOUCH of \ngwrdrst.grst.g7serrst.wr_rst_reg_reg[1]\ : label is std.standard.true;
  attribute KEEP of \ngwrdrst.grst.g7serrst.wr_rst_reg_reg[1]\ : label is "yes";
  attribute equivalent_register_removal of \ngwrdrst.grst.g7serrst.wr_rst_reg_reg[1]\ : label is "no";
  attribute DONT_TOUCH of \ngwrdrst.grst.g7serrst.wr_rst_reg_reg[2]\ : label is std.standard.true;
  attribute KEEP of \ngwrdrst.grst.g7serrst.wr_rst_reg_reg[2]\ : label is "yes";
  attribute equivalent_register_removal of \ngwrdrst.grst.g7serrst.wr_rst_reg_reg[2]\ : label is "no";
begin
  \gc0.count_d1_reg[0]_rep\(2 downto 0) <= rd_rst_reg(2 downto 0);
  \grstd1.grst_full.grst_f.rst_d3_reg_0\ <= rst_d2;
  \out\(1 downto 0) <= wr_rst_reg(1 downto 0);
  wr_rst_busy <= rst_d3;
\grstd1.grst_full.grst_f.rst_d1_reg\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => '0',
      PRE => rst_wr_reg2,
      Q => rst_d1
    );
\grstd1.grst_full.grst_f.rst_d2_reg\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => rst_d1,
      PRE => rst_wr_reg2,
      Q => rst_d2
    );
\grstd1.grst_full.grst_f.rst_d3_reg\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => rst_d2,
      PRE => rst_wr_reg2,
      Q => rst_d3
    );
\ngwrdrst.grst.g7serrst.gwrrd_rst_sync_stage[1].rrst_inst\: entity work.xcl_design_flash_programmer_0_synchronizer_ff
     port map (
      in0(0) => rd_rst_asreg,
      \ngwrdrst.grst.g7serrst.rd_rst_asreg_reg\ => \ngwrdrst.grst.g7serrst.gwrrd_rst_sync_stage[1].rrst_inst_n_1\,
      \out\ => p_7_out,
      rd_clk => rd_clk
    );
\ngwrdrst.grst.g7serrst.gwrrd_rst_sync_stage[1].wrst_inst\: entity work.xcl_design_flash_programmer_0_synchronizer_ff_0
     port map (
      in0(0) => wr_rst_asreg,
      \ngwrdrst.grst.g7serrst.wr_rst_asreg_reg\ => \ngwrdrst.grst.g7serrst.gwrrd_rst_sync_stage[1].wrst_inst_n_1\,
      \out\ => p_8_out,
      wr_clk => wr_clk
    );
\ngwrdrst.grst.g7serrst.gwrrd_rst_sync_stage[2].rrst_inst\: entity work.xcl_design_flash_programmer_0_synchronizer_ff_1
     port map (
      AS(0) => \ngwrdrst.grst.g7serrst.gwrrd_rst_sync_stage[2].rrst_inst_n_0\,
      in0(0) => rd_rst_asreg,
      \out\ => p_7_out,
      rd_clk => rd_clk
    );
\ngwrdrst.grst.g7serrst.gwrrd_rst_sync_stage[2].wrst_inst\: entity work.xcl_design_flash_programmer_0_synchronizer_ff_2
     port map (
      AS(0) => \ngwrdrst.grst.g7serrst.gwrrd_rst_sync_stage[2].wrst_inst_n_0\,
      in0(0) => wr_rst_asreg,
      \out\ => p_8_out,
      wr_clk => wr_clk
    );
\ngwrdrst.grst.g7serrst.rd_rst_asreg_reg\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => \ngwrdrst.grst.g7serrst.gwrrd_rst_sync_stage[1].rrst_inst_n_1\,
      PRE => rst_rd_reg2,
      Q => rd_rst_asreg
    );
\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[0]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => '0',
      PRE => \ngwrdrst.grst.g7serrst.gwrrd_rst_sync_stage[2].rrst_inst_n_0\,
      Q => rd_rst_reg(0)
    );
\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => '0',
      PRE => \ngwrdrst.grst.g7serrst.gwrrd_rst_sync_stage[2].rrst_inst_n_0\,
      Q => rd_rst_reg(1)
    );
\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[2]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => '0',
      PRE => \ngwrdrst.grst.g7serrst.gwrrd_rst_sync_stage[2].rrst_inst_n_0\,
      Q => rd_rst_reg(2)
    );
\ngwrdrst.grst.g7serrst.rst_rd_reg1_reg\: unisim.vcomponents.FDPE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => '0',
      PRE => rst,
      Q => rst_rd_reg1
    );
\ngwrdrst.grst.g7serrst.rst_rd_reg2_reg\: unisim.vcomponents.FDPE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => rst_rd_reg1,
      PRE => rst,
      Q => rst_rd_reg2
    );
\ngwrdrst.grst.g7serrst.rst_wr_reg1_reg\: unisim.vcomponents.FDPE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => '0',
      PRE => rst,
      Q => rst_wr_reg1
    );
\ngwrdrst.grst.g7serrst.rst_wr_reg2_reg\: unisim.vcomponents.FDPE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => rst_wr_reg1,
      PRE => rst,
      Q => rst_wr_reg2
    );
\ngwrdrst.grst.g7serrst.wr_rst_asreg_reg\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => \ngwrdrst.grst.g7serrst.gwrrd_rst_sync_stage[1].wrst_inst_n_1\,
      PRE => rst_wr_reg2,
      Q => wr_rst_asreg
    );
\ngwrdrst.grst.g7serrst.wr_rst_reg_reg[0]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => '0',
      PRE => \ngwrdrst.grst.g7serrst.gwrrd_rst_sync_stage[2].wrst_inst_n_0\,
      Q => wr_rst_reg(0)
    );
\ngwrdrst.grst.g7serrst.wr_rst_reg_reg[1]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => '0',
      PRE => \ngwrdrst.grst.g7serrst.gwrrd_rst_sync_stage[2].wrst_inst_n_0\,
      Q => wr_rst_reg(1)
    );
\ngwrdrst.grst.g7serrst.wr_rst_reg_reg[2]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => '0',
      PRE => \ngwrdrst.grst.g7serrst.gwrrd_rst_sync_stage[2].wrst_inst_n_0\,
      Q => wr_rst_reg(2)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity xcl_design_flash_programmer_0_wr_status_flags_as is
  port (
    full : out STD_LOGIC;
    \out\ : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    v1_reg : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \gnxpm_cdc.rd_pntr_bin_reg[8]\ : in STD_LOGIC;
    v1_reg_0 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \gnxpm_cdc.rd_pntr_bin_reg[8]_0\ : in STD_LOGIC;
    wr_clk : in STD_LOGIC;
    \grstd1.grst_full.grst_f.rst_d2_reg\ : in STD_LOGIC;
    wr_en : in STD_LOGIC;
    wr_rst_busy : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of xcl_design_flash_programmer_0_wr_status_flags_as : entity is "wr_status_flags_as";
end xcl_design_flash_programmer_0_wr_status_flags_as;

architecture STRUCTURE of xcl_design_flash_programmer_0_wr_status_flags_as is
  signal c2_n_0 : STD_LOGIC;
  signal comp1 : STD_LOGIC;
  signal ram_full_fb_i : STD_LOGIC;
  attribute DONT_TOUCH : boolean;
  attribute DONT_TOUCH of ram_full_fb_i : signal is std.standard.true;
  signal ram_full_i : STD_LOGIC;
  attribute DONT_TOUCH of ram_full_i : signal is std.standard.true;
  attribute DONT_TOUCH of ram_full_fb_i_reg : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of ram_full_fb_i_reg : label is "yes";
  attribute equivalent_register_removal : string;
  attribute equivalent_register_removal of ram_full_fb_i_reg : label is "no";
  attribute DONT_TOUCH of ram_full_i_reg : label is std.standard.true;
  attribute KEEP of ram_full_i_reg : label is "yes";
  attribute equivalent_register_removal of ram_full_i_reg : label is "no";
begin
  full <= ram_full_i;
  \out\ <= ram_full_fb_i;
c1: entity work.xcl_design_flash_programmer_0_compare
     port map (
      comp1 => comp1,
      \gnxpm_cdc.rd_pntr_bin_reg[8]\ => \gnxpm_cdc.rd_pntr_bin_reg[8]\,
      v1_reg(3 downto 0) => v1_reg(3 downto 0)
    );
c2: entity work.xcl_design_flash_programmer_0_compare_3
     port map (
      comp1 => comp1,
      \gnxpm_cdc.rd_pntr_bin_reg[8]\ => \gnxpm_cdc.rd_pntr_bin_reg[8]_0\,
      \out\ => ram_full_fb_i,
      ram_full_fb_i_reg => c2_n_0,
      v1_reg_0(3 downto 0) => v1_reg_0(3 downto 0),
      wr_en => wr_en,
      wr_rst_busy => wr_rst_busy
    );
\gic0.gc0.count_d1[8]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => wr_en,
      I1 => ram_full_fb_i,
      O => E(0)
    );
ram_full_fb_i_reg: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => c2_n_0,
      PRE => \grstd1.grst_full.grst_f.rst_d2_reg\,
      Q => ram_full_fb_i
    );
ram_full_i_reg: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => c2_n_0,
      PRE => \grstd1.grst_full.grst_f.rst_d2_reg\,
      Q => ram_full_i
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity xcl_design_flash_programmer_0_rd_logic is
  port (
    empty : out STD_LOGIC;
    \gc0.count_d1_reg[0]_rep\ : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 8 downto 0 );
    \gc0.count_d1_reg[7]\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    ADDRG : out STD_LOGIC_VECTOR ( 5 downto 0 );
    v1_reg : in STD_LOGIC_VECTOR ( 3 downto 0 );
    v1_reg_0 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    rd_clk : in STD_LOGIC;
    \out\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    rd_en : in STD_LOGIC;
    WR_PNTR_RD : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of xcl_design_flash_programmer_0_rd_logic : entity is "rd_logic";
end xcl_design_flash_programmer_0_rd_logic;

architecture STRUCTURE of xcl_design_flash_programmer_0_rd_logic is
  signal \^gc0.count_d1_reg[0]_rep\ : STD_LOGIC;
  signal rpntr_n_0 : STD_LOGIC;
  signal rpntr_n_10 : STD_LOGIC;
begin
  \gc0.count_d1_reg[0]_rep\ <= \^gc0.count_d1_reg[0]_rep\;
\gras.rsts\: entity work.xcl_design_flash_programmer_0_rd_status_flags_as
     port map (
      E(0) => \^gc0.count_d1_reg[0]_rep\,
      empty => empty,
      \gc0.count_d1_reg[8]\ => rpntr_n_0,
      \gc0.count_reg[8]\ => rpntr_n_10,
      \out\(0) => \out\(0),
      rd_clk => rd_clk,
      rd_en => rd_en,
      v1_reg(3 downto 0) => v1_reg(3 downto 0),
      v1_reg_0(3 downto 0) => v1_reg_0(3 downto 0)
    );
rpntr: entity work.xcl_design_flash_programmer_0_rd_bin_cntr
     port map (
      ADDRG(5 downto 0) => ADDRG(5 downto 0),
      E(0) => \^gc0.count_d1_reg[0]_rep\,
      Q(8 downto 0) => Q(8 downto 0),
      WR_PNTR_RD(0) => WR_PNTR_RD(0),
      \gc0.count_d1_reg[7]_0\(7 downto 0) => \gc0.count_d1_reg[7]\(7 downto 0),
      \out\(0) => \out\(0),
      ram_empty_fb_i_reg => rpntr_n_0,
      ram_empty_fb_i_reg_0 => rpntr_n_10,
      rd_clk => rd_clk
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity xcl_design_flash_programmer_0_wr_logic is
  port (
    full : out STD_LOGIC;
    prog_full : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 0 to 0 );
    \gpr1.dout_i_reg[28]\ : out STD_LOGIC;
    \gnxpm_cdc.wr_pntr_gc_reg[8]\ : out STD_LOGIC_VECTOR ( 8 downto 0 );
    \gpr1.dout_i_reg[28]_0\ : out STD_LOGIC;
    \gpr1.dout_i_reg[28]_1\ : out STD_LOGIC;
    \gpr1.dout_i_reg[28]_2\ : out STD_LOGIC;
    \gpr1.dout_i_reg[28]_3\ : out STD_LOGIC;
    \gpr1.dout_i_reg[28]_4\ : out STD_LOGIC;
    \gpr1.dout_i_reg[28]_5\ : out STD_LOGIC;
    \gpr1.dout_i_reg[28]_6\ : out STD_LOGIC;
    \gic0.gc0.count_d1_reg[8]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \gnxpm_cdc.rd_pntr_bin_reg[8]\ : in STD_LOGIC;
    \gnxpm_cdc.rd_pntr_bin_reg[8]_0\ : in STD_LOGIC;
    wr_clk : in STD_LOGIC;
    \out\ : in STD_LOGIC;
    RD_PNTR_WR : in STD_LOGIC_VECTOR ( 8 downto 0 );
    wr_en : in STD_LOGIC;
    wr_rst_busy : in STD_LOGIC;
    AR : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of xcl_design_flash_programmer_0_wr_logic : entity is "wr_logic";
end xcl_design_flash_programmer_0_wr_logic;

architecture STRUCTURE of xcl_design_flash_programmer_0_wr_logic is
  signal \c1/v1_reg\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \c2/v1_reg\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \gwas.wsts_n_1\ : STD_LOGIC;
  signal \gwas.wsts_n_2\ : STD_LOGIC;
  signal p_13_out : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal wpntr_n_0 : STD_LOGIC;
  signal wpntr_n_1 : STD_LOGIC;
  signal wpntr_n_17 : STD_LOGIC;
  signal wpntr_n_2 : STD_LOGIC;
  signal wpntr_n_3 : STD_LOGIC;
  signal wpntr_n_4 : STD_LOGIC;
  signal wpntr_n_5 : STD_LOGIC;
  signal wpntr_n_6 : STD_LOGIC;
  signal wpntr_n_7 : STD_LOGIC;
begin
\gwas.gpf.wrpf\: entity work.xcl_design_flash_programmer_0_wr_pf_as
     port map (
      AR(0) => AR(0),
      E(0) => \gwas.wsts_n_2\,
      Q(7 downto 0) => p_13_out(7 downto 0),
      S(7) => wpntr_n_0,
      S(6) => wpntr_n_1,
      S(5) => wpntr_n_2,
      S(4) => wpntr_n_3,
      S(3) => wpntr_n_4,
      S(2) => wpntr_n_5,
      S(1) => wpntr_n_6,
      S(0) => wpntr_n_7,
      \gic0.gc0.count_d1_reg[8]\(0) => wpntr_n_17,
      \out\ => \out\,
      prog_full => prog_full,
      ram_full_fb_i_reg => \gwas.wsts_n_1\,
      wr_clk => wr_clk,
      wr_rst_busy => wr_rst_busy
    );
\gwas.wsts\: entity work.xcl_design_flash_programmer_0_wr_status_flags_as
     port map (
      E(0) => \gwas.wsts_n_2\,
      full => full,
      \gnxpm_cdc.rd_pntr_bin_reg[8]\ => \gnxpm_cdc.rd_pntr_bin_reg[8]\,
      \gnxpm_cdc.rd_pntr_bin_reg[8]_0\ => \gnxpm_cdc.rd_pntr_bin_reg[8]_0\,
      \grstd1.grst_full.grst_f.rst_d2_reg\ => \out\,
      \out\ => \gwas.wsts_n_1\,
      v1_reg(3 downto 0) => \c1/v1_reg\(3 downto 0),
      v1_reg_0(3 downto 0) => \c2/v1_reg\(3 downto 0),
      wr_clk => wr_clk,
      wr_en => wr_en,
      wr_rst_busy => wr_rst_busy
    );
wpntr: entity work.xcl_design_flash_programmer_0_wr_bin_cntr
     port map (
      AR(0) => AR(0),
      E(0) => \gwas.wsts_n_2\,
      Q(8) => Q(0),
      Q(7 downto 0) => p_13_out(7 downto 0),
      RD_PNTR_WR(8 downto 0) => RD_PNTR_WR(8 downto 0),
      S(7) => wpntr_n_0,
      S(6) => wpntr_n_1,
      S(5) => wpntr_n_2,
      S(4) => wpntr_n_3,
      S(3) => wpntr_n_4,
      S(2) => wpntr_n_5,
      S(1) => wpntr_n_6,
      S(0) => wpntr_n_7,
      \gdiff.diff_pntr_pad_reg[9]\(0) => wpntr_n_17,
      \gic0.gc0.count_d1_reg[8]_0\(0) => \gic0.gc0.count_d1_reg[8]\(0),
      \gnxpm_cdc.wr_pntr_gc_reg[8]\(8 downto 0) => \gnxpm_cdc.wr_pntr_gc_reg[8]\(8 downto 0),
      \gpr1.dout_i_reg[28]\ => \gpr1.dout_i_reg[28]\,
      \gpr1.dout_i_reg[28]_0\ => \gpr1.dout_i_reg[28]_0\,
      \gpr1.dout_i_reg[28]_1\ => \gpr1.dout_i_reg[28]_1\,
      \gpr1.dout_i_reg[28]_2\ => \gpr1.dout_i_reg[28]_2\,
      \gpr1.dout_i_reg[28]_3\ => \gpr1.dout_i_reg[28]_3\,
      \gpr1.dout_i_reg[28]_4\ => \gpr1.dout_i_reg[28]_4\,
      \gpr1.dout_i_reg[28]_5\ => \gpr1.dout_i_reg[28]_5\,
      \gpr1.dout_i_reg[28]_6\ => \gpr1.dout_i_reg[28]_6\,
      \out\ => \gwas.wsts_n_1\,
      v1_reg(3 downto 0) => \c1/v1_reg\(3 downto 0),
      v1_reg_0(3 downto 0) => \c2/v1_reg\(3 downto 0),
      wr_clk => wr_clk,
      wr_en => wr_en
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity xcl_design_flash_programmer_0_fifo_generator_ramfifo is
  port (
    wr_rst_busy : out STD_LOGIC;
    empty : out STD_LOGIC;
    full : out STD_LOGIC;
    dout : out STD_LOGIC_VECTOR ( 31 downto 0 );
    prog_full : out STD_LOGIC;
    rd_en : in STD_LOGIC;
    wr_en : in STD_LOGIC;
    wr_clk : in STD_LOGIC;
    rd_clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    din : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of xcl_design_flash_programmer_0_fifo_generator_ramfifo : entity is "fifo_generator_ramfifo";
end xcl_design_flash_programmer_0_fifo_generator_ramfifo;

architecture STRUCTURE of xcl_design_flash_programmer_0_fifo_generator_ramfifo is
  signal \gntv_or_sync_fifo.gcx.clkx_n_0\ : STD_LOGIC;
  signal \gntv_or_sync_fifo.gcx.clkx_n_10\ : STD_LOGIC;
  signal \gntv_or_sync_fifo.gl0.rd_n_1\ : STD_LOGIC;
  signal \gntv_or_sync_fifo.gl0.rd_n_19\ : STD_LOGIC;
  signal \gntv_or_sync_fifo.gl0.rd_n_20\ : STD_LOGIC;
  signal \gntv_or_sync_fifo.gl0.rd_n_21\ : STD_LOGIC;
  signal \gntv_or_sync_fifo.gl0.rd_n_22\ : STD_LOGIC;
  signal \gntv_or_sync_fifo.gl0.rd_n_23\ : STD_LOGIC;
  signal \gntv_or_sync_fifo.gl0.rd_n_24\ : STD_LOGIC;
  signal \gntv_or_sync_fifo.gl0.wr_n_13\ : STD_LOGIC;
  signal \gntv_or_sync_fifo.gl0.wr_n_14\ : STD_LOGIC;
  signal \gntv_or_sync_fifo.gl0.wr_n_15\ : STD_LOGIC;
  signal \gntv_or_sync_fifo.gl0.wr_n_16\ : STD_LOGIC;
  signal \gntv_or_sync_fifo.gl0.wr_n_17\ : STD_LOGIC;
  signal \gntv_or_sync_fifo.gl0.wr_n_18\ : STD_LOGIC;
  signal \gntv_or_sync_fifo.gl0.wr_n_19\ : STD_LOGIC;
  signal \gntv_or_sync_fifo.gl0.wr_n_3\ : STD_LOGIC;
  signal \gras.rsts/c0/v1_reg\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \gras.rsts/c1/v1_reg\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal p_0_out_0 : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal p_12_out : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal p_13_out : STD_LOGIC_VECTOR ( 8 to 8 );
  signal p_22_out : STD_LOGIC_VECTOR ( 8 to 8 );
  signal p_23_out : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal rd_pntr_plus1 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal rd_rst_i : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal rst_full_ff_i : STD_LOGIC;
  signal wr_pntr_plus2 : STD_LOGIC_VECTOR ( 8 to 8 );
  signal \^wr_rst_busy\ : STD_LOGIC;
  signal wr_rst_i : STD_LOGIC_VECTOR ( 1 downto 0 );
begin
  wr_rst_busy <= \^wr_rst_busy\;
\gntv_or_sync_fifo.gcx.clkx\: entity work.xcl_design_flash_programmer_0_clk_x_pntrs
     port map (
      AR(0) => wr_rst_i(0),
      D(0) => wr_pntr_plus2(8),
      Q(0) => p_13_out(8),
      RD_PNTR_WR(8 downto 0) => p_23_out(8 downto 0),
      WR_PNTR_RD(0) => p_22_out(8),
      \gc0.count_d1_reg[8]\(8 downto 0) => p_0_out_0(8 downto 0),
      \gc0.count_reg[7]\(7 downto 0) => rd_pntr_plus1(7 downto 0),
      \gic0.gc0.count_d2_reg[8]\(8 downto 0) => p_12_out(8 downto 0),
      \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1]\(0) => rd_rst_i(1),
      ram_full_fb_i_reg => \gntv_or_sync_fifo.gcx.clkx_n_0\,
      ram_full_fb_i_reg_0 => \gntv_or_sync_fifo.gcx.clkx_n_10\,
      rd_clk => rd_clk,
      v1_reg(3 downto 0) => \gras.rsts/c0/v1_reg\(3 downto 0),
      v1_reg_0(3 downto 0) => \gras.rsts/c1/v1_reg\(3 downto 0),
      wr_clk => wr_clk
    );
\gntv_or_sync_fifo.gl0.rd\: entity work.xcl_design_flash_programmer_0_rd_logic
     port map (
      ADDRG(5) => \gntv_or_sync_fifo.gl0.rd_n_19\,
      ADDRG(4) => \gntv_or_sync_fifo.gl0.rd_n_20\,
      ADDRG(3) => \gntv_or_sync_fifo.gl0.rd_n_21\,
      ADDRG(2) => \gntv_or_sync_fifo.gl0.rd_n_22\,
      ADDRG(1) => \gntv_or_sync_fifo.gl0.rd_n_23\,
      ADDRG(0) => \gntv_or_sync_fifo.gl0.rd_n_24\,
      Q(8 downto 0) => p_0_out_0(8 downto 0),
      WR_PNTR_RD(0) => p_22_out(8),
      empty => empty,
      \gc0.count_d1_reg[0]_rep\ => \gntv_or_sync_fifo.gl0.rd_n_1\,
      \gc0.count_d1_reg[7]\(7 downto 0) => rd_pntr_plus1(7 downto 0),
      \out\(0) => rd_rst_i(2),
      rd_clk => rd_clk,
      rd_en => rd_en,
      v1_reg(3 downto 0) => \gras.rsts/c0/v1_reg\(3 downto 0),
      v1_reg_0(3 downto 0) => \gras.rsts/c1/v1_reg\(3 downto 0)
    );
\gntv_or_sync_fifo.gl0.wr\: entity work.xcl_design_flash_programmer_0_wr_logic
     port map (
      AR(0) => wr_rst_i(1),
      Q(0) => p_13_out(8),
      RD_PNTR_WR(8 downto 0) => p_23_out(8 downto 0),
      full => full,
      \gic0.gc0.count_d1_reg[8]\(0) => wr_pntr_plus2(8),
      \gnxpm_cdc.rd_pntr_bin_reg[8]\ => \gntv_or_sync_fifo.gcx.clkx_n_0\,
      \gnxpm_cdc.rd_pntr_bin_reg[8]_0\ => \gntv_or_sync_fifo.gcx.clkx_n_10\,
      \gnxpm_cdc.wr_pntr_gc_reg[8]\(8 downto 0) => p_12_out(8 downto 0),
      \gpr1.dout_i_reg[28]\ => \gntv_or_sync_fifo.gl0.wr_n_3\,
      \gpr1.dout_i_reg[28]_0\ => \gntv_or_sync_fifo.gl0.wr_n_13\,
      \gpr1.dout_i_reg[28]_1\ => \gntv_or_sync_fifo.gl0.wr_n_14\,
      \gpr1.dout_i_reg[28]_2\ => \gntv_or_sync_fifo.gl0.wr_n_15\,
      \gpr1.dout_i_reg[28]_3\ => \gntv_or_sync_fifo.gl0.wr_n_16\,
      \gpr1.dout_i_reg[28]_4\ => \gntv_or_sync_fifo.gl0.wr_n_17\,
      \gpr1.dout_i_reg[28]_5\ => \gntv_or_sync_fifo.gl0.wr_n_18\,
      \gpr1.dout_i_reg[28]_6\ => \gntv_or_sync_fifo.gl0.wr_n_19\,
      \out\ => rst_full_ff_i,
      prog_full => prog_full,
      wr_clk => wr_clk,
      wr_en => wr_en,
      wr_rst_busy => \^wr_rst_busy\
    );
\gntv_or_sync_fifo.mem\: entity work.xcl_design_flash_programmer_0_memory
     port map (
      ADDRG(5) => \gntv_or_sync_fifo.gl0.rd_n_19\,
      ADDRG(4) => \gntv_or_sync_fifo.gl0.rd_n_20\,
      ADDRG(3) => \gntv_or_sync_fifo.gl0.rd_n_21\,
      ADDRG(2) => \gntv_or_sync_fifo.gl0.rd_n_22\,
      ADDRG(1) => \gntv_or_sync_fifo.gl0.rd_n_23\,
      ADDRG(0) => \gntv_or_sync_fifo.gl0.rd_n_24\,
      AR(0) => rd_rst_i(0),
      E(0) => \gntv_or_sync_fifo.gl0.rd_n_1\,
      Q(8 downto 0) => p_0_out_0(8 downto 0),
      din(31 downto 0) => din(31 downto 0),
      dout(31 downto 0) => dout(31 downto 0),
      \gic0.gc0.count_d2_reg[5]\(5 downto 0) => p_12_out(5 downto 0),
      \gic0.gc0.count_d2_reg[6]\ => \gntv_or_sync_fifo.gl0.wr_n_14\,
      \gic0.gc0.count_d2_reg[6]_0\ => \gntv_or_sync_fifo.gl0.wr_n_17\,
      \gic0.gc0.count_d2_reg[7]\ => \gntv_or_sync_fifo.gl0.wr_n_13\,
      \gic0.gc0.count_d2_reg[8]\ => \gntv_or_sync_fifo.gl0.wr_n_15\,
      ram_full_fb_i_reg => \gntv_or_sync_fifo.gl0.wr_n_3\,
      ram_full_fb_i_reg_0 => \gntv_or_sync_fifo.gl0.wr_n_16\,
      ram_full_fb_i_reg_1 => \gntv_or_sync_fifo.gl0.wr_n_18\,
      ram_full_fb_i_reg_2 => \gntv_or_sync_fifo.gl0.wr_n_19\,
      rd_clk => rd_clk,
      wr_clk => wr_clk
    );
rstblk: entity work.xcl_design_flash_programmer_0_reset_blk_ramfifo
     port map (
      \gc0.count_d1_reg[0]_rep\(2 downto 0) => rd_rst_i(2 downto 0),
      \grstd1.grst_full.grst_f.rst_d3_reg_0\ => rst_full_ff_i,
      \out\(1 downto 0) => wr_rst_i(1 downto 0),
      rd_clk => rd_clk,
      rst => rst,
      wr_clk => wr_clk,
      wr_rst_busy => \^wr_rst_busy\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity xcl_design_flash_programmer_0_fifo_generator_top is
  port (
    wr_rst_busy : out STD_LOGIC;
    empty : out STD_LOGIC;
    full : out STD_LOGIC;
    dout : out STD_LOGIC_VECTOR ( 31 downto 0 );
    prog_full : out STD_LOGIC;
    rd_en : in STD_LOGIC;
    wr_en : in STD_LOGIC;
    wr_clk : in STD_LOGIC;
    rd_clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    din : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of xcl_design_flash_programmer_0_fifo_generator_top : entity is "fifo_generator_top";
end xcl_design_flash_programmer_0_fifo_generator_top;

architecture STRUCTURE of xcl_design_flash_programmer_0_fifo_generator_top is
begin
\grf.rf\: entity work.xcl_design_flash_programmer_0_fifo_generator_ramfifo
     port map (
      din(31 downto 0) => din(31 downto 0),
      dout(31 downto 0) => dout(31 downto 0),
      empty => empty,
      full => full,
      prog_full => prog_full,
      rd_clk => rd_clk,
      rd_en => rd_en,
      rst => rst,
      wr_clk => wr_clk,
      wr_en => wr_en,
      wr_rst_busy => wr_rst_busy
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity xcl_design_flash_programmer_0_fifo_generator_v13_1_2_synth is
  port (
    wr_rst_busy : out STD_LOGIC;
    empty : out STD_LOGIC;
    full : out STD_LOGIC;
    dout : out STD_LOGIC_VECTOR ( 31 downto 0 );
    prog_full : out STD_LOGIC;
    rd_en : in STD_LOGIC;
    wr_en : in STD_LOGIC;
    wr_clk : in STD_LOGIC;
    rd_clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    din : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of xcl_design_flash_programmer_0_fifo_generator_v13_1_2_synth : entity is "fifo_generator_v13_1_2_synth";
end xcl_design_flash_programmer_0_fifo_generator_v13_1_2_synth;

architecture STRUCTURE of xcl_design_flash_programmer_0_fifo_generator_v13_1_2_synth is
begin
\gconvfifo.rf\: entity work.xcl_design_flash_programmer_0_fifo_generator_top
     port map (
      din(31 downto 0) => din(31 downto 0),
      dout(31 downto 0) => dout(31 downto 0),
      empty => empty,
      full => full,
      prog_full => prog_full,
      rd_clk => rd_clk,
      rd_en => rd_en,
      rst => rst,
      wr_clk => wr_clk,
      wr_en => wr_en,
      wr_rst_busy => wr_rst_busy
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity xcl_design_flash_programmer_0_fifo_generator_v13_1_2 is
  port (
    backup : in STD_LOGIC;
    backup_marker : in STD_LOGIC;
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    srst : in STD_LOGIC;
    wr_clk : in STD_LOGIC;
    wr_rst : in STD_LOGIC;
    rd_clk : in STD_LOGIC;
    rd_rst : in STD_LOGIC;
    din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    wr_en : in STD_LOGIC;
    rd_en : in STD_LOGIC;
    prog_empty_thresh : in STD_LOGIC_VECTOR ( 8 downto 0 );
    prog_empty_thresh_assert : in STD_LOGIC_VECTOR ( 8 downto 0 );
    prog_empty_thresh_negate : in STD_LOGIC_VECTOR ( 8 downto 0 );
    prog_full_thresh : in STD_LOGIC_VECTOR ( 8 downto 0 );
    prog_full_thresh_assert : in STD_LOGIC_VECTOR ( 8 downto 0 );
    prog_full_thresh_negate : in STD_LOGIC_VECTOR ( 8 downto 0 );
    int_clk : in STD_LOGIC;
    injectdbiterr : in STD_LOGIC;
    injectsbiterr : in STD_LOGIC;
    sleep : in STD_LOGIC;
    dout : out STD_LOGIC_VECTOR ( 31 downto 0 );
    full : out STD_LOGIC;
    almost_full : out STD_LOGIC;
    wr_ack : out STD_LOGIC;
    overflow : out STD_LOGIC;
    empty : out STD_LOGIC;
    almost_empty : out STD_LOGIC;
    valid : out STD_LOGIC;
    underflow : out STD_LOGIC;
    data_count : out STD_LOGIC_VECTOR ( 8 downto 0 );
    rd_data_count : out STD_LOGIC_VECTOR ( 8 downto 0 );
    wr_data_count : out STD_LOGIC_VECTOR ( 8 downto 0 );
    prog_full : out STD_LOGIC;
    prog_empty : out STD_LOGIC;
    sbiterr : out STD_LOGIC;
    dbiterr : out STD_LOGIC;
    wr_rst_busy : out STD_LOGIC;
    rd_rst_busy : out STD_LOGIC;
    m_aclk : in STD_LOGIC;
    s_aclk : in STD_LOGIC;
    s_aresetn : in STD_LOGIC;
    m_aclk_en : in STD_LOGIC;
    s_aclk_en : in STD_LOGIC;
    s_axi_awid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awuser : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_wdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_wlast : in STD_LOGIC;
    s_axi_wuser : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bid : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_buser : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    m_axi_awid : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_awlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awuser : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_awvalid : out STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    m_axi_wid : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_wdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_wlast : out STD_LOGIC;
    m_axi_wuser : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_wvalid : out STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    m_axi_bid : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_buser : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_bvalid : in STD_LOGIC;
    m_axi_bready : out STD_LOGIC;
    s_axi_arid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_aruser : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rid : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rlast : out STD_LOGIC;
    s_axi_ruser : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    m_axi_arid : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_arlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_aruser : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_arvalid : out STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    m_axi_rid : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_rdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rlast : in STD_LOGIC;
    m_axi_ruser : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_rvalid : in STD_LOGIC;
    m_axi_rready : out STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    s_axis_tready : out STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axis_tstrb : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axis_tkeep : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axis_tlast : in STD_LOGIC;
    s_axis_tid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axis_tdest : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axis_tuser : in STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axis_tvalid : out STD_LOGIC;
    m_axis_tready : in STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axis_tstrb : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_tkeep : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_tlast : out STD_LOGIC;
    m_axis_tid : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_tdest : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_tuser : out STD_LOGIC_VECTOR ( 3 downto 0 );
    axi_aw_injectsbiterr : in STD_LOGIC;
    axi_aw_injectdbiterr : in STD_LOGIC;
    axi_aw_prog_full_thresh : in STD_LOGIC_VECTOR ( 3 downto 0 );
    axi_aw_prog_empty_thresh : in STD_LOGIC_VECTOR ( 3 downto 0 );
    axi_aw_data_count : out STD_LOGIC_VECTOR ( 4 downto 0 );
    axi_aw_wr_data_count : out STD_LOGIC_VECTOR ( 4 downto 0 );
    axi_aw_rd_data_count : out STD_LOGIC_VECTOR ( 4 downto 0 );
    axi_aw_sbiterr : out STD_LOGIC;
    axi_aw_dbiterr : out STD_LOGIC;
    axi_aw_overflow : out STD_LOGIC;
    axi_aw_underflow : out STD_LOGIC;
    axi_aw_prog_full : out STD_LOGIC;
    axi_aw_prog_empty : out STD_LOGIC;
    axi_w_injectsbiterr : in STD_LOGIC;
    axi_w_injectdbiterr : in STD_LOGIC;
    axi_w_prog_full_thresh : in STD_LOGIC_VECTOR ( 9 downto 0 );
    axi_w_prog_empty_thresh : in STD_LOGIC_VECTOR ( 9 downto 0 );
    axi_w_data_count : out STD_LOGIC_VECTOR ( 10 downto 0 );
    axi_w_wr_data_count : out STD_LOGIC_VECTOR ( 10 downto 0 );
    axi_w_rd_data_count : out STD_LOGIC_VECTOR ( 10 downto 0 );
    axi_w_sbiterr : out STD_LOGIC;
    axi_w_dbiterr : out STD_LOGIC;
    axi_w_overflow : out STD_LOGIC;
    axi_w_underflow : out STD_LOGIC;
    axi_w_prog_full : out STD_LOGIC;
    axi_w_prog_empty : out STD_LOGIC;
    axi_b_injectsbiterr : in STD_LOGIC;
    axi_b_injectdbiterr : in STD_LOGIC;
    axi_b_prog_full_thresh : in STD_LOGIC_VECTOR ( 3 downto 0 );
    axi_b_prog_empty_thresh : in STD_LOGIC_VECTOR ( 3 downto 0 );
    axi_b_data_count : out STD_LOGIC_VECTOR ( 4 downto 0 );
    axi_b_wr_data_count : out STD_LOGIC_VECTOR ( 4 downto 0 );
    axi_b_rd_data_count : out STD_LOGIC_VECTOR ( 4 downto 0 );
    axi_b_sbiterr : out STD_LOGIC;
    axi_b_dbiterr : out STD_LOGIC;
    axi_b_overflow : out STD_LOGIC;
    axi_b_underflow : out STD_LOGIC;
    axi_b_prog_full : out STD_LOGIC;
    axi_b_prog_empty : out STD_LOGIC;
    axi_ar_injectsbiterr : in STD_LOGIC;
    axi_ar_injectdbiterr : in STD_LOGIC;
    axi_ar_prog_full_thresh : in STD_LOGIC_VECTOR ( 3 downto 0 );
    axi_ar_prog_empty_thresh : in STD_LOGIC_VECTOR ( 3 downto 0 );
    axi_ar_data_count : out STD_LOGIC_VECTOR ( 4 downto 0 );
    axi_ar_wr_data_count : out STD_LOGIC_VECTOR ( 4 downto 0 );
    axi_ar_rd_data_count : out STD_LOGIC_VECTOR ( 4 downto 0 );
    axi_ar_sbiterr : out STD_LOGIC;
    axi_ar_dbiterr : out STD_LOGIC;
    axi_ar_overflow : out STD_LOGIC;
    axi_ar_underflow : out STD_LOGIC;
    axi_ar_prog_full : out STD_LOGIC;
    axi_ar_prog_empty : out STD_LOGIC;
    axi_r_injectsbiterr : in STD_LOGIC;
    axi_r_injectdbiterr : in STD_LOGIC;
    axi_r_prog_full_thresh : in STD_LOGIC_VECTOR ( 9 downto 0 );
    axi_r_prog_empty_thresh : in STD_LOGIC_VECTOR ( 9 downto 0 );
    axi_r_data_count : out STD_LOGIC_VECTOR ( 10 downto 0 );
    axi_r_wr_data_count : out STD_LOGIC_VECTOR ( 10 downto 0 );
    axi_r_rd_data_count : out STD_LOGIC_VECTOR ( 10 downto 0 );
    axi_r_sbiterr : out STD_LOGIC;
    axi_r_dbiterr : out STD_LOGIC;
    axi_r_overflow : out STD_LOGIC;
    axi_r_underflow : out STD_LOGIC;
    axi_r_prog_full : out STD_LOGIC;
    axi_r_prog_empty : out STD_LOGIC;
    axis_injectsbiterr : in STD_LOGIC;
    axis_injectdbiterr : in STD_LOGIC;
    axis_prog_full_thresh : in STD_LOGIC_VECTOR ( 9 downto 0 );
    axis_prog_empty_thresh : in STD_LOGIC_VECTOR ( 9 downto 0 );
    axis_data_count : out STD_LOGIC_VECTOR ( 10 downto 0 );
    axis_wr_data_count : out STD_LOGIC_VECTOR ( 10 downto 0 );
    axis_rd_data_count : out STD_LOGIC_VECTOR ( 10 downto 0 );
    axis_sbiterr : out STD_LOGIC;
    axis_dbiterr : out STD_LOGIC;
    axis_overflow : out STD_LOGIC;
    axis_underflow : out STD_LOGIC;
    axis_prog_full : out STD_LOGIC;
    axis_prog_empty : out STD_LOGIC
  );
  attribute C_ADD_NGC_CONSTRAINT : integer;
  attribute C_ADD_NGC_CONSTRAINT of xcl_design_flash_programmer_0_fifo_generator_v13_1_2 : entity is 0;
  attribute C_APPLICATION_TYPE_AXIS : integer;
  attribute C_APPLICATION_TYPE_AXIS of xcl_design_flash_programmer_0_fifo_generator_v13_1_2 : entity is 0;
  attribute C_APPLICATION_TYPE_RACH : integer;
  attribute C_APPLICATION_TYPE_RACH of xcl_design_flash_programmer_0_fifo_generator_v13_1_2 : entity is 0;
  attribute C_APPLICATION_TYPE_RDCH : integer;
  attribute C_APPLICATION_TYPE_RDCH of xcl_design_flash_programmer_0_fifo_generator_v13_1_2 : entity is 0;
  attribute C_APPLICATION_TYPE_WACH : integer;
  attribute C_APPLICATION_TYPE_WACH of xcl_design_flash_programmer_0_fifo_generator_v13_1_2 : entity is 0;
  attribute C_APPLICATION_TYPE_WDCH : integer;
  attribute C_APPLICATION_TYPE_WDCH of xcl_design_flash_programmer_0_fifo_generator_v13_1_2 : entity is 0;
  attribute C_APPLICATION_TYPE_WRCH : integer;
  attribute C_APPLICATION_TYPE_WRCH of xcl_design_flash_programmer_0_fifo_generator_v13_1_2 : entity is 0;
  attribute C_AXIS_TDATA_WIDTH : integer;
  attribute C_AXIS_TDATA_WIDTH of xcl_design_flash_programmer_0_fifo_generator_v13_1_2 : entity is 8;
  attribute C_AXIS_TDEST_WIDTH : integer;
  attribute C_AXIS_TDEST_WIDTH of xcl_design_flash_programmer_0_fifo_generator_v13_1_2 : entity is 1;
  attribute C_AXIS_TID_WIDTH : integer;
  attribute C_AXIS_TID_WIDTH of xcl_design_flash_programmer_0_fifo_generator_v13_1_2 : entity is 1;
  attribute C_AXIS_TKEEP_WIDTH : integer;
  attribute C_AXIS_TKEEP_WIDTH of xcl_design_flash_programmer_0_fifo_generator_v13_1_2 : entity is 1;
  attribute C_AXIS_TSTRB_WIDTH : integer;
  attribute C_AXIS_TSTRB_WIDTH of xcl_design_flash_programmer_0_fifo_generator_v13_1_2 : entity is 1;
  attribute C_AXIS_TUSER_WIDTH : integer;
  attribute C_AXIS_TUSER_WIDTH of xcl_design_flash_programmer_0_fifo_generator_v13_1_2 : entity is 4;
  attribute C_AXIS_TYPE : integer;
  attribute C_AXIS_TYPE of xcl_design_flash_programmer_0_fifo_generator_v13_1_2 : entity is 0;
  attribute C_AXI_ADDR_WIDTH : integer;
  attribute C_AXI_ADDR_WIDTH of xcl_design_flash_programmer_0_fifo_generator_v13_1_2 : entity is 32;
  attribute C_AXI_ARUSER_WIDTH : integer;
  attribute C_AXI_ARUSER_WIDTH of xcl_design_flash_programmer_0_fifo_generator_v13_1_2 : entity is 1;
  attribute C_AXI_AWUSER_WIDTH : integer;
  attribute C_AXI_AWUSER_WIDTH of xcl_design_flash_programmer_0_fifo_generator_v13_1_2 : entity is 1;
  attribute C_AXI_BUSER_WIDTH : integer;
  attribute C_AXI_BUSER_WIDTH of xcl_design_flash_programmer_0_fifo_generator_v13_1_2 : entity is 1;
  attribute C_AXI_DATA_WIDTH : integer;
  attribute C_AXI_DATA_WIDTH of xcl_design_flash_programmer_0_fifo_generator_v13_1_2 : entity is 64;
  attribute C_AXI_ID_WIDTH : integer;
  attribute C_AXI_ID_WIDTH of xcl_design_flash_programmer_0_fifo_generator_v13_1_2 : entity is 1;
  attribute C_AXI_LEN_WIDTH : integer;
  attribute C_AXI_LEN_WIDTH of xcl_design_flash_programmer_0_fifo_generator_v13_1_2 : entity is 8;
  attribute C_AXI_LOCK_WIDTH : integer;
  attribute C_AXI_LOCK_WIDTH of xcl_design_flash_programmer_0_fifo_generator_v13_1_2 : entity is 1;
  attribute C_AXI_RUSER_WIDTH : integer;
  attribute C_AXI_RUSER_WIDTH of xcl_design_flash_programmer_0_fifo_generator_v13_1_2 : entity is 1;
  attribute C_AXI_TYPE : integer;
  attribute C_AXI_TYPE of xcl_design_flash_programmer_0_fifo_generator_v13_1_2 : entity is 1;
  attribute C_AXI_WUSER_WIDTH : integer;
  attribute C_AXI_WUSER_WIDTH of xcl_design_flash_programmer_0_fifo_generator_v13_1_2 : entity is 1;
  attribute C_COMMON_CLOCK : integer;
  attribute C_COMMON_CLOCK of xcl_design_flash_programmer_0_fifo_generator_v13_1_2 : entity is 0;
  attribute C_COUNT_TYPE : integer;
  attribute C_COUNT_TYPE of xcl_design_flash_programmer_0_fifo_generator_v13_1_2 : entity is 0;
  attribute C_DATA_COUNT_WIDTH : integer;
  attribute C_DATA_COUNT_WIDTH of xcl_design_flash_programmer_0_fifo_generator_v13_1_2 : entity is 9;
  attribute C_DEFAULT_VALUE : string;
  attribute C_DEFAULT_VALUE of xcl_design_flash_programmer_0_fifo_generator_v13_1_2 : entity is "BlankString";
  attribute C_DIN_WIDTH : integer;
  attribute C_DIN_WIDTH of xcl_design_flash_programmer_0_fifo_generator_v13_1_2 : entity is 32;
  attribute C_DIN_WIDTH_AXIS : integer;
  attribute C_DIN_WIDTH_AXIS of xcl_design_flash_programmer_0_fifo_generator_v13_1_2 : entity is 1;
  attribute C_DIN_WIDTH_RACH : integer;
  attribute C_DIN_WIDTH_RACH of xcl_design_flash_programmer_0_fifo_generator_v13_1_2 : entity is 32;
  attribute C_DIN_WIDTH_RDCH : integer;
  attribute C_DIN_WIDTH_RDCH of xcl_design_flash_programmer_0_fifo_generator_v13_1_2 : entity is 64;
  attribute C_DIN_WIDTH_WACH : integer;
  attribute C_DIN_WIDTH_WACH of xcl_design_flash_programmer_0_fifo_generator_v13_1_2 : entity is 1;
  attribute C_DIN_WIDTH_WDCH : integer;
  attribute C_DIN_WIDTH_WDCH of xcl_design_flash_programmer_0_fifo_generator_v13_1_2 : entity is 64;
  attribute C_DIN_WIDTH_WRCH : integer;
  attribute C_DIN_WIDTH_WRCH of xcl_design_flash_programmer_0_fifo_generator_v13_1_2 : entity is 2;
  attribute C_DOUT_RST_VAL : string;
  attribute C_DOUT_RST_VAL of xcl_design_flash_programmer_0_fifo_generator_v13_1_2 : entity is "0";
  attribute C_DOUT_WIDTH : integer;
  attribute C_DOUT_WIDTH of xcl_design_flash_programmer_0_fifo_generator_v13_1_2 : entity is 32;
  attribute C_ENABLE_RLOCS : integer;
  attribute C_ENABLE_RLOCS of xcl_design_flash_programmer_0_fifo_generator_v13_1_2 : entity is 0;
  attribute C_ENABLE_RST_SYNC : integer;
  attribute C_ENABLE_RST_SYNC of xcl_design_flash_programmer_0_fifo_generator_v13_1_2 : entity is 1;
  attribute C_EN_SAFETY_CKT : integer;
  attribute C_EN_SAFETY_CKT of xcl_design_flash_programmer_0_fifo_generator_v13_1_2 : entity is 0;
  attribute C_ERROR_INJECTION_TYPE : integer;
  attribute C_ERROR_INJECTION_TYPE of xcl_design_flash_programmer_0_fifo_generator_v13_1_2 : entity is 0;
  attribute C_ERROR_INJECTION_TYPE_AXIS : integer;
  attribute C_ERROR_INJECTION_TYPE_AXIS of xcl_design_flash_programmer_0_fifo_generator_v13_1_2 : entity is 0;
  attribute C_ERROR_INJECTION_TYPE_RACH : integer;
  attribute C_ERROR_INJECTION_TYPE_RACH of xcl_design_flash_programmer_0_fifo_generator_v13_1_2 : entity is 0;
  attribute C_ERROR_INJECTION_TYPE_RDCH : integer;
  attribute C_ERROR_INJECTION_TYPE_RDCH of xcl_design_flash_programmer_0_fifo_generator_v13_1_2 : entity is 0;
  attribute C_ERROR_INJECTION_TYPE_WACH : integer;
  attribute C_ERROR_INJECTION_TYPE_WACH of xcl_design_flash_programmer_0_fifo_generator_v13_1_2 : entity is 0;
  attribute C_ERROR_INJECTION_TYPE_WDCH : integer;
  attribute C_ERROR_INJECTION_TYPE_WDCH of xcl_design_flash_programmer_0_fifo_generator_v13_1_2 : entity is 0;
  attribute C_ERROR_INJECTION_TYPE_WRCH : integer;
  attribute C_ERROR_INJECTION_TYPE_WRCH of xcl_design_flash_programmer_0_fifo_generator_v13_1_2 : entity is 0;
  attribute C_FAMILY : string;
  attribute C_FAMILY of xcl_design_flash_programmer_0_fifo_generator_v13_1_2 : entity is "kintexu";
  attribute C_FULL_FLAGS_RST_VAL : integer;
  attribute C_FULL_FLAGS_RST_VAL of xcl_design_flash_programmer_0_fifo_generator_v13_1_2 : entity is 1;
  attribute C_HAS_ALMOST_EMPTY : integer;
  attribute C_HAS_ALMOST_EMPTY of xcl_design_flash_programmer_0_fifo_generator_v13_1_2 : entity is 0;
  attribute C_HAS_ALMOST_FULL : integer;
  attribute C_HAS_ALMOST_FULL of xcl_design_flash_programmer_0_fifo_generator_v13_1_2 : entity is 0;
  attribute C_HAS_AXIS_TDATA : integer;
  attribute C_HAS_AXIS_TDATA of xcl_design_flash_programmer_0_fifo_generator_v13_1_2 : entity is 1;
  attribute C_HAS_AXIS_TDEST : integer;
  attribute C_HAS_AXIS_TDEST of xcl_design_flash_programmer_0_fifo_generator_v13_1_2 : entity is 0;
  attribute C_HAS_AXIS_TID : integer;
  attribute C_HAS_AXIS_TID of xcl_design_flash_programmer_0_fifo_generator_v13_1_2 : entity is 0;
  attribute C_HAS_AXIS_TKEEP : integer;
  attribute C_HAS_AXIS_TKEEP of xcl_design_flash_programmer_0_fifo_generator_v13_1_2 : entity is 0;
  attribute C_HAS_AXIS_TLAST : integer;
  attribute C_HAS_AXIS_TLAST of xcl_design_flash_programmer_0_fifo_generator_v13_1_2 : entity is 0;
  attribute C_HAS_AXIS_TREADY : integer;
  attribute C_HAS_AXIS_TREADY of xcl_design_flash_programmer_0_fifo_generator_v13_1_2 : entity is 1;
  attribute C_HAS_AXIS_TSTRB : integer;
  attribute C_HAS_AXIS_TSTRB of xcl_design_flash_programmer_0_fifo_generator_v13_1_2 : entity is 0;
  attribute C_HAS_AXIS_TUSER : integer;
  attribute C_HAS_AXIS_TUSER of xcl_design_flash_programmer_0_fifo_generator_v13_1_2 : entity is 1;
  attribute C_HAS_AXI_ARUSER : integer;
  attribute C_HAS_AXI_ARUSER of xcl_design_flash_programmer_0_fifo_generator_v13_1_2 : entity is 0;
  attribute C_HAS_AXI_AWUSER : integer;
  attribute C_HAS_AXI_AWUSER of xcl_design_flash_programmer_0_fifo_generator_v13_1_2 : entity is 0;
  attribute C_HAS_AXI_BUSER : integer;
  attribute C_HAS_AXI_BUSER of xcl_design_flash_programmer_0_fifo_generator_v13_1_2 : entity is 0;
  attribute C_HAS_AXI_ID : integer;
  attribute C_HAS_AXI_ID of xcl_design_flash_programmer_0_fifo_generator_v13_1_2 : entity is 0;
  attribute C_HAS_AXI_RD_CHANNEL : integer;
  attribute C_HAS_AXI_RD_CHANNEL of xcl_design_flash_programmer_0_fifo_generator_v13_1_2 : entity is 1;
  attribute C_HAS_AXI_RUSER : integer;
  attribute C_HAS_AXI_RUSER of xcl_design_flash_programmer_0_fifo_generator_v13_1_2 : entity is 0;
  attribute C_HAS_AXI_WR_CHANNEL : integer;
  attribute C_HAS_AXI_WR_CHANNEL of xcl_design_flash_programmer_0_fifo_generator_v13_1_2 : entity is 1;
  attribute C_HAS_AXI_WUSER : integer;
  attribute C_HAS_AXI_WUSER of xcl_design_flash_programmer_0_fifo_generator_v13_1_2 : entity is 0;
  attribute C_HAS_BACKUP : integer;
  attribute C_HAS_BACKUP of xcl_design_flash_programmer_0_fifo_generator_v13_1_2 : entity is 0;
  attribute C_HAS_DATA_COUNT : integer;
  attribute C_HAS_DATA_COUNT of xcl_design_flash_programmer_0_fifo_generator_v13_1_2 : entity is 0;
  attribute C_HAS_DATA_COUNTS_AXIS : integer;
  attribute C_HAS_DATA_COUNTS_AXIS of xcl_design_flash_programmer_0_fifo_generator_v13_1_2 : entity is 0;
  attribute C_HAS_DATA_COUNTS_RACH : integer;
  attribute C_HAS_DATA_COUNTS_RACH of xcl_design_flash_programmer_0_fifo_generator_v13_1_2 : entity is 0;
  attribute C_HAS_DATA_COUNTS_RDCH : integer;
  attribute C_HAS_DATA_COUNTS_RDCH of xcl_design_flash_programmer_0_fifo_generator_v13_1_2 : entity is 0;
  attribute C_HAS_DATA_COUNTS_WACH : integer;
  attribute C_HAS_DATA_COUNTS_WACH of xcl_design_flash_programmer_0_fifo_generator_v13_1_2 : entity is 0;
  attribute C_HAS_DATA_COUNTS_WDCH : integer;
  attribute C_HAS_DATA_COUNTS_WDCH of xcl_design_flash_programmer_0_fifo_generator_v13_1_2 : entity is 0;
  attribute C_HAS_DATA_COUNTS_WRCH : integer;
  attribute C_HAS_DATA_COUNTS_WRCH of xcl_design_flash_programmer_0_fifo_generator_v13_1_2 : entity is 0;
  attribute C_HAS_INT_CLK : integer;
  attribute C_HAS_INT_CLK of xcl_design_flash_programmer_0_fifo_generator_v13_1_2 : entity is 0;
  attribute C_HAS_MASTER_CE : integer;
  attribute C_HAS_MASTER_CE of xcl_design_flash_programmer_0_fifo_generator_v13_1_2 : entity is 0;
  attribute C_HAS_MEMINIT_FILE : integer;
  attribute C_HAS_MEMINIT_FILE of xcl_design_flash_programmer_0_fifo_generator_v13_1_2 : entity is 0;
  attribute C_HAS_OVERFLOW : integer;
  attribute C_HAS_OVERFLOW of xcl_design_flash_programmer_0_fifo_generator_v13_1_2 : entity is 0;
  attribute C_HAS_PROG_FLAGS_AXIS : integer;
  attribute C_HAS_PROG_FLAGS_AXIS of xcl_design_flash_programmer_0_fifo_generator_v13_1_2 : entity is 0;
  attribute C_HAS_PROG_FLAGS_RACH : integer;
  attribute C_HAS_PROG_FLAGS_RACH of xcl_design_flash_programmer_0_fifo_generator_v13_1_2 : entity is 0;
  attribute C_HAS_PROG_FLAGS_RDCH : integer;
  attribute C_HAS_PROG_FLAGS_RDCH of xcl_design_flash_programmer_0_fifo_generator_v13_1_2 : entity is 0;
  attribute C_HAS_PROG_FLAGS_WACH : integer;
  attribute C_HAS_PROG_FLAGS_WACH of xcl_design_flash_programmer_0_fifo_generator_v13_1_2 : entity is 0;
  attribute C_HAS_PROG_FLAGS_WDCH : integer;
  attribute C_HAS_PROG_FLAGS_WDCH of xcl_design_flash_programmer_0_fifo_generator_v13_1_2 : entity is 0;
  attribute C_HAS_PROG_FLAGS_WRCH : integer;
  attribute C_HAS_PROG_FLAGS_WRCH of xcl_design_flash_programmer_0_fifo_generator_v13_1_2 : entity is 0;
  attribute C_HAS_RD_DATA_COUNT : integer;
  attribute C_HAS_RD_DATA_COUNT of xcl_design_flash_programmer_0_fifo_generator_v13_1_2 : entity is 0;
  attribute C_HAS_RD_RST : integer;
  attribute C_HAS_RD_RST of xcl_design_flash_programmer_0_fifo_generator_v13_1_2 : entity is 0;
  attribute C_HAS_RST : integer;
  attribute C_HAS_RST of xcl_design_flash_programmer_0_fifo_generator_v13_1_2 : entity is 1;
  attribute C_HAS_SLAVE_CE : integer;
  attribute C_HAS_SLAVE_CE of xcl_design_flash_programmer_0_fifo_generator_v13_1_2 : entity is 0;
  attribute C_HAS_SRST : integer;
  attribute C_HAS_SRST of xcl_design_flash_programmer_0_fifo_generator_v13_1_2 : entity is 0;
  attribute C_HAS_UNDERFLOW : integer;
  attribute C_HAS_UNDERFLOW of xcl_design_flash_programmer_0_fifo_generator_v13_1_2 : entity is 0;
  attribute C_HAS_VALID : integer;
  attribute C_HAS_VALID of xcl_design_flash_programmer_0_fifo_generator_v13_1_2 : entity is 0;
  attribute C_HAS_WR_ACK : integer;
  attribute C_HAS_WR_ACK of xcl_design_flash_programmer_0_fifo_generator_v13_1_2 : entity is 0;
  attribute C_HAS_WR_DATA_COUNT : integer;
  attribute C_HAS_WR_DATA_COUNT of xcl_design_flash_programmer_0_fifo_generator_v13_1_2 : entity is 0;
  attribute C_HAS_WR_RST : integer;
  attribute C_HAS_WR_RST of xcl_design_flash_programmer_0_fifo_generator_v13_1_2 : entity is 0;
  attribute C_IMPLEMENTATION_TYPE : integer;
  attribute C_IMPLEMENTATION_TYPE of xcl_design_flash_programmer_0_fifo_generator_v13_1_2 : entity is 2;
  attribute C_IMPLEMENTATION_TYPE_AXIS : integer;
  attribute C_IMPLEMENTATION_TYPE_AXIS of xcl_design_flash_programmer_0_fifo_generator_v13_1_2 : entity is 1;
  attribute C_IMPLEMENTATION_TYPE_RACH : integer;
  attribute C_IMPLEMENTATION_TYPE_RACH of xcl_design_flash_programmer_0_fifo_generator_v13_1_2 : entity is 1;
  attribute C_IMPLEMENTATION_TYPE_RDCH : integer;
  attribute C_IMPLEMENTATION_TYPE_RDCH of xcl_design_flash_programmer_0_fifo_generator_v13_1_2 : entity is 1;
  attribute C_IMPLEMENTATION_TYPE_WACH : integer;
  attribute C_IMPLEMENTATION_TYPE_WACH of xcl_design_flash_programmer_0_fifo_generator_v13_1_2 : entity is 1;
  attribute C_IMPLEMENTATION_TYPE_WDCH : integer;
  attribute C_IMPLEMENTATION_TYPE_WDCH of xcl_design_flash_programmer_0_fifo_generator_v13_1_2 : entity is 1;
  attribute C_IMPLEMENTATION_TYPE_WRCH : integer;
  attribute C_IMPLEMENTATION_TYPE_WRCH of xcl_design_flash_programmer_0_fifo_generator_v13_1_2 : entity is 1;
  attribute C_INIT_WR_PNTR_VAL : integer;
  attribute C_INIT_WR_PNTR_VAL of xcl_design_flash_programmer_0_fifo_generator_v13_1_2 : entity is 0;
  attribute C_INTERFACE_TYPE : integer;
  attribute C_INTERFACE_TYPE of xcl_design_flash_programmer_0_fifo_generator_v13_1_2 : entity is 0;
  attribute C_MEMORY_TYPE : integer;
  attribute C_MEMORY_TYPE of xcl_design_flash_programmer_0_fifo_generator_v13_1_2 : entity is 2;
  attribute C_MIF_FILE_NAME : string;
  attribute C_MIF_FILE_NAME of xcl_design_flash_programmer_0_fifo_generator_v13_1_2 : entity is "BlankString";
  attribute C_MSGON_VAL : integer;
  attribute C_MSGON_VAL of xcl_design_flash_programmer_0_fifo_generator_v13_1_2 : entity is 1;
  attribute C_OPTIMIZATION_MODE : integer;
  attribute C_OPTIMIZATION_MODE of xcl_design_flash_programmer_0_fifo_generator_v13_1_2 : entity is 0;
  attribute C_OVERFLOW_LOW : integer;
  attribute C_OVERFLOW_LOW of xcl_design_flash_programmer_0_fifo_generator_v13_1_2 : entity is 0;
  attribute C_POWER_SAVING_MODE : integer;
  attribute C_POWER_SAVING_MODE of xcl_design_flash_programmer_0_fifo_generator_v13_1_2 : entity is 0;
  attribute C_PRELOAD_LATENCY : integer;
  attribute C_PRELOAD_LATENCY of xcl_design_flash_programmer_0_fifo_generator_v13_1_2 : entity is 1;
  attribute C_PRELOAD_REGS : integer;
  attribute C_PRELOAD_REGS of xcl_design_flash_programmer_0_fifo_generator_v13_1_2 : entity is 0;
  attribute C_PRIM_FIFO_TYPE : string;
  attribute C_PRIM_FIFO_TYPE of xcl_design_flash_programmer_0_fifo_generator_v13_1_2 : entity is "512x36";
  attribute C_PRIM_FIFO_TYPE_AXIS : string;
  attribute C_PRIM_FIFO_TYPE_AXIS of xcl_design_flash_programmer_0_fifo_generator_v13_1_2 : entity is "1kx18";
  attribute C_PRIM_FIFO_TYPE_RACH : string;
  attribute C_PRIM_FIFO_TYPE_RACH of xcl_design_flash_programmer_0_fifo_generator_v13_1_2 : entity is "512x36";
  attribute C_PRIM_FIFO_TYPE_RDCH : string;
  attribute C_PRIM_FIFO_TYPE_RDCH of xcl_design_flash_programmer_0_fifo_generator_v13_1_2 : entity is "512x72";
  attribute C_PRIM_FIFO_TYPE_WACH : string;
  attribute C_PRIM_FIFO_TYPE_WACH of xcl_design_flash_programmer_0_fifo_generator_v13_1_2 : entity is "512x36";
  attribute C_PRIM_FIFO_TYPE_WDCH : string;
  attribute C_PRIM_FIFO_TYPE_WDCH of xcl_design_flash_programmer_0_fifo_generator_v13_1_2 : entity is "512x72";
  attribute C_PRIM_FIFO_TYPE_WRCH : string;
  attribute C_PRIM_FIFO_TYPE_WRCH of xcl_design_flash_programmer_0_fifo_generator_v13_1_2 : entity is "512x36";
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL : integer;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL of xcl_design_flash_programmer_0_fifo_generator_v13_1_2 : entity is 2;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_AXIS : integer;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_AXIS of xcl_design_flash_programmer_0_fifo_generator_v13_1_2 : entity is 1022;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_RACH : integer;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_RACH of xcl_design_flash_programmer_0_fifo_generator_v13_1_2 : entity is 1022;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_RDCH : integer;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_RDCH of xcl_design_flash_programmer_0_fifo_generator_v13_1_2 : entity is 1022;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_WACH : integer;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_WACH of xcl_design_flash_programmer_0_fifo_generator_v13_1_2 : entity is 1022;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_WDCH : integer;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_WDCH of xcl_design_flash_programmer_0_fifo_generator_v13_1_2 : entity is 1022;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_WRCH : integer;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_WRCH of xcl_design_flash_programmer_0_fifo_generator_v13_1_2 : entity is 1022;
  attribute C_PROG_EMPTY_THRESH_NEGATE_VAL : integer;
  attribute C_PROG_EMPTY_THRESH_NEGATE_VAL of xcl_design_flash_programmer_0_fifo_generator_v13_1_2 : entity is 3;
  attribute C_PROG_EMPTY_TYPE : integer;
  attribute C_PROG_EMPTY_TYPE of xcl_design_flash_programmer_0_fifo_generator_v13_1_2 : entity is 0;
  attribute C_PROG_EMPTY_TYPE_AXIS : integer;
  attribute C_PROG_EMPTY_TYPE_AXIS of xcl_design_flash_programmer_0_fifo_generator_v13_1_2 : entity is 0;
  attribute C_PROG_EMPTY_TYPE_RACH : integer;
  attribute C_PROG_EMPTY_TYPE_RACH of xcl_design_flash_programmer_0_fifo_generator_v13_1_2 : entity is 0;
  attribute C_PROG_EMPTY_TYPE_RDCH : integer;
  attribute C_PROG_EMPTY_TYPE_RDCH of xcl_design_flash_programmer_0_fifo_generator_v13_1_2 : entity is 0;
  attribute C_PROG_EMPTY_TYPE_WACH : integer;
  attribute C_PROG_EMPTY_TYPE_WACH of xcl_design_flash_programmer_0_fifo_generator_v13_1_2 : entity is 0;
  attribute C_PROG_EMPTY_TYPE_WDCH : integer;
  attribute C_PROG_EMPTY_TYPE_WDCH of xcl_design_flash_programmer_0_fifo_generator_v13_1_2 : entity is 0;
  attribute C_PROG_EMPTY_TYPE_WRCH : integer;
  attribute C_PROG_EMPTY_TYPE_WRCH of xcl_design_flash_programmer_0_fifo_generator_v13_1_2 : entity is 0;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL : integer;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL of xcl_design_flash_programmer_0_fifo_generator_v13_1_2 : entity is 509;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_AXIS : integer;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_AXIS of xcl_design_flash_programmer_0_fifo_generator_v13_1_2 : entity is 1023;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_RACH : integer;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_RACH of xcl_design_flash_programmer_0_fifo_generator_v13_1_2 : entity is 1023;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_RDCH : integer;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_RDCH of xcl_design_flash_programmer_0_fifo_generator_v13_1_2 : entity is 1023;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_WACH : integer;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_WACH of xcl_design_flash_programmer_0_fifo_generator_v13_1_2 : entity is 1023;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_WDCH : integer;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_WDCH of xcl_design_flash_programmer_0_fifo_generator_v13_1_2 : entity is 1023;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_WRCH : integer;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_WRCH of xcl_design_flash_programmer_0_fifo_generator_v13_1_2 : entity is 1023;
  attribute C_PROG_FULL_THRESH_NEGATE_VAL : integer;
  attribute C_PROG_FULL_THRESH_NEGATE_VAL of xcl_design_flash_programmer_0_fifo_generator_v13_1_2 : entity is 508;
  attribute C_PROG_FULL_TYPE : integer;
  attribute C_PROG_FULL_TYPE of xcl_design_flash_programmer_0_fifo_generator_v13_1_2 : entity is 1;
  attribute C_PROG_FULL_TYPE_AXIS : integer;
  attribute C_PROG_FULL_TYPE_AXIS of xcl_design_flash_programmer_0_fifo_generator_v13_1_2 : entity is 0;
  attribute C_PROG_FULL_TYPE_RACH : integer;
  attribute C_PROG_FULL_TYPE_RACH of xcl_design_flash_programmer_0_fifo_generator_v13_1_2 : entity is 0;
  attribute C_PROG_FULL_TYPE_RDCH : integer;
  attribute C_PROG_FULL_TYPE_RDCH of xcl_design_flash_programmer_0_fifo_generator_v13_1_2 : entity is 0;
  attribute C_PROG_FULL_TYPE_WACH : integer;
  attribute C_PROG_FULL_TYPE_WACH of xcl_design_flash_programmer_0_fifo_generator_v13_1_2 : entity is 0;
  attribute C_PROG_FULL_TYPE_WDCH : integer;
  attribute C_PROG_FULL_TYPE_WDCH of xcl_design_flash_programmer_0_fifo_generator_v13_1_2 : entity is 0;
  attribute C_PROG_FULL_TYPE_WRCH : integer;
  attribute C_PROG_FULL_TYPE_WRCH of xcl_design_flash_programmer_0_fifo_generator_v13_1_2 : entity is 0;
  attribute C_RACH_TYPE : integer;
  attribute C_RACH_TYPE of xcl_design_flash_programmer_0_fifo_generator_v13_1_2 : entity is 0;
  attribute C_RDCH_TYPE : integer;
  attribute C_RDCH_TYPE of xcl_design_flash_programmer_0_fifo_generator_v13_1_2 : entity is 0;
  attribute C_RD_DATA_COUNT_WIDTH : integer;
  attribute C_RD_DATA_COUNT_WIDTH of xcl_design_flash_programmer_0_fifo_generator_v13_1_2 : entity is 9;
  attribute C_RD_DEPTH : integer;
  attribute C_RD_DEPTH of xcl_design_flash_programmer_0_fifo_generator_v13_1_2 : entity is 512;
  attribute C_RD_FREQ : integer;
  attribute C_RD_FREQ of xcl_design_flash_programmer_0_fifo_generator_v13_1_2 : entity is 1;
  attribute C_RD_PNTR_WIDTH : integer;
  attribute C_RD_PNTR_WIDTH of xcl_design_flash_programmer_0_fifo_generator_v13_1_2 : entity is 9;
  attribute C_REG_SLICE_MODE_AXIS : integer;
  attribute C_REG_SLICE_MODE_AXIS of xcl_design_flash_programmer_0_fifo_generator_v13_1_2 : entity is 0;
  attribute C_REG_SLICE_MODE_RACH : integer;
  attribute C_REG_SLICE_MODE_RACH of xcl_design_flash_programmer_0_fifo_generator_v13_1_2 : entity is 0;
  attribute C_REG_SLICE_MODE_RDCH : integer;
  attribute C_REG_SLICE_MODE_RDCH of xcl_design_flash_programmer_0_fifo_generator_v13_1_2 : entity is 0;
  attribute C_REG_SLICE_MODE_WACH : integer;
  attribute C_REG_SLICE_MODE_WACH of xcl_design_flash_programmer_0_fifo_generator_v13_1_2 : entity is 0;
  attribute C_REG_SLICE_MODE_WDCH : integer;
  attribute C_REG_SLICE_MODE_WDCH of xcl_design_flash_programmer_0_fifo_generator_v13_1_2 : entity is 0;
  attribute C_REG_SLICE_MODE_WRCH : integer;
  attribute C_REG_SLICE_MODE_WRCH of xcl_design_flash_programmer_0_fifo_generator_v13_1_2 : entity is 0;
  attribute C_SELECT_XPM : integer;
  attribute C_SELECT_XPM of xcl_design_flash_programmer_0_fifo_generator_v13_1_2 : entity is 0;
  attribute C_SYNCHRONIZER_STAGE : integer;
  attribute C_SYNCHRONIZER_STAGE of xcl_design_flash_programmer_0_fifo_generator_v13_1_2 : entity is 2;
  attribute C_UNDERFLOW_LOW : integer;
  attribute C_UNDERFLOW_LOW of xcl_design_flash_programmer_0_fifo_generator_v13_1_2 : entity is 0;
  attribute C_USE_COMMON_OVERFLOW : integer;
  attribute C_USE_COMMON_OVERFLOW of xcl_design_flash_programmer_0_fifo_generator_v13_1_2 : entity is 0;
  attribute C_USE_COMMON_UNDERFLOW : integer;
  attribute C_USE_COMMON_UNDERFLOW of xcl_design_flash_programmer_0_fifo_generator_v13_1_2 : entity is 0;
  attribute C_USE_DEFAULT_SETTINGS : integer;
  attribute C_USE_DEFAULT_SETTINGS of xcl_design_flash_programmer_0_fifo_generator_v13_1_2 : entity is 0;
  attribute C_USE_DOUT_RST : integer;
  attribute C_USE_DOUT_RST of xcl_design_flash_programmer_0_fifo_generator_v13_1_2 : entity is 1;
  attribute C_USE_ECC : integer;
  attribute C_USE_ECC of xcl_design_flash_programmer_0_fifo_generator_v13_1_2 : entity is 0;
  attribute C_USE_ECC_AXIS : integer;
  attribute C_USE_ECC_AXIS of xcl_design_flash_programmer_0_fifo_generator_v13_1_2 : entity is 0;
  attribute C_USE_ECC_RACH : integer;
  attribute C_USE_ECC_RACH of xcl_design_flash_programmer_0_fifo_generator_v13_1_2 : entity is 0;
  attribute C_USE_ECC_RDCH : integer;
  attribute C_USE_ECC_RDCH of xcl_design_flash_programmer_0_fifo_generator_v13_1_2 : entity is 0;
  attribute C_USE_ECC_WACH : integer;
  attribute C_USE_ECC_WACH of xcl_design_flash_programmer_0_fifo_generator_v13_1_2 : entity is 0;
  attribute C_USE_ECC_WDCH : integer;
  attribute C_USE_ECC_WDCH of xcl_design_flash_programmer_0_fifo_generator_v13_1_2 : entity is 0;
  attribute C_USE_ECC_WRCH : integer;
  attribute C_USE_ECC_WRCH of xcl_design_flash_programmer_0_fifo_generator_v13_1_2 : entity is 0;
  attribute C_USE_EMBEDDED_REG : integer;
  attribute C_USE_EMBEDDED_REG of xcl_design_flash_programmer_0_fifo_generator_v13_1_2 : entity is 0;
  attribute C_USE_FIFO16_FLAGS : integer;
  attribute C_USE_FIFO16_FLAGS of xcl_design_flash_programmer_0_fifo_generator_v13_1_2 : entity is 0;
  attribute C_USE_FWFT_DATA_COUNT : integer;
  attribute C_USE_FWFT_DATA_COUNT of xcl_design_flash_programmer_0_fifo_generator_v13_1_2 : entity is 0;
  attribute C_USE_PIPELINE_REG : integer;
  attribute C_USE_PIPELINE_REG of xcl_design_flash_programmer_0_fifo_generator_v13_1_2 : entity is 0;
  attribute C_VALID_LOW : integer;
  attribute C_VALID_LOW of xcl_design_flash_programmer_0_fifo_generator_v13_1_2 : entity is 0;
  attribute C_WACH_TYPE : integer;
  attribute C_WACH_TYPE of xcl_design_flash_programmer_0_fifo_generator_v13_1_2 : entity is 0;
  attribute C_WDCH_TYPE : integer;
  attribute C_WDCH_TYPE of xcl_design_flash_programmer_0_fifo_generator_v13_1_2 : entity is 0;
  attribute C_WRCH_TYPE : integer;
  attribute C_WRCH_TYPE of xcl_design_flash_programmer_0_fifo_generator_v13_1_2 : entity is 0;
  attribute C_WR_ACK_LOW : integer;
  attribute C_WR_ACK_LOW of xcl_design_flash_programmer_0_fifo_generator_v13_1_2 : entity is 0;
  attribute C_WR_DATA_COUNT_WIDTH : integer;
  attribute C_WR_DATA_COUNT_WIDTH of xcl_design_flash_programmer_0_fifo_generator_v13_1_2 : entity is 9;
  attribute C_WR_DEPTH : integer;
  attribute C_WR_DEPTH of xcl_design_flash_programmer_0_fifo_generator_v13_1_2 : entity is 512;
  attribute C_WR_DEPTH_AXIS : integer;
  attribute C_WR_DEPTH_AXIS of xcl_design_flash_programmer_0_fifo_generator_v13_1_2 : entity is 1024;
  attribute C_WR_DEPTH_RACH : integer;
  attribute C_WR_DEPTH_RACH of xcl_design_flash_programmer_0_fifo_generator_v13_1_2 : entity is 16;
  attribute C_WR_DEPTH_RDCH : integer;
  attribute C_WR_DEPTH_RDCH of xcl_design_flash_programmer_0_fifo_generator_v13_1_2 : entity is 1024;
  attribute C_WR_DEPTH_WACH : integer;
  attribute C_WR_DEPTH_WACH of xcl_design_flash_programmer_0_fifo_generator_v13_1_2 : entity is 16;
  attribute C_WR_DEPTH_WDCH : integer;
  attribute C_WR_DEPTH_WDCH of xcl_design_flash_programmer_0_fifo_generator_v13_1_2 : entity is 1024;
  attribute C_WR_DEPTH_WRCH : integer;
  attribute C_WR_DEPTH_WRCH of xcl_design_flash_programmer_0_fifo_generator_v13_1_2 : entity is 16;
  attribute C_WR_FREQ : integer;
  attribute C_WR_FREQ of xcl_design_flash_programmer_0_fifo_generator_v13_1_2 : entity is 1;
  attribute C_WR_PNTR_WIDTH : integer;
  attribute C_WR_PNTR_WIDTH of xcl_design_flash_programmer_0_fifo_generator_v13_1_2 : entity is 9;
  attribute C_WR_PNTR_WIDTH_AXIS : integer;
  attribute C_WR_PNTR_WIDTH_AXIS of xcl_design_flash_programmer_0_fifo_generator_v13_1_2 : entity is 10;
  attribute C_WR_PNTR_WIDTH_RACH : integer;
  attribute C_WR_PNTR_WIDTH_RACH of xcl_design_flash_programmer_0_fifo_generator_v13_1_2 : entity is 4;
  attribute C_WR_PNTR_WIDTH_RDCH : integer;
  attribute C_WR_PNTR_WIDTH_RDCH of xcl_design_flash_programmer_0_fifo_generator_v13_1_2 : entity is 10;
  attribute C_WR_PNTR_WIDTH_WACH : integer;
  attribute C_WR_PNTR_WIDTH_WACH of xcl_design_flash_programmer_0_fifo_generator_v13_1_2 : entity is 4;
  attribute C_WR_PNTR_WIDTH_WDCH : integer;
  attribute C_WR_PNTR_WIDTH_WDCH of xcl_design_flash_programmer_0_fifo_generator_v13_1_2 : entity is 10;
  attribute C_WR_PNTR_WIDTH_WRCH : integer;
  attribute C_WR_PNTR_WIDTH_WRCH of xcl_design_flash_programmer_0_fifo_generator_v13_1_2 : entity is 4;
  attribute C_WR_RESPONSE_LATENCY : integer;
  attribute C_WR_RESPONSE_LATENCY of xcl_design_flash_programmer_0_fifo_generator_v13_1_2 : entity is 1;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of xcl_design_flash_programmer_0_fifo_generator_v13_1_2 : entity is "fifo_generator_v13_1_2";
end xcl_design_flash_programmer_0_fifo_generator_v13_1_2;

architecture STRUCTURE of xcl_design_flash_programmer_0_fifo_generator_v13_1_2 is
  signal \<const0>\ : STD_LOGIC;
  signal \<const1>\ : STD_LOGIC;
begin
  almost_empty <= \<const0>\;
  almost_full <= \<const0>\;
  axi_ar_data_count(4) <= \<const0>\;
  axi_ar_data_count(3) <= \<const0>\;
  axi_ar_data_count(2) <= \<const0>\;
  axi_ar_data_count(1) <= \<const0>\;
  axi_ar_data_count(0) <= \<const0>\;
  axi_ar_dbiterr <= \<const0>\;
  axi_ar_overflow <= \<const0>\;
  axi_ar_prog_empty <= \<const1>\;
  axi_ar_prog_full <= \<const0>\;
  axi_ar_rd_data_count(4) <= \<const0>\;
  axi_ar_rd_data_count(3) <= \<const0>\;
  axi_ar_rd_data_count(2) <= \<const0>\;
  axi_ar_rd_data_count(1) <= \<const0>\;
  axi_ar_rd_data_count(0) <= \<const0>\;
  axi_ar_sbiterr <= \<const0>\;
  axi_ar_underflow <= \<const0>\;
  axi_ar_wr_data_count(4) <= \<const0>\;
  axi_ar_wr_data_count(3) <= \<const0>\;
  axi_ar_wr_data_count(2) <= \<const0>\;
  axi_ar_wr_data_count(1) <= \<const0>\;
  axi_ar_wr_data_count(0) <= \<const0>\;
  axi_aw_data_count(4) <= \<const0>\;
  axi_aw_data_count(3) <= \<const0>\;
  axi_aw_data_count(2) <= \<const0>\;
  axi_aw_data_count(1) <= \<const0>\;
  axi_aw_data_count(0) <= \<const0>\;
  axi_aw_dbiterr <= \<const0>\;
  axi_aw_overflow <= \<const0>\;
  axi_aw_prog_empty <= \<const1>\;
  axi_aw_prog_full <= \<const0>\;
  axi_aw_rd_data_count(4) <= \<const0>\;
  axi_aw_rd_data_count(3) <= \<const0>\;
  axi_aw_rd_data_count(2) <= \<const0>\;
  axi_aw_rd_data_count(1) <= \<const0>\;
  axi_aw_rd_data_count(0) <= \<const0>\;
  axi_aw_sbiterr <= \<const0>\;
  axi_aw_underflow <= \<const0>\;
  axi_aw_wr_data_count(4) <= \<const0>\;
  axi_aw_wr_data_count(3) <= \<const0>\;
  axi_aw_wr_data_count(2) <= \<const0>\;
  axi_aw_wr_data_count(1) <= \<const0>\;
  axi_aw_wr_data_count(0) <= \<const0>\;
  axi_b_data_count(4) <= \<const0>\;
  axi_b_data_count(3) <= \<const0>\;
  axi_b_data_count(2) <= \<const0>\;
  axi_b_data_count(1) <= \<const0>\;
  axi_b_data_count(0) <= \<const0>\;
  axi_b_dbiterr <= \<const0>\;
  axi_b_overflow <= \<const0>\;
  axi_b_prog_empty <= \<const1>\;
  axi_b_prog_full <= \<const0>\;
  axi_b_rd_data_count(4) <= \<const0>\;
  axi_b_rd_data_count(3) <= \<const0>\;
  axi_b_rd_data_count(2) <= \<const0>\;
  axi_b_rd_data_count(1) <= \<const0>\;
  axi_b_rd_data_count(0) <= \<const0>\;
  axi_b_sbiterr <= \<const0>\;
  axi_b_underflow <= \<const0>\;
  axi_b_wr_data_count(4) <= \<const0>\;
  axi_b_wr_data_count(3) <= \<const0>\;
  axi_b_wr_data_count(2) <= \<const0>\;
  axi_b_wr_data_count(1) <= \<const0>\;
  axi_b_wr_data_count(0) <= \<const0>\;
  axi_r_data_count(10) <= \<const0>\;
  axi_r_data_count(9) <= \<const0>\;
  axi_r_data_count(8) <= \<const0>\;
  axi_r_data_count(7) <= \<const0>\;
  axi_r_data_count(6) <= \<const0>\;
  axi_r_data_count(5) <= \<const0>\;
  axi_r_data_count(4) <= \<const0>\;
  axi_r_data_count(3) <= \<const0>\;
  axi_r_data_count(2) <= \<const0>\;
  axi_r_data_count(1) <= \<const0>\;
  axi_r_data_count(0) <= \<const0>\;
  axi_r_dbiterr <= \<const0>\;
  axi_r_overflow <= \<const0>\;
  axi_r_prog_empty <= \<const1>\;
  axi_r_prog_full <= \<const0>\;
  axi_r_rd_data_count(10) <= \<const0>\;
  axi_r_rd_data_count(9) <= \<const0>\;
  axi_r_rd_data_count(8) <= \<const0>\;
  axi_r_rd_data_count(7) <= \<const0>\;
  axi_r_rd_data_count(6) <= \<const0>\;
  axi_r_rd_data_count(5) <= \<const0>\;
  axi_r_rd_data_count(4) <= \<const0>\;
  axi_r_rd_data_count(3) <= \<const0>\;
  axi_r_rd_data_count(2) <= \<const0>\;
  axi_r_rd_data_count(1) <= \<const0>\;
  axi_r_rd_data_count(0) <= \<const0>\;
  axi_r_sbiterr <= \<const0>\;
  axi_r_underflow <= \<const0>\;
  axi_r_wr_data_count(10) <= \<const0>\;
  axi_r_wr_data_count(9) <= \<const0>\;
  axi_r_wr_data_count(8) <= \<const0>\;
  axi_r_wr_data_count(7) <= \<const0>\;
  axi_r_wr_data_count(6) <= \<const0>\;
  axi_r_wr_data_count(5) <= \<const0>\;
  axi_r_wr_data_count(4) <= \<const0>\;
  axi_r_wr_data_count(3) <= \<const0>\;
  axi_r_wr_data_count(2) <= \<const0>\;
  axi_r_wr_data_count(1) <= \<const0>\;
  axi_r_wr_data_count(0) <= \<const0>\;
  axi_w_data_count(10) <= \<const0>\;
  axi_w_data_count(9) <= \<const0>\;
  axi_w_data_count(8) <= \<const0>\;
  axi_w_data_count(7) <= \<const0>\;
  axi_w_data_count(6) <= \<const0>\;
  axi_w_data_count(5) <= \<const0>\;
  axi_w_data_count(4) <= \<const0>\;
  axi_w_data_count(3) <= \<const0>\;
  axi_w_data_count(2) <= \<const0>\;
  axi_w_data_count(1) <= \<const0>\;
  axi_w_data_count(0) <= \<const0>\;
  axi_w_dbiterr <= \<const0>\;
  axi_w_overflow <= \<const0>\;
  axi_w_prog_empty <= \<const1>\;
  axi_w_prog_full <= \<const0>\;
  axi_w_rd_data_count(10) <= \<const0>\;
  axi_w_rd_data_count(9) <= \<const0>\;
  axi_w_rd_data_count(8) <= \<const0>\;
  axi_w_rd_data_count(7) <= \<const0>\;
  axi_w_rd_data_count(6) <= \<const0>\;
  axi_w_rd_data_count(5) <= \<const0>\;
  axi_w_rd_data_count(4) <= \<const0>\;
  axi_w_rd_data_count(3) <= \<const0>\;
  axi_w_rd_data_count(2) <= \<const0>\;
  axi_w_rd_data_count(1) <= \<const0>\;
  axi_w_rd_data_count(0) <= \<const0>\;
  axi_w_sbiterr <= \<const0>\;
  axi_w_underflow <= \<const0>\;
  axi_w_wr_data_count(10) <= \<const0>\;
  axi_w_wr_data_count(9) <= \<const0>\;
  axi_w_wr_data_count(8) <= \<const0>\;
  axi_w_wr_data_count(7) <= \<const0>\;
  axi_w_wr_data_count(6) <= \<const0>\;
  axi_w_wr_data_count(5) <= \<const0>\;
  axi_w_wr_data_count(4) <= \<const0>\;
  axi_w_wr_data_count(3) <= \<const0>\;
  axi_w_wr_data_count(2) <= \<const0>\;
  axi_w_wr_data_count(1) <= \<const0>\;
  axi_w_wr_data_count(0) <= \<const0>\;
  axis_data_count(10) <= \<const0>\;
  axis_data_count(9) <= \<const0>\;
  axis_data_count(8) <= \<const0>\;
  axis_data_count(7) <= \<const0>\;
  axis_data_count(6) <= \<const0>\;
  axis_data_count(5) <= \<const0>\;
  axis_data_count(4) <= \<const0>\;
  axis_data_count(3) <= \<const0>\;
  axis_data_count(2) <= \<const0>\;
  axis_data_count(1) <= \<const0>\;
  axis_data_count(0) <= \<const0>\;
  axis_dbiterr <= \<const0>\;
  axis_overflow <= \<const0>\;
  axis_prog_empty <= \<const1>\;
  axis_prog_full <= \<const0>\;
  axis_rd_data_count(10) <= \<const0>\;
  axis_rd_data_count(9) <= \<const0>\;
  axis_rd_data_count(8) <= \<const0>\;
  axis_rd_data_count(7) <= \<const0>\;
  axis_rd_data_count(6) <= \<const0>\;
  axis_rd_data_count(5) <= \<const0>\;
  axis_rd_data_count(4) <= \<const0>\;
  axis_rd_data_count(3) <= \<const0>\;
  axis_rd_data_count(2) <= \<const0>\;
  axis_rd_data_count(1) <= \<const0>\;
  axis_rd_data_count(0) <= \<const0>\;
  axis_sbiterr <= \<const0>\;
  axis_underflow <= \<const0>\;
  axis_wr_data_count(10) <= \<const0>\;
  axis_wr_data_count(9) <= \<const0>\;
  axis_wr_data_count(8) <= \<const0>\;
  axis_wr_data_count(7) <= \<const0>\;
  axis_wr_data_count(6) <= \<const0>\;
  axis_wr_data_count(5) <= \<const0>\;
  axis_wr_data_count(4) <= \<const0>\;
  axis_wr_data_count(3) <= \<const0>\;
  axis_wr_data_count(2) <= \<const0>\;
  axis_wr_data_count(1) <= \<const0>\;
  axis_wr_data_count(0) <= \<const0>\;
  data_count(8) <= \<const0>\;
  data_count(7) <= \<const0>\;
  data_count(6) <= \<const0>\;
  data_count(5) <= \<const0>\;
  data_count(4) <= \<const0>\;
  data_count(3) <= \<const0>\;
  data_count(2) <= \<const0>\;
  data_count(1) <= \<const0>\;
  data_count(0) <= \<const0>\;
  dbiterr <= \<const0>\;
  m_axi_araddr(31) <= \<const0>\;
  m_axi_araddr(30) <= \<const0>\;
  m_axi_araddr(29) <= \<const0>\;
  m_axi_araddr(28) <= \<const0>\;
  m_axi_araddr(27) <= \<const0>\;
  m_axi_araddr(26) <= \<const0>\;
  m_axi_araddr(25) <= \<const0>\;
  m_axi_araddr(24) <= \<const0>\;
  m_axi_araddr(23) <= \<const0>\;
  m_axi_araddr(22) <= \<const0>\;
  m_axi_araddr(21) <= \<const0>\;
  m_axi_araddr(20) <= \<const0>\;
  m_axi_araddr(19) <= \<const0>\;
  m_axi_araddr(18) <= \<const0>\;
  m_axi_araddr(17) <= \<const0>\;
  m_axi_araddr(16) <= \<const0>\;
  m_axi_araddr(15) <= \<const0>\;
  m_axi_araddr(14) <= \<const0>\;
  m_axi_araddr(13) <= \<const0>\;
  m_axi_araddr(12) <= \<const0>\;
  m_axi_araddr(11) <= \<const0>\;
  m_axi_araddr(10) <= \<const0>\;
  m_axi_araddr(9) <= \<const0>\;
  m_axi_araddr(8) <= \<const0>\;
  m_axi_araddr(7) <= \<const0>\;
  m_axi_araddr(6) <= \<const0>\;
  m_axi_araddr(5) <= \<const0>\;
  m_axi_araddr(4) <= \<const0>\;
  m_axi_araddr(3) <= \<const0>\;
  m_axi_araddr(2) <= \<const0>\;
  m_axi_araddr(1) <= \<const0>\;
  m_axi_araddr(0) <= \<const0>\;
  m_axi_arburst(1) <= \<const0>\;
  m_axi_arburst(0) <= \<const0>\;
  m_axi_arcache(3) <= \<const0>\;
  m_axi_arcache(2) <= \<const0>\;
  m_axi_arcache(1) <= \<const0>\;
  m_axi_arcache(0) <= \<const0>\;
  m_axi_arid(0) <= \<const0>\;
  m_axi_arlen(7) <= \<const0>\;
  m_axi_arlen(6) <= \<const0>\;
  m_axi_arlen(5) <= \<const0>\;
  m_axi_arlen(4) <= \<const0>\;
  m_axi_arlen(3) <= \<const0>\;
  m_axi_arlen(2) <= \<const0>\;
  m_axi_arlen(1) <= \<const0>\;
  m_axi_arlen(0) <= \<const0>\;
  m_axi_arlock(0) <= \<const0>\;
  m_axi_arprot(2) <= \<const0>\;
  m_axi_arprot(1) <= \<const0>\;
  m_axi_arprot(0) <= \<const0>\;
  m_axi_arqos(3) <= \<const0>\;
  m_axi_arqos(2) <= \<const0>\;
  m_axi_arqos(1) <= \<const0>\;
  m_axi_arqos(0) <= \<const0>\;
  m_axi_arregion(3) <= \<const0>\;
  m_axi_arregion(2) <= \<const0>\;
  m_axi_arregion(1) <= \<const0>\;
  m_axi_arregion(0) <= \<const0>\;
  m_axi_arsize(2) <= \<const0>\;
  m_axi_arsize(1) <= \<const0>\;
  m_axi_arsize(0) <= \<const0>\;
  m_axi_aruser(0) <= \<const0>\;
  m_axi_arvalid <= \<const0>\;
  m_axi_awaddr(31) <= \<const0>\;
  m_axi_awaddr(30) <= \<const0>\;
  m_axi_awaddr(29) <= \<const0>\;
  m_axi_awaddr(28) <= \<const0>\;
  m_axi_awaddr(27) <= \<const0>\;
  m_axi_awaddr(26) <= \<const0>\;
  m_axi_awaddr(25) <= \<const0>\;
  m_axi_awaddr(24) <= \<const0>\;
  m_axi_awaddr(23) <= \<const0>\;
  m_axi_awaddr(22) <= \<const0>\;
  m_axi_awaddr(21) <= \<const0>\;
  m_axi_awaddr(20) <= \<const0>\;
  m_axi_awaddr(19) <= \<const0>\;
  m_axi_awaddr(18) <= \<const0>\;
  m_axi_awaddr(17) <= \<const0>\;
  m_axi_awaddr(16) <= \<const0>\;
  m_axi_awaddr(15) <= \<const0>\;
  m_axi_awaddr(14) <= \<const0>\;
  m_axi_awaddr(13) <= \<const0>\;
  m_axi_awaddr(12) <= \<const0>\;
  m_axi_awaddr(11) <= \<const0>\;
  m_axi_awaddr(10) <= \<const0>\;
  m_axi_awaddr(9) <= \<const0>\;
  m_axi_awaddr(8) <= \<const0>\;
  m_axi_awaddr(7) <= \<const0>\;
  m_axi_awaddr(6) <= \<const0>\;
  m_axi_awaddr(5) <= \<const0>\;
  m_axi_awaddr(4) <= \<const0>\;
  m_axi_awaddr(3) <= \<const0>\;
  m_axi_awaddr(2) <= \<const0>\;
  m_axi_awaddr(1) <= \<const0>\;
  m_axi_awaddr(0) <= \<const0>\;
  m_axi_awburst(1) <= \<const0>\;
  m_axi_awburst(0) <= \<const0>\;
  m_axi_awcache(3) <= \<const0>\;
  m_axi_awcache(2) <= \<const0>\;
  m_axi_awcache(1) <= \<const0>\;
  m_axi_awcache(0) <= \<const0>\;
  m_axi_awid(0) <= \<const0>\;
  m_axi_awlen(7) <= \<const0>\;
  m_axi_awlen(6) <= \<const0>\;
  m_axi_awlen(5) <= \<const0>\;
  m_axi_awlen(4) <= \<const0>\;
  m_axi_awlen(3) <= \<const0>\;
  m_axi_awlen(2) <= \<const0>\;
  m_axi_awlen(1) <= \<const0>\;
  m_axi_awlen(0) <= \<const0>\;
  m_axi_awlock(0) <= \<const0>\;
  m_axi_awprot(2) <= \<const0>\;
  m_axi_awprot(1) <= \<const0>\;
  m_axi_awprot(0) <= \<const0>\;
  m_axi_awqos(3) <= \<const0>\;
  m_axi_awqos(2) <= \<const0>\;
  m_axi_awqos(1) <= \<const0>\;
  m_axi_awqos(0) <= \<const0>\;
  m_axi_awregion(3) <= \<const0>\;
  m_axi_awregion(2) <= \<const0>\;
  m_axi_awregion(1) <= \<const0>\;
  m_axi_awregion(0) <= \<const0>\;
  m_axi_awsize(2) <= \<const0>\;
  m_axi_awsize(1) <= \<const0>\;
  m_axi_awsize(0) <= \<const0>\;
  m_axi_awuser(0) <= \<const0>\;
  m_axi_awvalid <= \<const0>\;
  m_axi_bready <= \<const0>\;
  m_axi_rready <= \<const0>\;
  m_axi_wdata(63) <= \<const0>\;
  m_axi_wdata(62) <= \<const0>\;
  m_axi_wdata(61) <= \<const0>\;
  m_axi_wdata(60) <= \<const0>\;
  m_axi_wdata(59) <= \<const0>\;
  m_axi_wdata(58) <= \<const0>\;
  m_axi_wdata(57) <= \<const0>\;
  m_axi_wdata(56) <= \<const0>\;
  m_axi_wdata(55) <= \<const0>\;
  m_axi_wdata(54) <= \<const0>\;
  m_axi_wdata(53) <= \<const0>\;
  m_axi_wdata(52) <= \<const0>\;
  m_axi_wdata(51) <= \<const0>\;
  m_axi_wdata(50) <= \<const0>\;
  m_axi_wdata(49) <= \<const0>\;
  m_axi_wdata(48) <= \<const0>\;
  m_axi_wdata(47) <= \<const0>\;
  m_axi_wdata(46) <= \<const0>\;
  m_axi_wdata(45) <= \<const0>\;
  m_axi_wdata(44) <= \<const0>\;
  m_axi_wdata(43) <= \<const0>\;
  m_axi_wdata(42) <= \<const0>\;
  m_axi_wdata(41) <= \<const0>\;
  m_axi_wdata(40) <= \<const0>\;
  m_axi_wdata(39) <= \<const0>\;
  m_axi_wdata(38) <= \<const0>\;
  m_axi_wdata(37) <= \<const0>\;
  m_axi_wdata(36) <= \<const0>\;
  m_axi_wdata(35) <= \<const0>\;
  m_axi_wdata(34) <= \<const0>\;
  m_axi_wdata(33) <= \<const0>\;
  m_axi_wdata(32) <= \<const0>\;
  m_axi_wdata(31) <= \<const0>\;
  m_axi_wdata(30) <= \<const0>\;
  m_axi_wdata(29) <= \<const0>\;
  m_axi_wdata(28) <= \<const0>\;
  m_axi_wdata(27) <= \<const0>\;
  m_axi_wdata(26) <= \<const0>\;
  m_axi_wdata(25) <= \<const0>\;
  m_axi_wdata(24) <= \<const0>\;
  m_axi_wdata(23) <= \<const0>\;
  m_axi_wdata(22) <= \<const0>\;
  m_axi_wdata(21) <= \<const0>\;
  m_axi_wdata(20) <= \<const0>\;
  m_axi_wdata(19) <= \<const0>\;
  m_axi_wdata(18) <= \<const0>\;
  m_axi_wdata(17) <= \<const0>\;
  m_axi_wdata(16) <= \<const0>\;
  m_axi_wdata(15) <= \<const0>\;
  m_axi_wdata(14) <= \<const0>\;
  m_axi_wdata(13) <= \<const0>\;
  m_axi_wdata(12) <= \<const0>\;
  m_axi_wdata(11) <= \<const0>\;
  m_axi_wdata(10) <= \<const0>\;
  m_axi_wdata(9) <= \<const0>\;
  m_axi_wdata(8) <= \<const0>\;
  m_axi_wdata(7) <= \<const0>\;
  m_axi_wdata(6) <= \<const0>\;
  m_axi_wdata(5) <= \<const0>\;
  m_axi_wdata(4) <= \<const0>\;
  m_axi_wdata(3) <= \<const0>\;
  m_axi_wdata(2) <= \<const0>\;
  m_axi_wdata(1) <= \<const0>\;
  m_axi_wdata(0) <= \<const0>\;
  m_axi_wid(0) <= \<const0>\;
  m_axi_wlast <= \<const0>\;
  m_axi_wstrb(7) <= \<const0>\;
  m_axi_wstrb(6) <= \<const0>\;
  m_axi_wstrb(5) <= \<const0>\;
  m_axi_wstrb(4) <= \<const0>\;
  m_axi_wstrb(3) <= \<const0>\;
  m_axi_wstrb(2) <= \<const0>\;
  m_axi_wstrb(1) <= \<const0>\;
  m_axi_wstrb(0) <= \<const0>\;
  m_axi_wuser(0) <= \<const0>\;
  m_axi_wvalid <= \<const0>\;
  m_axis_tdata(7) <= \<const0>\;
  m_axis_tdata(6) <= \<const0>\;
  m_axis_tdata(5) <= \<const0>\;
  m_axis_tdata(4) <= \<const0>\;
  m_axis_tdata(3) <= \<const0>\;
  m_axis_tdata(2) <= \<const0>\;
  m_axis_tdata(1) <= \<const0>\;
  m_axis_tdata(0) <= \<const0>\;
  m_axis_tdest(0) <= \<const0>\;
  m_axis_tid(0) <= \<const0>\;
  m_axis_tkeep(0) <= \<const0>\;
  m_axis_tlast <= \<const0>\;
  m_axis_tstrb(0) <= \<const0>\;
  m_axis_tuser(3) <= \<const0>\;
  m_axis_tuser(2) <= \<const0>\;
  m_axis_tuser(1) <= \<const0>\;
  m_axis_tuser(0) <= \<const0>\;
  m_axis_tvalid <= \<const0>\;
  overflow <= \<const0>\;
  prog_empty <= \<const0>\;
  rd_data_count(8) <= \<const0>\;
  rd_data_count(7) <= \<const0>\;
  rd_data_count(6) <= \<const0>\;
  rd_data_count(5) <= \<const0>\;
  rd_data_count(4) <= \<const0>\;
  rd_data_count(3) <= \<const0>\;
  rd_data_count(2) <= \<const0>\;
  rd_data_count(1) <= \<const0>\;
  rd_data_count(0) <= \<const0>\;
  rd_rst_busy <= \<const0>\;
  s_axi_arready <= \<const0>\;
  s_axi_awready <= \<const0>\;
  s_axi_bid(0) <= \<const0>\;
  s_axi_bresp(1) <= \<const0>\;
  s_axi_bresp(0) <= \<const0>\;
  s_axi_buser(0) <= \<const0>\;
  s_axi_bvalid <= \<const0>\;
  s_axi_rdata(63) <= \<const0>\;
  s_axi_rdata(62) <= \<const0>\;
  s_axi_rdata(61) <= \<const0>\;
  s_axi_rdata(60) <= \<const0>\;
  s_axi_rdata(59) <= \<const0>\;
  s_axi_rdata(58) <= \<const0>\;
  s_axi_rdata(57) <= \<const0>\;
  s_axi_rdata(56) <= \<const0>\;
  s_axi_rdata(55) <= \<const0>\;
  s_axi_rdata(54) <= \<const0>\;
  s_axi_rdata(53) <= \<const0>\;
  s_axi_rdata(52) <= \<const0>\;
  s_axi_rdata(51) <= \<const0>\;
  s_axi_rdata(50) <= \<const0>\;
  s_axi_rdata(49) <= \<const0>\;
  s_axi_rdata(48) <= \<const0>\;
  s_axi_rdata(47) <= \<const0>\;
  s_axi_rdata(46) <= \<const0>\;
  s_axi_rdata(45) <= \<const0>\;
  s_axi_rdata(44) <= \<const0>\;
  s_axi_rdata(43) <= \<const0>\;
  s_axi_rdata(42) <= \<const0>\;
  s_axi_rdata(41) <= \<const0>\;
  s_axi_rdata(40) <= \<const0>\;
  s_axi_rdata(39) <= \<const0>\;
  s_axi_rdata(38) <= \<const0>\;
  s_axi_rdata(37) <= \<const0>\;
  s_axi_rdata(36) <= \<const0>\;
  s_axi_rdata(35) <= \<const0>\;
  s_axi_rdata(34) <= \<const0>\;
  s_axi_rdata(33) <= \<const0>\;
  s_axi_rdata(32) <= \<const0>\;
  s_axi_rdata(31) <= \<const0>\;
  s_axi_rdata(30) <= \<const0>\;
  s_axi_rdata(29) <= \<const0>\;
  s_axi_rdata(28) <= \<const0>\;
  s_axi_rdata(27) <= \<const0>\;
  s_axi_rdata(26) <= \<const0>\;
  s_axi_rdata(25) <= \<const0>\;
  s_axi_rdata(24) <= \<const0>\;
  s_axi_rdata(23) <= \<const0>\;
  s_axi_rdata(22) <= \<const0>\;
  s_axi_rdata(21) <= \<const0>\;
  s_axi_rdata(20) <= \<const0>\;
  s_axi_rdata(19) <= \<const0>\;
  s_axi_rdata(18) <= \<const0>\;
  s_axi_rdata(17) <= \<const0>\;
  s_axi_rdata(16) <= \<const0>\;
  s_axi_rdata(15) <= \<const0>\;
  s_axi_rdata(14) <= \<const0>\;
  s_axi_rdata(13) <= \<const0>\;
  s_axi_rdata(12) <= \<const0>\;
  s_axi_rdata(11) <= \<const0>\;
  s_axi_rdata(10) <= \<const0>\;
  s_axi_rdata(9) <= \<const0>\;
  s_axi_rdata(8) <= \<const0>\;
  s_axi_rdata(7) <= \<const0>\;
  s_axi_rdata(6) <= \<const0>\;
  s_axi_rdata(5) <= \<const0>\;
  s_axi_rdata(4) <= \<const0>\;
  s_axi_rdata(3) <= \<const0>\;
  s_axi_rdata(2) <= \<const0>\;
  s_axi_rdata(1) <= \<const0>\;
  s_axi_rdata(0) <= \<const0>\;
  s_axi_rid(0) <= \<const0>\;
  s_axi_rlast <= \<const0>\;
  s_axi_rresp(1) <= \<const0>\;
  s_axi_rresp(0) <= \<const0>\;
  s_axi_ruser(0) <= \<const0>\;
  s_axi_rvalid <= \<const0>\;
  s_axi_wready <= \<const0>\;
  s_axis_tready <= \<const0>\;
  sbiterr <= \<const0>\;
  underflow <= \<const0>\;
  valid <= \<const0>\;
  wr_ack <= \<const0>\;
  wr_data_count(8) <= \<const0>\;
  wr_data_count(7) <= \<const0>\;
  wr_data_count(6) <= \<const0>\;
  wr_data_count(5) <= \<const0>\;
  wr_data_count(4) <= \<const0>\;
  wr_data_count(3) <= \<const0>\;
  wr_data_count(2) <= \<const0>\;
  wr_data_count(1) <= \<const0>\;
  wr_data_count(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
VCC: unisim.vcomponents.VCC
     port map (
      P => \<const1>\
    );
inst_fifo_gen: entity work.xcl_design_flash_programmer_0_fifo_generator_v13_1_2_synth
     port map (
      din(31 downto 0) => din(31 downto 0),
      dout(31 downto 0) => dout(31 downto 0),
      empty => empty,
      full => full,
      prog_full => prog_full,
      rd_clk => rd_clk,
      rd_en => rd_en,
      rst => rst,
      wr_clk => wr_clk,
      wr_en => wr_en,
      wr_rst_busy => wr_rst_busy
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity xcl_design_flash_programmer_0_bitstream_fifo is
  port (
    rst : in STD_LOGIC;
    wr_clk : in STD_LOGIC;
    rd_clk : in STD_LOGIC;
    din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    wr_en : in STD_LOGIC;
    rd_en : in STD_LOGIC;
    dout : out STD_LOGIC_VECTOR ( 31 downto 0 );
    full : out STD_LOGIC;
    empty : out STD_LOGIC;
    prog_full : out STD_LOGIC
  );
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of xcl_design_flash_programmer_0_bitstream_fifo : entity is "bitstream_fifo,fifo_generator_v13_1_2,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of xcl_design_flash_programmer_0_bitstream_fifo : entity is "yes";
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of xcl_design_flash_programmer_0_bitstream_fifo : entity is "bitstream_fifo";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of xcl_design_flash_programmer_0_bitstream_fifo : entity is "fifo_generator_v13_1_2,Vivado 2016.3_sdx";
end xcl_design_flash_programmer_0_bitstream_fifo;

architecture STRUCTURE of xcl_design_flash_programmer_0_bitstream_fifo is
  signal NLW_U0_almost_empty_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_almost_full_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_ar_dbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_ar_overflow_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_ar_prog_empty_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_ar_prog_full_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_ar_sbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_ar_underflow_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_aw_dbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_aw_overflow_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_aw_prog_empty_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_aw_prog_full_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_aw_sbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_aw_underflow_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_b_dbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_b_overflow_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_b_prog_empty_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_b_prog_full_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_b_sbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_b_underflow_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_r_dbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_r_overflow_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_r_prog_empty_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_r_prog_full_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_r_sbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_r_underflow_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_w_dbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_w_overflow_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_w_prog_empty_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_w_prog_full_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_w_sbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_w_underflow_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axis_dbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axis_overflow_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axis_prog_empty_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axis_prog_full_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axis_sbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axis_underflow_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_dbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_m_axi_arvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_m_axi_awvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_m_axi_bready_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_m_axi_rready_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_m_axi_wlast_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_m_axi_wvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_m_axis_tlast_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_m_axis_tvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_overflow_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_prog_empty_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_rd_rst_busy_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_arready_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_awready_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_bvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_rlast_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_rvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_wready_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axis_tready_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_sbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_underflow_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_valid_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_wr_ack_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_wr_rst_busy_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_ar_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal NLW_U0_axi_ar_rd_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal NLW_U0_axi_ar_wr_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal NLW_U0_axi_aw_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal NLW_U0_axi_aw_rd_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal NLW_U0_axi_aw_wr_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal NLW_U0_axi_b_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal NLW_U0_axi_b_rd_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal NLW_U0_axi_b_wr_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal NLW_U0_axi_r_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal NLW_U0_axi_r_rd_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal NLW_U0_axi_r_wr_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal NLW_U0_axi_w_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal NLW_U0_axi_w_rd_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal NLW_U0_axi_w_wr_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal NLW_U0_axis_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal NLW_U0_axis_rd_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal NLW_U0_axis_wr_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal NLW_U0_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal NLW_U0_m_axi_araddr_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_U0_m_axi_arburst_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_U0_m_axi_arcache_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_U0_m_axi_arid_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_m_axi_arlen_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_U0_m_axi_arlock_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_m_axi_arprot_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_U0_m_axi_arqos_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_U0_m_axi_arregion_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_U0_m_axi_arsize_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_U0_m_axi_aruser_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_m_axi_awaddr_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_U0_m_axi_awburst_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_U0_m_axi_awcache_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_U0_m_axi_awid_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_m_axi_awlen_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_U0_m_axi_awlock_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_m_axi_awprot_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_U0_m_axi_awqos_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_U0_m_axi_awregion_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_U0_m_axi_awsize_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_U0_m_axi_awuser_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_m_axi_wdata_UNCONNECTED : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal NLW_U0_m_axi_wid_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_m_axi_wstrb_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_U0_m_axi_wuser_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_m_axis_tdata_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_U0_m_axis_tdest_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_m_axis_tid_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_m_axis_tkeep_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_m_axis_tstrb_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_m_axis_tuser_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_U0_rd_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal NLW_U0_s_axi_bid_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_s_axi_bresp_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_U0_s_axi_buser_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_s_axi_rdata_UNCONNECTED : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal NLW_U0_s_axi_rid_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_s_axi_rresp_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_U0_s_axi_ruser_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_wr_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 8 downto 0 );
  attribute C_ADD_NGC_CONSTRAINT : integer;
  attribute C_ADD_NGC_CONSTRAINT of U0 : label is 0;
  attribute C_APPLICATION_TYPE_AXIS : integer;
  attribute C_APPLICATION_TYPE_AXIS of U0 : label is 0;
  attribute C_APPLICATION_TYPE_RACH : integer;
  attribute C_APPLICATION_TYPE_RACH of U0 : label is 0;
  attribute C_APPLICATION_TYPE_RDCH : integer;
  attribute C_APPLICATION_TYPE_RDCH of U0 : label is 0;
  attribute C_APPLICATION_TYPE_WACH : integer;
  attribute C_APPLICATION_TYPE_WACH of U0 : label is 0;
  attribute C_APPLICATION_TYPE_WDCH : integer;
  attribute C_APPLICATION_TYPE_WDCH of U0 : label is 0;
  attribute C_APPLICATION_TYPE_WRCH : integer;
  attribute C_APPLICATION_TYPE_WRCH of U0 : label is 0;
  attribute C_AXIS_TDATA_WIDTH : integer;
  attribute C_AXIS_TDATA_WIDTH of U0 : label is 8;
  attribute C_AXIS_TDEST_WIDTH : integer;
  attribute C_AXIS_TDEST_WIDTH of U0 : label is 1;
  attribute C_AXIS_TID_WIDTH : integer;
  attribute C_AXIS_TID_WIDTH of U0 : label is 1;
  attribute C_AXIS_TKEEP_WIDTH : integer;
  attribute C_AXIS_TKEEP_WIDTH of U0 : label is 1;
  attribute C_AXIS_TSTRB_WIDTH : integer;
  attribute C_AXIS_TSTRB_WIDTH of U0 : label is 1;
  attribute C_AXIS_TUSER_WIDTH : integer;
  attribute C_AXIS_TUSER_WIDTH of U0 : label is 4;
  attribute C_AXIS_TYPE : integer;
  attribute C_AXIS_TYPE of U0 : label is 0;
  attribute C_AXI_ADDR_WIDTH : integer;
  attribute C_AXI_ADDR_WIDTH of U0 : label is 32;
  attribute C_AXI_ARUSER_WIDTH : integer;
  attribute C_AXI_ARUSER_WIDTH of U0 : label is 1;
  attribute C_AXI_AWUSER_WIDTH : integer;
  attribute C_AXI_AWUSER_WIDTH of U0 : label is 1;
  attribute C_AXI_BUSER_WIDTH : integer;
  attribute C_AXI_BUSER_WIDTH of U0 : label is 1;
  attribute C_AXI_DATA_WIDTH : integer;
  attribute C_AXI_DATA_WIDTH of U0 : label is 64;
  attribute C_AXI_ID_WIDTH : integer;
  attribute C_AXI_ID_WIDTH of U0 : label is 1;
  attribute C_AXI_LEN_WIDTH : integer;
  attribute C_AXI_LEN_WIDTH of U0 : label is 8;
  attribute C_AXI_LOCK_WIDTH : integer;
  attribute C_AXI_LOCK_WIDTH of U0 : label is 1;
  attribute C_AXI_RUSER_WIDTH : integer;
  attribute C_AXI_RUSER_WIDTH of U0 : label is 1;
  attribute C_AXI_TYPE : integer;
  attribute C_AXI_TYPE of U0 : label is 1;
  attribute C_AXI_WUSER_WIDTH : integer;
  attribute C_AXI_WUSER_WIDTH of U0 : label is 1;
  attribute C_COMMON_CLOCK : integer;
  attribute C_COMMON_CLOCK of U0 : label is 0;
  attribute C_COUNT_TYPE : integer;
  attribute C_COUNT_TYPE of U0 : label is 0;
  attribute C_DATA_COUNT_WIDTH : integer;
  attribute C_DATA_COUNT_WIDTH of U0 : label is 9;
  attribute C_DEFAULT_VALUE : string;
  attribute C_DEFAULT_VALUE of U0 : label is "BlankString";
  attribute C_DIN_WIDTH : integer;
  attribute C_DIN_WIDTH of U0 : label is 32;
  attribute C_DIN_WIDTH_AXIS : integer;
  attribute C_DIN_WIDTH_AXIS of U0 : label is 1;
  attribute C_DIN_WIDTH_RACH : integer;
  attribute C_DIN_WIDTH_RACH of U0 : label is 32;
  attribute C_DIN_WIDTH_RDCH : integer;
  attribute C_DIN_WIDTH_RDCH of U0 : label is 64;
  attribute C_DIN_WIDTH_WACH : integer;
  attribute C_DIN_WIDTH_WACH of U0 : label is 1;
  attribute C_DIN_WIDTH_WDCH : integer;
  attribute C_DIN_WIDTH_WDCH of U0 : label is 64;
  attribute C_DIN_WIDTH_WRCH : integer;
  attribute C_DIN_WIDTH_WRCH of U0 : label is 2;
  attribute C_DOUT_RST_VAL : string;
  attribute C_DOUT_RST_VAL of U0 : label is "0";
  attribute C_DOUT_WIDTH : integer;
  attribute C_DOUT_WIDTH of U0 : label is 32;
  attribute C_ENABLE_RLOCS : integer;
  attribute C_ENABLE_RLOCS of U0 : label is 0;
  attribute C_ENABLE_RST_SYNC : integer;
  attribute C_ENABLE_RST_SYNC of U0 : label is 1;
  attribute C_EN_SAFETY_CKT : integer;
  attribute C_EN_SAFETY_CKT of U0 : label is 0;
  attribute C_ERROR_INJECTION_TYPE : integer;
  attribute C_ERROR_INJECTION_TYPE of U0 : label is 0;
  attribute C_ERROR_INJECTION_TYPE_AXIS : integer;
  attribute C_ERROR_INJECTION_TYPE_AXIS of U0 : label is 0;
  attribute C_ERROR_INJECTION_TYPE_RACH : integer;
  attribute C_ERROR_INJECTION_TYPE_RACH of U0 : label is 0;
  attribute C_ERROR_INJECTION_TYPE_RDCH : integer;
  attribute C_ERROR_INJECTION_TYPE_RDCH of U0 : label is 0;
  attribute C_ERROR_INJECTION_TYPE_WACH : integer;
  attribute C_ERROR_INJECTION_TYPE_WACH of U0 : label is 0;
  attribute C_ERROR_INJECTION_TYPE_WDCH : integer;
  attribute C_ERROR_INJECTION_TYPE_WDCH of U0 : label is 0;
  attribute C_ERROR_INJECTION_TYPE_WRCH : integer;
  attribute C_ERROR_INJECTION_TYPE_WRCH of U0 : label is 0;
  attribute C_FAMILY : string;
  attribute C_FAMILY of U0 : label is "kintexu";
  attribute C_FULL_FLAGS_RST_VAL : integer;
  attribute C_FULL_FLAGS_RST_VAL of U0 : label is 1;
  attribute C_HAS_ALMOST_EMPTY : integer;
  attribute C_HAS_ALMOST_EMPTY of U0 : label is 0;
  attribute C_HAS_ALMOST_FULL : integer;
  attribute C_HAS_ALMOST_FULL of U0 : label is 0;
  attribute C_HAS_AXIS_TDATA : integer;
  attribute C_HAS_AXIS_TDATA of U0 : label is 1;
  attribute C_HAS_AXIS_TDEST : integer;
  attribute C_HAS_AXIS_TDEST of U0 : label is 0;
  attribute C_HAS_AXIS_TID : integer;
  attribute C_HAS_AXIS_TID of U0 : label is 0;
  attribute C_HAS_AXIS_TKEEP : integer;
  attribute C_HAS_AXIS_TKEEP of U0 : label is 0;
  attribute C_HAS_AXIS_TLAST : integer;
  attribute C_HAS_AXIS_TLAST of U0 : label is 0;
  attribute C_HAS_AXIS_TREADY : integer;
  attribute C_HAS_AXIS_TREADY of U0 : label is 1;
  attribute C_HAS_AXIS_TSTRB : integer;
  attribute C_HAS_AXIS_TSTRB of U0 : label is 0;
  attribute C_HAS_AXIS_TUSER : integer;
  attribute C_HAS_AXIS_TUSER of U0 : label is 1;
  attribute C_HAS_AXI_ARUSER : integer;
  attribute C_HAS_AXI_ARUSER of U0 : label is 0;
  attribute C_HAS_AXI_AWUSER : integer;
  attribute C_HAS_AXI_AWUSER of U0 : label is 0;
  attribute C_HAS_AXI_BUSER : integer;
  attribute C_HAS_AXI_BUSER of U0 : label is 0;
  attribute C_HAS_AXI_ID : integer;
  attribute C_HAS_AXI_ID of U0 : label is 0;
  attribute C_HAS_AXI_RD_CHANNEL : integer;
  attribute C_HAS_AXI_RD_CHANNEL of U0 : label is 1;
  attribute C_HAS_AXI_RUSER : integer;
  attribute C_HAS_AXI_RUSER of U0 : label is 0;
  attribute C_HAS_AXI_WR_CHANNEL : integer;
  attribute C_HAS_AXI_WR_CHANNEL of U0 : label is 1;
  attribute C_HAS_AXI_WUSER : integer;
  attribute C_HAS_AXI_WUSER of U0 : label is 0;
  attribute C_HAS_BACKUP : integer;
  attribute C_HAS_BACKUP of U0 : label is 0;
  attribute C_HAS_DATA_COUNT : integer;
  attribute C_HAS_DATA_COUNT of U0 : label is 0;
  attribute C_HAS_DATA_COUNTS_AXIS : integer;
  attribute C_HAS_DATA_COUNTS_AXIS of U0 : label is 0;
  attribute C_HAS_DATA_COUNTS_RACH : integer;
  attribute C_HAS_DATA_COUNTS_RACH of U0 : label is 0;
  attribute C_HAS_DATA_COUNTS_RDCH : integer;
  attribute C_HAS_DATA_COUNTS_RDCH of U0 : label is 0;
  attribute C_HAS_DATA_COUNTS_WACH : integer;
  attribute C_HAS_DATA_COUNTS_WACH of U0 : label is 0;
  attribute C_HAS_DATA_COUNTS_WDCH : integer;
  attribute C_HAS_DATA_COUNTS_WDCH of U0 : label is 0;
  attribute C_HAS_DATA_COUNTS_WRCH : integer;
  attribute C_HAS_DATA_COUNTS_WRCH of U0 : label is 0;
  attribute C_HAS_INT_CLK : integer;
  attribute C_HAS_INT_CLK of U0 : label is 0;
  attribute C_HAS_MASTER_CE : integer;
  attribute C_HAS_MASTER_CE of U0 : label is 0;
  attribute C_HAS_MEMINIT_FILE : integer;
  attribute C_HAS_MEMINIT_FILE of U0 : label is 0;
  attribute C_HAS_OVERFLOW : integer;
  attribute C_HAS_OVERFLOW of U0 : label is 0;
  attribute C_HAS_PROG_FLAGS_AXIS : integer;
  attribute C_HAS_PROG_FLAGS_AXIS of U0 : label is 0;
  attribute C_HAS_PROG_FLAGS_RACH : integer;
  attribute C_HAS_PROG_FLAGS_RACH of U0 : label is 0;
  attribute C_HAS_PROG_FLAGS_RDCH : integer;
  attribute C_HAS_PROG_FLAGS_RDCH of U0 : label is 0;
  attribute C_HAS_PROG_FLAGS_WACH : integer;
  attribute C_HAS_PROG_FLAGS_WACH of U0 : label is 0;
  attribute C_HAS_PROG_FLAGS_WDCH : integer;
  attribute C_HAS_PROG_FLAGS_WDCH of U0 : label is 0;
  attribute C_HAS_PROG_FLAGS_WRCH : integer;
  attribute C_HAS_PROG_FLAGS_WRCH of U0 : label is 0;
  attribute C_HAS_RD_DATA_COUNT : integer;
  attribute C_HAS_RD_DATA_COUNT of U0 : label is 0;
  attribute C_HAS_RD_RST : integer;
  attribute C_HAS_RD_RST of U0 : label is 0;
  attribute C_HAS_RST : integer;
  attribute C_HAS_RST of U0 : label is 1;
  attribute C_HAS_SLAVE_CE : integer;
  attribute C_HAS_SLAVE_CE of U0 : label is 0;
  attribute C_HAS_SRST : integer;
  attribute C_HAS_SRST of U0 : label is 0;
  attribute C_HAS_UNDERFLOW : integer;
  attribute C_HAS_UNDERFLOW of U0 : label is 0;
  attribute C_HAS_VALID : integer;
  attribute C_HAS_VALID of U0 : label is 0;
  attribute C_HAS_WR_ACK : integer;
  attribute C_HAS_WR_ACK of U0 : label is 0;
  attribute C_HAS_WR_DATA_COUNT : integer;
  attribute C_HAS_WR_DATA_COUNT of U0 : label is 0;
  attribute C_HAS_WR_RST : integer;
  attribute C_HAS_WR_RST of U0 : label is 0;
  attribute C_IMPLEMENTATION_TYPE : integer;
  attribute C_IMPLEMENTATION_TYPE of U0 : label is 2;
  attribute C_IMPLEMENTATION_TYPE_AXIS : integer;
  attribute C_IMPLEMENTATION_TYPE_AXIS of U0 : label is 1;
  attribute C_IMPLEMENTATION_TYPE_RACH : integer;
  attribute C_IMPLEMENTATION_TYPE_RACH of U0 : label is 1;
  attribute C_IMPLEMENTATION_TYPE_RDCH : integer;
  attribute C_IMPLEMENTATION_TYPE_RDCH of U0 : label is 1;
  attribute C_IMPLEMENTATION_TYPE_WACH : integer;
  attribute C_IMPLEMENTATION_TYPE_WACH of U0 : label is 1;
  attribute C_IMPLEMENTATION_TYPE_WDCH : integer;
  attribute C_IMPLEMENTATION_TYPE_WDCH of U0 : label is 1;
  attribute C_IMPLEMENTATION_TYPE_WRCH : integer;
  attribute C_IMPLEMENTATION_TYPE_WRCH of U0 : label is 1;
  attribute C_INIT_WR_PNTR_VAL : integer;
  attribute C_INIT_WR_PNTR_VAL of U0 : label is 0;
  attribute C_INTERFACE_TYPE : integer;
  attribute C_INTERFACE_TYPE of U0 : label is 0;
  attribute C_MEMORY_TYPE : integer;
  attribute C_MEMORY_TYPE of U0 : label is 2;
  attribute C_MIF_FILE_NAME : string;
  attribute C_MIF_FILE_NAME of U0 : label is "BlankString";
  attribute C_MSGON_VAL : integer;
  attribute C_MSGON_VAL of U0 : label is 1;
  attribute C_OPTIMIZATION_MODE : integer;
  attribute C_OPTIMIZATION_MODE of U0 : label is 0;
  attribute C_OVERFLOW_LOW : integer;
  attribute C_OVERFLOW_LOW of U0 : label is 0;
  attribute C_POWER_SAVING_MODE : integer;
  attribute C_POWER_SAVING_MODE of U0 : label is 0;
  attribute C_PRELOAD_LATENCY : integer;
  attribute C_PRELOAD_LATENCY of U0 : label is 1;
  attribute C_PRELOAD_REGS : integer;
  attribute C_PRELOAD_REGS of U0 : label is 0;
  attribute C_PRIM_FIFO_TYPE : string;
  attribute C_PRIM_FIFO_TYPE of U0 : label is "512x36";
  attribute C_PRIM_FIFO_TYPE_AXIS : string;
  attribute C_PRIM_FIFO_TYPE_AXIS of U0 : label is "1kx18";
  attribute C_PRIM_FIFO_TYPE_RACH : string;
  attribute C_PRIM_FIFO_TYPE_RACH of U0 : label is "512x36";
  attribute C_PRIM_FIFO_TYPE_RDCH : string;
  attribute C_PRIM_FIFO_TYPE_RDCH of U0 : label is "512x72";
  attribute C_PRIM_FIFO_TYPE_WACH : string;
  attribute C_PRIM_FIFO_TYPE_WACH of U0 : label is "512x36";
  attribute C_PRIM_FIFO_TYPE_WDCH : string;
  attribute C_PRIM_FIFO_TYPE_WDCH of U0 : label is "512x72";
  attribute C_PRIM_FIFO_TYPE_WRCH : string;
  attribute C_PRIM_FIFO_TYPE_WRCH of U0 : label is "512x36";
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL : integer;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL of U0 : label is 2;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_AXIS : integer;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_AXIS of U0 : label is 1022;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_RACH : integer;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_RACH of U0 : label is 1022;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_RDCH : integer;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_RDCH of U0 : label is 1022;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_WACH : integer;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_WACH of U0 : label is 1022;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_WDCH : integer;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_WDCH of U0 : label is 1022;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_WRCH : integer;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_WRCH of U0 : label is 1022;
  attribute C_PROG_EMPTY_THRESH_NEGATE_VAL : integer;
  attribute C_PROG_EMPTY_THRESH_NEGATE_VAL of U0 : label is 3;
  attribute C_PROG_EMPTY_TYPE : integer;
  attribute C_PROG_EMPTY_TYPE of U0 : label is 0;
  attribute C_PROG_EMPTY_TYPE_AXIS : integer;
  attribute C_PROG_EMPTY_TYPE_AXIS of U0 : label is 0;
  attribute C_PROG_EMPTY_TYPE_RACH : integer;
  attribute C_PROG_EMPTY_TYPE_RACH of U0 : label is 0;
  attribute C_PROG_EMPTY_TYPE_RDCH : integer;
  attribute C_PROG_EMPTY_TYPE_RDCH of U0 : label is 0;
  attribute C_PROG_EMPTY_TYPE_WACH : integer;
  attribute C_PROG_EMPTY_TYPE_WACH of U0 : label is 0;
  attribute C_PROG_EMPTY_TYPE_WDCH : integer;
  attribute C_PROG_EMPTY_TYPE_WDCH of U0 : label is 0;
  attribute C_PROG_EMPTY_TYPE_WRCH : integer;
  attribute C_PROG_EMPTY_TYPE_WRCH of U0 : label is 0;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL : integer;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL of U0 : label is 509;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_AXIS : integer;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_AXIS of U0 : label is 1023;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_RACH : integer;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_RACH of U0 : label is 1023;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_RDCH : integer;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_RDCH of U0 : label is 1023;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_WACH : integer;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_WACH of U0 : label is 1023;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_WDCH : integer;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_WDCH of U0 : label is 1023;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_WRCH : integer;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_WRCH of U0 : label is 1023;
  attribute C_PROG_FULL_THRESH_NEGATE_VAL : integer;
  attribute C_PROG_FULL_THRESH_NEGATE_VAL of U0 : label is 508;
  attribute C_PROG_FULL_TYPE : integer;
  attribute C_PROG_FULL_TYPE of U0 : label is 1;
  attribute C_PROG_FULL_TYPE_AXIS : integer;
  attribute C_PROG_FULL_TYPE_AXIS of U0 : label is 0;
  attribute C_PROG_FULL_TYPE_RACH : integer;
  attribute C_PROG_FULL_TYPE_RACH of U0 : label is 0;
  attribute C_PROG_FULL_TYPE_RDCH : integer;
  attribute C_PROG_FULL_TYPE_RDCH of U0 : label is 0;
  attribute C_PROG_FULL_TYPE_WACH : integer;
  attribute C_PROG_FULL_TYPE_WACH of U0 : label is 0;
  attribute C_PROG_FULL_TYPE_WDCH : integer;
  attribute C_PROG_FULL_TYPE_WDCH of U0 : label is 0;
  attribute C_PROG_FULL_TYPE_WRCH : integer;
  attribute C_PROG_FULL_TYPE_WRCH of U0 : label is 0;
  attribute C_RACH_TYPE : integer;
  attribute C_RACH_TYPE of U0 : label is 0;
  attribute C_RDCH_TYPE : integer;
  attribute C_RDCH_TYPE of U0 : label is 0;
  attribute C_RD_DATA_COUNT_WIDTH : integer;
  attribute C_RD_DATA_COUNT_WIDTH of U0 : label is 9;
  attribute C_RD_DEPTH : integer;
  attribute C_RD_DEPTH of U0 : label is 512;
  attribute C_RD_FREQ : integer;
  attribute C_RD_FREQ of U0 : label is 1;
  attribute C_RD_PNTR_WIDTH : integer;
  attribute C_RD_PNTR_WIDTH of U0 : label is 9;
  attribute C_REG_SLICE_MODE_AXIS : integer;
  attribute C_REG_SLICE_MODE_AXIS of U0 : label is 0;
  attribute C_REG_SLICE_MODE_RACH : integer;
  attribute C_REG_SLICE_MODE_RACH of U0 : label is 0;
  attribute C_REG_SLICE_MODE_RDCH : integer;
  attribute C_REG_SLICE_MODE_RDCH of U0 : label is 0;
  attribute C_REG_SLICE_MODE_WACH : integer;
  attribute C_REG_SLICE_MODE_WACH of U0 : label is 0;
  attribute C_REG_SLICE_MODE_WDCH : integer;
  attribute C_REG_SLICE_MODE_WDCH of U0 : label is 0;
  attribute C_REG_SLICE_MODE_WRCH : integer;
  attribute C_REG_SLICE_MODE_WRCH of U0 : label is 0;
  attribute C_SELECT_XPM : integer;
  attribute C_SELECT_XPM of U0 : label is 0;
  attribute C_SYNCHRONIZER_STAGE : integer;
  attribute C_SYNCHRONIZER_STAGE of U0 : label is 2;
  attribute C_UNDERFLOW_LOW : integer;
  attribute C_UNDERFLOW_LOW of U0 : label is 0;
  attribute C_USE_COMMON_OVERFLOW : integer;
  attribute C_USE_COMMON_OVERFLOW of U0 : label is 0;
  attribute C_USE_COMMON_UNDERFLOW : integer;
  attribute C_USE_COMMON_UNDERFLOW of U0 : label is 0;
  attribute C_USE_DEFAULT_SETTINGS : integer;
  attribute C_USE_DEFAULT_SETTINGS of U0 : label is 0;
  attribute C_USE_DOUT_RST : integer;
  attribute C_USE_DOUT_RST of U0 : label is 1;
  attribute C_USE_ECC : integer;
  attribute C_USE_ECC of U0 : label is 0;
  attribute C_USE_ECC_AXIS : integer;
  attribute C_USE_ECC_AXIS of U0 : label is 0;
  attribute C_USE_ECC_RACH : integer;
  attribute C_USE_ECC_RACH of U0 : label is 0;
  attribute C_USE_ECC_RDCH : integer;
  attribute C_USE_ECC_RDCH of U0 : label is 0;
  attribute C_USE_ECC_WACH : integer;
  attribute C_USE_ECC_WACH of U0 : label is 0;
  attribute C_USE_ECC_WDCH : integer;
  attribute C_USE_ECC_WDCH of U0 : label is 0;
  attribute C_USE_ECC_WRCH : integer;
  attribute C_USE_ECC_WRCH of U0 : label is 0;
  attribute C_USE_EMBEDDED_REG : integer;
  attribute C_USE_EMBEDDED_REG of U0 : label is 0;
  attribute C_USE_FIFO16_FLAGS : integer;
  attribute C_USE_FIFO16_FLAGS of U0 : label is 0;
  attribute C_USE_FWFT_DATA_COUNT : integer;
  attribute C_USE_FWFT_DATA_COUNT of U0 : label is 0;
  attribute C_USE_PIPELINE_REG : integer;
  attribute C_USE_PIPELINE_REG of U0 : label is 0;
  attribute C_VALID_LOW : integer;
  attribute C_VALID_LOW of U0 : label is 0;
  attribute C_WACH_TYPE : integer;
  attribute C_WACH_TYPE of U0 : label is 0;
  attribute C_WDCH_TYPE : integer;
  attribute C_WDCH_TYPE of U0 : label is 0;
  attribute C_WRCH_TYPE : integer;
  attribute C_WRCH_TYPE of U0 : label is 0;
  attribute C_WR_ACK_LOW : integer;
  attribute C_WR_ACK_LOW of U0 : label is 0;
  attribute C_WR_DATA_COUNT_WIDTH : integer;
  attribute C_WR_DATA_COUNT_WIDTH of U0 : label is 9;
  attribute C_WR_DEPTH : integer;
  attribute C_WR_DEPTH of U0 : label is 512;
  attribute C_WR_DEPTH_AXIS : integer;
  attribute C_WR_DEPTH_AXIS of U0 : label is 1024;
  attribute C_WR_DEPTH_RACH : integer;
  attribute C_WR_DEPTH_RACH of U0 : label is 16;
  attribute C_WR_DEPTH_RDCH : integer;
  attribute C_WR_DEPTH_RDCH of U0 : label is 1024;
  attribute C_WR_DEPTH_WACH : integer;
  attribute C_WR_DEPTH_WACH of U0 : label is 16;
  attribute C_WR_DEPTH_WDCH : integer;
  attribute C_WR_DEPTH_WDCH of U0 : label is 1024;
  attribute C_WR_DEPTH_WRCH : integer;
  attribute C_WR_DEPTH_WRCH of U0 : label is 16;
  attribute C_WR_FREQ : integer;
  attribute C_WR_FREQ of U0 : label is 1;
  attribute C_WR_PNTR_WIDTH : integer;
  attribute C_WR_PNTR_WIDTH of U0 : label is 9;
  attribute C_WR_PNTR_WIDTH_AXIS : integer;
  attribute C_WR_PNTR_WIDTH_AXIS of U0 : label is 10;
  attribute C_WR_PNTR_WIDTH_RACH : integer;
  attribute C_WR_PNTR_WIDTH_RACH of U0 : label is 4;
  attribute C_WR_PNTR_WIDTH_RDCH : integer;
  attribute C_WR_PNTR_WIDTH_RDCH of U0 : label is 10;
  attribute C_WR_PNTR_WIDTH_WACH : integer;
  attribute C_WR_PNTR_WIDTH_WACH of U0 : label is 4;
  attribute C_WR_PNTR_WIDTH_WDCH : integer;
  attribute C_WR_PNTR_WIDTH_WDCH of U0 : label is 10;
  attribute C_WR_PNTR_WIDTH_WRCH : integer;
  attribute C_WR_PNTR_WIDTH_WRCH of U0 : label is 4;
  attribute C_WR_RESPONSE_LATENCY : integer;
  attribute C_WR_RESPONSE_LATENCY of U0 : label is 1;
begin
U0: entity work.xcl_design_flash_programmer_0_fifo_generator_v13_1_2
     port map (
      almost_empty => NLW_U0_almost_empty_UNCONNECTED,
      almost_full => NLW_U0_almost_full_UNCONNECTED,
      axi_ar_data_count(4 downto 0) => NLW_U0_axi_ar_data_count_UNCONNECTED(4 downto 0),
      axi_ar_dbiterr => NLW_U0_axi_ar_dbiterr_UNCONNECTED,
      axi_ar_injectdbiterr => '0',
      axi_ar_injectsbiterr => '0',
      axi_ar_overflow => NLW_U0_axi_ar_overflow_UNCONNECTED,
      axi_ar_prog_empty => NLW_U0_axi_ar_prog_empty_UNCONNECTED,
      axi_ar_prog_empty_thresh(3 downto 0) => B"0000",
      axi_ar_prog_full => NLW_U0_axi_ar_prog_full_UNCONNECTED,
      axi_ar_prog_full_thresh(3 downto 0) => B"0000",
      axi_ar_rd_data_count(4 downto 0) => NLW_U0_axi_ar_rd_data_count_UNCONNECTED(4 downto 0),
      axi_ar_sbiterr => NLW_U0_axi_ar_sbiterr_UNCONNECTED,
      axi_ar_underflow => NLW_U0_axi_ar_underflow_UNCONNECTED,
      axi_ar_wr_data_count(4 downto 0) => NLW_U0_axi_ar_wr_data_count_UNCONNECTED(4 downto 0),
      axi_aw_data_count(4 downto 0) => NLW_U0_axi_aw_data_count_UNCONNECTED(4 downto 0),
      axi_aw_dbiterr => NLW_U0_axi_aw_dbiterr_UNCONNECTED,
      axi_aw_injectdbiterr => '0',
      axi_aw_injectsbiterr => '0',
      axi_aw_overflow => NLW_U0_axi_aw_overflow_UNCONNECTED,
      axi_aw_prog_empty => NLW_U0_axi_aw_prog_empty_UNCONNECTED,
      axi_aw_prog_empty_thresh(3 downto 0) => B"0000",
      axi_aw_prog_full => NLW_U0_axi_aw_prog_full_UNCONNECTED,
      axi_aw_prog_full_thresh(3 downto 0) => B"0000",
      axi_aw_rd_data_count(4 downto 0) => NLW_U0_axi_aw_rd_data_count_UNCONNECTED(4 downto 0),
      axi_aw_sbiterr => NLW_U0_axi_aw_sbiterr_UNCONNECTED,
      axi_aw_underflow => NLW_U0_axi_aw_underflow_UNCONNECTED,
      axi_aw_wr_data_count(4 downto 0) => NLW_U0_axi_aw_wr_data_count_UNCONNECTED(4 downto 0),
      axi_b_data_count(4 downto 0) => NLW_U0_axi_b_data_count_UNCONNECTED(4 downto 0),
      axi_b_dbiterr => NLW_U0_axi_b_dbiterr_UNCONNECTED,
      axi_b_injectdbiterr => '0',
      axi_b_injectsbiterr => '0',
      axi_b_overflow => NLW_U0_axi_b_overflow_UNCONNECTED,
      axi_b_prog_empty => NLW_U0_axi_b_prog_empty_UNCONNECTED,
      axi_b_prog_empty_thresh(3 downto 0) => B"0000",
      axi_b_prog_full => NLW_U0_axi_b_prog_full_UNCONNECTED,
      axi_b_prog_full_thresh(3 downto 0) => B"0000",
      axi_b_rd_data_count(4 downto 0) => NLW_U0_axi_b_rd_data_count_UNCONNECTED(4 downto 0),
      axi_b_sbiterr => NLW_U0_axi_b_sbiterr_UNCONNECTED,
      axi_b_underflow => NLW_U0_axi_b_underflow_UNCONNECTED,
      axi_b_wr_data_count(4 downto 0) => NLW_U0_axi_b_wr_data_count_UNCONNECTED(4 downto 0),
      axi_r_data_count(10 downto 0) => NLW_U0_axi_r_data_count_UNCONNECTED(10 downto 0),
      axi_r_dbiterr => NLW_U0_axi_r_dbiterr_UNCONNECTED,
      axi_r_injectdbiterr => '0',
      axi_r_injectsbiterr => '0',
      axi_r_overflow => NLW_U0_axi_r_overflow_UNCONNECTED,
      axi_r_prog_empty => NLW_U0_axi_r_prog_empty_UNCONNECTED,
      axi_r_prog_empty_thresh(9 downto 0) => B"0000000000",
      axi_r_prog_full => NLW_U0_axi_r_prog_full_UNCONNECTED,
      axi_r_prog_full_thresh(9 downto 0) => B"0000000000",
      axi_r_rd_data_count(10 downto 0) => NLW_U0_axi_r_rd_data_count_UNCONNECTED(10 downto 0),
      axi_r_sbiterr => NLW_U0_axi_r_sbiterr_UNCONNECTED,
      axi_r_underflow => NLW_U0_axi_r_underflow_UNCONNECTED,
      axi_r_wr_data_count(10 downto 0) => NLW_U0_axi_r_wr_data_count_UNCONNECTED(10 downto 0),
      axi_w_data_count(10 downto 0) => NLW_U0_axi_w_data_count_UNCONNECTED(10 downto 0),
      axi_w_dbiterr => NLW_U0_axi_w_dbiterr_UNCONNECTED,
      axi_w_injectdbiterr => '0',
      axi_w_injectsbiterr => '0',
      axi_w_overflow => NLW_U0_axi_w_overflow_UNCONNECTED,
      axi_w_prog_empty => NLW_U0_axi_w_prog_empty_UNCONNECTED,
      axi_w_prog_empty_thresh(9 downto 0) => B"0000000000",
      axi_w_prog_full => NLW_U0_axi_w_prog_full_UNCONNECTED,
      axi_w_prog_full_thresh(9 downto 0) => B"0000000000",
      axi_w_rd_data_count(10 downto 0) => NLW_U0_axi_w_rd_data_count_UNCONNECTED(10 downto 0),
      axi_w_sbiterr => NLW_U0_axi_w_sbiterr_UNCONNECTED,
      axi_w_underflow => NLW_U0_axi_w_underflow_UNCONNECTED,
      axi_w_wr_data_count(10 downto 0) => NLW_U0_axi_w_wr_data_count_UNCONNECTED(10 downto 0),
      axis_data_count(10 downto 0) => NLW_U0_axis_data_count_UNCONNECTED(10 downto 0),
      axis_dbiterr => NLW_U0_axis_dbiterr_UNCONNECTED,
      axis_injectdbiterr => '0',
      axis_injectsbiterr => '0',
      axis_overflow => NLW_U0_axis_overflow_UNCONNECTED,
      axis_prog_empty => NLW_U0_axis_prog_empty_UNCONNECTED,
      axis_prog_empty_thresh(9 downto 0) => B"0000000000",
      axis_prog_full => NLW_U0_axis_prog_full_UNCONNECTED,
      axis_prog_full_thresh(9 downto 0) => B"0000000000",
      axis_rd_data_count(10 downto 0) => NLW_U0_axis_rd_data_count_UNCONNECTED(10 downto 0),
      axis_sbiterr => NLW_U0_axis_sbiterr_UNCONNECTED,
      axis_underflow => NLW_U0_axis_underflow_UNCONNECTED,
      axis_wr_data_count(10 downto 0) => NLW_U0_axis_wr_data_count_UNCONNECTED(10 downto 0),
      backup => '0',
      backup_marker => '0',
      clk => '0',
      data_count(8 downto 0) => NLW_U0_data_count_UNCONNECTED(8 downto 0),
      dbiterr => NLW_U0_dbiterr_UNCONNECTED,
      din(31 downto 0) => din(31 downto 0),
      dout(31 downto 0) => dout(31 downto 0),
      empty => empty,
      full => full,
      injectdbiterr => '0',
      injectsbiterr => '0',
      int_clk => '0',
      m_aclk => '0',
      m_aclk_en => '0',
      m_axi_araddr(31 downto 0) => NLW_U0_m_axi_araddr_UNCONNECTED(31 downto 0),
      m_axi_arburst(1 downto 0) => NLW_U0_m_axi_arburst_UNCONNECTED(1 downto 0),
      m_axi_arcache(3 downto 0) => NLW_U0_m_axi_arcache_UNCONNECTED(3 downto 0),
      m_axi_arid(0) => NLW_U0_m_axi_arid_UNCONNECTED(0),
      m_axi_arlen(7 downto 0) => NLW_U0_m_axi_arlen_UNCONNECTED(7 downto 0),
      m_axi_arlock(0) => NLW_U0_m_axi_arlock_UNCONNECTED(0),
      m_axi_arprot(2 downto 0) => NLW_U0_m_axi_arprot_UNCONNECTED(2 downto 0),
      m_axi_arqos(3 downto 0) => NLW_U0_m_axi_arqos_UNCONNECTED(3 downto 0),
      m_axi_arready => '0',
      m_axi_arregion(3 downto 0) => NLW_U0_m_axi_arregion_UNCONNECTED(3 downto 0),
      m_axi_arsize(2 downto 0) => NLW_U0_m_axi_arsize_UNCONNECTED(2 downto 0),
      m_axi_aruser(0) => NLW_U0_m_axi_aruser_UNCONNECTED(0),
      m_axi_arvalid => NLW_U0_m_axi_arvalid_UNCONNECTED,
      m_axi_awaddr(31 downto 0) => NLW_U0_m_axi_awaddr_UNCONNECTED(31 downto 0),
      m_axi_awburst(1 downto 0) => NLW_U0_m_axi_awburst_UNCONNECTED(1 downto 0),
      m_axi_awcache(3 downto 0) => NLW_U0_m_axi_awcache_UNCONNECTED(3 downto 0),
      m_axi_awid(0) => NLW_U0_m_axi_awid_UNCONNECTED(0),
      m_axi_awlen(7 downto 0) => NLW_U0_m_axi_awlen_UNCONNECTED(7 downto 0),
      m_axi_awlock(0) => NLW_U0_m_axi_awlock_UNCONNECTED(0),
      m_axi_awprot(2 downto 0) => NLW_U0_m_axi_awprot_UNCONNECTED(2 downto 0),
      m_axi_awqos(3 downto 0) => NLW_U0_m_axi_awqos_UNCONNECTED(3 downto 0),
      m_axi_awready => '0',
      m_axi_awregion(3 downto 0) => NLW_U0_m_axi_awregion_UNCONNECTED(3 downto 0),
      m_axi_awsize(2 downto 0) => NLW_U0_m_axi_awsize_UNCONNECTED(2 downto 0),
      m_axi_awuser(0) => NLW_U0_m_axi_awuser_UNCONNECTED(0),
      m_axi_awvalid => NLW_U0_m_axi_awvalid_UNCONNECTED,
      m_axi_bid(0) => '0',
      m_axi_bready => NLW_U0_m_axi_bready_UNCONNECTED,
      m_axi_bresp(1 downto 0) => B"00",
      m_axi_buser(0) => '0',
      m_axi_bvalid => '0',
      m_axi_rdata(63 downto 0) => B"0000000000000000000000000000000000000000000000000000000000000000",
      m_axi_rid(0) => '0',
      m_axi_rlast => '0',
      m_axi_rready => NLW_U0_m_axi_rready_UNCONNECTED,
      m_axi_rresp(1 downto 0) => B"00",
      m_axi_ruser(0) => '0',
      m_axi_rvalid => '0',
      m_axi_wdata(63 downto 0) => NLW_U0_m_axi_wdata_UNCONNECTED(63 downto 0),
      m_axi_wid(0) => NLW_U0_m_axi_wid_UNCONNECTED(0),
      m_axi_wlast => NLW_U0_m_axi_wlast_UNCONNECTED,
      m_axi_wready => '0',
      m_axi_wstrb(7 downto 0) => NLW_U0_m_axi_wstrb_UNCONNECTED(7 downto 0),
      m_axi_wuser(0) => NLW_U0_m_axi_wuser_UNCONNECTED(0),
      m_axi_wvalid => NLW_U0_m_axi_wvalid_UNCONNECTED,
      m_axis_tdata(7 downto 0) => NLW_U0_m_axis_tdata_UNCONNECTED(7 downto 0),
      m_axis_tdest(0) => NLW_U0_m_axis_tdest_UNCONNECTED(0),
      m_axis_tid(0) => NLW_U0_m_axis_tid_UNCONNECTED(0),
      m_axis_tkeep(0) => NLW_U0_m_axis_tkeep_UNCONNECTED(0),
      m_axis_tlast => NLW_U0_m_axis_tlast_UNCONNECTED,
      m_axis_tready => '0',
      m_axis_tstrb(0) => NLW_U0_m_axis_tstrb_UNCONNECTED(0),
      m_axis_tuser(3 downto 0) => NLW_U0_m_axis_tuser_UNCONNECTED(3 downto 0),
      m_axis_tvalid => NLW_U0_m_axis_tvalid_UNCONNECTED,
      overflow => NLW_U0_overflow_UNCONNECTED,
      prog_empty => NLW_U0_prog_empty_UNCONNECTED,
      prog_empty_thresh(8 downto 0) => B"000000000",
      prog_empty_thresh_assert(8 downto 0) => B"000000000",
      prog_empty_thresh_negate(8 downto 0) => B"000000000",
      prog_full => prog_full,
      prog_full_thresh(8 downto 0) => B"000000000",
      prog_full_thresh_assert(8 downto 0) => B"000000000",
      prog_full_thresh_negate(8 downto 0) => B"000000000",
      rd_clk => rd_clk,
      rd_data_count(8 downto 0) => NLW_U0_rd_data_count_UNCONNECTED(8 downto 0),
      rd_en => rd_en,
      rd_rst => '0',
      rd_rst_busy => NLW_U0_rd_rst_busy_UNCONNECTED,
      rst => rst,
      s_aclk => '0',
      s_aclk_en => '0',
      s_aresetn => '0',
      s_axi_araddr(31 downto 0) => B"00000000000000000000000000000000",
      s_axi_arburst(1 downto 0) => B"00",
      s_axi_arcache(3 downto 0) => B"0000",
      s_axi_arid(0) => '0',
      s_axi_arlen(7 downto 0) => B"00000000",
      s_axi_arlock(0) => '0',
      s_axi_arprot(2 downto 0) => B"000",
      s_axi_arqos(3 downto 0) => B"0000",
      s_axi_arready => NLW_U0_s_axi_arready_UNCONNECTED,
      s_axi_arregion(3 downto 0) => B"0000",
      s_axi_arsize(2 downto 0) => B"000",
      s_axi_aruser(0) => '0',
      s_axi_arvalid => '0',
      s_axi_awaddr(31 downto 0) => B"00000000000000000000000000000000",
      s_axi_awburst(1 downto 0) => B"00",
      s_axi_awcache(3 downto 0) => B"0000",
      s_axi_awid(0) => '0',
      s_axi_awlen(7 downto 0) => B"00000000",
      s_axi_awlock(0) => '0',
      s_axi_awprot(2 downto 0) => B"000",
      s_axi_awqos(3 downto 0) => B"0000",
      s_axi_awready => NLW_U0_s_axi_awready_UNCONNECTED,
      s_axi_awregion(3 downto 0) => B"0000",
      s_axi_awsize(2 downto 0) => B"000",
      s_axi_awuser(0) => '0',
      s_axi_awvalid => '0',
      s_axi_bid(0) => NLW_U0_s_axi_bid_UNCONNECTED(0),
      s_axi_bready => '0',
      s_axi_bresp(1 downto 0) => NLW_U0_s_axi_bresp_UNCONNECTED(1 downto 0),
      s_axi_buser(0) => NLW_U0_s_axi_buser_UNCONNECTED(0),
      s_axi_bvalid => NLW_U0_s_axi_bvalid_UNCONNECTED,
      s_axi_rdata(63 downto 0) => NLW_U0_s_axi_rdata_UNCONNECTED(63 downto 0),
      s_axi_rid(0) => NLW_U0_s_axi_rid_UNCONNECTED(0),
      s_axi_rlast => NLW_U0_s_axi_rlast_UNCONNECTED,
      s_axi_rready => '0',
      s_axi_rresp(1 downto 0) => NLW_U0_s_axi_rresp_UNCONNECTED(1 downto 0),
      s_axi_ruser(0) => NLW_U0_s_axi_ruser_UNCONNECTED(0),
      s_axi_rvalid => NLW_U0_s_axi_rvalid_UNCONNECTED,
      s_axi_wdata(63 downto 0) => B"0000000000000000000000000000000000000000000000000000000000000000",
      s_axi_wid(0) => '0',
      s_axi_wlast => '0',
      s_axi_wready => NLW_U0_s_axi_wready_UNCONNECTED,
      s_axi_wstrb(7 downto 0) => B"00000000",
      s_axi_wuser(0) => '0',
      s_axi_wvalid => '0',
      s_axis_tdata(7 downto 0) => B"00000000",
      s_axis_tdest(0) => '0',
      s_axis_tid(0) => '0',
      s_axis_tkeep(0) => '0',
      s_axis_tlast => '0',
      s_axis_tready => NLW_U0_s_axis_tready_UNCONNECTED,
      s_axis_tstrb(0) => '0',
      s_axis_tuser(3 downto 0) => B"0000",
      s_axis_tvalid => '0',
      sbiterr => NLW_U0_sbiterr_UNCONNECTED,
      sleep => '0',
      srst => '0',
      underflow => NLW_U0_underflow_UNCONNECTED,
      valid => NLW_U0_valid_UNCONNECTED,
      wr_ack => NLW_U0_wr_ack_UNCONNECTED,
      wr_clk => wr_clk,
      wr_data_count(8 downto 0) => NLW_U0_wr_data_count_UNCONNECTED(8 downto 0),
      wr_en => wr_en,
      wr_rst => '0',
      wr_rst_busy => NLW_U0_wr_rst_busy_UNCONNECTED
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity xcl_design_flash_programmer_0_AXI_to_BPI is
  port (
    flash_rst : in STD_LOGIC;
    flash_clk : in STD_LOGIC;
    flash_A : out STD_LOGIC_VECTOR ( 26 downto 1 );
    flash_DQ : inout STD_LOGIC_VECTOR ( 15 downto 4 );
    flash_OE_N : out STD_LOGIC;
    flash_WE_N : out STD_LOGIC;
    flash_ADV_N : out STD_LOGIC;
    S_AXI_ACLK : in STD_LOGIC;
    S_AXI_ARESETN : in STD_LOGIC;
    S_AXI_AWADDR : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_AWPROT : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_AWVALID : in STD_LOGIC;
    S_AXI_AWREADY : out STD_LOGIC;
    S_AXI_WDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_WSTRB : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_WVALID : in STD_LOGIC;
    S_AXI_WREADY : out STD_LOGIC;
    S_AXI_BRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_BVALID : out STD_LOGIC;
    S_AXI_BREADY : in STD_LOGIC;
    S_AXI_ARADDR : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_ARPROT : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_ARVALID : in STD_LOGIC;
    S_AXI_ARREADY : out STD_LOGIC;
    S_AXI_RDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_RRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_RVALID : out STD_LOGIC;
    S_AXI_RREADY : in STD_LOGIC
  );
  attribute C_S_AXI_ADDR_WIDTH : integer;
  attribute C_S_AXI_ADDR_WIDTH of xcl_design_flash_programmer_0_AXI_to_BPI : entity is 8;
  attribute C_S_AXI_DATA_WIDTH : integer;
  attribute C_S_AXI_DATA_WIDTH of xcl_design_flash_programmer_0_AXI_to_BPI : entity is 32;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of xcl_design_flash_programmer_0_AXI_to_BPI : entity is "AXI_to_BPI";
end xcl_design_flash_programmer_0_AXI_to_BPI;

architecture STRUCTURE of xcl_design_flash_programmer_0_AXI_to_BPI is
  signal \<const0>\ : STD_LOGIC;
  signal \<const1>\ : STD_LOGIC;
  signal \^s_axi_arready\ : STD_LOGIC;
  signal \^s_axi_awready\ : STD_LOGIC;
  signal \^s_axi_bvalid\ : STD_LOGIC;
  signal \^s_axi_rvalid\ : STD_LOGIC;
  signal \^s_axi_wready\ : STD_LOGIC;
  signal axi_arready_i_1_n_0 : STD_LOGIC;
  signal axi_awready_i_1_n_0 : STD_LOGIC;
  signal axi_awready_i_2_n_0 : STD_LOGIC;
  signal axi_bvalid_i_1_n_0 : STD_LOGIC;
  signal axi_rvalid_i_1_n_0 : STD_LOGIC;
  signal axi_wready_i_1_n_0 : STD_LOGIC;
  signal fifo_data_out : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal fifo_empty : STD_LOGIC;
  signal fifo_full : STD_LOGIC;
  signal fifo_rd_en : STD_LOGIC;
  signal \^flash_a\ : STD_LOGIC_VECTOR ( 24 downto 1 );
  signal flash_CS_N : STD_LOGIC;
  signal flash_DQ_I : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal flash_DQ_O : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal flash_tri_ctrl : STD_LOGIC;
  signal prog_rdy : STD_LOGIC;
  signal prom_sr : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal reg_data_out : STD_LOGIC_VECTOR ( 31 downto 0 );
  attribute async_reg : string;
  attribute async_reg of reg_data_out : signal is "true";
  signal reg_data_out_async1 : STD_LOGIC_VECTOR ( 31 downto 0 );
  attribute async_reg of reg_data_out_async1 : signal is "true";
  signal slv_reg_rden : STD_LOGIC;
  signal slv_reg_wren : STD_LOGIC;
  signal NLW_STARTUPE3_inst_CFGCLK_UNCONNECTED : STD_LOGIC;
  signal NLW_STARTUPE3_inst_CFGMCLK_UNCONNECTED : STD_LOGIC;
  signal NLW_STARTUPE3_inst_EOS_UNCONNECTED : STD_LOGIC;
  signal NLW_STARTUPE3_inst_PREQ_UNCONNECTED : STD_LOGIC;
  signal NLW_bitstream_fifo_i_full_UNCONNECTED : STD_LOGIC;
  signal NLW_programmer_i_ERROR_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute box_type : string;
  attribute box_type of STARTUPE3_inst : label is "PRIMITIVE";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of axi_arready_i_1 : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of axi_rvalid_i_1 : label is "soft_lutpair45";
  attribute box_type of \bidir_IO[10].IOBUF_i\ : label is "PRIMITIVE";
  attribute box_type of \bidir_IO[11].IOBUF_i\ : label is "PRIMITIVE";
  attribute box_type of \bidir_IO[12].IOBUF_i\ : label is "PRIMITIVE";
  attribute box_type of \bidir_IO[13].IOBUF_i\ : label is "PRIMITIVE";
  attribute box_type of \bidir_IO[14].IOBUF_i\ : label is "PRIMITIVE";
  attribute box_type of \bidir_IO[15].IOBUF_i\ : label is "PRIMITIVE";
  attribute box_type of \bidir_IO[4].IOBUF_i\ : label is "PRIMITIVE";
  attribute box_type of \bidir_IO[5].IOBUF_i\ : label is "PRIMITIVE";
  attribute box_type of \bidir_IO[6].IOBUF_i\ : label is "PRIMITIVE";
  attribute box_type of \bidir_IO[7].IOBUF_i\ : label is "PRIMITIVE";
  attribute box_type of \bidir_IO[8].IOBUF_i\ : label is "PRIMITIVE";
  attribute box_type of \bidir_IO[9].IOBUF_i\ : label is "PRIMITIVE";
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of bitstream_fifo_i : label is "bitstream_fifo,fifo_generator_v13_1_2,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of bitstream_fifo_i : label is "yes";
  attribute x_core_info : string;
  attribute x_core_info of bitstream_fifo_i : label is "fifo_generator_v13_1_2,Vivado 2016.3_sdx";
  attribute DONT_TOUCH : boolean;
  attribute DONT_TOUCH of programmer_i : label is std.standard.true;
  attribute blk_lck_setup_cmd : string;
  attribute blk_lck_setup_cmd of programmer_i : label is "6'b000010";
  attribute command : string;
  attribute command of programmer_i : label is "6'b000001";
  attribute eras_chk_SR : string;
  attribute eras_chk_SR of programmer_i : label is "6'b010000";
  attribute eras_chk_pollcnt : string;
  attribute eras_chk_pollcnt of programmer_i : label is "6'b010001";
  attribute eras_clear_SR : string;
  attribute eras_clear_SR of programmer_i : label is "6'b100100";
  attribute eras_clear_SR_1 : string;
  attribute eras_clear_SR_1 of programmer_i : label is "6'b100101";
  attribute eras_confirm : string;
  attribute eras_confirm of programmer_i : label is "6'b001100";
  attribute eras_confirm_1 : string;
  attribute eras_confirm_1 of programmer_i : label is "6'b001101";
  attribute eras_rd_SR : string;
  attribute eras_rd_SR of programmer_i : label is "6'b001110";
  attribute eras_rd_SR_1 : string;
  attribute eras_rd_SR_1 of programmer_i : label is "6'b001111";
  attribute eras_rd_SR_2 : string;
  attribute eras_rd_SR_2 of programmer_i : label is "6'b100000";
  attribute eras_setup : string;
  attribute eras_setup of programmer_i : label is "6'b001011";
  attribute error : string;
  attribute error of programmer_i : label is "6'b011111";
  attribute idle : string;
  attribute idle of programmer_i : label is "6'b000000";
  attribute prog_buf : string;
  attribute prog_buf of programmer_i : label is "6'b011001";
  attribute prog_buf_1 : string;
  attribute prog_buf_1 of programmer_i : label is "6'b101011";
  attribute prog_bufprog_chk_SR : string;
  attribute prog_bufprog_chk_SR of programmer_i : label is "6'b011100";
  attribute prog_bufprog_chk_pollcnt : string;
  attribute prog_bufprog_chk_pollcnt of programmer_i : label is "6'b011101";
  attribute prog_bufprog_rd_SR : string;
  attribute prog_bufprog_rd_SR of programmer_i : label is "6'b011010";
  attribute prog_bufprog_rd_SR_1 : string;
  attribute prog_bufprog_rd_SR_1 of programmer_i : label is "6'b011011";
  attribute prog_chk_SR : string;
  attribute prog_chk_SR of programmer_i : label is "6'b010101";
  attribute prog_chk_data_count : string;
  attribute prog_chk_data_count of programmer_i : label is "6'b011000";
  attribute prog_chk_pollcnt : string;
  attribute prog_chk_pollcnt of programmer_i : label is "6'b010110";
  attribute prog_load_addr : string;
  attribute prog_load_addr of programmer_i : label is "6'b010111";
  attribute prog_load_addr_1 : string;
  attribute prog_load_addr_1 of programmer_i : label is "6'b100110";
  attribute prog_load_addr_2 : string;
  attribute prog_load_addr_2 of programmer_i : label is "6'b100111";
  attribute prog_load_buffer : string;
  attribute prog_load_buffer of programmer_i : label is "6'b100010";
  attribute prog_load_buffer_underrun : string;
  attribute prog_load_buffer_underrun of programmer_i : label is "6'b101000";
  attribute prog_load_buffer_underrun1 : string;
  attribute prog_load_buffer_underrun1 of programmer_i : label is "6'b101001";
  attribute prog_load_buffer_underrun2 : string;
  attribute prog_load_buffer_underrun2 of programmer_i : label is "6'b101010";
  attribute prog_rd_SR : string;
  attribute prog_rd_SR of programmer_i : label is "6'b010011";
  attribute prog_rd_SR_1 : string;
  attribute prog_rd_SR_1 of programmer_i : label is "6'b010100";
  attribute prog_rd_SR_2 : string;
  attribute prog_rd_SR_2 of programmer_i : label is "6'b100001";
  attribute prog_setup : string;
  attribute prog_setup of programmer_i : label is "6'b010010";
  attribute rd_id : string;
  attribute rd_id of programmer_i : label is "6'b000101";
  attribute rd_id_1 : string;
  attribute rd_id_1 of programmer_i : label is "6'b000110";
  attribute unlck_chk_id : string;
  attribute unlck_chk_id of programmer_i : label is "6'b001001";
  attribute unlck_chk_pollcnt : string;
  attribute unlck_chk_pollcnt of programmer_i : label is "6'b001010";
  attribute unlck_cmd : string;
  attribute unlck_cmd of programmer_i : label is "6'b000011";
  attribute unlck_cmd_1 : string;
  attribute unlck_cmd_1 of programmer_i : label is "6'b000100";
  attribute unlck_rd_SR : string;
  attribute unlck_rd_SR of programmer_i : label is "6'b000111";
  attribute unlck_rd_SR_1 : string;
  attribute unlck_rd_SR_1 of programmer_i : label is "6'b001000";
  attribute unlck_rd_SR_2 : string;
  attribute unlck_rd_SR_2 of programmer_i : label is "6'b011110";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \reg_data_out_async1_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \reg_data_out_async1_reg[0]\ : label is "yes";
  attribute ASYNC_REG_boolean of \reg_data_out_async1_reg[10]\ : label is std.standard.true;
  attribute KEEP of \reg_data_out_async1_reg[10]\ : label is "yes";
  attribute ASYNC_REG_boolean of \reg_data_out_async1_reg[11]\ : label is std.standard.true;
  attribute KEEP of \reg_data_out_async1_reg[11]\ : label is "yes";
  attribute ASYNC_REG_boolean of \reg_data_out_async1_reg[12]\ : label is std.standard.true;
  attribute KEEP of \reg_data_out_async1_reg[12]\ : label is "yes";
  attribute ASYNC_REG_boolean of \reg_data_out_async1_reg[13]\ : label is std.standard.true;
  attribute KEEP of \reg_data_out_async1_reg[13]\ : label is "yes";
  attribute ASYNC_REG_boolean of \reg_data_out_async1_reg[14]\ : label is std.standard.true;
  attribute KEEP of \reg_data_out_async1_reg[14]\ : label is "yes";
  attribute ASYNC_REG_boolean of \reg_data_out_async1_reg[15]\ : label is std.standard.true;
  attribute KEEP of \reg_data_out_async1_reg[15]\ : label is "yes";
  attribute ASYNC_REG_boolean of \reg_data_out_async1_reg[16]\ : label is std.standard.true;
  attribute KEEP of \reg_data_out_async1_reg[16]\ : label is "yes";
  attribute ASYNC_REG_boolean of \reg_data_out_async1_reg[17]\ : label is std.standard.true;
  attribute KEEP of \reg_data_out_async1_reg[17]\ : label is "yes";
  attribute ASYNC_REG_boolean of \reg_data_out_async1_reg[18]\ : label is std.standard.true;
  attribute KEEP of \reg_data_out_async1_reg[18]\ : label is "yes";
  attribute ASYNC_REG_boolean of \reg_data_out_async1_reg[19]\ : label is std.standard.true;
  attribute KEEP of \reg_data_out_async1_reg[19]\ : label is "yes";
  attribute ASYNC_REG_boolean of \reg_data_out_async1_reg[1]\ : label is std.standard.true;
  attribute KEEP of \reg_data_out_async1_reg[1]\ : label is "yes";
  attribute ASYNC_REG_boolean of \reg_data_out_async1_reg[20]\ : label is std.standard.true;
  attribute KEEP of \reg_data_out_async1_reg[20]\ : label is "yes";
  attribute ASYNC_REG_boolean of \reg_data_out_async1_reg[21]\ : label is std.standard.true;
  attribute KEEP of \reg_data_out_async1_reg[21]\ : label is "yes";
  attribute ASYNC_REG_boolean of \reg_data_out_async1_reg[22]\ : label is std.standard.true;
  attribute KEEP of \reg_data_out_async1_reg[22]\ : label is "yes";
  attribute ASYNC_REG_boolean of \reg_data_out_async1_reg[23]\ : label is std.standard.true;
  attribute KEEP of \reg_data_out_async1_reg[23]\ : label is "yes";
  attribute ASYNC_REG_boolean of \reg_data_out_async1_reg[24]\ : label is std.standard.true;
  attribute KEEP of \reg_data_out_async1_reg[24]\ : label is "yes";
  attribute ASYNC_REG_boolean of \reg_data_out_async1_reg[25]\ : label is std.standard.true;
  attribute KEEP of \reg_data_out_async1_reg[25]\ : label is "yes";
  attribute ASYNC_REG_boolean of \reg_data_out_async1_reg[26]\ : label is std.standard.true;
  attribute KEEP of \reg_data_out_async1_reg[26]\ : label is "yes";
  attribute ASYNC_REG_boolean of \reg_data_out_async1_reg[27]\ : label is std.standard.true;
  attribute KEEP of \reg_data_out_async1_reg[27]\ : label is "yes";
  attribute ASYNC_REG_boolean of \reg_data_out_async1_reg[28]\ : label is std.standard.true;
  attribute KEEP of \reg_data_out_async1_reg[28]\ : label is "yes";
  attribute ASYNC_REG_boolean of \reg_data_out_async1_reg[29]\ : label is std.standard.true;
  attribute KEEP of \reg_data_out_async1_reg[29]\ : label is "yes";
  attribute ASYNC_REG_boolean of \reg_data_out_async1_reg[2]\ : label is std.standard.true;
  attribute KEEP of \reg_data_out_async1_reg[2]\ : label is "yes";
  attribute ASYNC_REG_boolean of \reg_data_out_async1_reg[30]\ : label is std.standard.true;
  attribute KEEP of \reg_data_out_async1_reg[30]\ : label is "yes";
  attribute ASYNC_REG_boolean of \reg_data_out_async1_reg[31]\ : label is std.standard.true;
  attribute KEEP of \reg_data_out_async1_reg[31]\ : label is "yes";
  attribute ASYNC_REG_boolean of \reg_data_out_async1_reg[3]\ : label is std.standard.true;
  attribute KEEP of \reg_data_out_async1_reg[3]\ : label is "yes";
  attribute ASYNC_REG_boolean of \reg_data_out_async1_reg[4]\ : label is std.standard.true;
  attribute KEEP of \reg_data_out_async1_reg[4]\ : label is "yes";
  attribute ASYNC_REG_boolean of \reg_data_out_async1_reg[5]\ : label is std.standard.true;
  attribute KEEP of \reg_data_out_async1_reg[5]\ : label is "yes";
  attribute ASYNC_REG_boolean of \reg_data_out_async1_reg[6]\ : label is std.standard.true;
  attribute KEEP of \reg_data_out_async1_reg[6]\ : label is "yes";
  attribute ASYNC_REG_boolean of \reg_data_out_async1_reg[7]\ : label is std.standard.true;
  attribute KEEP of \reg_data_out_async1_reg[7]\ : label is "yes";
  attribute ASYNC_REG_boolean of \reg_data_out_async1_reg[8]\ : label is std.standard.true;
  attribute KEEP of \reg_data_out_async1_reg[8]\ : label is "yes";
  attribute ASYNC_REG_boolean of \reg_data_out_async1_reg[9]\ : label is std.standard.true;
  attribute KEEP of \reg_data_out_async1_reg[9]\ : label is "yes";
  attribute ASYNC_REG_boolean of \reg_data_out_reg[0]\ : label is std.standard.true;
  attribute KEEP of \reg_data_out_reg[0]\ : label is "yes";
  attribute ASYNC_REG_boolean of \reg_data_out_reg[10]\ : label is std.standard.true;
  attribute KEEP of \reg_data_out_reg[10]\ : label is "yes";
  attribute ASYNC_REG_boolean of \reg_data_out_reg[11]\ : label is std.standard.true;
  attribute KEEP of \reg_data_out_reg[11]\ : label is "yes";
  attribute ASYNC_REG_boolean of \reg_data_out_reg[12]\ : label is std.standard.true;
  attribute KEEP of \reg_data_out_reg[12]\ : label is "yes";
  attribute ASYNC_REG_boolean of \reg_data_out_reg[13]\ : label is std.standard.true;
  attribute KEEP of \reg_data_out_reg[13]\ : label is "yes";
  attribute ASYNC_REG_boolean of \reg_data_out_reg[14]\ : label is std.standard.true;
  attribute KEEP of \reg_data_out_reg[14]\ : label is "yes";
  attribute ASYNC_REG_boolean of \reg_data_out_reg[15]\ : label is std.standard.true;
  attribute KEEP of \reg_data_out_reg[15]\ : label is "yes";
  attribute ASYNC_REG_boolean of \reg_data_out_reg[16]\ : label is std.standard.true;
  attribute KEEP of \reg_data_out_reg[16]\ : label is "yes";
  attribute ASYNC_REG_boolean of \reg_data_out_reg[17]\ : label is std.standard.true;
  attribute KEEP of \reg_data_out_reg[17]\ : label is "yes";
  attribute ASYNC_REG_boolean of \reg_data_out_reg[18]\ : label is std.standard.true;
  attribute KEEP of \reg_data_out_reg[18]\ : label is "yes";
  attribute ASYNC_REG_boolean of \reg_data_out_reg[19]\ : label is std.standard.true;
  attribute KEEP of \reg_data_out_reg[19]\ : label is "yes";
  attribute ASYNC_REG_boolean of \reg_data_out_reg[1]\ : label is std.standard.true;
  attribute KEEP of \reg_data_out_reg[1]\ : label is "yes";
  attribute ASYNC_REG_boolean of \reg_data_out_reg[20]\ : label is std.standard.true;
  attribute KEEP of \reg_data_out_reg[20]\ : label is "yes";
  attribute ASYNC_REG_boolean of \reg_data_out_reg[21]\ : label is std.standard.true;
  attribute KEEP of \reg_data_out_reg[21]\ : label is "yes";
  attribute ASYNC_REG_boolean of \reg_data_out_reg[22]\ : label is std.standard.true;
  attribute KEEP of \reg_data_out_reg[22]\ : label is "yes";
  attribute ASYNC_REG_boolean of \reg_data_out_reg[23]\ : label is std.standard.true;
  attribute KEEP of \reg_data_out_reg[23]\ : label is "yes";
  attribute ASYNC_REG_boolean of \reg_data_out_reg[24]\ : label is std.standard.true;
  attribute KEEP of \reg_data_out_reg[24]\ : label is "yes";
  attribute ASYNC_REG_boolean of \reg_data_out_reg[25]\ : label is std.standard.true;
  attribute KEEP of \reg_data_out_reg[25]\ : label is "yes";
  attribute ASYNC_REG_boolean of \reg_data_out_reg[26]\ : label is std.standard.true;
  attribute KEEP of \reg_data_out_reg[26]\ : label is "yes";
  attribute ASYNC_REG_boolean of \reg_data_out_reg[27]\ : label is std.standard.true;
  attribute KEEP of \reg_data_out_reg[27]\ : label is "yes";
  attribute ASYNC_REG_boolean of \reg_data_out_reg[28]\ : label is std.standard.true;
  attribute KEEP of \reg_data_out_reg[28]\ : label is "yes";
  attribute ASYNC_REG_boolean of \reg_data_out_reg[29]\ : label is std.standard.true;
  attribute KEEP of \reg_data_out_reg[29]\ : label is "yes";
  attribute ASYNC_REG_boolean of \reg_data_out_reg[2]\ : label is std.standard.true;
  attribute KEEP of \reg_data_out_reg[2]\ : label is "yes";
  attribute ASYNC_REG_boolean of \reg_data_out_reg[30]\ : label is std.standard.true;
  attribute KEEP of \reg_data_out_reg[30]\ : label is "yes";
  attribute ASYNC_REG_boolean of \reg_data_out_reg[31]\ : label is std.standard.true;
  attribute KEEP of \reg_data_out_reg[31]\ : label is "yes";
  attribute ASYNC_REG_boolean of \reg_data_out_reg[3]\ : label is std.standard.true;
  attribute KEEP of \reg_data_out_reg[3]\ : label is "yes";
  attribute ASYNC_REG_boolean of \reg_data_out_reg[4]\ : label is std.standard.true;
  attribute KEEP of \reg_data_out_reg[4]\ : label is "yes";
  attribute ASYNC_REG_boolean of \reg_data_out_reg[5]\ : label is std.standard.true;
  attribute KEEP of \reg_data_out_reg[5]\ : label is "yes";
  attribute ASYNC_REG_boolean of \reg_data_out_reg[6]\ : label is std.standard.true;
  attribute KEEP of \reg_data_out_reg[6]\ : label is "yes";
  attribute ASYNC_REG_boolean of \reg_data_out_reg[7]\ : label is std.standard.true;
  attribute KEEP of \reg_data_out_reg[7]\ : label is "yes";
  attribute ASYNC_REG_boolean of \reg_data_out_reg[8]\ : label is std.standard.true;
  attribute KEEP of \reg_data_out_reg[8]\ : label is "yes";
  attribute ASYNC_REG_boolean of \reg_data_out_reg[9]\ : label is std.standard.true;
  attribute KEEP of \reg_data_out_reg[9]\ : label is "yes";
begin
  S_AXI_ARREADY <= \^s_axi_arready\;
  S_AXI_AWREADY <= \^s_axi_awready\;
  S_AXI_BRESP(1) <= \<const0>\;
  S_AXI_BRESP(0) <= \<const0>\;
  S_AXI_BVALID <= \^s_axi_bvalid\;
  S_AXI_RRESP(1) <= \<const0>\;
  S_AXI_RRESP(0) <= \<const0>\;
  S_AXI_RVALID <= \^s_axi_rvalid\;
  S_AXI_WREADY <= \^s_axi_wready\;
  flash_A(26) <= \<const0>\;
  flash_A(25) <= \<const1>\;
  flash_A(24 downto 1) <= \^flash_a\(24 downto 1);
  flash_ADV_N <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
STARTUPE3_inst: unisim.vcomponents.STARTUPE3
    generic map(
      PROG_USR => "FALSE",
      SIM_CCLK_FREQ => 0.000000
    )
        port map (
      CFGCLK => NLW_STARTUPE3_inst_CFGCLK_UNCONNECTED,
      CFGMCLK => NLW_STARTUPE3_inst_CFGMCLK_UNCONNECTED,
      DI(3 downto 0) => flash_DQ_I(3 downto 0),
      DO(3 downto 0) => flash_DQ_O(3 downto 0),
      DTS(3) => flash_tri_ctrl,
      DTS(2) => flash_tri_ctrl,
      DTS(1) => flash_tri_ctrl,
      DTS(0) => flash_tri_ctrl,
      EOS => NLW_STARTUPE3_inst_EOS_UNCONNECTED,
      FCSBO => flash_CS_N,
      FCSBTS => flash_tri_ctrl,
      GSR => '0',
      GTS => '0',
      KEYCLEARB => '1',
      PACK => '0',
      PREQ => NLW_STARTUPE3_inst_PREQ_UNCONNECTED,
      USRCCLKO => '0',
      USRCCLKTS => '0',
      USRDONEO => '0',
      USRDONETS => '0'
    );
VCC: unisim.vcomponents.VCC
     port map (
      P => \<const1>\
    );
axi_arready_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => S_AXI_ARVALID,
      I1 => \^s_axi_arready\,
      O => axi_arready_i_1_n_0
    );
axi_arready_reg: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => axi_arready_i_1_n_0,
      Q => \^s_axi_arready\,
      R => axi_awready_i_1_n_0
    );
axi_awready_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => S_AXI_ARESETN,
      O => axi_awready_i_1_n_0
    );
axi_awready_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000400"
    )
        port map (
      I0 => \^s_axi_bvalid\,
      I1 => S_AXI_WVALID,
      I2 => reg_data_out(17),
      I3 => S_AXI_AWVALID,
      I4 => \^s_axi_awready\,
      O => axi_awready_i_2_n_0
    );
axi_awready_reg: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => axi_awready_i_2_n_0,
      Q => \^s_axi_awready\,
      R => axi_awready_i_1_n_0
    );
axi_bvalid_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000FFFF80008000"
    )
        port map (
      I0 => \^s_axi_awready\,
      I1 => S_AXI_WVALID,
      I2 => \^s_axi_wready\,
      I3 => S_AXI_AWVALID,
      I4 => S_AXI_BREADY,
      I5 => \^s_axi_bvalid\,
      O => axi_bvalid_i_1_n_0
    );
axi_bvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => axi_bvalid_i_1_n_0,
      Q => \^s_axi_bvalid\,
      R => axi_awready_i_1_n_0
    );
\axi_rdata[31]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => \^s_axi_rvalid\,
      I1 => S_AXI_ARVALID,
      I2 => \^s_axi_arready\,
      O => slv_reg_rden
    );
\axi_rdata_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg_rden,
      D => reg_data_out(0),
      Q => S_AXI_RDATA(0),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg_rden,
      D => reg_data_out(10),
      Q => S_AXI_RDATA(10),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg_rden,
      D => reg_data_out(11),
      Q => S_AXI_RDATA(11),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg_rden,
      D => reg_data_out(12),
      Q => S_AXI_RDATA(12),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg_rden,
      D => reg_data_out(13),
      Q => S_AXI_RDATA(13),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg_rden,
      D => reg_data_out(14),
      Q => S_AXI_RDATA(14),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg_rden,
      D => reg_data_out(15),
      Q => S_AXI_RDATA(15),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg_rden,
      D => reg_data_out(16),
      Q => S_AXI_RDATA(16),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg_rden,
      D => reg_data_out(17),
      Q => S_AXI_RDATA(17),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg_rden,
      D => reg_data_out(18),
      Q => S_AXI_RDATA(18),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg_rden,
      D => reg_data_out(19),
      Q => S_AXI_RDATA(19),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg_rden,
      D => reg_data_out(1),
      Q => S_AXI_RDATA(1),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg_rden,
      D => reg_data_out(20),
      Q => S_AXI_RDATA(20),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg_rden,
      D => reg_data_out(21),
      Q => S_AXI_RDATA(21),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg_rden,
      D => reg_data_out(22),
      Q => S_AXI_RDATA(22),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg_rden,
      D => reg_data_out(23),
      Q => S_AXI_RDATA(23),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg_rden,
      D => reg_data_out(24),
      Q => S_AXI_RDATA(24),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg_rden,
      D => reg_data_out(25),
      Q => S_AXI_RDATA(25),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg_rden,
      D => reg_data_out(26),
      Q => S_AXI_RDATA(26),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg_rden,
      D => reg_data_out(27),
      Q => S_AXI_RDATA(27),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg_rden,
      D => reg_data_out(28),
      Q => S_AXI_RDATA(28),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg_rden,
      D => reg_data_out(29),
      Q => S_AXI_RDATA(29),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg_rden,
      D => reg_data_out(2),
      Q => S_AXI_RDATA(2),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg_rden,
      D => reg_data_out(30),
      Q => S_AXI_RDATA(30),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg_rden,
      D => reg_data_out(31),
      Q => S_AXI_RDATA(31),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg_rden,
      D => reg_data_out(3),
      Q => S_AXI_RDATA(3),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg_rden,
      D => reg_data_out(4),
      Q => S_AXI_RDATA(4),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg_rden,
      D => reg_data_out(5),
      Q => S_AXI_RDATA(5),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg_rden,
      D => reg_data_out(6),
      Q => S_AXI_RDATA(6),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg_rden,
      D => reg_data_out(7),
      Q => S_AXI_RDATA(7),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg_rden,
      D => reg_data_out(8),
      Q => S_AXI_RDATA(8),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg_rden,
      D => reg_data_out(9),
      Q => S_AXI_RDATA(9),
      R => axi_awready_i_1_n_0
    );
axi_rvalid_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"08F8"
    )
        port map (
      I0 => \^s_axi_arready\,
      I1 => S_AXI_ARVALID,
      I2 => \^s_axi_rvalid\,
      I3 => S_AXI_RREADY,
      O => axi_rvalid_i_1_n_0
    );
axi_rvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => axi_rvalid_i_1_n_0,
      Q => \^s_axi_rvalid\,
      R => axi_awready_i_1_n_0
    );
axi_wready_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000400"
    )
        port map (
      I0 => \^s_axi_bvalid\,
      I1 => S_AXI_WVALID,
      I2 => reg_data_out(17),
      I3 => S_AXI_AWVALID,
      I4 => \^s_axi_wready\,
      O => axi_wready_i_1_n_0
    );
axi_wready_reg: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => axi_wready_i_1_n_0,
      Q => \^s_axi_wready\,
      R => axi_awready_i_1_n_0
    );
\bidir_IO[10].IOBUF_i\: unisim.vcomponents.IOBUF
    generic map(
      IOSTANDARD => "DEFAULT"
    )
        port map (
      I => flash_DQ_O(10),
      IO => flash_DQ(10),
      O => flash_DQ_I(10),
      T => flash_tri_ctrl
    );
\bidir_IO[11].IOBUF_i\: unisim.vcomponents.IOBUF
    generic map(
      IOSTANDARD => "DEFAULT"
    )
        port map (
      I => flash_DQ_O(11),
      IO => flash_DQ(11),
      O => flash_DQ_I(11),
      T => flash_tri_ctrl
    );
\bidir_IO[12].IOBUF_i\: unisim.vcomponents.IOBUF
    generic map(
      IOSTANDARD => "DEFAULT"
    )
        port map (
      I => flash_DQ_O(12),
      IO => flash_DQ(12),
      O => flash_DQ_I(12),
      T => flash_tri_ctrl
    );
\bidir_IO[13].IOBUF_i\: unisim.vcomponents.IOBUF
    generic map(
      IOSTANDARD => "DEFAULT"
    )
        port map (
      I => flash_DQ_O(13),
      IO => flash_DQ(13),
      O => flash_DQ_I(13),
      T => flash_tri_ctrl
    );
\bidir_IO[14].IOBUF_i\: unisim.vcomponents.IOBUF
    generic map(
      IOSTANDARD => "DEFAULT"
    )
        port map (
      I => flash_DQ_O(14),
      IO => flash_DQ(14),
      O => flash_DQ_I(14),
      T => flash_tri_ctrl
    );
\bidir_IO[15].IOBUF_i\: unisim.vcomponents.IOBUF
    generic map(
      IOSTANDARD => "DEFAULT"
    )
        port map (
      I => flash_DQ_O(15),
      IO => flash_DQ(15),
      O => flash_DQ_I(15),
      T => flash_tri_ctrl
    );
\bidir_IO[4].IOBUF_i\: unisim.vcomponents.IOBUF
    generic map(
      IOSTANDARD => "DEFAULT"
    )
        port map (
      I => flash_DQ_O(4),
      IO => flash_DQ(4),
      O => flash_DQ_I(4),
      T => flash_tri_ctrl
    );
\bidir_IO[5].IOBUF_i\: unisim.vcomponents.IOBUF
    generic map(
      IOSTANDARD => "DEFAULT"
    )
        port map (
      I => flash_DQ_O(5),
      IO => flash_DQ(5),
      O => flash_DQ_I(5),
      T => flash_tri_ctrl
    );
\bidir_IO[6].IOBUF_i\: unisim.vcomponents.IOBUF
    generic map(
      IOSTANDARD => "DEFAULT"
    )
        port map (
      I => flash_DQ_O(6),
      IO => flash_DQ(6),
      O => flash_DQ_I(6),
      T => flash_tri_ctrl
    );
\bidir_IO[7].IOBUF_i\: unisim.vcomponents.IOBUF
    generic map(
      IOSTANDARD => "DEFAULT"
    )
        port map (
      I => flash_DQ_O(7),
      IO => flash_DQ(7),
      O => flash_DQ_I(7),
      T => flash_tri_ctrl
    );
\bidir_IO[8].IOBUF_i\: unisim.vcomponents.IOBUF
    generic map(
      IOSTANDARD => "DEFAULT"
    )
        port map (
      I => flash_DQ_O(8),
      IO => flash_DQ(8),
      O => flash_DQ_I(8),
      T => flash_tri_ctrl
    );
\bidir_IO[9].IOBUF_i\: unisim.vcomponents.IOBUF
    generic map(
      IOSTANDARD => "DEFAULT"
    )
        port map (
      I => flash_DQ_O(9),
      IO => flash_DQ(9),
      O => flash_DQ_I(9),
      T => flash_tri_ctrl
    );
bitstream_fifo_i: entity work.xcl_design_flash_programmer_0_bitstream_fifo
     port map (
      din(31 downto 0) => S_AXI_WDATA(31 downto 0),
      dout(31 downto 0) => fifo_data_out(31 downto 0),
      empty => fifo_empty,
      full => NLW_bitstream_fifo_i_full_UNCONNECTED,
      prog_full => fifo_full,
      rd_clk => flash_clk,
      rd_en => fifo_rd_en,
      rst => flash_rst,
      wr_clk => S_AXI_ACLK,
      wr_en => slv_reg_wren
    );
bitstream_fifo_i_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \^s_axi_awready\,
      I1 => S_AXI_WVALID,
      I2 => \^s_axi_wready\,
      I3 => S_AXI_AWVALID,
      O => slv_reg_wren
    );
programmer_i: entity work.xcl_design_flash_programmer_0_programmer
     port map (
      A(24 downto 1) => \^flash_a\(24 downto 1),
      CLK => flash_clk,
      CS_N => flash_CS_N,
      DATA(31 downto 0) => fifo_data_out(31 downto 0),
      DQ_I(15 downto 0) => flash_DQ_I(15 downto 0),
      DQ_O(15 downto 0) => flash_DQ_O(15 downto 0),
      ERROR(2 downto 0) => NLW_programmer_i_ERROR_UNCONNECTED(2 downto 0),
      FIFO_EMPTY => fifo_empty,
      FIFO_RD_EN => fifo_rd_en,
      OE_N => flash_OE_N,
      PROG_RDY => prog_rdy,
      PROM_SR(7 downto 0) => prom_sr(7 downto 0),
      RST => flash_rst,
      TRI_CTRL => flash_tri_ctrl,
      WE_N => flash_WE_N
    );
\reg_data_out_async1_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => prom_sr(0),
      Q => reg_data_out_async1(0),
      R => '0'
    );
\reg_data_out_async1_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => '0',
      Q => reg_data_out_async1(10),
      R => '0'
    );
\reg_data_out_async1_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => '0',
      Q => reg_data_out_async1(11),
      R => '0'
    );
\reg_data_out_async1_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => '0',
      Q => reg_data_out_async1(12),
      R => '0'
    );
\reg_data_out_async1_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => '0',
      Q => reg_data_out_async1(13),
      R => '0'
    );
\reg_data_out_async1_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => fifo_full,
      Q => reg_data_out_async1(14),
      R => '0'
    );
\reg_data_out_async1_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => prog_rdy,
      Q => reg_data_out_async1(15),
      R => '0'
    );
\reg_data_out_async1_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => '0',
      Q => reg_data_out_async1(16),
      R => '0'
    );
\reg_data_out_async1_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => '0',
      Q => reg_data_out_async1(17),
      R => '0'
    );
\reg_data_out_async1_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => '0',
      Q => reg_data_out_async1(18),
      R => '0'
    );
\reg_data_out_async1_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => '0',
      Q => reg_data_out_async1(19),
      R => '0'
    );
\reg_data_out_async1_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => prom_sr(1),
      Q => reg_data_out_async1(1),
      R => '0'
    );
\reg_data_out_async1_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => '0',
      Q => reg_data_out_async1(20),
      R => '0'
    );
\reg_data_out_async1_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => '0',
      Q => reg_data_out_async1(21),
      R => '0'
    );
\reg_data_out_async1_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => '0',
      Q => reg_data_out_async1(22),
      R => '0'
    );
\reg_data_out_async1_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => '0',
      Q => reg_data_out_async1(23),
      R => '0'
    );
\reg_data_out_async1_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => '0',
      Q => reg_data_out_async1(24),
      R => '0'
    );
\reg_data_out_async1_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => '0',
      Q => reg_data_out_async1(25),
      R => '0'
    );
\reg_data_out_async1_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => '0',
      Q => reg_data_out_async1(26),
      R => '0'
    );
\reg_data_out_async1_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => '0',
      Q => reg_data_out_async1(27),
      R => '0'
    );
\reg_data_out_async1_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => '0',
      Q => reg_data_out_async1(28),
      R => '0'
    );
\reg_data_out_async1_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => '0',
      Q => reg_data_out_async1(29),
      R => '0'
    );
\reg_data_out_async1_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => prom_sr(2),
      Q => reg_data_out_async1(2),
      R => '0'
    );
\reg_data_out_async1_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => '0',
      Q => reg_data_out_async1(30),
      R => '0'
    );
\reg_data_out_async1_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => '0',
      Q => reg_data_out_async1(31),
      R => '0'
    );
\reg_data_out_async1_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => prom_sr(3),
      Q => reg_data_out_async1(3),
      R => '0'
    );
\reg_data_out_async1_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => prom_sr(4),
      Q => reg_data_out_async1(4),
      R => '0'
    );
\reg_data_out_async1_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => prom_sr(5),
      Q => reg_data_out_async1(5),
      R => '0'
    );
\reg_data_out_async1_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => prom_sr(6),
      Q => reg_data_out_async1(6),
      R => '0'
    );
\reg_data_out_async1_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => prom_sr(7),
      Q => reg_data_out_async1(7),
      R => '0'
    );
\reg_data_out_async1_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => '0',
      Q => reg_data_out_async1(8),
      R => '0'
    );
\reg_data_out_async1_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => '0',
      Q => reg_data_out_async1(9),
      R => '0'
    );
\reg_data_out_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => prom_sr(0),
      Q => reg_data_out(0),
      R => '0'
    );
\reg_data_out_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => '0',
      Q => reg_data_out(10),
      R => '0'
    );
\reg_data_out_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => '0',
      Q => reg_data_out(11),
      R => '0'
    );
\reg_data_out_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => '0',
      Q => reg_data_out(12),
      R => '0'
    );
\reg_data_out_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => '0',
      Q => reg_data_out(13),
      R => '0'
    );
\reg_data_out_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => fifo_full,
      Q => reg_data_out(14),
      R => '0'
    );
\reg_data_out_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => prog_rdy,
      Q => reg_data_out(15),
      R => '0'
    );
\reg_data_out_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => '0',
      Q => reg_data_out(16),
      R => '0'
    );
\reg_data_out_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => '0',
      Q => reg_data_out(17),
      R => '0'
    );
\reg_data_out_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => '0',
      Q => reg_data_out(18),
      R => '0'
    );
\reg_data_out_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => '0',
      Q => reg_data_out(19),
      R => '0'
    );
\reg_data_out_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => prom_sr(1),
      Q => reg_data_out(1),
      R => '0'
    );
\reg_data_out_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => '0',
      Q => reg_data_out(20),
      R => '0'
    );
\reg_data_out_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => '0',
      Q => reg_data_out(21),
      R => '0'
    );
\reg_data_out_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => '0',
      Q => reg_data_out(22),
      R => '0'
    );
\reg_data_out_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => '0',
      Q => reg_data_out(23),
      R => '0'
    );
\reg_data_out_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => '0',
      Q => reg_data_out(24),
      R => '0'
    );
\reg_data_out_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => '0',
      Q => reg_data_out(25),
      R => '0'
    );
\reg_data_out_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => '0',
      Q => reg_data_out(26),
      R => '0'
    );
\reg_data_out_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => '0',
      Q => reg_data_out(27),
      R => '0'
    );
\reg_data_out_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => '0',
      Q => reg_data_out(28),
      R => '0'
    );
\reg_data_out_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => '0',
      Q => reg_data_out(29),
      R => '0'
    );
\reg_data_out_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => prom_sr(2),
      Q => reg_data_out(2),
      R => '0'
    );
\reg_data_out_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => '0',
      Q => reg_data_out(30),
      R => '0'
    );
\reg_data_out_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => '0',
      Q => reg_data_out(31),
      R => '0'
    );
\reg_data_out_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => prom_sr(3),
      Q => reg_data_out(3),
      R => '0'
    );
\reg_data_out_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => prom_sr(4),
      Q => reg_data_out(4),
      R => '0'
    );
\reg_data_out_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => prom_sr(5),
      Q => reg_data_out(5),
      R => '0'
    );
\reg_data_out_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => prom_sr(6),
      Q => reg_data_out(6),
      R => '0'
    );
\reg_data_out_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => prom_sr(7),
      Q => reg_data_out(7),
      R => '0'
    );
\reg_data_out_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => '0',
      Q => reg_data_out(8),
      R => '0'
    );
\reg_data_out_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => '0',
      Q => reg_data_out(9),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity xcl_design_flash_programmer_0 is
  port (
    flash_rst : in STD_LOGIC;
    flash_clk : in STD_LOGIC;
    flash_A : out STD_LOGIC_VECTOR ( 26 downto 1 );
    flash_DQ : inout STD_LOGIC_VECTOR ( 15 downto 4 );
    flash_OE_N : out STD_LOGIC;
    flash_WE_N : out STD_LOGIC;
    flash_ADV_N : out STD_LOGIC;
    S_AXI_ACLK : in STD_LOGIC;
    S_AXI_ARESETN : in STD_LOGIC;
    S_AXI_AWADDR : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_AWPROT : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_AWVALID : in STD_LOGIC;
    S_AXI_AWREADY : out STD_LOGIC;
    S_AXI_WDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_WSTRB : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_WVALID : in STD_LOGIC;
    S_AXI_WREADY : out STD_LOGIC;
    S_AXI_BRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_BVALID : out STD_LOGIC;
    S_AXI_BREADY : in STD_LOGIC;
    S_AXI_ARADDR : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_ARPROT : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_ARVALID : in STD_LOGIC;
    S_AXI_ARREADY : out STD_LOGIC;
    S_AXI_RDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_RRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_RVALID : out STD_LOGIC;
    S_AXI_RREADY : in STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of xcl_design_flash_programmer_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of xcl_design_flash_programmer_0 : entity is "xcl_design_flash_programmer_0,AXI_to_BPI,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of xcl_design_flash_programmer_0 : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of xcl_design_flash_programmer_0 : entity is "AXI_to_BPI,Vivado 2016.3_sdx";
end xcl_design_flash_programmer_0;

architecture STRUCTURE of xcl_design_flash_programmer_0 is
  attribute C_S_AXI_ADDR_WIDTH : integer;
  attribute C_S_AXI_ADDR_WIDTH of inst : label is 8;
  attribute C_S_AXI_DATA_WIDTH : integer;
  attribute C_S_AXI_DATA_WIDTH of inst : label is 32;
begin
inst: entity work.xcl_design_flash_programmer_0_AXI_to_BPI
     port map (
      S_AXI_ACLK => S_AXI_ACLK,
      S_AXI_ARADDR(7 downto 0) => S_AXI_ARADDR(7 downto 0),
      S_AXI_ARESETN => S_AXI_ARESETN,
      S_AXI_ARPROT(2 downto 0) => S_AXI_ARPROT(2 downto 0),
      S_AXI_ARREADY => S_AXI_ARREADY,
      S_AXI_ARVALID => S_AXI_ARVALID,
      S_AXI_AWADDR(7 downto 0) => S_AXI_AWADDR(7 downto 0),
      S_AXI_AWPROT(2 downto 0) => S_AXI_AWPROT(2 downto 0),
      S_AXI_AWREADY => S_AXI_AWREADY,
      S_AXI_AWVALID => S_AXI_AWVALID,
      S_AXI_BREADY => S_AXI_BREADY,
      S_AXI_BRESP(1 downto 0) => S_AXI_BRESP(1 downto 0),
      S_AXI_BVALID => S_AXI_BVALID,
      S_AXI_RDATA(31 downto 0) => S_AXI_RDATA(31 downto 0),
      S_AXI_RREADY => S_AXI_RREADY,
      S_AXI_RRESP(1 downto 0) => S_AXI_RRESP(1 downto 0),
      S_AXI_RVALID => S_AXI_RVALID,
      S_AXI_WDATA(31 downto 0) => S_AXI_WDATA(31 downto 0),
      S_AXI_WREADY => S_AXI_WREADY,
      S_AXI_WSTRB(3 downto 0) => S_AXI_WSTRB(3 downto 0),
      S_AXI_WVALID => S_AXI_WVALID,
      flash_A(26 downto 1) => flash_A(26 downto 1),
      flash_ADV_N => flash_ADV_N,
      flash_DQ(15 downto 4) => flash_DQ(15 downto 4),
      flash_OE_N => flash_OE_N,
      flash_WE_N => flash_WE_N,
      flash_clk => flash_clk,
      flash_rst => flash_rst
    );
end STRUCTURE;
