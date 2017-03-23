// Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2016.3_sdx (lin64) Build 1721784 Tue Nov 29 22:12:24 MST 2016
// Date        : Fri Dec 30 09:08:07 2016
// Host        : hms-beatdown running 64-bit Ubuntu 15.10
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ xcl_design_xilmonitor_fifo0_0_sim_netlist.v
// Design      : xcl_design_xilmonitor_fifo0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xcku060-ffva1156-2-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_address_decoder
   (IPIC_STATE_reg,
    \sig_register_array[0]0_out ,
    \sig_register_array_reg[0][5] ,
    \sig_register_array_reg[0][5]_0 ,
    \sig_register_array_reg[0][2] ,
    sig_str_rst_reg,
    D,
    \sig_ip2bus_data_reg[25] ,
    \sig_ip2bus_data_reg[25]_0 ,
    \sig_ip2bus_data_reg[25]_1 ,
    \sig_ip2bus_data_reg[12] ,
    \sig_ip2bus_data_reg[10] ,
    \sig_register_array_reg[0][8] ,
    \sig_register_array_reg[0][7] ,
    \sig_register_array_reg[0][7]_0 ,
    \sig_register_array_reg[0][8]_0 ,
    SR,
    E,
    \sig_register_array_reg[1][0] ,
    IP2Bus_RdAck_reg,
    \sig_register_array_reg[0][12] ,
    \sig_register_array_reg[0][11] ,
    \sig_register_array_reg[0][7]_1 ,
    \sig_register_array_reg[0][8]_1 ,
    \sig_register_array_reg[0][8]_2 ,
    \sig_register_array_reg[1][0]_0 ,
    \sig_register_array_reg[0][2]_0 ,
    sig_rd_rlen,
    sig_rd_rlen_reg,
    \sig_ip2bus_data_reg[14] ,
    \sig_ip2bus_data_reg[14]_0 ,
    \sig_ip2bus_data_reg[0] ,
    \sig_ip2bus_data_reg[14]_1 ,
    sig_Bus2IP_RdCE,
    sig_rx_channel_reset_reg,
    sig_str_rst_reg_0,
    cs_ce_clr,
    Q,
    s_axi_aclk,
    s_axi_wdata,
    axi4_fifo_rd_en_i,
    \sig_register_array[0]1_in ,
    \goreg_dm.dout_i_reg[6] ,
    \count_reg[12] ,
    empty_fwft_i_reg,
    \goreg_dm.dout_i_reg[22] ,
    empty_fwft_i_reg_0,
    empty_fwft_i_reg_1,
    empty_fwft_i_reg_2,
    empty_fwft_i_reg_3,
    empty_fwft_i_reg_4,
    \count_reg[12]_0 ,
    \sig_register_array_reg[1][0]_1 ,
    \sig_register_array_reg[0][8]_3 ,
    empty_fwft_i_reg_5,
    \sig_register_array_reg[0][7]_2 ,
    \sig_register_array_reg[0][5]_1 ,
    \sig_register_array_reg[0][2]_1 ,
    IPIC_STATE,
    sig_rxd_reset,
    eqOp__6,
    s_axi_aresetn,
    IPIC_STATE_reg_0,
    sig_Bus2IP_RNW,
    p_8_out,
    sig_rxd_prog_empty_d1,
    prog_full_i,
    out,
    sig_rx_channel_reset_reg_0,
    \sig_register_array_reg[0][12]_0 ,
    \sig_register_array_reg[0][11]_0 ,
    IP2Bus_RdAck_reg_0,
    IP2Bus_WrAck_reg,
    \bus2ip_addr_i_reg[5] );
  output IPIC_STATE_reg;
  output [0:0]\sig_register_array[0]0_out ;
  output \sig_register_array_reg[0][5] ;
  output \sig_register_array_reg[0][5]_0 ;
  output \sig_register_array_reg[0][2] ;
  output sig_str_rst_reg;
  output [17:0]D;
  output \sig_ip2bus_data_reg[25] ;
  output \sig_ip2bus_data_reg[25]_0 ;
  output \sig_ip2bus_data_reg[25]_1 ;
  output \sig_ip2bus_data_reg[12] ;
  output \sig_ip2bus_data_reg[10] ;
  output \sig_register_array_reg[0][8] ;
  output [2:0]\sig_register_array_reg[0][7] ;
  output \sig_register_array_reg[0][7]_0 ;
  output \sig_register_array_reg[0][8]_0 ;
  output [0:0]SR;
  output [0:0]E;
  output \sig_register_array_reg[1][0] ;
  output IP2Bus_RdAck_reg;
  output \sig_register_array_reg[0][12] ;
  output \sig_register_array_reg[0][11] ;
  output \sig_register_array_reg[0][7]_1 ;
  output \sig_register_array_reg[0][8]_1 ;
  output \sig_register_array_reg[0][8]_2 ;
  output [12:0]\sig_register_array_reg[1][0]_0 ;
  output \sig_register_array_reg[0][2]_0 ;
  output sig_rd_rlen;
  output sig_rd_rlen_reg;
  output \sig_ip2bus_data_reg[14] ;
  output \sig_ip2bus_data_reg[14]_0 ;
  output \sig_ip2bus_data_reg[0] ;
  output \sig_ip2bus_data_reg[14]_1 ;
  output [0:0]sig_Bus2IP_RdCE;
  output sig_rx_channel_reset_reg;
  output sig_str_rst_reg_0;
  input cs_ce_clr;
  input Q;
  input s_axi_aclk;
  input [12:0]s_axi_wdata;
  input axi4_fifo_rd_en_i;
  input \sig_register_array[0]1_in ;
  input \goreg_dm.dout_i_reg[6] ;
  input [10:0]\count_reg[12] ;
  input empty_fwft_i_reg;
  input [11:0]\goreg_dm.dout_i_reg[22] ;
  input empty_fwft_i_reg_0;
  input empty_fwft_i_reg_1;
  input empty_fwft_i_reg_2;
  input empty_fwft_i_reg_3;
  input empty_fwft_i_reg_4;
  input \count_reg[12]_0 ;
  input [8:0]\sig_register_array_reg[1][0]_1 ;
  input \sig_register_array_reg[0][8]_3 ;
  input empty_fwft_i_reg_5;
  input \sig_register_array_reg[0][7]_2 ;
  input \sig_register_array_reg[0][5]_1 ;
  input \sig_register_array_reg[0][2]_1 ;
  input IPIC_STATE;
  input sig_rxd_reset;
  input eqOp__6;
  input s_axi_aresetn;
  input IPIC_STATE_reg_0;
  input sig_Bus2IP_RNW;
  input p_8_out;
  input sig_rxd_prog_empty_d1;
  input prog_full_i;
  input out;
  input sig_rx_channel_reset_reg_0;
  input \sig_register_array_reg[0][12]_0 ;
  input \sig_register_array_reg[0][11]_0 ;
  input IP2Bus_RdAck_reg_0;
  input IP2Bus_WrAck_reg;
  input [3:0]\bus2ip_addr_i_reg[5] ;

  wire Bus_RNW_reg;
  wire Bus_RNW_reg_i_1_n_0;
  wire [17:0]D;
  wire [0:0]E;
  wire \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg ;
  wire \GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg ;
  wire \GEN_BKEND_CE_REGISTERS[11].ce_out_i_reg ;
  wire \GEN_BKEND_CE_REGISTERS[12].ce_out_i_reg ;
  wire \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg ;
  wire \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg ;
  wire \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg ;
  wire \GEN_BKEND_CE_REGISTERS[4].ce_out_i_reg ;
  wire \GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg ;
  wire \GEN_BKEND_CE_REGISTERS[6].ce_out_i_reg ;
  wire \GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg ;
  wire \GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg ;
  wire \GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg ;
  wire IP2Bus_RdAck_reg;
  wire IP2Bus_RdAck_reg_0;
  wire IP2Bus_WrAck_reg;
  wire IPIC_STATE;
  wire IPIC_STATE_reg;
  wire IPIC_STATE_reg_0;
  wire \MEM_DECODE_GEN[0].cs_out_i[0]_i_1_n_0 ;
  wire Q;
  wire [0:0]SR;
  wire axi4_fifo_rd_en_i;
  wire [3:0]\bus2ip_addr_i_reg[5] ;
  wire ce_expnd_i_0;
  wire ce_expnd_i_1;
  wire ce_expnd_i_10;
  wire ce_expnd_i_11;
  wire ce_expnd_i_12;
  wire ce_expnd_i_2;
  wire ce_expnd_i_3;
  wire ce_expnd_i_4;
  wire ce_expnd_i_5;
  wire ce_expnd_i_6;
  wire ce_expnd_i_7;
  wire ce_expnd_i_8;
  wire ce_expnd_i_9;
  wire [10:0]\count_reg[12] ;
  wire \count_reg[12]_0 ;
  wire cs_ce_clr;
  wire empty_fwft_i_reg;
  wire empty_fwft_i_reg_0;
  wire empty_fwft_i_reg_1;
  wire empty_fwft_i_reg_2;
  wire empty_fwft_i_reg_3;
  wire empty_fwft_i_reg_4;
  wire empty_fwft_i_reg_5;
  wire eqOp__6;
  wire [11:0]\goreg_dm.dout_i_reg[22] ;
  wire \goreg_dm.dout_i_reg[6] ;
  wire out;
  wire p_8_out;
  wire prog_full_i;
  wire s_axi_aclk;
  wire s_axi_aresetn;
  wire [12:0]s_axi_wdata;
  wire sig_Bus2IP_RNW;
  wire [0:0]sig_Bus2IP_RdCE;
  wire [9:12]sig_Bus2IP_WrCE;
  wire \sig_ip2bus_data[0]_i_5_n_0 ;
  wire \sig_ip2bus_data[11]_i_2_n_0 ;
  wire \sig_ip2bus_data[12]_i_2_n_0 ;
  wire \sig_ip2bus_data[13]_i_5_n_0 ;
  wire \sig_ip2bus_data[13]_i_6_n_0 ;
  wire \sig_ip2bus_data[19]_i_5_n_0 ;
  wire \sig_ip2bus_data[19]_i_6_n_0 ;
  wire \sig_ip2bus_data[19]_i_7_n_0 ;
  wire \sig_ip2bus_data[19]_i_8_n_0 ;
  wire \sig_ip2bus_data[26]_i_2_n_0 ;
  wire \sig_ip2bus_data[27]_i_2_n_0 ;
  wire \sig_ip2bus_data[2]_i_2_n_0 ;
  wire \sig_ip2bus_data[9]_i_2_n_0 ;
  wire \sig_ip2bus_data_reg[0] ;
  wire \sig_ip2bus_data_reg[10] ;
  wire \sig_ip2bus_data_reg[12] ;
  wire \sig_ip2bus_data_reg[14] ;
  wire \sig_ip2bus_data_reg[14]_0 ;
  wire \sig_ip2bus_data_reg[14]_1 ;
  wire \sig_ip2bus_data_reg[25] ;
  wire \sig_ip2bus_data_reg[25]_0 ;
  wire \sig_ip2bus_data_reg[25]_1 ;
  wire sig_rd_rlen;
  wire sig_rd_rlen_reg;
  wire [0:0]\sig_register_array[0]0_out ;
  wire \sig_register_array[0]1_in ;
  wire \sig_register_array[0][2]_i_7_n_0 ;
  wire \sig_register_array[0][2]_i_8_n_0 ;
  wire \sig_register_array[0][5]_i_6_n_0 ;
  wire \sig_register_array[0][5]_i_7_n_0 ;
  wire \sig_register_array[0][5]_i_8_n_0 ;
  wire \sig_register_array[0][8]_i_6_n_0 ;
  wire \sig_register_array[0][8]_i_7_n_0 ;
  wire \sig_register_array[1][0]_i_3_n_0 ;
  wire \sig_register_array_reg[0][11] ;
  wire \sig_register_array_reg[0][11]_0 ;
  wire \sig_register_array_reg[0][12] ;
  wire \sig_register_array_reg[0][12]_0 ;
  wire \sig_register_array_reg[0][2] ;
  wire \sig_register_array_reg[0][2]_0 ;
  wire \sig_register_array_reg[0][2]_1 ;
  wire \sig_register_array_reg[0][5] ;
  wire \sig_register_array_reg[0][5]_0 ;
  wire \sig_register_array_reg[0][5]_1 ;
  wire [2:0]\sig_register_array_reg[0][7] ;
  wire \sig_register_array_reg[0][7]_0 ;
  wire \sig_register_array_reg[0][7]_1 ;
  wire \sig_register_array_reg[0][7]_2 ;
  wire \sig_register_array_reg[0][8] ;
  wire \sig_register_array_reg[0][8]_0 ;
  wire \sig_register_array_reg[0][8]_1 ;
  wire \sig_register_array_reg[0][8]_2 ;
  wire \sig_register_array_reg[0][8]_3 ;
  wire \sig_register_array_reg[1][0] ;
  wire [12:0]\sig_register_array_reg[1][0]_0 ;
  wire [8:0]\sig_register_array_reg[1][0]_1 ;
  wire sig_rx_channel_reset_i_3_n_0;
  wire sig_rx_channel_reset_i_4_n_0;
  wire sig_rx_channel_reset_i_6_n_0;
  wire sig_rx_channel_reset_i_7_n_0;
  wire sig_rx_channel_reset_i_8_n_0;
  wire sig_rx_channel_reset_reg;
  wire sig_rx_channel_reset_reg_0;
  wire sig_rxd_prog_empty_d1;
  wire sig_rxd_reset;
  wire sig_str_rst_i_2_n_0;
  wire sig_str_rst_i_5_n_0;
  wire sig_str_rst_reg;
  wire sig_str_rst_reg_0;

  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    Bus_RNW_reg_i_1
       (.I0(sig_Bus2IP_RNW),
        .I1(Q),
        .I2(Bus_RNW_reg),
        .O(Bus_RNW_reg_i_1_n_0));
  FDRE Bus_RNW_reg_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(Bus_RNW_reg_i_1_n_0),
        .Q(Bus_RNW_reg),
        .R(1'b0));
  FDRE \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(ce_expnd_i_12),
        .Q(\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg ),
        .R(cs_ce_clr));
  FDRE \GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg[10] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(ce_expnd_i_2),
        .Q(\GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg ),
        .R(cs_ce_clr));
  FDRE \GEN_BKEND_CE_REGISTERS[11].ce_out_i_reg[11] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(ce_expnd_i_1),
        .Q(\GEN_BKEND_CE_REGISTERS[11].ce_out_i_reg ),
        .R(cs_ce_clr));
  FDRE \GEN_BKEND_CE_REGISTERS[12].ce_out_i_reg[12] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(ce_expnd_i_0),
        .Q(\GEN_BKEND_CE_REGISTERS[12].ce_out_i_reg ),
        .R(cs_ce_clr));
  FDRE \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(ce_expnd_i_11),
        .Q(\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg ),
        .R(cs_ce_clr));
  FDRE \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(ce_expnd_i_10),
        .Q(\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg ),
        .R(cs_ce_clr));
  LUT5 #(
    .INIT(32'h10000000)) 
    \GEN_BKEND_CE_REGISTERS[3].ce_out_i[3]_i_1 
       (.I0(\bus2ip_addr_i_reg[5] [3]),
        .I1(\bus2ip_addr_i_reg[5] [2]),
        .I2(Q),
        .I3(\bus2ip_addr_i_reg[5] [0]),
        .I4(\bus2ip_addr_i_reg[5] [1]),
        .O(ce_expnd_i_9));
  FDRE \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(ce_expnd_i_9),
        .Q(\GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg ),
        .R(cs_ce_clr));
  FDRE \GEN_BKEND_CE_REGISTERS[4].ce_out_i_reg[4] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(ce_expnd_i_8),
        .Q(\GEN_BKEND_CE_REGISTERS[4].ce_out_i_reg ),
        .R(cs_ce_clr));
  FDRE \GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg[5] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(ce_expnd_i_7),
        .Q(\GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg ),
        .R(cs_ce_clr));
  FDRE \GEN_BKEND_CE_REGISTERS[6].ce_out_i_reg[6] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(ce_expnd_i_6),
        .Q(\GEN_BKEND_CE_REGISTERS[6].ce_out_i_reg ),
        .R(cs_ce_clr));
  FDRE \GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg[7] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(ce_expnd_i_5),
        .Q(\GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg ),
        .R(cs_ce_clr));
  FDRE \GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg[8] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(ce_expnd_i_4),
        .Q(\GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg ),
        .R(cs_ce_clr));
  FDRE \GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(ce_expnd_i_3),
        .Q(\GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg ),
        .R(cs_ce_clr));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT3 #(
    .INIT(8'h08)) 
    IP2Bus_RdAck_i_2
       (.I0(sig_Bus2IP_RNW),
        .I1(IPIC_STATE_reg),
        .I2(IPIC_STATE),
        .O(IP2Bus_RdAck_reg));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT3 #(
    .INIT(8'hDF)) 
    IP2Bus_WrAck_i_1
       (.I0(IPIC_STATE_reg),
        .I1(IPIC_STATE),
        .I2(s_axi_aresetn),
        .O(SR));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pselect_f \MEM_DECODE_GEN[0].PER_CE_GEN[0].MULTIPLE_CES_THIS_CS_GEN.CE_I 
       (.Q(Q),
        .\bus2ip_addr_i_reg[5] (\bus2ip_addr_i_reg[5] ),
        .ce_expnd_i_12(ce_expnd_i_12));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pselect_f__parameterized9 \MEM_DECODE_GEN[0].PER_CE_GEN[10].MULTIPLE_CES_THIS_CS_GEN.CE_I 
       (.Q(Q),
        .\bus2ip_addr_i_reg[5] (\bus2ip_addr_i_reg[5] ),
        .ce_expnd_i_2(ce_expnd_i_2));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pselect_f__parameterized10 \MEM_DECODE_GEN[0].PER_CE_GEN[11].MULTIPLE_CES_THIS_CS_GEN.CE_I 
       (.Q(Q),
        .\bus2ip_addr_i_reg[5] (\bus2ip_addr_i_reg[5] ),
        .ce_expnd_i_1(ce_expnd_i_1));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pselect_f__parameterized11 \MEM_DECODE_GEN[0].PER_CE_GEN[12].MULTIPLE_CES_THIS_CS_GEN.CE_I 
       (.Q(Q),
        .\bus2ip_addr_i_reg[5] (\bus2ip_addr_i_reg[5] ),
        .ce_expnd_i_0(ce_expnd_i_0));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pselect_f__parameterized0 \MEM_DECODE_GEN[0].PER_CE_GEN[1].MULTIPLE_CES_THIS_CS_GEN.CE_I 
       (.Q(Q),
        .\bus2ip_addr_i_reg[5] (\bus2ip_addr_i_reg[5] ),
        .ce_expnd_i_11(ce_expnd_i_11));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pselect_f__parameterized1 \MEM_DECODE_GEN[0].PER_CE_GEN[2].MULTIPLE_CES_THIS_CS_GEN.CE_I 
       (.Q(Q),
        .\bus2ip_addr_i_reg[5] (\bus2ip_addr_i_reg[5] ),
        .ce_expnd_i_10(ce_expnd_i_10));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pselect_f__parameterized3 \MEM_DECODE_GEN[0].PER_CE_GEN[4].MULTIPLE_CES_THIS_CS_GEN.CE_I 
       (.Q(Q),
        .\bus2ip_addr_i_reg[5] (\bus2ip_addr_i_reg[5] ),
        .ce_expnd_i_8(ce_expnd_i_8));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pselect_f__parameterized4 \MEM_DECODE_GEN[0].PER_CE_GEN[5].MULTIPLE_CES_THIS_CS_GEN.CE_I 
       (.Q(Q),
        .\bus2ip_addr_i_reg[5] (\bus2ip_addr_i_reg[5] ),
        .ce_expnd_i_7(ce_expnd_i_7));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pselect_f__parameterized5 \MEM_DECODE_GEN[0].PER_CE_GEN[6].MULTIPLE_CES_THIS_CS_GEN.CE_I 
       (.Q(Q),
        .\bus2ip_addr_i_reg[5] (\bus2ip_addr_i_reg[5] ),
        .ce_expnd_i_6(ce_expnd_i_6));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pselect_f__parameterized6 \MEM_DECODE_GEN[0].PER_CE_GEN[7].MULTIPLE_CES_THIS_CS_GEN.CE_I 
       (.Q(Q),
        .\bus2ip_addr_i_reg[5] (\bus2ip_addr_i_reg[5] ),
        .ce_expnd_i_5(ce_expnd_i_5));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pselect_f__parameterized7 \MEM_DECODE_GEN[0].PER_CE_GEN[8].MULTIPLE_CES_THIS_CS_GEN.CE_I 
       (.Q(Q),
        .\bus2ip_addr_i_reg[5] (\bus2ip_addr_i_reg[5] ),
        .ce_expnd_i_4(ce_expnd_i_4));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pselect_f__parameterized8 \MEM_DECODE_GEN[0].PER_CE_GEN[9].MULTIPLE_CES_THIS_CS_GEN.CE_I 
       (.Q(Q),
        .\bus2ip_addr_i_reg[5] (\bus2ip_addr_i_reg[5] ),
        .ce_expnd_i_3(ce_expnd_i_3));
  LUT5 #(
    .INIT(32'h000000E0)) 
    \MEM_DECODE_GEN[0].cs_out_i[0]_i_1 
       (.I0(IPIC_STATE_reg),
        .I1(Q),
        .I2(s_axi_aresetn),
        .I3(IP2Bus_RdAck_reg_0),
        .I4(IP2Bus_WrAck_reg),
        .O(\MEM_DECODE_GEN[0].cs_out_i[0]_i_1_n_0 ));
  FDRE \MEM_DECODE_GEN[0].cs_out_i_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\MEM_DECODE_GEN[0].cs_out_i[0]_i_1_n_0 ),
        .Q(IPIC_STATE_reg),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hEA00)) 
    \sig_ip2bus_data[0]_i_1 
       (.I0(\sig_ip2bus_data_reg[0] ),
        .I1(\sig_register_array_reg[1][0]_1 [8]),
        .I2(\sig_ip2bus_data_reg[10] ),
        .I3(\sig_ip2bus_data_reg[12] ),
        .O(D[17]));
  LUT6 #(
    .INIT(64'h0000004000000000)) 
    \sig_ip2bus_data[0]_i_2 
       (.I0(sig_rx_channel_reset_reg_0),
        .I1(Bus_RNW_reg),
        .I2(\GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg ),
        .I3(\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg ),
        .I4(\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg ),
        .I5(out),
        .O(\sig_ip2bus_data_reg[0] ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT4 #(
    .INIT(16'h0040)) 
    \sig_ip2bus_data[0]_i_3 
       (.I0(\GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg ),
        .I1(\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg ),
        .I2(Bus_RNW_reg),
        .I3(\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg ),
        .O(\sig_ip2bus_data_reg[10] ));
  LUT5 #(
    .INIT(32'h01FF0000)) 
    \sig_ip2bus_data[0]_i_4 
       (.I0(\GEN_BKEND_CE_REGISTERS[6].ce_out_i_reg ),
        .I1(\GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg ),
        .I2(\GEN_BKEND_CE_REGISTERS[4].ce_out_i_reg ),
        .I3(Bus_RNW_reg),
        .I4(\sig_ip2bus_data[0]_i_5_n_0 ),
        .O(\sig_ip2bus_data_reg[12] ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT5 #(
    .INIT(32'h00003337)) 
    \sig_ip2bus_data[0]_i_5 
       (.I0(\GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg ),
        .I1(Bus_RNW_reg),
        .I2(\GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg ),
        .I3(\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg ),
        .I4(\sig_ip2bus_data[19]_i_8_n_0 ),
        .O(\sig_ip2bus_data[0]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAA808080)) 
    \sig_ip2bus_data[10]_i_1 
       (.I0(\sig_ip2bus_data_reg[12] ),
        .I1(\sig_ip2bus_data[9]_i_2_n_0 ),
        .I2(\goreg_dm.dout_i_reg[22] [10]),
        .I3(\sig_register_array_reg[1][0]_1 [2]),
        .I4(\sig_ip2bus_data_reg[10] ),
        .I5(\count_reg[12]_0 ),
        .O(D[11]));
  LUT5 #(
    .INIT(32'hAAAAAA80)) 
    \sig_ip2bus_data[11]_i_1 
       (.I0(\sig_ip2bus_data_reg[12] ),
        .I1(\goreg_dm.dout_i_reg[22] [9]),
        .I2(\sig_ip2bus_data[9]_i_2_n_0 ),
        .I3(\count_reg[12]_0 ),
        .I4(\sig_ip2bus_data[11]_i_2_n_0 ),
        .O(D[10]));
  LUT6 #(
    .INIT(64'h000C00000A000000)) 
    \sig_ip2bus_data[11]_i_2 
       (.I0(\sig_register_array_reg[1][0]_1 [1]),
        .I1(\sig_register_array_reg[0][11]_0 ),
        .I2(\GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg ),
        .I3(\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg ),
        .I4(Bus_RNW_reg),
        .I5(\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg ),
        .O(\sig_ip2bus_data[11]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hAAAAAA80)) 
    \sig_ip2bus_data[12]_i_1 
       (.I0(\sig_ip2bus_data_reg[12] ),
        .I1(\goreg_dm.dout_i_reg[22] [8]),
        .I2(\sig_ip2bus_data[9]_i_2_n_0 ),
        .I3(\count_reg[12]_0 ),
        .I4(\sig_ip2bus_data[12]_i_2_n_0 ),
        .O(D[9]));
  LUT6 #(
    .INIT(64'h000C00000A000000)) 
    \sig_ip2bus_data[12]_i_2 
       (.I0(\sig_register_array_reg[1][0]_1 [0]),
        .I1(\sig_register_array_reg[0][12]_0 ),
        .I2(\GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg ),
        .I3(\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg ),
        .I4(Bus_RNW_reg),
        .I5(\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg ),
        .O(\sig_ip2bus_data[12]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFEEFFEEFFEEFEEE)) 
    \sig_ip2bus_data[13]_i_3 
       (.I0(\sig_ip2bus_data[13]_i_5_n_0 ),
        .I1(\sig_ip2bus_data[13]_i_6_n_0 ),
        .I2(\GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg ),
        .I3(Bus_RNW_reg),
        .I4(\GEN_BKEND_CE_REGISTERS[6].ce_out_i_reg ),
        .I5(\GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg ),
        .O(\sig_ip2bus_data_reg[14]_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFEFF00FF00)) 
    \sig_ip2bus_data[13]_i_4 
       (.I0(\GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg ),
        .I1(\GEN_BKEND_CE_REGISTERS[4].ce_out_i_reg ),
        .I2(\GEN_BKEND_CE_REGISTERS[11].ce_out_i_reg ),
        .I3(\sig_ip2bus_data_reg[14]_1 ),
        .I4(\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg ),
        .I5(Bus_RNW_reg),
        .O(\sig_ip2bus_data_reg[14] ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT4 #(
    .INIT(16'hCCC8)) 
    \sig_ip2bus_data[13]_i_5 
       (.I0(\GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg ),
        .I1(Bus_RNW_reg),
        .I2(\GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg ),
        .I3(\GEN_BKEND_CE_REGISTERS[12].ce_out_i_reg ),
        .O(\sig_ip2bus_data[13]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT3 #(
    .INIT(8'hBF)) 
    \sig_ip2bus_data[13]_i_6 
       (.I0(sig_rx_channel_reset_reg_0),
        .I1(Bus_RNW_reg),
        .I2(\GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg ),
        .O(\sig_ip2bus_data[13]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \sig_ip2bus_data[15]_i_2 
       (.I0(\sig_ip2bus_data_reg[14] ),
        .I1(\sig_ip2bus_data_reg[14]_0 ),
        .O(sig_rd_rlen_reg));
  LUT6 #(
    .INIT(64'hAAAAA888A888A888)) 
    \sig_ip2bus_data[19]_i_1 
       (.I0(\sig_ip2bus_data_reg[25]_1 ),
        .I1(empty_fwft_i_reg_4),
        .I2(\count_reg[12] [10]),
        .I3(\sig_ip2bus_data_reg[25]_0 ),
        .I4(\goreg_dm.dout_i_reg[22] [7]),
        .I5(\sig_ip2bus_data[19]_i_5_n_0 ),
        .O(D[8]));
  LUT6 #(
    .INIT(64'h0000000000000515)) 
    \sig_ip2bus_data[19]_i_2 
       (.I0(\sig_ip2bus_data[19]_i_6_n_0 ),
        .I1(\GEN_BKEND_CE_REGISTERS[4].ce_out_i_reg ),
        .I2(Bus_RNW_reg),
        .I3(\GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg ),
        .I4(\sig_ip2bus_data[19]_i_7_n_0 ),
        .I5(\sig_ip2bus_data[19]_i_8_n_0 ),
        .O(\sig_ip2bus_data_reg[25]_1 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \sig_ip2bus_data[19]_i_4 
       (.I0(out),
        .I1(\GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg ),
        .I2(Bus_RNW_reg),
        .I3(\GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg ),
        .O(\sig_ip2bus_data_reg[25]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT5 #(
    .INIT(32'h00000400)) 
    \sig_ip2bus_data[19]_i_5 
       (.I0(\GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg ),
        .I1(Bus_RNW_reg),
        .I2(sig_rx_channel_reset_reg_0),
        .I3(\GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg ),
        .I4(out),
        .O(\sig_ip2bus_data[19]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT4 #(
    .INIT(16'hF0E0)) 
    \sig_ip2bus_data[19]_i_6 
       (.I0(\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg ),
        .I1(\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg ),
        .I2(Bus_RNW_reg),
        .I3(\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg ),
        .O(\sig_ip2bus_data[19]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \sig_ip2bus_data[19]_i_7 
       (.I0(\GEN_BKEND_CE_REGISTERS[6].ce_out_i_reg ),
        .I1(\GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg ),
        .I2(Bus_RNW_reg),
        .O(\sig_ip2bus_data[19]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT5 #(
    .INIT(32'hFF00FE00)) 
    \sig_ip2bus_data[19]_i_8 
       (.I0(\GEN_BKEND_CE_REGISTERS[11].ce_out_i_reg ),
        .I1(\GEN_BKEND_CE_REGISTERS[12].ce_out_i_reg ),
        .I2(\GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg ),
        .I3(Bus_RNW_reg),
        .I4(\GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg ),
        .O(\sig_ip2bus_data[19]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT3 #(
    .INIT(8'hC8)) 
    \sig_ip2bus_data[1]_i_3 
       (.I0(\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg ),
        .I1(Bus_RNW_reg),
        .I2(\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg ),
        .O(\sig_ip2bus_data_reg[14]_1 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \sig_ip2bus_data[1]_i_4 
       (.I0(\GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg ),
        .I1(Bus_RNW_reg),
        .O(sig_Bus2IP_RdCE));
  LUT6 #(
    .INIT(64'hAAAAA888A888A888)) 
    \sig_ip2bus_data[20]_i_1 
       (.I0(\sig_ip2bus_data_reg[25]_1 ),
        .I1(empty_fwft_i_reg_3),
        .I2(\count_reg[12] [9]),
        .I3(\sig_ip2bus_data_reg[25]_0 ),
        .I4(\goreg_dm.dout_i_reg[22] [6]),
        .I5(\sig_ip2bus_data[19]_i_5_n_0 ),
        .O(D[7]));
  LUT6 #(
    .INIT(64'hAAAAA888A888A888)) 
    \sig_ip2bus_data[21]_i_1 
       (.I0(\sig_ip2bus_data_reg[25]_1 ),
        .I1(empty_fwft_i_reg_2),
        .I2(\count_reg[12] [8]),
        .I3(\sig_ip2bus_data_reg[25]_0 ),
        .I4(\goreg_dm.dout_i_reg[22] [5]),
        .I5(\sig_ip2bus_data[19]_i_5_n_0 ),
        .O(D[6]));
  LUT6 #(
    .INIT(64'hAAAAA888A888A888)) 
    \sig_ip2bus_data[22]_i_1 
       (.I0(\sig_ip2bus_data_reg[25]_1 ),
        .I1(empty_fwft_i_reg_1),
        .I2(\count_reg[12] [7]),
        .I3(\sig_ip2bus_data_reg[25]_0 ),
        .I4(\goreg_dm.dout_i_reg[22] [4]),
        .I5(\sig_ip2bus_data[19]_i_5_n_0 ),
        .O(D[5]));
  LUT6 #(
    .INIT(64'hAAAAA888A888A888)) 
    \sig_ip2bus_data[23]_i_1 
       (.I0(\sig_ip2bus_data_reg[25]_1 ),
        .I1(empty_fwft_i_reg_0),
        .I2(\count_reg[12] [6]),
        .I3(\sig_ip2bus_data_reg[25]_0 ),
        .I4(\goreg_dm.dout_i_reg[22] [3]),
        .I5(\sig_ip2bus_data[19]_i_5_n_0 ),
        .O(D[4]));
  LUT6 #(
    .INIT(64'hAAAAA888A888A888)) 
    \sig_ip2bus_data[24]_i_1 
       (.I0(\sig_ip2bus_data_reg[25]_1 ),
        .I1(empty_fwft_i_reg),
        .I2(\count_reg[12] [5]),
        .I3(\sig_ip2bus_data_reg[25]_0 ),
        .I4(\goreg_dm.dout_i_reg[22] [2]),
        .I5(\sig_ip2bus_data[19]_i_5_n_0 ),
        .O(D[3]));
  LUT5 #(
    .INIT(32'hF8880000)) 
    \sig_ip2bus_data[25]_i_1 
       (.I0(\goreg_dm.dout_i_reg[6] ),
        .I1(\sig_ip2bus_data_reg[25] ),
        .I2(\count_reg[12] [4]),
        .I3(\sig_ip2bus_data_reg[25]_0 ),
        .I4(\sig_ip2bus_data_reg[25]_1 ),
        .O(D[2]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT4 #(
    .INIT(16'h0020)) 
    \sig_ip2bus_data[25]_i_3 
       (.I0(\GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg ),
        .I1(sig_rx_channel_reset_reg_0),
        .I2(Bus_RNW_reg),
        .I3(\GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg ),
        .O(\sig_ip2bus_data_reg[25] ));
  LUT6 #(
    .INIT(64'hAAAAAAAAA0802000)) 
    \sig_ip2bus_data[26]_i_1 
       (.I0(\sig_ip2bus_data_reg[25]_1 ),
        .I1(out),
        .I2(\sig_ip2bus_data_reg[25] ),
        .I3(\goreg_dm.dout_i_reg[22] [1]),
        .I4(\count_reg[12] [1]),
        .I5(\sig_ip2bus_data[26]_i_2_n_0 ),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT5 #(
    .INIT(32'h00080000)) 
    \sig_ip2bus_data[26]_i_2 
       (.I0(\GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg ),
        .I1(Bus_RNW_reg),
        .I2(\GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg ),
        .I3(out),
        .I4(\count_reg[12] [3]),
        .O(\sig_ip2bus_data[26]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAA0802000)) 
    \sig_ip2bus_data[27]_i_1 
       (.I0(\sig_ip2bus_data_reg[25]_1 ),
        .I1(out),
        .I2(\sig_ip2bus_data_reg[25] ),
        .I3(\goreg_dm.dout_i_reg[22] [0]),
        .I4(\count_reg[12] [0]),
        .I5(\sig_ip2bus_data[27]_i_2_n_0 ),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT5 #(
    .INIT(32'h00080000)) 
    \sig_ip2bus_data[27]_i_2 
       (.I0(\GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg ),
        .I1(Bus_RNW_reg),
        .I2(\GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg ),
        .I3(out),
        .I4(\count_reg[12] [2]),
        .O(\sig_ip2bus_data[27]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAA808080)) 
    \sig_ip2bus_data[2]_i_1 
       (.I0(\sig_ip2bus_data_reg[12] ),
        .I1(\sig_ip2bus_data[2]_i_2_n_0 ),
        .I2(\sig_register_array_reg[0][2]_1 ),
        .I3(\sig_register_array_reg[1][0]_1 [7]),
        .I4(\sig_ip2bus_data_reg[10] ),
        .I5(empty_fwft_i_reg_5),
        .O(D[16]));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \sig_ip2bus_data[2]_i_2 
       (.I0(\GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg ),
        .I1(\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg ),
        .I2(Bus_RNW_reg),
        .I3(\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg ),
        .O(\sig_ip2bus_data[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAA808080)) 
    \sig_ip2bus_data[5]_i_1 
       (.I0(\sig_ip2bus_data_reg[12] ),
        .I1(\sig_ip2bus_data[2]_i_2_n_0 ),
        .I2(\sig_register_array_reg[0][5]_1 ),
        .I3(\sig_register_array_reg[1][0]_1 [6]),
        .I4(\sig_ip2bus_data_reg[10] ),
        .I5(empty_fwft_i_reg_5),
        .O(D[15]));
  LUT6 #(
    .INIT(64'hAAAAAAAAAA808080)) 
    \sig_ip2bus_data[7]_i_1 
       (.I0(\sig_ip2bus_data_reg[12] ),
        .I1(\sig_ip2bus_data[2]_i_2_n_0 ),
        .I2(\sig_register_array_reg[0][7]_2 ),
        .I3(\sig_register_array_reg[1][0]_1 [5]),
        .I4(\sig_ip2bus_data_reg[10] ),
        .I5(empty_fwft_i_reg_5),
        .O(D[14]));
  LUT6 #(
    .INIT(64'hAAAAAAAAAA808080)) 
    \sig_ip2bus_data[8]_i_1 
       (.I0(\sig_ip2bus_data_reg[12] ),
        .I1(\sig_ip2bus_data[2]_i_2_n_0 ),
        .I2(\sig_register_array_reg[0][8]_3 ),
        .I3(\sig_register_array_reg[1][0]_1 [4]),
        .I4(\sig_ip2bus_data_reg[10] ),
        .I5(empty_fwft_i_reg_5),
        .O(D[13]));
  LUT6 #(
    .INIT(64'hAAAAAAAAAA808080)) 
    \sig_ip2bus_data[9]_i_1 
       (.I0(\sig_ip2bus_data_reg[12] ),
        .I1(\sig_ip2bus_data[9]_i_2_n_0 ),
        .I2(\goreg_dm.dout_i_reg[22] [11]),
        .I3(\sig_register_array_reg[1][0]_1 [3]),
        .I4(\sig_ip2bus_data_reg[10] ),
        .I5(\count_reg[12]_0 ),
        .O(D[12]));
  LUT6 #(
    .INIT(64'h0000000000000040)) 
    \sig_ip2bus_data[9]_i_2 
       (.I0(sig_rx_channel_reset_reg_0),
        .I1(Bus_RNW_reg),
        .I2(\GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg ),
        .I3(\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg ),
        .I4(\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg ),
        .I5(out),
        .O(\sig_ip2bus_data[9]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    sig_rd_rlen_i_1
       (.I0(sig_rd_rlen_reg),
        .I1(out),
        .O(sig_rd_rlen));
  LUT6 #(
    .INIT(64'hDDDDDCDDDCDCDCDC)) 
    \sig_register_array[0][11]_i_2 
       (.I0(\sig_register_array_reg[0][2] ),
        .I1(prog_full_i),
        .I2(sig_str_rst_reg),
        .I3(\GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg ),
        .I4(Bus_RNW_reg),
        .I5(s_axi_wdata[1]),
        .O(\sig_register_array_reg[0][11] ));
  LUT6 #(
    .INIT(64'h5D0C5D5D5D0C5D0C)) 
    \sig_register_array[0][12]_i_3 
       (.I0(\sig_register_array_reg[0][2] ),
        .I1(p_8_out),
        .I2(sig_rxd_prog_empty_d1),
        .I3(sig_str_rst_reg),
        .I4(\sig_register_array_reg[0][7] [0]),
        .I5(s_axi_wdata[0]),
        .O(\sig_register_array_reg[0][12] ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT5 #(
    .INIT(32'hFF000B00)) 
    \sig_register_array[0][2]_i_2 
       (.I0(Bus_RNW_reg),
        .I1(\GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg ),
        .I2(s_axi_wdata[10]),
        .I3(axi4_fifo_rd_en_i),
        .I4(\sig_register_array_reg[0][5] ),
        .O(\sig_register_array[0]0_out ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFEF)) 
    \sig_register_array[0][2]_i_3 
       (.I0(\sig_register_array_reg[0][7]_0 ),
        .I1(sig_str_rst_i_5_n_0),
        .I2(IPIC_STATE_reg),
        .I3(IPIC_STATE),
        .I4(\sig_register_array[0][2]_i_7_n_0 ),
        .I5(\sig_register_array[0][2]_i_8_n_0 ),
        .O(\sig_register_array_reg[0][2] ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT3 #(
    .INIT(8'h20)) 
    \sig_register_array[0][2]_i_5 
       (.I0(eqOp__6),
        .I1(Bus_RNW_reg),
        .I2(\GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg ),
        .O(sig_str_rst_reg));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'h8A)) 
    \sig_register_array[0][2]_i_6 
       (.I0(s_axi_wdata[10]),
        .I1(Bus_RNW_reg),
        .I2(\GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg ),
        .O(\sig_register_array_reg[0][2]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT3 #(
    .INIT(8'h32)) 
    \sig_register_array[0][2]_i_7 
       (.I0(\GEN_BKEND_CE_REGISTERS[11].ce_out_i_reg ),
        .I1(Bus_RNW_reg),
        .I2(\GEN_BKEND_CE_REGISTERS[12].ce_out_i_reg ),
        .O(\sig_register_array[0][2]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFEFFFFFEFF)) 
    \sig_register_array[0][2]_i_8 
       (.I0(\GEN_BKEND_CE_REGISTERS[4].ce_out_i_reg ),
        .I1(\GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg ),
        .I2(\GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg ),
        .I3(\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg ),
        .I4(Bus_RNW_reg),
        .I5(\GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg ),
        .O(\sig_register_array[0][2]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \sig_register_array[0][5]_i_2 
       (.I0(\GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg ),
        .I1(Bus_RNW_reg),
        .O(\sig_register_array_reg[0][7] [0]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFDF3)) 
    \sig_register_array[0][5]_i_4 
       (.I0(eqOp__6),
        .I1(\sig_register_array_reg[0][7] [2]),
        .I2(\sig_register_array[0][5]_i_6_n_0 ),
        .I3(\sig_register_array_reg[0][7] [0]),
        .I4(\sig_register_array[0][5]_i_7_n_0 ),
        .I5(IPIC_STATE_reg_0),
        .O(\sig_register_array_reg[0][5] ));
  LUT6 #(
    .INIT(64'hDDDDDCDDDCDCDCDC)) 
    \sig_register_array[0][5]_i_5 
       (.I0(\sig_register_array_reg[0][2] ),
        .I1(\sig_register_array[0]1_in ),
        .I2(sig_str_rst_reg),
        .I3(\GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg ),
        .I4(Bus_RNW_reg),
        .I5(s_axi_wdata[7]),
        .O(\sig_register_array_reg[0][5]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT5 #(
    .INIT(32'h00FF00FE)) 
    \sig_register_array[0][5]_i_6 
       (.I0(\GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg ),
        .I1(\GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg ),
        .I2(\GEN_BKEND_CE_REGISTERS[12].ce_out_i_reg ),
        .I3(Bus_RNW_reg),
        .I4(\GEN_BKEND_CE_REGISTERS[11].ce_out_i_reg ),
        .O(\sig_register_array[0][5]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFF0F0FFFE)) 
    \sig_register_array[0][5]_i_7 
       (.I0(\GEN_BKEND_CE_REGISTERS[4].ce_out_i_reg ),
        .I1(\GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg ),
        .I2(\sig_register_array[0][5]_i_8_n_0 ),
        .I3(\GEN_BKEND_CE_REGISTERS[6].ce_out_i_reg ),
        .I4(Bus_RNW_reg),
        .I5(\sig_register_array_reg[0][7]_0 ),
        .O(\sig_register_array[0][5]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT3 #(
    .INIT(8'h32)) 
    \sig_register_array[0][5]_i_8 
       (.I0(\GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg ),
        .I1(Bus_RNW_reg),
        .I2(\GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg ),
        .O(\sig_register_array[0][5]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \sig_register_array[0][7]_i_2 
       (.I0(\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg ),
        .I1(Bus_RNW_reg),
        .O(\sig_register_array_reg[0][7] [2]));
  LUT6 #(
    .INIT(64'h00000000A2AEA2A2)) 
    \sig_register_array[0][7]_i_3 
       (.I0(sig_str_rst_reg),
        .I1(\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg ),
        .I2(Bus_RNW_reg),
        .I3(\GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg ),
        .I4(s_axi_wdata[5]),
        .I5(IPIC_STATE_reg_0),
        .O(\sig_register_array_reg[0][7]_1 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT3 #(
    .INIT(8'h32)) 
    \sig_register_array[0][7]_i_4 
       (.I0(\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg ),
        .I1(Bus_RNW_reg),
        .I2(\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg ),
        .O(\sig_register_array_reg[0][7]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \sig_register_array[0][7]_i_5 
       (.I0(\GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg ),
        .I1(Bus_RNW_reg),
        .O(\sig_register_array_reg[0][7] [1]));
  LUT6 #(
    .INIT(64'hAAFFAAFFAAFFAAFE)) 
    \sig_register_array[0][7]_i_6 
       (.I0(\sig_register_array[0][5]_i_6_n_0 ),
        .I1(\GEN_BKEND_CE_REGISTERS[4].ce_out_i_reg ),
        .I2(\GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg ),
        .I3(Bus_RNW_reg),
        .I4(\GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg ),
        .I5(\GEN_BKEND_CE_REGISTERS[6].ce_out_i_reg ),
        .O(\sig_register_array_reg[1][0] ));
  LUT6 #(
    .INIT(64'hAAAAAEAA00000000)) 
    \sig_register_array[0][8]_i_2 
       (.I0(IPIC_STATE),
        .I1(\sig_register_array[0][8]_i_6_n_0 ),
        .I2(s_axi_wdata[4]),
        .I3(\sig_register_array_reg[0][7] [2]),
        .I4(\sig_register_array_reg[0][7] [0]),
        .I5(sig_rxd_reset),
        .O(\sig_register_array_reg[0][8] ));
  LUT6 #(
    .INIT(64'h0000000001000000)) 
    \sig_register_array[0][8]_i_3 
       (.I0(\sig_register_array[0][5]_i_6_n_0 ),
        .I1(\GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg ),
        .I2(Bus_RNW_reg),
        .I3(\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg ),
        .I4(IPIC_STATE_reg),
        .I5(\sig_register_array[0][5]_i_7_n_0 ),
        .O(\sig_register_array_reg[0][8]_2 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT5 #(
    .INIT(32'h008A0000)) 
    \sig_register_array[0][8]_i_4 
       (.I0(sig_str_rst_reg),
        .I1(Bus_RNW_reg),
        .I2(\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg ),
        .I3(IPIC_STATE),
        .I4(\sig_register_array[0][8]_i_6_n_0 ),
        .O(\sig_register_array_reg[0][8]_1 ));
  LUT6 #(
    .INIT(64'hDDDDDCDDDCDCDCDC)) 
    \sig_register_array[0][8]_i_5 
       (.I0(\sig_register_array_reg[0][2] ),
        .I1(sig_rxd_reset),
        .I2(sig_str_rst_reg),
        .I3(\GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg ),
        .I4(Bus_RNW_reg),
        .I5(s_axi_wdata[4]),
        .O(\sig_register_array_reg[0][8]_0 ));
  LUT6 #(
    .INIT(64'h0000000044004404)) 
    \sig_register_array[0][8]_i_6 
       (.I0(\sig_register_array[0][8]_i_7_n_0 ),
        .I1(IPIC_STATE_reg),
        .I2(\GEN_BKEND_CE_REGISTERS[12].ce_out_i_reg ),
        .I3(Bus_RNW_reg),
        .I4(\GEN_BKEND_CE_REGISTERS[11].ce_out_i_reg ),
        .I5(\sig_register_array[0][5]_i_7_n_0 ),
        .O(\sig_register_array[0][8]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'h32)) 
    \sig_register_array[0][8]_i_7 
       (.I0(\GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg ),
        .I1(Bus_RNW_reg),
        .I2(\GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg ),
        .O(\sig_register_array[0][8]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h00000000AA00AA02)) 
    \sig_register_array[1][0]_i_1 
       (.I0(\sig_register_array[1][0]_i_3_n_0 ),
        .I1(\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg ),
        .I2(\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg ),
        .I3(Bus_RNW_reg),
        .I4(\GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg ),
        .I5(\sig_register_array_reg[1][0] ),
        .O(E));
  LUT3 #(
    .INIT(8'h40)) 
    \sig_register_array[1][0]_i_2 
       (.I0(Bus_RNW_reg),
        .I1(\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg ),
        .I2(s_axi_wdata[12]),
        .O(\sig_register_array_reg[1][0]_0 [12]));
  LUT6 #(
    .INIT(64'h00000000C5CC0000)) 
    \sig_register_array[1][0]_i_3 
       (.I0(\GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg ),
        .I1(sig_str_rst_reg),
        .I2(Bus_RNW_reg),
        .I3(\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg ),
        .I4(IPIC_STATE_reg),
        .I5(IPIC_STATE),
        .O(\sig_register_array[1][0]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \sig_register_array[1][10]_i_1 
       (.I0(Bus_RNW_reg),
        .I1(\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg ),
        .I2(s_axi_wdata[2]),
        .O(\sig_register_array_reg[1][0]_0 [2]));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \sig_register_array[1][11]_i_1 
       (.I0(Bus_RNW_reg),
        .I1(\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg ),
        .I2(s_axi_wdata[1]),
        .O(\sig_register_array_reg[1][0]_0 [1]));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \sig_register_array[1][12]_i_1 
       (.I0(Bus_RNW_reg),
        .I1(\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg ),
        .I2(s_axi_wdata[0]),
        .O(\sig_register_array_reg[1][0]_0 [0]));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \sig_register_array[1][1]_i_1 
       (.I0(Bus_RNW_reg),
        .I1(\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg ),
        .I2(s_axi_wdata[11]),
        .O(\sig_register_array_reg[1][0]_0 [11]));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \sig_register_array[1][2]_i_1 
       (.I0(Bus_RNW_reg),
        .I1(\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg ),
        .I2(s_axi_wdata[10]),
        .O(\sig_register_array_reg[1][0]_0 [10]));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \sig_register_array[1][3]_i_1 
       (.I0(Bus_RNW_reg),
        .I1(\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg ),
        .I2(s_axi_wdata[9]),
        .O(\sig_register_array_reg[1][0]_0 [9]));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \sig_register_array[1][4]_i_1 
       (.I0(Bus_RNW_reg),
        .I1(\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg ),
        .I2(s_axi_wdata[8]),
        .O(\sig_register_array_reg[1][0]_0 [8]));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \sig_register_array[1][5]_i_1 
       (.I0(Bus_RNW_reg),
        .I1(\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg ),
        .I2(s_axi_wdata[7]),
        .O(\sig_register_array_reg[1][0]_0 [7]));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \sig_register_array[1][6]_i_1 
       (.I0(Bus_RNW_reg),
        .I1(\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg ),
        .I2(s_axi_wdata[6]),
        .O(\sig_register_array_reg[1][0]_0 [6]));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \sig_register_array[1][7]_i_1 
       (.I0(Bus_RNW_reg),
        .I1(\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg ),
        .I2(s_axi_wdata[5]),
        .O(\sig_register_array_reg[1][0]_0 [5]));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \sig_register_array[1][8]_i_1 
       (.I0(Bus_RNW_reg),
        .I1(\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg ),
        .I2(s_axi_wdata[4]),
        .O(\sig_register_array_reg[1][0]_0 [4]));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \sig_register_array[1][9]_i_1 
       (.I0(Bus_RNW_reg),
        .I1(\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg ),
        .I2(s_axi_wdata[3]),
        .O(\sig_register_array_reg[1][0]_0 [3]));
  LUT5 #(
    .INIT(32'h08FF0800)) 
    sig_rx_channel_reset_i_1
       (.I0(eqOp__6),
        .I1(sig_rx_channel_reset_i_3_n_0),
        .I2(sig_str_rst_i_2_n_0),
        .I3(sig_rx_channel_reset_i_4_n_0),
        .I4(sig_rx_channel_reset_reg_0),
        .O(sig_rx_channel_reset_reg));
  LUT6 #(
    .INIT(64'hCCCCCCCD00000000)) 
    sig_rx_channel_reset_i_3
       (.I0(\GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg ),
        .I1(Bus_RNW_reg),
        .I2(\GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg ),
        .I3(\GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg ),
        .I4(\GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg ),
        .I5(sig_rx_channel_reset_i_6_n_0),
        .O(sig_rx_channel_reset_i_3_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFF00000200)) 
    sig_rx_channel_reset_i_4
       (.I0(sig_rx_channel_reset_i_7_n_0),
        .I1(\sig_register_array_reg[0][7]_0 ),
        .I2(\sig_register_array[0][5]_i_6_n_0 ),
        .I3(eqOp__6),
        .I4(sig_rx_channel_reset_i_8_n_0),
        .I5(sig_rxd_reset),
        .O(sig_rx_channel_reset_i_4_n_0));
  LUT6 #(
    .INIT(64'h0000000000000400)) 
    sig_rx_channel_reset_i_6
       (.I0(\GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg ),
        .I1(\GEN_BKEND_CE_REGISTERS[6].ce_out_i_reg ),
        .I2(IPIC_STATE),
        .I3(IPIC_STATE_reg),
        .I4(\GEN_BKEND_CE_REGISTERS[12].ce_out_i_reg ),
        .I5(Bus_RNW_reg),
        .O(sig_rx_channel_reset_i_6_n_0));
  LUT6 #(
    .INIT(64'h0000000000000400)) 
    sig_rx_channel_reset_i_7
       (.I0(\GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg ),
        .I1(\GEN_BKEND_CE_REGISTERS[6].ce_out_i_reg ),
        .I2(IPIC_STATE),
        .I3(IPIC_STATE_reg),
        .I4(\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg ),
        .I5(Bus_RNW_reg),
        .O(sig_rx_channel_reset_i_7_n_0));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT5 #(
    .INIT(32'h00FF00FE)) 
    sig_rx_channel_reset_i_8
       (.I0(\GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg ),
        .I1(\GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg ),
        .I2(\GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg ),
        .I3(Bus_RNW_reg),
        .I4(\GEN_BKEND_CE_REGISTERS[4].ce_out_i_reg ),
        .O(sig_rx_channel_reset_i_8_n_0));
  LUT6 #(
    .INIT(64'h0000000000000004)) 
    sig_str_rst_i_1
       (.I0(sig_str_rst_i_2_n_0),
        .I1(sig_str_rst_reg),
        .I2(sig_Bus2IP_WrCE[9]),
        .I3(sig_Bus2IP_WrCE[12]),
        .I4(sig_str_rst_i_5_n_0),
        .I5(IPIC_STATE_reg_0),
        .O(sig_str_rst_reg_0));
  LUT6 #(
    .INIT(64'hF0F0FFFFF0F0FFFE)) 
    sig_str_rst_i_2
       (.I0(\GEN_BKEND_CE_REGISTERS[4].ce_out_i_reg ),
        .I1(\GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg ),
        .I2(\sig_register_array_reg[0][7]_0 ),
        .I3(\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg ),
        .I4(Bus_RNW_reg),
        .I5(\GEN_BKEND_CE_REGISTERS[11].ce_out_i_reg ),
        .O(sig_str_rst_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT2 #(
    .INIT(4'h2)) 
    sig_str_rst_i_3
       (.I0(\GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg ),
        .I1(Bus_RNW_reg),
        .O(sig_Bus2IP_WrCE[9]));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT2 #(
    .INIT(4'h2)) 
    sig_str_rst_i_4
       (.I0(\GEN_BKEND_CE_REGISTERS[12].ce_out_i_reg ),
        .I1(Bus_RNW_reg),
        .O(sig_Bus2IP_WrCE[12]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT5 #(
    .INIT(32'h00FF00FE)) 
    sig_str_rst_i_5
       (.I0(\GEN_BKEND_CE_REGISTERS[6].ce_out_i_reg ),
        .I1(\GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg ),
        .I2(\GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg ),
        .I3(Bus_RNW_reg),
        .I4(\GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg ),
        .O(sig_str_rst_i_5_n_0));
endmodule

(* C_AXI4_BASEADDR = "-2147479552" *) (* C_AXI4_HIGHADDR = "-2147471361" *) (* C_AXIS_TDEST_WIDTH = "4" *) 
(* C_AXIS_TID_WIDTH = "1" *) (* C_AXIS_TUSER_WIDTH = "16" *) (* C_BASEADDR = "1114112" *) 
(* C_DATA_INTERFACE_TYPE = "1" *) (* C_FAMILY = "kintexu" *) (* C_HAS_AXIS_TDEST = "0" *) 
(* C_HAS_AXIS_TID = "1" *) (* C_HAS_AXIS_TKEEP = "0" *) (* C_HAS_AXIS_TSTRB = "0" *) 
(* C_HAS_AXIS_TUSER = "0" *) (* C_HIGHADDR = "1118207" *) (* C_RX_FIFO_DEPTH = "4096" *) 
(* C_RX_FIFO_PE_THRESHOLD = "2" *) (* C_RX_FIFO_PF_THRESHOLD = "4091" *) (* C_S_AXI4_DATA_WIDTH = "128" *) 
(* C_S_AXI_ADDR_WIDTH = "32" *) (* C_S_AXI_DATA_WIDTH = "32" *) (* C_S_AXI_ID_WIDTH = "1" *) 
(* C_TX_FIFO_DEPTH = "512" *) (* C_TX_FIFO_PE_THRESHOLD = "2" *) (* C_TX_FIFO_PF_THRESHOLD = "507" *) 
(* C_USE_RX_CUT_THROUGH = "1" *) (* C_USE_RX_DATA = "1" *) (* C_USE_TX_CTRL = "0" *) 
(* C_USE_TX_CUT_THROUGH = "0" *) (* C_USE_TX_DATA = "0" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_fifo_mm_s
   (interrupt,
    s_axi_aclk,
    s_axi_aresetn,
    s_axi_awaddr,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bresp,
    s_axi_bvalid,
    s_axi_bready,
    s_axi_araddr,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rvalid,
    s_axi_rready,
    s_axi4_awid,
    s_axi4_awaddr,
    s_axi4_awlen,
    s_axi4_awsize,
    s_axi4_awburst,
    s_axi4_awlock,
    s_axi4_awcache,
    s_axi4_awprot,
    s_axi4_awvalid,
    s_axi4_awready,
    s_axi4_wdata,
    s_axi4_wstrb,
    s_axi4_wlast,
    s_axi4_wvalid,
    s_axi4_wready,
    s_axi4_bid,
    s_axi4_bresp,
    s_axi4_bvalid,
    s_axi4_bready,
    s_axi4_arid,
    s_axi4_araddr,
    s_axi4_arlen,
    s_axi4_arsize,
    s_axi4_arburst,
    s_axi4_arlock,
    s_axi4_arcache,
    s_axi4_arprot,
    s_axi4_arvalid,
    s_axi4_arready,
    s_axi4_rid,
    s_axi4_rdata,
    s_axi4_rresp,
    s_axi4_rlast,
    s_axi4_rvalid,
    s_axi4_rready,
    mm2s_prmry_reset_out_n,
    axi_str_txd_tvalid,
    axi_str_txd_tready,
    axi_str_txd_tlast,
    axi_str_txd_tkeep,
    axi_str_txd_tdata,
    axi_str_txd_tstrb,
    axi_str_txd_tdest,
    axi_str_txd_tid,
    axi_str_txd_tuser,
    mm2s_cntrl_reset_out_n,
    axi_str_txc_tvalid,
    axi_str_txc_tready,
    axi_str_txc_tlast,
    axi_str_txc_tkeep,
    axi_str_txc_tdata,
    axi_str_txc_tstrb,
    axi_str_txc_tdest,
    axi_str_txc_tid,
    axi_str_txc_tuser,
    s2mm_prmry_reset_out_n,
    axi_str_rxd_tvalid,
    axi_str_rxd_tready,
    axi_str_rxd_tlast,
    axi_str_rxd_tkeep,
    axi_str_rxd_tdata,
    axi_str_rxd_tstrb,
    axi_str_rxd_tdest,
    axi_str_rxd_tid,
    axi_str_rxd_tuser);
  output interrupt;
  input s_axi_aclk;
  input s_axi_aresetn;
  input [31:0]s_axi_awaddr;
  input s_axi_awvalid;
  output s_axi_awready;
  input [31:0]s_axi_wdata;
  input [3:0]s_axi_wstrb;
  input s_axi_wvalid;
  output s_axi_wready;
  output [1:0]s_axi_bresp;
  output s_axi_bvalid;
  input s_axi_bready;
  input [31:0]s_axi_araddr;
  input s_axi_arvalid;
  output s_axi_arready;
  output [31:0]s_axi_rdata;
  output [1:0]s_axi_rresp;
  output s_axi_rvalid;
  input s_axi_rready;
  input [0:0]s_axi4_awid;
  input [31:0]s_axi4_awaddr;
  input [7:0]s_axi4_awlen;
  input [2:0]s_axi4_awsize;
  input [1:0]s_axi4_awburst;
  input s_axi4_awlock;
  input [3:0]s_axi4_awcache;
  input [2:0]s_axi4_awprot;
  input s_axi4_awvalid;
  output s_axi4_awready;
  input [127:0]s_axi4_wdata;
  input [15:0]s_axi4_wstrb;
  input s_axi4_wlast;
  input s_axi4_wvalid;
  output s_axi4_wready;
  output [0:0]s_axi4_bid;
  output [1:0]s_axi4_bresp;
  output s_axi4_bvalid;
  input s_axi4_bready;
  input [0:0]s_axi4_arid;
  input [31:0]s_axi4_araddr;
  input [7:0]s_axi4_arlen;
  input [2:0]s_axi4_arsize;
  input [1:0]s_axi4_arburst;
  input s_axi4_arlock;
  input [3:0]s_axi4_arcache;
  input [2:0]s_axi4_arprot;
  input s_axi4_arvalid;
  output s_axi4_arready;
  output [0:0]s_axi4_rid;
  output [127:0]s_axi4_rdata;
  output [1:0]s_axi4_rresp;
  output s_axi4_rlast;
  output s_axi4_rvalid;
  input s_axi4_rready;
  output mm2s_prmry_reset_out_n;
  output axi_str_txd_tvalid;
  input axi_str_txd_tready;
  output axi_str_txd_tlast;
  output [15:0]axi_str_txd_tkeep;
  output [127:0]axi_str_txd_tdata;
  output [15:0]axi_str_txd_tstrb;
  output [3:0]axi_str_txd_tdest;
  output [0:0]axi_str_txd_tid;
  output [15:0]axi_str_txd_tuser;
  output mm2s_cntrl_reset_out_n;
  output axi_str_txc_tvalid;
  input axi_str_txc_tready;
  output axi_str_txc_tlast;
  output [15:0]axi_str_txc_tkeep;
  output [127:0]axi_str_txc_tdata;
  output [15:0]axi_str_txc_tstrb;
  output [3:0]axi_str_txc_tdest;
  output [0:0]axi_str_txc_tid;
  output [15:0]axi_str_txc_tuser;
  output s2mm_prmry_reset_out_n;
  input axi_str_rxd_tvalid;
  output axi_str_rxd_tready;
  input axi_str_rxd_tlast;
  input [15:0]axi_str_rxd_tkeep;
  input [127:0]axi_str_rxd_tdata;
  input [15:0]axi_str_rxd_tstrb;
  input [3:0]axi_str_rxd_tdest;
  input [0:0]axi_str_rxd_tid;
  input [15:0]axi_str_rxd_tuser;

  wire \<const0> ;
  wire \<const1> ;
  wire COMP_IPIC2AXI_S_n_12;
  wire COMP_IPIC2AXI_S_n_185;
  wire COMP_IPIC2AXI_S_n_186;
  wire COMP_IPIC2AXI_S_n_187;
  wire COMP_IPIC2AXI_S_n_188;
  wire COMP_IPIC2AXI_S_n_189;
  wire COMP_IPIC2AXI_S_n_190;
  wire COMP_IPIC2AXI_S_n_191;
  wire COMP_IPIC2AXI_S_n_192;
  wire COMP_IPIC2AXI_S_n_193;
  wire COMP_IPIC2AXI_S_n_194;
  wire COMP_IPIC2AXI_S_n_195;
  wire COMP_IPIC2AXI_S_n_196;
  wire COMP_IPIC2AXI_S_n_24;
  wire COMP_IPIC2AXI_S_n_25;
  wire COMP_IPIC2AXI_S_n_26;
  wire COMP_IPIC2AXI_S_n_27;
  wire COMP_IPIC2AXI_S_n_28;
  wire COMP_IPIC2AXI_S_n_29;
  wire COMP_IPIC2AXI_S_n_30;
  wire COMP_IPIC2AXI_S_n_31;
  wire COMP_IPIC2AXI_S_n_32;
  wire COMP_IPIC2AXI_S_n_33;
  wire COMP_IPIC2AXI_S_n_34;
  wire COMP_IPIC2AXI_S_n_37;
  wire COMP_IPIC2AXI_S_n_40;
  wire COMP_IPIC2AXI_S_n_42;
  wire COMP_IPIC2AXI_S_n_43;
  wire COMP_IPIC2AXI_S_n_44;
  wire COMP_IPIC2AXI_S_n_45;
  wire COMP_IPIC2AXI_S_n_46;
  wire COMP_IPIC2AXI_S_n_47;
  wire COMP_IPIC2AXI_S_n_48;
  wire COMP_IPIC2AXI_S_n_49;
  wire COMP_IPIC2AXI_S_n_50;
  wire COMP_IPIC2AXI_S_n_51;
  wire COMP_IPIC2AXI_S_n_52;
  wire COMP_IPIC2AXI_S_n_53;
  wire COMP_IPIC2AXI_S_n_54;
  wire COMP_IPIC2AXI_S_n_55;
  wire COMP_IPIC2AXI_S_n_56;
  wire COMP_IPIC2AXI_S_n_9;
  wire COMP_IPIF_n_26;
  wire COMP_IPIF_n_27;
  wire COMP_IPIF_n_28;
  wire COMP_IPIF_n_29;
  wire COMP_IPIF_n_30;
  wire COMP_IPIF_n_31;
  wire COMP_IPIF_n_35;
  wire COMP_IPIF_n_36;
  wire COMP_IPIF_n_37;
  wire COMP_IPIF_n_38;
  wire COMP_IPIF_n_39;
  wire COMP_IPIF_n_4;
  wire COMP_IPIF_n_40;
  wire COMP_IPIF_n_41;
  wire COMP_IPIF_n_42;
  wire COMP_IPIF_n_43;
  wire COMP_IPIF_n_44;
  wire COMP_IPIF_n_45;
  wire COMP_IPIF_n_46;
  wire COMP_IPIF_n_5;
  wire COMP_IPIF_n_6;
  wire COMP_IPIF_n_60;
  wire COMP_IPIF_n_62;
  wire COMP_IPIF_n_63;
  wire COMP_IPIF_n_64;
  wire COMP_IPIF_n_65;
  wire COMP_IPIF_n_66;
  wire COMP_IPIF_n_68;
  wire COMP_IPIF_n_69;
  wire COMP_IPIF_n_7;
  wire IPIC_STATE;
  wire \I_SLAVE_ATTACHMENT/I_DECODER/cs_ce_clr ;
  wire axi4_fifo_rd_en_i;
  wire [127:0]axi_str_rxd_tdata;
  wire axi_str_rxd_tlast;
  wire axi_str_rxd_tready;
  wire axi_str_rxd_tvalid;
  wire empty_fwft_i;
  wire eqOp__6;
  wire \gaxif.COMP_AXI4_n_11 ;
  wire \gaxif.COMP_AXI4_n_12 ;
  wire \grxd.COMP_RX_FIFO/gfifo_gen.COMP_AXIS_FG_FIFO/COMP_FIFO/inst_fifo_gen/axis_rd_en__0 ;
  wire interrupt;
  wire mm2s_prmry_reset_out_n;
  wire p_3_out;
  wire [12:0]p_6_out;
  wire p_8_out;
  wire prog_full_i;
  wire s2mm_prmry_reset_out_n;
  wire s_aresetn_a_c;
  wire [31:0]s_axi4_araddr;
  wire [0:0]s_axi4_arid;
  wire [7:0]s_axi4_arlen;
  wire s_axi4_arready;
  wire s_axi4_arvalid;
  wire [31:0]s_axi4_awaddr;
  wire [7:0]s_axi4_awlen;
  wire s_axi4_awready;
  wire s_axi4_awvalid;
  wire [0:0]s_axi4_bid;
  wire s_axi4_bready;
  wire s_axi4_bvalid;
  wire [127:0]s_axi4_rdata;
  wire [0:0]s_axi4_rid;
  wire s_axi4_rlast;
  wire s_axi4_rready;
  wire s_axi4_rvalid;
  wire s_axi4_wready;
  wire s_axi4_wvalid;
  wire s_axi_aclk;
  wire [31:0]s_axi_araddr;
  wire s_axi_aresetn;
  wire s_axi_arready;
  wire s_axi_arvalid;
  wire [31:0]s_axi_awaddr;
  wire s_axi_awvalid;
  wire s_axi_bready;
  wire s_axi_bvalid;
  wire [31:0]s_axi_rdata;
  wire s_axi_rready;
  wire s_axi_rvalid;
  wire [31:0]s_axi_wdata;
  wire s_axi_wready;
  wire s_axi_wvalid;
  wire sig_Bus2IP_CS;
  wire [9:9]sig_Bus2IP_RdCE;
  wire [0:10]sig_Bus2IP_WrCE;
  wire [0:31]sig_ip2bus_data;
  wire [0:27]sig_ip2bus_data_1;
  wire sig_rd_rlen;
  wire [10:10]\sig_register_array[0]0_out ;
  wire \sig_register_array[0]12_out ;
  wire \sig_register_array[0]1_in ;
  wire [0:12]\sig_register_array[1]_0 ;
  wire sig_rxd_prog_empty_d1;
  wire sig_rxd_reset;

  assign axi_str_txc_tdata[127] = \<const0> ;
  assign axi_str_txc_tdata[126] = \<const0> ;
  assign axi_str_txc_tdata[125] = \<const0> ;
  assign axi_str_txc_tdata[124] = \<const0> ;
  assign axi_str_txc_tdata[123] = \<const0> ;
  assign axi_str_txc_tdata[122] = \<const0> ;
  assign axi_str_txc_tdata[121] = \<const0> ;
  assign axi_str_txc_tdata[120] = \<const0> ;
  assign axi_str_txc_tdata[119] = \<const0> ;
  assign axi_str_txc_tdata[118] = \<const0> ;
  assign axi_str_txc_tdata[117] = \<const0> ;
  assign axi_str_txc_tdata[116] = \<const0> ;
  assign axi_str_txc_tdata[115] = \<const0> ;
  assign axi_str_txc_tdata[114] = \<const0> ;
  assign axi_str_txc_tdata[113] = \<const0> ;
  assign axi_str_txc_tdata[112] = \<const0> ;
  assign axi_str_txc_tdata[111] = \<const0> ;
  assign axi_str_txc_tdata[110] = \<const0> ;
  assign axi_str_txc_tdata[109] = \<const0> ;
  assign axi_str_txc_tdata[108] = \<const0> ;
  assign axi_str_txc_tdata[107] = \<const0> ;
  assign axi_str_txc_tdata[106] = \<const0> ;
  assign axi_str_txc_tdata[105] = \<const0> ;
  assign axi_str_txc_tdata[104] = \<const0> ;
  assign axi_str_txc_tdata[103] = \<const0> ;
  assign axi_str_txc_tdata[102] = \<const0> ;
  assign axi_str_txc_tdata[101] = \<const0> ;
  assign axi_str_txc_tdata[100] = \<const0> ;
  assign axi_str_txc_tdata[99] = \<const0> ;
  assign axi_str_txc_tdata[98] = \<const0> ;
  assign axi_str_txc_tdata[97] = \<const0> ;
  assign axi_str_txc_tdata[96] = \<const0> ;
  assign axi_str_txc_tdata[95] = \<const0> ;
  assign axi_str_txc_tdata[94] = \<const0> ;
  assign axi_str_txc_tdata[93] = \<const0> ;
  assign axi_str_txc_tdata[92] = \<const0> ;
  assign axi_str_txc_tdata[91] = \<const0> ;
  assign axi_str_txc_tdata[90] = \<const0> ;
  assign axi_str_txc_tdata[89] = \<const0> ;
  assign axi_str_txc_tdata[88] = \<const0> ;
  assign axi_str_txc_tdata[87] = \<const0> ;
  assign axi_str_txc_tdata[86] = \<const0> ;
  assign axi_str_txc_tdata[85] = \<const0> ;
  assign axi_str_txc_tdata[84] = \<const0> ;
  assign axi_str_txc_tdata[83] = \<const0> ;
  assign axi_str_txc_tdata[82] = \<const0> ;
  assign axi_str_txc_tdata[81] = \<const0> ;
  assign axi_str_txc_tdata[80] = \<const0> ;
  assign axi_str_txc_tdata[79] = \<const0> ;
  assign axi_str_txc_tdata[78] = \<const0> ;
  assign axi_str_txc_tdata[77] = \<const0> ;
  assign axi_str_txc_tdata[76] = \<const0> ;
  assign axi_str_txc_tdata[75] = \<const0> ;
  assign axi_str_txc_tdata[74] = \<const0> ;
  assign axi_str_txc_tdata[73] = \<const0> ;
  assign axi_str_txc_tdata[72] = \<const0> ;
  assign axi_str_txc_tdata[71] = \<const0> ;
  assign axi_str_txc_tdata[70] = \<const0> ;
  assign axi_str_txc_tdata[69] = \<const0> ;
  assign axi_str_txc_tdata[68] = \<const0> ;
  assign axi_str_txc_tdata[67] = \<const0> ;
  assign axi_str_txc_tdata[66] = \<const0> ;
  assign axi_str_txc_tdata[65] = \<const0> ;
  assign axi_str_txc_tdata[64] = \<const0> ;
  assign axi_str_txc_tdata[63] = \<const0> ;
  assign axi_str_txc_tdata[62] = \<const0> ;
  assign axi_str_txc_tdata[61] = \<const0> ;
  assign axi_str_txc_tdata[60] = \<const0> ;
  assign axi_str_txc_tdata[59] = \<const0> ;
  assign axi_str_txc_tdata[58] = \<const0> ;
  assign axi_str_txc_tdata[57] = \<const0> ;
  assign axi_str_txc_tdata[56] = \<const0> ;
  assign axi_str_txc_tdata[55] = \<const0> ;
  assign axi_str_txc_tdata[54] = \<const0> ;
  assign axi_str_txc_tdata[53] = \<const0> ;
  assign axi_str_txc_tdata[52] = \<const0> ;
  assign axi_str_txc_tdata[51] = \<const0> ;
  assign axi_str_txc_tdata[50] = \<const0> ;
  assign axi_str_txc_tdata[49] = \<const0> ;
  assign axi_str_txc_tdata[48] = \<const0> ;
  assign axi_str_txc_tdata[47] = \<const0> ;
  assign axi_str_txc_tdata[46] = \<const0> ;
  assign axi_str_txc_tdata[45] = \<const0> ;
  assign axi_str_txc_tdata[44] = \<const0> ;
  assign axi_str_txc_tdata[43] = \<const0> ;
  assign axi_str_txc_tdata[42] = \<const0> ;
  assign axi_str_txc_tdata[41] = \<const0> ;
  assign axi_str_txc_tdata[40] = \<const0> ;
  assign axi_str_txc_tdata[39] = \<const0> ;
  assign axi_str_txc_tdata[38] = \<const0> ;
  assign axi_str_txc_tdata[37] = \<const0> ;
  assign axi_str_txc_tdata[36] = \<const0> ;
  assign axi_str_txc_tdata[35] = \<const0> ;
  assign axi_str_txc_tdata[34] = \<const0> ;
  assign axi_str_txc_tdata[33] = \<const0> ;
  assign axi_str_txc_tdata[32] = \<const0> ;
  assign axi_str_txc_tdata[31] = \<const0> ;
  assign axi_str_txc_tdata[30] = \<const0> ;
  assign axi_str_txc_tdata[29] = \<const0> ;
  assign axi_str_txc_tdata[28] = \<const0> ;
  assign axi_str_txc_tdata[27] = \<const0> ;
  assign axi_str_txc_tdata[26] = \<const0> ;
  assign axi_str_txc_tdata[25] = \<const0> ;
  assign axi_str_txc_tdata[24] = \<const0> ;
  assign axi_str_txc_tdata[23] = \<const0> ;
  assign axi_str_txc_tdata[22] = \<const0> ;
  assign axi_str_txc_tdata[21] = \<const0> ;
  assign axi_str_txc_tdata[20] = \<const0> ;
  assign axi_str_txc_tdata[19] = \<const0> ;
  assign axi_str_txc_tdata[18] = \<const0> ;
  assign axi_str_txc_tdata[17] = \<const0> ;
  assign axi_str_txc_tdata[16] = \<const0> ;
  assign axi_str_txc_tdata[15] = \<const0> ;
  assign axi_str_txc_tdata[14] = \<const0> ;
  assign axi_str_txc_tdata[13] = \<const0> ;
  assign axi_str_txc_tdata[12] = \<const0> ;
  assign axi_str_txc_tdata[11] = \<const0> ;
  assign axi_str_txc_tdata[10] = \<const0> ;
  assign axi_str_txc_tdata[9] = \<const0> ;
  assign axi_str_txc_tdata[8] = \<const0> ;
  assign axi_str_txc_tdata[7] = \<const0> ;
  assign axi_str_txc_tdata[6] = \<const0> ;
  assign axi_str_txc_tdata[5] = \<const0> ;
  assign axi_str_txc_tdata[4] = \<const0> ;
  assign axi_str_txc_tdata[3] = \<const0> ;
  assign axi_str_txc_tdata[2] = \<const0> ;
  assign axi_str_txc_tdata[1] = \<const0> ;
  assign axi_str_txc_tdata[0] = \<const0> ;
  assign axi_str_txc_tdest[3] = \<const0> ;
  assign axi_str_txc_tdest[2] = \<const0> ;
  assign axi_str_txc_tdest[1] = \<const0> ;
  assign axi_str_txc_tdest[0] = \<const0> ;
  assign axi_str_txc_tid[0] = \<const0> ;
  assign axi_str_txc_tkeep[15] = \<const1> ;
  assign axi_str_txc_tkeep[14] = \<const1> ;
  assign axi_str_txc_tkeep[13] = \<const1> ;
  assign axi_str_txc_tkeep[12] = \<const1> ;
  assign axi_str_txc_tkeep[11] = \<const1> ;
  assign axi_str_txc_tkeep[10] = \<const1> ;
  assign axi_str_txc_tkeep[9] = \<const1> ;
  assign axi_str_txc_tkeep[8] = \<const1> ;
  assign axi_str_txc_tkeep[7] = \<const1> ;
  assign axi_str_txc_tkeep[6] = \<const1> ;
  assign axi_str_txc_tkeep[5] = \<const1> ;
  assign axi_str_txc_tkeep[4] = \<const1> ;
  assign axi_str_txc_tkeep[3] = \<const1> ;
  assign axi_str_txc_tkeep[2] = \<const1> ;
  assign axi_str_txc_tkeep[1] = \<const1> ;
  assign axi_str_txc_tkeep[0] = \<const1> ;
  assign axi_str_txc_tlast = \<const0> ;
  assign axi_str_txc_tstrb[15] = \<const0> ;
  assign axi_str_txc_tstrb[14] = \<const0> ;
  assign axi_str_txc_tstrb[13] = \<const0> ;
  assign axi_str_txc_tstrb[12] = \<const0> ;
  assign axi_str_txc_tstrb[11] = \<const0> ;
  assign axi_str_txc_tstrb[10] = \<const0> ;
  assign axi_str_txc_tstrb[9] = \<const0> ;
  assign axi_str_txc_tstrb[8] = \<const0> ;
  assign axi_str_txc_tstrb[7] = \<const0> ;
  assign axi_str_txc_tstrb[6] = \<const0> ;
  assign axi_str_txc_tstrb[5] = \<const0> ;
  assign axi_str_txc_tstrb[4] = \<const0> ;
  assign axi_str_txc_tstrb[3] = \<const0> ;
  assign axi_str_txc_tstrb[2] = \<const0> ;
  assign axi_str_txc_tstrb[1] = \<const0> ;
  assign axi_str_txc_tstrb[0] = \<const0> ;
  assign axi_str_txc_tuser[15] = \<const0> ;
  assign axi_str_txc_tuser[14] = \<const0> ;
  assign axi_str_txc_tuser[13] = \<const0> ;
  assign axi_str_txc_tuser[12] = \<const0> ;
  assign axi_str_txc_tuser[11] = \<const0> ;
  assign axi_str_txc_tuser[10] = \<const0> ;
  assign axi_str_txc_tuser[9] = \<const0> ;
  assign axi_str_txc_tuser[8] = \<const0> ;
  assign axi_str_txc_tuser[7] = \<const0> ;
  assign axi_str_txc_tuser[6] = \<const0> ;
  assign axi_str_txc_tuser[5] = \<const0> ;
  assign axi_str_txc_tuser[4] = \<const0> ;
  assign axi_str_txc_tuser[3] = \<const0> ;
  assign axi_str_txc_tuser[2] = \<const0> ;
  assign axi_str_txc_tuser[1] = \<const0> ;
  assign axi_str_txc_tuser[0] = \<const0> ;
  assign axi_str_txc_tvalid = \<const0> ;
  assign axi_str_txd_tdata[127] = \<const0> ;
  assign axi_str_txd_tdata[126] = \<const0> ;
  assign axi_str_txd_tdata[125] = \<const0> ;
  assign axi_str_txd_tdata[124] = \<const0> ;
  assign axi_str_txd_tdata[123] = \<const0> ;
  assign axi_str_txd_tdata[122] = \<const0> ;
  assign axi_str_txd_tdata[121] = \<const0> ;
  assign axi_str_txd_tdata[120] = \<const0> ;
  assign axi_str_txd_tdata[119] = \<const0> ;
  assign axi_str_txd_tdata[118] = \<const0> ;
  assign axi_str_txd_tdata[117] = \<const0> ;
  assign axi_str_txd_tdata[116] = \<const0> ;
  assign axi_str_txd_tdata[115] = \<const0> ;
  assign axi_str_txd_tdata[114] = \<const0> ;
  assign axi_str_txd_tdata[113] = \<const0> ;
  assign axi_str_txd_tdata[112] = \<const0> ;
  assign axi_str_txd_tdata[111] = \<const0> ;
  assign axi_str_txd_tdata[110] = \<const0> ;
  assign axi_str_txd_tdata[109] = \<const0> ;
  assign axi_str_txd_tdata[108] = \<const0> ;
  assign axi_str_txd_tdata[107] = \<const0> ;
  assign axi_str_txd_tdata[106] = \<const0> ;
  assign axi_str_txd_tdata[105] = \<const0> ;
  assign axi_str_txd_tdata[104] = \<const0> ;
  assign axi_str_txd_tdata[103] = \<const0> ;
  assign axi_str_txd_tdata[102] = \<const0> ;
  assign axi_str_txd_tdata[101] = \<const0> ;
  assign axi_str_txd_tdata[100] = \<const0> ;
  assign axi_str_txd_tdata[99] = \<const0> ;
  assign axi_str_txd_tdata[98] = \<const0> ;
  assign axi_str_txd_tdata[97] = \<const0> ;
  assign axi_str_txd_tdata[96] = \<const0> ;
  assign axi_str_txd_tdata[95] = \<const0> ;
  assign axi_str_txd_tdata[94] = \<const0> ;
  assign axi_str_txd_tdata[93] = \<const0> ;
  assign axi_str_txd_tdata[92] = \<const0> ;
  assign axi_str_txd_tdata[91] = \<const0> ;
  assign axi_str_txd_tdata[90] = \<const0> ;
  assign axi_str_txd_tdata[89] = \<const0> ;
  assign axi_str_txd_tdata[88] = \<const0> ;
  assign axi_str_txd_tdata[87] = \<const0> ;
  assign axi_str_txd_tdata[86] = \<const0> ;
  assign axi_str_txd_tdata[85] = \<const0> ;
  assign axi_str_txd_tdata[84] = \<const0> ;
  assign axi_str_txd_tdata[83] = \<const0> ;
  assign axi_str_txd_tdata[82] = \<const0> ;
  assign axi_str_txd_tdata[81] = \<const0> ;
  assign axi_str_txd_tdata[80] = \<const0> ;
  assign axi_str_txd_tdata[79] = \<const0> ;
  assign axi_str_txd_tdata[78] = \<const0> ;
  assign axi_str_txd_tdata[77] = \<const0> ;
  assign axi_str_txd_tdata[76] = \<const0> ;
  assign axi_str_txd_tdata[75] = \<const0> ;
  assign axi_str_txd_tdata[74] = \<const0> ;
  assign axi_str_txd_tdata[73] = \<const0> ;
  assign axi_str_txd_tdata[72] = \<const0> ;
  assign axi_str_txd_tdata[71] = \<const0> ;
  assign axi_str_txd_tdata[70] = \<const0> ;
  assign axi_str_txd_tdata[69] = \<const0> ;
  assign axi_str_txd_tdata[68] = \<const0> ;
  assign axi_str_txd_tdata[67] = \<const0> ;
  assign axi_str_txd_tdata[66] = \<const0> ;
  assign axi_str_txd_tdata[65] = \<const0> ;
  assign axi_str_txd_tdata[64] = \<const0> ;
  assign axi_str_txd_tdata[63] = \<const0> ;
  assign axi_str_txd_tdata[62] = \<const0> ;
  assign axi_str_txd_tdata[61] = \<const0> ;
  assign axi_str_txd_tdata[60] = \<const0> ;
  assign axi_str_txd_tdata[59] = \<const0> ;
  assign axi_str_txd_tdata[58] = \<const0> ;
  assign axi_str_txd_tdata[57] = \<const0> ;
  assign axi_str_txd_tdata[56] = \<const0> ;
  assign axi_str_txd_tdata[55] = \<const0> ;
  assign axi_str_txd_tdata[54] = \<const0> ;
  assign axi_str_txd_tdata[53] = \<const0> ;
  assign axi_str_txd_tdata[52] = \<const0> ;
  assign axi_str_txd_tdata[51] = \<const0> ;
  assign axi_str_txd_tdata[50] = \<const0> ;
  assign axi_str_txd_tdata[49] = \<const0> ;
  assign axi_str_txd_tdata[48] = \<const0> ;
  assign axi_str_txd_tdata[47] = \<const0> ;
  assign axi_str_txd_tdata[46] = \<const0> ;
  assign axi_str_txd_tdata[45] = \<const0> ;
  assign axi_str_txd_tdata[44] = \<const0> ;
  assign axi_str_txd_tdata[43] = \<const0> ;
  assign axi_str_txd_tdata[42] = \<const0> ;
  assign axi_str_txd_tdata[41] = \<const0> ;
  assign axi_str_txd_tdata[40] = \<const0> ;
  assign axi_str_txd_tdata[39] = \<const0> ;
  assign axi_str_txd_tdata[38] = \<const0> ;
  assign axi_str_txd_tdata[37] = \<const0> ;
  assign axi_str_txd_tdata[36] = \<const0> ;
  assign axi_str_txd_tdata[35] = \<const0> ;
  assign axi_str_txd_tdata[34] = \<const0> ;
  assign axi_str_txd_tdata[33] = \<const0> ;
  assign axi_str_txd_tdata[32] = \<const0> ;
  assign axi_str_txd_tdata[31] = \<const0> ;
  assign axi_str_txd_tdata[30] = \<const0> ;
  assign axi_str_txd_tdata[29] = \<const0> ;
  assign axi_str_txd_tdata[28] = \<const0> ;
  assign axi_str_txd_tdata[27] = \<const0> ;
  assign axi_str_txd_tdata[26] = \<const0> ;
  assign axi_str_txd_tdata[25] = \<const0> ;
  assign axi_str_txd_tdata[24] = \<const0> ;
  assign axi_str_txd_tdata[23] = \<const0> ;
  assign axi_str_txd_tdata[22] = \<const0> ;
  assign axi_str_txd_tdata[21] = \<const0> ;
  assign axi_str_txd_tdata[20] = \<const0> ;
  assign axi_str_txd_tdata[19] = \<const0> ;
  assign axi_str_txd_tdata[18] = \<const0> ;
  assign axi_str_txd_tdata[17] = \<const0> ;
  assign axi_str_txd_tdata[16] = \<const0> ;
  assign axi_str_txd_tdata[15] = \<const0> ;
  assign axi_str_txd_tdata[14] = \<const0> ;
  assign axi_str_txd_tdata[13] = \<const0> ;
  assign axi_str_txd_tdata[12] = \<const0> ;
  assign axi_str_txd_tdata[11] = \<const0> ;
  assign axi_str_txd_tdata[10] = \<const0> ;
  assign axi_str_txd_tdata[9] = \<const0> ;
  assign axi_str_txd_tdata[8] = \<const0> ;
  assign axi_str_txd_tdata[7] = \<const0> ;
  assign axi_str_txd_tdata[6] = \<const0> ;
  assign axi_str_txd_tdata[5] = \<const0> ;
  assign axi_str_txd_tdata[4] = \<const0> ;
  assign axi_str_txd_tdata[3] = \<const0> ;
  assign axi_str_txd_tdata[2] = \<const0> ;
  assign axi_str_txd_tdata[1] = \<const0> ;
  assign axi_str_txd_tdata[0] = \<const0> ;
  assign axi_str_txd_tdest[3] = \<const0> ;
  assign axi_str_txd_tdest[2] = \<const0> ;
  assign axi_str_txd_tdest[1] = \<const0> ;
  assign axi_str_txd_tdest[0] = \<const0> ;
  assign axi_str_txd_tid[0] = \<const0> ;
  assign axi_str_txd_tkeep[15] = \<const1> ;
  assign axi_str_txd_tkeep[14] = \<const1> ;
  assign axi_str_txd_tkeep[13] = \<const1> ;
  assign axi_str_txd_tkeep[12] = \<const1> ;
  assign axi_str_txd_tkeep[11] = \<const1> ;
  assign axi_str_txd_tkeep[10] = \<const1> ;
  assign axi_str_txd_tkeep[9] = \<const1> ;
  assign axi_str_txd_tkeep[8] = \<const1> ;
  assign axi_str_txd_tkeep[7] = \<const1> ;
  assign axi_str_txd_tkeep[6] = \<const1> ;
  assign axi_str_txd_tkeep[5] = \<const1> ;
  assign axi_str_txd_tkeep[4] = \<const1> ;
  assign axi_str_txd_tkeep[3] = \<const1> ;
  assign axi_str_txd_tkeep[2] = \<const1> ;
  assign axi_str_txd_tkeep[1] = \<const1> ;
  assign axi_str_txd_tkeep[0] = \<const1> ;
  assign axi_str_txd_tlast = \<const0> ;
  assign axi_str_txd_tstrb[15] = \<const0> ;
  assign axi_str_txd_tstrb[14] = \<const0> ;
  assign axi_str_txd_tstrb[13] = \<const0> ;
  assign axi_str_txd_tstrb[12] = \<const0> ;
  assign axi_str_txd_tstrb[11] = \<const0> ;
  assign axi_str_txd_tstrb[10] = \<const0> ;
  assign axi_str_txd_tstrb[9] = \<const0> ;
  assign axi_str_txd_tstrb[8] = \<const0> ;
  assign axi_str_txd_tstrb[7] = \<const0> ;
  assign axi_str_txd_tstrb[6] = \<const0> ;
  assign axi_str_txd_tstrb[5] = \<const0> ;
  assign axi_str_txd_tstrb[4] = \<const0> ;
  assign axi_str_txd_tstrb[3] = \<const0> ;
  assign axi_str_txd_tstrb[2] = \<const0> ;
  assign axi_str_txd_tstrb[1] = \<const0> ;
  assign axi_str_txd_tstrb[0] = \<const0> ;
  assign axi_str_txd_tuser[15] = \<const0> ;
  assign axi_str_txd_tuser[14] = \<const0> ;
  assign axi_str_txd_tuser[13] = \<const0> ;
  assign axi_str_txd_tuser[12] = \<const0> ;
  assign axi_str_txd_tuser[11] = \<const0> ;
  assign axi_str_txd_tuser[10] = \<const0> ;
  assign axi_str_txd_tuser[9] = \<const0> ;
  assign axi_str_txd_tuser[8] = \<const0> ;
  assign axi_str_txd_tuser[7] = \<const0> ;
  assign axi_str_txd_tuser[6] = \<const0> ;
  assign axi_str_txd_tuser[5] = \<const0> ;
  assign axi_str_txd_tuser[4] = \<const0> ;
  assign axi_str_txd_tuser[3] = \<const0> ;
  assign axi_str_txd_tuser[2] = \<const0> ;
  assign axi_str_txd_tuser[1] = \<const0> ;
  assign axi_str_txd_tuser[0] = \<const0> ;
  assign axi_str_txd_tvalid = \<const0> ;
  assign mm2s_cntrl_reset_out_n = \<const1> ;
  assign s_axi4_bresp[1] = \<const0> ;
  assign s_axi4_bresp[0] = \<const0> ;
  assign s_axi4_rresp[1] = \<const0> ;
  assign s_axi4_rresp[0] = \<const0> ;
  assign s_axi_awready = s_axi_wready;
  assign s_axi_bresp[1] = \<const0> ;
  assign s_axi_bresp[0] = \<const0> ;
  assign s_axi_rresp[1] = \<const0> ;
  assign s_axi_rresp[0] = \<const0> ;
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ipic2axi_s COMP_IPIC2AXI_S
       (.AS(s_aresetn_a_c),
        .Bus_RNW_reg_reg(COMP_IPIF_n_7),
        .Bus_RNW_reg_reg_0(COMP_IPIF_n_60),
        .Bus_RNW_reg_reg_1(COMP_IPIF_n_45),
        .Bus_RNW_reg_reg_2({\sig_register_array[1]_0 [0],\sig_register_array[1]_0 [1],\sig_register_array[1]_0 [2],\sig_register_array[1]_0 [3],\sig_register_array[1]_0 [4],\sig_register_array[1]_0 [5],\sig_register_array[1]_0 [6],\sig_register_array[1]_0 [7],\sig_register_array[1]_0 [8],\sig_register_array[1]_0 [9],\sig_register_array[1]_0 [10],\sig_register_array[1]_0 [11],\sig_register_array[1]_0 [12]}),
        .D({sig_ip2bus_data_1[0],sig_ip2bus_data_1[2],sig_ip2bus_data_1[5],sig_ip2bus_data_1[7],sig_ip2bus_data_1[8],sig_ip2bus_data_1[9],sig_ip2bus_data_1[10],sig_ip2bus_data_1[11],sig_ip2bus_data_1[12],sig_ip2bus_data_1[19],sig_ip2bus_data_1[20],sig_ip2bus_data_1[21],sig_ip2bus_data_1[22],sig_ip2bus_data_1[23],sig_ip2bus_data_1[24],sig_ip2bus_data_1[25],sig_ip2bus_data_1[26],sig_ip2bus_data_1[27]}),
        .E(COMP_IPIF_n_38),
        .\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0] (COMP_IPIF_n_66),
        .\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0 (COMP_IPIF_n_4),
        .\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_1 (COMP_IPIF_n_43),
        .\GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg[10] (COMP_IPIF_n_5),
        .\GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg[10]_0 (COMP_IPIF_n_46),
        .\GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg[10]_1 (COMP_IPIF_n_36),
        .\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1] (COMP_IPIF_n_35),
        .\GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3] (COMP_IPIF_n_62),
        .\GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3]_0 (COMP_IPIF_n_63),
        .\GEN_BKEND_CE_REGISTERS[4].ce_out_i_reg[4] (COMP_IPIF_n_69),
        .\GEN_BKEND_CE_REGISTERS[4].ce_out_i_reg[4]_0 (COMP_IPIF_n_28),
        .\GEN_BKEND_CE_REGISTERS[4].ce_out_i_reg[4]_1 (COMP_IPIF_n_39),
        .\GEN_BKEND_CE_REGISTERS[6].ce_out_i_reg[6] (COMP_IPIF_n_29),
        .\GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg[7] (COMP_IPIF_n_64),
        .\GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9] (COMP_IPIF_n_26),
        .\GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9]_0 (COMP_IPIF_n_30),
        .IPIC_STATE(IPIC_STATE),
        .IPIC_STATE_reg_0(COMP_IPIF_n_31),
        .\MEM_DECODE_GEN[0].cs_out_i_reg[0] (COMP_IPIF_n_6),
        .Q({p_6_out[12:4],p_6_out[1:0]}),
        .SR(COMP_IPIF_n_37),
        .axi4_fifo_rd_en_i(axi4_fifo_rd_en_i),
        .axi_str_rxd_tdata(axi_str_rxd_tdata),
        .axi_str_rxd_tlast(axi_str_rxd_tlast),
        .axi_str_rxd_tready(axi_str_rxd_tready),
        .axi_str_rxd_tvalid(axi_str_rxd_tvalid),
        .axis_rd_en__0(\grxd.COMP_RX_FIFO/gfifo_gen.COMP_AXIS_FG_FIFO/COMP_FIFO/inst_fifo_gen/axis_rd_en__0 ),
        .bus2ip_rnw_i_reg(COMP_IPIF_n_40),
        .bus2ip_rnw_i_reg_0(COMP_IPIF_n_44),
        .cs_ce_clr(\I_SLAVE_ATTACHMENT/I_DECODER/cs_ce_clr ),
        .empty_fwft_i(empty_fwft_i),
        .empty_fwft_i_reg(COMP_IPIF_n_27),
        .eqOp__6(eqOp__6),
        .\gc0.count_reg[0] (COMP_IPIC2AXI_S_n_33),
        .\gc0.count_reg[0]_0 (COMP_IPIC2AXI_S_n_34),
        .\gpes.prog_empty_i_reg (COMP_IPIF_n_41),
        .\gpfs.prog_full_i_reg (COMP_IPIF_n_42),
        .\grid.ar_id_r_reg[0] (COMP_IPIC2AXI_S_n_32),
        .interrupt(interrupt),
        .mm2s_prmry_reset_out_n(mm2s_prmry_reset_out_n),
        .out(p_3_out),
        .p_8_out(p_8_out),
        .prog_full_i(prog_full_i),
        .rst_d1_reg(COMP_IPIC2AXI_S_n_9),
        .s2mm_prmry_reset_out_n(s2mm_prmry_reset_out_n),
        .s_axi4_araddr({s_axi4_araddr[31:26],s_axi4_araddr[17:10],s_axi4_araddr[5:2]}),
        .\s_axi4_araddr[18] (\gaxif.COMP_AXI4_n_12 ),
        .\s_axi4_araddr[22] (\gaxif.COMP_AXI4_n_11 ),
        .s_axi4_rdata(s_axi4_rdata),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_aresetn(s_axi_aresetn),
        .s_axi_arready(s_axi_arready),
        .\s_axi_rdata_i_reg[31] ({sig_ip2bus_data[0],sig_ip2bus_data[1],sig_ip2bus_data[2],sig_ip2bus_data[3],sig_ip2bus_data[4],sig_ip2bus_data[5],sig_ip2bus_data[6],sig_ip2bus_data[7],sig_ip2bus_data[8],sig_ip2bus_data[9],sig_ip2bus_data[10],sig_ip2bus_data[11],sig_ip2bus_data[12],sig_ip2bus_data[13],sig_ip2bus_data[14],sig_ip2bus_data[15],sig_ip2bus_data[16],sig_ip2bus_data[17],sig_ip2bus_data[18],sig_ip2bus_data[19],sig_ip2bus_data[20],sig_ip2bus_data[21],sig_ip2bus_data[22],sig_ip2bus_data[23],sig_ip2bus_data[24],sig_ip2bus_data[25],sig_ip2bus_data[26],sig_ip2bus_data[27],sig_ip2bus_data[28],sig_ip2bus_data[29],sig_ip2bus_data[30],sig_ip2bus_data[31]}),
        .s_axi_wdata({s_axi_wdata[26],s_axi_wdata[20:19],s_axi_wdata[7:0]}),
        .s_axi_wready(s_axi_wready),
        .sig_Bus2IP_CS(sig_Bus2IP_CS),
        .sig_Bus2IP_RdCE(sig_Bus2IP_RdCE),
        .sig_Bus2IP_WrCE({sig_Bus2IP_WrCE[0],sig_Bus2IP_WrCE[3],sig_Bus2IP_WrCE[10]}),
        .\sig_ip2bus_data_reg[0]_0 ({COMP_IPIC2AXI_S_n_42,COMP_IPIC2AXI_S_n_43,COMP_IPIC2AXI_S_n_44,COMP_IPIC2AXI_S_n_45,COMP_IPIC2AXI_S_n_46,COMP_IPIC2AXI_S_n_47,COMP_IPIC2AXI_S_n_48,COMP_IPIC2AXI_S_n_49,COMP_IPIC2AXI_S_n_50}),
        .\sig_ip2bus_data_reg[12]_0 (COMP_IPIC2AXI_S_n_30),
        .\sig_ip2bus_data_reg[19]_0 (COMP_IPIC2AXI_S_n_29),
        .\sig_ip2bus_data_reg[1]_0 (COMP_IPIC2AXI_S_n_31),
        .\sig_ip2bus_data_reg[20]_0 (COMP_IPIC2AXI_S_n_28),
        .\sig_ip2bus_data_reg[21]_0 (COMP_IPIC2AXI_S_n_27),
        .\sig_ip2bus_data_reg[22]_0 (COMP_IPIC2AXI_S_n_26),
        .\sig_ip2bus_data_reg[23]_0 (COMP_IPIC2AXI_S_n_25),
        .\sig_ip2bus_data_reg[24]_0 (COMP_IPIC2AXI_S_n_24),
        .\sig_ip2bus_data_reg[25]_0 (COMP_IPIC2AXI_S_n_12),
        .\sig_ip2bus_data_reg[9]_0 ({COMP_IPIC2AXI_S_n_185,COMP_IPIC2AXI_S_n_186,COMP_IPIC2AXI_S_n_187,COMP_IPIC2AXI_S_n_188,COMP_IPIC2AXI_S_n_189,COMP_IPIC2AXI_S_n_190,COMP_IPIC2AXI_S_n_191,COMP_IPIC2AXI_S_n_192,COMP_IPIC2AXI_S_n_193,COMP_IPIC2AXI_S_n_194,COMP_IPIC2AXI_S_n_195,COMP_IPIC2AXI_S_n_196}),
        .sig_rd_rlen(sig_rd_rlen),
        .\sig_register_array[0]0_out (\sig_register_array[0]0_out ),
        .\sig_register_array[0]12_out (\sig_register_array[0]12_out ),
        .\sig_register_array[0]1_in (\sig_register_array[0]1_in ),
        .\sig_register_array_reg[0][11]_0 (COMP_IPIC2AXI_S_n_52),
        .\sig_register_array_reg[0][12]_0 (COMP_IPIC2AXI_S_n_51),
        .\sig_register_array_reg[0][2]_0 (COMP_IPIC2AXI_S_n_40),
        .\sig_register_array_reg[0][2]_1 (COMP_IPIC2AXI_S_n_54),
        .\sig_register_array_reg[0][5]_0 (COMP_IPIC2AXI_S_n_53),
        .\sig_register_array_reg[0][7]_0 (COMP_IPIC2AXI_S_n_56),
        .\sig_register_array_reg[0][8]_0 (COMP_IPIC2AXI_S_n_55),
        .sig_rx_channel_reset_reg_0(COMP_IPIF_n_68),
        .sig_rx_channel_reset_reg_1(COMP_IPIF_n_65),
        .sig_rxd_prog_empty_d1(sig_rxd_prog_empty_d1),
        .sig_rxd_reset(sig_rxd_reset),
        .sig_str_rst_reg_0(COMP_IPIC2AXI_S_n_37));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_lite_ipif COMP_IPIF
       (.AS(s_aresetn_a_c),
        .D({sig_ip2bus_data_1[0],sig_ip2bus_data_1[2],sig_ip2bus_data_1[5],sig_ip2bus_data_1[7],sig_ip2bus_data_1[8],sig_ip2bus_data_1[9],sig_ip2bus_data_1[10],sig_ip2bus_data_1[11],sig_ip2bus_data_1[12],sig_ip2bus_data_1[19],sig_ip2bus_data_1[20],sig_ip2bus_data_1[21],sig_ip2bus_data_1[22],sig_ip2bus_data_1[23],sig_ip2bus_data_1[24],sig_ip2bus_data_1[25],sig_ip2bus_data_1[26],sig_ip2bus_data_1[27]}),
        .E(COMP_IPIF_n_38),
        .IP2Bus_RdAck_reg(COMP_IPIF_n_40),
        .IP2Bus_RdAck_reg_0(s_axi_arready),
        .IP2Bus_WrAck_reg(COMP_IPIF_n_44),
        .IP2Bus_WrAck_reg_0(s_axi_wready),
        .IPIC_STATE(IPIC_STATE),
        .IPIC_STATE_reg(COMP_IPIC2AXI_S_n_37),
        .Q({p_6_out[12:4],p_6_out[1:0]}),
        .SR(COMP_IPIF_n_37),
        .axi4_fifo_rd_en_i(axi4_fifo_rd_en_i),
        .\count_reg[12] (COMP_IPIC2AXI_S_n_30),
        .cs_ce_clr(\I_SLAVE_ATTACHMENT/I_DECODER/cs_ce_clr ),
        .empty_fwft_i_reg(COMP_IPIC2AXI_S_n_24),
        .empty_fwft_i_reg_0(COMP_IPIC2AXI_S_n_25),
        .empty_fwft_i_reg_1(COMP_IPIC2AXI_S_n_26),
        .empty_fwft_i_reg_2(COMP_IPIC2AXI_S_n_27),
        .empty_fwft_i_reg_3(COMP_IPIC2AXI_S_n_28),
        .empty_fwft_i_reg_4(COMP_IPIC2AXI_S_n_29),
        .empty_fwft_i_reg_5(COMP_IPIC2AXI_S_n_31),
        .eqOp__6(eqOp__6),
        .\goreg_dm.dout_i_reg[22] ({COMP_IPIC2AXI_S_n_185,COMP_IPIC2AXI_S_n_186,COMP_IPIC2AXI_S_n_187,COMP_IPIC2AXI_S_n_188,COMP_IPIC2AXI_S_n_189,COMP_IPIC2AXI_S_n_190,COMP_IPIC2AXI_S_n_191,COMP_IPIC2AXI_S_n_192,COMP_IPIC2AXI_S_n_193,COMP_IPIC2AXI_S_n_194,COMP_IPIC2AXI_S_n_195,COMP_IPIC2AXI_S_n_196}),
        .\goreg_dm.dout_i_reg[6] (COMP_IPIC2AXI_S_n_12),
        .out(p_3_out),
        .p_8_out(p_8_out),
        .prog_full_i(prog_full_i),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_araddr(s_axi_araddr[5:2]),
        .s_axi_aresetn(s_axi_aresetn),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_awaddr(s_axi_awaddr[5:2]),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_bready(s_axi_bready),
        .s_axi_bvalid(s_axi_bvalid),
        .s_axi_rdata(s_axi_rdata),
        .s_axi_rready(s_axi_rready),
        .s_axi_rvalid(s_axi_rvalid),
        .s_axi_wdata(s_axi_wdata[31:19]),
        .s_axi_wvalid(s_axi_wvalid),
        .sig_Bus2IP_CS(sig_Bus2IP_CS),
        .sig_Bus2IP_RdCE(sig_Bus2IP_RdCE),
        .\sig_ip2bus_data_reg[0] (COMP_IPIF_n_65),
        .\sig_ip2bus_data_reg[0]_0 ({sig_ip2bus_data[0],sig_ip2bus_data[1],sig_ip2bus_data[2],sig_ip2bus_data[3],sig_ip2bus_data[4],sig_ip2bus_data[5],sig_ip2bus_data[6],sig_ip2bus_data[7],sig_ip2bus_data[8],sig_ip2bus_data[9],sig_ip2bus_data[10],sig_ip2bus_data[11],sig_ip2bus_data[12],sig_ip2bus_data[13],sig_ip2bus_data[14],sig_ip2bus_data[15],sig_ip2bus_data[16],sig_ip2bus_data[17],sig_ip2bus_data[18],sig_ip2bus_data[19],sig_ip2bus_data[20],sig_ip2bus_data[21],sig_ip2bus_data[22],sig_ip2bus_data[23],sig_ip2bus_data[24],sig_ip2bus_data[25],sig_ip2bus_data[26],sig_ip2bus_data[27],sig_ip2bus_data[28],sig_ip2bus_data[29],sig_ip2bus_data[30],sig_ip2bus_data[31]}),
        .\sig_ip2bus_data_reg[10] (COMP_IPIF_n_30),
        .\sig_ip2bus_data_reg[12] (COMP_IPIF_n_29),
        .\sig_ip2bus_data_reg[14] (COMP_IPIF_n_63),
        .\sig_ip2bus_data_reg[14]_0 (COMP_IPIF_n_64),
        .\sig_ip2bus_data_reg[14]_1 (COMP_IPIF_n_66),
        .\sig_ip2bus_data_reg[25] (COMP_IPIF_n_26),
        .\sig_ip2bus_data_reg[25]_0 (COMP_IPIF_n_27),
        .\sig_ip2bus_data_reg[25]_1 (COMP_IPIF_n_28),
        .sig_rd_rlen(sig_rd_rlen),
        .sig_rd_rlen_reg(COMP_IPIF_n_62),
        .\sig_register_array[0]0_out (\sig_register_array[0]0_out ),
        .\sig_register_array[0]1_in (\sig_register_array[0]1_in ),
        .\sig_register_array_reg[0][11] (COMP_IPIF_n_42),
        .\sig_register_array_reg[0][11]_0 (COMP_IPIC2AXI_S_n_52),
        .\sig_register_array_reg[0][12] (COMP_IPIF_n_41),
        .\sig_register_array_reg[0][12]_0 (COMP_IPIC2AXI_S_n_51),
        .\sig_register_array_reg[0][2] (COMP_IPIF_n_6),
        .\sig_register_array_reg[0][2]_0 (COMP_IPIF_n_60),
        .\sig_register_array_reg[0][2]_1 (COMP_IPIC2AXI_S_n_54),
        .\sig_register_array_reg[0][5] (COMP_IPIF_n_4),
        .\sig_register_array_reg[0][5]_0 (COMP_IPIF_n_5),
        .\sig_register_array_reg[0][5]_1 (COMP_IPIC2AXI_S_n_53),
        .\sig_register_array_reg[0][7] ({sig_Bus2IP_WrCE[0],sig_Bus2IP_WrCE[3],sig_Bus2IP_WrCE[10]}),
        .\sig_register_array_reg[0][7]_0 (COMP_IPIF_n_35),
        .\sig_register_array_reg[0][7]_1 (COMP_IPIF_n_43),
        .\sig_register_array_reg[0][7]_2 (COMP_IPIC2AXI_S_n_56),
        .\sig_register_array_reg[0][8] (COMP_IPIF_n_31),
        .\sig_register_array_reg[0][8]_0 (COMP_IPIF_n_36),
        .\sig_register_array_reg[0][8]_1 (COMP_IPIF_n_45),
        .\sig_register_array_reg[0][8]_2 (COMP_IPIF_n_46),
        .\sig_register_array_reg[0][8]_3 (COMP_IPIC2AXI_S_n_55),
        .\sig_register_array_reg[1][0] (COMP_IPIF_n_39),
        .\sig_register_array_reg[1][0]_0 ({\sig_register_array[1]_0 [0],\sig_register_array[1]_0 [1],\sig_register_array[1]_0 [2],\sig_register_array[1]_0 [3],\sig_register_array[1]_0 [4],\sig_register_array[1]_0 [5],\sig_register_array[1]_0 [6],\sig_register_array[1]_0 [7],\sig_register_array[1]_0 [8],\sig_register_array[1]_0 [9],\sig_register_array[1]_0 [10],\sig_register_array[1]_0 [11],\sig_register_array[1]_0 [12]}),
        .\sig_register_array_reg[1][0]_1 ({COMP_IPIC2AXI_S_n_42,COMP_IPIC2AXI_S_n_43,COMP_IPIC2AXI_S_n_44,COMP_IPIC2AXI_S_n_45,COMP_IPIC2AXI_S_n_46,COMP_IPIC2AXI_S_n_47,COMP_IPIC2AXI_S_n_48,COMP_IPIC2AXI_S_n_49,COMP_IPIC2AXI_S_n_50}),
        .sig_rx_channel_reset_reg(COMP_IPIF_n_68),
        .sig_rx_channel_reset_reg_0(COMP_IPIC2AXI_S_n_9),
        .sig_rxd_prog_empty_d1(sig_rxd_prog_empty_d1),
        .sig_rxd_reset(sig_rxd_reset),
        .sig_str_rst_reg(COMP_IPIF_n_7),
        .sig_str_rst_reg_0(COMP_IPIF_n_69));
  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_wrapper \gaxif.COMP_AXI4 
       (.AS(s_aresetn_a_c),
        .axi4_fifo_rd_en_i(axi4_fifo_rd_en_i),
        .axis_rd_en__0(\grxd.COMP_RX_FIFO/gfifo_gen.COMP_AXIS_FG_FIFO/COMP_FIFO/inst_fifo_gen/axis_rd_en__0 ),
        .\bvalid_count_r_reg[0] (s_axi4_bvalid),
        .\count_reg[1] (COMP_IPIC2AXI_S_n_40),
        .empty_fwft_i(empty_fwft_i),
        .\grid.ar_id_r_reg[0] (\gaxif.COMP_AXI4_n_11 ),
        .\grid.ar_id_r_reg[0]_0 (\gaxif.COMP_AXI4_n_12 ),
        .s_axi4_araddr({s_axi4_araddr[29:14],s_axi4_araddr[9:0]}),
        .\s_axi4_araddr[26] (COMP_IPIC2AXI_S_n_34),
        .\s_axi4_araddr[31] (COMP_IPIC2AXI_S_n_32),
        .\s_axi4_araddr_2__s_port_] (COMP_IPIC2AXI_S_n_33),
        .s_axi4_arid(s_axi4_arid),
        .s_axi4_arlen(s_axi4_arlen),
        .s_axi4_arready(s_axi4_arready),
        .s_axi4_arvalid(s_axi4_arvalid),
        .s_axi4_awaddr(s_axi4_awaddr),
        .s_axi4_awlen(s_axi4_awlen),
        .s_axi4_awready(s_axi4_awready),
        .s_axi4_awvalid(s_axi4_awvalid),
        .s_axi4_bid(s_axi4_bid),
        .s_axi4_bready(s_axi4_bready),
        .s_axi4_rid(s_axi4_rid),
        .s_axi4_rlast(s_axi4_rlast),
        .s_axi4_rready(s_axi4_rready),
        .s_axi4_rvalid(s_axi4_rvalid),
        .s_axi4_wready(s_axi4_wready),
        .s_axi4_wvalid(s_axi4_wvalid),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_aresetn(s_axi_aresetn),
        .\sig_register_array[0]12_out (\sig_register_array[0]12_out ));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_lite_ipif
   (s_axi_rvalid,
    s_axi_bvalid,
    sig_Bus2IP_CS,
    \sig_register_array[0]0_out ,
    \sig_register_array_reg[0][5] ,
    \sig_register_array_reg[0][5]_0 ,
    \sig_register_array_reg[0][2] ,
    sig_str_rst_reg,
    D,
    \sig_ip2bus_data_reg[25] ,
    \sig_ip2bus_data_reg[25]_0 ,
    \sig_ip2bus_data_reg[25]_1 ,
    \sig_ip2bus_data_reg[12] ,
    \sig_ip2bus_data_reg[10] ,
    \sig_register_array_reg[0][8] ,
    \sig_register_array_reg[0][7] ,
    \sig_register_array_reg[0][7]_0 ,
    \sig_register_array_reg[0][8]_0 ,
    SR,
    E,
    \sig_register_array_reg[1][0] ,
    IP2Bus_RdAck_reg,
    \sig_register_array_reg[0][12] ,
    \sig_register_array_reg[0][11] ,
    \sig_register_array_reg[0][7]_1 ,
    IP2Bus_WrAck_reg,
    \sig_register_array_reg[0][8]_1 ,
    \sig_register_array_reg[0][8]_2 ,
    \sig_register_array_reg[1][0]_0 ,
    \sig_register_array_reg[0][2]_0 ,
    sig_rd_rlen,
    sig_rd_rlen_reg,
    \sig_ip2bus_data_reg[14] ,
    \sig_ip2bus_data_reg[14]_0 ,
    \sig_ip2bus_data_reg[0] ,
    \sig_ip2bus_data_reg[14]_1 ,
    sig_Bus2IP_RdCE,
    sig_rx_channel_reset_reg,
    sig_str_rst_reg_0,
    s_axi_rdata,
    AS,
    s_axi_aclk,
    cs_ce_clr,
    s_axi_arvalid,
    IP2Bus_RdAck_reg_0,
    IP2Bus_WrAck_reg_0,
    s_axi_awvalid,
    s_axi_wvalid,
    s_axi_araddr,
    s_axi_awaddr,
    s_axi_wdata,
    axi4_fifo_rd_en_i,
    \sig_register_array[0]1_in ,
    \goreg_dm.dout_i_reg[6] ,
    Q,
    empty_fwft_i_reg,
    \goreg_dm.dout_i_reg[22] ,
    empty_fwft_i_reg_0,
    empty_fwft_i_reg_1,
    empty_fwft_i_reg_2,
    empty_fwft_i_reg_3,
    empty_fwft_i_reg_4,
    \count_reg[12] ,
    \sig_register_array_reg[1][0]_1 ,
    \sig_register_array_reg[0][8]_3 ,
    empty_fwft_i_reg_5,
    \sig_register_array_reg[0][7]_2 ,
    \sig_register_array_reg[0][5]_1 ,
    \sig_register_array_reg[0][2]_1 ,
    IPIC_STATE,
    sig_rxd_reset,
    eqOp__6,
    s_axi_aresetn,
    IPIC_STATE_reg,
    p_8_out,
    sig_rxd_prog_empty_d1,
    prog_full_i,
    s_axi_bready,
    s_axi_rready,
    out,
    sig_rx_channel_reset_reg_0,
    \sig_register_array_reg[0][12]_0 ,
    \sig_register_array_reg[0][11]_0 ,
    \sig_ip2bus_data_reg[0]_0 );
  output s_axi_rvalid;
  output s_axi_bvalid;
  output sig_Bus2IP_CS;
  output [0:0]\sig_register_array[0]0_out ;
  output \sig_register_array_reg[0][5] ;
  output \sig_register_array_reg[0][5]_0 ;
  output \sig_register_array_reg[0][2] ;
  output sig_str_rst_reg;
  output [17:0]D;
  output \sig_ip2bus_data_reg[25] ;
  output \sig_ip2bus_data_reg[25]_0 ;
  output \sig_ip2bus_data_reg[25]_1 ;
  output \sig_ip2bus_data_reg[12] ;
  output \sig_ip2bus_data_reg[10] ;
  output \sig_register_array_reg[0][8] ;
  output [2:0]\sig_register_array_reg[0][7] ;
  output \sig_register_array_reg[0][7]_0 ;
  output \sig_register_array_reg[0][8]_0 ;
  output [0:0]SR;
  output [0:0]E;
  output \sig_register_array_reg[1][0] ;
  output IP2Bus_RdAck_reg;
  output \sig_register_array_reg[0][12] ;
  output \sig_register_array_reg[0][11] ;
  output \sig_register_array_reg[0][7]_1 ;
  output IP2Bus_WrAck_reg;
  output \sig_register_array_reg[0][8]_1 ;
  output \sig_register_array_reg[0][8]_2 ;
  output [12:0]\sig_register_array_reg[1][0]_0 ;
  output \sig_register_array_reg[0][2]_0 ;
  output sig_rd_rlen;
  output sig_rd_rlen_reg;
  output \sig_ip2bus_data_reg[14] ;
  output \sig_ip2bus_data_reg[14]_0 ;
  output \sig_ip2bus_data_reg[0] ;
  output \sig_ip2bus_data_reg[14]_1 ;
  output [0:0]sig_Bus2IP_RdCE;
  output sig_rx_channel_reset_reg;
  output sig_str_rst_reg_0;
  output [31:0]s_axi_rdata;
  input [0:0]AS;
  input s_axi_aclk;
  input cs_ce_clr;
  input s_axi_arvalid;
  input IP2Bus_RdAck_reg_0;
  input IP2Bus_WrAck_reg_0;
  input s_axi_awvalid;
  input s_axi_wvalid;
  input [3:0]s_axi_araddr;
  input [3:0]s_axi_awaddr;
  input [12:0]s_axi_wdata;
  input axi4_fifo_rd_en_i;
  input \sig_register_array[0]1_in ;
  input \goreg_dm.dout_i_reg[6] ;
  input [10:0]Q;
  input empty_fwft_i_reg;
  input [11:0]\goreg_dm.dout_i_reg[22] ;
  input empty_fwft_i_reg_0;
  input empty_fwft_i_reg_1;
  input empty_fwft_i_reg_2;
  input empty_fwft_i_reg_3;
  input empty_fwft_i_reg_4;
  input \count_reg[12] ;
  input [8:0]\sig_register_array_reg[1][0]_1 ;
  input \sig_register_array_reg[0][8]_3 ;
  input empty_fwft_i_reg_5;
  input \sig_register_array_reg[0][7]_2 ;
  input \sig_register_array_reg[0][5]_1 ;
  input \sig_register_array_reg[0][2]_1 ;
  input IPIC_STATE;
  input sig_rxd_reset;
  input eqOp__6;
  input s_axi_aresetn;
  input IPIC_STATE_reg;
  input p_8_out;
  input sig_rxd_prog_empty_d1;
  input prog_full_i;
  input s_axi_bready;
  input s_axi_rready;
  input out;
  input sig_rx_channel_reset_reg_0;
  input \sig_register_array_reg[0][12]_0 ;
  input \sig_register_array_reg[0][11]_0 ;
  input [31:0]\sig_ip2bus_data_reg[0]_0 ;

  wire [0:0]AS;
  wire [17:0]D;
  wire [0:0]E;
  wire IP2Bus_RdAck_reg;
  wire IP2Bus_RdAck_reg_0;
  wire IP2Bus_WrAck_reg;
  wire IP2Bus_WrAck_reg_0;
  wire IPIC_STATE;
  wire IPIC_STATE_reg;
  wire [10:0]Q;
  wire [0:0]SR;
  wire axi4_fifo_rd_en_i;
  wire \count_reg[12] ;
  wire cs_ce_clr;
  wire empty_fwft_i_reg;
  wire empty_fwft_i_reg_0;
  wire empty_fwft_i_reg_1;
  wire empty_fwft_i_reg_2;
  wire empty_fwft_i_reg_3;
  wire empty_fwft_i_reg_4;
  wire empty_fwft_i_reg_5;
  wire eqOp__6;
  wire [11:0]\goreg_dm.dout_i_reg[22] ;
  wire \goreg_dm.dout_i_reg[6] ;
  wire out;
  wire p_8_out;
  wire prog_full_i;
  wire s_axi_aclk;
  wire [3:0]s_axi_araddr;
  wire s_axi_aresetn;
  wire s_axi_arvalid;
  wire [3:0]s_axi_awaddr;
  wire s_axi_awvalid;
  wire s_axi_bready;
  wire s_axi_bvalid;
  wire [31:0]s_axi_rdata;
  wire s_axi_rready;
  wire s_axi_rvalid;
  wire [12:0]s_axi_wdata;
  wire s_axi_wvalid;
  wire sig_Bus2IP_CS;
  wire [0:0]sig_Bus2IP_RdCE;
  wire \sig_ip2bus_data_reg[0] ;
  wire [31:0]\sig_ip2bus_data_reg[0]_0 ;
  wire \sig_ip2bus_data_reg[10] ;
  wire \sig_ip2bus_data_reg[12] ;
  wire \sig_ip2bus_data_reg[14] ;
  wire \sig_ip2bus_data_reg[14]_0 ;
  wire \sig_ip2bus_data_reg[14]_1 ;
  wire \sig_ip2bus_data_reg[25] ;
  wire \sig_ip2bus_data_reg[25]_0 ;
  wire \sig_ip2bus_data_reg[25]_1 ;
  wire sig_rd_rlen;
  wire sig_rd_rlen_reg;
  wire [0:0]\sig_register_array[0]0_out ;
  wire \sig_register_array[0]1_in ;
  wire \sig_register_array_reg[0][11] ;
  wire \sig_register_array_reg[0][11]_0 ;
  wire \sig_register_array_reg[0][12] ;
  wire \sig_register_array_reg[0][12]_0 ;
  wire \sig_register_array_reg[0][2] ;
  wire \sig_register_array_reg[0][2]_0 ;
  wire \sig_register_array_reg[0][2]_1 ;
  wire \sig_register_array_reg[0][5] ;
  wire \sig_register_array_reg[0][5]_0 ;
  wire \sig_register_array_reg[0][5]_1 ;
  wire [2:0]\sig_register_array_reg[0][7] ;
  wire \sig_register_array_reg[0][7]_0 ;
  wire \sig_register_array_reg[0][7]_1 ;
  wire \sig_register_array_reg[0][7]_2 ;
  wire \sig_register_array_reg[0][8] ;
  wire \sig_register_array_reg[0][8]_0 ;
  wire \sig_register_array_reg[0][8]_1 ;
  wire \sig_register_array_reg[0][8]_2 ;
  wire \sig_register_array_reg[0][8]_3 ;
  wire \sig_register_array_reg[1][0] ;
  wire [12:0]\sig_register_array_reg[1][0]_0 ;
  wire [8:0]\sig_register_array_reg[1][0]_1 ;
  wire sig_rx_channel_reset_reg;
  wire sig_rx_channel_reset_reg_0;
  wire sig_rxd_prog_empty_d1;
  wire sig_rxd_reset;
  wire sig_str_rst_reg;
  wire sig_str_rst_reg_0;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_slave_attachment I_SLAVE_ATTACHMENT
       (.AS(AS),
        .D(D),
        .E(E),
        .IP2Bus_RdAck_reg(IP2Bus_RdAck_reg),
        .IP2Bus_RdAck_reg_0(IP2Bus_RdAck_reg_0),
        .IP2Bus_WrAck_reg(IP2Bus_WrAck_reg),
        .IP2Bus_WrAck_reg_0(IP2Bus_WrAck_reg_0),
        .IPIC_STATE(IPIC_STATE),
        .IPIC_STATE_reg(sig_Bus2IP_CS),
        .IPIC_STATE_reg_0(IPIC_STATE_reg),
        .Q(Q),
        .SR(SR),
        .axi4_fifo_rd_en_i(axi4_fifo_rd_en_i),
        .\count_reg[12] (\count_reg[12] ),
        .cs_ce_clr(cs_ce_clr),
        .empty_fwft_i_reg(empty_fwft_i_reg),
        .empty_fwft_i_reg_0(empty_fwft_i_reg_0),
        .empty_fwft_i_reg_1(empty_fwft_i_reg_1),
        .empty_fwft_i_reg_2(empty_fwft_i_reg_2),
        .empty_fwft_i_reg_3(empty_fwft_i_reg_3),
        .empty_fwft_i_reg_4(empty_fwft_i_reg_4),
        .empty_fwft_i_reg_5(empty_fwft_i_reg_5),
        .eqOp__6(eqOp__6),
        .\goreg_dm.dout_i_reg[22] (\goreg_dm.dout_i_reg[22] ),
        .\goreg_dm.dout_i_reg[6] (\goreg_dm.dout_i_reg[6] ),
        .out(out),
        .p_8_out(p_8_out),
        .prog_full_i(prog_full_i),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_araddr(s_axi_araddr),
        .s_axi_aresetn(s_axi_aresetn),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_awaddr(s_axi_awaddr),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_bready(s_axi_bready),
        .s_axi_bvalid(s_axi_bvalid),
        .s_axi_rdata(s_axi_rdata),
        .s_axi_rready(s_axi_rready),
        .s_axi_rvalid(s_axi_rvalid),
        .s_axi_wdata(s_axi_wdata),
        .s_axi_wvalid(s_axi_wvalid),
        .sig_Bus2IP_RdCE(sig_Bus2IP_RdCE),
        .\sig_ip2bus_data_reg[0] (\sig_ip2bus_data_reg[0] ),
        .\sig_ip2bus_data_reg[0]_0 (\sig_ip2bus_data_reg[0]_0 ),
        .\sig_ip2bus_data_reg[10] (\sig_ip2bus_data_reg[10] ),
        .\sig_ip2bus_data_reg[12] (\sig_ip2bus_data_reg[12] ),
        .\sig_ip2bus_data_reg[14] (\sig_ip2bus_data_reg[14] ),
        .\sig_ip2bus_data_reg[14]_0 (\sig_ip2bus_data_reg[14]_0 ),
        .\sig_ip2bus_data_reg[14]_1 (\sig_ip2bus_data_reg[14]_1 ),
        .\sig_ip2bus_data_reg[25] (\sig_ip2bus_data_reg[25] ),
        .\sig_ip2bus_data_reg[25]_0 (\sig_ip2bus_data_reg[25]_0 ),
        .\sig_ip2bus_data_reg[25]_1 (\sig_ip2bus_data_reg[25]_1 ),
        .sig_rd_rlen(sig_rd_rlen),
        .sig_rd_rlen_reg(sig_rd_rlen_reg),
        .\sig_register_array[0]0_out (\sig_register_array[0]0_out ),
        .\sig_register_array[0]1_in (\sig_register_array[0]1_in ),
        .\sig_register_array_reg[0][11] (\sig_register_array_reg[0][11] ),
        .\sig_register_array_reg[0][11]_0 (\sig_register_array_reg[0][11]_0 ),
        .\sig_register_array_reg[0][12] (\sig_register_array_reg[0][12] ),
        .\sig_register_array_reg[0][12]_0 (\sig_register_array_reg[0][12]_0 ),
        .\sig_register_array_reg[0][2] (\sig_register_array_reg[0][2] ),
        .\sig_register_array_reg[0][2]_0 (\sig_register_array_reg[0][2]_0 ),
        .\sig_register_array_reg[0][2]_1 (\sig_register_array_reg[0][2]_1 ),
        .\sig_register_array_reg[0][5] (\sig_register_array_reg[0][5] ),
        .\sig_register_array_reg[0][5]_0 (\sig_register_array_reg[0][5]_0 ),
        .\sig_register_array_reg[0][5]_1 (\sig_register_array_reg[0][5]_1 ),
        .\sig_register_array_reg[0][7] (\sig_register_array_reg[0][7] ),
        .\sig_register_array_reg[0][7]_0 (\sig_register_array_reg[0][7]_0 ),
        .\sig_register_array_reg[0][7]_1 (\sig_register_array_reg[0][7]_1 ),
        .\sig_register_array_reg[0][7]_2 (\sig_register_array_reg[0][7]_2 ),
        .\sig_register_array_reg[0][8] (\sig_register_array_reg[0][8] ),
        .\sig_register_array_reg[0][8]_0 (\sig_register_array_reg[0][8]_0 ),
        .\sig_register_array_reg[0][8]_1 (\sig_register_array_reg[0][8]_1 ),
        .\sig_register_array_reg[0][8]_2 (\sig_register_array_reg[0][8]_2 ),
        .\sig_register_array_reg[0][8]_3 (\sig_register_array_reg[0][8]_3 ),
        .\sig_register_array_reg[1][0] (\sig_register_array_reg[1][0] ),
        .\sig_register_array_reg[1][0]_0 (\sig_register_array_reg[1][0]_0 ),
        .\sig_register_array_reg[1][0]_1 (\sig_register_array_reg[1][0]_1 ),
        .sig_rx_channel_reset_reg(sig_rx_channel_reset_reg),
        .sig_rx_channel_reset_reg_0(sig_rx_channel_reset_reg_0),
        .sig_rxd_prog_empty_d1(sig_rxd_prog_empty_d1),
        .sig_rxd_reset(sig_rxd_reset),
        .sig_str_rst_reg(sig_str_rst_reg),
        .sig_str_rst_reg_0(sig_str_rst_reg_0));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_read_fsm
   (s_axi4_rvalid,
    s_axi4_arready,
    s_axi4_rlast,
    E,
    D,
    \gaxi_full_sm.arlen_cntr_reg[3] ,
    \gaxi_full_sm.r_last_r_reg_0 ,
    \sig_register_array[0]12_out ,
    axis_rd_en__0,
    axi4_fifo_rd_en_i,
    \grid.ar_id_r_reg[0] ,
    \grid.ar_id_r_reg[0]_0 ,
    \grid.S_AXI_RID_reg[0] ,
    \grid.ar_id_r_reg[0]_1 ,
    s_axi_aclk,
    AR,
    s_axi4_rready,
    Q,
    s_axi4_arlen,
    \gaxi_full_sm.arlen_cntr_reg[0] ,
    s_axi4_arlen_0__s_port_,
    \gaxi_full_sm.arlen_cntr_reg[1] ,
    \gaxi_full_sm.arlen_cntr_reg[2] ,
    s_axi4_arlen_3__s_port_,
    \gaxi_full_sm.arlen_cntr_reg[3]_0 ,
    s_axi4_arlen_4__s_port_,
    \gaxi_full_sm.arlen_cntr_reg[4] ,
    s_axi4_arlen_5__s_port_,
    \gaxi_full_sm.arlen_cntr_reg[6] ,
    s_axi4_arlen_1__s_port_,
    r_last_int_c__7,
    \count_reg[1] ,
    empty_fwft_i,
    \s_axi4_araddr[26] ,
    \s_axi4_araddr[31] ,
    \s_axi4_araddr_2__s_port_] ,
    s_axi4_araddr,
    s_axi4_arvalid,
    s_axi4_arid,
    ar_id_r,
    s_axi4_rid);
  output s_axi4_rvalid;
  output s_axi4_arready;
  output s_axi4_rlast;
  output [0:0]E;
  output [7:0]D;
  output \gaxi_full_sm.arlen_cntr_reg[3] ;
  output \gaxi_full_sm.r_last_r_reg_0 ;
  output \sig_register_array[0]12_out ;
  output axis_rd_en__0;
  output axi4_fifo_rd_en_i;
  output \grid.ar_id_r_reg[0] ;
  output \grid.ar_id_r_reg[0]_0 ;
  output \grid.S_AXI_RID_reg[0] ;
  output \grid.ar_id_r_reg[0]_1 ;
  input s_axi_aclk;
  input [0:0]AR;
  input s_axi4_rready;
  input [7:0]Q;
  input [7:0]s_axi4_arlen;
  input \gaxi_full_sm.arlen_cntr_reg[0] ;
  input s_axi4_arlen_0__s_port_;
  input \gaxi_full_sm.arlen_cntr_reg[1] ;
  input \gaxi_full_sm.arlen_cntr_reg[2] ;
  input s_axi4_arlen_3__s_port_;
  input \gaxi_full_sm.arlen_cntr_reg[3]_0 ;
  input s_axi4_arlen_4__s_port_;
  input \gaxi_full_sm.arlen_cntr_reg[4] ;
  input s_axi4_arlen_5__s_port_;
  input \gaxi_full_sm.arlen_cntr_reg[6] ;
  input s_axi4_arlen_1__s_port_;
  input r_last_int_c__7;
  input \count_reg[1] ;
  input empty_fwft_i;
  input \s_axi4_araddr[26] ;
  input \s_axi4_araddr[31] ;
  input \s_axi4_araddr_2__s_port_] ;
  input [25:0]s_axi4_araddr;
  input s_axi4_arvalid;
  input [0:0]s_axi4_arid;
  input ar_id_r;
  input [0:0]s_axi4_rid;

  wire [0:0]AR;
  wire [7:0]D;
  wire [0:0]E;
  wire [7:0]Q;
  wire addr_en_c;
  wire ar_id_r;
  wire ar_ready_c;
  wire axi4_fifo_rd_en_i;
  wire axi4_rdfd_en;
  wire axis_rd_en__0;
  wire \count_reg[1] ;
  wire dec_alen_c__0;
  wire empty_fwft_i;
  wire \gaxi_full_sm.ar_ready_r_i_2_n_0 ;
  wire \gaxi_full_sm.ar_ready_r_i_3_n_0 ;
  wire \gaxi_full_sm.ar_ready_r_i_4_n_0 ;
  wire \gaxi_full_sm.ar_ready_r_i_5_n_0 ;
  wire \gaxi_full_sm.ar_ready_r_i_6_n_0 ;
  wire \gaxi_full_sm.arlen_cntr_reg[0] ;
  wire \gaxi_full_sm.arlen_cntr_reg[1] ;
  wire \gaxi_full_sm.arlen_cntr_reg[2] ;
  wire \gaxi_full_sm.arlen_cntr_reg[3] ;
  wire \gaxi_full_sm.arlen_cntr_reg[3]_0 ;
  wire \gaxi_full_sm.arlen_cntr_reg[4] ;
  wire \gaxi_full_sm.arlen_cntr_reg[6] ;
  wire \gaxi_full_sm.outstanding_read_r_i_1_n_0 ;
  wire \gaxi_full_sm.present_state[0]_i_1_n_0 ;
  wire \gaxi_full_sm.present_state[1]_i_1_n_0 ;
  wire \gaxi_full_sm.present_state[1]_i_2_n_0 ;
  wire \gaxi_full_sm.present_state[1]_i_3_n_0 ;
  wire \gaxi_full_sm.r_last_r_i_3_n_0 ;
  wire \gaxi_full_sm.r_last_r_reg_0 ;
  wire \goreg_bm.dout_i[148]_i_3_n_0 ;
  wire \greg.ram_rd_en_i_i_3_n_0 ;
  wire \greg.ram_rd_en_i_i_5_n_0 ;
  wire \grid.S_AXI_RID[0]_i_10_n_0 ;
  wire \grid.S_AXI_RID[0]_i_11_n_0 ;
  wire \grid.S_AXI_RID[0]_i_3_n_0 ;
  wire \grid.S_AXI_RID[0]_i_4_n_0 ;
  wire \grid.S_AXI_RID[0]_i_5_n_0 ;
  wire \grid.S_AXI_RID[0]_i_7_n_0 ;
  wire \grid.S_AXI_RID_reg[0] ;
  wire \grid.ar_id_r_reg[0] ;
  wire \grid.ar_id_r_reg[0]_0 ;
  wire \grid.ar_id_r_reg[0]_1 ;
  wire outstanding_read_r;
  wire p_0_in;
  wire p_1_out;
  wire p_3_in;
  wire p_8_out__0;
  wire pipeline_full_c10_out__0;
  wire [1:0]present_state;
  wire r_last_c11_out__0;
  wire r_last_int_c__7;
  wire r_valid_c;
  wire [25:0]s_axi4_araddr;
  wire \s_axi4_araddr[26] ;
  wire \s_axi4_araddr[31] ;
  wire s_axi4_araddr_2__s_net_1;
  wire [0:0]s_axi4_arid;
  wire [7:0]s_axi4_arlen;
  wire s_axi4_arlen_0__s_net_1;
  wire s_axi4_arlen_1__s_net_1;
  wire s_axi4_arlen_3__s_net_1;
  wire s_axi4_arlen_4__s_net_1;
  wire s_axi4_arlen_5__s_net_1;
  wire s_axi4_arready;
  wire s_axi4_arvalid;
  wire [0:0]s_axi4_rid;
  wire s_axi4_rlast;
  wire s_axi4_rready;
  wire s_axi4_rvalid;
  wire s_axi_aclk;
  wire \sig_register_array[0]12_out ;

  assign s_axi4_araddr_2__s_net_1 = \s_axi4_araddr_2__s_port_] ;
  assign s_axi4_arlen_0__s_net_1 = s_axi4_arlen_0__s_port_;
  assign s_axi4_arlen_1__s_net_1 = s_axi4_arlen_1__s_port_;
  assign s_axi4_arlen_3__s_net_1 = s_axi4_arlen_3__s_port_;
  assign s_axi4_arlen_4__s_net_1 = s_axi4_arlen_4__s_port_;
  assign s_axi4_arlen_5__s_net_1 = s_axi4_arlen_5__s_port_;
  LUT5 #(
    .INIT(32'hFFAE00AE)) 
    \gaxi_full_sm.ar_ready_r_i_1 
       (.I0(\gaxi_full_sm.ar_ready_r_i_2_n_0 ),
        .I1(s_axi4_rready),
        .I2(\gaxi_full_sm.ar_ready_r_i_3_n_0 ),
        .I3(present_state[0]),
        .I4(\gaxi_full_sm.ar_ready_r_i_4_n_0 ),
        .O(ar_ready_c));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT5 #(
    .INIT(32'h0D0D00FF)) 
    \gaxi_full_sm.ar_ready_r_i_2 
       (.I0(s_axi4_rvalid),
        .I1(s_axi4_rready),
        .I2(outstanding_read_r),
        .I3(axi4_rdfd_en),
        .I4(present_state[1]),
        .O(\gaxi_full_sm.ar_ready_r_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFBF)) 
    \gaxi_full_sm.ar_ready_r_i_3 
       (.I0(present_state[1]),
        .I1(axi4_rdfd_en),
        .I2(\gaxi_full_sm.ar_ready_r_i_5_n_0 ),
        .I3(s_axi4_arlen[1]),
        .I4(s_axi4_arlen[0]),
        .I5(s_axi4_arlen[2]),
        .O(\gaxi_full_sm.ar_ready_r_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFB0BB0000B0BB)) 
    \gaxi_full_sm.ar_ready_r_i_4 
       (.I0(\gaxi_full_sm.ar_ready_r_i_6_n_0 ),
        .I1(axi4_rdfd_en),
        .I2(s_axi4_rready),
        .I3(s_axi4_rvalid),
        .I4(present_state[1]),
        .I5(r_last_c11_out__0),
        .O(\gaxi_full_sm.ar_ready_r_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h00000001)) 
    \gaxi_full_sm.ar_ready_r_i_5 
       (.I0(s_axi4_arlen[3]),
        .I1(s_axi4_arlen[4]),
        .I2(s_axi4_arlen[5]),
        .I3(s_axi4_arlen[7]),
        .I4(s_axi4_arlen[6]),
        .O(\gaxi_full_sm.ar_ready_r_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \gaxi_full_sm.ar_ready_r_i_6 
       (.I0(s_axi4_arlen[6]),
        .I1(s_axi4_arlen[7]),
        .I2(s_axi4_arlen[5]),
        .I3(s_axi4_arlen[4]),
        .I4(s_axi4_arlen[3]),
        .I5(\gaxi_full_sm.arlen_cntr_reg[3] ),
        .O(\gaxi_full_sm.ar_ready_r_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0100000001000100)) 
    \gaxi_full_sm.ar_ready_r_i_7 
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(\gaxi_full_sm.r_last_r_reg_0 ),
        .I4(s_axi4_rready),
        .I5(s_axi4_rvalid),
        .O(r_last_c11_out__0));
  LUT6 #(
    .INIT(64'h0000000100000000)) 
    \gaxi_full_sm.ar_ready_r_i_8 
       (.I0(Q[3]),
        .I1(Q[4]),
        .I2(Q[5]),
        .I3(Q[6]),
        .I4(Q[7]),
        .I5(s_axi4_rready),
        .O(\gaxi_full_sm.r_last_r_reg_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \gaxi_full_sm.ar_ready_r_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(AR),
        .D(ar_ready_c),
        .Q(s_axi4_arready));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT4 #(
    .INIT(16'h0FD1)) 
    \gaxi_full_sm.arlen_cntr[0]_i_1 
       (.I0(Q[0]),
        .I1(addr_en_c),
        .I2(s_axi4_arlen[0]),
        .I3(p_8_out__0),
        .O(D[0]));
  LUT6 #(
    .INIT(64'hFFF900F90009FF09)) 
    \gaxi_full_sm.arlen_cntr[1]_i_1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(addr_en_c),
        .I3(p_8_out__0),
        .I4(s_axi4_arlen[0]),
        .I5(s_axi4_arlen[1]),
        .O(D[1]));
  LUT6 #(
    .INIT(64'hFFF900F90009FF09)) 
    \gaxi_full_sm.arlen_cntr[2]_i_1 
       (.I0(Q[2]),
        .I1(\gaxi_full_sm.arlen_cntr_reg[0] ),
        .I2(addr_en_c),
        .I3(p_8_out__0),
        .I4(s_axi4_arlen_0__s_net_1),
        .I5(s_axi4_arlen[2]),
        .O(D[2]));
  LUT6 #(
    .INIT(64'hFFF900F90009FF09)) 
    \gaxi_full_sm.arlen_cntr[3]_i_1 
       (.I0(Q[3]),
        .I1(\gaxi_full_sm.arlen_cntr_reg[1] ),
        .I2(addr_en_c),
        .I3(p_8_out__0),
        .I4(\gaxi_full_sm.arlen_cntr_reg[3] ),
        .I5(s_axi4_arlen[3]),
        .O(D[3]));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \gaxi_full_sm.arlen_cntr[3]_i_3 
       (.I0(s_axi4_arlen[2]),
        .I1(s_axi4_arlen[0]),
        .I2(s_axi4_arlen[1]),
        .O(\gaxi_full_sm.arlen_cntr_reg[3] ));
  LUT6 #(
    .INIT(64'hFFF900F90009FF09)) 
    \gaxi_full_sm.arlen_cntr[4]_i_1 
       (.I0(Q[4]),
        .I1(\gaxi_full_sm.arlen_cntr_reg[2] ),
        .I2(addr_en_c),
        .I3(p_8_out__0),
        .I4(s_axi4_arlen_3__s_net_1),
        .I5(s_axi4_arlen[4]),
        .O(D[4]));
  LUT6 #(
    .INIT(64'hFFED00ED0021FF21)) 
    \gaxi_full_sm.arlen_cntr[5]_i_1 
       (.I0(Q[5]),
        .I1(addr_en_c),
        .I2(\gaxi_full_sm.arlen_cntr_reg[3]_0 ),
        .I3(p_8_out__0),
        .I4(s_axi4_arlen_4__s_net_1),
        .I5(s_axi4_arlen[5]),
        .O(D[5]));
  LUT6 #(
    .INIT(64'hFFED00ED0021FF21)) 
    \gaxi_full_sm.arlen_cntr[6]_i_1 
       (.I0(Q[6]),
        .I1(addr_en_c),
        .I2(\gaxi_full_sm.arlen_cntr_reg[4] ),
        .I3(p_8_out__0),
        .I4(s_axi4_arlen_5__s_net_1),
        .I5(s_axi4_arlen[6]),
        .O(D[6]));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \gaxi_full_sm.arlen_cntr[7]_i_1 
       (.I0(p_8_out__0),
        .I1(dec_alen_c__0),
        .I2(addr_en_c),
        .O(E));
  LUT6 #(
    .INIT(64'hFFED00ED0021FF21)) 
    \gaxi_full_sm.arlen_cntr[7]_i_2 
       (.I0(Q[7]),
        .I1(addr_en_c),
        .I2(\gaxi_full_sm.arlen_cntr_reg[6] ),
        .I3(p_8_out__0),
        .I4(s_axi4_arlen_1__s_net_1),
        .I5(s_axi4_arlen[7]),
        .O(D[7]));
  LUT6 #(
    .INIT(64'h00000F0000000700)) 
    \gaxi_full_sm.arlen_cntr[7]_i_3 
       (.I0(pipeline_full_c10_out__0),
        .I1(present_state[0]),
        .I2(present_state[1]),
        .I3(axi4_rdfd_en),
        .I4(\gaxi_full_sm.ar_ready_r_i_6_n_0 ),
        .I5(r_last_int_c__7),
        .O(p_8_out__0));
  LUT6 #(
    .INIT(64'hAAAAAABAFFBAAABA)) 
    \gaxi_full_sm.arlen_cntr[7]_i_4 
       (.I0(r_last_int_c__7),
        .I1(\gaxi_full_sm.ar_ready_r_i_6_n_0 ),
        .I2(axi4_rdfd_en),
        .I3(present_state[1]),
        .I4(present_state[0]),
        .I5(pipeline_full_c10_out__0),
        .O(dec_alen_c__0));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \gaxi_full_sm.arlen_cntr[7]_i_5 
       (.I0(axi4_rdfd_en),
        .I1(present_state[1]),
        .O(addr_en_c));
  LUT6 #(
    .INIT(64'h44440000F0000000)) 
    \gaxi_full_sm.outstanding_read_r_i_1 
       (.I0(\gaxi_full_sm.ar_ready_r_i_3_n_0 ),
        .I1(axi4_rdfd_en),
        .I2(present_state[1]),
        .I3(outstanding_read_r),
        .I4(pipeline_full_c10_out__0),
        .I5(present_state[0]),
        .O(\gaxi_full_sm.outstanding_read_r_i_1_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \gaxi_full_sm.outstanding_read_r_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(AR),
        .D(\gaxi_full_sm.outstanding_read_r_i_1_n_0 ),
        .Q(outstanding_read_r));
  LUT6 #(
    .INIT(64'hCCCCF4FFCCCC0000)) 
    \gaxi_full_sm.present_state[0]_i_1 
       (.I0(s_axi4_rvalid),
        .I1(present_state[0]),
        .I2(s_axi4_rready),
        .I3(p_0_in),
        .I4(present_state[1]),
        .I5(axi4_rdfd_en),
        .O(\gaxi_full_sm.present_state[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT5 #(
    .INIT(32'h01000000)) 
    \gaxi_full_sm.present_state[0]_i_2 
       (.I0(s_axi4_arlen[2]),
        .I1(s_axi4_arlen[0]),
        .I2(s_axi4_arlen[1]),
        .I3(\gaxi_full_sm.ar_ready_r_i_5_n_0 ),
        .I4(axi4_rdfd_en),
        .O(p_0_in));
  LUT6 #(
    .INIT(64'hEEEE0000EEEEF0FF)) 
    \gaxi_full_sm.present_state[1]_i_1 
       (.I0(\gaxi_full_sm.present_state[1]_i_2_n_0 ),
        .I1(\gaxi_full_sm.present_state[1]_i_3_n_0 ),
        .I2(\gaxi_full_sm.ar_ready_r_i_3_n_0 ),
        .I3(s_axi4_rready),
        .I4(present_state[0]),
        .I5(\gaxi_full_sm.ar_ready_r_i_2_n_0 ),
        .O(\gaxi_full_sm.present_state[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT4 #(
    .INIT(16'h4474)) 
    \gaxi_full_sm.present_state[1]_i_2 
       (.I0(r_last_c11_out__0),
        .I1(present_state[1]),
        .I2(s_axi4_rvalid),
        .I3(s_axi4_rready),
        .O(\gaxi_full_sm.present_state[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h4444444444444404)) 
    \gaxi_full_sm.present_state[1]_i_3 
       (.I0(present_state[1]),
        .I1(axi4_rdfd_en),
        .I2(\gaxi_full_sm.ar_ready_r_i_5_n_0 ),
        .I3(s_axi4_arlen[1]),
        .I4(s_axi4_arlen[0]),
        .I5(s_axi4_arlen[2]),
        .O(\gaxi_full_sm.present_state[1]_i_3_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \gaxi_full_sm.present_state_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(AR),
        .D(\gaxi_full_sm.present_state[0]_i_1_n_0 ),
        .Q(present_state[0]));
  FDCE #(
    .INIT(1'b0)) 
    \gaxi_full_sm.present_state_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(AR),
        .D(\gaxi_full_sm.present_state[1]_i_1_n_0 ),
        .Q(present_state[1]));
  LUT2 #(
    .INIT(4'hB)) 
    \gaxi_full_sm.r_last_r_i_1 
       (.I0(s_axi4_rready),
        .I1(s_axi4_rvalid),
        .O(p_1_out));
  LUT6 #(
    .INIT(64'hAAAAAAAAEEAEEEEE)) 
    \gaxi_full_sm.r_last_r_i_2 
       (.I0(\gaxi_full_sm.r_last_r_i_3_n_0 ),
        .I1(axi4_rdfd_en),
        .I2(s_axi4_rvalid),
        .I3(s_axi4_rready),
        .I4(present_state[0]),
        .I5(\gaxi_full_sm.ar_ready_r_i_3_n_0 ),
        .O(p_3_in));
  LUT6 #(
    .INIT(64'hAAAA0000C0CC0000)) 
    \gaxi_full_sm.r_last_r_i_3 
       (.I0(r_last_c11_out__0),
        .I1(outstanding_read_r),
        .I2(s_axi4_rready),
        .I3(s_axi4_rvalid),
        .I4(present_state[1]),
        .I5(present_state[0]),
        .O(\gaxi_full_sm.r_last_r_i_3_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \gaxi_full_sm.r_last_r_reg 
       (.C(s_axi_aclk),
        .CE(p_1_out),
        .CLR(AR),
        .D(p_3_in),
        .Q(s_axi4_rlast));
  LUT6 #(
    .INIT(64'h32FF77FF32FF0000)) 
    \gaxi_full_sm.r_valid_r_i_1 
       (.I0(present_state[0]),
        .I1(pipeline_full_c10_out__0),
        .I2(outstanding_read_r),
        .I3(\gaxi_full_sm.ar_ready_r_i_3_n_0 ),
        .I4(present_state[1]),
        .I5(axi4_rdfd_en),
        .O(r_valid_c));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \gaxi_full_sm.r_valid_r_i_2 
       (.I0(s_axi4_rvalid),
        .I1(s_axi4_rready),
        .O(pipeline_full_c10_out__0));
  FDCE #(
    .INIT(1'b0)) 
    \gaxi_full_sm.r_valid_r_reg 
       (.C(s_axi_aclk),
        .CE(p_1_out),
        .CLR(AR),
        .D(r_valid_c),
        .Q(s_axi4_rvalid));
  LUT6 #(
    .INIT(64'h00000000F8000000)) 
    \goreg_bm.dout_i[148]_i_2 
       (.I0(\goreg_bm.dout_i[148]_i_3_n_0 ),
        .I1(\grid.S_AXI_RID[0]_i_3_n_0 ),
        .I2(s_axi4_rlast),
        .I3(s_axi4_rvalid),
        .I4(s_axi4_rready),
        .I5(empty_fwft_i),
        .O(axis_rd_en__0));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT5 #(
    .INIT(32'hEAAAAAAA)) 
    \goreg_bm.dout_i[148]_i_3 
       (.I0(present_state[1]),
        .I1(\grid.S_AXI_RID[0]_i_7_n_0 ),
        .I2(\s_axi4_araddr[31] ),
        .I3(\grid.S_AXI_RID[0]_i_5_n_0 ),
        .I4(\grid.S_AXI_RID[0]_i_4_n_0 ),
        .O(\goreg_bm.dout_i[148]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hA8A8A8A8A8888888)) 
    \greg.ram_rd_en_i_i_2 
       (.I0(\greg.ram_rd_en_i_i_3_n_0 ),
        .I1(s_axi4_rlast),
        .I2(\grid.S_AXI_RID[0]_i_3_n_0 ),
        .I3(\s_axi4_araddr[26] ),
        .I4(\greg.ram_rd_en_i_i_5_n_0 ),
        .I5(present_state[1]),
        .O(axi4_fifo_rd_en_i));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \greg.ram_rd_en_i_i_3 
       (.I0(s_axi4_rvalid),
        .I1(s_axi4_rready),
        .O(\greg.ram_rd_en_i_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h8000)) 
    \greg.ram_rd_en_i_i_5 
       (.I0(\grid.S_AXI_RID[0]_i_11_n_0 ),
        .I1(s_axi4_araddr_2__s_net_1),
        .I2(\grid.S_AXI_RID[0]_i_10_n_0 ),
        .I3(\s_axi4_araddr[31] ),
        .O(\greg.ram_rd_en_i_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hCACFFFFFCAC00000)) 
    \grid.S_AXI_RID[0]_i_1 
       (.I0(s_axi4_arid),
        .I1(ar_id_r),
        .I2(present_state[1]),
        .I3(axi4_rdfd_en),
        .I4(\grid.S_AXI_RID[0]_i_3_n_0 ),
        .I5(s_axi4_rid),
        .O(\grid.S_AXI_RID_reg[0] ));
  LUT4 #(
    .INIT(16'h0001)) 
    \grid.S_AXI_RID[0]_i_10 
       (.I0(s_axi4_araddr[9]),
        .I1(s_axi4_araddr[8]),
        .I2(s_axi4_araddr[7]),
        .I3(s_axi4_araddr[6]),
        .O(\grid.S_AXI_RID[0]_i_10_n_0 ));
  LUT4 #(
    .INIT(16'h0008)) 
    \grid.S_AXI_RID[0]_i_11 
       (.I0(s_axi4_arready),
        .I1(s_axi4_arvalid),
        .I2(s_axi4_araddr[1]),
        .I3(s_axi4_araddr[0]),
        .O(\grid.S_AXI_RID[0]_i_11_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \grid.S_AXI_RID[0]_i_2 
       (.I0(\grid.S_AXI_RID[0]_i_4_n_0 ),
        .I1(\grid.S_AXI_RID[0]_i_5_n_0 ),
        .I2(\s_axi4_araddr[31] ),
        .I3(\grid.S_AXI_RID[0]_i_7_n_0 ),
        .O(axi4_rdfd_en));
  LUT5 #(
    .INIT(32'hF3A2F7F7)) 
    \grid.S_AXI_RID[0]_i_3 
       (.I0(present_state[0]),
        .I1(s_axi4_rvalid),
        .I2(s_axi4_rready),
        .I3(outstanding_read_r),
        .I4(present_state[1]),
        .O(\grid.S_AXI_RID[0]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h00010000)) 
    \grid.S_AXI_RID[0]_i_4 
       (.I0(s_axi4_araddr[22]),
        .I1(s_axi4_araddr[23]),
        .I2(s_axi4_araddr[24]),
        .I3(s_axi4_araddr[25]),
        .I4(\grid.ar_id_r_reg[0] ),
        .O(\grid.S_AXI_RID[0]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h00010000)) 
    \grid.S_AXI_RID[0]_i_5 
       (.I0(s_axi4_araddr[12]),
        .I1(s_axi4_araddr[13]),
        .I2(s_axi4_araddr[10]),
        .I3(s_axi4_araddr[11]),
        .I4(\grid.ar_id_r_reg[0]_0 ),
        .O(\grid.S_AXI_RID[0]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0000000200000000)) 
    \grid.S_AXI_RID[0]_i_7 
       (.I0(\grid.S_AXI_RID[0]_i_10_n_0 ),
        .I1(s_axi4_araddr[5]),
        .I2(s_axi4_araddr[4]),
        .I3(s_axi4_araddr[3]),
        .I4(s_axi4_araddr[2]),
        .I5(\grid.S_AXI_RID[0]_i_11_n_0 ),
        .O(\grid.S_AXI_RID[0]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \grid.S_AXI_RID[0]_i_8 
       (.I0(s_axi4_araddr[21]),
        .I1(s_axi4_araddr[20]),
        .I2(s_axi4_araddr[19]),
        .I3(s_axi4_araddr[18]),
        .O(\grid.ar_id_r_reg[0] ));
  LUT4 #(
    .INIT(16'h0001)) 
    \grid.S_AXI_RID[0]_i_9 
       (.I0(s_axi4_araddr[17]),
        .I1(s_axi4_araddr[16]),
        .I2(s_axi4_araddr[15]),
        .I3(s_axi4_araddr[14]),
        .O(\grid.ar_id_r_reg[0]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT4 #(
    .INIT(16'hFB08)) 
    \grid.ar_id_r[0]_i_1 
       (.I0(s_axi4_arid),
        .I1(axi4_rdfd_en),
        .I2(present_state[1]),
        .I3(ar_id_r),
        .O(\grid.ar_id_r_reg[0]_1 ));
  LUT6 #(
    .INIT(64'hAA80000000000000)) 
    \sig_register_array[0][2]_i_4 
       (.I0(\count_reg[1] ),
        .I1(\goreg_bm.dout_i[148]_i_3_n_0 ),
        .I2(\grid.S_AXI_RID[0]_i_3_n_0 ),
        .I3(s_axi4_rlast),
        .I4(s_axi4_rvalid),
        .I5(s_axi4_rready),
        .O(\sig_register_array[0]12_out ));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_read_wrapper
   (s_axi4_rvalid,
    s_axi4_arready,
    s_axi4_rlast,
    s_axi4_rid,
    \sig_register_array[0]12_out ,
    axis_rd_en__0,
    axi4_fifo_rd_en_i,
    \grid.ar_id_r_reg[0]_0 ,
    \grid.ar_id_r_reg[0]_1 ,
    s_axi_aclk,
    AR,
    s_axi4_rready,
    s_axi4_arlen,
    \count_reg[1] ,
    empty_fwft_i,
    \s_axi4_araddr[26] ,
    \s_axi4_araddr[31] ,
    \s_axi4_araddr_2__s_port_] ,
    s_axi4_araddr,
    s_axi4_arvalid,
    s_axi4_arid);
  output s_axi4_rvalid;
  output s_axi4_arready;
  output s_axi4_rlast;
  output [0:0]s_axi4_rid;
  output \sig_register_array[0]12_out ;
  output axis_rd_en__0;
  output axi4_fifo_rd_en_i;
  output \grid.ar_id_r_reg[0]_0 ;
  output \grid.ar_id_r_reg[0]_1 ;
  input s_axi_aclk;
  input [0:0]AR;
  input s_axi4_rready;
  input [7:0]s_axi4_arlen;
  input \count_reg[1] ;
  input empty_fwft_i;
  input \s_axi4_araddr[26] ;
  input \s_axi4_araddr[31] ;
  input \s_axi4_araddr_2__s_port_] ;
  input [25:0]s_axi4_araddr;
  input s_axi4_arvalid;
  input [0:0]s_axi4_arid;

  wire [0:0]AR;
  wire ar_id_r;
  wire [7:0]arlen_cntr;
  wire axi4_fifo_rd_en_i;
  wire axi_read_fsm_n_10;
  wire axi_read_fsm_n_11;
  wire axi_read_fsm_n_12;
  wire axi_read_fsm_n_13;
  wire axi_read_fsm_n_19;
  wire axi_read_fsm_n_20;
  wire axi_read_fsm_n_3;
  wire axi_read_fsm_n_4;
  wire axi_read_fsm_n_5;
  wire axi_read_fsm_n_6;
  wire axi_read_fsm_n_7;
  wire axi_read_fsm_n_8;
  wire axi_read_fsm_n_9;
  wire axis_rd_en__0;
  wire \count_reg[1] ;
  wire empty_fwft_i;
  wire \gaxi_full_sm.arlen_cntr[2]_i_2_n_0 ;
  wire \gaxi_full_sm.arlen_cntr[2]_i_3_n_0 ;
  wire \gaxi_full_sm.arlen_cntr[3]_i_2_n_0 ;
  wire \gaxi_full_sm.arlen_cntr[4]_i_2_n_0 ;
  wire \gaxi_full_sm.arlen_cntr[4]_i_3_n_0 ;
  wire \gaxi_full_sm.arlen_cntr[5]_i_2_n_0 ;
  wire \gaxi_full_sm.arlen_cntr[5]_i_3_n_0 ;
  wire \gaxi_full_sm.arlen_cntr[6]_i_2_n_0 ;
  wire \gaxi_full_sm.arlen_cntr[6]_i_3_n_0 ;
  wire \gaxi_full_sm.arlen_cntr[7]_i_6_n_0 ;
  wire \gaxi_full_sm.arlen_cntr[7]_i_7_n_0 ;
  wire \grid.ar_id_r_reg[0]_0 ;
  wire \grid.ar_id_r_reg[0]_1 ;
  wire r_last_int_c__7;
  wire [25:0]s_axi4_araddr;
  wire \s_axi4_araddr[26] ;
  wire \s_axi4_araddr[31] ;
  wire s_axi4_araddr_2__s_net_1;
  wire [0:0]s_axi4_arid;
  wire [7:0]s_axi4_arlen;
  wire s_axi4_arready;
  wire s_axi4_arvalid;
  wire [0:0]s_axi4_rid;
  wire s_axi4_rlast;
  wire s_axi4_rready;
  wire s_axi4_rvalid;
  wire s_axi_aclk;
  wire \sig_register_array[0]12_out ;

  assign s_axi4_araddr_2__s_net_1 = \s_axi4_araddr_2__s_port_] ;
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_read_fsm axi_read_fsm
       (.AR(AR),
        .D({axi_read_fsm_n_4,axi_read_fsm_n_5,axi_read_fsm_n_6,axi_read_fsm_n_7,axi_read_fsm_n_8,axi_read_fsm_n_9,axi_read_fsm_n_10,axi_read_fsm_n_11}),
        .E(axi_read_fsm_n_3),
        .Q(arlen_cntr),
        .ar_id_r(ar_id_r),
        .axi4_fifo_rd_en_i(axi4_fifo_rd_en_i),
        .axis_rd_en__0(axis_rd_en__0),
        .\count_reg[1] (\count_reg[1] ),
        .empty_fwft_i(empty_fwft_i),
        .\gaxi_full_sm.arlen_cntr_reg[0] (\gaxi_full_sm.arlen_cntr[2]_i_2_n_0 ),
        .\gaxi_full_sm.arlen_cntr_reg[1] (\gaxi_full_sm.arlen_cntr[3]_i_2_n_0 ),
        .\gaxi_full_sm.arlen_cntr_reg[2] (\gaxi_full_sm.arlen_cntr[4]_i_2_n_0 ),
        .\gaxi_full_sm.arlen_cntr_reg[3] (axi_read_fsm_n_12),
        .\gaxi_full_sm.arlen_cntr_reg[3]_0 (\gaxi_full_sm.arlen_cntr[5]_i_2_n_0 ),
        .\gaxi_full_sm.arlen_cntr_reg[4] (\gaxi_full_sm.arlen_cntr[6]_i_2_n_0 ),
        .\gaxi_full_sm.arlen_cntr_reg[6] (\gaxi_full_sm.arlen_cntr[7]_i_6_n_0 ),
        .\gaxi_full_sm.r_last_r_reg_0 (axi_read_fsm_n_13),
        .\grid.S_AXI_RID_reg[0] (axi_read_fsm_n_19),
        .\grid.ar_id_r_reg[0] (\grid.ar_id_r_reg[0]_0 ),
        .\grid.ar_id_r_reg[0]_0 (\grid.ar_id_r_reg[0]_1 ),
        .\grid.ar_id_r_reg[0]_1 (axi_read_fsm_n_20),
        .r_last_int_c__7(r_last_int_c__7),
        .s_axi4_araddr(s_axi4_araddr),
        .\s_axi4_araddr[26] (\s_axi4_araddr[26] ),
        .\s_axi4_araddr[31] (\s_axi4_araddr[31] ),
        .\s_axi4_araddr_2__s_port_] (s_axi4_araddr_2__s_net_1),
        .s_axi4_arid(s_axi4_arid),
        .s_axi4_arlen(s_axi4_arlen),
        .s_axi4_arlen_0__s_port_(\gaxi_full_sm.arlen_cntr[2]_i_3_n_0 ),
        .s_axi4_arlen_1__s_port_(\gaxi_full_sm.arlen_cntr[7]_i_7_n_0 ),
        .s_axi4_arlen_3__s_port_(\gaxi_full_sm.arlen_cntr[4]_i_3_n_0 ),
        .s_axi4_arlen_4__s_port_(\gaxi_full_sm.arlen_cntr[5]_i_3_n_0 ),
        .s_axi4_arlen_5__s_port_(\gaxi_full_sm.arlen_cntr[6]_i_3_n_0 ),
        .s_axi4_arready(s_axi4_arready),
        .s_axi4_arvalid(s_axi4_arvalid),
        .s_axi4_rid(s_axi4_rid),
        .s_axi4_rlast(s_axi4_rlast),
        .s_axi4_rready(s_axi4_rready),
        .s_axi4_rvalid(s_axi4_rvalid),
        .s_axi_aclk(s_axi_aclk),
        .\sig_register_array[0]12_out (\sig_register_array[0]12_out ));
  LUT2 #(
    .INIT(4'hE)) 
    \gaxi_full_sm.arlen_cntr[2]_i_2 
       (.I0(arlen_cntr[0]),
        .I1(arlen_cntr[1]),
        .O(\gaxi_full_sm.arlen_cntr[2]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \gaxi_full_sm.arlen_cntr[2]_i_3 
       (.I0(s_axi4_arlen[1]),
        .I1(s_axi4_arlen[0]),
        .O(\gaxi_full_sm.arlen_cntr[2]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \gaxi_full_sm.arlen_cntr[3]_i_2 
       (.I0(arlen_cntr[1]),
        .I1(arlen_cntr[0]),
        .I2(arlen_cntr[2]),
        .O(\gaxi_full_sm.arlen_cntr[3]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \gaxi_full_sm.arlen_cntr[4]_i_2 
       (.I0(arlen_cntr[2]),
        .I1(arlen_cntr[0]),
        .I2(arlen_cntr[1]),
        .I3(arlen_cntr[3]),
        .O(\gaxi_full_sm.arlen_cntr[4]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \gaxi_full_sm.arlen_cntr[4]_i_3 
       (.I0(s_axi4_arlen[1]),
        .I1(s_axi4_arlen[0]),
        .I2(s_axi4_arlen[2]),
        .I3(s_axi4_arlen[3]),
        .O(\gaxi_full_sm.arlen_cntr[4]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \gaxi_full_sm.arlen_cntr[5]_i_2 
       (.I0(arlen_cntr[3]),
        .I1(arlen_cntr[1]),
        .I2(arlen_cntr[0]),
        .I3(arlen_cntr[2]),
        .I4(arlen_cntr[4]),
        .O(\gaxi_full_sm.arlen_cntr[5]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \gaxi_full_sm.arlen_cntr[5]_i_3 
       (.I0(s_axi4_arlen[3]),
        .I1(s_axi4_arlen[2]),
        .I2(s_axi4_arlen[0]),
        .I3(s_axi4_arlen[1]),
        .I4(s_axi4_arlen[4]),
        .O(\gaxi_full_sm.arlen_cntr[5]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \gaxi_full_sm.arlen_cntr[6]_i_2 
       (.I0(arlen_cntr[4]),
        .I1(arlen_cntr[2]),
        .I2(arlen_cntr[0]),
        .I3(arlen_cntr[1]),
        .I4(arlen_cntr[3]),
        .I5(arlen_cntr[5]),
        .O(\gaxi_full_sm.arlen_cntr[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \gaxi_full_sm.arlen_cntr[6]_i_3 
       (.I0(s_axi4_arlen[4]),
        .I1(s_axi4_arlen[1]),
        .I2(s_axi4_arlen[0]),
        .I3(s_axi4_arlen[2]),
        .I4(s_axi4_arlen[3]),
        .I5(s_axi4_arlen[5]),
        .O(\gaxi_full_sm.arlen_cntr[6]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \gaxi_full_sm.arlen_cntr[7]_i_6 
       (.I0(\gaxi_full_sm.arlen_cntr[6]_i_2_n_0 ),
        .I1(arlen_cntr[6]),
        .O(\gaxi_full_sm.arlen_cntr[7]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \gaxi_full_sm.arlen_cntr[7]_i_7 
       (.I0(s_axi4_arlen[5]),
        .I1(s_axi4_arlen[3]),
        .I2(axi_read_fsm_n_12),
        .I3(s_axi4_arlen[4]),
        .I4(s_axi4_arlen[6]),
        .O(\gaxi_full_sm.arlen_cntr[7]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT4 #(
    .INIT(16'h0002)) 
    \gaxi_full_sm.arlen_cntr[7]_i_8 
       (.I0(axi_read_fsm_n_13),
        .I1(arlen_cntr[0]),
        .I2(arlen_cntr[1]),
        .I3(arlen_cntr[2]),
        .O(r_last_int_c__7));
  FDPE #(
    .INIT(1'b1)) 
    \gaxi_full_sm.arlen_cntr_reg[0] 
       (.C(s_axi_aclk),
        .CE(axi_read_fsm_n_3),
        .D(axi_read_fsm_n_11),
        .PRE(AR),
        .Q(arlen_cntr[0]));
  FDCE #(
    .INIT(1'b0)) 
    \gaxi_full_sm.arlen_cntr_reg[1] 
       (.C(s_axi_aclk),
        .CE(axi_read_fsm_n_3),
        .CLR(AR),
        .D(axi_read_fsm_n_10),
        .Q(arlen_cntr[1]));
  FDCE #(
    .INIT(1'b0)) 
    \gaxi_full_sm.arlen_cntr_reg[2] 
       (.C(s_axi_aclk),
        .CE(axi_read_fsm_n_3),
        .CLR(AR),
        .D(axi_read_fsm_n_9),
        .Q(arlen_cntr[2]));
  FDCE #(
    .INIT(1'b0)) 
    \gaxi_full_sm.arlen_cntr_reg[3] 
       (.C(s_axi_aclk),
        .CE(axi_read_fsm_n_3),
        .CLR(AR),
        .D(axi_read_fsm_n_8),
        .Q(arlen_cntr[3]));
  FDCE #(
    .INIT(1'b0)) 
    \gaxi_full_sm.arlen_cntr_reg[4] 
       (.C(s_axi_aclk),
        .CE(axi_read_fsm_n_3),
        .CLR(AR),
        .D(axi_read_fsm_n_7),
        .Q(arlen_cntr[4]));
  FDCE #(
    .INIT(1'b0)) 
    \gaxi_full_sm.arlen_cntr_reg[5] 
       (.C(s_axi_aclk),
        .CE(axi_read_fsm_n_3),
        .CLR(AR),
        .D(axi_read_fsm_n_6),
        .Q(arlen_cntr[5]));
  FDCE #(
    .INIT(1'b0)) 
    \gaxi_full_sm.arlen_cntr_reg[6] 
       (.C(s_axi_aclk),
        .CE(axi_read_fsm_n_3),
        .CLR(AR),
        .D(axi_read_fsm_n_5),
        .Q(arlen_cntr[6]));
  FDCE #(
    .INIT(1'b0)) 
    \gaxi_full_sm.arlen_cntr_reg[7] 
       (.C(s_axi_aclk),
        .CE(axi_read_fsm_n_3),
        .CLR(AR),
        .D(axi_read_fsm_n_4),
        .Q(arlen_cntr[7]));
  FDCE #(
    .INIT(1'b0)) 
    \grid.S_AXI_RID_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(AR),
        .D(axi_read_fsm_n_19),
        .Q(s_axi4_rid));
  FDCE #(
    .INIT(1'b0)) 
    \grid.ar_id_r_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(AR),
        .D(axi_read_fsm_n_20),
        .Q(ar_id_r));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_wrapper
   (s_axi4_awready,
    AS,
    s_axi4_wready,
    s_axi4_rvalid,
    s_axi4_arready,
    s_axi4_rlast,
    \bvalid_count_r_reg[0] ,
    s_axi4_rid,
    \sig_register_array[0]12_out ,
    axis_rd_en__0,
    axi4_fifo_rd_en_i,
    \grid.ar_id_r_reg[0] ,
    \grid.ar_id_r_reg[0]_0 ,
    s_axi4_bid,
    s_axi_aclk,
    s_axi4_rready,
    s_axi4_arlen,
    \count_reg[1] ,
    empty_fwft_i,
    \s_axi4_araddr[26] ,
    \s_axi4_araddr[31] ,
    \s_axi4_araddr_2__s_port_] ,
    s_axi4_araddr,
    s_axi4_arvalid,
    s_axi_aresetn,
    s_axi4_bready,
    s_axi4_wvalid,
    s_axi4_awlen,
    s_axi4_awaddr,
    s_axi4_awvalid,
    s_axi4_arid);
  output s_axi4_awready;
  output [0:0]AS;
  output s_axi4_wready;
  output s_axi4_rvalid;
  output s_axi4_arready;
  output s_axi4_rlast;
  output \bvalid_count_r_reg[0] ;
  output [0:0]s_axi4_rid;
  output \sig_register_array[0]12_out ;
  output axis_rd_en__0;
  output axi4_fifo_rd_en_i;
  output \grid.ar_id_r_reg[0] ;
  output \grid.ar_id_r_reg[0]_0 ;
  output [0:0]s_axi4_bid;
  input s_axi_aclk;
  input s_axi4_rready;
  input [7:0]s_axi4_arlen;
  input \count_reg[1] ;
  input empty_fwft_i;
  input \s_axi4_araddr[26] ;
  input \s_axi4_araddr[31] ;
  input \s_axi4_araddr_2__s_port_] ;
  input [25:0]s_axi4_araddr;
  input s_axi4_arvalid;
  input s_axi_aresetn;
  input s_axi4_bready;
  input s_axi4_wvalid;
  input [7:0]s_axi4_awlen;
  input [31:0]s_axi4_awaddr;
  input s_axi4_awvalid;
  input [0:0]s_axi4_arid;

  wire [0:0]AS;
  wire axi4_fifo_rd_en_i;
  wire axis_rd_en__0;
  wire \bvalid_count_r_reg[0] ;
  wire \count_reg[1] ;
  wire empty_fwft_i;
  wire \grid.ar_id_r_reg[0] ;
  wire \grid.ar_id_r_reg[0]_0 ;
  wire [25:0]s_axi4_araddr;
  wire \s_axi4_araddr[26] ;
  wire \s_axi4_araddr[31] ;
  wire s_axi4_araddr_2__s_net_1;
  wire [0:0]s_axi4_arid;
  wire [7:0]s_axi4_arlen;
  wire s_axi4_arready;
  wire s_axi4_arvalid;
  wire [31:0]s_axi4_awaddr;
  wire [7:0]s_axi4_awlen;
  wire s_axi4_awready;
  wire s_axi4_awvalid;
  wire [0:0]s_axi4_bid;
  wire s_axi4_bready;
  wire [0:0]s_axi4_rid;
  wire s_axi4_rlast;
  wire s_axi4_rready;
  wire s_axi4_rvalid;
  wire s_axi4_wready;
  wire s_axi4_wvalid;
  wire s_axi_aclk;
  wire s_axi_aresetn;
  wire \sig_register_array[0]12_out ;

  assign s_axi4_araddr_2__s_net_1 = \s_axi4_araddr_2__s_port_] ;
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_read_wrapper axi_rd_sm
       (.AR(AS),
        .axi4_fifo_rd_en_i(axi4_fifo_rd_en_i),
        .axis_rd_en__0(axis_rd_en__0),
        .\count_reg[1] (\count_reg[1] ),
        .empty_fwft_i(empty_fwft_i),
        .\grid.ar_id_r_reg[0]_0 (\grid.ar_id_r_reg[0] ),
        .\grid.ar_id_r_reg[0]_1 (\grid.ar_id_r_reg[0]_0 ),
        .s_axi4_araddr(s_axi4_araddr),
        .\s_axi4_araddr[26] (\s_axi4_araddr[26] ),
        .\s_axi4_araddr[31] (\s_axi4_araddr[31] ),
        .\s_axi4_araddr_2__s_port_] (s_axi4_araddr_2__s_net_1),
        .s_axi4_arid(s_axi4_arid),
        .s_axi4_arlen(s_axi4_arlen),
        .s_axi4_arready(s_axi4_arready),
        .s_axi4_arvalid(s_axi4_arvalid),
        .s_axi4_rid(s_axi4_rid),
        .s_axi4_rlast(s_axi4_rlast),
        .s_axi4_rready(s_axi4_rready),
        .s_axi4_rvalid(s_axi4_rvalid),
        .s_axi_aclk(s_axi_aclk),
        .\sig_register_array[0]12_out (\sig_register_array[0]12_out ));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_write_wrapper axi_wr_fsm
       (.AR(AS),
        .\bvalid_count_r_reg[0]_0 (\bvalid_count_r_reg[0] ),
        .s_axi4_awaddr(s_axi4_awaddr),
        .s_axi4_awlen(s_axi4_awlen),
        .s_axi4_awready(s_axi4_awready),
        .s_axi4_awvalid(s_axi4_awvalid),
        .s_axi4_bid(s_axi4_bid),
        .s_axi4_bready(s_axi4_bready),
        .s_axi4_wready(s_axi4_wready),
        .s_axi4_wvalid(s_axi4_wvalid),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_aresetn(s_axi_aresetn));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_write_fsm
   (s_axi4_awready,
    AS,
    s_axi4_wready,
    E,
    bvalid_c,
    D,
    \gaxif_wlast_gen.awlen_cntr_r_reg[7] ,
    I68,
    \bvalid_count_r_reg[2] ,
    s_axi_aclk,
    s_axi_aresetn,
    Q,
    \gaxi_bvalid_id_r.bvalid_r_reg ,
    s_axi4_bready,
    s_axi4_wvalid,
    \gaxif_wlast_gen.awlen_cntr_r_reg[7]_0 ,
    \gaxif_wlast_gen.awlen_cntr_r_reg[4] ,
    s_axi4_awlen,
    \gaxif_wlast_gen.awlen_cntr_r_reg[2] ,
    s_axi4_awaddr,
    s_axi4_awvalid);
  output s_axi4_awready;
  output [0:0]AS;
  output s_axi4_wready;
  output [0:0]E;
  output bvalid_c;
  output [7:0]D;
  output [0:0]\gaxif_wlast_gen.awlen_cntr_r_reg[7] ;
  output I68;
  output [1:0]\bvalid_count_r_reg[2] ;
  input s_axi_aclk;
  input s_axi_aresetn;
  input [2:0]Q;
  input \gaxi_bvalid_id_r.bvalid_r_reg ;
  input s_axi4_bready;
  input s_axi4_wvalid;
  input [7:0]\gaxif_wlast_gen.awlen_cntr_r_reg[7]_0 ;
  input \gaxif_wlast_gen.awlen_cntr_r_reg[4] ;
  input [7:0]s_axi4_awlen;
  input \gaxif_wlast_gen.awlen_cntr_r_reg[2] ;
  input [31:0]s_axi4_awaddr;
  input s_axi4_awvalid;

  wire [0:0]AS;
  wire [7:0]D;
  wire [0:0]E;
  wire I68;
  wire [2:0]Q;
  wire aw_ready_c;
  wire axi4_tdfd_en;
  wire bvalid_c;
  wire [1:0]\bvalid_count_r_reg[2] ;
  wire \gaxi_bvalid_id_r.bvalid_r_reg ;
  wire \gaxi_full_sm.aw_ready_r_i_10_n_0 ;
  wire \gaxi_full_sm.aw_ready_r_i_11_n_0 ;
  wire \gaxi_full_sm.aw_ready_r_i_2_n_0 ;
  wire \gaxi_full_sm.aw_ready_r_i_4_n_0 ;
  wire \gaxi_full_sm.aw_ready_r_i_5_n_0 ;
  wire \gaxi_full_sm.aw_ready_r_i_6_n_0 ;
  wire \gaxi_full_sm.aw_ready_r_i_7_n_0 ;
  wire \gaxi_full_sm.aw_ready_r_i_8_n_0 ;
  wire \gaxi_full_sm.aw_ready_r_i_9_n_0 ;
  wire \gaxi_full_sm.present_state[0]_i_1__0_n_0 ;
  wire \gaxi_full_sm.present_state[0]_i_2__0_n_0 ;
  wire \gaxi_full_sm.present_state[0]_i_3_n_0 ;
  wire \gaxi_full_sm.present_state[0]_i_4_n_0 ;
  wire \gaxi_full_sm.present_state[1]_i_1__0_n_0 ;
  wire \gaxi_full_sm.present_state[1]_i_2__0_n_0 ;
  wire \gaxi_full_sm.present_state[1]_i_3__0_n_0 ;
  wire \gaxi_full_sm.present_state[1]_i_4_n_0 ;
  wire \gaxi_full_sm.present_state[1]_i_5_n_0 ;
  wire \gaxi_full_sm.w_ready_r_i_3_n_0 ;
  wire \gaxif_wlast_gen.awlen_cntr_r[7]_i_5_n_0 ;
  wire \gaxif_wlast_gen.awlen_cntr_r_reg[2] ;
  wire \gaxif_wlast_gen.awlen_cntr_r_reg[4] ;
  wire [0:0]\gaxif_wlast_gen.awlen_cntr_r_reg[7] ;
  wire [7:0]\gaxif_wlast_gen.awlen_cntr_r_reg[7]_0 ;
  wire p_6_in;
  wire [1:0]present_state;
  wire [31:0]s_axi4_awaddr;
  wire [7:0]s_axi4_awlen;
  wire s_axi4_awready;
  wire s_axi4_awvalid;
  wire s_axi4_bready;
  wire s_axi4_wready;
  wire s_axi4_wvalid;
  wire s_axi_aclk;
  wire s_axi_aresetn;
  wire w_last_c__7;
  wire w_ready_c;

  LUT1 #(
    .INIT(2'h1)) 
    IP2Bus_RdAck_i_1
       (.I0(s_axi_aresetn),
        .O(AS));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT3 #(
    .INIT(8'h69)) 
    \bvalid_count_r[1]_i_1 
       (.I0(Q[0]),
        .I1(bvalid_c),
        .I2(Q[1]),
        .O(\bvalid_count_r_reg[2] [0]));
  LUT6 #(
    .INIT(64'h00FFFFFFFE000000)) 
    \bvalid_count_r[2]_i_1 
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(\gaxi_bvalid_id_r.bvalid_r_reg ),
        .I4(s_axi4_bready),
        .I5(bvalid_c),
        .O(E));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT4 #(
    .INIT(16'h78E1)) 
    \bvalid_count_r[2]_i_2 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(bvalid_c),
        .O(\bvalid_count_r_reg[2] [1]));
  LUT2 #(
    .INIT(4'h8)) 
    \gaxi_bid_gen.axi_bid_array_reg_0_3_0_0_i_1 
       (.I0(axi4_tdfd_en),
        .I1(s_axi4_awready),
        .O(I68));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT3 #(
    .INIT(8'h28)) 
    \gaxi_bid_gen.bvalid_wr_cnt_r[1]_i_1 
       (.I0(p_6_in),
        .I1(present_state[1]),
        .I2(present_state[0]),
        .O(bvalid_c));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT5 #(
    .INIT(32'hCC55550F)) 
    \gaxi_full_sm.aw_ready_r_i_1 
       (.I0(\gaxi_full_sm.aw_ready_r_i_2_n_0 ),
        .I1(s_axi4_bready),
        .I2(axi4_tdfd_en),
        .I3(present_state[0]),
        .I4(present_state[1]),
        .O(aw_ready_c));
  LUT4 #(
    .INIT(16'h0001)) 
    \gaxi_full_sm.aw_ready_r_i_10 
       (.I0(s_axi4_awaddr[9]),
        .I1(s_axi4_awaddr[8]),
        .I2(s_axi4_awaddr[7]),
        .I3(s_axi4_awaddr[6]),
        .O(\gaxi_full_sm.aw_ready_r_i_10_n_0 ));
  LUT4 #(
    .INIT(16'h0008)) 
    \gaxi_full_sm.aw_ready_r_i_11 
       (.I0(s_axi4_awready),
        .I1(s_axi4_awvalid),
        .I2(s_axi4_awaddr[1]),
        .I3(s_axi4_awaddr[0]),
        .O(\gaxi_full_sm.aw_ready_r_i_11_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT5 #(
    .INIT(32'h10FFFFFF)) 
    \gaxi_full_sm.aw_ready_r_i_2 
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(w_last_c__7),
        .I4(s_axi4_wvalid),
        .O(\gaxi_full_sm.aw_ready_r_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h8000)) 
    \gaxi_full_sm.aw_ready_r_i_3 
       (.I0(\gaxi_full_sm.aw_ready_r_i_4_n_0 ),
        .I1(\gaxi_full_sm.aw_ready_r_i_5_n_0 ),
        .I2(\gaxi_full_sm.aw_ready_r_i_6_n_0 ),
        .I3(\gaxi_full_sm.aw_ready_r_i_7_n_0 ),
        .O(axi4_tdfd_en));
  LUT5 #(
    .INIT(32'h00010000)) 
    \gaxi_full_sm.aw_ready_r_i_4 
       (.I0(s_axi4_awaddr[26]),
        .I1(s_axi4_awaddr[27]),
        .I2(s_axi4_awaddr[28]),
        .I3(s_axi4_awaddr[29]),
        .I4(\gaxi_full_sm.aw_ready_r_i_8_n_0 ),
        .O(\gaxi_full_sm.aw_ready_r_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h00010000)) 
    \gaxi_full_sm.aw_ready_r_i_5 
       (.I0(s_axi4_awaddr[16]),
        .I1(s_axi4_awaddr[17]),
        .I2(s_axi4_awaddr[14]),
        .I3(s_axi4_awaddr[15]),
        .I4(\gaxi_full_sm.aw_ready_r_i_9_n_0 ),
        .O(\gaxi_full_sm.aw_ready_r_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0000001000000000)) 
    \gaxi_full_sm.aw_ready_r_i_6 
       (.I0(s_axi4_awaddr[10]),
        .I1(s_axi4_awaddr[11]),
        .I2(s_axi4_awaddr[12]),
        .I3(s_axi4_awaddr[13]),
        .I4(s_axi4_awaddr[30]),
        .I5(s_axi4_awaddr[31]),
        .O(\gaxi_full_sm.aw_ready_r_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0000000200000000)) 
    \gaxi_full_sm.aw_ready_r_i_7 
       (.I0(\gaxi_full_sm.aw_ready_r_i_10_n_0 ),
        .I1(s_axi4_awaddr[5]),
        .I2(s_axi4_awaddr[4]),
        .I3(s_axi4_awaddr[3]),
        .I4(s_axi4_awaddr[2]),
        .I5(\gaxi_full_sm.aw_ready_r_i_11_n_0 ),
        .O(\gaxi_full_sm.aw_ready_r_i_7_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \gaxi_full_sm.aw_ready_r_i_8 
       (.I0(s_axi4_awaddr[25]),
        .I1(s_axi4_awaddr[24]),
        .I2(s_axi4_awaddr[23]),
        .I3(s_axi4_awaddr[22]),
        .O(\gaxi_full_sm.aw_ready_r_i_8_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \gaxi_full_sm.aw_ready_r_i_9 
       (.I0(s_axi4_awaddr[21]),
        .I1(s_axi4_awaddr[20]),
        .I2(s_axi4_awaddr[19]),
        .I3(s_axi4_awaddr[18]),
        .O(\gaxi_full_sm.aw_ready_r_i_9_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \gaxi_full_sm.aw_ready_r_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(AS),
        .D(aw_ready_c),
        .Q(s_axi4_awready));
  LUT6 #(
    .INIT(64'hEFEFEFEEEFEEEFEE)) 
    \gaxi_full_sm.present_state[0]_i_1__0 
       (.I0(\gaxi_full_sm.present_state[1]_i_2__0_n_0 ),
        .I1(\gaxi_full_sm.present_state[0]_i_2__0_n_0 ),
        .I2(present_state[0]),
        .I3(\gaxi_full_sm.present_state[0]_i_3_n_0 ),
        .I4(s_axi4_wvalid),
        .I5(\gaxi_full_sm.present_state[1]_i_5_n_0 ),
        .O(\gaxi_full_sm.present_state[0]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h4044404444444044)) 
    \gaxi_full_sm.present_state[0]_i_2__0 
       (.I0(present_state[1]),
        .I1(present_state[0]),
        .I2(axi4_tdfd_en),
        .I3(p_6_in),
        .I4(Q[0]),
        .I5(\gaxi_full_sm.present_state[0]_i_4_n_0 ),
        .O(\gaxi_full_sm.present_state[0]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'h0808080808088808)) 
    \gaxi_full_sm.present_state[0]_i_3 
       (.I0(present_state[1]),
        .I1(s_axi4_wvalid),
        .I2(w_last_c__7),
        .I3(Q[0]),
        .I4(Q[1]),
        .I5(Q[2]),
        .O(\gaxi_full_sm.present_state[0]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \gaxi_full_sm.present_state[0]_i_4 
       (.I0(Q[2]),
        .I1(Q[1]),
        .O(\gaxi_full_sm.present_state[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hEFEEEFEFEFEEEFEE)) 
    \gaxi_full_sm.present_state[1]_i_1__0 
       (.I0(\gaxi_full_sm.present_state[1]_i_2__0_n_0 ),
        .I1(\gaxi_full_sm.present_state[1]_i_3__0_n_0 ),
        .I2(present_state[0]),
        .I3(\gaxi_full_sm.present_state[1]_i_4_n_0 ),
        .I4(s_axi4_wvalid),
        .I5(\gaxi_full_sm.present_state[1]_i_5_n_0 ),
        .O(\gaxi_full_sm.present_state[1]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \gaxi_full_sm.present_state[1]_i_2__0 
       (.I0(present_state[1]),
        .I1(present_state[0]),
        .I2(s_axi4_bready),
        .O(\gaxi_full_sm.present_state[1]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000004000)) 
    \gaxi_full_sm.present_state[1]_i_3__0 
       (.I0(present_state[1]),
        .I1(present_state[0]),
        .I2(p_6_in),
        .I3(Q[0]),
        .I4(Q[1]),
        .I5(Q[2]),
        .O(\gaxi_full_sm.present_state[1]_i_3__0_n_0 ));
  LUT6 #(
    .INIT(64'h505050505050D050)) 
    \gaxi_full_sm.present_state[1]_i_4 
       (.I0(s_axi4_wvalid),
        .I1(w_last_c__7),
        .I2(present_state[1]),
        .I3(Q[0]),
        .I4(Q[1]),
        .I5(Q[2]),
        .O(\gaxi_full_sm.present_state[1]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \gaxi_full_sm.present_state[1]_i_5 
       (.I0(axi4_tdfd_en),
        .I1(present_state[1]),
        .O(\gaxi_full_sm.present_state[1]_i_5_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \gaxi_full_sm.present_state_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(AS),
        .D(\gaxi_full_sm.present_state[0]_i_1__0_n_0 ),
        .Q(present_state[0]));
  FDCE #(
    .INIT(1'b0)) 
    \gaxi_full_sm.present_state_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(AS),
        .D(\gaxi_full_sm.present_state[1]_i_1__0_n_0 ),
        .Q(present_state[1]));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT4 #(
    .INIT(16'hFF14)) 
    \gaxi_full_sm.w_ready_r_i_1 
       (.I0(p_6_in),
        .I1(present_state[0]),
        .I2(present_state[1]),
        .I3(\gaxi_full_sm.w_ready_r_i_3_n_0 ),
        .O(w_ready_c));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \gaxi_full_sm.w_ready_r_i_2 
       (.I0(s_axi4_wvalid),
        .I1(w_last_c__7),
        .O(p_6_in));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT4 #(
    .INIT(16'h0070)) 
    \gaxi_full_sm.w_ready_r_i_3 
       (.I0(present_state[0]),
        .I1(\gaxi_full_sm.aw_ready_r_i_2_n_0 ),
        .I2(axi4_tdfd_en),
        .I3(present_state[1]),
        .O(\gaxi_full_sm.w_ready_r_i_3_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \gaxi_full_sm.w_ready_r_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(AS),
        .D(w_ready_c),
        .Q(s_axi4_wready));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT3 #(
    .INIT(8'h8B)) 
    \gaxif_wlast_gen.awlen_cntr_r[0]_i_1 
       (.I0(s_axi4_awlen[0]),
        .I1(\gaxi_full_sm.w_ready_r_i_3_n_0 ),
        .I2(\gaxif_wlast_gen.awlen_cntr_r_reg[7]_0 [0]),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT4 #(
    .INIT(16'hF909)) 
    \gaxif_wlast_gen.awlen_cntr_r[1]_i_1 
       (.I0(\gaxif_wlast_gen.awlen_cntr_r_reg[7]_0 [0]),
        .I1(\gaxif_wlast_gen.awlen_cntr_r_reg[7]_0 [1]),
        .I2(\gaxi_full_sm.w_ready_r_i_3_n_0 ),
        .I3(s_axi4_awlen[1]),
        .O(D[1]));
  LUT5 #(
    .INIT(32'hFFE100E1)) 
    \gaxif_wlast_gen.awlen_cntr_r[2]_i_1 
       (.I0(\gaxif_wlast_gen.awlen_cntr_r_reg[7]_0 [1]),
        .I1(\gaxif_wlast_gen.awlen_cntr_r_reg[7]_0 [0]),
        .I2(\gaxif_wlast_gen.awlen_cntr_r_reg[7]_0 [2]),
        .I3(\gaxi_full_sm.w_ready_r_i_3_n_0 ),
        .I4(s_axi4_awlen[2]),
        .O(D[2]));
  LUT6 #(
    .INIT(64'hFFFFAAA90000AAA9)) 
    \gaxif_wlast_gen.awlen_cntr_r[3]_i_1 
       (.I0(\gaxif_wlast_gen.awlen_cntr_r_reg[7]_0 [3]),
        .I1(\gaxif_wlast_gen.awlen_cntr_r_reg[7]_0 [2]),
        .I2(\gaxif_wlast_gen.awlen_cntr_r_reg[7]_0 [0]),
        .I3(\gaxif_wlast_gen.awlen_cntr_r_reg[7]_0 [1]),
        .I4(\gaxi_full_sm.w_ready_r_i_3_n_0 ),
        .I5(s_axi4_awlen[3]),
        .O(D[3]));
  LUT5 #(
    .INIT(32'hFFA900A9)) 
    \gaxif_wlast_gen.awlen_cntr_r[4]_i_1 
       (.I0(\gaxif_wlast_gen.awlen_cntr_r_reg[7]_0 [4]),
        .I1(\gaxif_wlast_gen.awlen_cntr_r_reg[2] ),
        .I2(\gaxif_wlast_gen.awlen_cntr_r_reg[7]_0 [3]),
        .I3(\gaxi_full_sm.w_ready_r_i_3_n_0 ),
        .I4(s_axi4_awlen[4]),
        .O(D[4]));
  LUT6 #(
    .INIT(64'hFFFFAAA90000AAA9)) 
    \gaxif_wlast_gen.awlen_cntr_r[5]_i_1 
       (.I0(\gaxif_wlast_gen.awlen_cntr_r_reg[7]_0 [5]),
        .I1(\gaxif_wlast_gen.awlen_cntr_r_reg[7]_0 [3]),
        .I2(\gaxif_wlast_gen.awlen_cntr_r_reg[2] ),
        .I3(\gaxif_wlast_gen.awlen_cntr_r_reg[7]_0 [4]),
        .I4(\gaxi_full_sm.w_ready_r_i_3_n_0 ),
        .I5(s_axi4_awlen[5]),
        .O(D[5]));
  LUT4 #(
    .INIT(16'hF909)) 
    \gaxif_wlast_gen.awlen_cntr_r[6]_i_1 
       (.I0(\gaxif_wlast_gen.awlen_cntr_r_reg[7]_0 [6]),
        .I1(\gaxif_wlast_gen.awlen_cntr_r_reg[4] ),
        .I2(\gaxi_full_sm.w_ready_r_i_3_n_0 ),
        .I3(s_axi4_awlen[6]),
        .O(D[6]));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT5 #(
    .INIT(32'hFFFFAEEA)) 
    \gaxif_wlast_gen.awlen_cntr_r[7]_i_1 
       (.I0(w_last_c__7),
        .I1(s_axi4_wvalid),
        .I2(present_state[1]),
        .I3(present_state[0]),
        .I4(\gaxi_full_sm.w_ready_r_i_3_n_0 ),
        .O(\gaxif_wlast_gen.awlen_cntr_r_reg[7] ));
  LUT5 #(
    .INIT(32'hFFA900A9)) 
    \gaxif_wlast_gen.awlen_cntr_r[7]_i_2 
       (.I0(\gaxif_wlast_gen.awlen_cntr_r_reg[7]_0 [7]),
        .I1(\gaxif_wlast_gen.awlen_cntr_r_reg[4] ),
        .I2(\gaxif_wlast_gen.awlen_cntr_r_reg[7]_0 [6]),
        .I3(\gaxi_full_sm.w_ready_r_i_3_n_0 ),
        .I4(s_axi4_awlen[7]),
        .O(D[7]));
  LUT4 #(
    .INIT(16'h0002)) 
    \gaxif_wlast_gen.awlen_cntr_r[7]_i_3 
       (.I0(\gaxif_wlast_gen.awlen_cntr_r[7]_i_5_n_0 ),
        .I1(\gaxif_wlast_gen.awlen_cntr_r_reg[7]_0 [1]),
        .I2(\gaxif_wlast_gen.awlen_cntr_r_reg[7]_0 [0]),
        .I3(\gaxif_wlast_gen.awlen_cntr_r_reg[7]_0 [2]),
        .O(w_last_c__7));
  LUT6 #(
    .INIT(64'h0000000000000010)) 
    \gaxif_wlast_gen.awlen_cntr_r[7]_i_5 
       (.I0(\gaxif_wlast_gen.awlen_cntr_r_reg[7]_0 [4]),
        .I1(\gaxif_wlast_gen.awlen_cntr_r_reg[7]_0 [5]),
        .I2(s_axi4_wvalid),
        .I3(\gaxif_wlast_gen.awlen_cntr_r_reg[7]_0 [3]),
        .I4(\gaxif_wlast_gen.awlen_cntr_r_reg[7]_0 [7]),
        .I5(\gaxif_wlast_gen.awlen_cntr_r_reg[7]_0 [6]),
        .O(\gaxif_wlast_gen.awlen_cntr_r[7]_i_5_n_0 ));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_write_wrapper
   (s_axi4_awready,
    AR,
    s_axi4_wready,
    \bvalid_count_r_reg[0]_0 ,
    s_axi4_bid,
    s_axi_aclk,
    s_axi_aresetn,
    s_axi4_bready,
    s_axi4_wvalid,
    s_axi4_awlen,
    s_axi4_awaddr,
    s_axi4_awvalid);
  output s_axi4_awready;
  output [0:0]AR;
  output s_axi4_wready;
  output \bvalid_count_r_reg[0]_0 ;
  output [0:0]s_axi4_bid;
  input s_axi_aclk;
  input s_axi_aresetn;
  input s_axi4_bready;
  input s_axi4_wvalid;
  input [7:0]s_axi4_awlen;
  input [31:0]s_axi4_awaddr;
  input s_axi4_awvalid;

  wire [0:0]AR;
  wire [1:0]CONV_INTEGER;
  wire axi_wr_fsm_n_13;
  wire axi_wr_fsm_n_14;
  wire axi_wr_fsm_n_15;
  wire axi_wr_fsm_n_16;
  wire bvalid_c;
  wire bvalid_count_r;
  wire \bvalid_count_r[0]_i_1_n_0 ;
  wire \bvalid_count_r_reg[0]_0 ;
  wire \bvalid_count_r_reg_n_0_[0] ;
  wire \bvalid_count_r_reg_n_0_[1] ;
  wire \bvalid_count_r_reg_n_0_[2] ;
  wire bvalid_d1_c;
  wire [1:0]bvalid_rd_cnt_r;
  wire [1:0]bvalid_wr_cnt_r;
  wire \gaxi_bid_gen.axi_bid_array_reg_0_3_0_0_n_0 ;
  wire \gaxi_bid_gen.bvalid_wr_cnt_r[0]_i_1_n_0 ;
  wire \gaxi_bid_gen.bvalid_wr_cnt_r[1]_i_2_n_0 ;
  wire \gaxi_bvalid_id_r.bvalid_r_i_1_n_0 ;
  wire \gaxif_wlast_gen.awlen_cntr_r[5]_i_2_n_0 ;
  wire \gaxif_wlast_gen.awlen_cntr_r[7]_i_4_n_0 ;
  wire [7:0]\gaxif_wlast_gen.awlen_cntr_r_reg__0 ;
  wire [7:0]p_0_in;
  wire [31:0]s_axi4_awaddr;
  wire [7:0]s_axi4_awlen;
  wire s_axi4_awready;
  wire s_axi4_awvalid;
  wire [0:0]s_axi4_bid;
  wire s_axi4_bready;
  wire s_axi4_wready;
  wire s_axi4_wvalid;
  wire s_axi_aclk;
  wire s_axi_aresetn;
  wire \NLW_gaxi_bid_gen.axi_bid_array_reg_0_3_0_0_SPO_UNCONNECTED ;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_write_fsm axi_wr_fsm
       (.AS(AR),
        .D(p_0_in),
        .E(bvalid_count_r),
        .I68(axi_wr_fsm_n_14),
        .Q({\bvalid_count_r_reg_n_0_[2] ,\bvalid_count_r_reg_n_0_[1] ,\bvalid_count_r_reg_n_0_[0] }),
        .bvalid_c(bvalid_c),
        .\bvalid_count_r_reg[2] ({axi_wr_fsm_n_15,axi_wr_fsm_n_16}),
        .\gaxi_bvalid_id_r.bvalid_r_reg (\bvalid_count_r_reg[0]_0 ),
        .\gaxif_wlast_gen.awlen_cntr_r_reg[2] (\gaxif_wlast_gen.awlen_cntr_r[5]_i_2_n_0 ),
        .\gaxif_wlast_gen.awlen_cntr_r_reg[4] (\gaxif_wlast_gen.awlen_cntr_r[7]_i_4_n_0 ),
        .\gaxif_wlast_gen.awlen_cntr_r_reg[7] (axi_wr_fsm_n_13),
        .\gaxif_wlast_gen.awlen_cntr_r_reg[7]_0 (\gaxif_wlast_gen.awlen_cntr_r_reg__0 ),
        .s_axi4_awaddr(s_axi4_awaddr),
        .s_axi4_awlen(s_axi4_awlen),
        .s_axi4_awready(s_axi4_awready),
        .s_axi4_awvalid(s_axi4_awvalid),
        .s_axi4_bready(s_axi4_bready),
        .s_axi4_wready(s_axi4_wready),
        .s_axi4_wvalid(s_axi4_wvalid),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_aresetn(s_axi_aresetn));
  LUT1 #(
    .INIT(2'h1)) 
    \bvalid_count_r[0]_i_1 
       (.I0(\bvalid_count_r_reg_n_0_[0] ),
        .O(\bvalid_count_r[0]_i_1_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \bvalid_count_r_reg[0] 
       (.C(s_axi_aclk),
        .CE(bvalid_count_r),
        .CLR(AR),
        .D(\bvalid_count_r[0]_i_1_n_0 ),
        .Q(\bvalid_count_r_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \bvalid_count_r_reg[1] 
       (.C(s_axi_aclk),
        .CE(bvalid_count_r),
        .CLR(AR),
        .D(axi_wr_fsm_n_16),
        .Q(\bvalid_count_r_reg_n_0_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \bvalid_count_r_reg[2] 
       (.C(s_axi_aclk),
        .CE(bvalid_count_r),
        .CLR(AR),
        .D(axi_wr_fsm_n_15),
        .Q(\bvalid_count_r_reg_n_0_[2] ));
  FDRE #(
    .INIT(1'b0)) 
    \gaxi_bid_gen.S_AXI_BID_reg[0] 
       (.C(s_axi_aclk),
        .CE(s_axi_aresetn),
        .D(\gaxi_bid_gen.axi_bid_array_reg_0_3_0_0_n_0 ),
        .Q(s_axi4_bid),
        .R(1'b0));
  (* XILINX_LEGACY_PRIM = "RAM16X1D" *) 
  RAM32X1D #(
    .INIT(32'h00000000)) 
    \gaxi_bid_gen.axi_bid_array_reg_0_3_0_0 
       (.A0(bvalid_wr_cnt_r[0]),
        .A1(bvalid_wr_cnt_r[1]),
        .A2(1'b0),
        .A3(1'b0),
        .A4(1'b0),
        .D(1'b0),
        .DPO(\gaxi_bid_gen.axi_bid_array_reg_0_3_0_0_n_0 ),
        .DPRA0(CONV_INTEGER[0]),
        .DPRA1(CONV_INTEGER[1]),
        .DPRA2(1'b0),
        .DPRA3(1'b0),
        .DPRA4(1'b0),
        .SPO(\NLW_gaxi_bid_gen.axi_bid_array_reg_0_3_0_0_SPO_UNCONNECTED ),
        .WCLK(s_axi_aclk),
        .WE(axi_wr_fsm_n_14));
  LUT3 #(
    .INIT(8'h6A)) 
    \gaxi_bid_gen.bvalid_rd_cnt_r[0]_i_1 
       (.I0(bvalid_rd_cnt_r[0]),
        .I1(s_axi4_bready),
        .I2(\bvalid_count_r_reg[0]_0 ),
        .O(CONV_INTEGER[0]));
  LUT4 #(
    .INIT(16'h7F80)) 
    \gaxi_bid_gen.bvalid_rd_cnt_r[1]_i_1 
       (.I0(bvalid_rd_cnt_r[0]),
        .I1(\bvalid_count_r_reg[0]_0 ),
        .I2(s_axi4_bready),
        .I3(bvalid_rd_cnt_r[1]),
        .O(CONV_INTEGER[1]));
  FDCE #(
    .INIT(1'b0)) 
    \gaxi_bid_gen.bvalid_rd_cnt_r_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(AR),
        .D(CONV_INTEGER[0]),
        .Q(bvalid_rd_cnt_r[0]));
  FDCE #(
    .INIT(1'b0)) 
    \gaxi_bid_gen.bvalid_rd_cnt_r_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(AR),
        .D(CONV_INTEGER[1]),
        .Q(bvalid_rd_cnt_r[1]));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \gaxi_bid_gen.bvalid_wr_cnt_r[0]_i_1 
       (.I0(bvalid_wr_cnt_r[0]),
        .O(\gaxi_bid_gen.bvalid_wr_cnt_r[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \gaxi_bid_gen.bvalid_wr_cnt_r[1]_i_2 
       (.I0(bvalid_wr_cnt_r[0]),
        .I1(bvalid_wr_cnt_r[1]),
        .O(\gaxi_bid_gen.bvalid_wr_cnt_r[1]_i_2_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \gaxi_bid_gen.bvalid_wr_cnt_r_reg[0] 
       (.C(s_axi_aclk),
        .CE(bvalid_c),
        .CLR(AR),
        .D(\gaxi_bid_gen.bvalid_wr_cnt_r[0]_i_1_n_0 ),
        .Q(bvalid_wr_cnt_r[0]));
  FDCE #(
    .INIT(1'b0)) 
    \gaxi_bid_gen.bvalid_wr_cnt_r_reg[1] 
       (.C(s_axi_aclk),
        .CE(bvalid_c),
        .CLR(AR),
        .D(\gaxi_bid_gen.bvalid_wr_cnt_r[1]_i_2_n_0 ),
        .Q(bvalid_wr_cnt_r[1]));
  FDCE #(
    .INIT(1'b0)) 
    \gaxi_bvalid_id_r.bvalid_d1_c_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(AR),
        .D(bvalid_c),
        .Q(bvalid_d1_c));
  LUT5 #(
    .INIT(32'hFFEFFF00)) 
    \gaxi_bvalid_id_r.bvalid_r_i_1 
       (.I0(\bvalid_count_r_reg_n_0_[2] ),
        .I1(\bvalid_count_r_reg_n_0_[1] ),
        .I2(s_axi4_bready),
        .I3(bvalid_d1_c),
        .I4(\bvalid_count_r_reg[0]_0 ),
        .O(\gaxi_bvalid_id_r.bvalid_r_i_1_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \gaxi_bvalid_id_r.bvalid_r_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(AR),
        .D(\gaxi_bvalid_id_r.bvalid_r_i_1_n_0 ),
        .Q(\bvalid_count_r_reg[0]_0 ));
  LUT3 #(
    .INIT(8'hFE)) 
    \gaxif_wlast_gen.awlen_cntr_r[5]_i_2 
       (.I0(\gaxif_wlast_gen.awlen_cntr_r_reg__0 [2]),
        .I1(\gaxif_wlast_gen.awlen_cntr_r_reg__0 [0]),
        .I2(\gaxif_wlast_gen.awlen_cntr_r_reg__0 [1]),
        .O(\gaxif_wlast_gen.awlen_cntr_r[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \gaxif_wlast_gen.awlen_cntr_r[7]_i_4 
       (.I0(\gaxif_wlast_gen.awlen_cntr_r_reg__0 [4]),
        .I1(\gaxif_wlast_gen.awlen_cntr_r_reg__0 [1]),
        .I2(\gaxif_wlast_gen.awlen_cntr_r_reg__0 [0]),
        .I3(\gaxif_wlast_gen.awlen_cntr_r_reg__0 [2]),
        .I4(\gaxif_wlast_gen.awlen_cntr_r_reg__0 [3]),
        .I5(\gaxif_wlast_gen.awlen_cntr_r_reg__0 [5]),
        .O(\gaxif_wlast_gen.awlen_cntr_r[7]_i_4_n_0 ));
  FDPE #(
    .INIT(1'b1)) 
    \gaxif_wlast_gen.awlen_cntr_r_reg[0] 
       (.C(s_axi_aclk),
        .CE(axi_wr_fsm_n_13),
        .D(p_0_in[0]),
        .PRE(AR),
        .Q(\gaxif_wlast_gen.awlen_cntr_r_reg__0 [0]));
  FDPE #(
    .INIT(1'b1)) 
    \gaxif_wlast_gen.awlen_cntr_r_reg[1] 
       (.C(s_axi_aclk),
        .CE(axi_wr_fsm_n_13),
        .D(p_0_in[1]),
        .PRE(AR),
        .Q(\gaxif_wlast_gen.awlen_cntr_r_reg__0 [1]));
  FDPE #(
    .INIT(1'b1)) 
    \gaxif_wlast_gen.awlen_cntr_r_reg[2] 
       (.C(s_axi_aclk),
        .CE(axi_wr_fsm_n_13),
        .D(p_0_in[2]),
        .PRE(AR),
        .Q(\gaxif_wlast_gen.awlen_cntr_r_reg__0 [2]));
  FDPE #(
    .INIT(1'b1)) 
    \gaxif_wlast_gen.awlen_cntr_r_reg[3] 
       (.C(s_axi_aclk),
        .CE(axi_wr_fsm_n_13),
        .D(p_0_in[3]),
        .PRE(AR),
        .Q(\gaxif_wlast_gen.awlen_cntr_r_reg__0 [3]));
  FDPE #(
    .INIT(1'b1)) 
    \gaxif_wlast_gen.awlen_cntr_r_reg[4] 
       (.C(s_axi_aclk),
        .CE(axi_wr_fsm_n_13),
        .D(p_0_in[4]),
        .PRE(AR),
        .Q(\gaxif_wlast_gen.awlen_cntr_r_reg__0 [4]));
  FDPE #(
    .INIT(1'b1)) 
    \gaxif_wlast_gen.awlen_cntr_r_reg[5] 
       (.C(s_axi_aclk),
        .CE(axi_wr_fsm_n_13),
        .D(p_0_in[5]),
        .PRE(AR),
        .Q(\gaxif_wlast_gen.awlen_cntr_r_reg__0 [5]));
  FDPE #(
    .INIT(1'b1)) 
    \gaxif_wlast_gen.awlen_cntr_r_reg[6] 
       (.C(s_axi_aclk),
        .CE(axi_wr_fsm_n_13),
        .D(p_0_in[6]),
        .PRE(AR),
        .Q(\gaxif_wlast_gen.awlen_cntr_r_reg__0 [6]));
  FDPE #(
    .INIT(1'b1)) 
    \gaxif_wlast_gen.awlen_cntr_r_reg[7] 
       (.C(s_axi_aclk),
        .CE(axi_wr_fsm_n_13),
        .D(p_0_in[7]),
        .PRE(AR),
        .Q(\gaxif_wlast_gen.awlen_cntr_r_reg__0 [7]));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axis_fg
   (\grxd.fg_rxd_wr_length_reg[3] ,
    empty_fwft_i,
    prog_full_i,
    \grxd.sig_rxd_prog_empty_d1_reg ,
    SR,
    \sig_ip2bus_data_reg[24] ,
    Q,
    \sig_ip2bus_data_reg[23] ,
    \sig_ip2bus_data_reg[22] ,
    \sig_ip2bus_data_reg[21] ,
    \sig_ip2bus_data_reg[20] ,
    \sig_ip2bus_data_reg[19] ,
    D,
    \sig_ip2bus_data_reg[17] ,
    \sig_ip2bus_data_reg[12] ,
    \sig_ip2bus_data_reg[13] ,
    \sig_ip2bus_data_reg[1] ,
    rx_complete,
    E,
    \grid.ar_id_r_reg[0] ,
    \gc0.count_reg[0] ,
    \gc0.count_reg[0]_0 ,
    axi_str_rxd_tready,
    sig_rxd_pe_event16_out,
    \sig_register_array_reg[0][2] ,
    \grxd.rx_partial_pkt_reg ,
    s_axi4_rdata,
    s_axi_aclk,
    axi_str_rxd_tdata,
    axis_rd_en__0,
    axi_str_rxd_tvalid,
    axi4_fifo_rd_en_i,
    axi_str_rxd_tlast,
    rx_len_wr_en,
    s_axi_aresetn,
    Axi_Str_TxD_AReset,
    \GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9] ,
    out,
    \goreg_dm.dout_i_reg[18] ,
    \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3] ,
    sig_rx_channel_reset_reg,
    \sig_register_array_reg[1][1] ,
    \GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9]_0 ,
    \GEN_BKEND_CE_REGISTERS[6].ce_out_i_reg[6] ,
    \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0] ,
    sig_rx_channel_reset_reg_0,
    sig_Bus2IP_RdCE,
    \grxd.rx_partial_pkt_reg_0 ,
    s_axi4_araddr,
    \s_axi4_araddr[18] ,
    \s_axi4_araddr[22] ,
    sig_rxd_prog_empty_d1,
    sig_rd_rlen_reg,
    in0,
    \GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg[7] ,
    \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3]_0 );
  output \grxd.fg_rxd_wr_length_reg[3] ;
  output empty_fwft_i;
  output prog_full_i;
  output \grxd.sig_rxd_prog_empty_d1_reg ;
  output [0:0]SR;
  output \sig_ip2bus_data_reg[24] ;
  output [12:0]Q;
  output \sig_ip2bus_data_reg[23] ;
  output \sig_ip2bus_data_reg[22] ;
  output \sig_ip2bus_data_reg[21] ;
  output \sig_ip2bus_data_reg[20] ;
  output \sig_ip2bus_data_reg[19] ;
  output [7:0]D;
  output \sig_ip2bus_data_reg[17] ;
  output \sig_ip2bus_data_reg[12] ;
  output \sig_ip2bus_data_reg[13] ;
  output \sig_ip2bus_data_reg[1] ;
  output rx_complete;
  output [0:0]E;
  output \grid.ar_id_r_reg[0] ;
  output \gc0.count_reg[0] ;
  output \gc0.count_reg[0]_0 ;
  output axi_str_rxd_tready;
  output sig_rxd_pe_event16_out;
  output \sig_register_array_reg[0][2] ;
  output \grxd.rx_partial_pkt_reg ;
  output [127:0]s_axi4_rdata;
  input s_axi_aclk;
  input [127:0]axi_str_rxd_tdata;
  input axis_rd_en__0;
  input axi_str_rxd_tvalid;
  input axi4_fifo_rd_en_i;
  input axi_str_rxd_tlast;
  input rx_len_wr_en;
  input s_axi_aresetn;
  input Axi_Str_TxD_AReset;
  input \GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9] ;
  input out;
  input [3:0]\goreg_dm.dout_i_reg[18] ;
  input \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3] ;
  input sig_rx_channel_reset_reg;
  input [3:0]\sig_register_array_reg[1][1] ;
  input \GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9]_0 ;
  input \GEN_BKEND_CE_REGISTERS[6].ce_out_i_reg[6] ;
  input \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0] ;
  input sig_rx_channel_reset_reg_0;
  input [0:0]sig_Bus2IP_RdCE;
  input \grxd.rx_partial_pkt_reg_0 ;
  input [17:0]s_axi4_araddr;
  input \s_axi4_araddr[18] ;
  input \s_axi4_araddr[22] ;
  input sig_rxd_prog_empty_d1;
  input sig_rd_rlen_reg;
  input in0;
  input \GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg[7] ;
  input \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3]_0 ;

  wire Axi_Str_TxD_AReset;
  wire [7:0]D;
  wire [0:0]E;
  wire \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0] ;
  wire \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3] ;
  wire \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3]_0 ;
  wire \GEN_BKEND_CE_REGISTERS[6].ce_out_i_reg[6] ;
  wire \GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg[7] ;
  wire \GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9] ;
  wire \GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9]_0 ;
  wire [12:0]Q;
  wire [0:0]SR;
  wire axi4_fifo_rd_en_i;
  wire [127:0]axi_str_rxd_tdata;
  wire axi_str_rxd_tlast;
  wire axi_str_rxd_tready;
  wire axi_str_rxd_tvalid;
  wire axis_rd_en__0;
  wire empty_fwft_i;
  wire \gc0.count_reg[0] ;
  wire \gc0.count_reg[0]_0 ;
  wire [3:0]\goreg_dm.dout_i_reg[18] ;
  wire \grid.ar_id_r_reg[0] ;
  wire \grxd.fg_rxd_wr_length_reg[3] ;
  wire \grxd.rx_partial_pkt_reg ;
  wire \grxd.rx_partial_pkt_reg_0 ;
  wire \grxd.sig_rxd_prog_empty_d1_reg ;
  wire in0;
  wire out;
  wire prog_full_i;
  wire rx_complete;
  wire rx_len_wr_en;
  wire s_aresetn;
  wire [17:0]s_axi4_araddr;
  wire \s_axi4_araddr[18] ;
  wire \s_axi4_araddr[22] ;
  wire [127:0]s_axi4_rdata;
  wire s_axi_aclk;
  wire s_axi_aresetn;
  wire [0:0]sig_Bus2IP_RdCE;
  wire \sig_ip2bus_data_reg[12] ;
  wire \sig_ip2bus_data_reg[13] ;
  wire \sig_ip2bus_data_reg[17] ;
  wire \sig_ip2bus_data_reg[19] ;
  wire \sig_ip2bus_data_reg[1] ;
  wire \sig_ip2bus_data_reg[20] ;
  wire \sig_ip2bus_data_reg[21] ;
  wire \sig_ip2bus_data_reg[22] ;
  wire \sig_ip2bus_data_reg[23] ;
  wire \sig_ip2bus_data_reg[24] ;
  wire sig_rd_rlen_reg;
  wire \sig_register_array_reg[0][2] ;
  wire [3:0]\sig_register_array_reg[1][1] ;
  wire sig_rx_channel_reset_reg;
  wire sig_rx_channel_reset_reg_0;
  wire sig_rxd_pe_event16_out;
  wire sig_rxd_prog_empty_d1;
  wire sync_areset_n;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_0_4 COMP_FIFO
       (.Axi_Str_TxD_AReset(Axi_Str_TxD_AReset),
        .D(D),
        .E(E),
        .\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0] (\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0] ),
        .\GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3] (\GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3] ),
        .\GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3]_0 (\GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3]_0 ),
        .\GEN_BKEND_CE_REGISTERS[6].ce_out_i_reg[6] (\GEN_BKEND_CE_REGISTERS[6].ce_out_i_reg[6] ),
        .\GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg[7] (\GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg[7] ),
        .\GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9] (\GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9] ),
        .\GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9]_0 (\GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9]_0 ),
        .Q(Q),
        .SR(SR),
        .axi4_fifo_rd_en_i(axi4_fifo_rd_en_i),
        .axi_str_rxd_tdata(axi_str_rxd_tdata),
        .axi_str_rxd_tlast(axi_str_rxd_tlast),
        .axi_str_rxd_tready(axi_str_rxd_tready),
        .axi_str_rxd_tvalid(axi_str_rxd_tvalid),
        .axis_rd_en__0(axis_rd_en__0),
        .empty_fwft_i(empty_fwft_i),
        .\gc0.count_reg[0] (\gc0.count_reg[0] ),
        .\gc0.count_reg[0]_0 (\gc0.count_reg[0]_0 ),
        .\goreg_dm.dout_i_reg[18] (\goreg_dm.dout_i_reg[18] ),
        .\grid.ar_id_r_reg[0] (\grid.ar_id_r_reg[0] ),
        .\grxd.fg_rxd_wr_length_reg[3] (\grxd.fg_rxd_wr_length_reg[3] ),
        .\grxd.rx_partial_pkt_reg (\grxd.rx_partial_pkt_reg ),
        .\grxd.rx_partial_pkt_reg_0 (\grxd.rx_partial_pkt_reg_0 ),
        .\grxd.sig_rxd_prog_empty_d1_reg (\grxd.sig_rxd_prog_empty_d1_reg ),
        .in0(in0),
        .out(out),
        .prog_full_i(prog_full_i),
        .rx_complete(rx_complete),
        .rx_len_wr_en(rx_len_wr_en),
        .s_axi4_araddr(s_axi4_araddr),
        .\s_axi4_araddr[18] (\s_axi4_araddr[18] ),
        .\s_axi4_araddr[22] (\s_axi4_araddr[22] ),
        .s_axi4_rdata(s_axi4_rdata),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_aresetn(s_axi_aresetn),
        .sig_Bus2IP_RdCE(sig_Bus2IP_RdCE),
        .\sig_ip2bus_data_reg[12] (\sig_ip2bus_data_reg[12] ),
        .\sig_ip2bus_data_reg[13] (\sig_ip2bus_data_reg[13] ),
        .\sig_ip2bus_data_reg[17] (\sig_ip2bus_data_reg[17] ),
        .\sig_ip2bus_data_reg[19] (\sig_ip2bus_data_reg[19] ),
        .\sig_ip2bus_data_reg[1] (\sig_ip2bus_data_reg[1] ),
        .\sig_ip2bus_data_reg[20] (\sig_ip2bus_data_reg[20] ),
        .\sig_ip2bus_data_reg[21] (\sig_ip2bus_data_reg[21] ),
        .\sig_ip2bus_data_reg[22] (\sig_ip2bus_data_reg[22] ),
        .\sig_ip2bus_data_reg[23] (\sig_ip2bus_data_reg[23] ),
        .\sig_ip2bus_data_reg[24] (\sig_ip2bus_data_reg[24] ),
        .sig_rd_rlen_reg(sig_rd_rlen_reg),
        .\sig_register_array_reg[0][2] (\sig_register_array_reg[0][2] ),
        .\sig_register_array_reg[1][1] (\sig_register_array_reg[1][1] ),
        .sig_rx_channel_reset_reg(sig_rx_channel_reset_reg),
        .sig_rx_channel_reset_reg_0(sig_rx_channel_reset_reg_0),
        .sig_rxd_pe_event16_out(sig_rxd_pe_event16_out),
        .sig_rxd_prog_empty_d1(sig_rxd_prog_empty_d1),
        .sync_areset_n(sync_areset_n));
  LUT3 #(
    .INIT(8'h10)) 
    sync_areset_n_i_1
       (.I0(sig_rx_channel_reset_reg_0),
        .I1(Axi_Str_TxD_AReset),
        .I2(s_axi_aresetn),
        .O(s_aresetn));
  FDRE sync_areset_n_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_aresetn),
        .Q(sync_areset_n),
        .R(1'b0));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo
   (ram_full_i,
    empty_fwft_i,
    prog_full_i,
    \grxd.sig_rxd_prog_empty_d1_reg ,
    SR,
    \sig_ip2bus_data_reg[24] ,
    Q,
    \sig_ip2bus_data_reg[23] ,
    \sig_ip2bus_data_reg[22] ,
    \sig_ip2bus_data_reg[21] ,
    \sig_ip2bus_data_reg[20] ,
    \sig_ip2bus_data_reg[19] ,
    D,
    \sig_ip2bus_data_reg[17] ,
    \sig_ip2bus_data_reg[12] ,
    \sig_ip2bus_data_reg[13] ,
    \sig_ip2bus_data_reg[1] ,
    rx_complete,
    E,
    \grid.ar_id_r_reg[0] ,
    \gc0.count_reg[0] ,
    \gc0.count_reg[0]_0 ,
    axi_str_rxd_tready,
    sig_rxd_pe_event16_out,
    \sig_register_array_reg[0][2] ,
    \grxd.rx_partial_pkt_reg ,
    s_axi4_rdata,
    s_axi_aclk,
    axi_str_rxd_tdata,
    axis_rd_en__0,
    axi_str_rxd_tvalid,
    axi4_fifo_rd_en_i,
    axi_str_rxd_tlast,
    rx_len_wr_en,
    s_axi_aresetn,
    Axi_Str_TxD_AReset,
    \GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9] ,
    out,
    \goreg_dm.dout_i_reg[18] ,
    \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3] ,
    sig_rx_channel_reset_reg,
    \sig_register_array_reg[1][1] ,
    \GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9]_0 ,
    \GEN_BKEND_CE_REGISTERS[6].ce_out_i_reg[6] ,
    \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0] ,
    sig_rx_channel_reset_reg_0,
    sig_Bus2IP_RdCE,
    \grxd.rx_partial_pkt_reg_0 ,
    s_axi4_araddr,
    \s_axi4_araddr[18] ,
    \s_axi4_araddr[22] ,
    sig_rxd_prog_empty_d1,
    sig_rd_rlen_reg,
    in0,
    \GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg[7] ,
    \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3]_0 );
  output ram_full_i;
  output empty_fwft_i;
  output prog_full_i;
  output \grxd.sig_rxd_prog_empty_d1_reg ;
  output [0:0]SR;
  output \sig_ip2bus_data_reg[24] ;
  output [12:0]Q;
  output \sig_ip2bus_data_reg[23] ;
  output \sig_ip2bus_data_reg[22] ;
  output \sig_ip2bus_data_reg[21] ;
  output \sig_ip2bus_data_reg[20] ;
  output \sig_ip2bus_data_reg[19] ;
  output [7:0]D;
  output \sig_ip2bus_data_reg[17] ;
  output \sig_ip2bus_data_reg[12] ;
  output \sig_ip2bus_data_reg[13] ;
  output \sig_ip2bus_data_reg[1] ;
  output rx_complete;
  output [0:0]E;
  output \grid.ar_id_r_reg[0] ;
  output \gc0.count_reg[0] ;
  output \gc0.count_reg[0]_0 ;
  output axi_str_rxd_tready;
  output sig_rxd_pe_event16_out;
  output \sig_register_array_reg[0][2] ;
  output \grxd.rx_partial_pkt_reg ;
  output [127:0]s_axi4_rdata;
  input s_axi_aclk;
  input [127:0]axi_str_rxd_tdata;
  input axis_rd_en__0;
  input axi_str_rxd_tvalid;
  input axi4_fifo_rd_en_i;
  input axi_str_rxd_tlast;
  input rx_len_wr_en;
  input s_axi_aresetn;
  input Axi_Str_TxD_AReset;
  input \GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9] ;
  input out;
  input [3:0]\goreg_dm.dout_i_reg[18] ;
  input \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3] ;
  input sig_rx_channel_reset_reg;
  input [3:0]\sig_register_array_reg[1][1] ;
  input \GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9]_0 ;
  input \GEN_BKEND_CE_REGISTERS[6].ce_out_i_reg[6] ;
  input \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0] ;
  input sig_rx_channel_reset_reg_0;
  input [0:0]sig_Bus2IP_RdCE;
  input \grxd.rx_partial_pkt_reg_0 ;
  input [17:0]s_axi4_araddr;
  input \s_axi4_araddr[18] ;
  input \s_axi4_araddr[22] ;
  input sig_rxd_prog_empty_d1;
  input sig_rd_rlen_reg;
  input in0;
  input \GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg[7] ;
  input \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3]_0 ;

  wire Axi_Str_TxD_AReset;
  wire [7:0]D;
  wire [0:0]E;
  wire \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0] ;
  wire \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3] ;
  wire \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3]_0 ;
  wire \GEN_BKEND_CE_REGISTERS[6].ce_out_i_reg[6] ;
  wire \GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg[7] ;
  wire \GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9] ;
  wire \GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9]_0 ;
  wire [12:0]Q;
  wire [0:0]SR;
  wire axi4_fifo_rd_en_i;
  wire [127:0]axi_str_rxd_tdata;
  wire axi_str_rxd_tlast;
  wire axi_str_rxd_tready;
  wire axi_str_rxd_tvalid;
  wire axis_rd_en__0;
  wire empty_fwft_i;
  wire \gc0.count_reg[0] ;
  wire \gc0.count_reg[0]_0 ;
  wire [3:0]\goreg_dm.dout_i_reg[18] ;
  wire \grid.ar_id_r_reg[0] ;
  wire \grxd.rx_partial_pkt_reg ;
  wire \grxd.rx_partial_pkt_reg_0 ;
  wire \grxd.sig_rxd_prog_empty_d1_reg ;
  wire in0;
  wire out;
  wire prog_full_i;
  wire ram_full_i;
  wire rx_complete;
  wire rx_len_wr_en;
  wire [17:0]s_axi4_araddr;
  wire \s_axi4_araddr[18] ;
  wire \s_axi4_araddr[22] ;
  wire [127:0]s_axi4_rdata;
  wire s_axi_aclk;
  wire s_axi_aresetn;
  wire [0:0]sig_Bus2IP_RdCE;
  wire \sig_ip2bus_data_reg[12] ;
  wire \sig_ip2bus_data_reg[13] ;
  wire \sig_ip2bus_data_reg[17] ;
  wire \sig_ip2bus_data_reg[19] ;
  wire \sig_ip2bus_data_reg[1] ;
  wire \sig_ip2bus_data_reg[20] ;
  wire \sig_ip2bus_data_reg[21] ;
  wire \sig_ip2bus_data_reg[22] ;
  wire \sig_ip2bus_data_reg[23] ;
  wire \sig_ip2bus_data_reg[24] ;
  wire sig_rd_rlen_reg;
  wire \sig_register_array_reg[0][2] ;
  wire [3:0]\sig_register_array_reg[1][1] ;
  wire sig_rx_channel_reset_reg;
  wire sig_rx_channel_reset_reg_0;
  wire sig_rxd_pe_event16_out;
  wire sig_rxd_prog_empty_d1;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axis_fg \gfifo_gen.COMP_AXIS_FG_FIFO 
       (.Axi_Str_TxD_AReset(Axi_Str_TxD_AReset),
        .D(D),
        .E(E),
        .\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0] (\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0] ),
        .\GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3] (\GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3] ),
        .\GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3]_0 (\GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3]_0 ),
        .\GEN_BKEND_CE_REGISTERS[6].ce_out_i_reg[6] (\GEN_BKEND_CE_REGISTERS[6].ce_out_i_reg[6] ),
        .\GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg[7] (\GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg[7] ),
        .\GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9] (\GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9] ),
        .\GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9]_0 (\GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9]_0 ),
        .Q(Q),
        .SR(SR),
        .axi4_fifo_rd_en_i(axi4_fifo_rd_en_i),
        .axi_str_rxd_tdata(axi_str_rxd_tdata),
        .axi_str_rxd_tlast(axi_str_rxd_tlast),
        .axi_str_rxd_tready(axi_str_rxd_tready),
        .axi_str_rxd_tvalid(axi_str_rxd_tvalid),
        .axis_rd_en__0(axis_rd_en__0),
        .empty_fwft_i(empty_fwft_i),
        .\gc0.count_reg[0] (\gc0.count_reg[0] ),
        .\gc0.count_reg[0]_0 (\gc0.count_reg[0]_0 ),
        .\goreg_dm.dout_i_reg[18] (\goreg_dm.dout_i_reg[18] ),
        .\grid.ar_id_r_reg[0] (\grid.ar_id_r_reg[0] ),
        .\grxd.fg_rxd_wr_length_reg[3] (ram_full_i),
        .\grxd.rx_partial_pkt_reg (\grxd.rx_partial_pkt_reg ),
        .\grxd.rx_partial_pkt_reg_0 (\grxd.rx_partial_pkt_reg_0 ),
        .\grxd.sig_rxd_prog_empty_d1_reg (\grxd.sig_rxd_prog_empty_d1_reg ),
        .in0(in0),
        .out(out),
        .prog_full_i(prog_full_i),
        .rx_complete(rx_complete),
        .rx_len_wr_en(rx_len_wr_en),
        .s_axi4_araddr(s_axi4_araddr),
        .\s_axi4_araddr[18] (\s_axi4_araddr[18] ),
        .\s_axi4_araddr[22] (\s_axi4_araddr[22] ),
        .s_axi4_rdata(s_axi4_rdata),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_aresetn(s_axi_aresetn),
        .sig_Bus2IP_RdCE(sig_Bus2IP_RdCE),
        .\sig_ip2bus_data_reg[12] (\sig_ip2bus_data_reg[12] ),
        .\sig_ip2bus_data_reg[13] (\sig_ip2bus_data_reg[13] ),
        .\sig_ip2bus_data_reg[17] (\sig_ip2bus_data_reg[17] ),
        .\sig_ip2bus_data_reg[19] (\sig_ip2bus_data_reg[19] ),
        .\sig_ip2bus_data_reg[1] (\sig_ip2bus_data_reg[1] ),
        .\sig_ip2bus_data_reg[20] (\sig_ip2bus_data_reg[20] ),
        .\sig_ip2bus_data_reg[21] (\sig_ip2bus_data_reg[21] ),
        .\sig_ip2bus_data_reg[22] (\sig_ip2bus_data_reg[22] ),
        .\sig_ip2bus_data_reg[23] (\sig_ip2bus_data_reg[23] ),
        .\sig_ip2bus_data_reg[24] (\sig_ip2bus_data_reg[24] ),
        .sig_rd_rlen_reg(sig_rd_rlen_reg),
        .\sig_register_array_reg[0][2] (\sig_register_array_reg[0][2] ),
        .\sig_register_array_reg[1][1] (\sig_register_array_reg[1][1] ),
        .sig_rx_channel_reset_reg(sig_rx_channel_reset_reg),
        .sig_rx_channel_reset_reg_0(sig_rx_channel_reset_reg_0),
        .sig_rxd_pe_event16_out(sig_rxd_pe_event16_out),
        .sig_rxd_prog_empty_d1(sig_rxd_prog_empty_d1));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ipic2axi_s
   (sig_rxd_reset,
    out,
    s_axi_arready,
    s_axi_wready,
    empty_fwft_i,
    sig_rxd_prog_empty_d1,
    p_8_out,
    prog_full_i,
    IPIC_STATE,
    rst_d1_reg,
    cs_ce_clr,
    \sig_register_array[0]1_in ,
    \sig_ip2bus_data_reg[25]_0 ,
    Q,
    \sig_ip2bus_data_reg[24]_0 ,
    \sig_ip2bus_data_reg[23]_0 ,
    \sig_ip2bus_data_reg[22]_0 ,
    \sig_ip2bus_data_reg[21]_0 ,
    \sig_ip2bus_data_reg[20]_0 ,
    \sig_ip2bus_data_reg[19]_0 ,
    \sig_ip2bus_data_reg[12]_0 ,
    \sig_ip2bus_data_reg[1]_0 ,
    \grid.ar_id_r_reg[0] ,
    \gc0.count_reg[0] ,
    \gc0.count_reg[0]_0 ,
    axi_str_rxd_tready,
    s2mm_prmry_reset_out_n,
    sig_str_rst_reg_0,
    mm2s_prmry_reset_out_n,
    eqOp__6,
    \sig_register_array_reg[0][2]_0 ,
    interrupt,
    \sig_ip2bus_data_reg[0]_0 ,
    \sig_register_array_reg[0][12]_0 ,
    \sig_register_array_reg[0][11]_0 ,
    \sig_register_array_reg[0][5]_0 ,
    \sig_register_array_reg[0][2]_1 ,
    \sig_register_array_reg[0][8]_0 ,
    \sig_register_array_reg[0][7]_0 ,
    s_axi4_rdata,
    \sig_ip2bus_data_reg[9]_0 ,
    \s_axi_rdata_i_reg[31] ,
    s_axi_aclk,
    axi_str_rxd_tdata,
    AS,
    bus2ip_rnw_i_reg,
    SR,
    bus2ip_rnw_i_reg_0,
    \GEN_BKEND_CE_REGISTERS[4].ce_out_i_reg[4] ,
    sig_rd_rlen,
    sig_Bus2IP_CS,
    sig_rx_channel_reset_reg_0,
    s_axi_aresetn,
    axis_rd_en__0,
    axi_str_rxd_tvalid,
    axi4_fifo_rd_en_i,
    axi_str_rxd_tlast,
    \GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9] ,
    D,
    \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3] ,
    sig_rx_channel_reset_reg_1,
    \GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9]_0 ,
    \GEN_BKEND_CE_REGISTERS[6].ce_out_i_reg[6] ,
    \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0] ,
    sig_Bus2IP_RdCE,
    s_axi4_araddr,
    \s_axi4_araddr[18] ,
    \s_axi4_araddr[22] ,
    s_axi_wdata,
    empty_fwft_i_reg,
    \GEN_BKEND_CE_REGISTERS[4].ce_out_i_reg[4]_0 ,
    \GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg[7] ,
    \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3]_0 ,
    \sig_register_array[0]0_out ,
    \MEM_DECODE_GEN[0].cs_out_i_reg[0] ,
    \sig_register_array[0]12_out ,
    Bus_RNW_reg_reg,
    Bus_RNW_reg_reg_0,
    sig_Bus2IP_WrCE,
    \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0 ,
    \GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg[10] ,
    \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_1 ,
    \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1] ,
    \GEN_BKEND_CE_REGISTERS[4].ce_out_i_reg[4]_1 ,
    IPIC_STATE_reg_0,
    \GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg[10]_0 ,
    Bus_RNW_reg_reg_1,
    \GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg[10]_1 ,
    \gpfs.prog_full_i_reg ,
    \gpes.prog_empty_i_reg ,
    E,
    Bus_RNW_reg_reg_2);
  output sig_rxd_reset;
  output out;
  output s_axi_arready;
  output s_axi_wready;
  output empty_fwft_i;
  output sig_rxd_prog_empty_d1;
  output p_8_out;
  output prog_full_i;
  output IPIC_STATE;
  output rst_d1_reg;
  output cs_ce_clr;
  output \sig_register_array[0]1_in ;
  output \sig_ip2bus_data_reg[25]_0 ;
  output [10:0]Q;
  output \sig_ip2bus_data_reg[24]_0 ;
  output \sig_ip2bus_data_reg[23]_0 ;
  output \sig_ip2bus_data_reg[22]_0 ;
  output \sig_ip2bus_data_reg[21]_0 ;
  output \sig_ip2bus_data_reg[20]_0 ;
  output \sig_ip2bus_data_reg[19]_0 ;
  output \sig_ip2bus_data_reg[12]_0 ;
  output \sig_ip2bus_data_reg[1]_0 ;
  output \grid.ar_id_r_reg[0] ;
  output \gc0.count_reg[0] ;
  output \gc0.count_reg[0]_0 ;
  output axi_str_rxd_tready;
  output s2mm_prmry_reset_out_n;
  output sig_str_rst_reg_0;
  output mm2s_prmry_reset_out_n;
  output eqOp__6;
  output \sig_register_array_reg[0][2]_0 ;
  output interrupt;
  output [8:0]\sig_ip2bus_data_reg[0]_0 ;
  output \sig_register_array_reg[0][12]_0 ;
  output \sig_register_array_reg[0][11]_0 ;
  output \sig_register_array_reg[0][5]_0 ;
  output \sig_register_array_reg[0][2]_1 ;
  output \sig_register_array_reg[0][8]_0 ;
  output \sig_register_array_reg[0][7]_0 ;
  output [127:0]s_axi4_rdata;
  output [11:0]\sig_ip2bus_data_reg[9]_0 ;
  output [31:0]\s_axi_rdata_i_reg[31] ;
  input s_axi_aclk;
  input [127:0]axi_str_rxd_tdata;
  input [0:0]AS;
  input bus2ip_rnw_i_reg;
  input [0:0]SR;
  input bus2ip_rnw_i_reg_0;
  input \GEN_BKEND_CE_REGISTERS[4].ce_out_i_reg[4] ;
  input sig_rd_rlen;
  input sig_Bus2IP_CS;
  input sig_rx_channel_reset_reg_0;
  input s_axi_aresetn;
  input axis_rd_en__0;
  input axi_str_rxd_tvalid;
  input axi4_fifo_rd_en_i;
  input axi_str_rxd_tlast;
  input \GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9] ;
  input [17:0]D;
  input \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3] ;
  input sig_rx_channel_reset_reg_1;
  input \GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9]_0 ;
  input \GEN_BKEND_CE_REGISTERS[6].ce_out_i_reg[6] ;
  input \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0] ;
  input [0:0]sig_Bus2IP_RdCE;
  input [17:0]s_axi4_araddr;
  input \s_axi4_araddr[18] ;
  input \s_axi4_araddr[22] ;
  input [10:0]s_axi_wdata;
  input empty_fwft_i_reg;
  input \GEN_BKEND_CE_REGISTERS[4].ce_out_i_reg[4]_0 ;
  input \GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg[7] ;
  input \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3]_0 ;
  input [0:0]\sig_register_array[0]0_out ;
  input \MEM_DECODE_GEN[0].cs_out_i_reg[0] ;
  input \sig_register_array[0]12_out ;
  input Bus_RNW_reg_reg;
  input Bus_RNW_reg_reg_0;
  input [2:0]sig_Bus2IP_WrCE;
  input \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0 ;
  input \GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg[10] ;
  input \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_1 ;
  input \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1] ;
  input \GEN_BKEND_CE_REGISTERS[4].ce_out_i_reg[4]_1 ;
  input IPIC_STATE_reg_0;
  input \GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg[10]_0 ;
  input Bus_RNW_reg_reg_1;
  input \GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg[10]_1 ;
  input \gpfs.prog_full_i_reg ;
  input \gpes.prog_empty_i_reg ;
  input [0:0]E;
  input [12:0]Bus_RNW_reg_reg_2;

  wire [0:0]AS;
  wire Axi_Str_TxD_AReset;
  wire Bus_RNW_reg_reg;
  wire Bus_RNW_reg_reg_0;
  wire Bus_RNW_reg_reg_1;
  wire [12:0]Bus_RNW_reg_reg_2;
  wire [17:0]D;
  wire [0:0]E;
  wire \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0] ;
  wire \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0 ;
  wire \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_1 ;
  wire \GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg[10] ;
  wire \GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg[10]_0 ;
  wire \GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg[10]_1 ;
  wire \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1] ;
  wire \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3] ;
  wire \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3]_0 ;
  wire \GEN_BKEND_CE_REGISTERS[4].ce_out_i_reg[4] ;
  wire \GEN_BKEND_CE_REGISTERS[4].ce_out_i_reg[4]_0 ;
  wire \GEN_BKEND_CE_REGISTERS[4].ce_out_i_reg[4]_1 ;
  wire \GEN_BKEND_CE_REGISTERS[6].ce_out_i_reg[6] ;
  wire \GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg[7] ;
  wire \GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9] ;
  wire \GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9]_0 ;
  wire IPIC_STATE;
  wire IPIC_STATE_reg_0;
  wire \MEM_DECODE_GEN[0].cs_out_i_reg[0] ;
  wire [10:0]Q;
  wire [0:0]SR;
  wire \_inferred__0/i__carry__0_n_0 ;
  wire \_inferred__0/i__carry__0_n_1 ;
  wire \_inferred__0/i__carry__0_n_10 ;
  wire \_inferred__0/i__carry__0_n_11 ;
  wire \_inferred__0/i__carry__0_n_12 ;
  wire \_inferred__0/i__carry__0_n_13 ;
  wire \_inferred__0/i__carry__0_n_14 ;
  wire \_inferred__0/i__carry__0_n_15 ;
  wire \_inferred__0/i__carry__0_n_2 ;
  wire \_inferred__0/i__carry__0_n_3 ;
  wire \_inferred__0/i__carry__0_n_5 ;
  wire \_inferred__0/i__carry__0_n_6 ;
  wire \_inferred__0/i__carry__0_n_7 ;
  wire \_inferred__0/i__carry__0_n_8 ;
  wire \_inferred__0/i__carry__0_n_9 ;
  wire \_inferred__0/i__carry__1_n_13 ;
  wire \_inferred__0/i__carry__1_n_14 ;
  wire \_inferred__0/i__carry__1_n_15 ;
  wire \_inferred__0/i__carry__1_n_6 ;
  wire \_inferred__0/i__carry__1_n_7 ;
  wire \_inferred__0/i__carry_n_0 ;
  wire \_inferred__0/i__carry_n_1 ;
  wire \_inferred__0/i__carry_n_10 ;
  wire \_inferred__0/i__carry_n_11 ;
  wire \_inferred__0/i__carry_n_12 ;
  wire \_inferred__0/i__carry_n_13 ;
  wire \_inferred__0/i__carry_n_14 ;
  wire \_inferred__0/i__carry_n_15 ;
  wire \_inferred__0/i__carry_n_2 ;
  wire \_inferred__0/i__carry_n_3 ;
  wire \_inferred__0/i__carry_n_5 ;
  wire \_inferred__0/i__carry_n_6 ;
  wire \_inferred__0/i__carry_n_7 ;
  wire \_inferred__0/i__carry_n_8 ;
  wire \_inferred__0/i__carry_n_9 ;
  wire axi4_fifo_rd_en_i;
  wire [127:0]axi_str_rxd_tdata;
  wire axi_str_rxd_tlast;
  wire axi_str_rxd_tready;
  wire axi_str_rxd_tvalid;
  wire axis_rd_en__0;
  wire bus2ip_rnw_i_reg;
  wire bus2ip_rnw_i_reg_0;
  wire cs_ce_clr;
  wire empty_fwft_i;
  wire empty_fwft_i_reg;
  wire eqOp__6;
  wire [22:3]fg_rxd_wr_length;
  wire \gc0.count_reg[0] ;
  wire \gc0.count_reg[0]_0 ;
  wire \gpes.prog_empty_i_reg ;
  wire \gpfs.prog_full_i_reg ;
  wire \grid.ar_id_r_reg[0] ;
  wire \grxd.COMP_RX_FIFO_n_32 ;
  wire \grxd.COMP_RX_FIFO_n_34 ;
  wire \grxd.COMP_RX_FIFO_n_4 ;
  wire \grxd.COMP_RX_FIFO_n_44 ;
  wire \grxd.COMP_rx_len_fifo_n_14 ;
  wire \grxd.COMP_rx_len_fifo_n_15 ;
  wire \grxd.COMP_rx_len_fifo_n_16 ;
  wire \grxd.COMP_rx_len_fifo_n_17 ;
  wire \grxd.fg_rxd_wr_length[10]_i_1_n_0 ;
  wire \grxd.fg_rxd_wr_length[11]_i_1_n_0 ;
  wire \grxd.fg_rxd_wr_length[12]_i_1_n_0 ;
  wire \grxd.fg_rxd_wr_length[13]_i_1_n_0 ;
  wire \grxd.fg_rxd_wr_length[14]_i_1_n_0 ;
  wire \grxd.fg_rxd_wr_length[15]_i_1_n_0 ;
  wire \grxd.fg_rxd_wr_length[16]_i_1_n_0 ;
  wire \grxd.fg_rxd_wr_length[17]_i_1_n_0 ;
  wire \grxd.fg_rxd_wr_length[18]_i_1_n_0 ;
  wire \grxd.fg_rxd_wr_length[19]_i_1_n_0 ;
  wire \grxd.fg_rxd_wr_length[20]_i_1_n_0 ;
  wire \grxd.fg_rxd_wr_length[21]_i_1_n_0 ;
  wire \grxd.fg_rxd_wr_length[22]_i_3_n_0 ;
  wire \grxd.fg_rxd_wr_length[3]_i_1_n_0 ;
  wire \grxd.fg_rxd_wr_length[4]_i_1_n_0 ;
  wire \grxd.fg_rxd_wr_length[5]_i_1_n_0 ;
  wire \grxd.fg_rxd_wr_length[6]_i_1_n_0 ;
  wire \grxd.fg_rxd_wr_length[7]_i_1_n_0 ;
  wire \grxd.fg_rxd_wr_length[8]_i_1_n_0 ;
  wire \grxd.fg_rxd_wr_length[9]_i_1_n_0 ;
  wire \grxd.rx_len_wr_en_i_1_n_0 ;
  wire \grxd.rx_partial_pkt_reg_n_0 ;
  wire i__carry__0_i_1_n_0;
  wire i__carry__0_i_2_n_0;
  wire i__carry__0_i_3_n_0;
  wire i__carry__0_i_4_n_0;
  wire i__carry__0_i_5_n_0;
  wire i__carry__0_i_6_n_0;
  wire i__carry__0_i_7_n_0;
  wire i__carry__0_i_8_n_0;
  wire i__carry__1_i_1_n_0;
  wire i__carry__1_i_2_n_0;
  wire i__carry__1_i_3_n_0;
  wire i__carry_i_1_n_0;
  wire i__carry_i_2_n_0;
  wire i__carry_i_3_n_0;
  wire i__carry_i_4_n_0;
  wire i__carry_i_5_n_0;
  wire i__carry_i_6_n_0;
  wire i__carry_i_7_n_0;
  wire i__carry_i_8_n_0;
  wire interrupt;
  wire interrupt_INST_0_i_1_n_0;
  wire interrupt_INST_0_i_2_n_0;
  wire mm2s_prmry_reset_out_n;
  wire out;
  wire [3:2]p_6_out;
  wire p_8_out;
  wire plusOp_carry__0_i_1__1_n_0;
  wire plusOp_carry__0_i_2__1_n_0;
  wire plusOp_carry__0_i_3__1_n_0;
  wire plusOp_carry__0_i_4__1_n_0;
  wire plusOp_carry__0_i_5_n_0;
  wire plusOp_carry__0_i_6_n_0;
  wire plusOp_carry__0_i_7_n_0;
  wire plusOp_carry__0_i_8_n_0;
  wire plusOp_carry__0_n_0;
  wire plusOp_carry__0_n_1;
  wire plusOp_carry__0_n_10;
  wire plusOp_carry__0_n_11;
  wire plusOp_carry__0_n_12;
  wire plusOp_carry__0_n_13;
  wire plusOp_carry__0_n_14;
  wire plusOp_carry__0_n_15;
  wire plusOp_carry__0_n_2;
  wire plusOp_carry__0_n_3;
  wire plusOp_carry__0_n_5;
  wire plusOp_carry__0_n_6;
  wire plusOp_carry__0_n_7;
  wire plusOp_carry__0_n_8;
  wire plusOp_carry__0_n_9;
  wire plusOp_carry__1_i_1_n_0;
  wire plusOp_carry__1_i_2_n_0;
  wire plusOp_carry__1_i_3_n_0;
  wire plusOp_carry__1_i_4_n_0;
  wire plusOp_carry__1_n_12;
  wire plusOp_carry__1_n_13;
  wire plusOp_carry__1_n_14;
  wire plusOp_carry__1_n_15;
  wire plusOp_carry__1_n_5;
  wire plusOp_carry__1_n_6;
  wire plusOp_carry__1_n_7;
  wire plusOp_carry_i_1__1_n_0;
  wire plusOp_carry_i_2__1_n_0;
  wire plusOp_carry_i_3__1_n_0;
  wire plusOp_carry_i_4__1_n_0;
  wire plusOp_carry_i_5__1_n_0;
  wire plusOp_carry_i_6__1_n_0;
  wire plusOp_carry_i_7_n_0;
  wire plusOp_carry_i_8__1_n_0;
  wire plusOp_carry_n_0;
  wire plusOp_carry_n_1;
  wire plusOp_carry_n_10;
  wire plusOp_carry_n_11;
  wire plusOp_carry_n_12;
  wire plusOp_carry_n_13;
  wire plusOp_carry_n_14;
  wire plusOp_carry_n_15;
  wire plusOp_carry_n_2;
  wire plusOp_carry_n_3;
  wire plusOp_carry_n_5;
  wire plusOp_carry_n_6;
  wire plusOp_carry_n_7;
  wire plusOp_carry_n_8;
  wire plusOp_carry_n_9;
  wire prog_full_i;
  wire ram_full_i;
  wire rst_d1_reg;
  wire rx_complete;
  wire rx_fg_len_empty_d1;
  wire rx_len_wr_en;
  wire rx_str_wr_en;
  wire s2mm_prmry_reset_out_n;
  wire [17:0]s_axi4_araddr;
  wire \s_axi4_araddr[18] ;
  wire \s_axi4_araddr[22] ;
  wire [127:0]s_axi4_rdata;
  wire s_axi_aclk;
  wire s_axi_aresetn;
  wire s_axi_arready;
  wire [31:0]\s_axi_rdata_i_reg[31] ;
  wire [10:0]s_axi_wdata;
  wire s_axi_wready;
  wire sig_Bus2IP_CS;
  wire [0:0]sig_Bus2IP_RdCE;
  wire [2:0]sig_Bus2IP_WrCE;
  wire [1:31]sig_ip2bus_data;
  wire [8:0]\sig_ip2bus_data_reg[0]_0 ;
  wire \sig_ip2bus_data_reg[12]_0 ;
  wire \sig_ip2bus_data_reg[19]_0 ;
  wire \sig_ip2bus_data_reg[1]_0 ;
  wire \sig_ip2bus_data_reg[20]_0 ;
  wire \sig_ip2bus_data_reg[21]_0 ;
  wire \sig_ip2bus_data_reg[22]_0 ;
  wire \sig_ip2bus_data_reg[23]_0 ;
  wire \sig_ip2bus_data_reg[24]_0 ;
  wire \sig_ip2bus_data_reg[25]_0 ;
  wire [11:0]\sig_ip2bus_data_reg[9]_0 ;
  wire sig_rd_rlen;
  wire sig_rd_rlen_reg_n_0;
  wire [0:0]\sig_register_array[0]0_out ;
  wire \sig_register_array[0]12_out ;
  wire \sig_register_array[0]1_in ;
  wire \sig_register_array[0][11]_i_1_n_0 ;
  wire \sig_register_array[0][12]_i_1_n_0 ;
  wire \sig_register_array[0][2]_i_1_n_0 ;
  wire \sig_register_array[0][5]_i_1_n_0 ;
  wire \sig_register_array[0][7]_i_1_n_0 ;
  wire \sig_register_array[0][8]_i_1_n_0 ;
  wire \sig_register_array_reg[0][11]_0 ;
  wire \sig_register_array_reg[0][12]_0 ;
  wire \sig_register_array_reg[0][2]_0 ;
  wire \sig_register_array_reg[0][2]_1 ;
  wire \sig_register_array_reg[0][5]_0 ;
  wire \sig_register_array_reg[0][7]_0 ;
  wire \sig_register_array_reg[0][8]_0 ;
  wire \sig_register_array_reg_n_0_[1][1] ;
  wire \sig_register_array_reg_n_0_[1][3] ;
  wire \sig_register_array_reg_n_0_[1][4] ;
  wire \sig_register_array_reg_n_0_[1][6] ;
  wire sig_rx_channel_reset_i_5_n_0;
  wire sig_rx_channel_reset_reg_0;
  wire sig_rx_channel_reset_reg_1;
  wire sig_rxd_pe_event16_out;
  wire sig_rxd_prog_empty_d1;
  wire sig_rxd_reset;
  wire sig_str_rst_reg_0;
  wire [3:3]\NLW__inferred__0/i__carry_CO_UNCONNECTED ;
  wire [3:3]\NLW__inferred__0/i__carry__0_CO_UNCONNECTED ;
  wire [7:2]\NLW__inferred__0/i__carry__1_CO_UNCONNECTED ;
  wire [7:3]\NLW__inferred__0/i__carry__1_DI_UNCONNECTED ;
  wire [7:3]\NLW__inferred__0/i__carry__1_O_UNCONNECTED ;
  wire [7:3]\NLW__inferred__0/i__carry__1_S_UNCONNECTED ;
  wire [3:3]NLW_plusOp_carry_CO_UNCONNECTED;
  wire [3:3]NLW_plusOp_carry__0_CO_UNCONNECTED;
  wire [7:3]NLW_plusOp_carry__1_CO_UNCONNECTED;
  wire [7:4]NLW_plusOp_carry__1_DI_UNCONNECTED;
  wire [7:4]NLW_plusOp_carry__1_O_UNCONNECTED;
  wire [7:4]NLW_plusOp_carry__1_S_UNCONNECTED;

  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'hEF)) 
    \GEN_BKEND_CE_REGISTERS[12].ce_out_i[12]_i_1 
       (.I0(s_axi_wready),
        .I1(s_axi_arready),
        .I2(s_axi_aresetn),
        .O(cs_ce_clr));
  FDRE #(
    .INIT(1'b0)) 
    IP2Bus_RdAck_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(bus2ip_rnw_i_reg),
        .Q(s_axi_arready),
        .R(AS));
  FDRE #(
    .INIT(1'b0)) 
    IP2Bus_WrAck_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(bus2ip_rnw_i_reg_0),
        .Q(s_axi_wready),
        .R(SR));
  FDRE IPIC_STATE_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(sig_Bus2IP_CS),
        .Q(IPIC_STATE),
        .R(AS));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY8 \_inferred__0/i__carry 
       (.CI(1'b1),
        .CI_TOP(1'b0),
        .CO({\_inferred__0/i__carry_n_0 ,\_inferred__0/i__carry_n_1 ,\_inferred__0/i__carry_n_2 ,\_inferred__0/i__carry_n_3 ,\NLW__inferred__0/i__carry_CO_UNCONNECTED [3],\_inferred__0/i__carry_n_5 ,\_inferred__0/i__carry_n_6 ,\_inferred__0/i__carry_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\_inferred__0/i__carry_n_8 ,\_inferred__0/i__carry_n_9 ,\_inferred__0/i__carry_n_10 ,\_inferred__0/i__carry_n_11 ,\_inferred__0/i__carry_n_12 ,\_inferred__0/i__carry_n_13 ,\_inferred__0/i__carry_n_14 ,\_inferred__0/i__carry_n_15 }),
        .S({i__carry_i_1_n_0,i__carry_i_2_n_0,i__carry_i_3_n_0,i__carry_i_4_n_0,i__carry_i_5_n_0,i__carry_i_6_n_0,i__carry_i_7_n_0,i__carry_i_8_n_0}));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY8 \_inferred__0/i__carry__0 
       (.CI(\_inferred__0/i__carry_n_0 ),
        .CI_TOP(1'b0),
        .CO({\_inferred__0/i__carry__0_n_0 ,\_inferred__0/i__carry__0_n_1 ,\_inferred__0/i__carry__0_n_2 ,\_inferred__0/i__carry__0_n_3 ,\NLW__inferred__0/i__carry__0_CO_UNCONNECTED [3],\_inferred__0/i__carry__0_n_5 ,\_inferred__0/i__carry__0_n_6 ,\_inferred__0/i__carry__0_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\_inferred__0/i__carry__0_n_8 ,\_inferred__0/i__carry__0_n_9 ,\_inferred__0/i__carry__0_n_10 ,\_inferred__0/i__carry__0_n_11 ,\_inferred__0/i__carry__0_n_12 ,\_inferred__0/i__carry__0_n_13 ,\_inferred__0/i__carry__0_n_14 ,\_inferred__0/i__carry__0_n_15 }),
        .S({i__carry__0_i_1_n_0,i__carry__0_i_2_n_0,i__carry__0_i_3_n_0,i__carry__0_i_4_n_0,i__carry__0_i_5_n_0,i__carry__0_i_6_n_0,i__carry__0_i_7_n_0,i__carry__0_i_8_n_0}));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY8 \_inferred__0/i__carry__1 
       (.CI(\_inferred__0/i__carry__0_n_0 ),
        .CI_TOP(1'b0),
        .CO({\NLW__inferred__0/i__carry__1_CO_UNCONNECTED [7:2],\_inferred__0/i__carry__1_n_6 ,\_inferred__0/i__carry__1_n_7 }),
        .DI({\NLW__inferred__0/i__carry__1_DI_UNCONNECTED [7:3],1'b0,1'b0,1'b0}),
        .O({\NLW__inferred__0/i__carry__1_O_UNCONNECTED [7:3],\_inferred__0/i__carry__1_n_13 ,\_inferred__0/i__carry__1_n_14 ,\_inferred__0/i__carry__1_n_15 }),
        .S({\NLW__inferred__0/i__carry__1_S_UNCONNECTED [7:3],i__carry__1_i_1_n_0,i__carry__1_i_2_n_0,i__carry__1_i_3_n_0}));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo \grxd.COMP_RX_FIFO 
       (.Axi_Str_TxD_AReset(Axi_Str_TxD_AReset),
        .D({sig_ip2bus_data[1],sig_ip2bus_data[3],sig_ip2bus_data[4],sig_ip2bus_data[6],sig_ip2bus_data[13],sig_ip2bus_data[14],sig_ip2bus_data[16],sig_ip2bus_data[18]}),
        .E(rx_str_wr_en),
        .\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0] (\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0] ),
        .\GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3] (\GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3] ),
        .\GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3]_0 (\GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3]_0 ),
        .\GEN_BKEND_CE_REGISTERS[6].ce_out_i_reg[6] (\GEN_BKEND_CE_REGISTERS[6].ce_out_i_reg[6] ),
        .\GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg[7] (\GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg[7] ),
        .\GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9] (\GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9] ),
        .\GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9]_0 (\GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9]_0 ),
        .Q({Q[10:2],p_6_out,Q[1:0]}),
        .SR(\grxd.COMP_RX_FIFO_n_4 ),
        .axi4_fifo_rd_en_i(axi4_fifo_rd_en_i),
        .axi_str_rxd_tdata(axi_str_rxd_tdata),
        .axi_str_rxd_tlast(axi_str_rxd_tlast),
        .axi_str_rxd_tready(axi_str_rxd_tready),
        .axi_str_rxd_tvalid(axi_str_rxd_tvalid),
        .axis_rd_en__0(axis_rd_en__0),
        .empty_fwft_i(empty_fwft_i),
        .\gc0.count_reg[0] (\gc0.count_reg[0] ),
        .\gc0.count_reg[0]_0 (\gc0.count_reg[0]_0 ),
        .\goreg_dm.dout_i_reg[18] ({\grxd.COMP_rx_len_fifo_n_14 ,\grxd.COMP_rx_len_fifo_n_15 ,\grxd.COMP_rx_len_fifo_n_16 ,\grxd.COMP_rx_len_fifo_n_17 }),
        .\grid.ar_id_r_reg[0] (\grid.ar_id_r_reg[0] ),
        .\grxd.rx_partial_pkt_reg (\grxd.COMP_RX_FIFO_n_44 ),
        .\grxd.rx_partial_pkt_reg_0 (\grxd.rx_partial_pkt_reg_n_0 ),
        .\grxd.sig_rxd_prog_empty_d1_reg (p_8_out),
        .in0(sig_rxd_reset),
        .out(out),
        .prog_full_i(prog_full_i),
        .ram_full_i(ram_full_i),
        .rx_complete(rx_complete),
        .rx_len_wr_en(rx_len_wr_en),
        .s_axi4_araddr(s_axi4_araddr),
        .\s_axi4_araddr[18] (\s_axi4_araddr[18] ),
        .\s_axi4_araddr[22] (\s_axi4_araddr[22] ),
        .s_axi4_rdata(s_axi4_rdata),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_aresetn(s_axi_aresetn),
        .sig_Bus2IP_RdCE(sig_Bus2IP_RdCE),
        .\sig_ip2bus_data_reg[12] (\sig_ip2bus_data_reg[12]_0 ),
        .\sig_ip2bus_data_reg[13] (\grxd.COMP_RX_FIFO_n_34 ),
        .\sig_ip2bus_data_reg[17] (\grxd.COMP_RX_FIFO_n_32 ),
        .\sig_ip2bus_data_reg[19] (\sig_ip2bus_data_reg[19]_0 ),
        .\sig_ip2bus_data_reg[1] (\sig_ip2bus_data_reg[1]_0 ),
        .\sig_ip2bus_data_reg[20] (\sig_ip2bus_data_reg[20]_0 ),
        .\sig_ip2bus_data_reg[21] (\sig_ip2bus_data_reg[21]_0 ),
        .\sig_ip2bus_data_reg[22] (\sig_ip2bus_data_reg[22]_0 ),
        .\sig_ip2bus_data_reg[23] (\sig_ip2bus_data_reg[23]_0 ),
        .\sig_ip2bus_data_reg[24] (\sig_ip2bus_data_reg[24]_0 ),
        .sig_rd_rlen_reg(sig_rd_rlen_reg_n_0),
        .\sig_register_array_reg[0][2] (\sig_register_array_reg[0][2]_0 ),
        .\sig_register_array_reg[1][1] ({\sig_register_array_reg_n_0_[1][1] ,\sig_register_array_reg_n_0_[1][3] ,\sig_register_array_reg_n_0_[1][4] ,\sig_register_array_reg_n_0_[1][6] }),
        .sig_rx_channel_reset_reg(sig_rx_channel_reset_reg_1),
        .sig_rx_channel_reset_reg_0(rst_d1_reg),
        .sig_rxd_pe_event16_out(sig_rxd_pe_event16_out),
        .sig_rxd_prog_empty_d1(sig_rxd_prog_empty_d1));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sync_fifo_fg \grxd.COMP_rx_len_fifo 
       (.Axi_Str_TxD_AReset(Axi_Str_TxD_AReset),
        .D({sig_ip2bus_data[15],sig_ip2bus_data[17],sig_ip2bus_data[28],sig_ip2bus_data[29],sig_ip2bus_data[30],sig_ip2bus_data[31]}),
        .E(rx_str_wr_en),
        .\GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3] (\GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3] ),
        .\GEN_BKEND_CE_REGISTERS[4].ce_out_i_reg[4] (\GEN_BKEND_CE_REGISTERS[4].ce_out_i_reg[4]_0 ),
        .\GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9] (\GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9] ),
        .Q({Q[10],p_6_out,Q[1:0]}),
        .axi_str_rxd_tlast(axi_str_rxd_tlast),
        .axi_str_rxd_tvalid(axi_str_rxd_tvalid),
        .\count_reg[11] (\grxd.COMP_RX_FIFO_n_34 ),
        .\count_reg[7] (\grxd.COMP_RX_FIFO_n_32 ),
        .empty_fwft_i_reg(empty_fwft_i_reg),
        .fg_rxd_wr_length(fg_rxd_wr_length),
        .\grxd.rx_partial_pkt_reg (\grxd.rx_partial_pkt_reg_n_0 ),
        .in0(sig_rxd_reset),
        .out(out),
        .ram_full_i(ram_full_i),
        .rx_fg_len_empty_d1(rx_fg_len_empty_d1),
        .rx_len_wr_en(rx_len_wr_en),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_aresetn(s_axi_aresetn),
        .\sig_ip2bus_data_reg[25] (\sig_ip2bus_data_reg[25]_0 ),
        .\sig_ip2bus_data_reg[9] ({\sig_ip2bus_data_reg[9]_0 [11:8],\grxd.COMP_rx_len_fifo_n_14 ,\grxd.COMP_rx_len_fifo_n_15 ,\grxd.COMP_rx_len_fifo_n_16 ,\grxd.COMP_rx_len_fifo_n_17 ,\sig_ip2bus_data_reg[9]_0 [7:0]}),
        .sig_rd_rlen_reg(sig_rd_rlen_reg_n_0),
        .\sig_register_array[0]1_in (\sig_register_array[0]1_in ),
        .sig_rx_channel_reset_reg(rst_d1_reg));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \grxd.fg_rxd_wr_length[10]_i_1 
       (.I0(\_inferred__0/i__carry_n_9 ),
        .I1(axi_str_rxd_tlast),
        .I2(plusOp_carry_n_8),
        .O(\grxd.fg_rxd_wr_length[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \grxd.fg_rxd_wr_length[11]_i_1 
       (.I0(\_inferred__0/i__carry_n_8 ),
        .I1(axi_str_rxd_tlast),
        .I2(plusOp_carry__0_n_15),
        .O(\grxd.fg_rxd_wr_length[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \grxd.fg_rxd_wr_length[12]_i_1 
       (.I0(\_inferred__0/i__carry__0_n_15 ),
        .I1(axi_str_rxd_tlast),
        .I2(plusOp_carry__0_n_14),
        .O(\grxd.fg_rxd_wr_length[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \grxd.fg_rxd_wr_length[13]_i_1 
       (.I0(\_inferred__0/i__carry__0_n_14 ),
        .I1(axi_str_rxd_tlast),
        .I2(plusOp_carry__0_n_13),
        .O(\grxd.fg_rxd_wr_length[13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \grxd.fg_rxd_wr_length[14]_i_1 
       (.I0(\_inferred__0/i__carry__0_n_13 ),
        .I1(axi_str_rxd_tlast),
        .I2(plusOp_carry__0_n_12),
        .O(\grxd.fg_rxd_wr_length[14]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \grxd.fg_rxd_wr_length[15]_i_1 
       (.I0(\_inferred__0/i__carry__0_n_12 ),
        .I1(axi_str_rxd_tlast),
        .I2(plusOp_carry__0_n_11),
        .O(\grxd.fg_rxd_wr_length[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \grxd.fg_rxd_wr_length[16]_i_1 
       (.I0(\_inferred__0/i__carry__0_n_11 ),
        .I1(axi_str_rxd_tlast),
        .I2(plusOp_carry__0_n_10),
        .O(\grxd.fg_rxd_wr_length[16]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \grxd.fg_rxd_wr_length[17]_i_1 
       (.I0(\_inferred__0/i__carry__0_n_10 ),
        .I1(axi_str_rxd_tlast),
        .I2(plusOp_carry__0_n_9),
        .O(\grxd.fg_rxd_wr_length[17]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \grxd.fg_rxd_wr_length[18]_i_1 
       (.I0(\_inferred__0/i__carry__0_n_9 ),
        .I1(axi_str_rxd_tlast),
        .I2(plusOp_carry__0_n_8),
        .O(\grxd.fg_rxd_wr_length[18]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \grxd.fg_rxd_wr_length[19]_i_1 
       (.I0(\_inferred__0/i__carry__0_n_8 ),
        .I1(axi_str_rxd_tlast),
        .I2(plusOp_carry__1_n_15),
        .O(\grxd.fg_rxd_wr_length[19]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \grxd.fg_rxd_wr_length[20]_i_1 
       (.I0(\_inferred__0/i__carry__1_n_15 ),
        .I1(axi_str_rxd_tlast),
        .I2(plusOp_carry__1_n_14),
        .O(\grxd.fg_rxd_wr_length[20]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \grxd.fg_rxd_wr_length[21]_i_1 
       (.I0(\_inferred__0/i__carry__1_n_14 ),
        .I1(axi_str_rxd_tlast),
        .I2(plusOp_carry__1_n_13),
        .O(\grxd.fg_rxd_wr_length[21]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \grxd.fg_rxd_wr_length[22]_i_3 
       (.I0(\_inferred__0/i__carry__1_n_13 ),
        .I1(axi_str_rxd_tlast),
        .I2(plusOp_carry__1_n_12),
        .O(\grxd.fg_rxd_wr_length[22]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \grxd.fg_rxd_wr_length[3]_i_1 
       (.I0(fg_rxd_wr_length[3]),
        .I1(axi_str_rxd_tlast),
        .I2(plusOp_carry_n_15),
        .O(\grxd.fg_rxd_wr_length[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hDD00D8FFDD00D800)) 
    \grxd.fg_rxd_wr_length[4]_i_1 
       (.I0(axi_str_rxd_tlast),
        .I1(\_inferred__0/i__carry_n_15 ),
        .I2(plusOp_carry_n_14),
        .I3(rx_str_wr_en),
        .I4(rx_len_wr_en),
        .I5(fg_rxd_wr_length[4]),
        .O(\grxd.fg_rxd_wr_length[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \grxd.fg_rxd_wr_length[5]_i_1 
       (.I0(\_inferred__0/i__carry_n_14 ),
        .I1(axi_str_rxd_tlast),
        .I2(plusOp_carry_n_13),
        .O(\grxd.fg_rxd_wr_length[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \grxd.fg_rxd_wr_length[6]_i_1 
       (.I0(\_inferred__0/i__carry_n_13 ),
        .I1(axi_str_rxd_tlast),
        .I2(plusOp_carry_n_12),
        .O(\grxd.fg_rxd_wr_length[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \grxd.fg_rxd_wr_length[7]_i_1 
       (.I0(\_inferred__0/i__carry_n_12 ),
        .I1(axi_str_rxd_tlast),
        .I2(plusOp_carry_n_11),
        .O(\grxd.fg_rxd_wr_length[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \grxd.fg_rxd_wr_length[8]_i_1 
       (.I0(\_inferred__0/i__carry_n_11 ),
        .I1(axi_str_rxd_tlast),
        .I2(plusOp_carry_n_10),
        .O(\grxd.fg_rxd_wr_length[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \grxd.fg_rxd_wr_length[9]_i_1 
       (.I0(\_inferred__0/i__carry_n_10 ),
        .I1(axi_str_rxd_tlast),
        .I2(plusOp_carry_n_9),
        .O(\grxd.fg_rxd_wr_length[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \grxd.fg_rxd_wr_length_reg[10] 
       (.C(s_axi_aclk),
        .CE(rx_str_wr_en),
        .D(\grxd.fg_rxd_wr_length[10]_i_1_n_0 ),
        .Q(fg_rxd_wr_length[10]),
        .R(\grxd.COMP_RX_FIFO_n_4 ));
  FDRE #(
    .INIT(1'b0)) 
    \grxd.fg_rxd_wr_length_reg[11] 
       (.C(s_axi_aclk),
        .CE(rx_str_wr_en),
        .D(\grxd.fg_rxd_wr_length[11]_i_1_n_0 ),
        .Q(fg_rxd_wr_length[11]),
        .R(\grxd.COMP_RX_FIFO_n_4 ));
  FDRE #(
    .INIT(1'b0)) 
    \grxd.fg_rxd_wr_length_reg[12] 
       (.C(s_axi_aclk),
        .CE(rx_str_wr_en),
        .D(\grxd.fg_rxd_wr_length[12]_i_1_n_0 ),
        .Q(fg_rxd_wr_length[12]),
        .R(\grxd.COMP_RX_FIFO_n_4 ));
  FDRE #(
    .INIT(1'b0)) 
    \grxd.fg_rxd_wr_length_reg[13] 
       (.C(s_axi_aclk),
        .CE(rx_str_wr_en),
        .D(\grxd.fg_rxd_wr_length[13]_i_1_n_0 ),
        .Q(fg_rxd_wr_length[13]),
        .R(\grxd.COMP_RX_FIFO_n_4 ));
  FDRE #(
    .INIT(1'b0)) 
    \grxd.fg_rxd_wr_length_reg[14] 
       (.C(s_axi_aclk),
        .CE(rx_str_wr_en),
        .D(\grxd.fg_rxd_wr_length[14]_i_1_n_0 ),
        .Q(fg_rxd_wr_length[14]),
        .R(\grxd.COMP_RX_FIFO_n_4 ));
  FDRE #(
    .INIT(1'b0)) 
    \grxd.fg_rxd_wr_length_reg[15] 
       (.C(s_axi_aclk),
        .CE(rx_str_wr_en),
        .D(\grxd.fg_rxd_wr_length[15]_i_1_n_0 ),
        .Q(fg_rxd_wr_length[15]),
        .R(\grxd.COMP_RX_FIFO_n_4 ));
  FDRE #(
    .INIT(1'b0)) 
    \grxd.fg_rxd_wr_length_reg[16] 
       (.C(s_axi_aclk),
        .CE(rx_str_wr_en),
        .D(\grxd.fg_rxd_wr_length[16]_i_1_n_0 ),
        .Q(fg_rxd_wr_length[16]),
        .R(\grxd.COMP_RX_FIFO_n_4 ));
  FDRE #(
    .INIT(1'b0)) 
    \grxd.fg_rxd_wr_length_reg[17] 
       (.C(s_axi_aclk),
        .CE(rx_str_wr_en),
        .D(\grxd.fg_rxd_wr_length[17]_i_1_n_0 ),
        .Q(fg_rxd_wr_length[17]),
        .R(\grxd.COMP_RX_FIFO_n_4 ));
  FDRE #(
    .INIT(1'b0)) 
    \grxd.fg_rxd_wr_length_reg[18] 
       (.C(s_axi_aclk),
        .CE(rx_str_wr_en),
        .D(\grxd.fg_rxd_wr_length[18]_i_1_n_0 ),
        .Q(fg_rxd_wr_length[18]),
        .R(\grxd.COMP_RX_FIFO_n_4 ));
  FDRE #(
    .INIT(1'b0)) 
    \grxd.fg_rxd_wr_length_reg[19] 
       (.C(s_axi_aclk),
        .CE(rx_str_wr_en),
        .D(\grxd.fg_rxd_wr_length[19]_i_1_n_0 ),
        .Q(fg_rxd_wr_length[19]),
        .R(\grxd.COMP_RX_FIFO_n_4 ));
  FDRE #(
    .INIT(1'b0)) 
    \grxd.fg_rxd_wr_length_reg[20] 
       (.C(s_axi_aclk),
        .CE(rx_str_wr_en),
        .D(\grxd.fg_rxd_wr_length[20]_i_1_n_0 ),
        .Q(fg_rxd_wr_length[20]),
        .R(\grxd.COMP_RX_FIFO_n_4 ));
  FDRE #(
    .INIT(1'b0)) 
    \grxd.fg_rxd_wr_length_reg[21] 
       (.C(s_axi_aclk),
        .CE(rx_str_wr_en),
        .D(\grxd.fg_rxd_wr_length[21]_i_1_n_0 ),
        .Q(fg_rxd_wr_length[21]),
        .R(\grxd.COMP_RX_FIFO_n_4 ));
  FDRE #(
    .INIT(1'b0)) 
    \grxd.fg_rxd_wr_length_reg[22] 
       (.C(s_axi_aclk),
        .CE(rx_str_wr_en),
        .D(\grxd.fg_rxd_wr_length[22]_i_3_n_0 ),
        .Q(fg_rxd_wr_length[22]),
        .R(\grxd.COMP_RX_FIFO_n_4 ));
  FDRE #(
    .INIT(1'b0)) 
    \grxd.fg_rxd_wr_length_reg[3] 
       (.C(s_axi_aclk),
        .CE(rx_str_wr_en),
        .D(\grxd.fg_rxd_wr_length[3]_i_1_n_0 ),
        .Q(fg_rxd_wr_length[3]),
        .R(\grxd.COMP_RX_FIFO_n_4 ));
  FDRE #(
    .INIT(1'b0)) 
    \grxd.fg_rxd_wr_length_reg[4] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\grxd.fg_rxd_wr_length[4]_i_1_n_0 ),
        .Q(fg_rxd_wr_length[4]),
        .R(\grxd.rx_len_wr_en_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \grxd.fg_rxd_wr_length_reg[5] 
       (.C(s_axi_aclk),
        .CE(rx_str_wr_en),
        .D(\grxd.fg_rxd_wr_length[5]_i_1_n_0 ),
        .Q(fg_rxd_wr_length[5]),
        .R(\grxd.COMP_RX_FIFO_n_4 ));
  FDRE #(
    .INIT(1'b0)) 
    \grxd.fg_rxd_wr_length_reg[6] 
       (.C(s_axi_aclk),
        .CE(rx_str_wr_en),
        .D(\grxd.fg_rxd_wr_length[6]_i_1_n_0 ),
        .Q(fg_rxd_wr_length[6]),
        .R(\grxd.COMP_RX_FIFO_n_4 ));
  FDRE #(
    .INIT(1'b0)) 
    \grxd.fg_rxd_wr_length_reg[7] 
       (.C(s_axi_aclk),
        .CE(rx_str_wr_en),
        .D(\grxd.fg_rxd_wr_length[7]_i_1_n_0 ),
        .Q(fg_rxd_wr_length[7]),
        .R(\grxd.COMP_RX_FIFO_n_4 ));
  FDRE #(
    .INIT(1'b0)) 
    \grxd.fg_rxd_wr_length_reg[8] 
       (.C(s_axi_aclk),
        .CE(rx_str_wr_en),
        .D(\grxd.fg_rxd_wr_length[8]_i_1_n_0 ),
        .Q(fg_rxd_wr_length[8]),
        .R(\grxd.COMP_RX_FIFO_n_4 ));
  FDRE #(
    .INIT(1'b0)) 
    \grxd.fg_rxd_wr_length_reg[9] 
       (.C(s_axi_aclk),
        .CE(rx_str_wr_en),
        .D(\grxd.fg_rxd_wr_length[9]_i_1_n_0 ),
        .Q(fg_rxd_wr_length[9]),
        .R(\grxd.COMP_RX_FIFO_n_4 ));
  FDSE #(
    .INIT(1'b0)) 
    \grxd.rx_fg_len_empty_d1_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(out),
        .Q(rx_fg_len_empty_d1),
        .S(AS));
  LUT2 #(
    .INIT(4'hB)) 
    \grxd.rx_len_wr_en_i_1 
       (.I0(Axi_Str_TxD_AReset),
        .I1(s_axi_aresetn),
        .O(\grxd.rx_len_wr_en_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \grxd.rx_len_wr_en_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(rx_complete),
        .Q(rx_len_wr_en),
        .R(\grxd.rx_len_wr_en_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \grxd.rx_partial_pkt_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\grxd.COMP_RX_FIFO_n_44 ),
        .Q(\grxd.rx_partial_pkt_reg_n_0 ),
        .R(1'b0));
  FDSE #(
    .INIT(1'b0)) 
    \grxd.sig_rxd_prog_empty_d1_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(p_8_out),
        .Q(sig_rxd_prog_empty_d1),
        .S(AS));
  LUT1 #(
    .INIT(2'h2)) 
    i__carry__0_i_1
       (.I0(fg_rxd_wr_length[19]),
        .O(i__carry__0_i_1_n_0));
  LUT1 #(
    .INIT(2'h2)) 
    i__carry__0_i_2
       (.I0(fg_rxd_wr_length[18]),
        .O(i__carry__0_i_2_n_0));
  LUT1 #(
    .INIT(2'h2)) 
    i__carry__0_i_3
       (.I0(fg_rxd_wr_length[17]),
        .O(i__carry__0_i_3_n_0));
  LUT1 #(
    .INIT(2'h2)) 
    i__carry__0_i_4
       (.I0(fg_rxd_wr_length[16]),
        .O(i__carry__0_i_4_n_0));
  LUT1 #(
    .INIT(2'h2)) 
    i__carry__0_i_5
       (.I0(fg_rxd_wr_length[15]),
        .O(i__carry__0_i_5_n_0));
  LUT1 #(
    .INIT(2'h2)) 
    i__carry__0_i_6
       (.I0(fg_rxd_wr_length[14]),
        .O(i__carry__0_i_6_n_0));
  LUT1 #(
    .INIT(2'h2)) 
    i__carry__0_i_7
       (.I0(fg_rxd_wr_length[13]),
        .O(i__carry__0_i_7_n_0));
  LUT1 #(
    .INIT(2'h2)) 
    i__carry__0_i_8
       (.I0(fg_rxd_wr_length[12]),
        .O(i__carry__0_i_8_n_0));
  LUT1 #(
    .INIT(2'h2)) 
    i__carry__1_i_1
       (.I0(fg_rxd_wr_length[22]),
        .O(i__carry__1_i_1_n_0));
  LUT1 #(
    .INIT(2'h2)) 
    i__carry__1_i_2
       (.I0(fg_rxd_wr_length[21]),
        .O(i__carry__1_i_2_n_0));
  LUT1 #(
    .INIT(2'h2)) 
    i__carry__1_i_3
       (.I0(fg_rxd_wr_length[20]),
        .O(i__carry__1_i_3_n_0));
  LUT1 #(
    .INIT(2'h2)) 
    i__carry_i_1
       (.I0(fg_rxd_wr_length[11]),
        .O(i__carry_i_1_n_0));
  LUT1 #(
    .INIT(2'h2)) 
    i__carry_i_2
       (.I0(fg_rxd_wr_length[10]),
        .O(i__carry_i_2_n_0));
  LUT1 #(
    .INIT(2'h2)) 
    i__carry_i_3
       (.I0(fg_rxd_wr_length[9]),
        .O(i__carry_i_3_n_0));
  LUT1 #(
    .INIT(2'h2)) 
    i__carry_i_4
       (.I0(fg_rxd_wr_length[8]),
        .O(i__carry_i_4_n_0));
  LUT1 #(
    .INIT(2'h2)) 
    i__carry_i_5
       (.I0(fg_rxd_wr_length[7]),
        .O(i__carry_i_5_n_0));
  LUT1 #(
    .INIT(2'h2)) 
    i__carry_i_6
       (.I0(fg_rxd_wr_length[6]),
        .O(i__carry_i_6_n_0));
  LUT1 #(
    .INIT(2'h2)) 
    i__carry_i_7
       (.I0(fg_rxd_wr_length[5]),
        .O(i__carry_i_7_n_0));
  LUT1 #(
    .INIT(2'h2)) 
    i__carry_i_8
       (.I0(fg_rxd_wr_length[4]),
        .O(i__carry_i_8_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFEAEAEA)) 
    interrupt_INST_0
       (.I0(interrupt_INST_0_i_1_n_0),
        .I1(\sig_ip2bus_data_reg[0]_0 [0]),
        .I2(\sig_register_array_reg[0][12]_0 ),
        .I3(\sig_ip2bus_data_reg[0]_0 [1]),
        .I4(\sig_register_array_reg[0][11]_0 ),
        .I5(interrupt_INST_0_i_2_n_0),
        .O(interrupt));
  LUT4 #(
    .INIT(16'hF888)) 
    interrupt_INST_0_i_1
       (.I0(\sig_ip2bus_data_reg[0]_0 [4]),
        .I1(\sig_register_array_reg[0][8]_0 ),
        .I2(\sig_ip2bus_data_reg[0]_0 [5]),
        .I3(\sig_register_array_reg[0][7]_0 ),
        .O(interrupt_INST_0_i_1_n_0));
  LUT4 #(
    .INIT(16'hF888)) 
    interrupt_INST_0_i_2
       (.I0(\sig_ip2bus_data_reg[0]_0 [6]),
        .I1(\sig_register_array_reg[0][5]_0 ),
        .I2(\sig_ip2bus_data_reg[0]_0 [7]),
        .I3(\sig_register_array_reg[0][2]_1 ),
        .O(interrupt_INST_0_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    mm2s_prmry_reset_out_n_INST_0
       (.I0(Axi_Str_TxD_AReset),
        .O(mm2s_prmry_reset_out_n));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY8 plusOp_carry
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({plusOp_carry_n_0,plusOp_carry_n_1,plusOp_carry_n_2,plusOp_carry_n_3,NLW_plusOp_carry_CO_UNCONNECTED[3],plusOp_carry_n_5,plusOp_carry_n_6,plusOp_carry_n_7}),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,fg_rxd_wr_length[4],1'b0}),
        .O({plusOp_carry_n_8,plusOp_carry_n_9,plusOp_carry_n_10,plusOp_carry_n_11,plusOp_carry_n_12,plusOp_carry_n_13,plusOp_carry_n_14,plusOp_carry_n_15}),
        .S({plusOp_carry_i_1__1_n_0,plusOp_carry_i_2__1_n_0,plusOp_carry_i_3__1_n_0,plusOp_carry_i_4__1_n_0,plusOp_carry_i_5__1_n_0,plusOp_carry_i_6__1_n_0,plusOp_carry_i_7_n_0,plusOp_carry_i_8__1_n_0}));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY8 plusOp_carry__0
       (.CI(plusOp_carry_n_0),
        .CI_TOP(1'b0),
        .CO({plusOp_carry__0_n_0,plusOp_carry__0_n_1,plusOp_carry__0_n_2,plusOp_carry__0_n_3,NLW_plusOp_carry__0_CO_UNCONNECTED[3],plusOp_carry__0_n_5,plusOp_carry__0_n_6,plusOp_carry__0_n_7}),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({plusOp_carry__0_n_8,plusOp_carry__0_n_9,plusOp_carry__0_n_10,plusOp_carry__0_n_11,plusOp_carry__0_n_12,plusOp_carry__0_n_13,plusOp_carry__0_n_14,plusOp_carry__0_n_15}),
        .S({plusOp_carry__0_i_1__1_n_0,plusOp_carry__0_i_2__1_n_0,plusOp_carry__0_i_3__1_n_0,plusOp_carry__0_i_4__1_n_0,plusOp_carry__0_i_5_n_0,plusOp_carry__0_i_6_n_0,plusOp_carry__0_i_7_n_0,plusOp_carry__0_i_8_n_0}));
  LUT1 #(
    .INIT(2'h2)) 
    plusOp_carry__0_i_1__1
       (.I0(fg_rxd_wr_length[18]),
        .O(plusOp_carry__0_i_1__1_n_0));
  LUT1 #(
    .INIT(2'h2)) 
    plusOp_carry__0_i_2__1
       (.I0(fg_rxd_wr_length[17]),
        .O(plusOp_carry__0_i_2__1_n_0));
  LUT1 #(
    .INIT(2'h2)) 
    plusOp_carry__0_i_3__1
       (.I0(fg_rxd_wr_length[16]),
        .O(plusOp_carry__0_i_3__1_n_0));
  LUT1 #(
    .INIT(2'h2)) 
    plusOp_carry__0_i_4__1
       (.I0(fg_rxd_wr_length[15]),
        .O(plusOp_carry__0_i_4__1_n_0));
  LUT1 #(
    .INIT(2'h2)) 
    plusOp_carry__0_i_5
       (.I0(fg_rxd_wr_length[14]),
        .O(plusOp_carry__0_i_5_n_0));
  LUT1 #(
    .INIT(2'h2)) 
    plusOp_carry__0_i_6
       (.I0(fg_rxd_wr_length[13]),
        .O(plusOp_carry__0_i_6_n_0));
  LUT1 #(
    .INIT(2'h2)) 
    plusOp_carry__0_i_7
       (.I0(fg_rxd_wr_length[12]),
        .O(plusOp_carry__0_i_7_n_0));
  LUT1 #(
    .INIT(2'h2)) 
    plusOp_carry__0_i_8
       (.I0(fg_rxd_wr_length[11]),
        .O(plusOp_carry__0_i_8_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY8 plusOp_carry__1
       (.CI(plusOp_carry__0_n_0),
        .CI_TOP(1'b0),
        .CO({NLW_plusOp_carry__1_CO_UNCONNECTED[7:3],plusOp_carry__1_n_5,plusOp_carry__1_n_6,plusOp_carry__1_n_7}),
        .DI({NLW_plusOp_carry__1_DI_UNCONNECTED[7:4],1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_plusOp_carry__1_O_UNCONNECTED[7:4],plusOp_carry__1_n_12,plusOp_carry__1_n_13,plusOp_carry__1_n_14,plusOp_carry__1_n_15}),
        .S({NLW_plusOp_carry__1_S_UNCONNECTED[7:4],plusOp_carry__1_i_1_n_0,plusOp_carry__1_i_2_n_0,plusOp_carry__1_i_3_n_0,plusOp_carry__1_i_4_n_0}));
  LUT1 #(
    .INIT(2'h2)) 
    plusOp_carry__1_i_1
       (.I0(fg_rxd_wr_length[22]),
        .O(plusOp_carry__1_i_1_n_0));
  LUT1 #(
    .INIT(2'h2)) 
    plusOp_carry__1_i_2
       (.I0(fg_rxd_wr_length[21]),
        .O(plusOp_carry__1_i_2_n_0));
  LUT1 #(
    .INIT(2'h2)) 
    plusOp_carry__1_i_3
       (.I0(fg_rxd_wr_length[20]),
        .O(plusOp_carry__1_i_3_n_0));
  LUT1 #(
    .INIT(2'h2)) 
    plusOp_carry__1_i_4
       (.I0(fg_rxd_wr_length[19]),
        .O(plusOp_carry__1_i_4_n_0));
  LUT1 #(
    .INIT(2'h2)) 
    plusOp_carry_i_1__1
       (.I0(fg_rxd_wr_length[10]),
        .O(plusOp_carry_i_1__1_n_0));
  LUT1 #(
    .INIT(2'h2)) 
    plusOp_carry_i_2__1
       (.I0(fg_rxd_wr_length[9]),
        .O(plusOp_carry_i_2__1_n_0));
  LUT1 #(
    .INIT(2'h2)) 
    plusOp_carry_i_3__1
       (.I0(fg_rxd_wr_length[8]),
        .O(plusOp_carry_i_3__1_n_0));
  LUT1 #(
    .INIT(2'h2)) 
    plusOp_carry_i_4__1
       (.I0(fg_rxd_wr_length[7]),
        .O(plusOp_carry_i_4__1_n_0));
  LUT1 #(
    .INIT(2'h2)) 
    plusOp_carry_i_5__1
       (.I0(fg_rxd_wr_length[6]),
        .O(plusOp_carry_i_5__1_n_0));
  LUT1 #(
    .INIT(2'h2)) 
    plusOp_carry_i_6__1
       (.I0(fg_rxd_wr_length[5]),
        .O(plusOp_carry_i_6__1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    plusOp_carry_i_7
       (.I0(fg_rxd_wr_length[4]),
        .O(plusOp_carry_i_7_n_0));
  LUT1 #(
    .INIT(2'h2)) 
    plusOp_carry_i_8__1
       (.I0(fg_rxd_wr_length[3]),
        .O(plusOp_carry_i_8__1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'h04)) 
    s2mm_prmry_reset_out_n_INST_0
       (.I0(rst_d1_reg),
        .I1(s_axi_aresetn),
        .I2(Axi_Str_TxD_AReset),
        .O(s2mm_prmry_reset_out_n));
  FDRE #(
    .INIT(1'b0)) 
    \sig_ip2bus_data_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(D[17]),
        .Q(\s_axi_rdata_i_reg[31] [31]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_ip2bus_data_reg[10] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(D[11]),
        .Q(\s_axi_rdata_i_reg[31] [21]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_ip2bus_data_reg[11] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(D[10]),
        .Q(\s_axi_rdata_i_reg[31] [20]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_ip2bus_data_reg[12] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(D[9]),
        .Q(\s_axi_rdata_i_reg[31] [19]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_ip2bus_data_reg[13] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(sig_ip2bus_data[13]),
        .Q(\s_axi_rdata_i_reg[31] [18]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_ip2bus_data_reg[14] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(sig_ip2bus_data[14]),
        .Q(\s_axi_rdata_i_reg[31] [17]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_ip2bus_data_reg[15] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(sig_ip2bus_data[15]),
        .Q(\s_axi_rdata_i_reg[31] [16]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_ip2bus_data_reg[16] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(sig_ip2bus_data[16]),
        .Q(\s_axi_rdata_i_reg[31] [15]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_ip2bus_data_reg[17] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(sig_ip2bus_data[17]),
        .Q(\s_axi_rdata_i_reg[31] [14]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_ip2bus_data_reg[18] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(sig_ip2bus_data[18]),
        .Q(\s_axi_rdata_i_reg[31] [13]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_ip2bus_data_reg[19] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(D[8]),
        .Q(\s_axi_rdata_i_reg[31] [12]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_ip2bus_data_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(sig_ip2bus_data[1]),
        .Q(\s_axi_rdata_i_reg[31] [30]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_ip2bus_data_reg[20] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(D[7]),
        .Q(\s_axi_rdata_i_reg[31] [11]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_ip2bus_data_reg[21] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(D[6]),
        .Q(\s_axi_rdata_i_reg[31] [10]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_ip2bus_data_reg[22] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(D[5]),
        .Q(\s_axi_rdata_i_reg[31] [9]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_ip2bus_data_reg[23] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(D[4]),
        .Q(\s_axi_rdata_i_reg[31] [8]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_ip2bus_data_reg[24] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(D[3]),
        .Q(\s_axi_rdata_i_reg[31] [7]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_ip2bus_data_reg[25] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(D[2]),
        .Q(\s_axi_rdata_i_reg[31] [6]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_ip2bus_data_reg[26] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(D[1]),
        .Q(\s_axi_rdata_i_reg[31] [5]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_ip2bus_data_reg[27] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(D[0]),
        .Q(\s_axi_rdata_i_reg[31] [4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_ip2bus_data_reg[28] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(sig_ip2bus_data[28]),
        .Q(\s_axi_rdata_i_reg[31] [3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_ip2bus_data_reg[29] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(sig_ip2bus_data[29]),
        .Q(\s_axi_rdata_i_reg[31] [2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_ip2bus_data_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(D[16]),
        .Q(\s_axi_rdata_i_reg[31] [29]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_ip2bus_data_reg[30] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(sig_ip2bus_data[30]),
        .Q(\s_axi_rdata_i_reg[31] [1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_ip2bus_data_reg[31] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(sig_ip2bus_data[31]),
        .Q(\s_axi_rdata_i_reg[31] [0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_ip2bus_data_reg[3] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(sig_ip2bus_data[3]),
        .Q(\s_axi_rdata_i_reg[31] [28]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_ip2bus_data_reg[4] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(sig_ip2bus_data[4]),
        .Q(\s_axi_rdata_i_reg[31] [27]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_ip2bus_data_reg[5] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(D[15]),
        .Q(\s_axi_rdata_i_reg[31] [26]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_ip2bus_data_reg[6] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(sig_ip2bus_data[6]),
        .Q(\s_axi_rdata_i_reg[31] [25]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_ip2bus_data_reg[7] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(D[14]),
        .Q(\s_axi_rdata_i_reg[31] [24]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_ip2bus_data_reg[8] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(D[13]),
        .Q(\s_axi_rdata_i_reg[31] [23]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_ip2bus_data_reg[9] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(D[12]),
        .Q(\s_axi_rdata_i_reg[31] [22]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    sig_rd_rlen_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(sig_rd_rlen),
        .Q(sig_rd_rlen_reg_n_0),
        .R(SR));
  LUT6 #(
    .INIT(64'hF010FFFFF0100000)) 
    \sig_register_array[0][11]_i_1 
       (.I0(sig_Bus2IP_WrCE[0]),
        .I1(s_axi_wdata[9]),
        .I2(prog_full_i),
        .I3(\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0 ),
        .I4(\gpfs.prog_full_i_reg ),
        .I5(\sig_register_array_reg[0][11]_0 ),
        .O(\sig_register_array[0][11]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF010FFFFF0100000)) 
    \sig_register_array[0][12]_i_1 
       (.I0(sig_Bus2IP_WrCE[0]),
        .I1(s_axi_wdata[8]),
        .I2(sig_rxd_pe_event16_out),
        .I3(\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0 ),
        .I4(\gpes.prog_empty_i_reg ),
        .I5(\sig_register_array_reg[0][12]_0 ),
        .O(\sig_register_array[0][12]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAEAEAEAFA2A2A2A0)) 
    \sig_register_array[0][2]_i_1 
       (.I0(\sig_register_array[0]0_out ),
        .I1(\MEM_DECODE_GEN[0].cs_out_i_reg[0] ),
        .I2(\sig_register_array[0]12_out ),
        .I3(Bus_RNW_reg_reg),
        .I4(Bus_RNW_reg_reg_0),
        .I5(\sig_register_array_reg[0][2]_1 ),
        .O(\sig_register_array[0][2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF010FFFFF0100000)) 
    \sig_register_array[0][5]_i_1 
       (.I0(sig_Bus2IP_WrCE[0]),
        .I1(s_axi_wdata[10]),
        .I2(\sig_register_array[0]1_in ),
        .I3(\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0 ),
        .I4(\GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg[10] ),
        .I5(\sig_register_array_reg[0][5]_0 ),
        .O(\sig_register_array[0][5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFF700000004)) 
    \sig_register_array[0][7]_i_1 
       (.I0(sig_Bus2IP_WrCE[2]),
        .I1(\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_1 ),
        .I2(\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1] ),
        .I3(sig_Bus2IP_WrCE[1]),
        .I4(\GEN_BKEND_CE_REGISTERS[4].ce_out_i_reg[4]_1 ),
        .I5(\sig_register_array_reg[0][7]_0 ),
        .O(\sig_register_array[0][7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFAEFFFFFFAE0000)) 
    \sig_register_array[0][8]_i_1 
       (.I0(IPIC_STATE_reg_0),
        .I1(sig_rxd_reset),
        .I2(\GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg[10]_0 ),
        .I3(Bus_RNW_reg_reg_1),
        .I4(\GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg[10]_1 ),
        .I5(\sig_register_array_reg[0][8]_0 ),
        .O(\sig_register_array[0][8]_i_1_n_0 ));
  FDRE \sig_register_array_reg[0][11] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\sig_register_array[0][11]_i_1_n_0 ),
        .Q(\sig_register_array_reg[0][11]_0 ),
        .R(AS));
  FDRE \sig_register_array_reg[0][12] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\sig_register_array[0][12]_i_1_n_0 ),
        .Q(\sig_register_array_reg[0][12]_0 ),
        .R(AS));
  FDRE \sig_register_array_reg[0][2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\sig_register_array[0][2]_i_1_n_0 ),
        .Q(\sig_register_array_reg[0][2]_1 ),
        .R(AS));
  FDRE \sig_register_array_reg[0][5] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\sig_register_array[0][5]_i_1_n_0 ),
        .Q(\sig_register_array_reg[0][5]_0 ),
        .R(AS));
  FDRE \sig_register_array_reg[0][7] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\sig_register_array[0][7]_i_1_n_0 ),
        .Q(\sig_register_array_reg[0][7]_0 ),
        .R(AS));
  FDRE \sig_register_array_reg[0][8] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\sig_register_array[0][8]_i_1_n_0 ),
        .Q(\sig_register_array_reg[0][8]_0 ),
        .R(AS));
  FDRE \sig_register_array_reg[1][0] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(Bus_RNW_reg_reg_2[12]),
        .Q(\sig_ip2bus_data_reg[0]_0 [8]),
        .R(AS));
  FDRE \sig_register_array_reg[1][10] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(Bus_RNW_reg_reg_2[2]),
        .Q(\sig_ip2bus_data_reg[0]_0 [2]),
        .R(AS));
  FDRE \sig_register_array_reg[1][11] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(Bus_RNW_reg_reg_2[1]),
        .Q(\sig_ip2bus_data_reg[0]_0 [1]),
        .R(AS));
  FDRE \sig_register_array_reg[1][12] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(Bus_RNW_reg_reg_2[0]),
        .Q(\sig_ip2bus_data_reg[0]_0 [0]),
        .R(AS));
  FDRE \sig_register_array_reg[1][1] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(Bus_RNW_reg_reg_2[11]),
        .Q(\sig_register_array_reg_n_0_[1][1] ),
        .R(AS));
  FDRE \sig_register_array_reg[1][2] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(Bus_RNW_reg_reg_2[10]),
        .Q(\sig_ip2bus_data_reg[0]_0 [7]),
        .R(AS));
  FDRE \sig_register_array_reg[1][3] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(Bus_RNW_reg_reg_2[9]),
        .Q(\sig_register_array_reg_n_0_[1][3] ),
        .R(AS));
  FDRE \sig_register_array_reg[1][4] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(Bus_RNW_reg_reg_2[8]),
        .Q(\sig_register_array_reg_n_0_[1][4] ),
        .R(AS));
  FDRE \sig_register_array_reg[1][5] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(Bus_RNW_reg_reg_2[7]),
        .Q(\sig_ip2bus_data_reg[0]_0 [6]),
        .R(AS));
  FDRE \sig_register_array_reg[1][6] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(Bus_RNW_reg_reg_2[6]),
        .Q(\sig_register_array_reg_n_0_[1][6] ),
        .R(AS));
  FDRE \sig_register_array_reg[1][7] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(Bus_RNW_reg_reg_2[5]),
        .Q(\sig_ip2bus_data_reg[0]_0 [5]),
        .R(AS));
  FDRE \sig_register_array_reg[1][8] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(Bus_RNW_reg_reg_2[4]),
        .Q(\sig_ip2bus_data_reg[0]_0 [4]),
        .R(AS));
  FDRE \sig_register_array_reg[1][9] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(Bus_RNW_reg_reg_2[3]),
        .Q(\sig_ip2bus_data_reg[0]_0 [3]),
        .R(AS));
  LUT5 #(
    .INIT(32'h00200000)) 
    sig_rx_channel_reset_i_2
       (.I0(s_axi_wdata[5]),
        .I1(s_axi_wdata[4]),
        .I2(s_axi_wdata[7]),
        .I3(s_axi_wdata[6]),
        .I4(sig_rx_channel_reset_i_5_n_0),
        .O(eqOp__6));
  LUT4 #(
    .INIT(16'h0400)) 
    sig_rx_channel_reset_i_5
       (.I0(s_axi_wdata[1]),
        .I1(s_axi_wdata[0]),
        .I2(s_axi_wdata[3]),
        .I3(s_axi_wdata[2]),
        .O(sig_rx_channel_reset_i_5_n_0));
  FDRE #(
    .INIT(1'b0)) 
    sig_rx_channel_reset_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(sig_rx_channel_reset_reg_0),
        .Q(rst_d1_reg),
        .R(AS));
  LUT2 #(
    .INIT(4'hB)) 
    sig_str_rst_i_6
       (.I0(IPIC_STATE),
        .I1(sig_Bus2IP_CS),
        .O(sig_str_rst_reg_0));
  FDSE #(
    .INIT(1'b0)) 
    sig_str_rst_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\GEN_BKEND_CE_REGISTERS[4].ce_out_i_reg[4] ),
        .Q(Axi_Str_TxD_AReset),
        .S(AS));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pselect_f
   (ce_expnd_i_12,
    \bus2ip_addr_i_reg[5] ,
    Q);
  output ce_expnd_i_12;
  input [3:0]\bus2ip_addr_i_reg[5] ;
  input Q;

  wire Q;
  wire [3:0]\bus2ip_addr_i_reg[5] ;
  wire ce_expnd_i_12;

  LUT5 #(
    .INIT(32'h00000010)) 
    CS
       (.I0(\bus2ip_addr_i_reg[5] [3]),
        .I1(\bus2ip_addr_i_reg[5] [2]),
        .I2(Q),
        .I3(\bus2ip_addr_i_reg[5] [0]),
        .I4(\bus2ip_addr_i_reg[5] [1]),
        .O(ce_expnd_i_12));
endmodule

(* ORIG_REF_NAME = "pselect_f" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pselect_f__parameterized0
   (ce_expnd_i_11,
    \bus2ip_addr_i_reg[5] ,
    Q);
  output ce_expnd_i_11;
  input [3:0]\bus2ip_addr_i_reg[5] ;
  input Q;

  wire Q;
  wire [3:0]\bus2ip_addr_i_reg[5] ;
  wire ce_expnd_i_11;

  LUT5 #(
    .INIT(32'h01000000)) 
    CS
       (.I0(\bus2ip_addr_i_reg[5] [3]),
        .I1(\bus2ip_addr_i_reg[5] [2]),
        .I2(\bus2ip_addr_i_reg[5] [1]),
        .I3(\bus2ip_addr_i_reg[5] [0]),
        .I4(Q),
        .O(ce_expnd_i_11));
endmodule

(* ORIG_REF_NAME = "pselect_f" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pselect_f__parameterized1
   (ce_expnd_i_10,
    \bus2ip_addr_i_reg[5] ,
    Q);
  output ce_expnd_i_10;
  input [3:0]\bus2ip_addr_i_reg[5] ;
  input Q;

  wire Q;
  wire [3:0]\bus2ip_addr_i_reg[5] ;
  wire ce_expnd_i_10;

  LUT5 #(
    .INIT(32'h01000000)) 
    CS
       (.I0(\bus2ip_addr_i_reg[5] [3]),
        .I1(\bus2ip_addr_i_reg[5] [2]),
        .I2(\bus2ip_addr_i_reg[5] [0]),
        .I3(\bus2ip_addr_i_reg[5] [1]),
        .I4(Q),
        .O(ce_expnd_i_10));
endmodule

(* ORIG_REF_NAME = "pselect_f" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pselect_f__parameterized10
   (ce_expnd_i_1,
    \bus2ip_addr_i_reg[5] ,
    Q);
  output ce_expnd_i_1;
  input [3:0]\bus2ip_addr_i_reg[5] ;
  input Q;

  wire Q;
  wire [3:0]\bus2ip_addr_i_reg[5] ;
  wire ce_expnd_i_1;

  LUT5 #(
    .INIT(32'h40000000)) 
    CS
       (.I0(\bus2ip_addr_i_reg[5] [2]),
        .I1(\bus2ip_addr_i_reg[5] [3]),
        .I2(Q),
        .I3(\bus2ip_addr_i_reg[5] [0]),
        .I4(\bus2ip_addr_i_reg[5] [1]),
        .O(ce_expnd_i_1));
endmodule

(* ORIG_REF_NAME = "pselect_f" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pselect_f__parameterized11
   (ce_expnd_i_0,
    \bus2ip_addr_i_reg[5] ,
    Q);
  output ce_expnd_i_0;
  input [3:0]\bus2ip_addr_i_reg[5] ;
  input Q;

  wire Q;
  wire [3:0]\bus2ip_addr_i_reg[5] ;
  wire ce_expnd_i_0;

  LUT5 #(
    .INIT(32'h10000000)) 
    CS
       (.I0(\bus2ip_addr_i_reg[5] [1]),
        .I1(\bus2ip_addr_i_reg[5] [0]),
        .I2(\bus2ip_addr_i_reg[5] [3]),
        .I3(\bus2ip_addr_i_reg[5] [2]),
        .I4(Q),
        .O(ce_expnd_i_0));
endmodule

(* ORIG_REF_NAME = "pselect_f" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pselect_f__parameterized3
   (ce_expnd_i_8,
    \bus2ip_addr_i_reg[5] ,
    Q);
  output ce_expnd_i_8;
  input [3:0]\bus2ip_addr_i_reg[5] ;
  input Q;

  wire Q;
  wire [3:0]\bus2ip_addr_i_reg[5] ;
  wire ce_expnd_i_8;

  LUT5 #(
    .INIT(32'h01000000)) 
    CS
       (.I0(\bus2ip_addr_i_reg[5] [3]),
        .I1(\bus2ip_addr_i_reg[5] [1]),
        .I2(\bus2ip_addr_i_reg[5] [0]),
        .I3(\bus2ip_addr_i_reg[5] [2]),
        .I4(Q),
        .O(ce_expnd_i_8));
endmodule

(* ORIG_REF_NAME = "pselect_f" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pselect_f__parameterized4
   (ce_expnd_i_7,
    \bus2ip_addr_i_reg[5] ,
    Q);
  output ce_expnd_i_7;
  input [3:0]\bus2ip_addr_i_reg[5] ;
  input Q;

  wire Q;
  wire [3:0]\bus2ip_addr_i_reg[5] ;
  wire ce_expnd_i_7;

  LUT5 #(
    .INIT(32'h10000000)) 
    CS
       (.I0(\bus2ip_addr_i_reg[5] [3]),
        .I1(\bus2ip_addr_i_reg[5] [1]),
        .I2(Q),
        .I3(\bus2ip_addr_i_reg[5] [0]),
        .I4(\bus2ip_addr_i_reg[5] [2]),
        .O(ce_expnd_i_7));
endmodule

(* ORIG_REF_NAME = "pselect_f" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pselect_f__parameterized5
   (ce_expnd_i_6,
    \bus2ip_addr_i_reg[5] ,
    Q);
  output ce_expnd_i_6;
  input [3:0]\bus2ip_addr_i_reg[5] ;
  input Q;

  wire Q;
  wire [3:0]\bus2ip_addr_i_reg[5] ;
  wire ce_expnd_i_6;

  LUT5 #(
    .INIT(32'h10000000)) 
    CS
       (.I0(\bus2ip_addr_i_reg[5] [3]),
        .I1(\bus2ip_addr_i_reg[5] [0]),
        .I2(Q),
        .I3(\bus2ip_addr_i_reg[5] [1]),
        .I4(\bus2ip_addr_i_reg[5] [2]),
        .O(ce_expnd_i_6));
endmodule

(* ORIG_REF_NAME = "pselect_f" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pselect_f__parameterized6
   (ce_expnd_i_5,
    \bus2ip_addr_i_reg[5] ,
    Q);
  output ce_expnd_i_5;
  input [3:0]\bus2ip_addr_i_reg[5] ;
  input Q;

  wire Q;
  wire [3:0]\bus2ip_addr_i_reg[5] ;
  wire ce_expnd_i_5;

  LUT5 #(
    .INIT(32'h40000000)) 
    CS
       (.I0(\bus2ip_addr_i_reg[5] [3]),
        .I1(Q),
        .I2(\bus2ip_addr_i_reg[5] [2]),
        .I3(\bus2ip_addr_i_reg[5] [0]),
        .I4(\bus2ip_addr_i_reg[5] [1]),
        .O(ce_expnd_i_5));
endmodule

(* ORIG_REF_NAME = "pselect_f" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pselect_f__parameterized7
   (ce_expnd_i_4,
    \bus2ip_addr_i_reg[5] ,
    Q);
  output ce_expnd_i_4;
  input [3:0]\bus2ip_addr_i_reg[5] ;
  input Q;

  wire Q;
  wire [3:0]\bus2ip_addr_i_reg[5] ;
  wire ce_expnd_i_4;

  LUT5 #(
    .INIT(32'h01000000)) 
    CS
       (.I0(\bus2ip_addr_i_reg[5] [2]),
        .I1(\bus2ip_addr_i_reg[5] [1]),
        .I2(\bus2ip_addr_i_reg[5] [0]),
        .I3(Q),
        .I4(\bus2ip_addr_i_reg[5] [3]),
        .O(ce_expnd_i_4));
endmodule

(* ORIG_REF_NAME = "pselect_f" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pselect_f__parameterized8
   (ce_expnd_i_3,
    \bus2ip_addr_i_reg[5] ,
    Q);
  output ce_expnd_i_3;
  input [3:0]\bus2ip_addr_i_reg[5] ;
  input Q;

  wire Q;
  wire [3:0]\bus2ip_addr_i_reg[5] ;
  wire ce_expnd_i_3;

  LUT5 #(
    .INIT(32'h10000000)) 
    CS
       (.I0(\bus2ip_addr_i_reg[5] [2]),
        .I1(\bus2ip_addr_i_reg[5] [1]),
        .I2(\bus2ip_addr_i_reg[5] [3]),
        .I3(\bus2ip_addr_i_reg[5] [0]),
        .I4(Q),
        .O(ce_expnd_i_3));
endmodule

(* ORIG_REF_NAME = "pselect_f" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pselect_f__parameterized9
   (ce_expnd_i_2,
    \bus2ip_addr_i_reg[5] ,
    Q);
  output ce_expnd_i_2;
  input [3:0]\bus2ip_addr_i_reg[5] ;
  input Q;

  wire Q;
  wire [3:0]\bus2ip_addr_i_reg[5] ;
  wire ce_expnd_i_2;

  LUT5 #(
    .INIT(32'h10000000)) 
    CS
       (.I0(\bus2ip_addr_i_reg[5] [2]),
        .I1(\bus2ip_addr_i_reg[5] [0]),
        .I2(\bus2ip_addr_i_reg[5] [3]),
        .I3(\bus2ip_addr_i_reg[5] [1]),
        .I4(Q),
        .O(ce_expnd_i_2));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_slave_attachment
   (s_axi_rvalid,
    s_axi_bvalid,
    IPIC_STATE_reg,
    \sig_register_array[0]0_out ,
    \sig_register_array_reg[0][5] ,
    \sig_register_array_reg[0][5]_0 ,
    \sig_register_array_reg[0][2] ,
    sig_str_rst_reg,
    D,
    \sig_ip2bus_data_reg[25] ,
    \sig_ip2bus_data_reg[25]_0 ,
    \sig_ip2bus_data_reg[25]_1 ,
    \sig_ip2bus_data_reg[12] ,
    \sig_ip2bus_data_reg[10] ,
    \sig_register_array_reg[0][8] ,
    \sig_register_array_reg[0][7] ,
    \sig_register_array_reg[0][7]_0 ,
    \sig_register_array_reg[0][8]_0 ,
    SR,
    E,
    \sig_register_array_reg[1][0] ,
    IP2Bus_RdAck_reg,
    \sig_register_array_reg[0][12] ,
    \sig_register_array_reg[0][11] ,
    \sig_register_array_reg[0][7]_1 ,
    IP2Bus_WrAck_reg,
    \sig_register_array_reg[0][8]_1 ,
    \sig_register_array_reg[0][8]_2 ,
    \sig_register_array_reg[1][0]_0 ,
    \sig_register_array_reg[0][2]_0 ,
    sig_rd_rlen,
    sig_rd_rlen_reg,
    \sig_ip2bus_data_reg[14] ,
    \sig_ip2bus_data_reg[14]_0 ,
    \sig_ip2bus_data_reg[0] ,
    \sig_ip2bus_data_reg[14]_1 ,
    sig_Bus2IP_RdCE,
    sig_rx_channel_reset_reg,
    sig_str_rst_reg_0,
    s_axi_rdata,
    AS,
    s_axi_aclk,
    cs_ce_clr,
    s_axi_arvalid,
    IP2Bus_RdAck_reg_0,
    IP2Bus_WrAck_reg_0,
    s_axi_awvalid,
    s_axi_wvalid,
    s_axi_araddr,
    s_axi_awaddr,
    s_axi_wdata,
    axi4_fifo_rd_en_i,
    \sig_register_array[0]1_in ,
    \goreg_dm.dout_i_reg[6] ,
    Q,
    empty_fwft_i_reg,
    \goreg_dm.dout_i_reg[22] ,
    empty_fwft_i_reg_0,
    empty_fwft_i_reg_1,
    empty_fwft_i_reg_2,
    empty_fwft_i_reg_3,
    empty_fwft_i_reg_4,
    \count_reg[12] ,
    \sig_register_array_reg[1][0]_1 ,
    \sig_register_array_reg[0][8]_3 ,
    empty_fwft_i_reg_5,
    \sig_register_array_reg[0][7]_2 ,
    \sig_register_array_reg[0][5]_1 ,
    \sig_register_array_reg[0][2]_1 ,
    IPIC_STATE,
    sig_rxd_reset,
    eqOp__6,
    s_axi_aresetn,
    IPIC_STATE_reg_0,
    p_8_out,
    sig_rxd_prog_empty_d1,
    prog_full_i,
    s_axi_bready,
    s_axi_rready,
    out,
    sig_rx_channel_reset_reg_0,
    \sig_register_array_reg[0][12]_0 ,
    \sig_register_array_reg[0][11]_0 ,
    \sig_ip2bus_data_reg[0]_0 );
  output s_axi_rvalid;
  output s_axi_bvalid;
  output IPIC_STATE_reg;
  output [0:0]\sig_register_array[0]0_out ;
  output \sig_register_array_reg[0][5] ;
  output \sig_register_array_reg[0][5]_0 ;
  output \sig_register_array_reg[0][2] ;
  output sig_str_rst_reg;
  output [17:0]D;
  output \sig_ip2bus_data_reg[25] ;
  output \sig_ip2bus_data_reg[25]_0 ;
  output \sig_ip2bus_data_reg[25]_1 ;
  output \sig_ip2bus_data_reg[12] ;
  output \sig_ip2bus_data_reg[10] ;
  output \sig_register_array_reg[0][8] ;
  output [2:0]\sig_register_array_reg[0][7] ;
  output \sig_register_array_reg[0][7]_0 ;
  output \sig_register_array_reg[0][8]_0 ;
  output [0:0]SR;
  output [0:0]E;
  output \sig_register_array_reg[1][0] ;
  output IP2Bus_RdAck_reg;
  output \sig_register_array_reg[0][12] ;
  output \sig_register_array_reg[0][11] ;
  output \sig_register_array_reg[0][7]_1 ;
  output IP2Bus_WrAck_reg;
  output \sig_register_array_reg[0][8]_1 ;
  output \sig_register_array_reg[0][8]_2 ;
  output [12:0]\sig_register_array_reg[1][0]_0 ;
  output \sig_register_array_reg[0][2]_0 ;
  output sig_rd_rlen;
  output sig_rd_rlen_reg;
  output \sig_ip2bus_data_reg[14] ;
  output \sig_ip2bus_data_reg[14]_0 ;
  output \sig_ip2bus_data_reg[0] ;
  output \sig_ip2bus_data_reg[14]_1 ;
  output [0:0]sig_Bus2IP_RdCE;
  output sig_rx_channel_reset_reg;
  output sig_str_rst_reg_0;
  output [31:0]s_axi_rdata;
  input [0:0]AS;
  input s_axi_aclk;
  input cs_ce_clr;
  input s_axi_arvalid;
  input IP2Bus_RdAck_reg_0;
  input IP2Bus_WrAck_reg_0;
  input s_axi_awvalid;
  input s_axi_wvalid;
  input [3:0]s_axi_araddr;
  input [3:0]s_axi_awaddr;
  input [12:0]s_axi_wdata;
  input axi4_fifo_rd_en_i;
  input \sig_register_array[0]1_in ;
  input \goreg_dm.dout_i_reg[6] ;
  input [10:0]Q;
  input empty_fwft_i_reg;
  input [11:0]\goreg_dm.dout_i_reg[22] ;
  input empty_fwft_i_reg_0;
  input empty_fwft_i_reg_1;
  input empty_fwft_i_reg_2;
  input empty_fwft_i_reg_3;
  input empty_fwft_i_reg_4;
  input \count_reg[12] ;
  input [8:0]\sig_register_array_reg[1][0]_1 ;
  input \sig_register_array_reg[0][8]_3 ;
  input empty_fwft_i_reg_5;
  input \sig_register_array_reg[0][7]_2 ;
  input \sig_register_array_reg[0][5]_1 ;
  input \sig_register_array_reg[0][2]_1 ;
  input IPIC_STATE;
  input sig_rxd_reset;
  input eqOp__6;
  input s_axi_aresetn;
  input IPIC_STATE_reg_0;
  input p_8_out;
  input sig_rxd_prog_empty_d1;
  input prog_full_i;
  input s_axi_bready;
  input s_axi_rready;
  input out;
  input sig_rx_channel_reset_reg_0;
  input \sig_register_array_reg[0][12]_0 ;
  input \sig_register_array_reg[0][11]_0 ;
  input [31:0]\sig_ip2bus_data_reg[0]_0 ;

  wire [0:0]AS;
  wire [17:0]D;
  wire [0:0]E;
  wire IP2Bus_RdAck_reg;
  wire IP2Bus_RdAck_reg_0;
  wire IP2Bus_WrAck_reg;
  wire IP2Bus_WrAck_reg_0;
  wire IPIC_STATE;
  wire IPIC_STATE_reg;
  wire IPIC_STATE_reg_0;
  wire [10:0]Q;
  wire [0:0]SR;
  wire axi4_fifo_rd_en_i;
  wire \bus2ip_addr_i[2]_i_1_n_0 ;
  wire \bus2ip_addr_i[3]_i_1_n_0 ;
  wire \bus2ip_addr_i[4]_i_1_n_0 ;
  wire \bus2ip_addr_i[5]_i_1_n_0 ;
  wire \bus2ip_addr_i[5]_i_2_n_0 ;
  wire \bus2ip_addr_i_reg_n_0_[2] ;
  wire \bus2ip_addr_i_reg_n_0_[3] ;
  wire \bus2ip_addr_i_reg_n_0_[4] ;
  wire \bus2ip_addr_i_reg_n_0_[5] ;
  wire bus2ip_rnw_i03_out;
  wire \count_reg[12] ;
  wire cs_ce_clr;
  wire empty_fwft_i_reg;
  wire empty_fwft_i_reg_0;
  wire empty_fwft_i_reg_1;
  wire empty_fwft_i_reg_2;
  wire empty_fwft_i_reg_3;
  wire empty_fwft_i_reg_4;
  wire empty_fwft_i_reg_5;
  wire eqOp__6;
  wire [11:0]\goreg_dm.dout_i_reg[22] ;
  wire \goreg_dm.dout_i_reg[6] ;
  wire out;
  wire p_8_out;
  wire prog_full_i;
  wire rst;
  wire s_axi_aclk;
  wire [3:0]s_axi_araddr;
  wire s_axi_aresetn;
  wire s_axi_arvalid;
  wire [3:0]s_axi_awaddr;
  wire s_axi_awvalid;
  wire s_axi_bready;
  wire s_axi_bvalid;
  wire s_axi_bvalid_i_i_1_n_0;
  wire [31:0]s_axi_rdata;
  wire s_axi_rdata_i;
  wire s_axi_rready;
  wire s_axi_rvalid;
  wire s_axi_rvalid_i_i_1_n_0;
  wire [12:0]s_axi_wdata;
  wire s_axi_wvalid;
  wire sig_Bus2IP_RNW;
  wire [0:0]sig_Bus2IP_RdCE;
  wire \sig_ip2bus_data_reg[0] ;
  wire [31:0]\sig_ip2bus_data_reg[0]_0 ;
  wire \sig_ip2bus_data_reg[10] ;
  wire \sig_ip2bus_data_reg[12] ;
  wire \sig_ip2bus_data_reg[14] ;
  wire \sig_ip2bus_data_reg[14]_0 ;
  wire \sig_ip2bus_data_reg[14]_1 ;
  wire \sig_ip2bus_data_reg[25] ;
  wire \sig_ip2bus_data_reg[25]_0 ;
  wire \sig_ip2bus_data_reg[25]_1 ;
  wire sig_rd_rlen;
  wire sig_rd_rlen_reg;
  wire [0:0]\sig_register_array[0]0_out ;
  wire \sig_register_array[0]1_in ;
  wire \sig_register_array_reg[0][11] ;
  wire \sig_register_array_reg[0][11]_0 ;
  wire \sig_register_array_reg[0][12] ;
  wire \sig_register_array_reg[0][12]_0 ;
  wire \sig_register_array_reg[0][2] ;
  wire \sig_register_array_reg[0][2]_0 ;
  wire \sig_register_array_reg[0][2]_1 ;
  wire \sig_register_array_reg[0][5] ;
  wire \sig_register_array_reg[0][5]_0 ;
  wire \sig_register_array_reg[0][5]_1 ;
  wire [2:0]\sig_register_array_reg[0][7] ;
  wire \sig_register_array_reg[0][7]_0 ;
  wire \sig_register_array_reg[0][7]_1 ;
  wire \sig_register_array_reg[0][7]_2 ;
  wire \sig_register_array_reg[0][8] ;
  wire \sig_register_array_reg[0][8]_0 ;
  wire \sig_register_array_reg[0][8]_1 ;
  wire \sig_register_array_reg[0][8]_2 ;
  wire \sig_register_array_reg[0][8]_3 ;
  wire \sig_register_array_reg[1][0] ;
  wire [12:0]\sig_register_array_reg[1][0]_0 ;
  wire [8:0]\sig_register_array_reg[1][0]_1 ;
  wire sig_rx_channel_reset_reg;
  wire sig_rx_channel_reset_reg_0;
  wire sig_rxd_prog_empty_d1;
  wire sig_rxd_reset;
  wire sig_str_rst_reg;
  wire sig_str_rst_reg_0;
  wire start2;
  wire start2_i_1_n_0;
  wire [1:0]state;
  wire \state[0]_i_1_n_0 ;
  wire \state[1]_i_1_n_0 ;
  wire \state[1]_i_2_n_0 ;
  wire \state[1]_i_3_n_0 ;

  LUT1 #(
    .INIT(2'h1)) 
    IP2Bus_WrAck_i_2
       (.I0(sig_Bus2IP_RNW),
        .O(IP2Bus_WrAck_reg));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_address_decoder I_DECODER
       (.D(D),
        .E(E),
        .IP2Bus_RdAck_reg(IP2Bus_RdAck_reg),
        .IP2Bus_RdAck_reg_0(IP2Bus_RdAck_reg_0),
        .IP2Bus_WrAck_reg(IP2Bus_WrAck_reg_0),
        .IPIC_STATE(IPIC_STATE),
        .IPIC_STATE_reg(IPIC_STATE_reg),
        .IPIC_STATE_reg_0(IPIC_STATE_reg_0),
        .Q(start2),
        .SR(SR),
        .axi4_fifo_rd_en_i(axi4_fifo_rd_en_i),
        .\bus2ip_addr_i_reg[5] ({\bus2ip_addr_i_reg_n_0_[5] ,\bus2ip_addr_i_reg_n_0_[4] ,\bus2ip_addr_i_reg_n_0_[3] ,\bus2ip_addr_i_reg_n_0_[2] }),
        .\count_reg[12] (Q),
        .\count_reg[12]_0 (\count_reg[12] ),
        .cs_ce_clr(cs_ce_clr),
        .empty_fwft_i_reg(empty_fwft_i_reg),
        .empty_fwft_i_reg_0(empty_fwft_i_reg_0),
        .empty_fwft_i_reg_1(empty_fwft_i_reg_1),
        .empty_fwft_i_reg_2(empty_fwft_i_reg_2),
        .empty_fwft_i_reg_3(empty_fwft_i_reg_3),
        .empty_fwft_i_reg_4(empty_fwft_i_reg_4),
        .empty_fwft_i_reg_5(empty_fwft_i_reg_5),
        .eqOp__6(eqOp__6),
        .\goreg_dm.dout_i_reg[22] (\goreg_dm.dout_i_reg[22] ),
        .\goreg_dm.dout_i_reg[6] (\goreg_dm.dout_i_reg[6] ),
        .out(out),
        .p_8_out(p_8_out),
        .prog_full_i(prog_full_i),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_aresetn(s_axi_aresetn),
        .s_axi_wdata(s_axi_wdata),
        .sig_Bus2IP_RNW(sig_Bus2IP_RNW),
        .sig_Bus2IP_RdCE(sig_Bus2IP_RdCE),
        .\sig_ip2bus_data_reg[0] (\sig_ip2bus_data_reg[0] ),
        .\sig_ip2bus_data_reg[10] (\sig_ip2bus_data_reg[10] ),
        .\sig_ip2bus_data_reg[12] (\sig_ip2bus_data_reg[12] ),
        .\sig_ip2bus_data_reg[14] (\sig_ip2bus_data_reg[14] ),
        .\sig_ip2bus_data_reg[14]_0 (\sig_ip2bus_data_reg[14]_0 ),
        .\sig_ip2bus_data_reg[14]_1 (\sig_ip2bus_data_reg[14]_1 ),
        .\sig_ip2bus_data_reg[25] (\sig_ip2bus_data_reg[25] ),
        .\sig_ip2bus_data_reg[25]_0 (\sig_ip2bus_data_reg[25]_0 ),
        .\sig_ip2bus_data_reg[25]_1 (\sig_ip2bus_data_reg[25]_1 ),
        .sig_rd_rlen(sig_rd_rlen),
        .sig_rd_rlen_reg(sig_rd_rlen_reg),
        .\sig_register_array[0]0_out (\sig_register_array[0]0_out ),
        .\sig_register_array[0]1_in (\sig_register_array[0]1_in ),
        .\sig_register_array_reg[0][11] (\sig_register_array_reg[0][11] ),
        .\sig_register_array_reg[0][11]_0 (\sig_register_array_reg[0][11]_0 ),
        .\sig_register_array_reg[0][12] (\sig_register_array_reg[0][12] ),
        .\sig_register_array_reg[0][12]_0 (\sig_register_array_reg[0][12]_0 ),
        .\sig_register_array_reg[0][2] (\sig_register_array_reg[0][2] ),
        .\sig_register_array_reg[0][2]_0 (\sig_register_array_reg[0][2]_0 ),
        .\sig_register_array_reg[0][2]_1 (\sig_register_array_reg[0][2]_1 ),
        .\sig_register_array_reg[0][5] (\sig_register_array_reg[0][5] ),
        .\sig_register_array_reg[0][5]_0 (\sig_register_array_reg[0][5]_0 ),
        .\sig_register_array_reg[0][5]_1 (\sig_register_array_reg[0][5]_1 ),
        .\sig_register_array_reg[0][7] (\sig_register_array_reg[0][7] ),
        .\sig_register_array_reg[0][7]_0 (\sig_register_array_reg[0][7]_0 ),
        .\sig_register_array_reg[0][7]_1 (\sig_register_array_reg[0][7]_1 ),
        .\sig_register_array_reg[0][7]_2 (\sig_register_array_reg[0][7]_2 ),
        .\sig_register_array_reg[0][8] (\sig_register_array_reg[0][8] ),
        .\sig_register_array_reg[0][8]_0 (\sig_register_array_reg[0][8]_0 ),
        .\sig_register_array_reg[0][8]_1 (\sig_register_array_reg[0][8]_1 ),
        .\sig_register_array_reg[0][8]_2 (\sig_register_array_reg[0][8]_2 ),
        .\sig_register_array_reg[0][8]_3 (\sig_register_array_reg[0][8]_3 ),
        .\sig_register_array_reg[1][0] (\sig_register_array_reg[1][0] ),
        .\sig_register_array_reg[1][0]_0 (\sig_register_array_reg[1][0]_0 ),
        .\sig_register_array_reg[1][0]_1 (\sig_register_array_reg[1][0]_1 ),
        .sig_rx_channel_reset_reg(sig_rx_channel_reset_reg),
        .sig_rx_channel_reset_reg_0(sig_rx_channel_reset_reg_0),
        .sig_rxd_prog_empty_d1(sig_rxd_prog_empty_d1),
        .sig_rxd_reset(sig_rxd_reset),
        .sig_str_rst_reg(sig_str_rst_reg),
        .sig_str_rst_reg_0(sig_str_rst_reg_0));
  LUT5 #(
    .INIT(32'hFFFB0008)) 
    \bus2ip_addr_i[2]_i_1 
       (.I0(s_axi_araddr[0]),
        .I1(s_axi_arvalid),
        .I2(state[0]),
        .I3(state[1]),
        .I4(s_axi_awaddr[0]),
        .O(\bus2ip_addr_i[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFB0008)) 
    \bus2ip_addr_i[3]_i_1 
       (.I0(s_axi_araddr[1]),
        .I1(s_axi_arvalid),
        .I2(state[0]),
        .I3(state[1]),
        .I4(s_axi_awaddr[1]),
        .O(\bus2ip_addr_i[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT5 #(
    .INIT(32'hFFFB0008)) 
    \bus2ip_addr_i[4]_i_1 
       (.I0(s_axi_araddr[2]),
        .I1(s_axi_arvalid),
        .I2(state[0]),
        .I3(state[1]),
        .I4(s_axi_awaddr[2]),
        .O(\bus2ip_addr_i[4]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h03020202)) 
    \bus2ip_addr_i[5]_i_1 
       (.I0(s_axi_arvalid),
        .I1(state[1]),
        .I2(state[0]),
        .I3(s_axi_awvalid),
        .I4(s_axi_wvalid),
        .O(\bus2ip_addr_i[5]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFB0008)) 
    \bus2ip_addr_i[5]_i_2 
       (.I0(s_axi_araddr[3]),
        .I1(s_axi_arvalid),
        .I2(state[0]),
        .I3(state[1]),
        .I4(s_axi_awaddr[3]),
        .O(\bus2ip_addr_i[5]_i_2_n_0 ));
  FDRE \bus2ip_addr_i_reg[2] 
       (.C(s_axi_aclk),
        .CE(\bus2ip_addr_i[5]_i_1_n_0 ),
        .D(\bus2ip_addr_i[2]_i_1_n_0 ),
        .Q(\bus2ip_addr_i_reg_n_0_[2] ),
        .R(rst));
  FDRE \bus2ip_addr_i_reg[3] 
       (.C(s_axi_aclk),
        .CE(\bus2ip_addr_i[5]_i_1_n_0 ),
        .D(\bus2ip_addr_i[3]_i_1_n_0 ),
        .Q(\bus2ip_addr_i_reg_n_0_[3] ),
        .R(rst));
  FDRE \bus2ip_addr_i_reg[4] 
       (.C(s_axi_aclk),
        .CE(\bus2ip_addr_i[5]_i_1_n_0 ),
        .D(\bus2ip_addr_i[4]_i_1_n_0 ),
        .Q(\bus2ip_addr_i_reg_n_0_[4] ),
        .R(rst));
  FDRE \bus2ip_addr_i_reg[5] 
       (.C(s_axi_aclk),
        .CE(\bus2ip_addr_i[5]_i_1_n_0 ),
        .D(\bus2ip_addr_i[5]_i_2_n_0 ),
        .Q(\bus2ip_addr_i_reg_n_0_[5] ),
        .R(rst));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT3 #(
    .INIT(8'h02)) 
    bus2ip_rnw_i_i_1
       (.I0(s_axi_arvalid),
        .I1(state[0]),
        .I2(state[1]),
        .O(bus2ip_rnw_i03_out));
  FDRE bus2ip_rnw_i_reg
       (.C(s_axi_aclk),
        .CE(\bus2ip_addr_i[5]_i_1_n_0 ),
        .D(bus2ip_rnw_i03_out),
        .Q(sig_Bus2IP_RNW),
        .R(rst));
  FDRE rst_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(AS),
        .Q(rst),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h08FF0808)) 
    s_axi_bvalid_i_i_1
       (.I0(IP2Bus_WrAck_reg_0),
        .I1(state[1]),
        .I2(state[0]),
        .I3(s_axi_bready),
        .I4(s_axi_bvalid),
        .O(s_axi_bvalid_i_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    s_axi_bvalid_i_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_axi_bvalid_i_i_1_n_0),
        .Q(s_axi_bvalid),
        .R(rst));
  LUT2 #(
    .INIT(4'h2)) 
    \s_axi_rdata_i[31]_i_1 
       (.I0(state[0]),
        .I1(state[1]),
        .O(s_axi_rdata_i));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[0] 
       (.C(s_axi_aclk),
        .CE(s_axi_rdata_i),
        .D(\sig_ip2bus_data_reg[0]_0 [0]),
        .Q(s_axi_rdata[0]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[10] 
       (.C(s_axi_aclk),
        .CE(s_axi_rdata_i),
        .D(\sig_ip2bus_data_reg[0]_0 [10]),
        .Q(s_axi_rdata[10]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[11] 
       (.C(s_axi_aclk),
        .CE(s_axi_rdata_i),
        .D(\sig_ip2bus_data_reg[0]_0 [11]),
        .Q(s_axi_rdata[11]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[12] 
       (.C(s_axi_aclk),
        .CE(s_axi_rdata_i),
        .D(\sig_ip2bus_data_reg[0]_0 [12]),
        .Q(s_axi_rdata[12]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[13] 
       (.C(s_axi_aclk),
        .CE(s_axi_rdata_i),
        .D(\sig_ip2bus_data_reg[0]_0 [13]),
        .Q(s_axi_rdata[13]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[14] 
       (.C(s_axi_aclk),
        .CE(s_axi_rdata_i),
        .D(\sig_ip2bus_data_reg[0]_0 [14]),
        .Q(s_axi_rdata[14]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[15] 
       (.C(s_axi_aclk),
        .CE(s_axi_rdata_i),
        .D(\sig_ip2bus_data_reg[0]_0 [15]),
        .Q(s_axi_rdata[15]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[16] 
       (.C(s_axi_aclk),
        .CE(s_axi_rdata_i),
        .D(\sig_ip2bus_data_reg[0]_0 [16]),
        .Q(s_axi_rdata[16]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[17] 
       (.C(s_axi_aclk),
        .CE(s_axi_rdata_i),
        .D(\sig_ip2bus_data_reg[0]_0 [17]),
        .Q(s_axi_rdata[17]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[18] 
       (.C(s_axi_aclk),
        .CE(s_axi_rdata_i),
        .D(\sig_ip2bus_data_reg[0]_0 [18]),
        .Q(s_axi_rdata[18]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[19] 
       (.C(s_axi_aclk),
        .CE(s_axi_rdata_i),
        .D(\sig_ip2bus_data_reg[0]_0 [19]),
        .Q(s_axi_rdata[19]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[1] 
       (.C(s_axi_aclk),
        .CE(s_axi_rdata_i),
        .D(\sig_ip2bus_data_reg[0]_0 [1]),
        .Q(s_axi_rdata[1]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[20] 
       (.C(s_axi_aclk),
        .CE(s_axi_rdata_i),
        .D(\sig_ip2bus_data_reg[0]_0 [20]),
        .Q(s_axi_rdata[20]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[21] 
       (.C(s_axi_aclk),
        .CE(s_axi_rdata_i),
        .D(\sig_ip2bus_data_reg[0]_0 [21]),
        .Q(s_axi_rdata[21]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[22] 
       (.C(s_axi_aclk),
        .CE(s_axi_rdata_i),
        .D(\sig_ip2bus_data_reg[0]_0 [22]),
        .Q(s_axi_rdata[22]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[23] 
       (.C(s_axi_aclk),
        .CE(s_axi_rdata_i),
        .D(\sig_ip2bus_data_reg[0]_0 [23]),
        .Q(s_axi_rdata[23]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[24] 
       (.C(s_axi_aclk),
        .CE(s_axi_rdata_i),
        .D(\sig_ip2bus_data_reg[0]_0 [24]),
        .Q(s_axi_rdata[24]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[25] 
       (.C(s_axi_aclk),
        .CE(s_axi_rdata_i),
        .D(\sig_ip2bus_data_reg[0]_0 [25]),
        .Q(s_axi_rdata[25]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[26] 
       (.C(s_axi_aclk),
        .CE(s_axi_rdata_i),
        .D(\sig_ip2bus_data_reg[0]_0 [26]),
        .Q(s_axi_rdata[26]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[27] 
       (.C(s_axi_aclk),
        .CE(s_axi_rdata_i),
        .D(\sig_ip2bus_data_reg[0]_0 [27]),
        .Q(s_axi_rdata[27]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[28] 
       (.C(s_axi_aclk),
        .CE(s_axi_rdata_i),
        .D(\sig_ip2bus_data_reg[0]_0 [28]),
        .Q(s_axi_rdata[28]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[29] 
       (.C(s_axi_aclk),
        .CE(s_axi_rdata_i),
        .D(\sig_ip2bus_data_reg[0]_0 [29]),
        .Q(s_axi_rdata[29]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[2] 
       (.C(s_axi_aclk),
        .CE(s_axi_rdata_i),
        .D(\sig_ip2bus_data_reg[0]_0 [2]),
        .Q(s_axi_rdata[2]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[30] 
       (.C(s_axi_aclk),
        .CE(s_axi_rdata_i),
        .D(\sig_ip2bus_data_reg[0]_0 [30]),
        .Q(s_axi_rdata[30]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[31] 
       (.C(s_axi_aclk),
        .CE(s_axi_rdata_i),
        .D(\sig_ip2bus_data_reg[0]_0 [31]),
        .Q(s_axi_rdata[31]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[3] 
       (.C(s_axi_aclk),
        .CE(s_axi_rdata_i),
        .D(\sig_ip2bus_data_reg[0]_0 [3]),
        .Q(s_axi_rdata[3]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[4] 
       (.C(s_axi_aclk),
        .CE(s_axi_rdata_i),
        .D(\sig_ip2bus_data_reg[0]_0 [4]),
        .Q(s_axi_rdata[4]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[5] 
       (.C(s_axi_aclk),
        .CE(s_axi_rdata_i),
        .D(\sig_ip2bus_data_reg[0]_0 [5]),
        .Q(s_axi_rdata[5]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[6] 
       (.C(s_axi_aclk),
        .CE(s_axi_rdata_i),
        .D(\sig_ip2bus_data_reg[0]_0 [6]),
        .Q(s_axi_rdata[6]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[7] 
       (.C(s_axi_aclk),
        .CE(s_axi_rdata_i),
        .D(\sig_ip2bus_data_reg[0]_0 [7]),
        .Q(s_axi_rdata[7]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[8] 
       (.C(s_axi_aclk),
        .CE(s_axi_rdata_i),
        .D(\sig_ip2bus_data_reg[0]_0 [8]),
        .Q(s_axi_rdata[8]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[9] 
       (.C(s_axi_aclk),
        .CE(s_axi_rdata_i),
        .D(\sig_ip2bus_data_reg[0]_0 [9]),
        .Q(s_axi_rdata[9]),
        .R(rst));
  LUT5 #(
    .INIT(32'h08FF0808)) 
    s_axi_rvalid_i_i_1
       (.I0(IP2Bus_RdAck_reg_0),
        .I1(state[0]),
        .I2(state[1]),
        .I3(s_axi_rready),
        .I4(s_axi_rvalid),
        .O(s_axi_rvalid_i_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    s_axi_rvalid_i_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_axi_rvalid_i_i_1_n_0),
        .Q(s_axi_rvalid),
        .R(rst));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT5 #(
    .INIT(32'h000F0008)) 
    start2_i_1
       (.I0(s_axi_awvalid),
        .I1(s_axi_wvalid),
        .I2(state[1]),
        .I3(state[0]),
        .I4(s_axi_arvalid),
        .O(start2_i_1_n_0));
  FDRE start2_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(start2_i_1_n_0),
        .Q(start2),
        .R(rst));
  LUT5 #(
    .INIT(32'h33FFE2E2)) 
    \state[0]_i_1 
       (.I0(s_axi_arvalid),
        .I1(state[1]),
        .I2(IP2Bus_WrAck_reg_0),
        .I3(\state[1]_i_2_n_0 ),
        .I4(state[0]),
        .O(\state[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h55FFFF0C5500FF0C)) 
    \state[1]_i_1 
       (.I0(\state[1]_i_2_n_0 ),
        .I1(\state[1]_i_3_n_0 ),
        .I2(s_axi_arvalid),
        .I3(state[1]),
        .I4(state[0]),
        .I5(IP2Bus_RdAck_reg_0),
        .O(\state[1]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \state[1]_i_2 
       (.I0(s_axi_bready),
        .I1(s_axi_bvalid),
        .I2(s_axi_rready),
        .I3(s_axi_rvalid),
        .O(\state[1]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \state[1]_i_3 
       (.I0(s_axi_awvalid),
        .I1(s_axi_wvalid),
        .O(\state[1]_i_3_n_0 ));
  FDRE \state_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\state[0]_i_1_n_0 ),
        .Q(state[0]),
        .R(rst));
  FDRE \state_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\state[1]_i_1_n_0 ),
        .Q(state[1]),
        .R(rst));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sync_fifo_fg
   (in0,
    out,
    \sig_register_array[0]1_in ,
    \sig_ip2bus_data_reg[25] ,
    D,
    \sig_ip2bus_data_reg[9] ,
    s_axi_aclk,
    rx_fg_len_empty_d1,
    ram_full_i,
    axi_str_rxd_tvalid,
    axi_str_rxd_tlast,
    E,
    \grxd.rx_partial_pkt_reg ,
    Q,
    \count_reg[7] ,
    \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3] ,
    \count_reg[11] ,
    sig_rd_rlen_reg,
    rx_len_wr_en,
    sig_rx_channel_reset_reg,
    Axi_Str_TxD_AReset,
    s_axi_aresetn,
    \GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9] ,
    empty_fwft_i_reg,
    \GEN_BKEND_CE_REGISTERS[4].ce_out_i_reg[4] ,
    fg_rxd_wr_length);
  output in0;
  output out;
  output \sig_register_array[0]1_in ;
  output \sig_ip2bus_data_reg[25] ;
  output [5:0]D;
  output [15:0]\sig_ip2bus_data_reg[9] ;
  input s_axi_aclk;
  input rx_fg_len_empty_d1;
  input ram_full_i;
  input axi_str_rxd_tvalid;
  input axi_str_rxd_tlast;
  input [0:0]E;
  input \grxd.rx_partial_pkt_reg ;
  input [4:0]Q;
  input \count_reg[7] ;
  input \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3] ;
  input \count_reg[11] ;
  input sig_rd_rlen_reg;
  input rx_len_wr_en;
  input sig_rx_channel_reset_reg;
  input Axi_Str_TxD_AReset;
  input s_axi_aresetn;
  input \GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9] ;
  input empty_fwft_i_reg;
  input \GEN_BKEND_CE_REGISTERS[4].ce_out_i_reg[4] ;
  input [19:0]fg_rxd_wr_length;

  wire Axi_Str_TxD_AReset;
  wire [5:0]D;
  wire [0:0]E;
  wire \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3] ;
  wire \GEN_BKEND_CE_REGISTERS[4].ce_out_i_reg[4] ;
  wire \GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9] ;
  wire [4:0]Q;
  wire axi_str_rxd_tlast;
  wire axi_str_rxd_tvalid;
  wire \count_reg[11] ;
  wire \count_reg[7] ;
  wire empty_fwft_i_reg;
  wire [19:0]fg_rxd_wr_length;
  wire \grxd.rx_partial_pkt_reg ;
  wire in0;
  wire out;
  wire ram_full_i;
  wire rx_fg_len_empty_d1;
  wire rx_len_wr_en;
  wire s_axi_aclk;
  wire s_axi_aresetn;
  wire \sig_ip2bus_data_reg[25] ;
  wire [15:0]\sig_ip2bus_data_reg[9] ;
  wire sig_rd_rlen_reg;
  wire \sig_register_array[0]1_in ;
  wire sig_rx_channel_reset_reg;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_1_2 \FAMILY_SUPPORTED.I_SYNC_FIFO_BRAM 
       (.Axi_Str_TxD_AReset(Axi_Str_TxD_AReset),
        .D(D),
        .E(E),
        .\GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3] (\GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3] ),
        .\GEN_BKEND_CE_REGISTERS[4].ce_out_i_reg[4] (\GEN_BKEND_CE_REGISTERS[4].ce_out_i_reg[4] ),
        .\GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9] (\GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9] ),
        .Q(Q),
        .axi_str_rxd_tlast(axi_str_rxd_tlast),
        .axi_str_rxd_tvalid(axi_str_rxd_tvalid),
        .\count_reg[11] (\count_reg[11] ),
        .\count_reg[7] (\count_reg[7] ),
        .empty_fwft_i_reg(empty_fwft_i_reg),
        .fg_rxd_wr_length(fg_rxd_wr_length),
        .\grxd.rx_partial_pkt_reg (\grxd.rx_partial_pkt_reg ),
        .in0(in0),
        .out(out),
        .ram_full_i(ram_full_i),
        .rx_fg_len_empty_d1(rx_fg_len_empty_d1),
        .rx_len_wr_en(rx_len_wr_en),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_aresetn(s_axi_aresetn),
        .\sig_ip2bus_data_reg[25] (\sig_ip2bus_data_reg[25] ),
        .\sig_ip2bus_data_reg[9] (\sig_ip2bus_data_reg[9] ),
        .sig_rd_rlen_reg(sig_rd_rlen_reg),
        .\sig_register_array[0]1_in (\sig_register_array[0]1_in ),
        .sig_rx_channel_reset_reg(sig_rx_channel_reset_reg));
endmodule

(* CHECK_LICENSE_TYPE = "xcl_design_xilmonitor_fifo0_0,axi_fifo_mm_s,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "axi_fifo_mm_s,Vivado 2016.3_sdx" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (interrupt,
    s_axi_aclk,
    s_axi_aresetn,
    s_axi_awaddr,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bresp,
    s_axi_bvalid,
    s_axi_bready,
    s_axi_araddr,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rvalid,
    s_axi_rready,
    s_axi4_arid,
    s_axi4_araddr,
    s_axi4_arlen,
    s_axi4_arsize,
    s_axi4_arburst,
    s_axi4_arlock,
    s_axi4_arcache,
    s_axi4_arprot,
    s_axi4_arvalid,
    s_axi4_arready,
    s_axi4_rid,
    s_axi4_rdata,
    s_axi4_rresp,
    s_axi4_rlast,
    s_axi4_rvalid,
    s_axi4_rready,
    s2mm_prmry_reset_out_n,
    axi_str_rxd_tvalid,
    axi_str_rxd_tready,
    axi_str_rxd_tlast,
    axi_str_rxd_tdata,
    axi_str_rxd_tid);
  (* x_interface_info = "xilinx.com:signal:interrupt:1.0 interrupt_intf INTERRUPT" *) output interrupt;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 aclk_s_axi CLK" *) input s_axi_aclk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 rst_s_axi RST" *) input s_axi_aresetn;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI AWADDR" *) input [31:0]s_axi_awaddr;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI AWVALID" *) input s_axi_awvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI AWREADY" *) output s_axi_awready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI WDATA" *) input [31:0]s_axi_wdata;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI WSTRB" *) input [3:0]s_axi_wstrb;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI WVALID" *) input s_axi_wvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI WREADY" *) output s_axi_wready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI BRESP" *) output [1:0]s_axi_bresp;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI BVALID" *) output s_axi_bvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI BREADY" *) input s_axi_bready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI ARADDR" *) input [31:0]s_axi_araddr;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI ARVALID" *) input s_axi_arvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI ARREADY" *) output s_axi_arready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI RDATA" *) output [31:0]s_axi_rdata;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI RRESP" *) output [1:0]s_axi_rresp;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI RVALID" *) output s_axi_rvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI RREADY" *) input s_axi_rready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI_FULL ARID" *) input [0:0]s_axi4_arid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI_FULL ARADDR" *) input [31:0]s_axi4_araddr;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI_FULL ARLEN" *) input [7:0]s_axi4_arlen;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI_FULL ARSIZE" *) input [2:0]s_axi4_arsize;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI_FULL ARBURST" *) input [1:0]s_axi4_arburst;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI_FULL ARLOCK" *) input s_axi4_arlock;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI_FULL ARCACHE" *) input [3:0]s_axi4_arcache;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI_FULL ARPROT" *) input [2:0]s_axi4_arprot;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI_FULL ARVALID" *) input s_axi4_arvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI_FULL ARREADY" *) output s_axi4_arready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI_FULL RID" *) output [0:0]s_axi4_rid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI_FULL RDATA" *) output [127:0]s_axi4_rdata;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI_FULL RRESP" *) output [1:0]s_axi4_rresp;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI_FULL RLAST" *) output s_axi4_rlast;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI_FULL RVALID" *) output s_axi4_rvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI_FULL RREADY" *) input s_axi4_rready;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 rst_axi_str_rxd RST" *) output s2mm_prmry_reset_out_n;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 AXI_STR_RXD TVALID" *) input axi_str_rxd_tvalid;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 AXI_STR_RXD TREADY" *) output axi_str_rxd_tready;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 AXI_STR_RXD TLAST" *) input axi_str_rxd_tlast;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 AXI_STR_RXD TDATA" *) input [127:0]axi_str_rxd_tdata;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 AXI_STR_RXD TID" *) input [0:0]axi_str_rxd_tid;

  wire [127:0]axi_str_rxd_tdata;
  wire [0:0]axi_str_rxd_tid;
  wire axi_str_rxd_tlast;
  wire axi_str_rxd_tready;
  wire axi_str_rxd_tvalid;
  wire interrupt;
  wire s2mm_prmry_reset_out_n;
  wire [31:0]s_axi4_araddr;
  wire [1:0]s_axi4_arburst;
  wire [3:0]s_axi4_arcache;
  wire [0:0]s_axi4_arid;
  wire [7:0]s_axi4_arlen;
  wire s_axi4_arlock;
  wire [2:0]s_axi4_arprot;
  wire s_axi4_arready;
  wire [2:0]s_axi4_arsize;
  wire s_axi4_arvalid;
  wire [127:0]s_axi4_rdata;
  wire [0:0]s_axi4_rid;
  wire s_axi4_rlast;
  wire s_axi4_rready;
  wire [1:0]s_axi4_rresp;
  wire s_axi4_rvalid;
  wire s_axi_aclk;
  wire [31:0]s_axi_araddr;
  wire s_axi_aresetn;
  wire s_axi_arready;
  wire s_axi_arvalid;
  wire [31:0]s_axi_awaddr;
  wire s_axi_awready;
  wire s_axi_awvalid;
  wire s_axi_bready;
  wire [1:0]s_axi_bresp;
  wire s_axi_bvalid;
  wire [31:0]s_axi_rdata;
  wire s_axi_rready;
  wire [1:0]s_axi_rresp;
  wire s_axi_rvalid;
  wire [31:0]s_axi_wdata;
  wire s_axi_wready;
  wire [3:0]s_axi_wstrb;
  wire s_axi_wvalid;
  wire NLW_U0_axi_str_txc_tlast_UNCONNECTED;
  wire NLW_U0_axi_str_txc_tvalid_UNCONNECTED;
  wire NLW_U0_axi_str_txd_tlast_UNCONNECTED;
  wire NLW_U0_axi_str_txd_tvalid_UNCONNECTED;
  wire NLW_U0_mm2s_cntrl_reset_out_n_UNCONNECTED;
  wire NLW_U0_mm2s_prmry_reset_out_n_UNCONNECTED;
  wire NLW_U0_s_axi4_awready_UNCONNECTED;
  wire NLW_U0_s_axi4_bvalid_UNCONNECTED;
  wire NLW_U0_s_axi4_wready_UNCONNECTED;
  wire [127:0]NLW_U0_axi_str_txc_tdata_UNCONNECTED;
  wire [3:0]NLW_U0_axi_str_txc_tdest_UNCONNECTED;
  wire [0:0]NLW_U0_axi_str_txc_tid_UNCONNECTED;
  wire [15:0]NLW_U0_axi_str_txc_tkeep_UNCONNECTED;
  wire [15:0]NLW_U0_axi_str_txc_tstrb_UNCONNECTED;
  wire [15:0]NLW_U0_axi_str_txc_tuser_UNCONNECTED;
  wire [127:0]NLW_U0_axi_str_txd_tdata_UNCONNECTED;
  wire [3:0]NLW_U0_axi_str_txd_tdest_UNCONNECTED;
  wire [0:0]NLW_U0_axi_str_txd_tid_UNCONNECTED;
  wire [15:0]NLW_U0_axi_str_txd_tkeep_UNCONNECTED;
  wire [15:0]NLW_U0_axi_str_txd_tstrb_UNCONNECTED;
  wire [15:0]NLW_U0_axi_str_txd_tuser_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi4_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi4_bresp_UNCONNECTED;

  (* C_AXI4_BASEADDR = "-2147479552" *) 
  (* C_AXI4_HIGHADDR = "-2147471361" *) 
  (* C_AXIS_TDEST_WIDTH = "4" *) 
  (* C_AXIS_TID_WIDTH = "1" *) 
  (* C_AXIS_TUSER_WIDTH = "16" *) 
  (* C_BASEADDR = "1114112" *) 
  (* C_DATA_INTERFACE_TYPE = "1" *) 
  (* C_FAMILY = "kintexu" *) 
  (* C_HAS_AXIS_TDEST = "0" *) 
  (* C_HAS_AXIS_TID = "1" *) 
  (* C_HAS_AXIS_TKEEP = "0" *) 
  (* C_HAS_AXIS_TSTRB = "0" *) 
  (* C_HAS_AXIS_TUSER = "0" *) 
  (* C_HIGHADDR = "1118207" *) 
  (* C_RX_FIFO_DEPTH = "4096" *) 
  (* C_RX_FIFO_PE_THRESHOLD = "2" *) 
  (* C_RX_FIFO_PF_THRESHOLD = "4091" *) 
  (* C_S_AXI4_DATA_WIDTH = "128" *) 
  (* C_S_AXI_ADDR_WIDTH = "32" *) 
  (* C_S_AXI_DATA_WIDTH = "32" *) 
  (* C_S_AXI_ID_WIDTH = "1" *) 
  (* C_TX_FIFO_DEPTH = "512" *) 
  (* C_TX_FIFO_PE_THRESHOLD = "2" *) 
  (* C_TX_FIFO_PF_THRESHOLD = "507" *) 
  (* C_USE_RX_CUT_THROUGH = "1" *) 
  (* C_USE_RX_DATA = "1" *) 
  (* C_USE_TX_CTRL = "0" *) 
  (* C_USE_TX_CUT_THROUGH = "0" *) 
  (* C_USE_TX_DATA = "0" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_fifo_mm_s U0
       (.axi_str_rxd_tdata(axi_str_rxd_tdata),
        .axi_str_rxd_tdest({1'b0,1'b0,1'b0,1'b0}),
        .axi_str_rxd_tid(axi_str_rxd_tid),
        .axi_str_rxd_tkeep({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_str_rxd_tlast(axi_str_rxd_tlast),
        .axi_str_rxd_tready(axi_str_rxd_tready),
        .axi_str_rxd_tstrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_str_rxd_tuser({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_str_rxd_tvalid(axi_str_rxd_tvalid),
        .axi_str_txc_tdata(NLW_U0_axi_str_txc_tdata_UNCONNECTED[127:0]),
        .axi_str_txc_tdest(NLW_U0_axi_str_txc_tdest_UNCONNECTED[3:0]),
        .axi_str_txc_tid(NLW_U0_axi_str_txc_tid_UNCONNECTED[0]),
        .axi_str_txc_tkeep(NLW_U0_axi_str_txc_tkeep_UNCONNECTED[15:0]),
        .axi_str_txc_tlast(NLW_U0_axi_str_txc_tlast_UNCONNECTED),
        .axi_str_txc_tready(1'b0),
        .axi_str_txc_tstrb(NLW_U0_axi_str_txc_tstrb_UNCONNECTED[15:0]),
        .axi_str_txc_tuser(NLW_U0_axi_str_txc_tuser_UNCONNECTED[15:0]),
        .axi_str_txc_tvalid(NLW_U0_axi_str_txc_tvalid_UNCONNECTED),
        .axi_str_txd_tdata(NLW_U0_axi_str_txd_tdata_UNCONNECTED[127:0]),
        .axi_str_txd_tdest(NLW_U0_axi_str_txd_tdest_UNCONNECTED[3:0]),
        .axi_str_txd_tid(NLW_U0_axi_str_txd_tid_UNCONNECTED[0]),
        .axi_str_txd_tkeep(NLW_U0_axi_str_txd_tkeep_UNCONNECTED[15:0]),
        .axi_str_txd_tlast(NLW_U0_axi_str_txd_tlast_UNCONNECTED),
        .axi_str_txd_tready(1'b0),
        .axi_str_txd_tstrb(NLW_U0_axi_str_txd_tstrb_UNCONNECTED[15:0]),
        .axi_str_txd_tuser(NLW_U0_axi_str_txd_tuser_UNCONNECTED[15:0]),
        .axi_str_txd_tvalid(NLW_U0_axi_str_txd_tvalid_UNCONNECTED),
        .interrupt(interrupt),
        .mm2s_cntrl_reset_out_n(NLW_U0_mm2s_cntrl_reset_out_n_UNCONNECTED),
        .mm2s_prmry_reset_out_n(NLW_U0_mm2s_prmry_reset_out_n_UNCONNECTED),
        .s2mm_prmry_reset_out_n(s2mm_prmry_reset_out_n),
        .s_axi4_araddr(s_axi4_araddr),
        .s_axi4_arburst(s_axi4_arburst),
        .s_axi4_arcache(s_axi4_arcache),
        .s_axi4_arid(s_axi4_arid),
        .s_axi4_arlen(s_axi4_arlen),
        .s_axi4_arlock(s_axi4_arlock),
        .s_axi4_arprot(s_axi4_arprot),
        .s_axi4_arready(s_axi4_arready),
        .s_axi4_arsize(s_axi4_arsize),
        .s_axi4_arvalid(s_axi4_arvalid),
        .s_axi4_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi4_awburst({1'b0,1'b0}),
        .s_axi4_awcache({1'b0,1'b0,1'b0,1'b0}),
        .s_axi4_awid(1'b0),
        .s_axi4_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi4_awlock(1'b0),
        .s_axi4_awprot({1'b0,1'b0,1'b0}),
        .s_axi4_awready(NLW_U0_s_axi4_awready_UNCONNECTED),
        .s_axi4_awsize({1'b0,1'b0,1'b0}),
        .s_axi4_awvalid(1'b0),
        .s_axi4_bid(NLW_U0_s_axi4_bid_UNCONNECTED[0]),
        .s_axi4_bready(1'b0),
        .s_axi4_bresp(NLW_U0_s_axi4_bresp_UNCONNECTED[1:0]),
        .s_axi4_bvalid(NLW_U0_s_axi4_bvalid_UNCONNECTED),
        .s_axi4_rdata(s_axi4_rdata),
        .s_axi4_rid(s_axi4_rid),
        .s_axi4_rlast(s_axi4_rlast),
        .s_axi4_rready(s_axi4_rready),
        .s_axi4_rresp(s_axi4_rresp),
        .s_axi4_rvalid(s_axi4_rvalid),
        .s_axi4_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi4_wlast(1'b0),
        .s_axi4_wready(NLW_U0_s_axi4_wready_UNCONNECTED),
        .s_axi4_wstrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi4_wvalid(1'b0),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_araddr(s_axi_araddr),
        .s_axi_aresetn(s_axi_aresetn),
        .s_axi_arready(s_axi_arready),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_awaddr(s_axi_awaddr),
        .s_axi_awready(s_axi_awready),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_bready(s_axi_bready),
        .s_axi_bresp(s_axi_bresp),
        .s_axi_bvalid(s_axi_bvalid),
        .s_axi_rdata(s_axi_rdata),
        .s_axi_rready(s_axi_rready),
        .s_axi_rresp(s_axi_rresp),
        .s_axi_rvalid(s_axi_rvalid),
        .s_axi_wdata(s_axi_wdata),
        .s_axi_wready(s_axi_wready),
        .s_axi_wstrb(s_axi_wstrb),
        .s_axi_wvalid(s_axi_wvalid));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_generic_cstr
   (D,
    s_axi_aclk,
    WEA,
    ram_rd_en_i,
    \gcc0.gc0.count_d1_reg[11] ,
    \gc0.count_d1_reg[11] ,
    axi_str_rxd_tdata);
  output [127:0]D;
  input s_axi_aclk;
  input [0:0]WEA;
  input ram_rd_en_i;
  input [11:0]\gcc0.gc0.count_d1_reg[11] ;
  input [11:0]\gc0.count_d1_reg[11] ;
  input [127:0]axi_str_rxd_tdata;

  wire [127:0]D;
  wire [0:0]WEA;
  wire [127:0]axi_str_rxd_tdata;
  wire [11:0]\gc0.count_d1_reg[11] ;
  wire [11:0]\gcc0.gc0.count_d1_reg[11] ;
  wire ram_rd_en_i;
  wire s_axi_aclk;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized9 \ramloop[10].ram.r 
       (.D(D[77:69]),
        .WEA(WEA),
        .axi_str_rxd_tdata(axi_str_rxd_tdata[77:69]),
        .\gc0.count_d1_reg[11] (\gc0.count_d1_reg[11] ),
        .\gcc0.gc0.count_d1_reg[11] (\gcc0.gc0.count_d1_reg[11] ),
        .ram_rd_en_i(ram_rd_en_i),
        .s_axi_aclk(s_axi_aclk));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized10 \ramloop[11].ram.r 
       (.D(D[86:78]),
        .WEA(WEA),
        .axi_str_rxd_tdata(axi_str_rxd_tdata[86:78]),
        .\gc0.count_d1_reg[11] (\gc0.count_d1_reg[11] ),
        .\gcc0.gc0.count_d1_reg[11] (\gcc0.gc0.count_d1_reg[11] ),
        .ram_rd_en_i(ram_rd_en_i),
        .s_axi_aclk(s_axi_aclk));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized11 \ramloop[12].ram.r 
       (.D(D[95:87]),
        .WEA(WEA),
        .axi_str_rxd_tdata(axi_str_rxd_tdata[95:87]),
        .\gc0.count_d1_reg[11] (\gc0.count_d1_reg[11] ),
        .\gcc0.gc0.count_d1_reg[11] (\gcc0.gc0.count_d1_reg[11] ),
        .ram_rd_en_i(ram_rd_en_i),
        .s_axi_aclk(s_axi_aclk));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized12 \ramloop[13].ram.r 
       (.D(D[104:96]),
        .WEA(WEA),
        .axi_str_rxd_tdata(axi_str_rxd_tdata[104:96]),
        .\gc0.count_d1_reg[11] (\gc0.count_d1_reg[11] ),
        .\gcc0.gc0.count_d1_reg[11] (\gcc0.gc0.count_d1_reg[11] ),
        .ram_rd_en_i(ram_rd_en_i),
        .s_axi_aclk(s_axi_aclk));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized13 \ramloop[14].ram.r 
       (.D(D[113:105]),
        .WEA(WEA),
        .axi_str_rxd_tdata(axi_str_rxd_tdata[113:105]),
        .\gc0.count_d1_reg[11] (\gc0.count_d1_reg[11] ),
        .\gcc0.gc0.count_d1_reg[11] (\gcc0.gc0.count_d1_reg[11] ),
        .ram_rd_en_i(ram_rd_en_i),
        .s_axi_aclk(s_axi_aclk));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized14 \ramloop[15].ram.r 
       (.D(D[122:114]),
        .WEA(WEA),
        .axi_str_rxd_tdata(axi_str_rxd_tdata[122:114]),
        .\gc0.count_d1_reg[11] (\gc0.count_d1_reg[11] ),
        .\gcc0.gc0.count_d1_reg[11] (\gcc0.gc0.count_d1_reg[11] ),
        .ram_rd_en_i(ram_rd_en_i),
        .s_axi_aclk(s_axi_aclk));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized15 \ramloop[16].ram.r 
       (.D(D[127:123]),
        .WEA(WEA),
        .axi_str_rxd_tdata(axi_str_rxd_tdata[127:123]),
        .\gc0.count_d1_reg[11] (\gc0.count_d1_reg[11] ),
        .\gcc0.gc0.count_d1_reg[11] (\gcc0.gc0.count_d1_reg[11] ),
        .ram_rd_en_i(ram_rd_en_i),
        .s_axi_aclk(s_axi_aclk));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized1 \ramloop[2].ram.r 
       (.D(D[5:0]),
        .WEA(WEA),
        .axi_str_rxd_tdata(axi_str_rxd_tdata[5:0]),
        .\gc0.count_d1_reg[11] (\gc0.count_d1_reg[11] ),
        .\gcc0.gc0.count_d1_reg[11] (\gcc0.gc0.count_d1_reg[11] ),
        .ram_rd_en_i(ram_rd_en_i),
        .s_axi_aclk(s_axi_aclk));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized2 \ramloop[3].ram.r 
       (.D(D[14:6]),
        .WEA(WEA),
        .axi_str_rxd_tdata(axi_str_rxd_tdata[14:6]),
        .\gc0.count_d1_reg[11] (\gc0.count_d1_reg[11] ),
        .\gcc0.gc0.count_d1_reg[11] (\gcc0.gc0.count_d1_reg[11] ),
        .ram_rd_en_i(ram_rd_en_i),
        .s_axi_aclk(s_axi_aclk));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized3 \ramloop[4].ram.r 
       (.D(D[23:15]),
        .WEA(WEA),
        .axi_str_rxd_tdata(axi_str_rxd_tdata[23:15]),
        .\gc0.count_d1_reg[11] (\gc0.count_d1_reg[11] ),
        .\gcc0.gc0.count_d1_reg[11] (\gcc0.gc0.count_d1_reg[11] ),
        .ram_rd_en_i(ram_rd_en_i),
        .s_axi_aclk(s_axi_aclk));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized4 \ramloop[5].ram.r 
       (.D(D[32:24]),
        .WEA(WEA),
        .axi_str_rxd_tdata(axi_str_rxd_tdata[32:24]),
        .\gc0.count_d1_reg[11] (\gc0.count_d1_reg[11] ),
        .\gcc0.gc0.count_d1_reg[11] (\gcc0.gc0.count_d1_reg[11] ),
        .ram_rd_en_i(ram_rd_en_i),
        .s_axi_aclk(s_axi_aclk));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized5 \ramloop[6].ram.r 
       (.D(D[41:33]),
        .WEA(WEA),
        .axi_str_rxd_tdata(axi_str_rxd_tdata[41:33]),
        .\gc0.count_d1_reg[11] (\gc0.count_d1_reg[11] ),
        .\gcc0.gc0.count_d1_reg[11] (\gcc0.gc0.count_d1_reg[11] ),
        .ram_rd_en_i(ram_rd_en_i),
        .s_axi_aclk(s_axi_aclk));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized6 \ramloop[7].ram.r 
       (.D(D[50:42]),
        .WEA(WEA),
        .axi_str_rxd_tdata(axi_str_rxd_tdata[50:42]),
        .\gc0.count_d1_reg[11] (\gc0.count_d1_reg[11] ),
        .\gcc0.gc0.count_d1_reg[11] (\gcc0.gc0.count_d1_reg[11] ),
        .ram_rd_en_i(ram_rd_en_i),
        .s_axi_aclk(s_axi_aclk));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized7 \ramloop[8].ram.r 
       (.D(D[59:51]),
        .WEA(WEA),
        .axi_str_rxd_tdata(axi_str_rxd_tdata[59:51]),
        .\gc0.count_d1_reg[11] (\gc0.count_d1_reg[11] ),
        .\gcc0.gc0.count_d1_reg[11] (\gcc0.gc0.count_d1_reg[11] ),
        .ram_rd_en_i(ram_rd_en_i),
        .s_axi_aclk(s_axi_aclk));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized8 \ramloop[9].ram.r 
       (.D(D[68:60]),
        .WEA(WEA),
        .axi_str_rxd_tdata(axi_str_rxd_tdata[68:60]),
        .\gc0.count_d1_reg[11] (\gc0.count_d1_reg[11] ),
        .\gcc0.gc0.count_d1_reg[11] (\gcc0.gc0.count_d1_reg[11] ),
        .ram_rd_en_i(ram_rd_en_i),
        .s_axi_aclk(s_axi_aclk));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized1
   (D,
    s_axi_aclk,
    WEA,
    ram_rd_en_i,
    \gcc0.gc0.count_d1_reg[11] ,
    \gc0.count_d1_reg[11] ,
    axi_str_rxd_tdata);
  output [5:0]D;
  input s_axi_aclk;
  input [0:0]WEA;
  input ram_rd_en_i;
  input [11:0]\gcc0.gc0.count_d1_reg[11] ;
  input [11:0]\gc0.count_d1_reg[11] ;
  input [5:0]axi_str_rxd_tdata;

  wire [5:0]D;
  wire [0:0]WEA;
  wire [5:0]axi_str_rxd_tdata;
  wire [11:0]\gc0.count_d1_reg[11] ;
  wire [11:0]\gcc0.gc0.count_d1_reg[11] ;
  wire ram_rd_en_i;
  wire s_axi_aclk;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper__parameterized1 \prim_noinit.ram 
       (.D(D),
        .WEA(WEA),
        .axi_str_rxd_tdata(axi_str_rxd_tdata),
        .\gc0.count_d1_reg[11] (\gc0.count_d1_reg[11] ),
        .\gcc0.gc0.count_d1_reg[11] (\gcc0.gc0.count_d1_reg[11] ),
        .ram_rd_en_i(ram_rd_en_i),
        .s_axi_aclk(s_axi_aclk));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized10
   (D,
    s_axi_aclk,
    WEA,
    ram_rd_en_i,
    \gcc0.gc0.count_d1_reg[11] ,
    \gc0.count_d1_reg[11] ,
    axi_str_rxd_tdata);
  output [8:0]D;
  input s_axi_aclk;
  input [0:0]WEA;
  input ram_rd_en_i;
  input [11:0]\gcc0.gc0.count_d1_reg[11] ;
  input [11:0]\gc0.count_d1_reg[11] ;
  input [8:0]axi_str_rxd_tdata;

  wire [8:0]D;
  wire [0:0]WEA;
  wire [8:0]axi_str_rxd_tdata;
  wire [11:0]\gc0.count_d1_reg[11] ;
  wire [11:0]\gcc0.gc0.count_d1_reg[11] ;
  wire ram_rd_en_i;
  wire s_axi_aclk;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper__parameterized10 \prim_noinit.ram 
       (.D(D),
        .WEA(WEA),
        .axi_str_rxd_tdata(axi_str_rxd_tdata),
        .\gc0.count_d1_reg[11] (\gc0.count_d1_reg[11] ),
        .\gcc0.gc0.count_d1_reg[11] (\gcc0.gc0.count_d1_reg[11] ),
        .ram_rd_en_i(ram_rd_en_i),
        .s_axi_aclk(s_axi_aclk));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized11
   (D,
    s_axi_aclk,
    WEA,
    ram_rd_en_i,
    \gcc0.gc0.count_d1_reg[11] ,
    \gc0.count_d1_reg[11] ,
    axi_str_rxd_tdata);
  output [8:0]D;
  input s_axi_aclk;
  input [0:0]WEA;
  input ram_rd_en_i;
  input [11:0]\gcc0.gc0.count_d1_reg[11] ;
  input [11:0]\gc0.count_d1_reg[11] ;
  input [8:0]axi_str_rxd_tdata;

  wire [8:0]D;
  wire [0:0]WEA;
  wire [8:0]axi_str_rxd_tdata;
  wire [11:0]\gc0.count_d1_reg[11] ;
  wire [11:0]\gcc0.gc0.count_d1_reg[11] ;
  wire ram_rd_en_i;
  wire s_axi_aclk;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper__parameterized11 \prim_noinit.ram 
       (.D(D),
        .WEA(WEA),
        .axi_str_rxd_tdata(axi_str_rxd_tdata),
        .\gc0.count_d1_reg[11] (\gc0.count_d1_reg[11] ),
        .\gcc0.gc0.count_d1_reg[11] (\gcc0.gc0.count_d1_reg[11] ),
        .ram_rd_en_i(ram_rd_en_i),
        .s_axi_aclk(s_axi_aclk));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized12
   (D,
    s_axi_aclk,
    WEA,
    ram_rd_en_i,
    \gcc0.gc0.count_d1_reg[11] ,
    \gc0.count_d1_reg[11] ,
    axi_str_rxd_tdata);
  output [8:0]D;
  input s_axi_aclk;
  input [0:0]WEA;
  input ram_rd_en_i;
  input [11:0]\gcc0.gc0.count_d1_reg[11] ;
  input [11:0]\gc0.count_d1_reg[11] ;
  input [8:0]axi_str_rxd_tdata;

  wire [8:0]D;
  wire [0:0]WEA;
  wire [8:0]axi_str_rxd_tdata;
  wire [11:0]\gc0.count_d1_reg[11] ;
  wire [11:0]\gcc0.gc0.count_d1_reg[11] ;
  wire ram_rd_en_i;
  wire s_axi_aclk;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper__parameterized12 \prim_noinit.ram 
       (.D(D),
        .WEA(WEA),
        .axi_str_rxd_tdata(axi_str_rxd_tdata),
        .\gc0.count_d1_reg[11] (\gc0.count_d1_reg[11] ),
        .\gcc0.gc0.count_d1_reg[11] (\gcc0.gc0.count_d1_reg[11] ),
        .ram_rd_en_i(ram_rd_en_i),
        .s_axi_aclk(s_axi_aclk));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized13
   (D,
    s_axi_aclk,
    WEA,
    ram_rd_en_i,
    \gcc0.gc0.count_d1_reg[11] ,
    \gc0.count_d1_reg[11] ,
    axi_str_rxd_tdata);
  output [8:0]D;
  input s_axi_aclk;
  input [0:0]WEA;
  input ram_rd_en_i;
  input [11:0]\gcc0.gc0.count_d1_reg[11] ;
  input [11:0]\gc0.count_d1_reg[11] ;
  input [8:0]axi_str_rxd_tdata;

  wire [8:0]D;
  wire [0:0]WEA;
  wire [8:0]axi_str_rxd_tdata;
  wire [11:0]\gc0.count_d1_reg[11] ;
  wire [11:0]\gcc0.gc0.count_d1_reg[11] ;
  wire ram_rd_en_i;
  wire s_axi_aclk;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper__parameterized13 \prim_noinit.ram 
       (.D(D),
        .WEA(WEA),
        .axi_str_rxd_tdata(axi_str_rxd_tdata),
        .\gc0.count_d1_reg[11] (\gc0.count_d1_reg[11] ),
        .\gcc0.gc0.count_d1_reg[11] (\gcc0.gc0.count_d1_reg[11] ),
        .ram_rd_en_i(ram_rd_en_i),
        .s_axi_aclk(s_axi_aclk));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized14
   (D,
    s_axi_aclk,
    WEA,
    ram_rd_en_i,
    \gcc0.gc0.count_d1_reg[11] ,
    \gc0.count_d1_reg[11] ,
    axi_str_rxd_tdata);
  output [8:0]D;
  input s_axi_aclk;
  input [0:0]WEA;
  input ram_rd_en_i;
  input [11:0]\gcc0.gc0.count_d1_reg[11] ;
  input [11:0]\gc0.count_d1_reg[11] ;
  input [8:0]axi_str_rxd_tdata;

  wire [8:0]D;
  wire [0:0]WEA;
  wire [8:0]axi_str_rxd_tdata;
  wire [11:0]\gc0.count_d1_reg[11] ;
  wire [11:0]\gcc0.gc0.count_d1_reg[11] ;
  wire ram_rd_en_i;
  wire s_axi_aclk;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper__parameterized14 \prim_noinit.ram 
       (.D(D),
        .WEA(WEA),
        .axi_str_rxd_tdata(axi_str_rxd_tdata),
        .\gc0.count_d1_reg[11] (\gc0.count_d1_reg[11] ),
        .\gcc0.gc0.count_d1_reg[11] (\gcc0.gc0.count_d1_reg[11] ),
        .ram_rd_en_i(ram_rd_en_i),
        .s_axi_aclk(s_axi_aclk));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized15
   (D,
    s_axi_aclk,
    WEA,
    ram_rd_en_i,
    \gcc0.gc0.count_d1_reg[11] ,
    \gc0.count_d1_reg[11] ,
    axi_str_rxd_tdata);
  output [4:0]D;
  input s_axi_aclk;
  input [0:0]WEA;
  input ram_rd_en_i;
  input [11:0]\gcc0.gc0.count_d1_reg[11] ;
  input [11:0]\gc0.count_d1_reg[11] ;
  input [4:0]axi_str_rxd_tdata;

  wire [4:0]D;
  wire [0:0]WEA;
  wire [4:0]axi_str_rxd_tdata;
  wire [11:0]\gc0.count_d1_reg[11] ;
  wire [11:0]\gcc0.gc0.count_d1_reg[11] ;
  wire ram_rd_en_i;
  wire s_axi_aclk;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper__parameterized15 \prim_noinit.ram 
       (.D(D),
        .WEA(WEA),
        .axi_str_rxd_tdata(axi_str_rxd_tdata),
        .\gc0.count_d1_reg[11] (\gc0.count_d1_reg[11] ),
        .\gcc0.gc0.count_d1_reg[11] (\gcc0.gc0.count_d1_reg[11] ),
        .ram_rd_en_i(ram_rd_en_i),
        .s_axi_aclk(s_axi_aclk));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized2
   (D,
    s_axi_aclk,
    WEA,
    ram_rd_en_i,
    \gcc0.gc0.count_d1_reg[11] ,
    \gc0.count_d1_reg[11] ,
    axi_str_rxd_tdata);
  output [8:0]D;
  input s_axi_aclk;
  input [0:0]WEA;
  input ram_rd_en_i;
  input [11:0]\gcc0.gc0.count_d1_reg[11] ;
  input [11:0]\gc0.count_d1_reg[11] ;
  input [8:0]axi_str_rxd_tdata;

  wire [8:0]D;
  wire [0:0]WEA;
  wire [8:0]axi_str_rxd_tdata;
  wire [11:0]\gc0.count_d1_reg[11] ;
  wire [11:0]\gcc0.gc0.count_d1_reg[11] ;
  wire ram_rd_en_i;
  wire s_axi_aclk;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper__parameterized2 \prim_noinit.ram 
       (.D(D),
        .WEA(WEA),
        .axi_str_rxd_tdata(axi_str_rxd_tdata),
        .\gc0.count_d1_reg[11] (\gc0.count_d1_reg[11] ),
        .\gcc0.gc0.count_d1_reg[11] (\gcc0.gc0.count_d1_reg[11] ),
        .ram_rd_en_i(ram_rd_en_i),
        .s_axi_aclk(s_axi_aclk));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized3
   (D,
    s_axi_aclk,
    WEA,
    ram_rd_en_i,
    \gcc0.gc0.count_d1_reg[11] ,
    \gc0.count_d1_reg[11] ,
    axi_str_rxd_tdata);
  output [8:0]D;
  input s_axi_aclk;
  input [0:0]WEA;
  input ram_rd_en_i;
  input [11:0]\gcc0.gc0.count_d1_reg[11] ;
  input [11:0]\gc0.count_d1_reg[11] ;
  input [8:0]axi_str_rxd_tdata;

  wire [8:0]D;
  wire [0:0]WEA;
  wire [8:0]axi_str_rxd_tdata;
  wire [11:0]\gc0.count_d1_reg[11] ;
  wire [11:0]\gcc0.gc0.count_d1_reg[11] ;
  wire ram_rd_en_i;
  wire s_axi_aclk;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper__parameterized3 \prim_noinit.ram 
       (.D(D),
        .WEA(WEA),
        .axi_str_rxd_tdata(axi_str_rxd_tdata),
        .\gc0.count_d1_reg[11] (\gc0.count_d1_reg[11] ),
        .\gcc0.gc0.count_d1_reg[11] (\gcc0.gc0.count_d1_reg[11] ),
        .ram_rd_en_i(ram_rd_en_i),
        .s_axi_aclk(s_axi_aclk));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized4
   (D,
    s_axi_aclk,
    WEA,
    ram_rd_en_i,
    \gcc0.gc0.count_d1_reg[11] ,
    \gc0.count_d1_reg[11] ,
    axi_str_rxd_tdata);
  output [8:0]D;
  input s_axi_aclk;
  input [0:0]WEA;
  input ram_rd_en_i;
  input [11:0]\gcc0.gc0.count_d1_reg[11] ;
  input [11:0]\gc0.count_d1_reg[11] ;
  input [8:0]axi_str_rxd_tdata;

  wire [8:0]D;
  wire [0:0]WEA;
  wire [8:0]axi_str_rxd_tdata;
  wire [11:0]\gc0.count_d1_reg[11] ;
  wire [11:0]\gcc0.gc0.count_d1_reg[11] ;
  wire ram_rd_en_i;
  wire s_axi_aclk;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper__parameterized4 \prim_noinit.ram 
       (.D(D),
        .WEA(WEA),
        .axi_str_rxd_tdata(axi_str_rxd_tdata),
        .\gc0.count_d1_reg[11] (\gc0.count_d1_reg[11] ),
        .\gcc0.gc0.count_d1_reg[11] (\gcc0.gc0.count_d1_reg[11] ),
        .ram_rd_en_i(ram_rd_en_i),
        .s_axi_aclk(s_axi_aclk));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized5
   (D,
    s_axi_aclk,
    WEA,
    ram_rd_en_i,
    \gcc0.gc0.count_d1_reg[11] ,
    \gc0.count_d1_reg[11] ,
    axi_str_rxd_tdata);
  output [8:0]D;
  input s_axi_aclk;
  input [0:0]WEA;
  input ram_rd_en_i;
  input [11:0]\gcc0.gc0.count_d1_reg[11] ;
  input [11:0]\gc0.count_d1_reg[11] ;
  input [8:0]axi_str_rxd_tdata;

  wire [8:0]D;
  wire [0:0]WEA;
  wire [8:0]axi_str_rxd_tdata;
  wire [11:0]\gc0.count_d1_reg[11] ;
  wire [11:0]\gcc0.gc0.count_d1_reg[11] ;
  wire ram_rd_en_i;
  wire s_axi_aclk;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper__parameterized5 \prim_noinit.ram 
       (.D(D),
        .WEA(WEA),
        .axi_str_rxd_tdata(axi_str_rxd_tdata),
        .\gc0.count_d1_reg[11] (\gc0.count_d1_reg[11] ),
        .\gcc0.gc0.count_d1_reg[11] (\gcc0.gc0.count_d1_reg[11] ),
        .ram_rd_en_i(ram_rd_en_i),
        .s_axi_aclk(s_axi_aclk));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized6
   (D,
    s_axi_aclk,
    WEA,
    ram_rd_en_i,
    \gcc0.gc0.count_d1_reg[11] ,
    \gc0.count_d1_reg[11] ,
    axi_str_rxd_tdata);
  output [8:0]D;
  input s_axi_aclk;
  input [0:0]WEA;
  input ram_rd_en_i;
  input [11:0]\gcc0.gc0.count_d1_reg[11] ;
  input [11:0]\gc0.count_d1_reg[11] ;
  input [8:0]axi_str_rxd_tdata;

  wire [8:0]D;
  wire [0:0]WEA;
  wire [8:0]axi_str_rxd_tdata;
  wire [11:0]\gc0.count_d1_reg[11] ;
  wire [11:0]\gcc0.gc0.count_d1_reg[11] ;
  wire ram_rd_en_i;
  wire s_axi_aclk;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper__parameterized6 \prim_noinit.ram 
       (.D(D),
        .WEA(WEA),
        .axi_str_rxd_tdata(axi_str_rxd_tdata),
        .\gc0.count_d1_reg[11] (\gc0.count_d1_reg[11] ),
        .\gcc0.gc0.count_d1_reg[11] (\gcc0.gc0.count_d1_reg[11] ),
        .ram_rd_en_i(ram_rd_en_i),
        .s_axi_aclk(s_axi_aclk));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized7
   (D,
    s_axi_aclk,
    WEA,
    ram_rd_en_i,
    \gcc0.gc0.count_d1_reg[11] ,
    \gc0.count_d1_reg[11] ,
    axi_str_rxd_tdata);
  output [8:0]D;
  input s_axi_aclk;
  input [0:0]WEA;
  input ram_rd_en_i;
  input [11:0]\gcc0.gc0.count_d1_reg[11] ;
  input [11:0]\gc0.count_d1_reg[11] ;
  input [8:0]axi_str_rxd_tdata;

  wire [8:0]D;
  wire [0:0]WEA;
  wire [8:0]axi_str_rxd_tdata;
  wire [11:0]\gc0.count_d1_reg[11] ;
  wire [11:0]\gcc0.gc0.count_d1_reg[11] ;
  wire ram_rd_en_i;
  wire s_axi_aclk;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper__parameterized7 \prim_noinit.ram 
       (.D(D),
        .WEA(WEA),
        .axi_str_rxd_tdata(axi_str_rxd_tdata),
        .\gc0.count_d1_reg[11] (\gc0.count_d1_reg[11] ),
        .\gcc0.gc0.count_d1_reg[11] (\gcc0.gc0.count_d1_reg[11] ),
        .ram_rd_en_i(ram_rd_en_i),
        .s_axi_aclk(s_axi_aclk));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized8
   (D,
    s_axi_aclk,
    WEA,
    ram_rd_en_i,
    \gcc0.gc0.count_d1_reg[11] ,
    \gc0.count_d1_reg[11] ,
    axi_str_rxd_tdata);
  output [8:0]D;
  input s_axi_aclk;
  input [0:0]WEA;
  input ram_rd_en_i;
  input [11:0]\gcc0.gc0.count_d1_reg[11] ;
  input [11:0]\gc0.count_d1_reg[11] ;
  input [8:0]axi_str_rxd_tdata;

  wire [8:0]D;
  wire [0:0]WEA;
  wire [8:0]axi_str_rxd_tdata;
  wire [11:0]\gc0.count_d1_reg[11] ;
  wire [11:0]\gcc0.gc0.count_d1_reg[11] ;
  wire ram_rd_en_i;
  wire s_axi_aclk;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper__parameterized8 \prim_noinit.ram 
       (.D(D),
        .WEA(WEA),
        .axi_str_rxd_tdata(axi_str_rxd_tdata),
        .\gc0.count_d1_reg[11] (\gc0.count_d1_reg[11] ),
        .\gcc0.gc0.count_d1_reg[11] (\gcc0.gc0.count_d1_reg[11] ),
        .ram_rd_en_i(ram_rd_en_i),
        .s_axi_aclk(s_axi_aclk));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized9
   (D,
    s_axi_aclk,
    WEA,
    ram_rd_en_i,
    \gcc0.gc0.count_d1_reg[11] ,
    \gc0.count_d1_reg[11] ,
    axi_str_rxd_tdata);
  output [8:0]D;
  input s_axi_aclk;
  input [0:0]WEA;
  input ram_rd_en_i;
  input [11:0]\gcc0.gc0.count_d1_reg[11] ;
  input [11:0]\gc0.count_d1_reg[11] ;
  input [8:0]axi_str_rxd_tdata;

  wire [8:0]D;
  wire [0:0]WEA;
  wire [8:0]axi_str_rxd_tdata;
  wire [11:0]\gc0.count_d1_reg[11] ;
  wire [11:0]\gcc0.gc0.count_d1_reg[11] ;
  wire ram_rd_en_i;
  wire s_axi_aclk;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper__parameterized9 \prim_noinit.ram 
       (.D(D),
        .WEA(WEA),
        .axi_str_rxd_tdata(axi_str_rxd_tdata),
        .\gc0.count_d1_reg[11] (\gc0.count_d1_reg[11] ),
        .\gcc0.gc0.count_d1_reg[11] (\gcc0.gc0.count_d1_reg[11] ),
        .ram_rd_en_i(ram_rd_en_i),
        .s_axi_aclk(s_axi_aclk));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper__parameterized1
   (D,
    s_axi_aclk,
    WEA,
    ram_rd_en_i,
    \gcc0.gc0.count_d1_reg[11] ,
    \gc0.count_d1_reg[11] ,
    axi_str_rxd_tdata);
  output [5:0]D;
  input s_axi_aclk;
  input [0:0]WEA;
  input ram_rd_en_i;
  input [11:0]\gcc0.gc0.count_d1_reg[11] ;
  input [11:0]\gc0.count_d1_reg[11] ;
  input [5:0]axi_str_rxd_tdata;

  wire [5:0]D;
  wire [0:0]WEA;
  wire [5:0]axi_str_rxd_tdata;
  wire [20:18]doutb;
  wire [11:0]\gc0.count_d1_reg[11] ;
  wire [11:0]\gcc0.gc0.count_d1_reg[11] ;
  wire ram_rd_en_i;
  wire s_axi_aclk;
  wire \NLW_DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASOUTDBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASOUTSBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASDOUTA_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASDOUTB_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASDOUTPA_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASDOUTPB_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOUTADOUT_UNCONNECTED ;
  wire [31:8]\NLW_DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOUTBDOUT_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOUTPADOUTP_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOUTPBDOUTP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E2 #(
    .CASCADE_ORDER_A("NONE"),
    .CASCADE_ORDER_B("NONE"),
    .CLOCK_DOMAINS("COMMON"),
    .DOA_REG(0),
    .DOB_REG(0),
    .ENADDRENA("FALSE"),
    .ENADDRENB("FALSE"),
    .EN_ECC_PIPE("FALSE"),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_40(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_41(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_42(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_43(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_44(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_45(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_46(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_47(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_48(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_49(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_50(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_51(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_52(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_53(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_54(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_55(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_56(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_57(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_58(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_59(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RDADDRCHANGEA("FALSE"),
    .RDADDRCHANGEB("FALSE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SLEEP_ASYNC("FALSE"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    \DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({\gcc0.gc0.count_d1_reg[11] ,1'b0,1'b0,1'b0}),
        .ADDRBWRADDR({\gc0.count_d1_reg[11] ,1'b0,1'b0,1'b0}),
        .ADDRENA(1'b0),
        .ADDRENB(1'b0),
        .CASDIMUXA(1'b0),
        .CASDIMUXB(1'b0),
        .CASDINA({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASDINB({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASDINPA({1'b0,1'b0,1'b0,1'b0}),
        .CASDINPB({1'b0,1'b0,1'b0,1'b0}),
        .CASDOMUXA(1'b0),
        .CASDOMUXB(1'b0),
        .CASDOMUXEN_A(1'b0),
        .CASDOMUXEN_B(1'b0),
        .CASDOUTA(\NLW_DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASDOUTA_UNCONNECTED [31:0]),
        .CASDOUTB(\NLW_DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASDOUTB_UNCONNECTED [31:0]),
        .CASDOUTPA(\NLW_DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASDOUTPA_UNCONNECTED [3:0]),
        .CASDOUTPB(\NLW_DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASDOUTPB_UNCONNECTED [3:0]),
        .CASINDBITERR(1'b0),
        .CASINSBITERR(1'b0),
        .CASOREGIMUXA(1'b0),
        .CASOREGIMUXB(1'b0),
        .CASOREGIMUXEN_A(1'b0),
        .CASOREGIMUXEN_B(1'b0),
        .CASOUTDBITERR(\NLW_DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASOUTDBITERR_UNCONNECTED ),
        .CASOUTSBITERR(\NLW_DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASOUTSBITERR_UNCONNECTED ),
        .CLKARDCLK(s_axi_aclk),
        .CLKBWRCLK(s_axi_aclk),
        .DBITERR(\NLW_DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DINADIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,axi_str_rxd_tdata[4:0],1'b1,1'b1,1'b1}),
        .DINBDIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DINPADINP({1'b0,1'b0,1'b0,axi_str_rxd_tdata[5]}),
        .DINPBDINP({1'b0,1'b0,1'b0,1'b0}),
        .DOUTADOUT(\NLW_DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOUTADOUT_UNCONNECTED [31:0]),
        .DOUTBDOUT({\NLW_DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOUTBDOUT_UNCONNECTED [31:8],D[4:0],doutb}),
        .DOUTPADOUTP(\NLW_DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOUTPADOUTP_UNCONNECTED [3:0]),
        .DOUTPBDOUTP({\NLW_DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOUTPBDOUTP_UNCONNECTED [3:1],D[5]}),
        .ECCPARITY(\NLW_DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ECCPIPECE(1'b0),
        .ENARDEN(WEA),
        .ENBWREN(ram_rd_en_i),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .SLEEP(1'b0),
        .WEA({1'b0,1'b0,1'b0,WEA}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper__parameterized10
   (D,
    s_axi_aclk,
    WEA,
    ram_rd_en_i,
    \gcc0.gc0.count_d1_reg[11] ,
    \gc0.count_d1_reg[11] ,
    axi_str_rxd_tdata);
  output [8:0]D;
  input s_axi_aclk;
  input [0:0]WEA;
  input ram_rd_en_i;
  input [11:0]\gcc0.gc0.count_d1_reg[11] ;
  input [11:0]\gc0.count_d1_reg[11] ;
  input [8:0]axi_str_rxd_tdata;

  wire [8:0]D;
  wire [0:0]WEA;
  wire [8:0]axi_str_rxd_tdata;
  wire [11:0]\gc0.count_d1_reg[11] ;
  wire [11:0]\gcc0.gc0.count_d1_reg[11] ;
  wire ram_rd_en_i;
  wire s_axi_aclk;
  wire \NLW_DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASOUTDBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASOUTSBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASDOUTA_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASDOUTB_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASDOUTPA_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASDOUTPB_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOUTADOUT_UNCONNECTED ;
  wire [31:8]\NLW_DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOUTBDOUT_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOUTPADOUTP_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOUTPBDOUTP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E2 #(
    .CASCADE_ORDER_A("NONE"),
    .CASCADE_ORDER_B("NONE"),
    .CLOCK_DOMAINS("COMMON"),
    .DOA_REG(0),
    .DOB_REG(0),
    .ENADDRENA("FALSE"),
    .ENADDRENB("FALSE"),
    .EN_ECC_PIPE("FALSE"),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_40(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_41(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_42(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_43(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_44(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_45(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_46(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_47(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_48(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_49(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_50(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_51(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_52(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_53(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_54(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_55(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_56(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_57(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_58(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_59(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RDADDRCHANGEA("FALSE"),
    .RDADDRCHANGEB("FALSE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SLEEP_ASYNC("FALSE"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    \DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({\gcc0.gc0.count_d1_reg[11] ,1'b0,1'b0,1'b0}),
        .ADDRBWRADDR({\gc0.count_d1_reg[11] ,1'b0,1'b0,1'b0}),
        .ADDRENA(1'b0),
        .ADDRENB(1'b0),
        .CASDIMUXA(1'b0),
        .CASDIMUXB(1'b0),
        .CASDINA({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASDINB({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASDINPA({1'b0,1'b0,1'b0,1'b0}),
        .CASDINPB({1'b0,1'b0,1'b0,1'b0}),
        .CASDOMUXA(1'b0),
        .CASDOMUXB(1'b0),
        .CASDOMUXEN_A(1'b0),
        .CASDOMUXEN_B(1'b0),
        .CASDOUTA(\NLW_DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASDOUTA_UNCONNECTED [31:0]),
        .CASDOUTB(\NLW_DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASDOUTB_UNCONNECTED [31:0]),
        .CASDOUTPA(\NLW_DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASDOUTPA_UNCONNECTED [3:0]),
        .CASDOUTPB(\NLW_DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASDOUTPB_UNCONNECTED [3:0]),
        .CASINDBITERR(1'b0),
        .CASINSBITERR(1'b0),
        .CASOREGIMUXA(1'b0),
        .CASOREGIMUXB(1'b0),
        .CASOREGIMUXEN_A(1'b0),
        .CASOREGIMUXEN_B(1'b0),
        .CASOUTDBITERR(\NLW_DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASOUTDBITERR_UNCONNECTED ),
        .CASOUTSBITERR(\NLW_DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASOUTSBITERR_UNCONNECTED ),
        .CLKARDCLK(s_axi_aclk),
        .CLKBWRCLK(s_axi_aclk),
        .DBITERR(\NLW_DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DINADIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,axi_str_rxd_tdata[7:0]}),
        .DINBDIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DINPADINP({1'b0,1'b0,1'b0,axi_str_rxd_tdata[8]}),
        .DINPBDINP({1'b0,1'b0,1'b0,1'b0}),
        .DOUTADOUT(\NLW_DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOUTADOUT_UNCONNECTED [31:0]),
        .DOUTBDOUT({\NLW_DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOUTBDOUT_UNCONNECTED [31:8],D[7:0]}),
        .DOUTPADOUTP(\NLW_DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOUTPADOUTP_UNCONNECTED [3:0]),
        .DOUTPBDOUTP({\NLW_DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOUTPBDOUTP_UNCONNECTED [3:1],D[8]}),
        .ECCPARITY(\NLW_DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ECCPIPECE(1'b0),
        .ENARDEN(WEA),
        .ENBWREN(ram_rd_en_i),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .SLEEP(1'b0),
        .WEA({1'b0,1'b0,1'b0,WEA}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper__parameterized11
   (D,
    s_axi_aclk,
    WEA,
    ram_rd_en_i,
    \gcc0.gc0.count_d1_reg[11] ,
    \gc0.count_d1_reg[11] ,
    axi_str_rxd_tdata);
  output [8:0]D;
  input s_axi_aclk;
  input [0:0]WEA;
  input ram_rd_en_i;
  input [11:0]\gcc0.gc0.count_d1_reg[11] ;
  input [11:0]\gc0.count_d1_reg[11] ;
  input [8:0]axi_str_rxd_tdata;

  wire [8:0]D;
  wire [0:0]WEA;
  wire [8:0]axi_str_rxd_tdata;
  wire [11:0]\gc0.count_d1_reg[11] ;
  wire [11:0]\gcc0.gc0.count_d1_reg[11] ;
  wire ram_rd_en_i;
  wire s_axi_aclk;
  wire \NLW_DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASOUTDBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASOUTSBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASDOUTA_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASDOUTB_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASDOUTPA_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASDOUTPB_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOUTADOUT_UNCONNECTED ;
  wire [31:8]\NLW_DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOUTBDOUT_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOUTPADOUTP_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOUTPBDOUTP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E2 #(
    .CASCADE_ORDER_A("NONE"),
    .CASCADE_ORDER_B("NONE"),
    .CLOCK_DOMAINS("COMMON"),
    .DOA_REG(0),
    .DOB_REG(0),
    .ENADDRENA("FALSE"),
    .ENADDRENB("FALSE"),
    .EN_ECC_PIPE("FALSE"),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_40(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_41(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_42(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_43(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_44(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_45(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_46(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_47(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_48(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_49(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_50(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_51(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_52(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_53(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_54(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_55(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_56(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_57(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_58(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_59(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RDADDRCHANGEA("FALSE"),
    .RDADDRCHANGEB("FALSE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SLEEP_ASYNC("FALSE"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    \DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({\gcc0.gc0.count_d1_reg[11] ,1'b0,1'b0,1'b0}),
        .ADDRBWRADDR({\gc0.count_d1_reg[11] ,1'b0,1'b0,1'b0}),
        .ADDRENA(1'b0),
        .ADDRENB(1'b0),
        .CASDIMUXA(1'b0),
        .CASDIMUXB(1'b0),
        .CASDINA({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASDINB({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASDINPA({1'b0,1'b0,1'b0,1'b0}),
        .CASDINPB({1'b0,1'b0,1'b0,1'b0}),
        .CASDOMUXA(1'b0),
        .CASDOMUXB(1'b0),
        .CASDOMUXEN_A(1'b0),
        .CASDOMUXEN_B(1'b0),
        .CASDOUTA(\NLW_DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASDOUTA_UNCONNECTED [31:0]),
        .CASDOUTB(\NLW_DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASDOUTB_UNCONNECTED [31:0]),
        .CASDOUTPA(\NLW_DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASDOUTPA_UNCONNECTED [3:0]),
        .CASDOUTPB(\NLW_DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASDOUTPB_UNCONNECTED [3:0]),
        .CASINDBITERR(1'b0),
        .CASINSBITERR(1'b0),
        .CASOREGIMUXA(1'b0),
        .CASOREGIMUXB(1'b0),
        .CASOREGIMUXEN_A(1'b0),
        .CASOREGIMUXEN_B(1'b0),
        .CASOUTDBITERR(\NLW_DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASOUTDBITERR_UNCONNECTED ),
        .CASOUTSBITERR(\NLW_DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASOUTSBITERR_UNCONNECTED ),
        .CLKARDCLK(s_axi_aclk),
        .CLKBWRCLK(s_axi_aclk),
        .DBITERR(\NLW_DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DINADIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,axi_str_rxd_tdata[7:0]}),
        .DINBDIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DINPADINP({1'b0,1'b0,1'b0,axi_str_rxd_tdata[8]}),
        .DINPBDINP({1'b0,1'b0,1'b0,1'b0}),
        .DOUTADOUT(\NLW_DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOUTADOUT_UNCONNECTED [31:0]),
        .DOUTBDOUT({\NLW_DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOUTBDOUT_UNCONNECTED [31:8],D[7:0]}),
        .DOUTPADOUTP(\NLW_DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOUTPADOUTP_UNCONNECTED [3:0]),
        .DOUTPBDOUTP({\NLW_DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOUTPBDOUTP_UNCONNECTED [3:1],D[8]}),
        .ECCPARITY(\NLW_DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ECCPIPECE(1'b0),
        .ENARDEN(WEA),
        .ENBWREN(ram_rd_en_i),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .SLEEP(1'b0),
        .WEA({1'b0,1'b0,1'b0,WEA}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper__parameterized12
   (D,
    s_axi_aclk,
    WEA,
    ram_rd_en_i,
    \gcc0.gc0.count_d1_reg[11] ,
    \gc0.count_d1_reg[11] ,
    axi_str_rxd_tdata);
  output [8:0]D;
  input s_axi_aclk;
  input [0:0]WEA;
  input ram_rd_en_i;
  input [11:0]\gcc0.gc0.count_d1_reg[11] ;
  input [11:0]\gc0.count_d1_reg[11] ;
  input [8:0]axi_str_rxd_tdata;

  wire [8:0]D;
  wire [0:0]WEA;
  wire [8:0]axi_str_rxd_tdata;
  wire [11:0]\gc0.count_d1_reg[11] ;
  wire [11:0]\gcc0.gc0.count_d1_reg[11] ;
  wire ram_rd_en_i;
  wire s_axi_aclk;
  wire \NLW_DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASOUTDBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASOUTSBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASDOUTA_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASDOUTB_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASDOUTPA_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASDOUTPB_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOUTADOUT_UNCONNECTED ;
  wire [31:8]\NLW_DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOUTBDOUT_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOUTPADOUTP_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOUTPBDOUTP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E2 #(
    .CASCADE_ORDER_A("NONE"),
    .CASCADE_ORDER_B("NONE"),
    .CLOCK_DOMAINS("COMMON"),
    .DOA_REG(0),
    .DOB_REG(0),
    .ENADDRENA("FALSE"),
    .ENADDRENB("FALSE"),
    .EN_ECC_PIPE("FALSE"),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_40(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_41(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_42(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_43(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_44(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_45(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_46(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_47(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_48(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_49(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_50(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_51(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_52(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_53(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_54(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_55(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_56(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_57(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_58(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_59(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RDADDRCHANGEA("FALSE"),
    .RDADDRCHANGEB("FALSE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SLEEP_ASYNC("FALSE"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    \DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({\gcc0.gc0.count_d1_reg[11] ,1'b0,1'b0,1'b0}),
        .ADDRBWRADDR({\gc0.count_d1_reg[11] ,1'b0,1'b0,1'b0}),
        .ADDRENA(1'b0),
        .ADDRENB(1'b0),
        .CASDIMUXA(1'b0),
        .CASDIMUXB(1'b0),
        .CASDINA({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASDINB({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASDINPA({1'b0,1'b0,1'b0,1'b0}),
        .CASDINPB({1'b0,1'b0,1'b0,1'b0}),
        .CASDOMUXA(1'b0),
        .CASDOMUXB(1'b0),
        .CASDOMUXEN_A(1'b0),
        .CASDOMUXEN_B(1'b0),
        .CASDOUTA(\NLW_DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASDOUTA_UNCONNECTED [31:0]),
        .CASDOUTB(\NLW_DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASDOUTB_UNCONNECTED [31:0]),
        .CASDOUTPA(\NLW_DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASDOUTPA_UNCONNECTED [3:0]),
        .CASDOUTPB(\NLW_DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASDOUTPB_UNCONNECTED [3:0]),
        .CASINDBITERR(1'b0),
        .CASINSBITERR(1'b0),
        .CASOREGIMUXA(1'b0),
        .CASOREGIMUXB(1'b0),
        .CASOREGIMUXEN_A(1'b0),
        .CASOREGIMUXEN_B(1'b0),
        .CASOUTDBITERR(\NLW_DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASOUTDBITERR_UNCONNECTED ),
        .CASOUTSBITERR(\NLW_DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASOUTSBITERR_UNCONNECTED ),
        .CLKARDCLK(s_axi_aclk),
        .CLKBWRCLK(s_axi_aclk),
        .DBITERR(\NLW_DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DINADIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,axi_str_rxd_tdata[7:0]}),
        .DINBDIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DINPADINP({1'b0,1'b0,1'b0,axi_str_rxd_tdata[8]}),
        .DINPBDINP({1'b0,1'b0,1'b0,1'b0}),
        .DOUTADOUT(\NLW_DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOUTADOUT_UNCONNECTED [31:0]),
        .DOUTBDOUT({\NLW_DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOUTBDOUT_UNCONNECTED [31:8],D[7:0]}),
        .DOUTPADOUTP(\NLW_DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOUTPADOUTP_UNCONNECTED [3:0]),
        .DOUTPBDOUTP({\NLW_DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOUTPBDOUTP_UNCONNECTED [3:1],D[8]}),
        .ECCPARITY(\NLW_DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ECCPIPECE(1'b0),
        .ENARDEN(WEA),
        .ENBWREN(ram_rd_en_i),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .SLEEP(1'b0),
        .WEA({1'b0,1'b0,1'b0,WEA}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper__parameterized13
   (D,
    s_axi_aclk,
    WEA,
    ram_rd_en_i,
    \gcc0.gc0.count_d1_reg[11] ,
    \gc0.count_d1_reg[11] ,
    axi_str_rxd_tdata);
  output [8:0]D;
  input s_axi_aclk;
  input [0:0]WEA;
  input ram_rd_en_i;
  input [11:0]\gcc0.gc0.count_d1_reg[11] ;
  input [11:0]\gc0.count_d1_reg[11] ;
  input [8:0]axi_str_rxd_tdata;

  wire [8:0]D;
  wire [0:0]WEA;
  wire [8:0]axi_str_rxd_tdata;
  wire [11:0]\gc0.count_d1_reg[11] ;
  wire [11:0]\gcc0.gc0.count_d1_reg[11] ;
  wire ram_rd_en_i;
  wire s_axi_aclk;
  wire \NLW_DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASOUTDBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASOUTSBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASDOUTA_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASDOUTB_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASDOUTPA_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASDOUTPB_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOUTADOUT_UNCONNECTED ;
  wire [31:8]\NLW_DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOUTBDOUT_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOUTPADOUTP_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOUTPBDOUTP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E2 #(
    .CASCADE_ORDER_A("NONE"),
    .CASCADE_ORDER_B("NONE"),
    .CLOCK_DOMAINS("COMMON"),
    .DOA_REG(0),
    .DOB_REG(0),
    .ENADDRENA("FALSE"),
    .ENADDRENB("FALSE"),
    .EN_ECC_PIPE("FALSE"),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_40(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_41(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_42(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_43(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_44(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_45(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_46(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_47(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_48(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_49(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_50(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_51(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_52(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_53(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_54(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_55(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_56(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_57(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_58(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_59(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RDADDRCHANGEA("FALSE"),
    .RDADDRCHANGEB("FALSE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SLEEP_ASYNC("FALSE"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    \DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({\gcc0.gc0.count_d1_reg[11] ,1'b0,1'b0,1'b0}),
        .ADDRBWRADDR({\gc0.count_d1_reg[11] ,1'b0,1'b0,1'b0}),
        .ADDRENA(1'b0),
        .ADDRENB(1'b0),
        .CASDIMUXA(1'b0),
        .CASDIMUXB(1'b0),
        .CASDINA({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASDINB({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASDINPA({1'b0,1'b0,1'b0,1'b0}),
        .CASDINPB({1'b0,1'b0,1'b0,1'b0}),
        .CASDOMUXA(1'b0),
        .CASDOMUXB(1'b0),
        .CASDOMUXEN_A(1'b0),
        .CASDOMUXEN_B(1'b0),
        .CASDOUTA(\NLW_DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASDOUTA_UNCONNECTED [31:0]),
        .CASDOUTB(\NLW_DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASDOUTB_UNCONNECTED [31:0]),
        .CASDOUTPA(\NLW_DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASDOUTPA_UNCONNECTED [3:0]),
        .CASDOUTPB(\NLW_DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASDOUTPB_UNCONNECTED [3:0]),
        .CASINDBITERR(1'b0),
        .CASINSBITERR(1'b0),
        .CASOREGIMUXA(1'b0),
        .CASOREGIMUXB(1'b0),
        .CASOREGIMUXEN_A(1'b0),
        .CASOREGIMUXEN_B(1'b0),
        .CASOUTDBITERR(\NLW_DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASOUTDBITERR_UNCONNECTED ),
        .CASOUTSBITERR(\NLW_DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASOUTSBITERR_UNCONNECTED ),
        .CLKARDCLK(s_axi_aclk),
        .CLKBWRCLK(s_axi_aclk),
        .DBITERR(\NLW_DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DINADIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,axi_str_rxd_tdata[7:0]}),
        .DINBDIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DINPADINP({1'b0,1'b0,1'b0,axi_str_rxd_tdata[8]}),
        .DINPBDINP({1'b0,1'b0,1'b0,1'b0}),
        .DOUTADOUT(\NLW_DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOUTADOUT_UNCONNECTED [31:0]),
        .DOUTBDOUT({\NLW_DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOUTBDOUT_UNCONNECTED [31:8],D[7:0]}),
        .DOUTPADOUTP(\NLW_DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOUTPADOUTP_UNCONNECTED [3:0]),
        .DOUTPBDOUTP({\NLW_DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOUTPBDOUTP_UNCONNECTED [3:1],D[8]}),
        .ECCPARITY(\NLW_DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ECCPIPECE(1'b0),
        .ENARDEN(WEA),
        .ENBWREN(ram_rd_en_i),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .SLEEP(1'b0),
        .WEA({1'b0,1'b0,1'b0,WEA}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper__parameterized14
   (D,
    s_axi_aclk,
    WEA,
    ram_rd_en_i,
    \gcc0.gc0.count_d1_reg[11] ,
    \gc0.count_d1_reg[11] ,
    axi_str_rxd_tdata);
  output [8:0]D;
  input s_axi_aclk;
  input [0:0]WEA;
  input ram_rd_en_i;
  input [11:0]\gcc0.gc0.count_d1_reg[11] ;
  input [11:0]\gc0.count_d1_reg[11] ;
  input [8:0]axi_str_rxd_tdata;

  wire [8:0]D;
  wire [0:0]WEA;
  wire [8:0]axi_str_rxd_tdata;
  wire [11:0]\gc0.count_d1_reg[11] ;
  wire [11:0]\gcc0.gc0.count_d1_reg[11] ;
  wire ram_rd_en_i;
  wire s_axi_aclk;
  wire \NLW_DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASOUTDBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASOUTSBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASDOUTA_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASDOUTB_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASDOUTPA_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASDOUTPB_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOUTADOUT_UNCONNECTED ;
  wire [31:8]\NLW_DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOUTBDOUT_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOUTPADOUTP_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOUTPBDOUTP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E2 #(
    .CASCADE_ORDER_A("NONE"),
    .CASCADE_ORDER_B("NONE"),
    .CLOCK_DOMAINS("COMMON"),
    .DOA_REG(0),
    .DOB_REG(0),
    .ENADDRENA("FALSE"),
    .ENADDRENB("FALSE"),
    .EN_ECC_PIPE("FALSE"),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_40(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_41(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_42(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_43(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_44(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_45(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_46(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_47(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_48(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_49(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_50(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_51(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_52(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_53(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_54(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_55(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_56(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_57(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_58(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_59(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RDADDRCHANGEA("FALSE"),
    .RDADDRCHANGEB("FALSE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SLEEP_ASYNC("FALSE"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    \DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({\gcc0.gc0.count_d1_reg[11] ,1'b0,1'b0,1'b0}),
        .ADDRBWRADDR({\gc0.count_d1_reg[11] ,1'b0,1'b0,1'b0}),
        .ADDRENA(1'b0),
        .ADDRENB(1'b0),
        .CASDIMUXA(1'b0),
        .CASDIMUXB(1'b0),
        .CASDINA({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASDINB({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASDINPA({1'b0,1'b0,1'b0,1'b0}),
        .CASDINPB({1'b0,1'b0,1'b0,1'b0}),
        .CASDOMUXA(1'b0),
        .CASDOMUXB(1'b0),
        .CASDOMUXEN_A(1'b0),
        .CASDOMUXEN_B(1'b0),
        .CASDOUTA(\NLW_DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASDOUTA_UNCONNECTED [31:0]),
        .CASDOUTB(\NLW_DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASDOUTB_UNCONNECTED [31:0]),
        .CASDOUTPA(\NLW_DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASDOUTPA_UNCONNECTED [3:0]),
        .CASDOUTPB(\NLW_DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASDOUTPB_UNCONNECTED [3:0]),
        .CASINDBITERR(1'b0),
        .CASINSBITERR(1'b0),
        .CASOREGIMUXA(1'b0),
        .CASOREGIMUXB(1'b0),
        .CASOREGIMUXEN_A(1'b0),
        .CASOREGIMUXEN_B(1'b0),
        .CASOUTDBITERR(\NLW_DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASOUTDBITERR_UNCONNECTED ),
        .CASOUTSBITERR(\NLW_DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASOUTSBITERR_UNCONNECTED ),
        .CLKARDCLK(s_axi_aclk),
        .CLKBWRCLK(s_axi_aclk),
        .DBITERR(\NLW_DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DINADIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,axi_str_rxd_tdata[7:0]}),
        .DINBDIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DINPADINP({1'b0,1'b0,1'b0,axi_str_rxd_tdata[8]}),
        .DINPBDINP({1'b0,1'b0,1'b0,1'b0}),
        .DOUTADOUT(\NLW_DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOUTADOUT_UNCONNECTED [31:0]),
        .DOUTBDOUT({\NLW_DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOUTBDOUT_UNCONNECTED [31:8],D[7:0]}),
        .DOUTPADOUTP(\NLW_DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOUTPADOUTP_UNCONNECTED [3:0]),
        .DOUTPBDOUTP({\NLW_DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOUTPBDOUTP_UNCONNECTED [3:1],D[8]}),
        .ECCPARITY(\NLW_DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ECCPIPECE(1'b0),
        .ENARDEN(WEA),
        .ENBWREN(ram_rd_en_i),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .SLEEP(1'b0),
        .WEA({1'b0,1'b0,1'b0,WEA}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper__parameterized15
   (D,
    s_axi_aclk,
    WEA,
    ram_rd_en_i,
    \gcc0.gc0.count_d1_reg[11] ,
    \gc0.count_d1_reg[11] ,
    axi_str_rxd_tdata);
  output [4:0]D;
  input s_axi_aclk;
  input [0:0]WEA;
  input ram_rd_en_i;
  input [11:0]\gcc0.gc0.count_d1_reg[11] ;
  input [11:0]\gc0.count_d1_reg[11] ;
  input [4:0]axi_str_rxd_tdata;

  wire [4:0]D;
  wire \DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_n_124 ;
  wire \DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_n_125 ;
  wire \DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_n_126 ;
  wire \DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_n_147 ;
  wire [0:0]WEA;
  wire [4:0]axi_str_rxd_tdata;
  wire [11:0]\gc0.count_d1_reg[11] ;
  wire [11:0]\gcc0.gc0.count_d1_reg[11] ;
  wire ram_rd_en_i;
  wire s_axi_aclk;
  wire \NLW_DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASOUTDBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASOUTSBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASDOUTA_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASDOUTB_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASDOUTPA_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASDOUTPB_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOUTADOUT_UNCONNECTED ;
  wire [31:8]\NLW_DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOUTBDOUT_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOUTPADOUTP_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOUTPBDOUTP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E2 #(
    .CASCADE_ORDER_A("NONE"),
    .CASCADE_ORDER_B("NONE"),
    .CLOCK_DOMAINS("COMMON"),
    .DOA_REG(0),
    .DOB_REG(0),
    .ENADDRENA("FALSE"),
    .ENADDRENB("FALSE"),
    .EN_ECC_PIPE("FALSE"),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_40(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_41(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_42(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_43(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_44(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_45(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_46(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_47(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_48(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_49(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_50(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_51(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_52(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_53(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_54(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_55(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_56(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_57(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_58(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_59(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RDADDRCHANGEA("FALSE"),
    .RDADDRCHANGEB("FALSE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SLEEP_ASYNC("FALSE"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    \DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({\gcc0.gc0.count_d1_reg[11] ,1'b0,1'b0,1'b0}),
        .ADDRBWRADDR({\gc0.count_d1_reg[11] ,1'b0,1'b0,1'b0}),
        .ADDRENA(1'b0),
        .ADDRENB(1'b0),
        .CASDIMUXA(1'b0),
        .CASDIMUXB(1'b0),
        .CASDINA({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASDINB({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASDINPA({1'b0,1'b0,1'b0,1'b0}),
        .CASDINPB({1'b0,1'b0,1'b0,1'b0}),
        .CASDOMUXA(1'b0),
        .CASDOMUXB(1'b0),
        .CASDOMUXEN_A(1'b0),
        .CASDOMUXEN_B(1'b0),
        .CASDOUTA(\NLW_DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASDOUTA_UNCONNECTED [31:0]),
        .CASDOUTB(\NLW_DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASDOUTB_UNCONNECTED [31:0]),
        .CASDOUTPA(\NLW_DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASDOUTPA_UNCONNECTED [3:0]),
        .CASDOUTPB(\NLW_DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASDOUTPB_UNCONNECTED [3:0]),
        .CASINDBITERR(1'b0),
        .CASINSBITERR(1'b0),
        .CASOREGIMUXA(1'b0),
        .CASOREGIMUXB(1'b0),
        .CASOREGIMUXEN_A(1'b0),
        .CASOREGIMUXEN_B(1'b0),
        .CASOUTDBITERR(\NLW_DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASOUTDBITERR_UNCONNECTED ),
        .CASOUTSBITERR(\NLW_DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASOUTSBITERR_UNCONNECTED ),
        .CLKARDCLK(s_axi_aclk),
        .CLKBWRCLK(s_axi_aclk),
        .DBITERR(\NLW_DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DINADIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,axi_str_rxd_tdata}),
        .DINBDIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DINPADINP({1'b0,1'b0,1'b0,1'b0}),
        .DINPBDINP({1'b0,1'b0,1'b0,1'b0}),
        .DOUTADOUT(\NLW_DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOUTADOUT_UNCONNECTED [31:0]),
        .DOUTBDOUT({\NLW_DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOUTBDOUT_UNCONNECTED [31:8],\DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_n_124 ,\DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_n_125 ,\DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_n_126 ,D}),
        .DOUTPADOUTP(\NLW_DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOUTPADOUTP_UNCONNECTED [3:0]),
        .DOUTPBDOUTP({\NLW_DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOUTPBDOUTP_UNCONNECTED [3:1],\DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_n_147 }),
        .ECCPARITY(\NLW_DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ECCPIPECE(1'b0),
        .ENARDEN(WEA),
        .ENBWREN(ram_rd_en_i),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .SLEEP(1'b0),
        .WEA({1'b0,1'b0,1'b0,WEA}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper__parameterized2
   (D,
    s_axi_aclk,
    WEA,
    ram_rd_en_i,
    \gcc0.gc0.count_d1_reg[11] ,
    \gc0.count_d1_reg[11] ,
    axi_str_rxd_tdata);
  output [8:0]D;
  input s_axi_aclk;
  input [0:0]WEA;
  input ram_rd_en_i;
  input [11:0]\gcc0.gc0.count_d1_reg[11] ;
  input [11:0]\gc0.count_d1_reg[11] ;
  input [8:0]axi_str_rxd_tdata;

  wire [8:0]D;
  wire [0:0]WEA;
  wire [8:0]axi_str_rxd_tdata;
  wire [11:0]\gc0.count_d1_reg[11] ;
  wire [11:0]\gcc0.gc0.count_d1_reg[11] ;
  wire ram_rd_en_i;
  wire s_axi_aclk;
  wire \NLW_DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASOUTDBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASOUTSBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASDOUTA_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASDOUTB_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASDOUTPA_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASDOUTPB_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOUTADOUT_UNCONNECTED ;
  wire [31:8]\NLW_DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOUTBDOUT_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOUTPADOUTP_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOUTPBDOUTP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E2 #(
    .CASCADE_ORDER_A("NONE"),
    .CASCADE_ORDER_B("NONE"),
    .CLOCK_DOMAINS("COMMON"),
    .DOA_REG(0),
    .DOB_REG(0),
    .ENADDRENA("FALSE"),
    .ENADDRENB("FALSE"),
    .EN_ECC_PIPE("FALSE"),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_40(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_41(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_42(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_43(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_44(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_45(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_46(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_47(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_48(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_49(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_50(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_51(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_52(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_53(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_54(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_55(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_56(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_57(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_58(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_59(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RDADDRCHANGEA("FALSE"),
    .RDADDRCHANGEB("FALSE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SLEEP_ASYNC("FALSE"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    \DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({\gcc0.gc0.count_d1_reg[11] ,1'b0,1'b0,1'b0}),
        .ADDRBWRADDR({\gc0.count_d1_reg[11] ,1'b0,1'b0,1'b0}),
        .ADDRENA(1'b0),
        .ADDRENB(1'b0),
        .CASDIMUXA(1'b0),
        .CASDIMUXB(1'b0),
        .CASDINA({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASDINB({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASDINPA({1'b0,1'b0,1'b0,1'b0}),
        .CASDINPB({1'b0,1'b0,1'b0,1'b0}),
        .CASDOMUXA(1'b0),
        .CASDOMUXB(1'b0),
        .CASDOMUXEN_A(1'b0),
        .CASDOMUXEN_B(1'b0),
        .CASDOUTA(\NLW_DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASDOUTA_UNCONNECTED [31:0]),
        .CASDOUTB(\NLW_DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASDOUTB_UNCONNECTED [31:0]),
        .CASDOUTPA(\NLW_DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASDOUTPA_UNCONNECTED [3:0]),
        .CASDOUTPB(\NLW_DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASDOUTPB_UNCONNECTED [3:0]),
        .CASINDBITERR(1'b0),
        .CASINSBITERR(1'b0),
        .CASOREGIMUXA(1'b0),
        .CASOREGIMUXB(1'b0),
        .CASOREGIMUXEN_A(1'b0),
        .CASOREGIMUXEN_B(1'b0),
        .CASOUTDBITERR(\NLW_DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASOUTDBITERR_UNCONNECTED ),
        .CASOUTSBITERR(\NLW_DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASOUTSBITERR_UNCONNECTED ),
        .CLKARDCLK(s_axi_aclk),
        .CLKBWRCLK(s_axi_aclk),
        .DBITERR(\NLW_DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DINADIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,axi_str_rxd_tdata[7:0]}),
        .DINBDIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DINPADINP({1'b0,1'b0,1'b0,axi_str_rxd_tdata[8]}),
        .DINPBDINP({1'b0,1'b0,1'b0,1'b0}),
        .DOUTADOUT(\NLW_DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOUTADOUT_UNCONNECTED [31:0]),
        .DOUTBDOUT({\NLW_DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOUTBDOUT_UNCONNECTED [31:8],D[7:0]}),
        .DOUTPADOUTP(\NLW_DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOUTPADOUTP_UNCONNECTED [3:0]),
        .DOUTPBDOUTP({\NLW_DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOUTPBDOUTP_UNCONNECTED [3:1],D[8]}),
        .ECCPARITY(\NLW_DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ECCPIPECE(1'b0),
        .ENARDEN(WEA),
        .ENBWREN(ram_rd_en_i),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .SLEEP(1'b0),
        .WEA({1'b0,1'b0,1'b0,WEA}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper__parameterized3
   (D,
    s_axi_aclk,
    WEA,
    ram_rd_en_i,
    \gcc0.gc0.count_d1_reg[11] ,
    \gc0.count_d1_reg[11] ,
    axi_str_rxd_tdata);
  output [8:0]D;
  input s_axi_aclk;
  input [0:0]WEA;
  input ram_rd_en_i;
  input [11:0]\gcc0.gc0.count_d1_reg[11] ;
  input [11:0]\gc0.count_d1_reg[11] ;
  input [8:0]axi_str_rxd_tdata;

  wire [8:0]D;
  wire [0:0]WEA;
  wire [8:0]axi_str_rxd_tdata;
  wire [11:0]\gc0.count_d1_reg[11] ;
  wire [11:0]\gcc0.gc0.count_d1_reg[11] ;
  wire ram_rd_en_i;
  wire s_axi_aclk;
  wire \NLW_DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASOUTDBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASOUTSBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASDOUTA_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASDOUTB_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASDOUTPA_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASDOUTPB_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOUTADOUT_UNCONNECTED ;
  wire [31:8]\NLW_DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOUTBDOUT_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOUTPADOUTP_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOUTPBDOUTP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E2 #(
    .CASCADE_ORDER_A("NONE"),
    .CASCADE_ORDER_B("NONE"),
    .CLOCK_DOMAINS("COMMON"),
    .DOA_REG(0),
    .DOB_REG(0),
    .ENADDRENA("FALSE"),
    .ENADDRENB("FALSE"),
    .EN_ECC_PIPE("FALSE"),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_40(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_41(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_42(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_43(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_44(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_45(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_46(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_47(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_48(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_49(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_50(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_51(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_52(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_53(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_54(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_55(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_56(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_57(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_58(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_59(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RDADDRCHANGEA("FALSE"),
    .RDADDRCHANGEB("FALSE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SLEEP_ASYNC("FALSE"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    \DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({\gcc0.gc0.count_d1_reg[11] ,1'b0,1'b0,1'b0}),
        .ADDRBWRADDR({\gc0.count_d1_reg[11] ,1'b0,1'b0,1'b0}),
        .ADDRENA(1'b0),
        .ADDRENB(1'b0),
        .CASDIMUXA(1'b0),
        .CASDIMUXB(1'b0),
        .CASDINA({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASDINB({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASDINPA({1'b0,1'b0,1'b0,1'b0}),
        .CASDINPB({1'b0,1'b0,1'b0,1'b0}),
        .CASDOMUXA(1'b0),
        .CASDOMUXB(1'b0),
        .CASDOMUXEN_A(1'b0),
        .CASDOMUXEN_B(1'b0),
        .CASDOUTA(\NLW_DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASDOUTA_UNCONNECTED [31:0]),
        .CASDOUTB(\NLW_DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASDOUTB_UNCONNECTED [31:0]),
        .CASDOUTPA(\NLW_DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASDOUTPA_UNCONNECTED [3:0]),
        .CASDOUTPB(\NLW_DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASDOUTPB_UNCONNECTED [3:0]),
        .CASINDBITERR(1'b0),
        .CASINSBITERR(1'b0),
        .CASOREGIMUXA(1'b0),
        .CASOREGIMUXB(1'b0),
        .CASOREGIMUXEN_A(1'b0),
        .CASOREGIMUXEN_B(1'b0),
        .CASOUTDBITERR(\NLW_DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASOUTDBITERR_UNCONNECTED ),
        .CASOUTSBITERR(\NLW_DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASOUTSBITERR_UNCONNECTED ),
        .CLKARDCLK(s_axi_aclk),
        .CLKBWRCLK(s_axi_aclk),
        .DBITERR(\NLW_DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DINADIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,axi_str_rxd_tdata[7:0]}),
        .DINBDIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DINPADINP({1'b0,1'b0,1'b0,axi_str_rxd_tdata[8]}),
        .DINPBDINP({1'b0,1'b0,1'b0,1'b0}),
        .DOUTADOUT(\NLW_DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOUTADOUT_UNCONNECTED [31:0]),
        .DOUTBDOUT({\NLW_DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOUTBDOUT_UNCONNECTED [31:8],D[7:0]}),
        .DOUTPADOUTP(\NLW_DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOUTPADOUTP_UNCONNECTED [3:0]),
        .DOUTPBDOUTP({\NLW_DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOUTPBDOUTP_UNCONNECTED [3:1],D[8]}),
        .ECCPARITY(\NLW_DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ECCPIPECE(1'b0),
        .ENARDEN(WEA),
        .ENBWREN(ram_rd_en_i),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .SLEEP(1'b0),
        .WEA({1'b0,1'b0,1'b0,WEA}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper__parameterized4
   (D,
    s_axi_aclk,
    WEA,
    ram_rd_en_i,
    \gcc0.gc0.count_d1_reg[11] ,
    \gc0.count_d1_reg[11] ,
    axi_str_rxd_tdata);
  output [8:0]D;
  input s_axi_aclk;
  input [0:0]WEA;
  input ram_rd_en_i;
  input [11:0]\gcc0.gc0.count_d1_reg[11] ;
  input [11:0]\gc0.count_d1_reg[11] ;
  input [8:0]axi_str_rxd_tdata;

  wire [8:0]D;
  wire [0:0]WEA;
  wire [8:0]axi_str_rxd_tdata;
  wire [11:0]\gc0.count_d1_reg[11] ;
  wire [11:0]\gcc0.gc0.count_d1_reg[11] ;
  wire ram_rd_en_i;
  wire s_axi_aclk;
  wire \NLW_DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASOUTDBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASOUTSBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASDOUTA_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASDOUTB_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASDOUTPA_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASDOUTPB_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOUTADOUT_UNCONNECTED ;
  wire [31:8]\NLW_DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOUTBDOUT_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOUTPADOUTP_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOUTPBDOUTP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E2 #(
    .CASCADE_ORDER_A("NONE"),
    .CASCADE_ORDER_B("NONE"),
    .CLOCK_DOMAINS("COMMON"),
    .DOA_REG(0),
    .DOB_REG(0),
    .ENADDRENA("FALSE"),
    .ENADDRENB("FALSE"),
    .EN_ECC_PIPE("FALSE"),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_40(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_41(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_42(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_43(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_44(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_45(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_46(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_47(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_48(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_49(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_50(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_51(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_52(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_53(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_54(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_55(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_56(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_57(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_58(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_59(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RDADDRCHANGEA("FALSE"),
    .RDADDRCHANGEB("FALSE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SLEEP_ASYNC("FALSE"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    \DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({\gcc0.gc0.count_d1_reg[11] ,1'b0,1'b0,1'b0}),
        .ADDRBWRADDR({\gc0.count_d1_reg[11] ,1'b0,1'b0,1'b0}),
        .ADDRENA(1'b0),
        .ADDRENB(1'b0),
        .CASDIMUXA(1'b0),
        .CASDIMUXB(1'b0),
        .CASDINA({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASDINB({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASDINPA({1'b0,1'b0,1'b0,1'b0}),
        .CASDINPB({1'b0,1'b0,1'b0,1'b0}),
        .CASDOMUXA(1'b0),
        .CASDOMUXB(1'b0),
        .CASDOMUXEN_A(1'b0),
        .CASDOMUXEN_B(1'b0),
        .CASDOUTA(\NLW_DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASDOUTA_UNCONNECTED [31:0]),
        .CASDOUTB(\NLW_DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASDOUTB_UNCONNECTED [31:0]),
        .CASDOUTPA(\NLW_DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASDOUTPA_UNCONNECTED [3:0]),
        .CASDOUTPB(\NLW_DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASDOUTPB_UNCONNECTED [3:0]),
        .CASINDBITERR(1'b0),
        .CASINSBITERR(1'b0),
        .CASOREGIMUXA(1'b0),
        .CASOREGIMUXB(1'b0),
        .CASOREGIMUXEN_A(1'b0),
        .CASOREGIMUXEN_B(1'b0),
        .CASOUTDBITERR(\NLW_DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASOUTDBITERR_UNCONNECTED ),
        .CASOUTSBITERR(\NLW_DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASOUTSBITERR_UNCONNECTED ),
        .CLKARDCLK(s_axi_aclk),
        .CLKBWRCLK(s_axi_aclk),
        .DBITERR(\NLW_DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DINADIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,axi_str_rxd_tdata[7:0]}),
        .DINBDIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DINPADINP({1'b0,1'b0,1'b0,axi_str_rxd_tdata[8]}),
        .DINPBDINP({1'b0,1'b0,1'b0,1'b0}),
        .DOUTADOUT(\NLW_DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOUTADOUT_UNCONNECTED [31:0]),
        .DOUTBDOUT({\NLW_DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOUTBDOUT_UNCONNECTED [31:8],D[7:0]}),
        .DOUTPADOUTP(\NLW_DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOUTPADOUTP_UNCONNECTED [3:0]),
        .DOUTPBDOUTP({\NLW_DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOUTPBDOUTP_UNCONNECTED [3:1],D[8]}),
        .ECCPARITY(\NLW_DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ECCPIPECE(1'b0),
        .ENARDEN(WEA),
        .ENBWREN(ram_rd_en_i),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .SLEEP(1'b0),
        .WEA({1'b0,1'b0,1'b0,WEA}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper__parameterized5
   (D,
    s_axi_aclk,
    WEA,
    ram_rd_en_i,
    \gcc0.gc0.count_d1_reg[11] ,
    \gc0.count_d1_reg[11] ,
    axi_str_rxd_tdata);
  output [8:0]D;
  input s_axi_aclk;
  input [0:0]WEA;
  input ram_rd_en_i;
  input [11:0]\gcc0.gc0.count_d1_reg[11] ;
  input [11:0]\gc0.count_d1_reg[11] ;
  input [8:0]axi_str_rxd_tdata;

  wire [8:0]D;
  wire [0:0]WEA;
  wire [8:0]axi_str_rxd_tdata;
  wire [11:0]\gc0.count_d1_reg[11] ;
  wire [11:0]\gcc0.gc0.count_d1_reg[11] ;
  wire ram_rd_en_i;
  wire s_axi_aclk;
  wire \NLW_DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASOUTDBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASOUTSBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASDOUTA_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASDOUTB_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASDOUTPA_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASDOUTPB_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOUTADOUT_UNCONNECTED ;
  wire [31:8]\NLW_DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOUTBDOUT_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOUTPADOUTP_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOUTPBDOUTP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E2 #(
    .CASCADE_ORDER_A("NONE"),
    .CASCADE_ORDER_B("NONE"),
    .CLOCK_DOMAINS("COMMON"),
    .DOA_REG(0),
    .DOB_REG(0),
    .ENADDRENA("FALSE"),
    .ENADDRENB("FALSE"),
    .EN_ECC_PIPE("FALSE"),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_40(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_41(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_42(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_43(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_44(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_45(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_46(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_47(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_48(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_49(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_50(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_51(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_52(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_53(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_54(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_55(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_56(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_57(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_58(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_59(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RDADDRCHANGEA("FALSE"),
    .RDADDRCHANGEB("FALSE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SLEEP_ASYNC("FALSE"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    \DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({\gcc0.gc0.count_d1_reg[11] ,1'b0,1'b0,1'b0}),
        .ADDRBWRADDR({\gc0.count_d1_reg[11] ,1'b0,1'b0,1'b0}),
        .ADDRENA(1'b0),
        .ADDRENB(1'b0),
        .CASDIMUXA(1'b0),
        .CASDIMUXB(1'b0),
        .CASDINA({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASDINB({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASDINPA({1'b0,1'b0,1'b0,1'b0}),
        .CASDINPB({1'b0,1'b0,1'b0,1'b0}),
        .CASDOMUXA(1'b0),
        .CASDOMUXB(1'b0),
        .CASDOMUXEN_A(1'b0),
        .CASDOMUXEN_B(1'b0),
        .CASDOUTA(\NLW_DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASDOUTA_UNCONNECTED [31:0]),
        .CASDOUTB(\NLW_DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASDOUTB_UNCONNECTED [31:0]),
        .CASDOUTPA(\NLW_DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASDOUTPA_UNCONNECTED [3:0]),
        .CASDOUTPB(\NLW_DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASDOUTPB_UNCONNECTED [3:0]),
        .CASINDBITERR(1'b0),
        .CASINSBITERR(1'b0),
        .CASOREGIMUXA(1'b0),
        .CASOREGIMUXB(1'b0),
        .CASOREGIMUXEN_A(1'b0),
        .CASOREGIMUXEN_B(1'b0),
        .CASOUTDBITERR(\NLW_DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASOUTDBITERR_UNCONNECTED ),
        .CASOUTSBITERR(\NLW_DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASOUTSBITERR_UNCONNECTED ),
        .CLKARDCLK(s_axi_aclk),
        .CLKBWRCLK(s_axi_aclk),
        .DBITERR(\NLW_DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DINADIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,axi_str_rxd_tdata[7:0]}),
        .DINBDIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DINPADINP({1'b0,1'b0,1'b0,axi_str_rxd_tdata[8]}),
        .DINPBDINP({1'b0,1'b0,1'b0,1'b0}),
        .DOUTADOUT(\NLW_DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOUTADOUT_UNCONNECTED [31:0]),
        .DOUTBDOUT({\NLW_DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOUTBDOUT_UNCONNECTED [31:8],D[7:0]}),
        .DOUTPADOUTP(\NLW_DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOUTPADOUTP_UNCONNECTED [3:0]),
        .DOUTPBDOUTP({\NLW_DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOUTPBDOUTP_UNCONNECTED [3:1],D[8]}),
        .ECCPARITY(\NLW_DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ECCPIPECE(1'b0),
        .ENARDEN(WEA),
        .ENBWREN(ram_rd_en_i),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .SLEEP(1'b0),
        .WEA({1'b0,1'b0,1'b0,WEA}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper__parameterized6
   (D,
    s_axi_aclk,
    WEA,
    ram_rd_en_i,
    \gcc0.gc0.count_d1_reg[11] ,
    \gc0.count_d1_reg[11] ,
    axi_str_rxd_tdata);
  output [8:0]D;
  input s_axi_aclk;
  input [0:0]WEA;
  input ram_rd_en_i;
  input [11:0]\gcc0.gc0.count_d1_reg[11] ;
  input [11:0]\gc0.count_d1_reg[11] ;
  input [8:0]axi_str_rxd_tdata;

  wire [8:0]D;
  wire [0:0]WEA;
  wire [8:0]axi_str_rxd_tdata;
  wire [11:0]\gc0.count_d1_reg[11] ;
  wire [11:0]\gcc0.gc0.count_d1_reg[11] ;
  wire ram_rd_en_i;
  wire s_axi_aclk;
  wire \NLW_DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASOUTDBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASOUTSBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASDOUTA_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASDOUTB_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASDOUTPA_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASDOUTPB_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOUTADOUT_UNCONNECTED ;
  wire [31:8]\NLW_DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOUTBDOUT_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOUTPADOUTP_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOUTPBDOUTP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E2 #(
    .CASCADE_ORDER_A("NONE"),
    .CASCADE_ORDER_B("NONE"),
    .CLOCK_DOMAINS("COMMON"),
    .DOA_REG(0),
    .DOB_REG(0),
    .ENADDRENA("FALSE"),
    .ENADDRENB("FALSE"),
    .EN_ECC_PIPE("FALSE"),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_40(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_41(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_42(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_43(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_44(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_45(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_46(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_47(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_48(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_49(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_50(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_51(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_52(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_53(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_54(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_55(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_56(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_57(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_58(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_59(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RDADDRCHANGEA("FALSE"),
    .RDADDRCHANGEB("FALSE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SLEEP_ASYNC("FALSE"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    \DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({\gcc0.gc0.count_d1_reg[11] ,1'b0,1'b0,1'b0}),
        .ADDRBWRADDR({\gc0.count_d1_reg[11] ,1'b0,1'b0,1'b0}),
        .ADDRENA(1'b0),
        .ADDRENB(1'b0),
        .CASDIMUXA(1'b0),
        .CASDIMUXB(1'b0),
        .CASDINA({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASDINB({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASDINPA({1'b0,1'b0,1'b0,1'b0}),
        .CASDINPB({1'b0,1'b0,1'b0,1'b0}),
        .CASDOMUXA(1'b0),
        .CASDOMUXB(1'b0),
        .CASDOMUXEN_A(1'b0),
        .CASDOMUXEN_B(1'b0),
        .CASDOUTA(\NLW_DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASDOUTA_UNCONNECTED [31:0]),
        .CASDOUTB(\NLW_DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASDOUTB_UNCONNECTED [31:0]),
        .CASDOUTPA(\NLW_DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASDOUTPA_UNCONNECTED [3:0]),
        .CASDOUTPB(\NLW_DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASDOUTPB_UNCONNECTED [3:0]),
        .CASINDBITERR(1'b0),
        .CASINSBITERR(1'b0),
        .CASOREGIMUXA(1'b0),
        .CASOREGIMUXB(1'b0),
        .CASOREGIMUXEN_A(1'b0),
        .CASOREGIMUXEN_B(1'b0),
        .CASOUTDBITERR(\NLW_DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASOUTDBITERR_UNCONNECTED ),
        .CASOUTSBITERR(\NLW_DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASOUTSBITERR_UNCONNECTED ),
        .CLKARDCLK(s_axi_aclk),
        .CLKBWRCLK(s_axi_aclk),
        .DBITERR(\NLW_DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DINADIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,axi_str_rxd_tdata[7:0]}),
        .DINBDIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DINPADINP({1'b0,1'b0,1'b0,axi_str_rxd_tdata[8]}),
        .DINPBDINP({1'b0,1'b0,1'b0,1'b0}),
        .DOUTADOUT(\NLW_DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOUTADOUT_UNCONNECTED [31:0]),
        .DOUTBDOUT({\NLW_DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOUTBDOUT_UNCONNECTED [31:8],D[7:0]}),
        .DOUTPADOUTP(\NLW_DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOUTPADOUTP_UNCONNECTED [3:0]),
        .DOUTPBDOUTP({\NLW_DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOUTPBDOUTP_UNCONNECTED [3:1],D[8]}),
        .ECCPARITY(\NLW_DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ECCPIPECE(1'b0),
        .ENARDEN(WEA),
        .ENBWREN(ram_rd_en_i),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .SLEEP(1'b0),
        .WEA({1'b0,1'b0,1'b0,WEA}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper__parameterized7
   (D,
    s_axi_aclk,
    WEA,
    ram_rd_en_i,
    \gcc0.gc0.count_d1_reg[11] ,
    \gc0.count_d1_reg[11] ,
    axi_str_rxd_tdata);
  output [8:0]D;
  input s_axi_aclk;
  input [0:0]WEA;
  input ram_rd_en_i;
  input [11:0]\gcc0.gc0.count_d1_reg[11] ;
  input [11:0]\gc0.count_d1_reg[11] ;
  input [8:0]axi_str_rxd_tdata;

  wire [8:0]D;
  wire [0:0]WEA;
  wire [8:0]axi_str_rxd_tdata;
  wire [11:0]\gc0.count_d1_reg[11] ;
  wire [11:0]\gcc0.gc0.count_d1_reg[11] ;
  wire ram_rd_en_i;
  wire s_axi_aclk;
  wire \NLW_DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASOUTDBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASOUTSBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASDOUTA_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASDOUTB_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASDOUTPA_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASDOUTPB_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOUTADOUT_UNCONNECTED ;
  wire [31:8]\NLW_DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOUTBDOUT_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOUTPADOUTP_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOUTPBDOUTP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E2 #(
    .CASCADE_ORDER_A("NONE"),
    .CASCADE_ORDER_B("NONE"),
    .CLOCK_DOMAINS("COMMON"),
    .DOA_REG(0),
    .DOB_REG(0),
    .ENADDRENA("FALSE"),
    .ENADDRENB("FALSE"),
    .EN_ECC_PIPE("FALSE"),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_40(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_41(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_42(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_43(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_44(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_45(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_46(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_47(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_48(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_49(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_50(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_51(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_52(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_53(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_54(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_55(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_56(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_57(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_58(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_59(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RDADDRCHANGEA("FALSE"),
    .RDADDRCHANGEB("FALSE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SLEEP_ASYNC("FALSE"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    \DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({\gcc0.gc0.count_d1_reg[11] ,1'b0,1'b0,1'b0}),
        .ADDRBWRADDR({\gc0.count_d1_reg[11] ,1'b0,1'b0,1'b0}),
        .ADDRENA(1'b0),
        .ADDRENB(1'b0),
        .CASDIMUXA(1'b0),
        .CASDIMUXB(1'b0),
        .CASDINA({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASDINB({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASDINPA({1'b0,1'b0,1'b0,1'b0}),
        .CASDINPB({1'b0,1'b0,1'b0,1'b0}),
        .CASDOMUXA(1'b0),
        .CASDOMUXB(1'b0),
        .CASDOMUXEN_A(1'b0),
        .CASDOMUXEN_B(1'b0),
        .CASDOUTA(\NLW_DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASDOUTA_UNCONNECTED [31:0]),
        .CASDOUTB(\NLW_DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASDOUTB_UNCONNECTED [31:0]),
        .CASDOUTPA(\NLW_DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASDOUTPA_UNCONNECTED [3:0]),
        .CASDOUTPB(\NLW_DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASDOUTPB_UNCONNECTED [3:0]),
        .CASINDBITERR(1'b0),
        .CASINSBITERR(1'b0),
        .CASOREGIMUXA(1'b0),
        .CASOREGIMUXB(1'b0),
        .CASOREGIMUXEN_A(1'b0),
        .CASOREGIMUXEN_B(1'b0),
        .CASOUTDBITERR(\NLW_DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASOUTDBITERR_UNCONNECTED ),
        .CASOUTSBITERR(\NLW_DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASOUTSBITERR_UNCONNECTED ),
        .CLKARDCLK(s_axi_aclk),
        .CLKBWRCLK(s_axi_aclk),
        .DBITERR(\NLW_DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DINADIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,axi_str_rxd_tdata[7:0]}),
        .DINBDIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DINPADINP({1'b0,1'b0,1'b0,axi_str_rxd_tdata[8]}),
        .DINPBDINP({1'b0,1'b0,1'b0,1'b0}),
        .DOUTADOUT(\NLW_DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOUTADOUT_UNCONNECTED [31:0]),
        .DOUTBDOUT({\NLW_DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOUTBDOUT_UNCONNECTED [31:8],D[7:0]}),
        .DOUTPADOUTP(\NLW_DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOUTPADOUTP_UNCONNECTED [3:0]),
        .DOUTPBDOUTP({\NLW_DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOUTPBDOUTP_UNCONNECTED [3:1],D[8]}),
        .ECCPARITY(\NLW_DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ECCPIPECE(1'b0),
        .ENARDEN(WEA),
        .ENBWREN(ram_rd_en_i),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .SLEEP(1'b0),
        .WEA({1'b0,1'b0,1'b0,WEA}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper__parameterized8
   (D,
    s_axi_aclk,
    WEA,
    ram_rd_en_i,
    \gcc0.gc0.count_d1_reg[11] ,
    \gc0.count_d1_reg[11] ,
    axi_str_rxd_tdata);
  output [8:0]D;
  input s_axi_aclk;
  input [0:0]WEA;
  input ram_rd_en_i;
  input [11:0]\gcc0.gc0.count_d1_reg[11] ;
  input [11:0]\gc0.count_d1_reg[11] ;
  input [8:0]axi_str_rxd_tdata;

  wire [8:0]D;
  wire [0:0]WEA;
  wire [8:0]axi_str_rxd_tdata;
  wire [11:0]\gc0.count_d1_reg[11] ;
  wire [11:0]\gcc0.gc0.count_d1_reg[11] ;
  wire ram_rd_en_i;
  wire s_axi_aclk;
  wire \NLW_DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASOUTDBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASOUTSBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASDOUTA_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASDOUTB_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASDOUTPA_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASDOUTPB_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOUTADOUT_UNCONNECTED ;
  wire [31:8]\NLW_DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOUTBDOUT_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOUTPADOUTP_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOUTPBDOUTP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E2 #(
    .CASCADE_ORDER_A("NONE"),
    .CASCADE_ORDER_B("NONE"),
    .CLOCK_DOMAINS("COMMON"),
    .DOA_REG(0),
    .DOB_REG(0),
    .ENADDRENA("FALSE"),
    .ENADDRENB("FALSE"),
    .EN_ECC_PIPE("FALSE"),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_40(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_41(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_42(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_43(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_44(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_45(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_46(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_47(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_48(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_49(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_50(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_51(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_52(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_53(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_54(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_55(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_56(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_57(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_58(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_59(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RDADDRCHANGEA("FALSE"),
    .RDADDRCHANGEB("FALSE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SLEEP_ASYNC("FALSE"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    \DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({\gcc0.gc0.count_d1_reg[11] ,1'b0,1'b0,1'b0}),
        .ADDRBWRADDR({\gc0.count_d1_reg[11] ,1'b0,1'b0,1'b0}),
        .ADDRENA(1'b0),
        .ADDRENB(1'b0),
        .CASDIMUXA(1'b0),
        .CASDIMUXB(1'b0),
        .CASDINA({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASDINB({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASDINPA({1'b0,1'b0,1'b0,1'b0}),
        .CASDINPB({1'b0,1'b0,1'b0,1'b0}),
        .CASDOMUXA(1'b0),
        .CASDOMUXB(1'b0),
        .CASDOMUXEN_A(1'b0),
        .CASDOMUXEN_B(1'b0),
        .CASDOUTA(\NLW_DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASDOUTA_UNCONNECTED [31:0]),
        .CASDOUTB(\NLW_DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASDOUTB_UNCONNECTED [31:0]),
        .CASDOUTPA(\NLW_DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASDOUTPA_UNCONNECTED [3:0]),
        .CASDOUTPB(\NLW_DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASDOUTPB_UNCONNECTED [3:0]),
        .CASINDBITERR(1'b0),
        .CASINSBITERR(1'b0),
        .CASOREGIMUXA(1'b0),
        .CASOREGIMUXB(1'b0),
        .CASOREGIMUXEN_A(1'b0),
        .CASOREGIMUXEN_B(1'b0),
        .CASOUTDBITERR(\NLW_DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASOUTDBITERR_UNCONNECTED ),
        .CASOUTSBITERR(\NLW_DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASOUTSBITERR_UNCONNECTED ),
        .CLKARDCLK(s_axi_aclk),
        .CLKBWRCLK(s_axi_aclk),
        .DBITERR(\NLW_DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DINADIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,axi_str_rxd_tdata[7:0]}),
        .DINBDIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DINPADINP({1'b0,1'b0,1'b0,axi_str_rxd_tdata[8]}),
        .DINPBDINP({1'b0,1'b0,1'b0,1'b0}),
        .DOUTADOUT(\NLW_DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOUTADOUT_UNCONNECTED [31:0]),
        .DOUTBDOUT({\NLW_DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOUTBDOUT_UNCONNECTED [31:8],D[7:0]}),
        .DOUTPADOUTP(\NLW_DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOUTPADOUTP_UNCONNECTED [3:0]),
        .DOUTPBDOUTP({\NLW_DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOUTPBDOUTP_UNCONNECTED [3:1],D[8]}),
        .ECCPARITY(\NLW_DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ECCPIPECE(1'b0),
        .ENARDEN(WEA),
        .ENBWREN(ram_rd_en_i),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .SLEEP(1'b0),
        .WEA({1'b0,1'b0,1'b0,WEA}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper__parameterized9
   (D,
    s_axi_aclk,
    WEA,
    ram_rd_en_i,
    \gcc0.gc0.count_d1_reg[11] ,
    \gc0.count_d1_reg[11] ,
    axi_str_rxd_tdata);
  output [8:0]D;
  input s_axi_aclk;
  input [0:0]WEA;
  input ram_rd_en_i;
  input [11:0]\gcc0.gc0.count_d1_reg[11] ;
  input [11:0]\gc0.count_d1_reg[11] ;
  input [8:0]axi_str_rxd_tdata;

  wire [8:0]D;
  wire [0:0]WEA;
  wire [8:0]axi_str_rxd_tdata;
  wire [11:0]\gc0.count_d1_reg[11] ;
  wire [11:0]\gcc0.gc0.count_d1_reg[11] ;
  wire ram_rd_en_i;
  wire s_axi_aclk;
  wire \NLW_DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASOUTDBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASOUTSBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASDOUTA_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASDOUTB_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASDOUTPA_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASDOUTPB_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOUTADOUT_UNCONNECTED ;
  wire [31:8]\NLW_DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOUTBDOUT_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOUTPADOUTP_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOUTPBDOUTP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E2 #(
    .CASCADE_ORDER_A("NONE"),
    .CASCADE_ORDER_B("NONE"),
    .CLOCK_DOMAINS("COMMON"),
    .DOA_REG(0),
    .DOB_REG(0),
    .ENADDRENA("FALSE"),
    .ENADDRENB("FALSE"),
    .EN_ECC_PIPE("FALSE"),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_40(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_41(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_42(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_43(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_44(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_45(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_46(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_47(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_48(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_49(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_50(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_51(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_52(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_53(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_54(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_55(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_56(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_57(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_58(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_59(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RDADDRCHANGEA("FALSE"),
    .RDADDRCHANGEB("FALSE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SLEEP_ASYNC("FALSE"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    \DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({\gcc0.gc0.count_d1_reg[11] ,1'b0,1'b0,1'b0}),
        .ADDRBWRADDR({\gc0.count_d1_reg[11] ,1'b0,1'b0,1'b0}),
        .ADDRENA(1'b0),
        .ADDRENB(1'b0),
        .CASDIMUXA(1'b0),
        .CASDIMUXB(1'b0),
        .CASDINA({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASDINB({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASDINPA({1'b0,1'b0,1'b0,1'b0}),
        .CASDINPB({1'b0,1'b0,1'b0,1'b0}),
        .CASDOMUXA(1'b0),
        .CASDOMUXB(1'b0),
        .CASDOMUXEN_A(1'b0),
        .CASDOMUXEN_B(1'b0),
        .CASDOUTA(\NLW_DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASDOUTA_UNCONNECTED [31:0]),
        .CASDOUTB(\NLW_DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASDOUTB_UNCONNECTED [31:0]),
        .CASDOUTPA(\NLW_DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASDOUTPA_UNCONNECTED [3:0]),
        .CASDOUTPB(\NLW_DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASDOUTPB_UNCONNECTED [3:0]),
        .CASINDBITERR(1'b0),
        .CASINSBITERR(1'b0),
        .CASOREGIMUXA(1'b0),
        .CASOREGIMUXB(1'b0),
        .CASOREGIMUXEN_A(1'b0),
        .CASOREGIMUXEN_B(1'b0),
        .CASOUTDBITERR(\NLW_DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASOUTDBITERR_UNCONNECTED ),
        .CASOUTSBITERR(\NLW_DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASOUTSBITERR_UNCONNECTED ),
        .CLKARDCLK(s_axi_aclk),
        .CLKBWRCLK(s_axi_aclk),
        .DBITERR(\NLW_DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DINADIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,axi_str_rxd_tdata[7:0]}),
        .DINBDIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DINPADINP({1'b0,1'b0,1'b0,axi_str_rxd_tdata[8]}),
        .DINPBDINP({1'b0,1'b0,1'b0,1'b0}),
        .DOUTADOUT(\NLW_DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOUTADOUT_UNCONNECTED [31:0]),
        .DOUTBDOUT({\NLW_DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOUTBDOUT_UNCONNECTED [31:8],D[7:0]}),
        .DOUTPADOUTP(\NLW_DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOUTPADOUTP_UNCONNECTED [3:0]),
        .DOUTPBDOUTP({\NLW_DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOUTPBDOUTP_UNCONNECTED [3:1],D[8]}),
        .ECCPARITY(\NLW_DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ECCPIPECE(1'b0),
        .ENARDEN(WEA),
        .ENBWREN(ram_rd_en_i),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .SLEEP(1'b0),
        .WEA({1'b0,1'b0,1'b0,WEA}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_top
   (D,
    s_axi_aclk,
    WEA,
    ram_rd_en_i,
    \gcc0.gc0.count_d1_reg[11] ,
    \gc0.count_d1_reg[11] ,
    axi_str_rxd_tdata);
  output [127:0]D;
  input s_axi_aclk;
  input [0:0]WEA;
  input ram_rd_en_i;
  input [11:0]\gcc0.gc0.count_d1_reg[11] ;
  input [11:0]\gc0.count_d1_reg[11] ;
  input [127:0]axi_str_rxd_tdata;

  wire [127:0]D;
  wire [0:0]WEA;
  wire [127:0]axi_str_rxd_tdata;
  wire [11:0]\gc0.count_d1_reg[11] ;
  wire [11:0]\gcc0.gc0.count_d1_reg[11] ;
  wire ram_rd_en_i;
  wire s_axi_aclk;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_generic_cstr \valid.cstr 
       (.D(D),
        .WEA(WEA),
        .axi_str_rxd_tdata(axi_str_rxd_tdata),
        .\gc0.count_d1_reg[11] (\gc0.count_d1_reg[11] ),
        .\gcc0.gc0.count_d1_reg[11] (\gcc0.gc0.count_d1_reg[11] ),
        .ram_rd_en_i(ram_rd_en_i),
        .s_axi_aclk(s_axi_aclk));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_3_4
   (D,
    s_axi_aclk,
    WEA,
    ram_rd_en_i,
    \gcc0.gc0.count_d1_reg[11] ,
    \gc0.count_d1_reg[11] ,
    axi_str_rxd_tdata);
  output [127:0]D;
  input s_axi_aclk;
  input [0:0]WEA;
  input ram_rd_en_i;
  input [11:0]\gcc0.gc0.count_d1_reg[11] ;
  input [11:0]\gc0.count_d1_reg[11] ;
  input [127:0]axi_str_rxd_tdata;

  wire [127:0]D;
  wire [0:0]WEA;
  wire [127:0]axi_str_rxd_tdata;
  wire [11:0]\gc0.count_d1_reg[11] ;
  wire [11:0]\gcc0.gc0.count_d1_reg[11] ;
  wire ram_rd_en_i;
  wire s_axi_aclk;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_3_4_synth inst_blk_mem_gen
       (.D(D),
        .WEA(WEA),
        .axi_str_rxd_tdata(axi_str_rxd_tdata),
        .\gc0.count_d1_reg[11] (\gc0.count_d1_reg[11] ),
        .\gcc0.gc0.count_d1_reg[11] (\gcc0.gc0.count_d1_reg[11] ),
        .ram_rd_en_i(ram_rd_en_i),
        .s_axi_aclk(s_axi_aclk));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_3_4_synth
   (D,
    s_axi_aclk,
    WEA,
    ram_rd_en_i,
    \gcc0.gc0.count_d1_reg[11] ,
    \gc0.count_d1_reg[11] ,
    axi_str_rxd_tdata);
  output [127:0]D;
  input s_axi_aclk;
  input [0:0]WEA;
  input ram_rd_en_i;
  input [11:0]\gcc0.gc0.count_d1_reg[11] ;
  input [11:0]\gc0.count_d1_reg[11] ;
  input [127:0]axi_str_rxd_tdata;

  wire [127:0]D;
  wire [0:0]WEA;
  wire [127:0]axi_str_rxd_tdata;
  wire [11:0]\gc0.count_d1_reg[11] ;
  wire [11:0]\gcc0.gc0.count_d1_reg[11] ;
  wire ram_rd_en_i;
  wire s_axi_aclk;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_top \gnbram.gnativebmg.native_blk_mem_gen 
       (.D(D),
        .WEA(WEA),
        .axi_str_rxd_tdata(axi_str_rxd_tdata),
        .\gc0.count_d1_reg[11] (\gc0.count_d1_reg[11] ),
        .\gcc0.gc0.count_d1_reg[11] (\gcc0.gc0.count_d1_reg[11] ),
        .ram_rd_en_i(ram_rd_en_i),
        .s_axi_aclk(s_axi_aclk));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_0_4
   (\grxd.fg_rxd_wr_length_reg[3] ,
    empty_fwft_i,
    prog_full_i,
    \grxd.sig_rxd_prog_empty_d1_reg ,
    SR,
    \sig_ip2bus_data_reg[24] ,
    Q,
    \sig_ip2bus_data_reg[23] ,
    \sig_ip2bus_data_reg[22] ,
    \sig_ip2bus_data_reg[21] ,
    \sig_ip2bus_data_reg[20] ,
    \sig_ip2bus_data_reg[19] ,
    D,
    \sig_ip2bus_data_reg[17] ,
    \sig_ip2bus_data_reg[12] ,
    \sig_ip2bus_data_reg[13] ,
    \sig_ip2bus_data_reg[1] ,
    rx_complete,
    E,
    \grid.ar_id_r_reg[0] ,
    \gc0.count_reg[0] ,
    \gc0.count_reg[0]_0 ,
    axi_str_rxd_tready,
    sig_rxd_pe_event16_out,
    \sig_register_array_reg[0][2] ,
    \grxd.rx_partial_pkt_reg ,
    s_axi4_rdata,
    s_axi_aclk,
    axi_str_rxd_tdata,
    axis_rd_en__0,
    axi_str_rxd_tvalid,
    axi4_fifo_rd_en_i,
    axi_str_rxd_tlast,
    rx_len_wr_en,
    s_axi_aresetn,
    Axi_Str_TxD_AReset,
    \GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9] ,
    out,
    \goreg_dm.dout_i_reg[18] ,
    \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3] ,
    sig_rx_channel_reset_reg,
    \sig_register_array_reg[1][1] ,
    \GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9]_0 ,
    \GEN_BKEND_CE_REGISTERS[6].ce_out_i_reg[6] ,
    \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0] ,
    sig_rx_channel_reset_reg_0,
    sig_Bus2IP_RdCE,
    \grxd.rx_partial_pkt_reg_0 ,
    s_axi4_araddr,
    \s_axi4_araddr[18] ,
    \s_axi4_araddr[22] ,
    sig_rxd_prog_empty_d1,
    sync_areset_n,
    sig_rd_rlen_reg,
    in0,
    \GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg[7] ,
    \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3]_0 );
  output \grxd.fg_rxd_wr_length_reg[3] ;
  output empty_fwft_i;
  output prog_full_i;
  output \grxd.sig_rxd_prog_empty_d1_reg ;
  output [0:0]SR;
  output \sig_ip2bus_data_reg[24] ;
  output [12:0]Q;
  output \sig_ip2bus_data_reg[23] ;
  output \sig_ip2bus_data_reg[22] ;
  output \sig_ip2bus_data_reg[21] ;
  output \sig_ip2bus_data_reg[20] ;
  output \sig_ip2bus_data_reg[19] ;
  output [7:0]D;
  output \sig_ip2bus_data_reg[17] ;
  output \sig_ip2bus_data_reg[12] ;
  output \sig_ip2bus_data_reg[13] ;
  output \sig_ip2bus_data_reg[1] ;
  output rx_complete;
  output [0:0]E;
  output \grid.ar_id_r_reg[0] ;
  output \gc0.count_reg[0] ;
  output \gc0.count_reg[0]_0 ;
  output axi_str_rxd_tready;
  output sig_rxd_pe_event16_out;
  output \sig_register_array_reg[0][2] ;
  output \grxd.rx_partial_pkt_reg ;
  output [127:0]s_axi4_rdata;
  input s_axi_aclk;
  input [127:0]axi_str_rxd_tdata;
  input axis_rd_en__0;
  input axi_str_rxd_tvalid;
  input axi4_fifo_rd_en_i;
  input axi_str_rxd_tlast;
  input rx_len_wr_en;
  input s_axi_aresetn;
  input Axi_Str_TxD_AReset;
  input \GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9] ;
  input out;
  input [3:0]\goreg_dm.dout_i_reg[18] ;
  input \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3] ;
  input sig_rx_channel_reset_reg;
  input [3:0]\sig_register_array_reg[1][1] ;
  input \GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9]_0 ;
  input \GEN_BKEND_CE_REGISTERS[6].ce_out_i_reg[6] ;
  input \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0] ;
  input sig_rx_channel_reset_reg_0;
  input [0:0]sig_Bus2IP_RdCE;
  input \grxd.rx_partial_pkt_reg_0 ;
  input [17:0]s_axi4_araddr;
  input \s_axi4_araddr[18] ;
  input \s_axi4_araddr[22] ;
  input sig_rxd_prog_empty_d1;
  input sync_areset_n;
  input sig_rd_rlen_reg;
  input in0;
  input \GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg[7] ;
  input \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3]_0 ;

  wire Axi_Str_TxD_AReset;
  wire [7:0]D;
  wire [0:0]E;
  wire \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0] ;
  wire \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3] ;
  wire \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3]_0 ;
  wire \GEN_BKEND_CE_REGISTERS[6].ce_out_i_reg[6] ;
  wire \GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg[7] ;
  wire \GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9] ;
  wire \GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9]_0 ;
  wire [12:0]Q;
  wire [0:0]SR;
  wire axi4_fifo_rd_en_i;
  wire [127:0]axi_str_rxd_tdata;
  wire axi_str_rxd_tlast;
  wire axi_str_rxd_tready;
  wire axi_str_rxd_tvalid;
  wire axis_rd_en__0;
  wire empty_fwft_i;
  wire \gc0.count_reg[0] ;
  wire \gc0.count_reg[0]_0 ;
  wire [3:0]\goreg_dm.dout_i_reg[18] ;
  wire \grid.ar_id_r_reg[0] ;
  wire \grxd.fg_rxd_wr_length_reg[3] ;
  wire \grxd.rx_partial_pkt_reg ;
  wire \grxd.rx_partial_pkt_reg_0 ;
  wire \grxd.sig_rxd_prog_empty_d1_reg ;
  wire in0;
  wire out;
  wire prog_full_i;
  wire rx_complete;
  wire rx_len_wr_en;
  wire [17:0]s_axi4_araddr;
  wire \s_axi4_araddr[18] ;
  wire \s_axi4_araddr[22] ;
  wire [127:0]s_axi4_rdata;
  wire s_axi_aclk;
  wire s_axi_aresetn;
  wire [0:0]sig_Bus2IP_RdCE;
  wire \sig_ip2bus_data_reg[12] ;
  wire \sig_ip2bus_data_reg[13] ;
  wire \sig_ip2bus_data_reg[17] ;
  wire \sig_ip2bus_data_reg[19] ;
  wire \sig_ip2bus_data_reg[1] ;
  wire \sig_ip2bus_data_reg[20] ;
  wire \sig_ip2bus_data_reg[21] ;
  wire \sig_ip2bus_data_reg[22] ;
  wire \sig_ip2bus_data_reg[23] ;
  wire \sig_ip2bus_data_reg[24] ;
  wire sig_rd_rlen_reg;
  wire \sig_register_array_reg[0][2] ;
  wire [3:0]\sig_register_array_reg[1][1] ;
  wire sig_rx_channel_reset_reg;
  wire sig_rx_channel_reset_reg_0;
  wire sig_rxd_pe_event16_out;
  wire sig_rxd_prog_empty_d1;
  wire sync_areset_n;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_0_4_synth inst_fifo_gen
       (.Axi_Str_TxD_AReset(Axi_Str_TxD_AReset),
        .D(D),
        .E(E),
        .\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0] (\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0] ),
        .\GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3] (\GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3] ),
        .\GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3]_0 (\GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3]_0 ),
        .\GEN_BKEND_CE_REGISTERS[6].ce_out_i_reg[6] (\GEN_BKEND_CE_REGISTERS[6].ce_out_i_reg[6] ),
        .\GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg[7] (\GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg[7] ),
        .\GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9] (\GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9] ),
        .\GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9]_0 (\GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9]_0 ),
        .Q(Q),
        .SR(SR),
        .axi4_fifo_rd_en_i(axi4_fifo_rd_en_i),
        .axi_str_rxd_tdata(axi_str_rxd_tdata),
        .axi_str_rxd_tlast(axi_str_rxd_tlast),
        .axi_str_rxd_tready(axi_str_rxd_tready),
        .axi_str_rxd_tvalid(axi_str_rxd_tvalid),
        .axis_rd_en__0(axis_rd_en__0),
        .empty_fwft_i(empty_fwft_i),
        .\gc0.count_reg[0] (\gc0.count_reg[0] ),
        .\gc0.count_reg[0]_0 (\gc0.count_reg[0]_0 ),
        .\goreg_dm.dout_i_reg[18] (\goreg_dm.dout_i_reg[18] ),
        .\grid.ar_id_r_reg[0] (\grid.ar_id_r_reg[0] ),
        .\grxd.fg_rxd_wr_length_reg[3] (\grxd.fg_rxd_wr_length_reg[3] ),
        .\grxd.rx_partial_pkt_reg (\grxd.rx_partial_pkt_reg ),
        .\grxd.rx_partial_pkt_reg_0 (\grxd.rx_partial_pkt_reg_0 ),
        .\grxd.sig_rxd_prog_empty_d1_reg (\grxd.sig_rxd_prog_empty_d1_reg ),
        .in0(in0),
        .out(out),
        .prog_full_i(prog_full_i),
        .rx_complete(rx_complete),
        .rx_len_wr_en(rx_len_wr_en),
        .s_axi4_araddr(s_axi4_araddr),
        .\s_axi4_araddr[18] (\s_axi4_araddr[18] ),
        .\s_axi4_araddr[22] (\s_axi4_araddr[22] ),
        .s_axi4_rdata(s_axi4_rdata),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_aresetn(s_axi_aresetn),
        .sig_Bus2IP_RdCE(sig_Bus2IP_RdCE),
        .\sig_ip2bus_data_reg[12] (\sig_ip2bus_data_reg[12] ),
        .\sig_ip2bus_data_reg[13] (\sig_ip2bus_data_reg[13] ),
        .\sig_ip2bus_data_reg[17] (\sig_ip2bus_data_reg[17] ),
        .\sig_ip2bus_data_reg[19] (\sig_ip2bus_data_reg[19] ),
        .\sig_ip2bus_data_reg[1] (\sig_ip2bus_data_reg[1] ),
        .\sig_ip2bus_data_reg[20] (\sig_ip2bus_data_reg[20] ),
        .\sig_ip2bus_data_reg[21] (\sig_ip2bus_data_reg[21] ),
        .\sig_ip2bus_data_reg[22] (\sig_ip2bus_data_reg[22] ),
        .\sig_ip2bus_data_reg[23] (\sig_ip2bus_data_reg[23] ),
        .\sig_ip2bus_data_reg[24] (\sig_ip2bus_data_reg[24] ),
        .sig_rd_rlen_reg(sig_rd_rlen_reg),
        .\sig_register_array_reg[0][2] (\sig_register_array_reg[0][2] ),
        .\sig_register_array_reg[1][1] (\sig_register_array_reg[1][1] ),
        .sig_rx_channel_reset_reg(sig_rx_channel_reset_reg),
        .sig_rx_channel_reset_reg_0(sig_rx_channel_reset_reg_0),
        .sig_rxd_pe_event16_out(sig_rxd_pe_event16_out),
        .sig_rxd_prog_empty_d1(sig_rxd_prog_empty_d1),
        .sync_areset_n(sync_areset_n));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_0_4_compare
   (ram_full_comb,
    \gc0.count_d1_reg[8] ,
    v1_reg,
    p_2_out,
    \grstd1.grst_full.grst_f.rst_d5_reg ,
    p_6_out,
    E,
    comp1);
  output ram_full_comb;
  input [4:0]\gc0.count_d1_reg[8] ;
  input [0:0]v1_reg;
  input p_2_out;
  input \grstd1.grst_full.grst_f.rst_d5_reg ;
  input p_6_out;
  input [0:0]E;
  input comp1;

  wire [0:0]E;
  wire carrynet_0;
  wire carrynet_1;
  wire carrynet_2;
  wire carrynet_4;
  wire comp0;
  wire comp1;
  wire [4:0]\gc0.count_d1_reg[8] ;
  wire \grstd1.grst_full.grst_f.rst_d5_reg ;
  wire p_2_out;
  wire p_6_out;
  wire ram_full_comb;
  wire [0:0]v1_reg;
  wire [7:3]\NLW_gmux.gm[0].gm1.m1_CARRY4_CARRY8_CO_UNCONNECTED ;
  wire [7:6]\NLW_gmux.gm[0].gm1.m1_CARRY4_CARRY8_DI_UNCONNECTED ;
  wire [7:0]\NLW_gmux.gm[0].gm1.m1_CARRY4_CARRY8_O_UNCONNECTED ;
  wire [7:6]\NLW_gmux.gm[0].gm1.m1_CARRY4_CARRY8_S_UNCONNECTED ;

  (* XILINX_LEGACY_PRIM = "(CARRY4)" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY8 \gmux.gm[0].gm1.m1_CARRY4_CARRY8 
       (.CI(1'b1),
        .CI_TOP(1'b0),
        .CO({\NLW_gmux.gm[0].gm1.m1_CARRY4_CARRY8_CO_UNCONNECTED [7:6],comp0,carrynet_4,\NLW_gmux.gm[0].gm1.m1_CARRY4_CARRY8_CO_UNCONNECTED [3],carrynet_2,carrynet_1,carrynet_0}),
        .DI({\NLW_gmux.gm[0].gm1.m1_CARRY4_CARRY8_DI_UNCONNECTED [7:6],1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_gmux.gm[0].gm1.m1_CARRY4_CARRY8_O_UNCONNECTED [7:0]),
        .S({\NLW_gmux.gm[0].gm1.m1_CARRY4_CARRY8_S_UNCONNECTED [7:6],v1_reg,\gc0.count_d1_reg[8] }));
  LUT6 #(
    .INIT(64'h04FF040C040C040C)) 
    ram_full_fb_i_i_1
       (.I0(comp0),
        .I1(p_2_out),
        .I2(\grstd1.grst_full.grst_f.rst_d5_reg ),
        .I3(p_6_out),
        .I4(E),
        .I5(comp1),
        .O(ram_full_comb));
endmodule

(* ORIG_REF_NAME = "fifo_generator_v13_0_4_compare" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_0_4_compare_3
   (comp1,
    \gc0.count_d1_reg[8] ,
    v1_reg_0);
  output comp1;
  input [4:0]\gc0.count_d1_reg[8] ;
  input [0:0]v1_reg_0;

  wire carrynet_0;
  wire carrynet_1;
  wire carrynet_2;
  wire carrynet_4;
  wire comp1;
  wire [4:0]\gc0.count_d1_reg[8] ;
  wire [0:0]v1_reg_0;
  wire [7:3]\NLW_gmux.gm[0].gm1.m1_CARRY4_CARRY8_CO_UNCONNECTED ;
  wire [7:6]\NLW_gmux.gm[0].gm1.m1_CARRY4_CARRY8_DI_UNCONNECTED ;
  wire [7:0]\NLW_gmux.gm[0].gm1.m1_CARRY4_CARRY8_O_UNCONNECTED ;
  wire [7:6]\NLW_gmux.gm[0].gm1.m1_CARRY4_CARRY8_S_UNCONNECTED ;

  (* XILINX_LEGACY_PRIM = "(CARRY4)" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY8 \gmux.gm[0].gm1.m1_CARRY4_CARRY8 
       (.CI(1'b1),
        .CI_TOP(1'b0),
        .CO({\NLW_gmux.gm[0].gm1.m1_CARRY4_CARRY8_CO_UNCONNECTED [7:6],comp1,carrynet_4,\NLW_gmux.gm[0].gm1.m1_CARRY4_CARRY8_CO_UNCONNECTED [3],carrynet_2,carrynet_1,carrynet_0}),
        .DI({\NLW_gmux.gm[0].gm1.m1_CARRY4_CARRY8_DI_UNCONNECTED [7:6],1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_gmux.gm[0].gm1.m1_CARRY4_CARRY8_O_UNCONNECTED [7:0]),
        .S({\NLW_gmux.gm[0].gm1.m1_CARRY4_CARRY8_S_UNCONNECTED [7:6],v1_reg_0,\gc0.count_d1_reg[8] }));
endmodule

(* ORIG_REF_NAME = "fifo_generator_v13_0_4_compare" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_0_4_compare_4
   (ram_empty_fb_i_reg,
    \gc0.count_d1_reg[0] ,
    \gc0.count_d1_reg[2] ,
    \gc0.count_d1_reg[4] ,
    \gc0.count_d1_reg[6] ,
    \gc0.count_d1_reg[8] ,
    \gcc0.gc0.count_d1_reg[11] ,
    p_2_out,
    E,
    comp1,
    p_16_out);
  output ram_empty_fb_i_reg;
  input \gc0.count_d1_reg[0] ;
  input \gc0.count_d1_reg[2] ;
  input \gc0.count_d1_reg[4] ;
  input \gc0.count_d1_reg[6] ;
  input \gc0.count_d1_reg[8] ;
  input \gcc0.gc0.count_d1_reg[11] ;
  input p_2_out;
  input [0:0]E;
  input comp1;
  input p_16_out;

  wire [0:0]E;
  wire carrynet_0;
  wire carrynet_1;
  wire carrynet_2;
  wire carrynet_4;
  wire comp0;
  wire comp1;
  wire \gc0.count_d1_reg[0] ;
  wire \gc0.count_d1_reg[2] ;
  wire \gc0.count_d1_reg[4] ;
  wire \gc0.count_d1_reg[6] ;
  wire \gc0.count_d1_reg[8] ;
  wire \gcc0.gc0.count_d1_reg[11] ;
  wire p_16_out;
  wire p_2_out;
  wire ram_empty_fb_i_reg;
  wire [7:3]\NLW_gmux.gm[0].gm1.m1_CARRY4_CARRY8_CO_UNCONNECTED ;
  wire [7:6]\NLW_gmux.gm[0].gm1.m1_CARRY4_CARRY8_DI_UNCONNECTED ;
  wire [7:0]\NLW_gmux.gm[0].gm1.m1_CARRY4_CARRY8_O_UNCONNECTED ;
  wire [7:6]\NLW_gmux.gm[0].gm1.m1_CARRY4_CARRY8_S_UNCONNECTED ;

  (* XILINX_LEGACY_PRIM = "(CARRY4)" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY8 \gmux.gm[0].gm1.m1_CARRY4_CARRY8 
       (.CI(1'b1),
        .CI_TOP(1'b0),
        .CO({\NLW_gmux.gm[0].gm1.m1_CARRY4_CARRY8_CO_UNCONNECTED [7:6],comp0,carrynet_4,\NLW_gmux.gm[0].gm1.m1_CARRY4_CARRY8_CO_UNCONNECTED [3],carrynet_2,carrynet_1,carrynet_0}),
        .DI({\NLW_gmux.gm[0].gm1.m1_CARRY4_CARRY8_DI_UNCONNECTED [7:6],1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_gmux.gm[0].gm1.m1_CARRY4_CARRY8_O_UNCONNECTED [7:0]),
        .S({\NLW_gmux.gm[0].gm1.m1_CARRY4_CARRY8_S_UNCONNECTED [7:6],\gcc0.gc0.count_d1_reg[11] ,\gc0.count_d1_reg[8] ,\gc0.count_d1_reg[6] ,\gc0.count_d1_reg[4] ,\gc0.count_d1_reg[2] ,\gc0.count_d1_reg[0] }));
  LUT5 #(
    .INIT(32'h2222FAAA)) 
    ram_empty_fb_i_i_1
       (.I0(p_2_out),
        .I1(comp0),
        .I2(E),
        .I3(comp1),
        .I4(p_16_out),
        .O(ram_empty_fb_i_reg));
endmodule

(* ORIG_REF_NAME = "fifo_generator_v13_0_4_compare" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_0_4_compare_5
   (comp1,
    v1_reg);
  output comp1;
  input [5:0]v1_reg;

  wire carrynet_0;
  wire carrynet_1;
  wire carrynet_2;
  wire carrynet_4;
  wire comp1;
  wire [5:0]v1_reg;
  wire [7:3]\NLW_gmux.gm[0].gm1.m1_CARRY4_CARRY8_CO_UNCONNECTED ;
  wire [7:6]\NLW_gmux.gm[0].gm1.m1_CARRY4_CARRY8_DI_UNCONNECTED ;
  wire [7:0]\NLW_gmux.gm[0].gm1.m1_CARRY4_CARRY8_O_UNCONNECTED ;
  wire [7:6]\NLW_gmux.gm[0].gm1.m1_CARRY4_CARRY8_S_UNCONNECTED ;

  (* XILINX_LEGACY_PRIM = "(CARRY4)" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY8 \gmux.gm[0].gm1.m1_CARRY4_CARRY8 
       (.CI(1'b1),
        .CI_TOP(1'b0),
        .CO({\NLW_gmux.gm[0].gm1.m1_CARRY4_CARRY8_CO_UNCONNECTED [7:6],comp1,carrynet_4,\NLW_gmux.gm[0].gm1.m1_CARRY4_CARRY8_CO_UNCONNECTED [3],carrynet_2,carrynet_1,carrynet_0}),
        .DI({\NLW_gmux.gm[0].gm1.m1_CARRY4_CARRY8_DI_UNCONNECTED [7:6],1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_gmux.gm[0].gm1.m1_CARRY4_CARRY8_O_UNCONNECTED [7:0]),
        .S({\NLW_gmux.gm[0].gm1.m1_CARRY4_CARRY8_S_UNCONNECTED [7:6],v1_reg}));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_0_4_dc_ss_fwft
   (\sig_ip2bus_data_reg[24] ,
    Q,
    \sig_ip2bus_data_reg[23] ,
    \sig_ip2bus_data_reg[22] ,
    \sig_ip2bus_data_reg[21] ,
    \sig_ip2bus_data_reg[20] ,
    \sig_ip2bus_data_reg[19] ,
    D,
    \sig_ip2bus_data_reg[17] ,
    \sig_ip2bus_data_reg[12] ,
    \sig_ip2bus_data_reg[13] ,
    \sig_ip2bus_data_reg[1] ,
    \sig_register_array_reg[0][2] ,
    \GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9] ,
    out,
    sig_ip2bus_data1__0,
    \goreg_dm.dout_i_reg[18] ,
    \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3] ,
    sig_rx_channel_reset_reg,
    \sig_register_array_reg[1][1] ,
    \GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9]_0 ,
    \GEN_BKEND_CE_REGISTERS[6].ce_out_i_reg[6] ,
    \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0] ,
    sig_rx_channel_reset_reg_0,
    sig_Bus2IP_RdCE,
    valid_fwft,
    axis_rd_en__0,
    \GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg[7] ,
    \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3]_0 ,
    \gpregsm1.user_valid_reg ,
    s_axi_aclk,
    \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[2] );
  output \sig_ip2bus_data_reg[24] ;
  output [12:0]Q;
  output \sig_ip2bus_data_reg[23] ;
  output \sig_ip2bus_data_reg[22] ;
  output \sig_ip2bus_data_reg[21] ;
  output \sig_ip2bus_data_reg[20] ;
  output \sig_ip2bus_data_reg[19] ;
  output [7:0]D;
  output \sig_ip2bus_data_reg[17] ;
  output \sig_ip2bus_data_reg[12] ;
  output \sig_ip2bus_data_reg[13] ;
  output \sig_ip2bus_data_reg[1] ;
  output \sig_register_array_reg[0][2] ;
  input \GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9] ;
  input out;
  input sig_ip2bus_data1__0;
  input [3:0]\goreg_dm.dout_i_reg[18] ;
  input \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3] ;
  input sig_rx_channel_reset_reg;
  input [3:0]\sig_register_array_reg[1][1] ;
  input \GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9]_0 ;
  input \GEN_BKEND_CE_REGISTERS[6].ce_out_i_reg[6] ;
  input \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0] ;
  input sig_rx_channel_reset_reg_0;
  input [0:0]sig_Bus2IP_RdCE;
  input valid_fwft;
  input axis_rd_en__0;
  input \GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg[7] ;
  input \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3]_0 ;
  input [0:0]\gpregsm1.user_valid_reg ;
  input s_axi_aclk;
  input [0:0]\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[2] ;

  wire [7:0]D;
  wire \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0] ;
  wire \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3] ;
  wire \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3]_0 ;
  wire \GEN_BKEND_CE_REGISTERS[6].ce_out_i_reg[6] ;
  wire \GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg[7] ;
  wire \GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9] ;
  wire \GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9]_0 ;
  wire [12:0]Q;
  wire axis_rd_en__0;
  wire [3:0]\goreg_dm.dout_i_reg[18] ;
  wire [0:0]\gpregsm1.user_valid_reg ;
  wire [0:0]\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[2] ;
  wire out;
  wire s_axi_aclk;
  wire [0:0]sig_Bus2IP_RdCE;
  wire sig_ip2bus_data1__0;
  wire \sig_ip2bus_data_reg[12] ;
  wire \sig_ip2bus_data_reg[13] ;
  wire \sig_ip2bus_data_reg[17] ;
  wire \sig_ip2bus_data_reg[19] ;
  wire \sig_ip2bus_data_reg[1] ;
  wire \sig_ip2bus_data_reg[20] ;
  wire \sig_ip2bus_data_reg[21] ;
  wire \sig_ip2bus_data_reg[22] ;
  wire \sig_ip2bus_data_reg[23] ;
  wire \sig_ip2bus_data_reg[24] ;
  wire \sig_register_array_reg[0][2] ;
  wire [3:0]\sig_register_array_reg[1][1] ;
  wire sig_rx_channel_reset_reg;
  wire sig_rx_channel_reset_reg_0;
  wire valid_fwft;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_0_4_updn_cntr dc
       (.D(D),
        .\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0] (\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0] ),
        .\GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3] (\GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3] ),
        .\GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3]_0 (\GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3]_0 ),
        .\GEN_BKEND_CE_REGISTERS[6].ce_out_i_reg[6] (\GEN_BKEND_CE_REGISTERS[6].ce_out_i_reg[6] ),
        .\GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg[7] (\GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg[7] ),
        .\GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9] (\GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9] ),
        .\GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9]_0 (\GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9]_0 ),
        .Q(Q),
        .axis_rd_en__0(axis_rd_en__0),
        .\goreg_dm.dout_i_reg[18] (\goreg_dm.dout_i_reg[18] ),
        .\gpregsm1.user_valid_reg (\gpregsm1.user_valid_reg ),
        .\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[2] (\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[2] ),
        .out(out),
        .s_axi_aclk(s_axi_aclk),
        .sig_Bus2IP_RdCE(sig_Bus2IP_RdCE),
        .sig_ip2bus_data1__0(sig_ip2bus_data1__0),
        .\sig_ip2bus_data_reg[12] (\sig_ip2bus_data_reg[12] ),
        .\sig_ip2bus_data_reg[13] (\sig_ip2bus_data_reg[13] ),
        .\sig_ip2bus_data_reg[17] (\sig_ip2bus_data_reg[17] ),
        .\sig_ip2bus_data_reg[19] (\sig_ip2bus_data_reg[19] ),
        .\sig_ip2bus_data_reg[1] (\sig_ip2bus_data_reg[1] ),
        .\sig_ip2bus_data_reg[20] (\sig_ip2bus_data_reg[20] ),
        .\sig_ip2bus_data_reg[21] (\sig_ip2bus_data_reg[21] ),
        .\sig_ip2bus_data_reg[22] (\sig_ip2bus_data_reg[22] ),
        .\sig_ip2bus_data_reg[23] (\sig_ip2bus_data_reg[23] ),
        .\sig_ip2bus_data_reg[24] (\sig_ip2bus_data_reg[24] ),
        .\sig_register_array_reg[0][2] (\sig_register_array_reg[0][2] ),
        .\sig_register_array_reg[1][1] (\sig_register_array_reg[1][1] ),
        .sig_rx_channel_reset_reg(sig_rx_channel_reset_reg),
        .sig_rx_channel_reset_reg_0(sig_rx_channel_reset_reg_0),
        .valid_fwft(valid_fwft));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_0_4_fifo_generator_ramfifo
   (\ngwrdrst.grst.g7serrst.rst_wr_reg1_reg ,
    \grxd.fg_rxd_wr_length_reg[3] ,
    empty_fwft_i,
    prog_full_i,
    \grxd.sig_rxd_prog_empty_d1_reg ,
    SR,
    \sig_ip2bus_data_reg[24] ,
    Q,
    \sig_ip2bus_data_reg[23] ,
    \sig_ip2bus_data_reg[22] ,
    \sig_ip2bus_data_reg[21] ,
    \sig_ip2bus_data_reg[20] ,
    \sig_ip2bus_data_reg[19] ,
    D,
    \sig_ip2bus_data_reg[17] ,
    \sig_ip2bus_data_reg[12] ,
    \sig_ip2bus_data_reg[13] ,
    \sig_ip2bus_data_reg[1] ,
    rx_complete,
    E,
    \grid.ar_id_r_reg[0] ,
    \gc0.count_reg[0] ,
    \gc0.count_reg[0]_0 ,
    axi_str_rxd_tready,
    sig_rxd_pe_event16_out,
    \sig_register_array_reg[0][2] ,
    \grxd.rx_partial_pkt_reg ,
    s_axi4_rdata,
    s_axi_aclk,
    axi_str_rxd_tdata,
    axis_rd_en__0,
    axi_str_rxd_tvalid,
    axi4_fifo_rd_en_i,
    axi_str_rxd_tlast,
    rx_len_wr_en,
    s_axi_aresetn,
    Axi_Str_TxD_AReset,
    \GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9] ,
    out,
    \goreg_dm.dout_i_reg[18] ,
    \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3] ,
    sig_rx_channel_reset_reg,
    \sig_register_array_reg[1][1] ,
    \GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9]_0 ,
    \GEN_BKEND_CE_REGISTERS[6].ce_out_i_reg[6] ,
    \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0] ,
    sig_rx_channel_reset_reg_0,
    sig_Bus2IP_RdCE,
    \grxd.rx_partial_pkt_reg_0 ,
    s_axi4_araddr,
    \s_axi4_araddr[18] ,
    \s_axi4_araddr[22] ,
    sig_rxd_prog_empty_d1,
    sync_areset_n,
    sig_rd_rlen_reg,
    in0,
    \GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg[7] ,
    \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3]_0 );
  output \ngwrdrst.grst.g7serrst.rst_wr_reg1_reg ;
  output \grxd.fg_rxd_wr_length_reg[3] ;
  output empty_fwft_i;
  output prog_full_i;
  output \grxd.sig_rxd_prog_empty_d1_reg ;
  output [0:0]SR;
  output \sig_ip2bus_data_reg[24] ;
  output [12:0]Q;
  output \sig_ip2bus_data_reg[23] ;
  output \sig_ip2bus_data_reg[22] ;
  output \sig_ip2bus_data_reg[21] ;
  output \sig_ip2bus_data_reg[20] ;
  output \sig_ip2bus_data_reg[19] ;
  output [7:0]D;
  output \sig_ip2bus_data_reg[17] ;
  output \sig_ip2bus_data_reg[12] ;
  output \sig_ip2bus_data_reg[13] ;
  output \sig_ip2bus_data_reg[1] ;
  output rx_complete;
  output [0:0]E;
  output \grid.ar_id_r_reg[0] ;
  output \gc0.count_reg[0] ;
  output \gc0.count_reg[0]_0 ;
  output axi_str_rxd_tready;
  output sig_rxd_pe_event16_out;
  output \sig_register_array_reg[0][2] ;
  output \grxd.rx_partial_pkt_reg ;
  output [127:0]s_axi4_rdata;
  input s_axi_aclk;
  input [127:0]axi_str_rxd_tdata;
  input axis_rd_en__0;
  input axi_str_rxd_tvalid;
  input axi4_fifo_rd_en_i;
  input axi_str_rxd_tlast;
  input rx_len_wr_en;
  input s_axi_aresetn;
  input Axi_Str_TxD_AReset;
  input \GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9] ;
  input out;
  input [3:0]\goreg_dm.dout_i_reg[18] ;
  input \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3] ;
  input sig_rx_channel_reset_reg;
  input [3:0]\sig_register_array_reg[1][1] ;
  input \GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9]_0 ;
  input \GEN_BKEND_CE_REGISTERS[6].ce_out_i_reg[6] ;
  input \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0] ;
  input sig_rx_channel_reset_reg_0;
  input [0:0]sig_Bus2IP_RdCE;
  input \grxd.rx_partial_pkt_reg_0 ;
  input [17:0]s_axi4_araddr;
  input \s_axi4_araddr[18] ;
  input \s_axi4_araddr[22] ;
  input sig_rxd_prog_empty_d1;
  input sync_areset_n;
  input sig_rd_rlen_reg;
  input in0;
  input \GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg[7] ;
  input \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3]_0 ;

  wire Axi_Str_TxD_AReset;
  wire [7:0]D;
  wire [0:0]E;
  wire \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0] ;
  wire \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3] ;
  wire \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3]_0 ;
  wire \GEN_BKEND_CE_REGISTERS[6].ce_out_i_reg[6] ;
  wire \GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg[7] ;
  wire \GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9] ;
  wire \GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9]_0 ;
  wire [12:0]Q;
  wire [0:0]SR;
  wire WR_RST;
  wire axi4_fifo_rd_en_i;
  wire [127:0]axi_str_rxd_tdata;
  wire axi_str_rxd_tlast;
  wire axi_str_rxd_tready;
  wire axi_str_rxd_tvalid;
  wire axis_rd_en__0;
  wire clear;
  wire dout_i;
  wire empty_fwft_i;
  wire \gc0.count_reg[0] ;
  wire \gc0.count_reg[0]_0 ;
  wire \gntv_or_sync_fifo.gl0.wr_n_32 ;
  wire \gntv_or_sync_fifo.gl0.wr_n_33 ;
  wire \gntv_or_sync_fifo.gl0.wr_n_34 ;
  wire \gntv_or_sync_fifo.gl0.wr_n_35 ;
  wire \gntv_or_sync_fifo.gl0.wr_n_36 ;
  wire \gntv_or_sync_fifo.gl0.wr_n_38 ;
  wire \gntv_or_sync_fifo.gl0.wr_n_39 ;
  wire \gntv_or_sync_fifo.gl0.wr_n_40 ;
  wire \gntv_or_sync_fifo.gl0.wr_n_41 ;
  wire \gntv_or_sync_fifo.gl0.wr_n_42 ;
  wire \gntv_or_sync_fifo.gl0.wr_n_43 ;
  wire \gntv_or_sync_fifo.gl0.wr_n_44 ;
  wire \gntv_or_sync_fifo.gl0.wr_n_45 ;
  wire [3:0]\goreg_dm.dout_i_reg[18] ;
  wire \gr1.gdcf.dc/cntr_en ;
  wire \grid.ar_id_r_reg[0] ;
  wire [0:0]\grss.gpe.rdpe/rd_pntr_inv_pad ;
  wire \grxd.fg_rxd_wr_length_reg[3] ;
  wire \grxd.rx_partial_pkt_reg ;
  wire \grxd.rx_partial_pkt_reg_0 ;
  wire \grxd.sig_rxd_prog_empty_d1_reg ;
  wire [4:0]\gwss.wsts/c0/v1_reg ;
  wire [4:0]\gwss.wsts/c1/v1_reg ;
  wire in0;
  wire \ngwrdrst.grst.g7serrst.rst_wr_reg1_reg ;
  wire out;
  wire [11:0]p_0_out;
  wire [11:0]p_10_out;
  wire [9:0]p_11_out;
  wire p_16_out;
  wire p_6_out;
  wire prog_full_i;
  wire ram_rd_en_i;
  wire rd_en_int_sync;
  wire rd_en_int_sync_1;
  wire [0:0]rd_rst_i;
  wire rst_full_ff_i;
  wire rst_full_gen_i;
  wire rst_int_sync;
  wire rst_int_sync_1;
  wire rx_complete;
  wire rx_len_wr_en;
  wire [17:0]s_axi4_araddr;
  wire \s_axi4_araddr[18] ;
  wire \s_axi4_araddr[22] ;
  wire [127:0]s_axi4_rdata;
  wire s_axi_aclk;
  wire s_axi_aresetn;
  wire [0:0]sig_Bus2IP_RdCE;
  wire sig_ip2bus_data1__0;
  wire \sig_ip2bus_data_reg[12] ;
  wire \sig_ip2bus_data_reg[13] ;
  wire \sig_ip2bus_data_reg[17] ;
  wire \sig_ip2bus_data_reg[19] ;
  wire \sig_ip2bus_data_reg[1] ;
  wire \sig_ip2bus_data_reg[20] ;
  wire \sig_ip2bus_data_reg[21] ;
  wire \sig_ip2bus_data_reg[22] ;
  wire \sig_ip2bus_data_reg[23] ;
  wire \sig_ip2bus_data_reg[24] ;
  wire sig_rd_rlen_reg;
  wire \sig_register_array_reg[0][2] ;
  wire [3:0]\sig_register_array_reg[1][1] ;
  wire sig_rx_channel_reset_reg;
  wire sig_rx_channel_reset_reg_0;
  wire sig_rxd_pe_event16_out;
  wire sig_rxd_prog_empty_d1;
  wire sync_areset_n;
  wire valid_fwft;
  wire wr_en_int_sync;
  wire wr_en_int_sync_1;
  wire wr_en_into_bram;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_0_4_rd_logic \gntv_or_sync_fifo.gl0.rd 
       (.D(D),
        .\DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram (p_0_out),
        .E(dout_i),
        .\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0] (\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0] ),
        .\GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3] (\GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3] ),
        .\GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3]_0 (\GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3]_0 ),
        .\GEN_BKEND_CE_REGISTERS[6].ce_out_i_reg[6] (\GEN_BKEND_CE_REGISTERS[6].ce_out_i_reg[6] ),
        .\GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg[7] (\GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg[7] ),
        .\GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9] (\GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9] ),
        .\GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9]_0 (\GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9]_0 ),
        .Q({clear,rd_rst_i}),
        .S({\gntv_or_sync_fifo.gl0.wr_n_38 ,\gntv_or_sync_fifo.gl0.wr_n_39 ,\gntv_or_sync_fifo.gl0.wr_n_40 ,\gntv_or_sync_fifo.gl0.wr_n_41 ,\gntv_or_sync_fifo.gl0.wr_n_42 ,\gntv_or_sync_fifo.gl0.wr_n_43 ,\gntv_or_sync_fifo.gl0.wr_n_44 ,\gntv_or_sync_fifo.gl0.wr_n_45 }),
        .axi4_fifo_rd_en_i(axi4_fifo_rd_en_i),
        .axis_rd_en__0(axis_rd_en__0),
        .empty_fwft_i(empty_fwft_i),
        .\gc0.count_reg[0] (\gc0.count_reg[0] ),
        .\gc0.count_reg[0]_0 (\gc0.count_reg[0]_0 ),
        .\gcc0.gc0.count_d1_reg[11] (\gntv_or_sync_fifo.gl0.wr_n_36 ),
        .\gcc0.gc0.count_d1_reg[11]_0 (p_10_out),
        .\gcc0.gc0.count_d1_reg[11]_1 ({\gntv_or_sync_fifo.gl0.wr_n_32 ,\gntv_or_sync_fifo.gl0.wr_n_33 ,\gntv_or_sync_fifo.gl0.wr_n_34 ,\gntv_or_sync_fifo.gl0.wr_n_35 }),
        .\gcc0.gc0.count_reg[9] (p_11_out),
        .\goreg_dm.dout_i_reg[18] (\goreg_dm.dout_i_reg[18] ),
        .\gpregsm1.user_valid_reg (\gr1.gdcf.dc/cntr_en ),
        .\grid.ar_id_r_reg[0] (\grid.ar_id_r_reg[0] ),
        .\grxd.sig_rxd_prog_empty_d1_reg (\grxd.sig_rxd_prog_empty_d1_reg ),
        .out(out),
        .p_16_out(p_16_out),
        .p_6_out(p_6_out),
        .ram_rd_en_i(ram_rd_en_i),
        .rd_en_int_sync(rd_en_int_sync),
        .rd_pntr_inv_pad(\grss.gpe.rdpe/rd_pntr_inv_pad ),
        .rst_int_sync(rst_int_sync),
        .rst_int_sync_1(rst_int_sync_1),
        .s_axi4_araddr(s_axi4_araddr),
        .\s_axi4_araddr[18] (\s_axi4_araddr[18] ),
        .\s_axi4_araddr[22] (\s_axi4_araddr[22] ),
        .s_axi_aclk(s_axi_aclk),
        .sig_Bus2IP_RdCE(sig_Bus2IP_RdCE),
        .sig_ip2bus_data1__0(sig_ip2bus_data1__0),
        .\sig_ip2bus_data_reg[12] (\sig_ip2bus_data_reg[12] ),
        .\sig_ip2bus_data_reg[13] (\sig_ip2bus_data_reg[13] ),
        .\sig_ip2bus_data_reg[14] (Q),
        .\sig_ip2bus_data_reg[17] (\sig_ip2bus_data_reg[17] ),
        .\sig_ip2bus_data_reg[19] (\sig_ip2bus_data_reg[19] ),
        .\sig_ip2bus_data_reg[1] (\sig_ip2bus_data_reg[1] ),
        .\sig_ip2bus_data_reg[20] (\sig_ip2bus_data_reg[20] ),
        .\sig_ip2bus_data_reg[21] (\sig_ip2bus_data_reg[21] ),
        .\sig_ip2bus_data_reg[22] (\sig_ip2bus_data_reg[22] ),
        .\sig_ip2bus_data_reg[23] (\sig_ip2bus_data_reg[23] ),
        .\sig_ip2bus_data_reg[24] (\sig_ip2bus_data_reg[24] ),
        .\sig_register_array_reg[0][2] (\sig_register_array_reg[0][2] ),
        .\sig_register_array_reg[1][1] (\sig_register_array_reg[1][1] ),
        .sig_rx_channel_reset_reg(sig_rx_channel_reset_reg),
        .sig_rx_channel_reset_reg_0(sig_rx_channel_reset_reg_0),
        .sig_rxd_pe_event16_out(sig_rxd_pe_event16_out),
        .sig_rxd_prog_empty_d1(sig_rxd_prog_empty_d1),
        .v1_reg(\gwss.wsts/c0/v1_reg ),
        .v1_reg_0(\gwss.wsts/c1/v1_reg ),
        .valid_fwft(valid_fwft));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_0_4_wr_logic \gntv_or_sync_fifo.gl0.wr 
       (.AR(WR_RST),
        .Axi_Str_TxD_AReset(Axi_Str_TxD_AReset),
        .\DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram (p_10_out),
        .E(E),
        .Q(p_11_out),
        .S({\gntv_or_sync_fifo.gl0.wr_n_38 ,\gntv_or_sync_fifo.gl0.wr_n_39 ,\gntv_or_sync_fifo.gl0.wr_n_40 ,\gntv_or_sync_fifo.gl0.wr_n_41 ,\gntv_or_sync_fifo.gl0.wr_n_42 ,\gntv_or_sync_fifo.gl0.wr_n_43 ,\gntv_or_sync_fifo.gl0.wr_n_44 ,\gntv_or_sync_fifo.gl0.wr_n_45 }),
        .SR(SR),
        .axi_str_rxd_tlast(axi_str_rxd_tlast),
        .axi_str_rxd_tready(axi_str_rxd_tready),
        .axi_str_rxd_tvalid(axi_str_rxd_tvalid),
        .axis_rd_en__0(axis_rd_en__0),
        .\count_reg[12] (\gr1.gdcf.dc/cntr_en ),
        .\gc0.count_d1_reg[11] (p_0_out),
        .\gc0.count_d1_reg[8] (\gwss.wsts/c0/v1_reg ),
        .\gc0.count_d1_reg[8]_0 (\gwss.wsts/c1/v1_reg ),
        .\greg.gpcry_sym.diff_pntr_pad_reg[12] ({\gntv_or_sync_fifo.gl0.wr_n_32 ,\gntv_or_sync_fifo.gl0.wr_n_33 ,\gntv_or_sync_fifo.gl0.wr_n_34 ,\gntv_or_sync_fifo.gl0.wr_n_35 }),
        .\grstd1.grst_full.grst_f.rst_d5_reg (rst_full_gen_i),
        .\grxd.fg_rxd_wr_length_reg[3] (\grxd.fg_rxd_wr_length_reg[3] ),
        .\grxd.rx_partial_pkt_reg (\grxd.rx_partial_pkt_reg ),
        .\grxd.rx_partial_pkt_reg_0 (\grxd.rx_partial_pkt_reg_0 ),
        .in0(in0),
        .out(rst_full_ff_i),
        .p_16_out(p_16_out),
        .p_6_out(p_6_out),
        .prog_full_i(prog_full_i),
        .ram_empty_fb_i_reg(\gntv_or_sync_fifo.gl0.wr_n_36 ),
        .rd_pntr_inv_pad(\grss.gpe.rdpe/rd_pntr_inv_pad ),
        .rx_complete(rx_complete),
        .rx_len_wr_en(rx_len_wr_en),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_aresetn(s_axi_aresetn),
        .sig_ip2bus_data1__0(sig_ip2bus_data1__0),
        .sig_rd_rlen_reg(sig_rd_rlen_reg),
        .valid_fwft(valid_fwft));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_0_4_memory \gntv_or_sync_fifo.mem 
       (.E(dout_i),
        .WEA(wr_en_into_bram),
        .axi_str_rxd_tdata(axi_str_rxd_tdata),
        .\gc0.count_d1_reg[11] (p_0_out),
        .\gcc0.gc0.count_d1_reg[11] (p_10_out),
        .ram_rd_en_i(ram_rd_en_i),
        .s_axi4_rdata(s_axi4_rdata),
        .s_axi_aclk(s_axi_aclk));
  FDRE #(
    .INIT(1'b0)) 
    \gsafety_cc.rd_en_int_sync_1_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(p_6_out),
        .Q(rd_en_int_sync_1),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gsafety_cc.rd_en_int_sync_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(rd_en_int_sync_1),
        .Q(rd_en_int_sync),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gsafety_cc.rst_int_sync_1_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(rd_rst_i),
        .Q(rst_int_sync_1),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gsafety_cc.rst_int_sync_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(rst_int_sync_1),
        .Q(rst_int_sync),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gsafety_cc.wr_en_int_sync_1_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(p_16_out),
        .Q(wr_en_int_sync_1),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gsafety_cc.wr_en_int_sync_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(wr_en_int_sync_1),
        .Q(wr_en_int_sync),
        .R(1'b0));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_0_4_reset_blk_ramfifo__parameterized0 rstblk
       (.AR(WR_RST),
        .Q({clear,rd_rst_i}),
        .WEA(wr_en_into_bram),
        .\ngwrdrst.grst.g7serrst.rst_wr_reg1_reg_0 (\ngwrdrst.grst.g7serrst.rst_wr_reg1_reg ),
        .out(rst_full_ff_i),
        .p_16_out(p_16_out),
        .ram_full_i_reg(rst_full_gen_i),
        .rst_int_sync(rst_int_sync),
        .rst_int_sync_1(rst_int_sync_1),
        .s_axi_aclk(s_axi_aclk),
        .sync_areset_n(sync_areset_n),
        .wr_en_int_sync(wr_en_int_sync));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_0_4_fifo_generator_top
   (inverted_reset,
    \grxd.fg_rxd_wr_length_reg[3] ,
    empty_fwft_i,
    prog_full_i,
    \grxd.sig_rxd_prog_empty_d1_reg ,
    SR,
    \sig_ip2bus_data_reg[24] ,
    Q,
    \sig_ip2bus_data_reg[23] ,
    \sig_ip2bus_data_reg[22] ,
    \sig_ip2bus_data_reg[21] ,
    \sig_ip2bus_data_reg[20] ,
    \sig_ip2bus_data_reg[19] ,
    D,
    \sig_ip2bus_data_reg[17] ,
    \sig_ip2bus_data_reg[12] ,
    \sig_ip2bus_data_reg[13] ,
    \sig_ip2bus_data_reg[1] ,
    rx_complete,
    E,
    \grid.ar_id_r_reg[0] ,
    \gc0.count_reg[0] ,
    \gc0.count_reg[0]_0 ,
    axi_str_rxd_tready,
    sig_rxd_pe_event16_out,
    \sig_register_array_reg[0][2] ,
    \grxd.rx_partial_pkt_reg ,
    s_axi4_rdata,
    s_axi_aclk,
    axi_str_rxd_tdata,
    axis_rd_en__0,
    axi_str_rxd_tvalid,
    axi4_fifo_rd_en_i,
    axi_str_rxd_tlast,
    rx_len_wr_en,
    s_axi_aresetn,
    Axi_Str_TxD_AReset,
    \GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9] ,
    out,
    \goreg_dm.dout_i_reg[18] ,
    \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3] ,
    sig_rx_channel_reset_reg,
    \sig_register_array_reg[1][1] ,
    \GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9]_0 ,
    \GEN_BKEND_CE_REGISTERS[6].ce_out_i_reg[6] ,
    \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0] ,
    sig_rx_channel_reset_reg_0,
    sig_Bus2IP_RdCE,
    \grxd.rx_partial_pkt_reg_0 ,
    s_axi4_araddr,
    \s_axi4_araddr[18] ,
    \s_axi4_araddr[22] ,
    sig_rxd_prog_empty_d1,
    sync_areset_n,
    sig_rd_rlen_reg,
    in0,
    \GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg[7] ,
    \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3]_0 );
  output inverted_reset;
  output \grxd.fg_rxd_wr_length_reg[3] ;
  output empty_fwft_i;
  output prog_full_i;
  output \grxd.sig_rxd_prog_empty_d1_reg ;
  output [0:0]SR;
  output \sig_ip2bus_data_reg[24] ;
  output [12:0]Q;
  output \sig_ip2bus_data_reg[23] ;
  output \sig_ip2bus_data_reg[22] ;
  output \sig_ip2bus_data_reg[21] ;
  output \sig_ip2bus_data_reg[20] ;
  output \sig_ip2bus_data_reg[19] ;
  output [7:0]D;
  output \sig_ip2bus_data_reg[17] ;
  output \sig_ip2bus_data_reg[12] ;
  output \sig_ip2bus_data_reg[13] ;
  output \sig_ip2bus_data_reg[1] ;
  output rx_complete;
  output [0:0]E;
  output \grid.ar_id_r_reg[0] ;
  output \gc0.count_reg[0] ;
  output \gc0.count_reg[0]_0 ;
  output axi_str_rxd_tready;
  output sig_rxd_pe_event16_out;
  output \sig_register_array_reg[0][2] ;
  output \grxd.rx_partial_pkt_reg ;
  output [127:0]s_axi4_rdata;
  input s_axi_aclk;
  input [127:0]axi_str_rxd_tdata;
  input axis_rd_en__0;
  input axi_str_rxd_tvalid;
  input axi4_fifo_rd_en_i;
  input axi_str_rxd_tlast;
  input rx_len_wr_en;
  input s_axi_aresetn;
  input Axi_Str_TxD_AReset;
  input \GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9] ;
  input out;
  input [3:0]\goreg_dm.dout_i_reg[18] ;
  input \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3] ;
  input sig_rx_channel_reset_reg;
  input [3:0]\sig_register_array_reg[1][1] ;
  input \GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9]_0 ;
  input \GEN_BKEND_CE_REGISTERS[6].ce_out_i_reg[6] ;
  input \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0] ;
  input sig_rx_channel_reset_reg_0;
  input [0:0]sig_Bus2IP_RdCE;
  input \grxd.rx_partial_pkt_reg_0 ;
  input [17:0]s_axi4_araddr;
  input \s_axi4_araddr[18] ;
  input \s_axi4_araddr[22] ;
  input sig_rxd_prog_empty_d1;
  input sync_areset_n;
  input sig_rd_rlen_reg;
  input in0;
  input \GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg[7] ;
  input \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3]_0 ;

  wire Axi_Str_TxD_AReset;
  wire [7:0]D;
  wire [0:0]E;
  wire \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0] ;
  wire \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3] ;
  wire \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3]_0 ;
  wire \GEN_BKEND_CE_REGISTERS[6].ce_out_i_reg[6] ;
  wire \GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg[7] ;
  wire \GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9] ;
  wire \GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9]_0 ;
  wire [12:0]Q;
  wire [0:0]SR;
  wire axi4_fifo_rd_en_i;
  wire [127:0]axi_str_rxd_tdata;
  wire axi_str_rxd_tlast;
  wire axi_str_rxd_tready;
  wire axi_str_rxd_tvalid;
  wire axis_rd_en__0;
  wire empty_fwft_i;
  wire \gc0.count_reg[0] ;
  wire \gc0.count_reg[0]_0 ;
  wire [3:0]\goreg_dm.dout_i_reg[18] ;
  wire \grid.ar_id_r_reg[0] ;
  wire \grxd.fg_rxd_wr_length_reg[3] ;
  wire \grxd.rx_partial_pkt_reg ;
  wire \grxd.rx_partial_pkt_reg_0 ;
  wire \grxd.sig_rxd_prog_empty_d1_reg ;
  wire in0;
  wire inverted_reset;
  wire out;
  wire prog_full_i;
  wire rx_complete;
  wire rx_len_wr_en;
  wire [17:0]s_axi4_araddr;
  wire \s_axi4_araddr[18] ;
  wire \s_axi4_araddr[22] ;
  wire [127:0]s_axi4_rdata;
  wire s_axi_aclk;
  wire s_axi_aresetn;
  wire [0:0]sig_Bus2IP_RdCE;
  wire \sig_ip2bus_data_reg[12] ;
  wire \sig_ip2bus_data_reg[13] ;
  wire \sig_ip2bus_data_reg[17] ;
  wire \sig_ip2bus_data_reg[19] ;
  wire \sig_ip2bus_data_reg[1] ;
  wire \sig_ip2bus_data_reg[20] ;
  wire \sig_ip2bus_data_reg[21] ;
  wire \sig_ip2bus_data_reg[22] ;
  wire \sig_ip2bus_data_reg[23] ;
  wire \sig_ip2bus_data_reg[24] ;
  wire sig_rd_rlen_reg;
  wire \sig_register_array_reg[0][2] ;
  wire [3:0]\sig_register_array_reg[1][1] ;
  wire sig_rx_channel_reset_reg;
  wire sig_rx_channel_reset_reg_0;
  wire sig_rxd_pe_event16_out;
  wire sig_rxd_prog_empty_d1;
  wire sync_areset_n;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_0_4_fifo_generator_ramfifo \grf.rf 
       (.Axi_Str_TxD_AReset(Axi_Str_TxD_AReset),
        .D(D),
        .E(E),
        .\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0] (\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0] ),
        .\GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3] (\GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3] ),
        .\GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3]_0 (\GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3]_0 ),
        .\GEN_BKEND_CE_REGISTERS[6].ce_out_i_reg[6] (\GEN_BKEND_CE_REGISTERS[6].ce_out_i_reg[6] ),
        .\GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg[7] (\GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg[7] ),
        .\GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9] (\GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9] ),
        .\GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9]_0 (\GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9]_0 ),
        .Q(Q),
        .SR(SR),
        .axi4_fifo_rd_en_i(axi4_fifo_rd_en_i),
        .axi_str_rxd_tdata(axi_str_rxd_tdata),
        .axi_str_rxd_tlast(axi_str_rxd_tlast),
        .axi_str_rxd_tready(axi_str_rxd_tready),
        .axi_str_rxd_tvalid(axi_str_rxd_tvalid),
        .axis_rd_en__0(axis_rd_en__0),
        .empty_fwft_i(empty_fwft_i),
        .\gc0.count_reg[0] (\gc0.count_reg[0] ),
        .\gc0.count_reg[0]_0 (\gc0.count_reg[0]_0 ),
        .\goreg_dm.dout_i_reg[18] (\goreg_dm.dout_i_reg[18] ),
        .\grid.ar_id_r_reg[0] (\grid.ar_id_r_reg[0] ),
        .\grxd.fg_rxd_wr_length_reg[3] (\grxd.fg_rxd_wr_length_reg[3] ),
        .\grxd.rx_partial_pkt_reg (\grxd.rx_partial_pkt_reg ),
        .\grxd.rx_partial_pkt_reg_0 (\grxd.rx_partial_pkt_reg_0 ),
        .\grxd.sig_rxd_prog_empty_d1_reg (\grxd.sig_rxd_prog_empty_d1_reg ),
        .in0(in0),
        .\ngwrdrst.grst.g7serrst.rst_wr_reg1_reg (inverted_reset),
        .out(out),
        .prog_full_i(prog_full_i),
        .rx_complete(rx_complete),
        .rx_len_wr_en(rx_len_wr_en),
        .s_axi4_araddr(s_axi4_araddr),
        .\s_axi4_araddr[18] (\s_axi4_araddr[18] ),
        .\s_axi4_araddr[22] (\s_axi4_araddr[22] ),
        .s_axi4_rdata(s_axi4_rdata),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_aresetn(s_axi_aresetn),
        .sig_Bus2IP_RdCE(sig_Bus2IP_RdCE),
        .\sig_ip2bus_data_reg[12] (\sig_ip2bus_data_reg[12] ),
        .\sig_ip2bus_data_reg[13] (\sig_ip2bus_data_reg[13] ),
        .\sig_ip2bus_data_reg[17] (\sig_ip2bus_data_reg[17] ),
        .\sig_ip2bus_data_reg[19] (\sig_ip2bus_data_reg[19] ),
        .\sig_ip2bus_data_reg[1] (\sig_ip2bus_data_reg[1] ),
        .\sig_ip2bus_data_reg[20] (\sig_ip2bus_data_reg[20] ),
        .\sig_ip2bus_data_reg[21] (\sig_ip2bus_data_reg[21] ),
        .\sig_ip2bus_data_reg[22] (\sig_ip2bus_data_reg[22] ),
        .\sig_ip2bus_data_reg[23] (\sig_ip2bus_data_reg[23] ),
        .\sig_ip2bus_data_reg[24] (\sig_ip2bus_data_reg[24] ),
        .sig_rd_rlen_reg(sig_rd_rlen_reg),
        .\sig_register_array_reg[0][2] (\sig_register_array_reg[0][2] ),
        .\sig_register_array_reg[1][1] (\sig_register_array_reg[1][1] ),
        .sig_rx_channel_reset_reg(sig_rx_channel_reset_reg),
        .sig_rx_channel_reset_reg_0(sig_rx_channel_reset_reg_0),
        .sig_rxd_pe_event16_out(sig_rxd_pe_event16_out),
        .sig_rxd_prog_empty_d1(sig_rxd_prog_empty_d1),
        .sync_areset_n(sync_areset_n));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_0_4_memory
   (s_axi4_rdata,
    s_axi_aclk,
    WEA,
    ram_rd_en_i,
    \gcc0.gc0.count_d1_reg[11] ,
    \gc0.count_d1_reg[11] ,
    axi_str_rxd_tdata,
    E);
  output [127:0]s_axi4_rdata;
  input s_axi_aclk;
  input [0:0]WEA;
  input ram_rd_en_i;
  input [11:0]\gcc0.gc0.count_d1_reg[11] ;
  input [11:0]\gc0.count_d1_reg[11] ;
  input [127:0]axi_str_rxd_tdata;
  input [0:0]E;

  wire [0:0]E;
  wire [0:0]WEA;
  wire [127:0]axi_str_rxd_tdata;
  wire [148:21]doutb;
  wire [11:0]\gc0.count_d1_reg[11] ;
  wire [11:0]\gcc0.gc0.count_d1_reg[11] ;
  wire ram_rd_en_i;
  wire [127:0]s_axi4_rdata;
  wire s_axi_aclk;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_3_4 \gbm.gbmg.gbmga.ngecc.bmg 
       (.D(doutb),
        .WEA(WEA),
        .axi_str_rxd_tdata(axi_str_rxd_tdata),
        .\gc0.count_d1_reg[11] (\gc0.count_d1_reg[11] ),
        .\gcc0.gc0.count_d1_reg[11] (\gcc0.gc0.count_d1_reg[11] ),
        .ram_rd_en_i(ram_rd_en_i),
        .s_axi_aclk(s_axi_aclk));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[100] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(doutb[100]),
        .Q(s_axi4_rdata[79]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[101] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(doutb[101]),
        .Q(s_axi4_rdata[80]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[102] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(doutb[102]),
        .Q(s_axi4_rdata[81]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[103] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(doutb[103]),
        .Q(s_axi4_rdata[82]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[104] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(doutb[104]),
        .Q(s_axi4_rdata[83]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[105] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(doutb[105]),
        .Q(s_axi4_rdata[84]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[106] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(doutb[106]),
        .Q(s_axi4_rdata[85]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[107] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(doutb[107]),
        .Q(s_axi4_rdata[86]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[108] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(doutb[108]),
        .Q(s_axi4_rdata[87]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[109] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(doutb[109]),
        .Q(s_axi4_rdata[88]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[110] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(doutb[110]),
        .Q(s_axi4_rdata[89]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[111] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(doutb[111]),
        .Q(s_axi4_rdata[90]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[112] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(doutb[112]),
        .Q(s_axi4_rdata[91]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[113] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(doutb[113]),
        .Q(s_axi4_rdata[92]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[114] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(doutb[114]),
        .Q(s_axi4_rdata[93]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[115] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(doutb[115]),
        .Q(s_axi4_rdata[94]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[116] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(doutb[116]),
        .Q(s_axi4_rdata[95]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[117] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(doutb[117]),
        .Q(s_axi4_rdata[96]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[118] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(doutb[118]),
        .Q(s_axi4_rdata[97]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[119] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(doutb[119]),
        .Q(s_axi4_rdata[98]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[120] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(doutb[120]),
        .Q(s_axi4_rdata[99]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[121] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(doutb[121]),
        .Q(s_axi4_rdata[100]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[122] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(doutb[122]),
        .Q(s_axi4_rdata[101]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[123] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(doutb[123]),
        .Q(s_axi4_rdata[102]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[124] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(doutb[124]),
        .Q(s_axi4_rdata[103]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[125] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(doutb[125]),
        .Q(s_axi4_rdata[104]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[126] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(doutb[126]),
        .Q(s_axi4_rdata[105]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[127] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(doutb[127]),
        .Q(s_axi4_rdata[106]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[128] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(doutb[128]),
        .Q(s_axi4_rdata[107]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[129] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(doutb[129]),
        .Q(s_axi4_rdata[108]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[130] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(doutb[130]),
        .Q(s_axi4_rdata[109]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[131] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(doutb[131]),
        .Q(s_axi4_rdata[110]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[132] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(doutb[132]),
        .Q(s_axi4_rdata[111]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[133] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(doutb[133]),
        .Q(s_axi4_rdata[112]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[134] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(doutb[134]),
        .Q(s_axi4_rdata[113]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[135] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(doutb[135]),
        .Q(s_axi4_rdata[114]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[136] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(doutb[136]),
        .Q(s_axi4_rdata[115]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[137] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(doutb[137]),
        .Q(s_axi4_rdata[116]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[138] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(doutb[138]),
        .Q(s_axi4_rdata[117]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[139] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(doutb[139]),
        .Q(s_axi4_rdata[118]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[140] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(doutb[140]),
        .Q(s_axi4_rdata[119]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[141] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(doutb[141]),
        .Q(s_axi4_rdata[120]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[142] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(doutb[142]),
        .Q(s_axi4_rdata[121]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[143] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(doutb[143]),
        .Q(s_axi4_rdata[122]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[144] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(doutb[144]),
        .Q(s_axi4_rdata[123]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[145] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(doutb[145]),
        .Q(s_axi4_rdata[124]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[146] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(doutb[146]),
        .Q(s_axi4_rdata[125]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[147] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(doutb[147]),
        .Q(s_axi4_rdata[126]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[148] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(doutb[148]),
        .Q(s_axi4_rdata[127]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[21] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(doutb[21]),
        .Q(s_axi4_rdata[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[22] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(doutb[22]),
        .Q(s_axi4_rdata[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[23] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(doutb[23]),
        .Q(s_axi4_rdata[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[24] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(doutb[24]),
        .Q(s_axi4_rdata[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[25] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(doutb[25]),
        .Q(s_axi4_rdata[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[26] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(doutb[26]),
        .Q(s_axi4_rdata[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[27] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(doutb[27]),
        .Q(s_axi4_rdata[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[28] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(doutb[28]),
        .Q(s_axi4_rdata[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[29] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(doutb[29]),
        .Q(s_axi4_rdata[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[30] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(doutb[30]),
        .Q(s_axi4_rdata[9]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[31] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(doutb[31]),
        .Q(s_axi4_rdata[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[32] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(doutb[32]),
        .Q(s_axi4_rdata[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[33] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(doutb[33]),
        .Q(s_axi4_rdata[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[34] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(doutb[34]),
        .Q(s_axi4_rdata[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[35] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(doutb[35]),
        .Q(s_axi4_rdata[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[36] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(doutb[36]),
        .Q(s_axi4_rdata[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[37] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(doutb[37]),
        .Q(s_axi4_rdata[16]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[38] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(doutb[38]),
        .Q(s_axi4_rdata[17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[39] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(doutb[39]),
        .Q(s_axi4_rdata[18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[40] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(doutb[40]),
        .Q(s_axi4_rdata[19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[41] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(doutb[41]),
        .Q(s_axi4_rdata[20]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[42] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(doutb[42]),
        .Q(s_axi4_rdata[21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[43] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(doutb[43]),
        .Q(s_axi4_rdata[22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[44] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(doutb[44]),
        .Q(s_axi4_rdata[23]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[45] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(doutb[45]),
        .Q(s_axi4_rdata[24]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[46] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(doutb[46]),
        .Q(s_axi4_rdata[25]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[47] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(doutb[47]),
        .Q(s_axi4_rdata[26]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[48] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(doutb[48]),
        .Q(s_axi4_rdata[27]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[49] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(doutb[49]),
        .Q(s_axi4_rdata[28]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[50] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(doutb[50]),
        .Q(s_axi4_rdata[29]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[51] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(doutb[51]),
        .Q(s_axi4_rdata[30]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[52] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(doutb[52]),
        .Q(s_axi4_rdata[31]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[53] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(doutb[53]),
        .Q(s_axi4_rdata[32]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[54] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(doutb[54]),
        .Q(s_axi4_rdata[33]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[55] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(doutb[55]),
        .Q(s_axi4_rdata[34]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[56] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(doutb[56]),
        .Q(s_axi4_rdata[35]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[57] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(doutb[57]),
        .Q(s_axi4_rdata[36]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[58] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(doutb[58]),
        .Q(s_axi4_rdata[37]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[59] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(doutb[59]),
        .Q(s_axi4_rdata[38]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[60] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(doutb[60]),
        .Q(s_axi4_rdata[39]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[61] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(doutb[61]),
        .Q(s_axi4_rdata[40]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[62] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(doutb[62]),
        .Q(s_axi4_rdata[41]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[63] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(doutb[63]),
        .Q(s_axi4_rdata[42]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[64] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(doutb[64]),
        .Q(s_axi4_rdata[43]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[65] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(doutb[65]),
        .Q(s_axi4_rdata[44]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[66] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(doutb[66]),
        .Q(s_axi4_rdata[45]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[67] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(doutb[67]),
        .Q(s_axi4_rdata[46]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[68] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(doutb[68]),
        .Q(s_axi4_rdata[47]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[69] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(doutb[69]),
        .Q(s_axi4_rdata[48]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[70] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(doutb[70]),
        .Q(s_axi4_rdata[49]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[71] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(doutb[71]),
        .Q(s_axi4_rdata[50]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[72] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(doutb[72]),
        .Q(s_axi4_rdata[51]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[73] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(doutb[73]),
        .Q(s_axi4_rdata[52]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[74] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(doutb[74]),
        .Q(s_axi4_rdata[53]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[75] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(doutb[75]),
        .Q(s_axi4_rdata[54]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[76] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(doutb[76]),
        .Q(s_axi4_rdata[55]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[77] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(doutb[77]),
        .Q(s_axi4_rdata[56]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[78] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(doutb[78]),
        .Q(s_axi4_rdata[57]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[79] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(doutb[79]),
        .Q(s_axi4_rdata[58]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[80] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(doutb[80]),
        .Q(s_axi4_rdata[59]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[81] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(doutb[81]),
        .Q(s_axi4_rdata[60]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[82] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(doutb[82]),
        .Q(s_axi4_rdata[61]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[83] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(doutb[83]),
        .Q(s_axi4_rdata[62]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[84] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(doutb[84]),
        .Q(s_axi4_rdata[63]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[85] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(doutb[85]),
        .Q(s_axi4_rdata[64]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[86] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(doutb[86]),
        .Q(s_axi4_rdata[65]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[87] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(doutb[87]),
        .Q(s_axi4_rdata[66]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[88] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(doutb[88]),
        .Q(s_axi4_rdata[67]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[89] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(doutb[89]),
        .Q(s_axi4_rdata[68]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[90] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(doutb[90]),
        .Q(s_axi4_rdata[69]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[91] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(doutb[91]),
        .Q(s_axi4_rdata[70]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[92] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(doutb[92]),
        .Q(s_axi4_rdata[71]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[93] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(doutb[93]),
        .Q(s_axi4_rdata[72]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[94] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(doutb[94]),
        .Q(s_axi4_rdata[73]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[95] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(doutb[95]),
        .Q(s_axi4_rdata[74]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[96] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(doutb[96]),
        .Q(s_axi4_rdata[75]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[97] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(doutb[97]),
        .Q(s_axi4_rdata[76]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[98] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(doutb[98]),
        .Q(s_axi4_rdata[77]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[99] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(doutb[99]),
        .Q(s_axi4_rdata[78]),
        .R(1'b0));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_0_4_rd_bin_cntr
   (\grid.ar_id_r_reg[0] ,
    \gc0.count_reg[0]_0 ,
    \gc0.count_reg[0]_1 ,
    v1_reg,
    Q,
    v1_reg_1,
    v1_reg_0,
    ram_empty_fb_i_reg,
    ram_empty_fb_i_reg_0,
    ram_empty_fb_i_reg_1,
    ram_empty_fb_i_reg_2,
    ram_empty_fb_i_reg_3,
    s_axi4_araddr,
    \s_axi4_araddr[18] ,
    \s_axi4_araddr[22] ,
    \gcc0.gc0.count_d1_reg[11] ,
    \gcc0.gc0.count_reg[9] ,
    E,
    s_axi_aclk,
    \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[2] );
  output \grid.ar_id_r_reg[0] ;
  output \gc0.count_reg[0]_0 ;
  output \gc0.count_reg[0]_1 ;
  output [4:0]v1_reg;
  output [11:0]Q;
  output [5:0]v1_reg_1;
  output [4:0]v1_reg_0;
  output ram_empty_fb_i_reg;
  output ram_empty_fb_i_reg_0;
  output ram_empty_fb_i_reg_1;
  output ram_empty_fb_i_reg_2;
  output ram_empty_fb_i_reg_3;
  input [17:0]s_axi4_araddr;
  input \s_axi4_araddr[18] ;
  input \s_axi4_araddr[22] ;
  input [11:0]\gcc0.gc0.count_d1_reg[11] ;
  input [9:0]\gcc0.gc0.count_reg[9] ;
  input [0:0]E;
  input s_axi_aclk;
  input [0:0]\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[2] ;

  wire [0:0]E;
  wire [11:0]Q;
  wire \gc0.count_reg[0]_0 ;
  wire \gc0.count_reg[0]_1 ;
  wire [11:0]\gcc0.gc0.count_d1_reg[11] ;
  wire [9:0]\gcc0.gc0.count_reg[9] ;
  wire \greg.ram_rd_en_i_i_6_n_0 ;
  wire \greg.ram_rd_en_i_i_7_n_0 ;
  wire \grid.ar_id_r_reg[0] ;
  wire [0:0]\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[2] ;
  wire [11:0]plusOp;
  wire plusOp_carry__0_i_1__2_n_0;
  wire plusOp_carry__0_i_2__2_n_0;
  wire plusOp_carry__0_i_3__2_n_0;
  wire plusOp_carry__0_n_6;
  wire plusOp_carry__0_n_7;
  wire plusOp_carry_i_1__2_n_0;
  wire plusOp_carry_i_2__2_n_0;
  wire plusOp_carry_i_3__2_n_0;
  wire plusOp_carry_i_4__2_n_0;
  wire plusOp_carry_i_5__2_n_0;
  wire plusOp_carry_i_6__2_n_0;
  wire plusOp_carry_i_7__2_n_0;
  wire plusOp_carry_i_8__2_n_0;
  wire plusOp_carry_n_0;
  wire plusOp_carry_n_1;
  wire plusOp_carry_n_2;
  wire plusOp_carry_n_3;
  wire plusOp_carry_n_5;
  wire plusOp_carry_n_6;
  wire plusOp_carry_n_7;
  wire ram_empty_fb_i_reg;
  wire ram_empty_fb_i_reg_0;
  wire ram_empty_fb_i_reg_1;
  wire ram_empty_fb_i_reg_2;
  wire ram_empty_fb_i_reg_3;
  wire [11:0]rd_pntr_plus1;
  wire [17:0]s_axi4_araddr;
  wire \s_axi4_araddr[18] ;
  wire \s_axi4_araddr[22] ;
  wire s_axi_aclk;
  wire [4:0]v1_reg;
  wire [4:0]v1_reg_0;
  wire [5:0]v1_reg_1;
  wire [3:3]NLW_plusOp_carry_CO_UNCONNECTED;
  wire [7:2]NLW_plusOp_carry__0_CO_UNCONNECTED;
  wire [7:3]NLW_plusOp_carry__0_DI_UNCONNECTED;
  wire [7:3]NLW_plusOp_carry__0_O_UNCONNECTED;
  wire [7:3]NLW_plusOp_carry__0_S_UNCONNECTED;

  LUT1 #(
    .INIT(2'h1)) 
    \gc0.count[0]_i_1 
       (.I0(rd_pntr_plus1[0]),
        .O(plusOp[0]));
  FDCE #(
    .INIT(1'b0)) 
    \gc0.count_d1_reg[0] 
       (.C(s_axi_aclk),
        .CE(E),
        .CLR(\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[2] ),
        .D(rd_pntr_plus1[0]),
        .Q(Q[0]));
  FDCE #(
    .INIT(1'b0)) 
    \gc0.count_d1_reg[10] 
       (.C(s_axi_aclk),
        .CE(E),
        .CLR(\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[2] ),
        .D(rd_pntr_plus1[10]),
        .Q(Q[10]));
  FDCE #(
    .INIT(1'b0)) 
    \gc0.count_d1_reg[11] 
       (.C(s_axi_aclk),
        .CE(E),
        .CLR(\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[2] ),
        .D(rd_pntr_plus1[11]),
        .Q(Q[11]));
  FDCE #(
    .INIT(1'b0)) 
    \gc0.count_d1_reg[1] 
       (.C(s_axi_aclk),
        .CE(E),
        .CLR(\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[2] ),
        .D(rd_pntr_plus1[1]),
        .Q(Q[1]));
  FDCE #(
    .INIT(1'b0)) 
    \gc0.count_d1_reg[2] 
       (.C(s_axi_aclk),
        .CE(E),
        .CLR(\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[2] ),
        .D(rd_pntr_plus1[2]),
        .Q(Q[2]));
  FDCE #(
    .INIT(1'b0)) 
    \gc0.count_d1_reg[3] 
       (.C(s_axi_aclk),
        .CE(E),
        .CLR(\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[2] ),
        .D(rd_pntr_plus1[3]),
        .Q(Q[3]));
  FDCE #(
    .INIT(1'b0)) 
    \gc0.count_d1_reg[4] 
       (.C(s_axi_aclk),
        .CE(E),
        .CLR(\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[2] ),
        .D(rd_pntr_plus1[4]),
        .Q(Q[4]));
  FDCE #(
    .INIT(1'b0)) 
    \gc0.count_d1_reg[5] 
       (.C(s_axi_aclk),
        .CE(E),
        .CLR(\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[2] ),
        .D(rd_pntr_plus1[5]),
        .Q(Q[5]));
  FDCE #(
    .INIT(1'b0)) 
    \gc0.count_d1_reg[6] 
       (.C(s_axi_aclk),
        .CE(E),
        .CLR(\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[2] ),
        .D(rd_pntr_plus1[6]),
        .Q(Q[6]));
  FDCE #(
    .INIT(1'b0)) 
    \gc0.count_d1_reg[7] 
       (.C(s_axi_aclk),
        .CE(E),
        .CLR(\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[2] ),
        .D(rd_pntr_plus1[7]),
        .Q(Q[7]));
  FDCE #(
    .INIT(1'b0)) 
    \gc0.count_d1_reg[8] 
       (.C(s_axi_aclk),
        .CE(E),
        .CLR(\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[2] ),
        .D(rd_pntr_plus1[8]),
        .Q(Q[8]));
  FDCE #(
    .INIT(1'b0)) 
    \gc0.count_d1_reg[9] 
       (.C(s_axi_aclk),
        .CE(E),
        .CLR(\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[2] ),
        .D(rd_pntr_plus1[9]),
        .Q(Q[9]));
  FDPE #(
    .INIT(1'b1)) 
    \gc0.count_reg[0] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(plusOp[0]),
        .PRE(\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[2] ),
        .Q(rd_pntr_plus1[0]));
  FDCE #(
    .INIT(1'b0)) 
    \gc0.count_reg[10] 
       (.C(s_axi_aclk),
        .CE(E),
        .CLR(\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[2] ),
        .D(plusOp[10]),
        .Q(rd_pntr_plus1[10]));
  FDCE #(
    .INIT(1'b0)) 
    \gc0.count_reg[11] 
       (.C(s_axi_aclk),
        .CE(E),
        .CLR(\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[2] ),
        .D(plusOp[11]),
        .Q(rd_pntr_plus1[11]));
  FDCE #(
    .INIT(1'b0)) 
    \gc0.count_reg[1] 
       (.C(s_axi_aclk),
        .CE(E),
        .CLR(\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[2] ),
        .D(plusOp[1]),
        .Q(rd_pntr_plus1[1]));
  FDCE #(
    .INIT(1'b0)) 
    \gc0.count_reg[2] 
       (.C(s_axi_aclk),
        .CE(E),
        .CLR(\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[2] ),
        .D(plusOp[2]),
        .Q(rd_pntr_plus1[2]));
  FDCE #(
    .INIT(1'b0)) 
    \gc0.count_reg[3] 
       (.C(s_axi_aclk),
        .CE(E),
        .CLR(\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[2] ),
        .D(plusOp[3]),
        .Q(rd_pntr_plus1[3]));
  FDCE #(
    .INIT(1'b0)) 
    \gc0.count_reg[4] 
       (.C(s_axi_aclk),
        .CE(E),
        .CLR(\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[2] ),
        .D(plusOp[4]),
        .Q(rd_pntr_plus1[4]));
  FDCE #(
    .INIT(1'b0)) 
    \gc0.count_reg[5] 
       (.C(s_axi_aclk),
        .CE(E),
        .CLR(\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[2] ),
        .D(plusOp[5]),
        .Q(rd_pntr_plus1[5]));
  FDCE #(
    .INIT(1'b0)) 
    \gc0.count_reg[6] 
       (.C(s_axi_aclk),
        .CE(E),
        .CLR(\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[2] ),
        .D(plusOp[6]),
        .Q(rd_pntr_plus1[6]));
  FDCE #(
    .INIT(1'b0)) 
    \gc0.count_reg[7] 
       (.C(s_axi_aclk),
        .CE(E),
        .CLR(\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[2] ),
        .D(plusOp[7]),
        .Q(rd_pntr_plus1[7]));
  FDCE #(
    .INIT(1'b0)) 
    \gc0.count_reg[8] 
       (.C(s_axi_aclk),
        .CE(E),
        .CLR(\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[2] ),
        .D(plusOp[8]),
        .Q(rd_pntr_plus1[8]));
  FDCE #(
    .INIT(1'b0)) 
    \gc0.count_reg[9] 
       (.C(s_axi_aclk),
        .CE(E),
        .CLR(\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[2] ),
        .D(plusOp[9]),
        .Q(rd_pntr_plus1[9]));
  LUT4 #(
    .INIT(16'h9009)) 
    \gmux.gm[0].gm1.m1_i_1 
       (.I0(Q[0]),
        .I1(\gcc0.gc0.count_d1_reg[11] [0]),
        .I2(\gcc0.gc0.count_d1_reg[11] [1]),
        .I3(Q[1]),
        .O(v1_reg[0]));
  LUT4 #(
    .INIT(16'h9009)) 
    \gmux.gm[0].gm1.m1_i_1__1 
       (.I0(rd_pntr_plus1[0]),
        .I1(\gcc0.gc0.count_d1_reg[11] [0]),
        .I2(\gcc0.gc0.count_d1_reg[11] [1]),
        .I3(rd_pntr_plus1[1]),
        .O(v1_reg_1[0]));
  LUT4 #(
    .INIT(16'h9009)) 
    \gmux.gm[0].gm1.m1_i_1__2 
       (.I0(Q[0]),
        .I1(\gcc0.gc0.count_reg[9] [0]),
        .I2(Q[1]),
        .I3(\gcc0.gc0.count_reg[9] [1]),
        .O(v1_reg_0[0]));
  LUT4 #(
    .INIT(16'h9009)) 
    \gmux.gm[0].gm1.m1_i_1__5 
       (.I0(Q[0]),
        .I1(\gcc0.gc0.count_d1_reg[11] [0]),
        .I2(\gcc0.gc0.count_d1_reg[11] [1]),
        .I3(Q[1]),
        .O(ram_empty_fb_i_reg));
  LUT4 #(
    .INIT(16'h9009)) 
    \gmux.gm[1].gms.ms_i_1 
       (.I0(Q[2]),
        .I1(\gcc0.gc0.count_d1_reg[11] [2]),
        .I2(\gcc0.gc0.count_d1_reg[11] [3]),
        .I3(Q[3]),
        .O(v1_reg[1]));
  LUT4 #(
    .INIT(16'h9009)) 
    \gmux.gm[1].gms.ms_i_1__1 
       (.I0(rd_pntr_plus1[2]),
        .I1(\gcc0.gc0.count_d1_reg[11] [2]),
        .I2(\gcc0.gc0.count_d1_reg[11] [3]),
        .I3(rd_pntr_plus1[3]),
        .O(v1_reg_1[1]));
  LUT4 #(
    .INIT(16'h9009)) 
    \gmux.gm[1].gms.ms_i_1__2 
       (.I0(Q[2]),
        .I1(\gcc0.gc0.count_reg[9] [2]),
        .I2(Q[3]),
        .I3(\gcc0.gc0.count_reg[9] [3]),
        .O(v1_reg_0[1]));
  LUT4 #(
    .INIT(16'h9009)) 
    \gmux.gm[1].gms.ms_i_1__5 
       (.I0(Q[2]),
        .I1(\gcc0.gc0.count_d1_reg[11] [2]),
        .I2(\gcc0.gc0.count_d1_reg[11] [3]),
        .I3(Q[3]),
        .O(ram_empty_fb_i_reg_0));
  LUT4 #(
    .INIT(16'h9009)) 
    \gmux.gm[2].gms.ms_i_1 
       (.I0(Q[4]),
        .I1(\gcc0.gc0.count_d1_reg[11] [4]),
        .I2(\gcc0.gc0.count_d1_reg[11] [5]),
        .I3(Q[5]),
        .O(v1_reg[2]));
  LUT4 #(
    .INIT(16'h9009)) 
    \gmux.gm[2].gms.ms_i_1__1 
       (.I0(rd_pntr_plus1[4]),
        .I1(\gcc0.gc0.count_d1_reg[11] [4]),
        .I2(\gcc0.gc0.count_d1_reg[11] [5]),
        .I3(rd_pntr_plus1[5]),
        .O(v1_reg_1[2]));
  LUT4 #(
    .INIT(16'h9009)) 
    \gmux.gm[2].gms.ms_i_1__2 
       (.I0(Q[4]),
        .I1(\gcc0.gc0.count_reg[9] [4]),
        .I2(Q[5]),
        .I3(\gcc0.gc0.count_reg[9] [5]),
        .O(v1_reg_0[2]));
  LUT4 #(
    .INIT(16'h9009)) 
    \gmux.gm[2].gms.ms_i_1__5 
       (.I0(Q[4]),
        .I1(\gcc0.gc0.count_d1_reg[11] [4]),
        .I2(\gcc0.gc0.count_d1_reg[11] [5]),
        .I3(Q[5]),
        .O(ram_empty_fb_i_reg_1));
  LUT4 #(
    .INIT(16'h9009)) 
    \gmux.gm[3].gms.ms_i_1 
       (.I0(Q[6]),
        .I1(\gcc0.gc0.count_d1_reg[11] [6]),
        .I2(\gcc0.gc0.count_d1_reg[11] [7]),
        .I3(Q[7]),
        .O(v1_reg[3]));
  LUT4 #(
    .INIT(16'h9009)) 
    \gmux.gm[3].gms.ms_i_1__1 
       (.I0(rd_pntr_plus1[6]),
        .I1(\gcc0.gc0.count_d1_reg[11] [6]),
        .I2(\gcc0.gc0.count_d1_reg[11] [7]),
        .I3(rd_pntr_plus1[7]),
        .O(v1_reg_1[3]));
  LUT4 #(
    .INIT(16'h9009)) 
    \gmux.gm[3].gms.ms_i_1__2 
       (.I0(Q[6]),
        .I1(\gcc0.gc0.count_reg[9] [6]),
        .I2(Q[7]),
        .I3(\gcc0.gc0.count_reg[9] [7]),
        .O(v1_reg_0[3]));
  LUT4 #(
    .INIT(16'h9009)) 
    \gmux.gm[3].gms.ms_i_1__5 
       (.I0(Q[6]),
        .I1(\gcc0.gc0.count_d1_reg[11] [6]),
        .I2(\gcc0.gc0.count_d1_reg[11] [7]),
        .I3(Q[7]),
        .O(ram_empty_fb_i_reg_2));
  LUT4 #(
    .INIT(16'h9009)) 
    \gmux.gm[4].gms.ms_i_1 
       (.I0(Q[8]),
        .I1(\gcc0.gc0.count_d1_reg[11] [8]),
        .I2(\gcc0.gc0.count_d1_reg[11] [9]),
        .I3(Q[9]),
        .O(v1_reg[4]));
  LUT4 #(
    .INIT(16'h9009)) 
    \gmux.gm[4].gms.ms_i_1__1 
       (.I0(rd_pntr_plus1[8]),
        .I1(\gcc0.gc0.count_d1_reg[11] [8]),
        .I2(\gcc0.gc0.count_d1_reg[11] [9]),
        .I3(rd_pntr_plus1[9]),
        .O(v1_reg_1[4]));
  LUT4 #(
    .INIT(16'h9009)) 
    \gmux.gm[4].gms.ms_i_1__2 
       (.I0(Q[8]),
        .I1(\gcc0.gc0.count_reg[9] [8]),
        .I2(Q[9]),
        .I3(\gcc0.gc0.count_reg[9] [9]),
        .O(v1_reg_0[4]));
  LUT4 #(
    .INIT(16'h9009)) 
    \gmux.gm[4].gms.ms_i_1__5 
       (.I0(Q[8]),
        .I1(\gcc0.gc0.count_d1_reg[11] [8]),
        .I2(\gcc0.gc0.count_d1_reg[11] [9]),
        .I3(Q[9]),
        .O(ram_empty_fb_i_reg_3));
  LUT4 #(
    .INIT(16'h9009)) 
    \gmux.gm[5].gms.ms_i_1__1 
       (.I0(rd_pntr_plus1[10]),
        .I1(\gcc0.gc0.count_d1_reg[11] [10]),
        .I2(\gcc0.gc0.count_d1_reg[11] [11]),
        .I3(rd_pntr_plus1[11]),
        .O(v1_reg_1[5]));
  LUT4 #(
    .INIT(16'h8000)) 
    \greg.ram_rd_en_i_i_4 
       (.I0(\s_axi4_araddr[18] ),
        .I1(\greg.ram_rd_en_i_i_6_n_0 ),
        .I2(\s_axi4_araddr[22] ),
        .I3(\greg.ram_rd_en_i_i_7_n_0 ),
        .O(\gc0.count_reg[0]_1 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \greg.ram_rd_en_i_i_6 
       (.I0(s_axi4_araddr[9]),
        .I1(s_axi4_araddr[8]),
        .I2(s_axi4_araddr[11]),
        .I3(s_axi4_araddr[10]),
        .O(\greg.ram_rd_en_i_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \greg.ram_rd_en_i_i_7 
       (.I0(s_axi4_araddr[15]),
        .I1(s_axi4_araddr[14]),
        .I2(s_axi4_araddr[13]),
        .I3(s_axi4_araddr[12]),
        .O(\greg.ram_rd_en_i_i_7_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \greg.ram_rd_en_i_i_8 
       (.I0(s_axi4_araddr[3]),
        .I1(s_axi4_araddr[2]),
        .I2(s_axi4_araddr[1]),
        .I3(s_axi4_araddr[0]),
        .O(\gc0.count_reg[0]_0 ));
  LUT6 #(
    .INIT(64'h0000001000000000)) 
    \grid.S_AXI_RID[0]_i_6 
       (.I0(s_axi4_araddr[4]),
        .I1(s_axi4_araddr[5]),
        .I2(s_axi4_araddr[7]),
        .I3(s_axi4_araddr[6]),
        .I4(s_axi4_araddr[16]),
        .I5(s_axi4_araddr[17]),
        .O(\grid.ar_id_r_reg[0] ));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY8 plusOp_carry
       (.CI(rd_pntr_plus1[0]),
        .CI_TOP(1'b0),
        .CO({plusOp_carry_n_0,plusOp_carry_n_1,plusOp_carry_n_2,plusOp_carry_n_3,NLW_plusOp_carry_CO_UNCONNECTED[3],plusOp_carry_n_5,plusOp_carry_n_6,plusOp_carry_n_7}),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O(plusOp[8:1]),
        .S({plusOp_carry_i_1__2_n_0,plusOp_carry_i_2__2_n_0,plusOp_carry_i_3__2_n_0,plusOp_carry_i_4__2_n_0,plusOp_carry_i_5__2_n_0,plusOp_carry_i_6__2_n_0,plusOp_carry_i_7__2_n_0,plusOp_carry_i_8__2_n_0}));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY8 plusOp_carry__0
       (.CI(plusOp_carry_n_0),
        .CI_TOP(1'b0),
        .CO({NLW_plusOp_carry__0_CO_UNCONNECTED[7:2],plusOp_carry__0_n_6,plusOp_carry__0_n_7}),
        .DI({NLW_plusOp_carry__0_DI_UNCONNECTED[7:3],1'b0,1'b0,1'b0}),
        .O({NLW_plusOp_carry__0_O_UNCONNECTED[7:3],plusOp[11:9]}),
        .S({NLW_plusOp_carry__0_S_UNCONNECTED[7:3],plusOp_carry__0_i_1__2_n_0,plusOp_carry__0_i_2__2_n_0,plusOp_carry__0_i_3__2_n_0}));
  LUT1 #(
    .INIT(2'h2)) 
    plusOp_carry__0_i_1__2
       (.I0(rd_pntr_plus1[11]),
        .O(plusOp_carry__0_i_1__2_n_0));
  LUT1 #(
    .INIT(2'h2)) 
    plusOp_carry__0_i_2__2
       (.I0(rd_pntr_plus1[10]),
        .O(plusOp_carry__0_i_2__2_n_0));
  LUT1 #(
    .INIT(2'h2)) 
    plusOp_carry__0_i_3__2
       (.I0(rd_pntr_plus1[9]),
        .O(plusOp_carry__0_i_3__2_n_0));
  LUT1 #(
    .INIT(2'h2)) 
    plusOp_carry_i_1__2
       (.I0(rd_pntr_plus1[8]),
        .O(plusOp_carry_i_1__2_n_0));
  LUT1 #(
    .INIT(2'h2)) 
    plusOp_carry_i_2__2
       (.I0(rd_pntr_plus1[7]),
        .O(plusOp_carry_i_2__2_n_0));
  LUT1 #(
    .INIT(2'h2)) 
    plusOp_carry_i_3__2
       (.I0(rd_pntr_plus1[6]),
        .O(plusOp_carry_i_3__2_n_0));
  LUT1 #(
    .INIT(2'h2)) 
    plusOp_carry_i_4__2
       (.I0(rd_pntr_plus1[5]),
        .O(plusOp_carry_i_4__2_n_0));
  LUT1 #(
    .INIT(2'h2)) 
    plusOp_carry_i_5__2
       (.I0(rd_pntr_plus1[4]),
        .O(plusOp_carry_i_5__2_n_0));
  LUT1 #(
    .INIT(2'h2)) 
    plusOp_carry_i_6__2
       (.I0(rd_pntr_plus1[3]),
        .O(plusOp_carry_i_6__2_n_0));
  LUT1 #(
    .INIT(2'h2)) 
    plusOp_carry_i_7__2
       (.I0(rd_pntr_plus1[2]),
        .O(plusOp_carry_i_7__2_n_0));
  LUT1 #(
    .INIT(2'h2)) 
    plusOp_carry_i_8__2
       (.I0(rd_pntr_plus1[1]),
        .O(plusOp_carry_i_8__2_n_0));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_0_4_rd_fwft
   (valid_fwft,
    empty_fwft_i,
    E,
    ram_rd_en_i,
    \gc0.count_reg[0] ,
    s_axi_aclk,
    Q,
    axis_rd_en__0,
    p_2_out,
    rst_int_sync,
    rd_en_int_sync,
    rst_int_sync_1,
    axi4_fifo_rd_en_i);
  output valid_fwft;
  output empty_fwft_i;
  output [0:0]E;
  output ram_rd_en_i;
  output [0:0]\gc0.count_reg[0] ;
  input s_axi_aclk;
  input [1:0]Q;
  input axis_rd_en__0;
  input p_2_out;
  input rst_int_sync;
  input rd_en_int_sync;
  input rst_int_sync_1;
  input axi4_fifo_rd_en_i;

  wire [0:0]E;
  wire [1:0]Q;
  wire axi4_fifo_rd_en_i;
  wire axis_rd_en__0;
  wire [0:0]curr_fwft_state;
  wire empty_fwft_fb;
  wire empty_fwft_i;
  wire empty_fwft_i0;
  wire [0:0]\gc0.count_reg[0] ;
  wire \gpregsm1.curr_fwft_state_reg_n_0_[1] ;
  wire [1:0]next_fwft_state;
  wire p_2_out;
  wire ram_rd_en_i;
  wire rd_en_int_sync;
  wire rst_int_sync;
  wire rst_int_sync_1;
  wire s_axi_aclk;
  wire valid_fwft;

  LUT6 #(
    .INIT(64'h00000000AAAAAAAC)) 
    \DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_2 
       (.I0(rd_en_int_sync),
        .I1(\gc0.count_reg[0] ),
        .I2(rst_int_sync_1),
        .I3(Q[0]),
        .I4(rst_int_sync),
        .I5(p_2_out),
        .O(ram_rd_en_i));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'hA0EA)) 
    empty_fwft_fb_i_1
       (.I0(empty_fwft_fb),
        .I1(axis_rd_en__0),
        .I2(curr_fwft_state),
        .I3(\gpregsm1.curr_fwft_state_reg_n_0_[1] ),
        .O(empty_fwft_i0));
  (* equivalent_register_removal = "no" *) 
  FDPE #(
    .INIT(1'b1)) 
    empty_fwft_fb_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(empty_fwft_i0),
        .PRE(Q[1]),
        .Q(empty_fwft_fb));
  (* equivalent_register_removal = "no" *) 
  FDPE #(
    .INIT(1'b1)) 
    empty_fwft_i_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(empty_fwft_i0),
        .PRE(Q[1]),
        .Q(empty_fwft_i));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h4404)) 
    \goreg_bm.dout_i[148]_i_1 
       (.I0(rst_int_sync),
        .I1(\gpregsm1.curr_fwft_state_reg_n_0_[1] ),
        .I2(curr_fwft_state),
        .I3(axis_rd_en__0),
        .O(E));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hF4)) 
    \gpregsm1.curr_fwft_state[0]_i_1 
       (.I0(axis_rd_en__0),
        .I1(curr_fwft_state),
        .I2(\gpregsm1.curr_fwft_state_reg_n_0_[1] ),
        .O(next_fwft_state[0]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h20FF)) 
    \gpregsm1.curr_fwft_state[1]_i_1 
       (.I0(\gpregsm1.curr_fwft_state_reg_n_0_[1] ),
        .I1(axis_rd_en__0),
        .I2(curr_fwft_state),
        .I3(p_2_out),
        .O(next_fwft_state[1]));
  (* equivalent_register_removal = "no" *) 
  FDCE #(
    .INIT(1'b0)) 
    \gpregsm1.curr_fwft_state_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(Q[1]),
        .D(next_fwft_state[0]),
        .Q(curr_fwft_state));
  (* equivalent_register_removal = "no" *) 
  FDCE #(
    .INIT(1'b0)) 
    \gpregsm1.curr_fwft_state_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(Q[1]),
        .D(next_fwft_state[1]),
        .Q(\gpregsm1.curr_fwft_state_reg_n_0_[1] ));
  (* equivalent_register_removal = "no" *) 
  FDCE #(
    .INIT(1'b0)) 
    \gpregsm1.user_valid_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(Q[1]),
        .D(next_fwft_state[0]),
        .Q(valid_fwft));
  LUT5 #(
    .INIT(32'h00004FFF)) 
    \greg.ram_rd_en_i_i_1 
       (.I0(empty_fwft_i),
        .I1(axi4_fifo_rd_en_i),
        .I2(curr_fwft_state),
        .I3(\gpregsm1.curr_fwft_state_reg_n_0_[1] ),
        .I4(p_2_out),
        .O(\gc0.count_reg[0] ));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_0_4_rd_logic
   (valid_fwft,
    p_6_out,
    empty_fwft_i,
    \grxd.sig_rxd_prog_empty_d1_reg ,
    E,
    ram_rd_en_i,
    \sig_ip2bus_data_reg[24] ,
    \sig_ip2bus_data_reg[14] ,
    \sig_ip2bus_data_reg[23] ,
    \sig_ip2bus_data_reg[22] ,
    \sig_ip2bus_data_reg[21] ,
    \sig_ip2bus_data_reg[20] ,
    \sig_ip2bus_data_reg[19] ,
    D,
    \sig_ip2bus_data_reg[17] ,
    \sig_ip2bus_data_reg[12] ,
    \sig_ip2bus_data_reg[13] ,
    \sig_ip2bus_data_reg[1] ,
    \grid.ar_id_r_reg[0] ,
    \gc0.count_reg[0] ,
    \gc0.count_reg[0]_0 ,
    sig_rxd_pe_event16_out,
    v1_reg,
    \DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram ,
    v1_reg_0,
    \sig_register_array_reg[0][2] ,
    \gcc0.gc0.count_d1_reg[11] ,
    s_axi_aclk,
    Q,
    p_16_out,
    rd_pntr_inv_pad,
    \gcc0.gc0.count_d1_reg[11]_0 ,
    S,
    \gcc0.gc0.count_d1_reg[11]_1 ,
    axis_rd_en__0,
    rst_int_sync,
    rd_en_int_sync,
    rst_int_sync_1,
    axi4_fifo_rd_en_i,
    \GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9] ,
    out,
    sig_ip2bus_data1__0,
    \goreg_dm.dout_i_reg[18] ,
    \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3] ,
    sig_rx_channel_reset_reg,
    \sig_register_array_reg[1][1] ,
    \GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9]_0 ,
    \GEN_BKEND_CE_REGISTERS[6].ce_out_i_reg[6] ,
    \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0] ,
    sig_rx_channel_reset_reg_0,
    sig_Bus2IP_RdCE,
    s_axi4_araddr,
    \s_axi4_araddr[18] ,
    \s_axi4_araddr[22] ,
    sig_rxd_prog_empty_d1,
    \gcc0.gc0.count_reg[9] ,
    \GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg[7] ,
    \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3]_0 ,
    \gpregsm1.user_valid_reg );
  output valid_fwft;
  output p_6_out;
  output empty_fwft_i;
  output \grxd.sig_rxd_prog_empty_d1_reg ;
  output [0:0]E;
  output ram_rd_en_i;
  output \sig_ip2bus_data_reg[24] ;
  output [12:0]\sig_ip2bus_data_reg[14] ;
  output \sig_ip2bus_data_reg[23] ;
  output \sig_ip2bus_data_reg[22] ;
  output \sig_ip2bus_data_reg[21] ;
  output \sig_ip2bus_data_reg[20] ;
  output \sig_ip2bus_data_reg[19] ;
  output [7:0]D;
  output \sig_ip2bus_data_reg[17] ;
  output \sig_ip2bus_data_reg[12] ;
  output \sig_ip2bus_data_reg[13] ;
  output \sig_ip2bus_data_reg[1] ;
  output \grid.ar_id_r_reg[0] ;
  output \gc0.count_reg[0] ;
  output \gc0.count_reg[0]_0 ;
  output sig_rxd_pe_event16_out;
  output [4:0]v1_reg;
  output [11:0]\DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram ;
  output [4:0]v1_reg_0;
  output \sig_register_array_reg[0][2] ;
  input \gcc0.gc0.count_d1_reg[11] ;
  input s_axi_aclk;
  input [1:0]Q;
  input p_16_out;
  input [0:0]rd_pntr_inv_pad;
  input [11:0]\gcc0.gc0.count_d1_reg[11]_0 ;
  input [7:0]S;
  input [3:0]\gcc0.gc0.count_d1_reg[11]_1 ;
  input axis_rd_en__0;
  input rst_int_sync;
  input rd_en_int_sync;
  input rst_int_sync_1;
  input axi4_fifo_rd_en_i;
  input \GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9] ;
  input out;
  input sig_ip2bus_data1__0;
  input [3:0]\goreg_dm.dout_i_reg[18] ;
  input \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3] ;
  input sig_rx_channel_reset_reg;
  input [3:0]\sig_register_array_reg[1][1] ;
  input \GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9]_0 ;
  input \GEN_BKEND_CE_REGISTERS[6].ce_out_i_reg[6] ;
  input \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0] ;
  input sig_rx_channel_reset_reg_0;
  input [0:0]sig_Bus2IP_RdCE;
  input [17:0]s_axi4_araddr;
  input \s_axi4_araddr[18] ;
  input \s_axi4_araddr[22] ;
  input sig_rxd_prog_empty_d1;
  input [9:0]\gcc0.gc0.count_reg[9] ;
  input \GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg[7] ;
  input \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3]_0 ;
  input [0:0]\gpregsm1.user_valid_reg ;

  wire [7:0]D;
  wire [11:0]\DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram ;
  wire [0:0]E;
  wire \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0] ;
  wire \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3] ;
  wire \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3]_0 ;
  wire \GEN_BKEND_CE_REGISTERS[6].ce_out_i_reg[6] ;
  wire \GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg[7] ;
  wire \GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9] ;
  wire \GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9]_0 ;
  wire [1:0]Q;
  wire [7:0]S;
  wire axi4_fifo_rd_en_i;
  wire axis_rd_en__0;
  wire [5:0]\c2/v1_reg ;
  wire empty_fwft_i;
  wire \gc0.count_reg[0] ;
  wire \gc0.count_reg[0]_0 ;
  wire \gcc0.gc0.count_d1_reg[11] ;
  wire [11:0]\gcc0.gc0.count_d1_reg[11]_0 ;
  wire [3:0]\gcc0.gc0.count_d1_reg[11]_1 ;
  wire [9:0]\gcc0.gc0.count_reg[9] ;
  wire [3:0]\goreg_dm.dout_i_reg[18] ;
  wire [0:0]\gpregsm1.user_valid_reg ;
  wire \grid.ar_id_r_reg[0] ;
  wire \grxd.sig_rxd_prog_empty_d1_reg ;
  wire out;
  wire p_16_out;
  wire p_2_out;
  wire p_6_out;
  wire ram_rd_en_i;
  wire rd_en_int_sync;
  wire [0:0]rd_pntr_inv_pad;
  wire rpntr_n_31;
  wire rpntr_n_32;
  wire rpntr_n_33;
  wire rpntr_n_34;
  wire rpntr_n_35;
  wire rst_int_sync;
  wire rst_int_sync_1;
  wire [17:0]s_axi4_araddr;
  wire \s_axi4_araddr[18] ;
  wire \s_axi4_araddr[22] ;
  wire s_axi_aclk;
  wire [0:0]sig_Bus2IP_RdCE;
  wire sig_ip2bus_data1__0;
  wire \sig_ip2bus_data_reg[12] ;
  wire \sig_ip2bus_data_reg[13] ;
  wire [12:0]\sig_ip2bus_data_reg[14] ;
  wire \sig_ip2bus_data_reg[17] ;
  wire \sig_ip2bus_data_reg[19] ;
  wire \sig_ip2bus_data_reg[1] ;
  wire \sig_ip2bus_data_reg[20] ;
  wire \sig_ip2bus_data_reg[21] ;
  wire \sig_ip2bus_data_reg[22] ;
  wire \sig_ip2bus_data_reg[23] ;
  wire \sig_ip2bus_data_reg[24] ;
  wire \sig_register_array_reg[0][2] ;
  wire [3:0]\sig_register_array_reg[1][1] ;
  wire sig_rx_channel_reset_reg;
  wire sig_rx_channel_reset_reg_0;
  wire sig_rxd_pe_event16_out;
  wire sig_rxd_prog_empty_d1;
  wire [4:0]v1_reg;
  wire [4:0]v1_reg_0;
  wire valid_fwft;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_0_4_dc_ss_fwft \gr1.gdcf.dc 
       (.D(D),
        .\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0] (\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0] ),
        .\GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3] (\GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3] ),
        .\GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3]_0 (\GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3]_0 ),
        .\GEN_BKEND_CE_REGISTERS[6].ce_out_i_reg[6] (\GEN_BKEND_CE_REGISTERS[6].ce_out_i_reg[6] ),
        .\GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg[7] (\GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg[7] ),
        .\GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9] (\GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9] ),
        .\GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9]_0 (\GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9]_0 ),
        .Q(\sig_ip2bus_data_reg[14] ),
        .axis_rd_en__0(axis_rd_en__0),
        .\goreg_dm.dout_i_reg[18] (\goreg_dm.dout_i_reg[18] ),
        .\gpregsm1.user_valid_reg (\gpregsm1.user_valid_reg ),
        .\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[2] (Q[1]),
        .out(out),
        .s_axi_aclk(s_axi_aclk),
        .sig_Bus2IP_RdCE(sig_Bus2IP_RdCE),
        .sig_ip2bus_data1__0(sig_ip2bus_data1__0),
        .\sig_ip2bus_data_reg[12] (\sig_ip2bus_data_reg[12] ),
        .\sig_ip2bus_data_reg[13] (\sig_ip2bus_data_reg[13] ),
        .\sig_ip2bus_data_reg[17] (\sig_ip2bus_data_reg[17] ),
        .\sig_ip2bus_data_reg[19] (\sig_ip2bus_data_reg[19] ),
        .\sig_ip2bus_data_reg[1] (\sig_ip2bus_data_reg[1] ),
        .\sig_ip2bus_data_reg[20] (\sig_ip2bus_data_reg[20] ),
        .\sig_ip2bus_data_reg[21] (\sig_ip2bus_data_reg[21] ),
        .\sig_ip2bus_data_reg[22] (\sig_ip2bus_data_reg[22] ),
        .\sig_ip2bus_data_reg[23] (\sig_ip2bus_data_reg[23] ),
        .\sig_ip2bus_data_reg[24] (\sig_ip2bus_data_reg[24] ),
        .\sig_register_array_reg[0][2] (\sig_register_array_reg[0][2] ),
        .\sig_register_array_reg[1][1] (\sig_register_array_reg[1][1] ),
        .sig_rx_channel_reset_reg(sig_rx_channel_reset_reg),
        .sig_rx_channel_reset_reg_0(sig_rx_channel_reset_reg_0),
        .valid_fwft(valid_fwft));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_0_4_rd_fwft \gr1.rfwft 
       (.E(E),
        .Q(Q),
        .axi4_fifo_rd_en_i(axi4_fifo_rd_en_i),
        .axis_rd_en__0(axis_rd_en__0),
        .empty_fwft_i(empty_fwft_i),
        .\gc0.count_reg[0] (p_6_out),
        .p_2_out(p_2_out),
        .ram_rd_en_i(ram_rd_en_i),
        .rd_en_int_sync(rd_en_int_sync),
        .rst_int_sync(rst_int_sync),
        .rst_int_sync_1(rst_int_sync_1),
        .s_axi_aclk(s_axi_aclk),
        .valid_fwft(valid_fwft));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_0_4_rd_pe_ss \grss.gpe.rdpe 
       (.E(p_6_out),
        .Q(Q[1]),
        .S(S),
        .\gcc0.gc0.count_d1_reg[10] (\gcc0.gc0.count_d1_reg[11]_0 [10:0]),
        .\gcc0.gc0.count_d1_reg[11] (\gcc0.gc0.count_d1_reg[11]_1 ),
        .\grxd.sig_rxd_prog_empty_d1_reg (\grxd.sig_rxd_prog_empty_d1_reg ),
        .p_16_out(p_16_out),
        .rd_pntr_inv_pad(rd_pntr_inv_pad),
        .s_axi_aclk(s_axi_aclk),
        .sig_rxd_pe_event16_out(sig_rxd_pe_event16_out),
        .sig_rxd_prog_empty_d1(sig_rxd_prog_empty_d1));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_0_4_rd_status_flags_ss \grss.rsts 
       (.E(p_6_out),
        .Q(Q[1]),
        .\gc0.count_d1_reg[0] (rpntr_n_31),
        .\gc0.count_d1_reg[2] (rpntr_n_32),
        .\gc0.count_d1_reg[4] (rpntr_n_33),
        .\gc0.count_d1_reg[6] (rpntr_n_34),
        .\gc0.count_d1_reg[8] (rpntr_n_35),
        .\gcc0.gc0.count_d1_reg[11] (\gcc0.gc0.count_d1_reg[11] ),
        .p_16_out(p_16_out),
        .p_2_out(p_2_out),
        .s_axi_aclk(s_axi_aclk),
        .v1_reg(\c2/v1_reg ));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_0_4_rd_bin_cntr rpntr
       (.E(p_6_out),
        .Q(\DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram ),
        .\gc0.count_reg[0]_0 (\gc0.count_reg[0] ),
        .\gc0.count_reg[0]_1 (\gc0.count_reg[0]_0 ),
        .\gcc0.gc0.count_d1_reg[11] (\gcc0.gc0.count_d1_reg[11]_0 ),
        .\gcc0.gc0.count_reg[9] (\gcc0.gc0.count_reg[9] ),
        .\grid.ar_id_r_reg[0] (\grid.ar_id_r_reg[0] ),
        .\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[2] (Q[1]),
        .ram_empty_fb_i_reg(rpntr_n_31),
        .ram_empty_fb_i_reg_0(rpntr_n_32),
        .ram_empty_fb_i_reg_1(rpntr_n_33),
        .ram_empty_fb_i_reg_2(rpntr_n_34),
        .ram_empty_fb_i_reg_3(rpntr_n_35),
        .s_axi4_araddr(s_axi4_araddr),
        .\s_axi4_araddr[18] (\s_axi4_araddr[18] ),
        .\s_axi4_araddr[22] (\s_axi4_araddr[22] ),
        .s_axi_aclk(s_axi_aclk),
        .v1_reg(v1_reg),
        .v1_reg_0(v1_reg_0),
        .v1_reg_1(\c2/v1_reg ));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_0_4_rd_pe_ss
   (\grxd.sig_rxd_prog_empty_d1_reg ,
    sig_rxd_pe_event16_out,
    p_16_out,
    s_axi_aclk,
    Q,
    E,
    rd_pntr_inv_pad,
    \gcc0.gc0.count_d1_reg[10] ,
    S,
    \gcc0.gc0.count_d1_reg[11] ,
    sig_rxd_prog_empty_d1);
  output \grxd.sig_rxd_prog_empty_d1_reg ;
  output sig_rxd_pe_event16_out;
  input p_16_out;
  input s_axi_aclk;
  input [0:0]Q;
  input [0:0]E;
  input [0:0]rd_pntr_inv_pad;
  input [10:0]\gcc0.gc0.count_d1_reg[10] ;
  input [7:0]S;
  input [3:0]\gcc0.gc0.count_d1_reg[11] ;
  input sig_rxd_prog_empty_d1;

  wire [0:0]E;
  wire [0:0]Q;
  wire [7:0]S;
  wire [12:1]diff_pntr_pad;
  wire [10:0]\gcc0.gc0.count_d1_reg[10] ;
  wire [3:0]\gcc0.gc0.count_d1_reg[11] ;
  wire \gpes.prog_empty_i_i_1_n_0 ;
  wire \gpes.prog_empty_i_i_2_n_0 ;
  wire \gpes.prog_empty_i_i_3_n_0 ;
  wire \grxd.sig_rxd_prog_empty_d1_reg ;
  wire p_16_out;
  wire plusOp_carry__0_n_12;
  wire plusOp_carry__0_n_13;
  wire plusOp_carry__0_n_14;
  wire plusOp_carry__0_n_15;
  wire plusOp_carry__0_n_5;
  wire plusOp_carry__0_n_6;
  wire plusOp_carry__0_n_7;
  wire plusOp_carry_n_0;
  wire plusOp_carry_n_1;
  wire plusOp_carry_n_10;
  wire plusOp_carry_n_11;
  wire plusOp_carry_n_12;
  wire plusOp_carry_n_13;
  wire plusOp_carry_n_14;
  wire plusOp_carry_n_15;
  wire plusOp_carry_n_2;
  wire plusOp_carry_n_3;
  wire plusOp_carry_n_5;
  wire plusOp_carry_n_6;
  wire plusOp_carry_n_7;
  wire plusOp_carry_n_8;
  wire plusOp_carry_n_9;
  wire ram_rd_en_i;
  wire ram_wr_en_i;
  wire [0:0]rd_pntr_inv_pad;
  wire s_axi_aclk;
  wire sig_rxd_pe_event16_out;
  wire sig_rxd_prog_empty_d1;
  wire [3:3]NLW_plusOp_carry_CO_UNCONNECTED;
  wire [7:3]NLW_plusOp_carry__0_CO_UNCONNECTED;
  wire [7:4]NLW_plusOp_carry__0_DI_UNCONNECTED;
  wire [7:4]NLW_plusOp_carry__0_O_UNCONNECTED;
  wire [7:4]NLW_plusOp_carry__0_S_UNCONNECTED;

  LUT5 #(
    .INIT(32'hFFDF0200)) 
    \gpes.prog_empty_i_i_1 
       (.I0(\gpes.prog_empty_i_i_2_n_0 ),
        .I1(\gpes.prog_empty_i_i_3_n_0 ),
        .I2(ram_wr_en_i),
        .I3(ram_rd_en_i),
        .I4(\grxd.sig_rxd_prog_empty_d1_reg ),
        .O(\gpes.prog_empty_i_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \gpes.prog_empty_i_i_2 
       (.I0(diff_pntr_pad[11]),
        .I1(diff_pntr_pad[10]),
        .I2(diff_pntr_pad[12]),
        .I3(diff_pntr_pad[7]),
        .I4(diff_pntr_pad[8]),
        .I5(diff_pntr_pad[9]),
        .O(\gpes.prog_empty_i_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \gpes.prog_empty_i_i_3 
       (.I0(diff_pntr_pad[3]),
        .I1(diff_pntr_pad[1]),
        .I2(diff_pntr_pad[2]),
        .I3(diff_pntr_pad[6]),
        .I4(diff_pntr_pad[4]),
        .I5(diff_pntr_pad[5]),
        .O(\gpes.prog_empty_i_i_3_n_0 ));
  FDPE #(
    .INIT(1'b1)) 
    \gpes.prog_empty_i_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\gpes.prog_empty_i_i_1_n_0 ),
        .PRE(Q),
        .Q(\grxd.sig_rxd_prog_empty_d1_reg ));
  FDCE #(
    .INIT(1'b0)) 
    \greg.gpcry_sym.diff_pntr_pad_reg[10] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(Q),
        .D(plusOp_carry__0_n_14),
        .Q(diff_pntr_pad[10]));
  FDCE #(
    .INIT(1'b0)) 
    \greg.gpcry_sym.diff_pntr_pad_reg[11] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(Q),
        .D(plusOp_carry__0_n_13),
        .Q(diff_pntr_pad[11]));
  FDCE #(
    .INIT(1'b0)) 
    \greg.gpcry_sym.diff_pntr_pad_reg[12] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(Q),
        .D(plusOp_carry__0_n_12),
        .Q(diff_pntr_pad[12]));
  FDCE #(
    .INIT(1'b0)) 
    \greg.gpcry_sym.diff_pntr_pad_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(Q),
        .D(plusOp_carry_n_15),
        .Q(diff_pntr_pad[1]));
  FDCE #(
    .INIT(1'b0)) 
    \greg.gpcry_sym.diff_pntr_pad_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(Q),
        .D(plusOp_carry_n_14),
        .Q(diff_pntr_pad[2]));
  FDCE #(
    .INIT(1'b0)) 
    \greg.gpcry_sym.diff_pntr_pad_reg[3] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(Q),
        .D(plusOp_carry_n_13),
        .Q(diff_pntr_pad[3]));
  FDCE #(
    .INIT(1'b0)) 
    \greg.gpcry_sym.diff_pntr_pad_reg[4] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(Q),
        .D(plusOp_carry_n_12),
        .Q(diff_pntr_pad[4]));
  FDCE #(
    .INIT(1'b0)) 
    \greg.gpcry_sym.diff_pntr_pad_reg[5] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(Q),
        .D(plusOp_carry_n_11),
        .Q(diff_pntr_pad[5]));
  FDCE #(
    .INIT(1'b0)) 
    \greg.gpcry_sym.diff_pntr_pad_reg[6] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(Q),
        .D(plusOp_carry_n_10),
        .Q(diff_pntr_pad[6]));
  FDCE #(
    .INIT(1'b0)) 
    \greg.gpcry_sym.diff_pntr_pad_reg[7] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(Q),
        .D(plusOp_carry_n_9),
        .Q(diff_pntr_pad[7]));
  FDCE #(
    .INIT(1'b0)) 
    \greg.gpcry_sym.diff_pntr_pad_reg[8] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(Q),
        .D(plusOp_carry_n_8),
        .Q(diff_pntr_pad[8]));
  FDCE #(
    .INIT(1'b0)) 
    \greg.gpcry_sym.diff_pntr_pad_reg[9] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(Q),
        .D(plusOp_carry__0_n_15),
        .Q(diff_pntr_pad[9]));
  FDCE #(
    .INIT(1'b0)) 
    \greg.ram_rd_en_i_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(Q),
        .D(E),
        .Q(ram_rd_en_i));
  FDCE #(
    .INIT(1'b0)) 
    \greg.ram_wr_en_i_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(Q),
        .D(p_16_out),
        .Q(ram_wr_en_i));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY8 plusOp_carry
       (.CI(rd_pntr_inv_pad),
        .CI_TOP(1'b0),
        .CO({plusOp_carry_n_0,plusOp_carry_n_1,plusOp_carry_n_2,plusOp_carry_n_3,NLW_plusOp_carry_CO_UNCONNECTED[3],plusOp_carry_n_5,plusOp_carry_n_6,plusOp_carry_n_7}),
        .DI(\gcc0.gc0.count_d1_reg[10] [7:0]),
        .O({plusOp_carry_n_8,plusOp_carry_n_9,plusOp_carry_n_10,plusOp_carry_n_11,plusOp_carry_n_12,plusOp_carry_n_13,plusOp_carry_n_14,plusOp_carry_n_15}),
        .S(S));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY8 plusOp_carry__0
       (.CI(plusOp_carry_n_0),
        .CI_TOP(1'b0),
        .CO({NLW_plusOp_carry__0_CO_UNCONNECTED[7:3],plusOp_carry__0_n_5,plusOp_carry__0_n_6,plusOp_carry__0_n_7}),
        .DI({NLW_plusOp_carry__0_DI_UNCONNECTED[7:4],1'b0,\gcc0.gc0.count_d1_reg[10] [10:8]}),
        .O({NLW_plusOp_carry__0_O_UNCONNECTED[7:4],plusOp_carry__0_n_12,plusOp_carry__0_n_13,plusOp_carry__0_n_14,plusOp_carry__0_n_15}),
        .S({NLW_plusOp_carry__0_S_UNCONNECTED[7:4],\gcc0.gc0.count_d1_reg[11] }));
  LUT2 #(
    .INIT(4'h2)) 
    \sig_register_array[0][12]_i_2 
       (.I0(\grxd.sig_rxd_prog_empty_d1_reg ),
        .I1(sig_rxd_prog_empty_d1),
        .O(sig_rxd_pe_event16_out));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_0_4_rd_status_flags_ss
   (p_2_out,
    \gc0.count_d1_reg[0] ,
    \gc0.count_d1_reg[2] ,
    \gc0.count_d1_reg[4] ,
    \gc0.count_d1_reg[6] ,
    \gc0.count_d1_reg[8] ,
    \gcc0.gc0.count_d1_reg[11] ,
    v1_reg,
    s_axi_aclk,
    Q,
    E,
    p_16_out);
  output p_2_out;
  input \gc0.count_d1_reg[0] ;
  input \gc0.count_d1_reg[2] ;
  input \gc0.count_d1_reg[4] ;
  input \gc0.count_d1_reg[6] ;
  input \gc0.count_d1_reg[8] ;
  input \gcc0.gc0.count_d1_reg[11] ;
  input [5:0]v1_reg;
  input s_axi_aclk;
  input [0:0]Q;
  input [0:0]E;
  input p_16_out;

  wire [0:0]E;
  wire [0:0]Q;
  wire c1_n_0;
  wire comp1;
  wire \gc0.count_d1_reg[0] ;
  wire \gc0.count_d1_reg[2] ;
  wire \gc0.count_d1_reg[4] ;
  wire \gc0.count_d1_reg[6] ;
  wire \gc0.count_d1_reg[8] ;
  wire \gcc0.gc0.count_d1_reg[11] ;
  wire p_16_out;
  wire p_2_out;
  wire s_axi_aclk;
  wire [5:0]v1_reg;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_0_4_compare_4 c1
       (.E(E),
        .comp1(comp1),
        .\gc0.count_d1_reg[0] (\gc0.count_d1_reg[0] ),
        .\gc0.count_d1_reg[2] (\gc0.count_d1_reg[2] ),
        .\gc0.count_d1_reg[4] (\gc0.count_d1_reg[4] ),
        .\gc0.count_d1_reg[6] (\gc0.count_d1_reg[6] ),
        .\gc0.count_d1_reg[8] (\gc0.count_d1_reg[8] ),
        .\gcc0.gc0.count_d1_reg[11] (\gcc0.gc0.count_d1_reg[11] ),
        .p_16_out(p_16_out),
        .p_2_out(p_2_out),
        .ram_empty_fb_i_reg(c1_n_0));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_0_4_compare_5 c2
       (.comp1(comp1),
        .v1_reg(v1_reg));
  (* equivalent_register_removal = "no" *) 
  FDPE #(
    .INIT(1'b1)) 
    ram_empty_fb_i_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(c1_n_0),
        .PRE(Q),
        .Q(p_2_out));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_0_4_reset_blk_ramfifo
   (s_axi_aclk,
    inverted_reset);
  input s_axi_aclk;
  input inverted_reset;

  wire inverted_reset;
  (* async_reg = "true" *) (* msgon = "true" *) wire rst_d1;
  (* async_reg = "true" *) (* msgon = "true" *) wire rst_d2;
  (* async_reg = "true" *) (* msgon = "true" *) wire rst_d3;
  (* async_reg = "true" *) (* msgon = "true" *) wire rst_rd_reg1;
  (* async_reg = "true" *) (* msgon = "true" *) wire rst_rd_reg2;
  (* async_reg = "true" *) (* msgon = "true" *) wire rst_wr_reg1;
  (* async_reg = "true" *) (* msgon = "true" *) wire rst_wr_reg2;
  wire s_axi_aclk;

  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* msgon = "true" *) 
  FDPE #(
    .INIT(1'b1)) 
    \grstd1.grst_full.grst_f.rst_d1_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(1'b0),
        .PRE(inverted_reset),
        .Q(rst_d1));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* msgon = "true" *) 
  FDPE #(
    .INIT(1'b1)) 
    \grstd1.grst_full.grst_f.rst_d2_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(rst_d1),
        .PRE(inverted_reset),
        .Q(rst_d2));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* msgon = "true" *) 
  FDPE #(
    .INIT(1'b1)) 
    \grstd1.grst_full.grst_f.rst_d3_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(rst_d2),
        .PRE(inverted_reset),
        .Q(rst_d3));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* msgon = "true" *) 
  FDPE #(
    .INIT(1'b0)) 
    \ngwrdrst.grst.g7serrst.rst_rd_reg1_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(1'b0),
        .PRE(inverted_reset),
        .Q(rst_rd_reg1));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* msgon = "true" *) 
  FDPE #(
    .INIT(1'b0)) 
    \ngwrdrst.grst.g7serrst.rst_rd_reg2_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(rst_rd_reg1),
        .PRE(inverted_reset),
        .Q(rst_rd_reg2));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* msgon = "true" *) 
  FDPE #(
    .INIT(1'b0)) 
    \ngwrdrst.grst.g7serrst.rst_wr_reg1_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(1'b0),
        .PRE(inverted_reset),
        .Q(rst_wr_reg1));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* msgon = "true" *) 
  FDPE #(
    .INIT(1'b0)) 
    \ngwrdrst.grst.g7serrst.rst_wr_reg2_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(rst_wr_reg1),
        .PRE(inverted_reset),
        .Q(rst_wr_reg2));
endmodule

(* ORIG_REF_NAME = "fifo_generator_v13_0_4_reset_blk_ramfifo" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_0_4_reset_blk_ramfifo__parameterized0
   (out,
    ram_full_i_reg,
    \ngwrdrst.grst.g7serrst.rst_wr_reg1_reg_0 ,
    AR,
    WEA,
    Q,
    s_axi_aclk,
    wr_en_int_sync,
    rst_int_sync,
    rst_int_sync_1,
    p_16_out,
    sync_areset_n);
  output out;
  output ram_full_i_reg;
  output \ngwrdrst.grst.g7serrst.rst_wr_reg1_reg_0 ;
  output [0:0]AR;
  output [0:0]WEA;
  output [1:0]Q;
  input s_axi_aclk;
  input wr_en_int_sync;
  input rst_int_sync;
  input rst_int_sync_1;
  input p_16_out;
  input sync_areset_n;

  wire [0:0]AR;
  wire [1:0]Q;
  wire [0:0]WEA;
  wire \ngwrdrst.grst.g7serrst.rd_rst_asreg_d1_reg_n_0 ;
  wire \ngwrdrst.grst.g7serrst.rd_rst_asreg_i_1_n_0 ;
  wire \ngwrdrst.grst.g7serrst.rd_rst_reg[2]_i_1_n_0 ;
  wire \ngwrdrst.grst.g7serrst.rst_wr_reg1_reg_0 ;
  wire \ngwrdrst.grst.g7serrst.wr_rst_asreg_d1_reg_n_0 ;
  wire \ngwrdrst.grst.g7serrst.wr_rst_asreg_i_1_n_0 ;
  wire \ngwrdrst.grst.g7serrst.wr_rst_reg[1]_i_1_n_0 ;
  wire p_16_out;
  wire rd_rst_asreg;
  wire rd_rst_asreg_d2;
  (* async_reg = "true" *) (* msgon = "true" *) wire rst_d1;
  (* async_reg = "true" *) (* msgon = "true" *) wire rst_d2;
  (* async_reg = "true" *) (* msgon = "true" *) wire rst_d3;
  (* async_reg = "true" *) (* msgon = "true" *) wire rst_d4;
  (* async_reg = "true" *) (* msgon = "true" *) wire rst_d5;
  wire rst_int_sync;
  wire rst_int_sync_1;
  (* async_reg = "true" *) (* msgon = "true" *) wire rst_rd_reg1;
  (* async_reg = "true" *) (* msgon = "true" *) wire rst_rd_reg2;
  (* async_reg = "true" *) (* msgon = "true" *) wire rst_wr_reg1;
  (* async_reg = "true" *) (* msgon = "true" *) wire rst_wr_reg2;
  wire s_axi_aclk;
  wire sync_areset_n;
  wire wr_en_int_sync;
  wire wr_rst_asreg;
  wire wr_rst_asreg_d2;

  assign out = rst_d2;
  assign ram_full_i_reg = rst_d5;
  LUT5 #(
    .INIT(32'hAAABAAA8)) 
    \DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_1 
       (.I0(wr_en_int_sync),
        .I1(rst_int_sync),
        .I2(Q[0]),
        .I3(rst_int_sync_1),
        .I4(p_16_out),
        .O(WEA));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* msgon = "true" *) 
  FDPE #(
    .INIT(1'b1)) 
    \grstd1.grst_full.grst_f.rst_d1_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(1'b0),
        .PRE(\ngwrdrst.grst.g7serrst.rst_wr_reg1_reg_0 ),
        .Q(rst_d1));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* msgon = "true" *) 
  FDPE #(
    .INIT(1'b1)) 
    \grstd1.grst_full.grst_f.rst_d2_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(rst_d1),
        .PRE(\ngwrdrst.grst.g7serrst.rst_wr_reg1_reg_0 ),
        .Q(rst_d2));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* msgon = "true" *) 
  FDPE #(
    .INIT(1'b1)) 
    \grstd1.grst_full.grst_f.rst_d3_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(rst_d2),
        .PRE(\ngwrdrst.grst.g7serrst.rst_wr_reg1_reg_0 ),
        .Q(rst_d3));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* msgon = "true" *) 
  FDPE #(
    .INIT(1'b1)) 
    \grstd1.grst_full.grst_f.rst_d4_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(rst_d3),
        .PRE(\ngwrdrst.grst.g7serrst.rst_wr_reg1_reg_0 ),
        .Q(rst_d4));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* msgon = "true" *) 
  FDPE #(
    .INIT(1'b1)) 
    \grstd1.grst_full.grst_f.rst_d5_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(rst_d4),
        .PRE(\ngwrdrst.grst.g7serrst.rst_wr_reg1_reg_0 ),
        .Q(rst_d5));
  FDRE #(
    .INIT(1'b0)) 
    \ngwrdrst.grst.g7serrst.rd_rst_asreg_d1_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(rd_rst_asreg),
        .Q(\ngwrdrst.grst.g7serrst.rd_rst_asreg_d1_reg_n_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ngwrdrst.grst.g7serrst.rd_rst_asreg_d2_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\ngwrdrst.grst.g7serrst.rd_rst_asreg_d1_reg_n_0 ),
        .Q(rd_rst_asreg_d2),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h2)) 
    \ngwrdrst.grst.g7serrst.rd_rst_asreg_i_1 
       (.I0(rd_rst_asreg),
        .I1(\ngwrdrst.grst.g7serrst.rd_rst_asreg_d1_reg_n_0 ),
        .O(\ngwrdrst.grst.g7serrst.rd_rst_asreg_i_1_n_0 ));
  FDPE #(
    .INIT(1'b1)) 
    \ngwrdrst.grst.g7serrst.rd_rst_asreg_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\ngwrdrst.grst.g7serrst.rd_rst_asreg_i_1_n_0 ),
        .PRE(rst_rd_reg2),
        .Q(rd_rst_asreg));
  LUT2 #(
    .INIT(4'h2)) 
    \ngwrdrst.grst.g7serrst.rd_rst_reg[2]_i_1 
       (.I0(rd_rst_asreg),
        .I1(rd_rst_asreg_d2),
        .O(\ngwrdrst.grst.g7serrst.rd_rst_reg[2]_i_1_n_0 ));
  (* equivalent_register_removal = "no" *) 
  FDPE #(
    .INIT(1'b1)) 
    \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(1'b0),
        .PRE(\ngwrdrst.grst.g7serrst.rd_rst_reg[2]_i_1_n_0 ),
        .Q(Q[0]));
  (* equivalent_register_removal = "no" *) 
  FDPE #(
    .INIT(1'b1)) 
    \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(1'b0),
        .PRE(\ngwrdrst.grst.g7serrst.rd_rst_reg[2]_i_1_n_0 ),
        .Q(Q[1]));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* msgon = "true" *) 
  FDPE #(
    .INIT(1'b0)) 
    \ngwrdrst.grst.g7serrst.rst_rd_reg1_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(1'b0),
        .PRE(\ngwrdrst.grst.g7serrst.rst_wr_reg1_reg_0 ),
        .Q(rst_rd_reg1));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* msgon = "true" *) 
  FDPE #(
    .INIT(1'b0)) 
    \ngwrdrst.grst.g7serrst.rst_rd_reg2_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(rst_rd_reg1),
        .PRE(\ngwrdrst.grst.g7serrst.rst_wr_reg1_reg_0 ),
        .Q(rst_rd_reg2));
  LUT1 #(
    .INIT(2'h1)) 
    \ngwrdrst.grst.g7serrst.rst_wr_reg1_i_1 
       (.I0(sync_areset_n),
        .O(\ngwrdrst.grst.g7serrst.rst_wr_reg1_reg_0 ));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* msgon = "true" *) 
  FDPE #(
    .INIT(1'b0)) 
    \ngwrdrst.grst.g7serrst.rst_wr_reg1_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(1'b0),
        .PRE(\ngwrdrst.grst.g7serrst.rst_wr_reg1_reg_0 ),
        .Q(rst_wr_reg1));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* msgon = "true" *) 
  FDPE #(
    .INIT(1'b0)) 
    \ngwrdrst.grst.g7serrst.rst_wr_reg2_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(rst_wr_reg1),
        .PRE(\ngwrdrst.grst.g7serrst.rst_wr_reg1_reg_0 ),
        .Q(rst_wr_reg2));
  FDRE #(
    .INIT(1'b0)) 
    \ngwrdrst.grst.g7serrst.wr_rst_asreg_d1_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(wr_rst_asreg),
        .Q(\ngwrdrst.grst.g7serrst.wr_rst_asreg_d1_reg_n_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ngwrdrst.grst.g7serrst.wr_rst_asreg_d2_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\ngwrdrst.grst.g7serrst.wr_rst_asreg_d1_reg_n_0 ),
        .Q(wr_rst_asreg_d2),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h2)) 
    \ngwrdrst.grst.g7serrst.wr_rst_asreg_i_1 
       (.I0(wr_rst_asreg),
        .I1(\ngwrdrst.grst.g7serrst.wr_rst_asreg_d1_reg_n_0 ),
        .O(\ngwrdrst.grst.g7serrst.wr_rst_asreg_i_1_n_0 ));
  FDPE #(
    .INIT(1'b1)) 
    \ngwrdrst.grst.g7serrst.wr_rst_asreg_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\ngwrdrst.grst.g7serrst.wr_rst_asreg_i_1_n_0 ),
        .PRE(rst_wr_reg2),
        .Q(wr_rst_asreg));
  LUT2 #(
    .INIT(4'h2)) 
    \ngwrdrst.grst.g7serrst.wr_rst_reg[1]_i_1 
       (.I0(wr_rst_asreg),
        .I1(wr_rst_asreg_d2),
        .O(\ngwrdrst.grst.g7serrst.wr_rst_reg[1]_i_1_n_0 ));
  (* equivalent_register_removal = "no" *) 
  FDPE #(
    .INIT(1'b1)) 
    \ngwrdrst.grst.g7serrst.wr_rst_reg_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(1'b0),
        .PRE(\ngwrdrst.grst.g7serrst.wr_rst_reg[1]_i_1_n_0 ),
        .Q(AR));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_0_4_synth
   (\grxd.fg_rxd_wr_length_reg[3] ,
    empty_fwft_i,
    prog_full_i,
    \grxd.sig_rxd_prog_empty_d1_reg ,
    SR,
    \sig_ip2bus_data_reg[24] ,
    Q,
    \sig_ip2bus_data_reg[23] ,
    \sig_ip2bus_data_reg[22] ,
    \sig_ip2bus_data_reg[21] ,
    \sig_ip2bus_data_reg[20] ,
    \sig_ip2bus_data_reg[19] ,
    D,
    \sig_ip2bus_data_reg[17] ,
    \sig_ip2bus_data_reg[12] ,
    \sig_ip2bus_data_reg[13] ,
    \sig_ip2bus_data_reg[1] ,
    rx_complete,
    E,
    \grid.ar_id_r_reg[0] ,
    \gc0.count_reg[0] ,
    \gc0.count_reg[0]_0 ,
    axi_str_rxd_tready,
    sig_rxd_pe_event16_out,
    \sig_register_array_reg[0][2] ,
    \grxd.rx_partial_pkt_reg ,
    s_axi4_rdata,
    s_axi_aclk,
    axi_str_rxd_tdata,
    axis_rd_en__0,
    axi_str_rxd_tvalid,
    axi4_fifo_rd_en_i,
    axi_str_rxd_tlast,
    rx_len_wr_en,
    s_axi_aresetn,
    Axi_Str_TxD_AReset,
    \GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9] ,
    out,
    \goreg_dm.dout_i_reg[18] ,
    \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3] ,
    sig_rx_channel_reset_reg,
    \sig_register_array_reg[1][1] ,
    \GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9]_0 ,
    \GEN_BKEND_CE_REGISTERS[6].ce_out_i_reg[6] ,
    \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0] ,
    sig_rx_channel_reset_reg_0,
    sig_Bus2IP_RdCE,
    \grxd.rx_partial_pkt_reg_0 ,
    s_axi4_araddr,
    \s_axi4_araddr[18] ,
    \s_axi4_araddr[22] ,
    sig_rxd_prog_empty_d1,
    sync_areset_n,
    sig_rd_rlen_reg,
    in0,
    \GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg[7] ,
    \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3]_0 );
  output \grxd.fg_rxd_wr_length_reg[3] ;
  output empty_fwft_i;
  output prog_full_i;
  output \grxd.sig_rxd_prog_empty_d1_reg ;
  output [0:0]SR;
  output \sig_ip2bus_data_reg[24] ;
  output [12:0]Q;
  output \sig_ip2bus_data_reg[23] ;
  output \sig_ip2bus_data_reg[22] ;
  output \sig_ip2bus_data_reg[21] ;
  output \sig_ip2bus_data_reg[20] ;
  output \sig_ip2bus_data_reg[19] ;
  output [7:0]D;
  output \sig_ip2bus_data_reg[17] ;
  output \sig_ip2bus_data_reg[12] ;
  output \sig_ip2bus_data_reg[13] ;
  output \sig_ip2bus_data_reg[1] ;
  output rx_complete;
  output [0:0]E;
  output \grid.ar_id_r_reg[0] ;
  output \gc0.count_reg[0] ;
  output \gc0.count_reg[0]_0 ;
  output axi_str_rxd_tready;
  output sig_rxd_pe_event16_out;
  output \sig_register_array_reg[0][2] ;
  output \grxd.rx_partial_pkt_reg ;
  output [127:0]s_axi4_rdata;
  input s_axi_aclk;
  input [127:0]axi_str_rxd_tdata;
  input axis_rd_en__0;
  input axi_str_rxd_tvalid;
  input axi4_fifo_rd_en_i;
  input axi_str_rxd_tlast;
  input rx_len_wr_en;
  input s_axi_aresetn;
  input Axi_Str_TxD_AReset;
  input \GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9] ;
  input out;
  input [3:0]\goreg_dm.dout_i_reg[18] ;
  input \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3] ;
  input sig_rx_channel_reset_reg;
  input [3:0]\sig_register_array_reg[1][1] ;
  input \GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9]_0 ;
  input \GEN_BKEND_CE_REGISTERS[6].ce_out_i_reg[6] ;
  input \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0] ;
  input sig_rx_channel_reset_reg_0;
  input [0:0]sig_Bus2IP_RdCE;
  input \grxd.rx_partial_pkt_reg_0 ;
  input [17:0]s_axi4_araddr;
  input \s_axi4_araddr[18] ;
  input \s_axi4_araddr[22] ;
  input sig_rxd_prog_empty_d1;
  input sync_areset_n;
  input sig_rd_rlen_reg;
  input in0;
  input \GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg[7] ;
  input \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3]_0 ;

  wire Axi_Str_TxD_AReset;
  wire [7:0]D;
  wire [0:0]E;
  wire \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0] ;
  wire \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3] ;
  wire \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3]_0 ;
  wire \GEN_BKEND_CE_REGISTERS[6].ce_out_i_reg[6] ;
  wire \GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg[7] ;
  wire \GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9] ;
  wire \GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9]_0 ;
  wire [12:0]Q;
  wire [0:0]SR;
  wire axi4_fifo_rd_en_i;
  wire [127:0]axi_str_rxd_tdata;
  wire axi_str_rxd_tlast;
  wire axi_str_rxd_tready;
  wire axi_str_rxd_tvalid;
  wire axis_rd_en__0;
  wire empty_fwft_i;
  wire \gc0.count_reg[0] ;
  wire \gc0.count_reg[0]_0 ;
  wire [3:0]\goreg_dm.dout_i_reg[18] ;
  wire \grid.ar_id_r_reg[0] ;
  wire \grxd.fg_rxd_wr_length_reg[3] ;
  wire \grxd.rx_partial_pkt_reg ;
  wire \grxd.rx_partial_pkt_reg_0 ;
  wire \grxd.sig_rxd_prog_empty_d1_reg ;
  wire in0;
  wire inverted_reset;
  wire out;
  wire prog_full_i;
  wire rx_complete;
  wire rx_len_wr_en;
  wire [17:0]s_axi4_araddr;
  wire \s_axi4_araddr[18] ;
  wire \s_axi4_araddr[22] ;
  wire [127:0]s_axi4_rdata;
  wire s_axi_aclk;
  wire s_axi_aresetn;
  wire [0:0]sig_Bus2IP_RdCE;
  wire \sig_ip2bus_data_reg[12] ;
  wire \sig_ip2bus_data_reg[13] ;
  wire \sig_ip2bus_data_reg[17] ;
  wire \sig_ip2bus_data_reg[19] ;
  wire \sig_ip2bus_data_reg[1] ;
  wire \sig_ip2bus_data_reg[20] ;
  wire \sig_ip2bus_data_reg[21] ;
  wire \sig_ip2bus_data_reg[22] ;
  wire \sig_ip2bus_data_reg[23] ;
  wire \sig_ip2bus_data_reg[24] ;
  wire sig_rd_rlen_reg;
  wire \sig_register_array_reg[0][2] ;
  wire [3:0]\sig_register_array_reg[1][1] ;
  wire sig_rx_channel_reset_reg;
  wire sig_rx_channel_reset_reg_0;
  wire sig_rxd_pe_event16_out;
  wire sig_rxd_prog_empty_d1;
  wire sync_areset_n;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_0_4_fifo_generator_top \gaxis_fifo.gaxisf.axisf 
       (.Axi_Str_TxD_AReset(Axi_Str_TxD_AReset),
        .D(D),
        .E(E),
        .\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0] (\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0] ),
        .\GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3] (\GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3] ),
        .\GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3]_0 (\GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3]_0 ),
        .\GEN_BKEND_CE_REGISTERS[6].ce_out_i_reg[6] (\GEN_BKEND_CE_REGISTERS[6].ce_out_i_reg[6] ),
        .\GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg[7] (\GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg[7] ),
        .\GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9] (\GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9] ),
        .\GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9]_0 (\GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9]_0 ),
        .Q(Q),
        .SR(SR),
        .axi4_fifo_rd_en_i(axi4_fifo_rd_en_i),
        .axi_str_rxd_tdata(axi_str_rxd_tdata),
        .axi_str_rxd_tlast(axi_str_rxd_tlast),
        .axi_str_rxd_tready(axi_str_rxd_tready),
        .axi_str_rxd_tvalid(axi_str_rxd_tvalid),
        .axis_rd_en__0(axis_rd_en__0),
        .empty_fwft_i(empty_fwft_i),
        .\gc0.count_reg[0] (\gc0.count_reg[0] ),
        .\gc0.count_reg[0]_0 (\gc0.count_reg[0]_0 ),
        .\goreg_dm.dout_i_reg[18] (\goreg_dm.dout_i_reg[18] ),
        .\grid.ar_id_r_reg[0] (\grid.ar_id_r_reg[0] ),
        .\grxd.fg_rxd_wr_length_reg[3] (\grxd.fg_rxd_wr_length_reg[3] ),
        .\grxd.rx_partial_pkt_reg (\grxd.rx_partial_pkt_reg ),
        .\grxd.rx_partial_pkt_reg_0 (\grxd.rx_partial_pkt_reg_0 ),
        .\grxd.sig_rxd_prog_empty_d1_reg (\grxd.sig_rxd_prog_empty_d1_reg ),
        .in0(in0),
        .inverted_reset(inverted_reset),
        .out(out),
        .prog_full_i(prog_full_i),
        .rx_complete(rx_complete),
        .rx_len_wr_en(rx_len_wr_en),
        .s_axi4_araddr(s_axi4_araddr),
        .\s_axi4_araddr[18] (\s_axi4_araddr[18] ),
        .\s_axi4_araddr[22] (\s_axi4_araddr[22] ),
        .s_axi4_rdata(s_axi4_rdata),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_aresetn(s_axi_aresetn),
        .sig_Bus2IP_RdCE(sig_Bus2IP_RdCE),
        .\sig_ip2bus_data_reg[12] (\sig_ip2bus_data_reg[12] ),
        .\sig_ip2bus_data_reg[13] (\sig_ip2bus_data_reg[13] ),
        .\sig_ip2bus_data_reg[17] (\sig_ip2bus_data_reg[17] ),
        .\sig_ip2bus_data_reg[19] (\sig_ip2bus_data_reg[19] ),
        .\sig_ip2bus_data_reg[1] (\sig_ip2bus_data_reg[1] ),
        .\sig_ip2bus_data_reg[20] (\sig_ip2bus_data_reg[20] ),
        .\sig_ip2bus_data_reg[21] (\sig_ip2bus_data_reg[21] ),
        .\sig_ip2bus_data_reg[22] (\sig_ip2bus_data_reg[22] ),
        .\sig_ip2bus_data_reg[23] (\sig_ip2bus_data_reg[23] ),
        .\sig_ip2bus_data_reg[24] (\sig_ip2bus_data_reg[24] ),
        .sig_rd_rlen_reg(sig_rd_rlen_reg),
        .\sig_register_array_reg[0][2] (\sig_register_array_reg[0][2] ),
        .\sig_register_array_reg[1][1] (\sig_register_array_reg[1][1] ),
        .sig_rx_channel_reset_reg(sig_rx_channel_reset_reg),
        .sig_rx_channel_reset_reg_0(sig_rx_channel_reset_reg_0),
        .sig_rxd_pe_event16_out(sig_rxd_pe_event16_out),
        .sig_rxd_prog_empty_d1(sig_rxd_prog_empty_d1),
        .sync_areset_n(sync_areset_n));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_0_4_reset_blk_ramfifo \reset_gen_cc.rstblk_cc 
       (.inverted_reset(inverted_reset),
        .s_axi_aclk(s_axi_aclk));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_0_4_updn_cntr
   (\sig_ip2bus_data_reg[24] ,
    Q,
    \sig_ip2bus_data_reg[23] ,
    \sig_ip2bus_data_reg[22] ,
    \sig_ip2bus_data_reg[21] ,
    \sig_ip2bus_data_reg[20] ,
    \sig_ip2bus_data_reg[19] ,
    D,
    \sig_ip2bus_data_reg[17] ,
    \sig_ip2bus_data_reg[12] ,
    \sig_ip2bus_data_reg[13] ,
    \sig_ip2bus_data_reg[1] ,
    \sig_register_array_reg[0][2] ,
    \GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9] ,
    out,
    sig_ip2bus_data1__0,
    \goreg_dm.dout_i_reg[18] ,
    \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3] ,
    sig_rx_channel_reset_reg,
    \sig_register_array_reg[1][1] ,
    \GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9]_0 ,
    \GEN_BKEND_CE_REGISTERS[6].ce_out_i_reg[6] ,
    \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0] ,
    sig_rx_channel_reset_reg_0,
    sig_Bus2IP_RdCE,
    valid_fwft,
    axis_rd_en__0,
    \GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg[7] ,
    \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3]_0 ,
    \gpregsm1.user_valid_reg ,
    s_axi_aclk,
    \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[2] );
  output \sig_ip2bus_data_reg[24] ;
  output [12:0]Q;
  output \sig_ip2bus_data_reg[23] ;
  output \sig_ip2bus_data_reg[22] ;
  output \sig_ip2bus_data_reg[21] ;
  output \sig_ip2bus_data_reg[20] ;
  output \sig_ip2bus_data_reg[19] ;
  output [7:0]D;
  output \sig_ip2bus_data_reg[17] ;
  output \sig_ip2bus_data_reg[12] ;
  output \sig_ip2bus_data_reg[13] ;
  output \sig_ip2bus_data_reg[1] ;
  output \sig_register_array_reg[0][2] ;
  input \GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9] ;
  input out;
  input sig_ip2bus_data1__0;
  input [3:0]\goreg_dm.dout_i_reg[18] ;
  input \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3] ;
  input sig_rx_channel_reset_reg;
  input [3:0]\sig_register_array_reg[1][1] ;
  input \GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9]_0 ;
  input \GEN_BKEND_CE_REGISTERS[6].ce_out_i_reg[6] ;
  input \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0] ;
  input sig_rx_channel_reset_reg_0;
  input [0:0]sig_Bus2IP_RdCE;
  input valid_fwft;
  input axis_rd_en__0;
  input \GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg[7] ;
  input \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3]_0 ;
  input [0:0]\gpregsm1.user_valid_reg ;
  input s_axi_aclk;
  input [0:0]\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[2] ;

  wire [7:0]D;
  wire \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0] ;
  wire \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3] ;
  wire \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3]_0 ;
  wire \GEN_BKEND_CE_REGISTERS[6].ce_out_i_reg[6] ;
  wire \GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg[7] ;
  wire \GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9] ;
  wire \GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9]_0 ;
  wire [12:0]Q;
  wire axis_rd_en__0;
  wire \count[0]_i_1_n_0 ;
  wire \count[12]_i_3_n_0 ;
  wire \count[12]_i_4_n_0 ;
  wire \count[12]_i_5_n_0 ;
  wire \count[12]_i_6_n_0 ;
  wire \count[8]_i_10_n_0 ;
  wire \count[8]_i_2_n_0 ;
  wire \count[8]_i_3_n_0 ;
  wire \count[8]_i_4_n_0 ;
  wire \count[8]_i_5_n_0 ;
  wire \count[8]_i_6_n_0 ;
  wire \count[8]_i_7_n_0 ;
  wire \count[8]_i_8_n_0 ;
  wire \count[8]_i_9_n_0 ;
  wire \count_reg[12]_i_2_n_12 ;
  wire \count_reg[12]_i_2_n_13 ;
  wire \count_reg[12]_i_2_n_14 ;
  wire \count_reg[12]_i_2_n_15 ;
  wire \count_reg[12]_i_2_n_5 ;
  wire \count_reg[12]_i_2_n_6 ;
  wire \count_reg[12]_i_2_n_7 ;
  wire \count_reg[8]_i_1_n_0 ;
  wire \count_reg[8]_i_1_n_1 ;
  wire \count_reg[8]_i_1_n_10 ;
  wire \count_reg[8]_i_1_n_11 ;
  wire \count_reg[8]_i_1_n_12 ;
  wire \count_reg[8]_i_1_n_13 ;
  wire \count_reg[8]_i_1_n_14 ;
  wire \count_reg[8]_i_1_n_15 ;
  wire \count_reg[8]_i_1_n_2 ;
  wire \count_reg[8]_i_1_n_3 ;
  wire \count_reg[8]_i_1_n_5 ;
  wire \count_reg[8]_i_1_n_6 ;
  wire \count_reg[8]_i_1_n_7 ;
  wire \count_reg[8]_i_1_n_8 ;
  wire \count_reg[8]_i_1_n_9 ;
  wire [3:0]\goreg_dm.dout_i_reg[18] ;
  wire [0:0]\gpregsm1.user_valid_reg ;
  wire [0:0]\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[2] ;
  wire out;
  wire s_axi_aclk;
  wire [0:0]sig_Bus2IP_RdCE;
  wire sig_ip2bus_data1__0;
  wire \sig_ip2bus_data[16]_i_3_n_0 ;
  wire \sig_ip2bus_data[16]_i_4_n_0 ;
  wire \sig_ip2bus_data[18]_i_2_n_0 ;
  wire \sig_ip2bus_data[21]_i_3_n_0 ;
  wire \sig_ip2bus_data_reg[12] ;
  wire \sig_ip2bus_data_reg[13] ;
  wire \sig_ip2bus_data_reg[17] ;
  wire \sig_ip2bus_data_reg[19] ;
  wire \sig_ip2bus_data_reg[1] ;
  wire \sig_ip2bus_data_reg[20] ;
  wire \sig_ip2bus_data_reg[21] ;
  wire \sig_ip2bus_data_reg[22] ;
  wire \sig_ip2bus_data_reg[23] ;
  wire \sig_ip2bus_data_reg[24] ;
  wire \sig_register_array[0][2]_i_10_n_0 ;
  wire \sig_register_array[0][2]_i_11_n_0 ;
  wire \sig_register_array_reg[0][2] ;
  wire [3:0]\sig_register_array_reg[1][1] ;
  wire sig_rx_channel_reset_reg;
  wire sig_rx_channel_reset_reg_0;
  wire valid_fwft;
  wire [7:3]\NLW_count_reg[12]_i_2_CO_UNCONNECTED ;
  wire [7:4]\NLW_count_reg[12]_i_2_DI_UNCONNECTED ;
  wire [7:4]\NLW_count_reg[12]_i_2_O_UNCONNECTED ;
  wire [7:4]\NLW_count_reg[12]_i_2_S_UNCONNECTED ;
  wire [3:3]\NLW_count_reg[8]_i_1_CO_UNCONNECTED ;

  LUT1 #(
    .INIT(2'h1)) 
    \count[0]_i_1 
       (.I0(Q[0]),
        .O(\count[0]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \count[12]_i_3 
       (.I0(Q[11]),
        .I1(Q[12]),
        .O(\count[12]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \count[12]_i_4 
       (.I0(Q[10]),
        .I1(Q[11]),
        .O(\count[12]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \count[12]_i_5 
       (.I0(Q[9]),
        .I1(Q[10]),
        .O(\count[12]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \count[12]_i_6 
       (.I0(Q[8]),
        .I1(Q[9]),
        .O(\count[12]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'h6A)) 
    \count[8]_i_10 
       (.I0(Q[1]),
        .I1(valid_fwft),
        .I2(axis_rd_en__0),
        .O(\count[8]_i_10_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \count[8]_i_2 
       (.I0(Q[1]),
        .O(\count[8]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \count[8]_i_3 
       (.I0(Q[7]),
        .I1(Q[8]),
        .O(\count[8]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \count[8]_i_4 
       (.I0(Q[6]),
        .I1(Q[7]),
        .O(\count[8]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \count[8]_i_5 
       (.I0(Q[5]),
        .I1(Q[6]),
        .O(\count[8]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \count[8]_i_6 
       (.I0(Q[4]),
        .I1(Q[5]),
        .O(\count[8]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \count[8]_i_7 
       (.I0(Q[3]),
        .I1(Q[4]),
        .O(\count[8]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \count[8]_i_8 
       (.I0(Q[2]),
        .I1(Q[3]),
        .O(\count[8]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \count[8]_i_9 
       (.I0(Q[1]),
        .I1(Q[2]),
        .O(\count[8]_i_9_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[0] 
       (.C(s_axi_aclk),
        .CE(\gpregsm1.user_valid_reg ),
        .CLR(\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[2] ),
        .D(\count[0]_i_1_n_0 ),
        .Q(Q[0]));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[10] 
       (.C(s_axi_aclk),
        .CE(\gpregsm1.user_valid_reg ),
        .CLR(\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[2] ),
        .D(\count_reg[12]_i_2_n_14 ),
        .Q(Q[10]));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[11] 
       (.C(s_axi_aclk),
        .CE(\gpregsm1.user_valid_reg ),
        .CLR(\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[2] ),
        .D(\count_reg[12]_i_2_n_13 ),
        .Q(Q[11]));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[12] 
       (.C(s_axi_aclk),
        .CE(\gpregsm1.user_valid_reg ),
        .CLR(\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[2] ),
        .D(\count_reg[12]_i_2_n_12 ),
        .Q(Q[12]));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY8 \count_reg[12]_i_2 
       (.CI(\count_reg[8]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\NLW_count_reg[12]_i_2_CO_UNCONNECTED [7:3],\count_reg[12]_i_2_n_5 ,\count_reg[12]_i_2_n_6 ,\count_reg[12]_i_2_n_7 }),
        .DI({\NLW_count_reg[12]_i_2_DI_UNCONNECTED [7:4],1'b0,Q[10:8]}),
        .O({\NLW_count_reg[12]_i_2_O_UNCONNECTED [7:4],\count_reg[12]_i_2_n_12 ,\count_reg[12]_i_2_n_13 ,\count_reg[12]_i_2_n_14 ,\count_reg[12]_i_2_n_15 }),
        .S({\NLW_count_reg[12]_i_2_S_UNCONNECTED [7:4],\count[12]_i_3_n_0 ,\count[12]_i_4_n_0 ,\count[12]_i_5_n_0 ,\count[12]_i_6_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[1] 
       (.C(s_axi_aclk),
        .CE(\gpregsm1.user_valid_reg ),
        .CLR(\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[2] ),
        .D(\count_reg[8]_i_1_n_15 ),
        .Q(Q[1]));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[2] 
       (.C(s_axi_aclk),
        .CE(\gpregsm1.user_valid_reg ),
        .CLR(\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[2] ),
        .D(\count_reg[8]_i_1_n_14 ),
        .Q(Q[2]));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[3] 
       (.C(s_axi_aclk),
        .CE(\gpregsm1.user_valid_reg ),
        .CLR(\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[2] ),
        .D(\count_reg[8]_i_1_n_13 ),
        .Q(Q[3]));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[4] 
       (.C(s_axi_aclk),
        .CE(\gpregsm1.user_valid_reg ),
        .CLR(\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[2] ),
        .D(\count_reg[8]_i_1_n_12 ),
        .Q(Q[4]));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[5] 
       (.C(s_axi_aclk),
        .CE(\gpregsm1.user_valid_reg ),
        .CLR(\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[2] ),
        .D(\count_reg[8]_i_1_n_11 ),
        .Q(Q[5]));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[6] 
       (.C(s_axi_aclk),
        .CE(\gpregsm1.user_valid_reg ),
        .CLR(\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[2] ),
        .D(\count_reg[8]_i_1_n_10 ),
        .Q(Q[6]));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[7] 
       (.C(s_axi_aclk),
        .CE(\gpregsm1.user_valid_reg ),
        .CLR(\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[2] ),
        .D(\count_reg[8]_i_1_n_9 ),
        .Q(Q[7]));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[8] 
       (.C(s_axi_aclk),
        .CE(\gpregsm1.user_valid_reg ),
        .CLR(\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[2] ),
        .D(\count_reg[8]_i_1_n_8 ),
        .Q(Q[8]));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY8 \count_reg[8]_i_1 
       (.CI(Q[0]),
        .CI_TOP(1'b0),
        .CO({\count_reg[8]_i_1_n_0 ,\count_reg[8]_i_1_n_1 ,\count_reg[8]_i_1_n_2 ,\count_reg[8]_i_1_n_3 ,\NLW_count_reg[8]_i_1_CO_UNCONNECTED [3],\count_reg[8]_i_1_n_5 ,\count_reg[8]_i_1_n_6 ,\count_reg[8]_i_1_n_7 }),
        .DI({Q[7:1],\count[8]_i_2_n_0 }),
        .O({\count_reg[8]_i_1_n_8 ,\count_reg[8]_i_1_n_9 ,\count_reg[8]_i_1_n_10 ,\count_reg[8]_i_1_n_11 ,\count_reg[8]_i_1_n_12 ,\count_reg[8]_i_1_n_13 ,\count_reg[8]_i_1_n_14 ,\count_reg[8]_i_1_n_15 }),
        .S({\count[8]_i_3_n_0 ,\count[8]_i_4_n_0 ,\count[8]_i_5_n_0 ,\count[8]_i_6_n_0 ,\count[8]_i_7_n_0 ,\count[8]_i_8_n_0 ,\count[8]_i_9_n_0 ,\count[8]_i_10_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[9] 
       (.C(s_axi_aclk),
        .CE(\gpregsm1.user_valid_reg ),
        .CLR(\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[2] ),
        .D(\count_reg[12]_i_2_n_15 ),
        .Q(Q[9]));
  LUT6 #(
    .INIT(64'h0000001F00000010)) 
    \sig_ip2bus_data[13]_i_1 
       (.I0(\sig_ip2bus_data_reg[13] ),
        .I1(Q[12]),
        .I2(out),
        .I3(\GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg[7] ),
        .I4(\GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3]_0 ),
        .I5(\goreg_dm.dout_i_reg[18] [3]),
        .O(D[3]));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \sig_ip2bus_data[13]_i_2 
       (.I0(Q[11]),
        .I1(sig_ip2bus_data1__0),
        .I2(\sig_ip2bus_data[18]_i_2_n_0 ),
        .I3(Q[10]),
        .I4(Q[9]),
        .O(\sig_ip2bus_data_reg[13] ));
  LUT6 #(
    .INIT(64'h0000001F00000010)) 
    \sig_ip2bus_data[14]_i_1 
       (.I0(\sig_ip2bus_data_reg[13] ),
        .I1(Q[12]),
        .I2(out),
        .I3(\GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg[7] ),
        .I4(\GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3]_0 ),
        .I5(\goreg_dm.dout_i_reg[18] [2]),
        .O(D[2]));
  LUT6 #(
    .INIT(64'hCCC3AAAA00000000)) 
    \sig_ip2bus_data[16]_i_1 
       (.I0(\goreg_dm.dout_i_reg[18] [1]),
        .I1(Q[11]),
        .I2(sig_ip2bus_data1__0),
        .I3(\sig_ip2bus_data[16]_i_3_n_0 ),
        .I4(out),
        .I5(\GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3] ),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \sig_ip2bus_data[16]_i_3 
       (.I0(Q[9]),
        .I1(Q[10]),
        .I2(\sig_ip2bus_data[16]_i_4_n_0 ),
        .I3(Q[8]),
        .I4(Q[7]),
        .O(\sig_ip2bus_data[16]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \sig_ip2bus_data[16]_i_4 
       (.I0(Q[5]),
        .I1(Q[6]),
        .I2(Q[4]),
        .I3(Q[2]),
        .I4(Q[3]),
        .O(\sig_ip2bus_data[16]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h00000001FFFFFFFE)) 
    \sig_ip2bus_data[17]_i_2 
       (.I0(Q[7]),
        .I1(Q[8]),
        .I2(\sig_ip2bus_data[16]_i_4_n_0 ),
        .I3(sig_ip2bus_data1__0),
        .I4(Q[9]),
        .I5(Q[10]),
        .O(\sig_ip2bus_data_reg[17] ));
  LUT6 #(
    .INIT(64'hCCC3AAAA00000000)) 
    \sig_ip2bus_data[18]_i_1 
       (.I0(\goreg_dm.dout_i_reg[18] [0]),
        .I1(Q[9]),
        .I2(sig_ip2bus_data1__0),
        .I3(\sig_ip2bus_data[18]_i_2_n_0 ),
        .I4(out),
        .I5(\GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3] ),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \sig_ip2bus_data[18]_i_2 
       (.I0(Q[7]),
        .I1(Q[8]),
        .I2(\sig_ip2bus_data[16]_i_4_n_0 ),
        .O(\sig_ip2bus_data[18]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h8888888000000008)) 
    \sig_ip2bus_data[19]_i_3 
       (.I0(\GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9] ),
        .I1(out),
        .I2(sig_ip2bus_data1__0),
        .I3(\sig_ip2bus_data[16]_i_4_n_0 ),
        .I4(Q[7]),
        .I5(Q[8]),
        .O(\sig_ip2bus_data_reg[19] ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'hF080)) 
    \sig_ip2bus_data[1]_i_1 
       (.I0(\sig_register_array_reg[1][1] [3]),
        .I1(\GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9]_0 ),
        .I2(\GEN_BKEND_CE_REGISTERS[6].ce_out_i_reg[6] ),
        .I3(\sig_ip2bus_data_reg[1] ),
        .O(D[7]));
  LUT6 #(
    .INIT(64'h0000000000040000)) 
    \sig_ip2bus_data[1]_i_2 
       (.I0(\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0] ),
        .I1(out),
        .I2(Q[12]),
        .I3(sig_rx_channel_reset_reg_0),
        .I4(sig_Bus2IP_RdCE),
        .I5(\sig_ip2bus_data_reg[13] ),
        .O(\sig_ip2bus_data_reg[1] ));
  LUT5 #(
    .INIT(32'h88800008)) 
    \sig_ip2bus_data[20]_i_2 
       (.I0(\GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9] ),
        .I1(out),
        .I2(\sig_ip2bus_data[16]_i_4_n_0 ),
        .I3(sig_ip2bus_data1__0),
        .I4(Q[7]),
        .O(\sig_ip2bus_data_reg[20] ));
  LUT6 #(
    .INIT(64'h8888888000000008)) 
    \sig_ip2bus_data[21]_i_2 
       (.I0(\GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9] ),
        .I1(out),
        .I2(sig_ip2bus_data1__0),
        .I3(\sig_ip2bus_data[21]_i_3_n_0 ),
        .I4(Q[5]),
        .I5(Q[6]),
        .O(\sig_ip2bus_data_reg[21] ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \sig_ip2bus_data[21]_i_3 
       (.I0(Q[3]),
        .I1(Q[2]),
        .I2(Q[4]),
        .O(\sig_ip2bus_data[21]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h88800008)) 
    \sig_ip2bus_data[22]_i_2 
       (.I0(\GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9] ),
        .I1(out),
        .I2(\sig_ip2bus_data[21]_i_3_n_0 ),
        .I3(sig_ip2bus_data1__0),
        .I4(Q[5]),
        .O(\sig_ip2bus_data_reg[22] ));
  LUT6 #(
    .INIT(64'h8888888000000008)) 
    \sig_ip2bus_data[23]_i_2 
       (.I0(\GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9] ),
        .I1(out),
        .I2(sig_ip2bus_data1__0),
        .I3(Q[2]),
        .I4(Q[3]),
        .I5(Q[4]),
        .O(\sig_ip2bus_data_reg[23] ));
  LUT5 #(
    .INIT(32'h88800008)) 
    \sig_ip2bus_data[24]_i_2 
       (.I0(\GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9] ),
        .I1(out),
        .I2(Q[2]),
        .I3(sig_ip2bus_data1__0),
        .I4(Q[3]),
        .O(\sig_ip2bus_data_reg[24] ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'hF080)) 
    \sig_ip2bus_data[3]_i_1 
       (.I0(\sig_register_array_reg[1][1] [2]),
        .I1(\GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9]_0 ),
        .I2(\GEN_BKEND_CE_REGISTERS[6].ce_out_i_reg[6] ),
        .I3(\sig_ip2bus_data_reg[1] ),
        .O(D[6]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'hF080)) 
    \sig_ip2bus_data[4]_i_1 
       (.I0(\sig_register_array_reg[1][1] [1]),
        .I1(\GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9]_0 ),
        .I2(\GEN_BKEND_CE_REGISTERS[6].ce_out_i_reg[6] ),
        .I3(\sig_ip2bus_data_reg[1] ),
        .O(D[5]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'hF080)) 
    \sig_ip2bus_data[6]_i_1 
       (.I0(\sig_register_array_reg[1][1] [0]),
        .I1(\GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9]_0 ),
        .I2(\GEN_BKEND_CE_REGISTERS[6].ce_out_i_reg[6] ),
        .I3(\sig_ip2bus_data_reg[1] ),
        .O(D[4]));
  LUT3 #(
    .INIT(8'h02)) 
    \sig_ip2bus_data[9]_i_3 
       (.I0(sig_rx_channel_reset_reg),
        .I1(Q[12]),
        .I2(\sig_ip2bus_data_reg[13] ),
        .O(\sig_ip2bus_data_reg[12] ));
  LUT4 #(
    .INIT(16'h0001)) 
    \sig_register_array[0][2]_i_10 
       (.I0(Q[9]),
        .I1(Q[8]),
        .I2(Q[7]),
        .I3(Q[6]),
        .O(\sig_register_array[0][2]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \sig_register_array[0][2]_i_11 
       (.I0(Q[10]),
        .I1(Q[11]),
        .I2(Q[12]),
        .I3(sig_rx_channel_reset_reg_0),
        .I4(Q[3]),
        .I5(Q[2]),
        .O(\sig_register_array[0][2]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h0000000200000000)) 
    \sig_register_array[0][2]_i_9 
       (.I0(\sig_register_array[0][2]_i_10_n_0 ),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(Q[5]),
        .I4(Q[4]),
        .I5(\sig_register_array[0][2]_i_11_n_0 ),
        .O(\sig_register_array_reg[0][2] ));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_0_4_wr_bin_cntr
   (Q,
    v1_reg,
    \DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram ,
    \greg.gpcry_sym.diff_pntr_pad_reg[12] ,
    v1_reg_0,
    \gdiff.gcry_1_sym.diff_pntr_pad_reg[12] ,
    ram_empty_fb_i_reg,
    S,
    \gdiff.gcry_1_sym.diff_pntr_pad_reg[8] ,
    \gc0.count_d1_reg[11] ,
    E,
    s_axi_aclk,
    AR);
  output [10:0]Q;
  output [0:0]v1_reg;
  output [11:0]\DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram ;
  output [3:0]\greg.gpcry_sym.diff_pntr_pad_reg[12] ;
  output [0:0]v1_reg_0;
  output [3:0]\gdiff.gcry_1_sym.diff_pntr_pad_reg[12] ;
  output ram_empty_fb_i_reg;
  output [7:0]S;
  output [7:0]\gdiff.gcry_1_sym.diff_pntr_pad_reg[8] ;
  input [11:0]\gc0.count_d1_reg[11] ;
  input [0:0]E;
  input s_axi_aclk;
  input [0:0]AR;

  wire [0:0]AR;
  wire [11:0]\DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram ;
  wire [0:0]E;
  wire [10:0]Q;
  wire [7:0]S;
  wire [11:0]\gc0.count_d1_reg[11] ;
  wire [3:0]\gdiff.gcry_1_sym.diff_pntr_pad_reg[12] ;
  wire [7:0]\gdiff.gcry_1_sym.diff_pntr_pad_reg[8] ;
  wire [3:0]\greg.gpcry_sym.diff_pntr_pad_reg[12] ;
  wire [11:11]p_11_out;
  wire [11:0]plusOp__0;
  wire plusOp_carry__0_i_1__3_n_0;
  wire plusOp_carry__0_i_2__3_n_0;
  wire plusOp_carry__0_i_3__3_n_0;
  wire plusOp_carry__0_n_6;
  wire plusOp_carry__0_n_7;
  wire plusOp_carry_i_1__3_n_0;
  wire plusOp_carry_i_2__3_n_0;
  wire plusOp_carry_i_3__3_n_0;
  wire plusOp_carry_i_4__3_n_0;
  wire plusOp_carry_i_5__3_n_0;
  wire plusOp_carry_i_6__3_n_0;
  wire plusOp_carry_i_7__3_n_0;
  wire plusOp_carry_i_8__3_n_0;
  wire plusOp_carry_n_0;
  wire plusOp_carry_n_1;
  wire plusOp_carry_n_2;
  wire plusOp_carry_n_3;
  wire plusOp_carry_n_5;
  wire plusOp_carry_n_6;
  wire plusOp_carry_n_7;
  wire ram_empty_fb_i_reg;
  wire s_axi_aclk;
  wire [0:0]v1_reg;
  wire [0:0]v1_reg_0;
  wire [3:3]NLW_plusOp_carry_CO_UNCONNECTED;
  wire [7:2]NLW_plusOp_carry__0_CO_UNCONNECTED;
  wire [7:3]NLW_plusOp_carry__0_DI_UNCONNECTED;
  wire [7:3]NLW_plusOp_carry__0_O_UNCONNECTED;
  wire [7:3]NLW_plusOp_carry__0_S_UNCONNECTED;

  LUT1 #(
    .INIT(2'h1)) 
    \gcc0.gc0.count[0]_i_1__0 
       (.I0(Q[0]),
        .O(plusOp__0[0]));
  FDCE #(
    .INIT(1'b0)) 
    \gcc0.gc0.count_d1_reg[0] 
       (.C(s_axi_aclk),
        .CE(E),
        .CLR(AR),
        .D(Q[0]),
        .Q(\DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram [0]));
  FDCE #(
    .INIT(1'b0)) 
    \gcc0.gc0.count_d1_reg[10] 
       (.C(s_axi_aclk),
        .CE(E),
        .CLR(AR),
        .D(Q[10]),
        .Q(\DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram [10]));
  FDCE #(
    .INIT(1'b0)) 
    \gcc0.gc0.count_d1_reg[11] 
       (.C(s_axi_aclk),
        .CE(E),
        .CLR(AR),
        .D(p_11_out),
        .Q(\DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram [11]));
  FDCE #(
    .INIT(1'b0)) 
    \gcc0.gc0.count_d1_reg[1] 
       (.C(s_axi_aclk),
        .CE(E),
        .CLR(AR),
        .D(Q[1]),
        .Q(\DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram [1]));
  FDCE #(
    .INIT(1'b0)) 
    \gcc0.gc0.count_d1_reg[2] 
       (.C(s_axi_aclk),
        .CE(E),
        .CLR(AR),
        .D(Q[2]),
        .Q(\DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram [2]));
  FDCE #(
    .INIT(1'b0)) 
    \gcc0.gc0.count_d1_reg[3] 
       (.C(s_axi_aclk),
        .CE(E),
        .CLR(AR),
        .D(Q[3]),
        .Q(\DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram [3]));
  FDCE #(
    .INIT(1'b0)) 
    \gcc0.gc0.count_d1_reg[4] 
       (.C(s_axi_aclk),
        .CE(E),
        .CLR(AR),
        .D(Q[4]),
        .Q(\DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram [4]));
  FDCE #(
    .INIT(1'b0)) 
    \gcc0.gc0.count_d1_reg[5] 
       (.C(s_axi_aclk),
        .CE(E),
        .CLR(AR),
        .D(Q[5]),
        .Q(\DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram [5]));
  FDCE #(
    .INIT(1'b0)) 
    \gcc0.gc0.count_d1_reg[6] 
       (.C(s_axi_aclk),
        .CE(E),
        .CLR(AR),
        .D(Q[6]),
        .Q(\DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram [6]));
  FDCE #(
    .INIT(1'b0)) 
    \gcc0.gc0.count_d1_reg[7] 
       (.C(s_axi_aclk),
        .CE(E),
        .CLR(AR),
        .D(Q[7]),
        .Q(\DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram [7]));
  FDCE #(
    .INIT(1'b0)) 
    \gcc0.gc0.count_d1_reg[8] 
       (.C(s_axi_aclk),
        .CE(E),
        .CLR(AR),
        .D(Q[8]),
        .Q(\DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram [8]));
  FDCE #(
    .INIT(1'b0)) 
    \gcc0.gc0.count_d1_reg[9] 
       (.C(s_axi_aclk),
        .CE(E),
        .CLR(AR),
        .D(Q[9]),
        .Q(\DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram [9]));
  FDPE #(
    .INIT(1'b1)) 
    \gcc0.gc0.count_reg[0] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(plusOp__0[0]),
        .PRE(AR),
        .Q(Q[0]));
  FDCE #(
    .INIT(1'b0)) 
    \gcc0.gc0.count_reg[10] 
       (.C(s_axi_aclk),
        .CE(E),
        .CLR(AR),
        .D(plusOp__0[10]),
        .Q(Q[10]));
  FDCE #(
    .INIT(1'b0)) 
    \gcc0.gc0.count_reg[11] 
       (.C(s_axi_aclk),
        .CE(E),
        .CLR(AR),
        .D(plusOp__0[11]),
        .Q(p_11_out));
  FDCE #(
    .INIT(1'b0)) 
    \gcc0.gc0.count_reg[1] 
       (.C(s_axi_aclk),
        .CE(E),
        .CLR(AR),
        .D(plusOp__0[1]),
        .Q(Q[1]));
  FDCE #(
    .INIT(1'b0)) 
    \gcc0.gc0.count_reg[2] 
       (.C(s_axi_aclk),
        .CE(E),
        .CLR(AR),
        .D(plusOp__0[2]),
        .Q(Q[2]));
  FDCE #(
    .INIT(1'b0)) 
    \gcc0.gc0.count_reg[3] 
       (.C(s_axi_aclk),
        .CE(E),
        .CLR(AR),
        .D(plusOp__0[3]),
        .Q(Q[3]));
  FDCE #(
    .INIT(1'b0)) 
    \gcc0.gc0.count_reg[4] 
       (.C(s_axi_aclk),
        .CE(E),
        .CLR(AR),
        .D(plusOp__0[4]),
        .Q(Q[4]));
  FDCE #(
    .INIT(1'b0)) 
    \gcc0.gc0.count_reg[5] 
       (.C(s_axi_aclk),
        .CE(E),
        .CLR(AR),
        .D(plusOp__0[5]),
        .Q(Q[5]));
  FDCE #(
    .INIT(1'b0)) 
    \gcc0.gc0.count_reg[6] 
       (.C(s_axi_aclk),
        .CE(E),
        .CLR(AR),
        .D(plusOp__0[6]),
        .Q(Q[6]));
  FDCE #(
    .INIT(1'b0)) 
    \gcc0.gc0.count_reg[7] 
       (.C(s_axi_aclk),
        .CE(E),
        .CLR(AR),
        .D(plusOp__0[7]),
        .Q(Q[7]));
  FDCE #(
    .INIT(1'b0)) 
    \gcc0.gc0.count_reg[8] 
       (.C(s_axi_aclk),
        .CE(E),
        .CLR(AR),
        .D(plusOp__0[8]),
        .Q(Q[8]));
  FDCE #(
    .INIT(1'b0)) 
    \gcc0.gc0.count_reg[9] 
       (.C(s_axi_aclk),
        .CE(E),
        .CLR(AR),
        .D(plusOp__0[9]),
        .Q(Q[9]));
  LUT4 #(
    .INIT(16'h9009)) 
    \gmux.gm[5].gms.ms_i_1 
       (.I0(\DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram [11]),
        .I1(\gc0.count_d1_reg[11] [11]),
        .I2(\DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram [10]),
        .I3(\gc0.count_d1_reg[11] [10]),
        .O(v1_reg));
  LUT4 #(
    .INIT(16'h9009)) 
    \gmux.gm[5].gms.ms_i_1__0 
       (.I0(p_11_out),
        .I1(\gc0.count_d1_reg[11] [11]),
        .I2(\gc0.count_d1_reg[11] [10]),
        .I3(Q[10]),
        .O(v1_reg_0));
  LUT4 #(
    .INIT(16'h9009)) 
    \gmux.gm[5].gms.ms_i_1__2 
       (.I0(\DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram [11]),
        .I1(\gc0.count_d1_reg[11] [11]),
        .I2(\DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram [10]),
        .I3(\gc0.count_d1_reg[11] [10]),
        .O(ram_empty_fb_i_reg));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY8 plusOp_carry
       (.CI(Q[0]),
        .CI_TOP(1'b0),
        .CO({plusOp_carry_n_0,plusOp_carry_n_1,plusOp_carry_n_2,plusOp_carry_n_3,NLW_plusOp_carry_CO_UNCONNECTED[3],plusOp_carry_n_5,plusOp_carry_n_6,plusOp_carry_n_7}),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O(plusOp__0[8:1]),
        .S({plusOp_carry_i_1__3_n_0,plusOp_carry_i_2__3_n_0,plusOp_carry_i_3__3_n_0,plusOp_carry_i_4__3_n_0,plusOp_carry_i_5__3_n_0,plusOp_carry_i_6__3_n_0,plusOp_carry_i_7__3_n_0,plusOp_carry_i_8__3_n_0}));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY8 plusOp_carry__0
       (.CI(plusOp_carry_n_0),
        .CI_TOP(1'b0),
        .CO({NLW_plusOp_carry__0_CO_UNCONNECTED[7:2],plusOp_carry__0_n_6,plusOp_carry__0_n_7}),
        .DI({NLW_plusOp_carry__0_DI_UNCONNECTED[7:3],1'b0,1'b0,1'b0}),
        .O({NLW_plusOp_carry__0_O_UNCONNECTED[7:3],plusOp__0[11:9]}),
        .S({NLW_plusOp_carry__0_S_UNCONNECTED[7:3],plusOp_carry__0_i_1__3_n_0,plusOp_carry__0_i_2__3_n_0,plusOp_carry__0_i_3__3_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    plusOp_carry__0_i_1
       (.I0(\DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram [11]),
        .I1(\gc0.count_d1_reg[11] [11]),
        .O(\greg.gpcry_sym.diff_pntr_pad_reg[12] [3]));
  LUT2 #(
    .INIT(4'h9)) 
    plusOp_carry__0_i_1__0
       (.I0(p_11_out),
        .I1(\gc0.count_d1_reg[11] [11]),
        .O(\gdiff.gcry_1_sym.diff_pntr_pad_reg[12] [3]));
  LUT1 #(
    .INIT(2'h2)) 
    plusOp_carry__0_i_1__3
       (.I0(p_11_out),
        .O(plusOp_carry__0_i_1__3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    plusOp_carry__0_i_2
       (.I0(Q[10]),
        .I1(\gc0.count_d1_reg[11] [10]),
        .O(\gdiff.gcry_1_sym.diff_pntr_pad_reg[12] [2]));
  LUT2 #(
    .INIT(4'h9)) 
    plusOp_carry__0_i_2__0
       (.I0(\DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram [10]),
        .I1(\gc0.count_d1_reg[11] [10]),
        .O(\greg.gpcry_sym.diff_pntr_pad_reg[12] [2]));
  LUT1 #(
    .INIT(2'h2)) 
    plusOp_carry__0_i_2__3
       (.I0(Q[10]),
        .O(plusOp_carry__0_i_2__3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    plusOp_carry__0_i_3
       (.I0(Q[9]),
        .I1(\gc0.count_d1_reg[11] [9]),
        .O(\gdiff.gcry_1_sym.diff_pntr_pad_reg[12] [1]));
  LUT2 #(
    .INIT(4'h9)) 
    plusOp_carry__0_i_3__0
       (.I0(\DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram [9]),
        .I1(\gc0.count_d1_reg[11] [9]),
        .O(\greg.gpcry_sym.diff_pntr_pad_reg[12] [1]));
  LUT1 #(
    .INIT(2'h2)) 
    plusOp_carry__0_i_3__3
       (.I0(Q[9]),
        .O(plusOp_carry__0_i_3__3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    plusOp_carry__0_i_4
       (.I0(\DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram [8]),
        .I1(\gc0.count_d1_reg[11] [8]),
        .O(\greg.gpcry_sym.diff_pntr_pad_reg[12] [0]));
  LUT2 #(
    .INIT(4'h9)) 
    plusOp_carry__0_i_4__0
       (.I0(Q[8]),
        .I1(\gc0.count_d1_reg[11] [8]),
        .O(\gdiff.gcry_1_sym.diff_pntr_pad_reg[12] [0]));
  LUT1 #(
    .INIT(2'h2)) 
    plusOp_carry_i_1__3
       (.I0(Q[8]),
        .O(plusOp_carry_i_1__3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    plusOp_carry_i_2
       (.I0(Q[7]),
        .I1(\gc0.count_d1_reg[11] [7]),
        .O(\gdiff.gcry_1_sym.diff_pntr_pad_reg[8] [7]));
  LUT2 #(
    .INIT(4'h9)) 
    plusOp_carry_i_2__0
       (.I0(\DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram [7]),
        .I1(\gc0.count_d1_reg[11] [7]),
        .O(S[7]));
  LUT1 #(
    .INIT(2'h2)) 
    plusOp_carry_i_2__3
       (.I0(Q[7]),
        .O(plusOp_carry_i_2__3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    plusOp_carry_i_3
       (.I0(\DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram [6]),
        .I1(\gc0.count_d1_reg[11] [6]),
        .O(S[6]));
  LUT2 #(
    .INIT(4'h9)) 
    plusOp_carry_i_3__0
       (.I0(Q[6]),
        .I1(\gc0.count_d1_reg[11] [6]),
        .O(\gdiff.gcry_1_sym.diff_pntr_pad_reg[8] [6]));
  LUT1 #(
    .INIT(2'h2)) 
    plusOp_carry_i_3__3
       (.I0(Q[6]),
        .O(plusOp_carry_i_3__3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    plusOp_carry_i_4
       (.I0(Q[5]),
        .I1(\gc0.count_d1_reg[11] [5]),
        .O(\gdiff.gcry_1_sym.diff_pntr_pad_reg[8] [5]));
  LUT2 #(
    .INIT(4'h9)) 
    plusOp_carry_i_4__0
       (.I0(\DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram [5]),
        .I1(\gc0.count_d1_reg[11] [5]),
        .O(S[5]));
  LUT1 #(
    .INIT(2'h2)) 
    plusOp_carry_i_4__3
       (.I0(Q[5]),
        .O(plusOp_carry_i_4__3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    plusOp_carry_i_5
       (.I0(\DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram [4]),
        .I1(\gc0.count_d1_reg[11] [4]),
        .O(S[4]));
  LUT2 #(
    .INIT(4'h9)) 
    plusOp_carry_i_5__0
       (.I0(Q[4]),
        .I1(\gc0.count_d1_reg[11] [4]),
        .O(\gdiff.gcry_1_sym.diff_pntr_pad_reg[8] [4]));
  LUT1 #(
    .INIT(2'h2)) 
    plusOp_carry_i_5__3
       (.I0(Q[4]),
        .O(plusOp_carry_i_5__3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    plusOp_carry_i_6
       (.I0(Q[3]),
        .I1(\gc0.count_d1_reg[11] [3]),
        .O(\gdiff.gcry_1_sym.diff_pntr_pad_reg[8] [3]));
  LUT2 #(
    .INIT(4'h9)) 
    plusOp_carry_i_6__0
       (.I0(\DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram [3]),
        .I1(\gc0.count_d1_reg[11] [3]),
        .O(S[3]));
  LUT1 #(
    .INIT(2'h2)) 
    plusOp_carry_i_6__3
       (.I0(Q[3]),
        .O(plusOp_carry_i_6__3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    plusOp_carry_i_7__0
       (.I0(\DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram [2]),
        .I1(\gc0.count_d1_reg[11] [2]),
        .O(S[2]));
  LUT2 #(
    .INIT(4'h9)) 
    plusOp_carry_i_7__1
       (.I0(Q[2]),
        .I1(\gc0.count_d1_reg[11] [2]),
        .O(\gdiff.gcry_1_sym.diff_pntr_pad_reg[8] [2]));
  LUT1 #(
    .INIT(2'h2)) 
    plusOp_carry_i_7__3
       (.I0(Q[2]),
        .O(plusOp_carry_i_7__3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    plusOp_carry_i_8
       (.I0(Q[1]),
        .I1(\gc0.count_d1_reg[11] [1]),
        .O(\gdiff.gcry_1_sym.diff_pntr_pad_reg[8] [1]));
  LUT2 #(
    .INIT(4'h9)) 
    plusOp_carry_i_8__0
       (.I0(\DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram [1]),
        .I1(\gc0.count_d1_reg[11] [1]),
        .O(S[1]));
  LUT1 #(
    .INIT(2'h2)) 
    plusOp_carry_i_8__3
       (.I0(Q[1]),
        .O(plusOp_carry_i_8__3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    plusOp_carry_i_9
       (.I0(\DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram [0]),
        .I1(\gc0.count_d1_reg[11] [0]),
        .O(S[0]));
  LUT2 #(
    .INIT(4'h9)) 
    plusOp_carry_i_9__0
       (.I0(Q[0]),
        .I1(\gc0.count_d1_reg[11] [0]),
        .O(\gdiff.gcry_1_sym.diff_pntr_pad_reg[8] [0]));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_0_4_wr_logic
   (p_16_out,
    \grxd.fg_rxd_wr_length_reg[3] ,
    Q,
    prog_full_i,
    rd_pntr_inv_pad,
    \count_reg[12] ,
    SR,
    sig_ip2bus_data1__0,
    rx_complete,
    E,
    axi_str_rxd_tready,
    \DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram ,
    \greg.gpcry_sym.diff_pntr_pad_reg[12] ,
    ram_empty_fb_i_reg,
    \grxd.rx_partial_pkt_reg ,
    S,
    \gc0.count_d1_reg[8] ,
    \gc0.count_d1_reg[8]_0 ,
    s_axi_aclk,
    out,
    p_6_out,
    AR,
    axi_str_rxd_tvalid,
    \grstd1.grst_full.grst_f.rst_d5_reg ,
    valid_fwft,
    axis_rd_en__0,
    axi_str_rxd_tlast,
    rx_len_wr_en,
    s_axi_aresetn,
    Axi_Str_TxD_AReset,
    \grxd.rx_partial_pkt_reg_0 ,
    \gc0.count_d1_reg[11] ,
    sig_rd_rlen_reg,
    in0);
  output p_16_out;
  output \grxd.fg_rxd_wr_length_reg[3] ;
  output [9:0]Q;
  output prog_full_i;
  output [0:0]rd_pntr_inv_pad;
  output [0:0]\count_reg[12] ;
  output [0:0]SR;
  output sig_ip2bus_data1__0;
  output rx_complete;
  output [0:0]E;
  output axi_str_rxd_tready;
  output [11:0]\DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram ;
  output [3:0]\greg.gpcry_sym.diff_pntr_pad_reg[12] ;
  output ram_empty_fb_i_reg;
  output \grxd.rx_partial_pkt_reg ;
  output [7:0]S;
  input [4:0]\gc0.count_d1_reg[8] ;
  input [4:0]\gc0.count_d1_reg[8]_0 ;
  input s_axi_aclk;
  input out;
  input p_6_out;
  input [0:0]AR;
  input axi_str_rxd_tvalid;
  input \grstd1.grst_full.grst_f.rst_d5_reg ;
  input valid_fwft;
  input axis_rd_en__0;
  input axi_str_rxd_tlast;
  input rx_len_wr_en;
  input s_axi_aresetn;
  input Axi_Str_TxD_AReset;
  input \grxd.rx_partial_pkt_reg_0 ;
  input [11:0]\gc0.count_d1_reg[11] ;
  input sig_rd_rlen_reg;
  input in0;

  wire [0:0]AR;
  wire Axi_Str_TxD_AReset;
  wire [11:0]\DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram ;
  wire [0:0]E;
  wire [9:0]Q;
  wire [7:0]S;
  wire [0:0]SR;
  wire axi_str_rxd_tlast;
  wire axi_str_rxd_tready;
  wire axi_str_rxd_tvalid;
  wire axis_rd_en__0;
  wire [5:5]\c0/v1_reg ;
  wire [5:5]\c1/v1_reg ;
  wire [0:0]\count_reg[12] ;
  wire [11:0]\gc0.count_d1_reg[11] ;
  wire [4:0]\gc0.count_d1_reg[8] ;
  wire [4:0]\gc0.count_d1_reg[8]_0 ;
  wire [3:0]\greg.gpcry_sym.diff_pntr_pad_reg[12] ;
  wire \grstd1.grst_full.grst_f.rst_d5_reg ;
  wire \grxd.fg_rxd_wr_length_reg[3] ;
  wire \grxd.rx_partial_pkt_reg ;
  wire \grxd.rx_partial_pkt_reg_0 ;
  wire in0;
  wire out;
  wire [10:10]p_11_out;
  wire p_16_out;
  wire p_3_out;
  wire p_6_out;
  wire prog_full_i;
  wire ram_empty_fb_i_reg;
  wire [0:0]rd_pntr_inv_pad;
  wire rx_complete;
  wire rx_len_wr_en;
  wire s_axi_aclk;
  wire s_axi_aresetn;
  wire sig_ip2bus_data1__0;
  wire sig_rd_rlen_reg;
  wire valid_fwft;
  wire wpntr_n_29;
  wire wpntr_n_30;
  wire wpntr_n_31;
  wire wpntr_n_32;
  wire wpntr_n_42;
  wire wpntr_n_43;
  wire wpntr_n_44;
  wire wpntr_n_45;
  wire wpntr_n_46;
  wire wpntr_n_47;
  wire wpntr_n_48;
  wire wpntr_n_49;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_0_4_wr_pf_ss \gwss.gpf.wrpf 
       (.AR(AR),
        .E(p_16_out),
        .Q({p_11_out,Q}),
        .S({wpntr_n_42,wpntr_n_43,wpntr_n_44,wpntr_n_45,wpntr_n_46,wpntr_n_47,wpntr_n_48,wpntr_n_49}),
        .\gcc0.gc0.count_reg[11] ({wpntr_n_29,wpntr_n_30,wpntr_n_31,wpntr_n_32}),
        .\grstd1.grst_full.grst_f.rst_d5_reg (\grstd1.grst_full.grst_f.rst_d5_reg ),
        .out(out),
        .p_3_out(p_3_out),
        .p_6_out(p_6_out),
        .prog_full_i(prog_full_i),
        .s_axi_aclk(s_axi_aclk));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_0_4_wr_status_flags_ss \gwss.wsts 
       (.Axi_Str_TxD_AReset(Axi_Str_TxD_AReset),
        .E(p_16_out),
        .SR(SR),
        .axi_str_rxd_tlast(axi_str_rxd_tlast),
        .axi_str_rxd_tready(axi_str_rxd_tready),
        .axi_str_rxd_tvalid(axi_str_rxd_tvalid),
        .axis_rd_en__0(axis_rd_en__0),
        .\count_reg[12] (\count_reg[12] ),
        .\gc0.count_d1_reg[8] (\gc0.count_d1_reg[8] ),
        .\gc0.count_d1_reg[8]_0 (\gc0.count_d1_reg[8]_0 ),
        .\grstd1.grst_full.grst_f.rst_d5_reg (\grstd1.grst_full.grst_f.rst_d5_reg ),
        .\grxd.fg_rxd_wr_length_reg[3] (\grxd.fg_rxd_wr_length_reg[3] ),
        .\grxd.fg_rxd_wr_length_reg[3]_0 (E),
        .\grxd.rx_partial_pkt_reg (\grxd.rx_partial_pkt_reg ),
        .\grxd.rx_partial_pkt_reg_0 (\grxd.rx_partial_pkt_reg_0 ),
        .in0(in0),
        .out(out),
        .p_3_out(p_3_out),
        .p_6_out(p_6_out),
        .rd_pntr_inv_pad(rd_pntr_inv_pad),
        .rx_complete(rx_complete),
        .rx_len_wr_en(rx_len_wr_en),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_aresetn(s_axi_aresetn),
        .sig_ip2bus_data1__0(sig_ip2bus_data1__0),
        .sig_rd_rlen_reg(sig_rd_rlen_reg),
        .v1_reg(\c0/v1_reg ),
        .v1_reg_0(\c1/v1_reg ),
        .valid_fwft(valid_fwft));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_0_4_wr_bin_cntr wpntr
       (.AR(AR),
        .\DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram (\DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram ),
        .E(p_16_out),
        .Q({p_11_out,Q}),
        .S(S),
        .\gc0.count_d1_reg[11] (\gc0.count_d1_reg[11] ),
        .\gdiff.gcry_1_sym.diff_pntr_pad_reg[12] ({wpntr_n_29,wpntr_n_30,wpntr_n_31,wpntr_n_32}),
        .\gdiff.gcry_1_sym.diff_pntr_pad_reg[8] ({wpntr_n_42,wpntr_n_43,wpntr_n_44,wpntr_n_45,wpntr_n_46,wpntr_n_47,wpntr_n_48,wpntr_n_49}),
        .\greg.gpcry_sym.diff_pntr_pad_reg[12] (\greg.gpcry_sym.diff_pntr_pad_reg[12] ),
        .ram_empty_fb_i_reg(ram_empty_fb_i_reg),
        .s_axi_aclk(s_axi_aclk),
        .v1_reg(\c0/v1_reg ),
        .v1_reg_0(\c1/v1_reg ));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_0_4_wr_pf_ss
   (prog_full_i,
    p_6_out,
    s_axi_aclk,
    AR,
    E,
    p_3_out,
    Q,
    S,
    \gcc0.gc0.count_reg[11] ,
    out,
    \grstd1.grst_full.grst_f.rst_d5_reg );
  output prog_full_i;
  input p_6_out;
  input s_axi_aclk;
  input [0:0]AR;
  input [0:0]E;
  input p_3_out;
  input [10:0]Q;
  input [7:0]S;
  input [3:0]\gcc0.gc0.count_reg[11] ;
  input out;
  input \grstd1.grst_full.grst_f.rst_d5_reg ;

  wire [0:0]AR;
  wire [0:0]E;
  wire [10:0]Q;
  wire [7:0]S;
  wire eqOp__10;
  wire [3:0]\gcc0.gc0.count_reg[11] ;
  wire \gdiff.gcry_1_sym.diff_pntr_pad_reg_n_0_[10] ;
  wire \gdiff.gcry_1_sym.diff_pntr_pad_reg_n_0_[11] ;
  wire \gdiff.gcry_1_sym.diff_pntr_pad_reg_n_0_[12] ;
  wire \gdiff.gcry_1_sym.diff_pntr_pad_reg_n_0_[1] ;
  wire \gdiff.gcry_1_sym.diff_pntr_pad_reg_n_0_[2] ;
  wire \gdiff.gcry_1_sym.diff_pntr_pad_reg_n_0_[3] ;
  wire \gdiff.gcry_1_sym.diff_pntr_pad_reg_n_0_[4] ;
  wire \gdiff.gcry_1_sym.diff_pntr_pad_reg_n_0_[5] ;
  wire \gdiff.gcry_1_sym.diff_pntr_pad_reg_n_0_[6] ;
  wire \gdiff.gcry_1_sym.diff_pntr_pad_reg_n_0_[7] ;
  wire \gdiff.gcry_1_sym.diff_pntr_pad_reg_n_0_[8] ;
  wire \gdiff.gcry_1_sym.diff_pntr_pad_reg_n_0_[9] ;
  wire \gpfs.prog_full_i_i_1_n_0 ;
  wire \gpfs.prog_full_i_i_3_n_0 ;
  wire \gpfs.prog_full_i_i_4_n_0 ;
  wire \grstd1.grst_full.grst_f.rst_d5_reg ;
  wire out;
  wire p_3_out;
  wire p_6_out;
  wire plusOp_carry__0_n_12;
  wire plusOp_carry__0_n_13;
  wire plusOp_carry__0_n_14;
  wire plusOp_carry__0_n_15;
  wire plusOp_carry__0_n_5;
  wire plusOp_carry__0_n_6;
  wire plusOp_carry__0_n_7;
  wire plusOp_carry_n_0;
  wire plusOp_carry_n_1;
  wire plusOp_carry_n_10;
  wire plusOp_carry_n_11;
  wire plusOp_carry_n_12;
  wire plusOp_carry_n_13;
  wire plusOp_carry_n_14;
  wire plusOp_carry_n_15;
  wire plusOp_carry_n_2;
  wire plusOp_carry_n_3;
  wire plusOp_carry_n_5;
  wire plusOp_carry_n_6;
  wire plusOp_carry_n_7;
  wire plusOp_carry_n_8;
  wire plusOp_carry_n_9;
  wire prog_full_i;
  wire ram_rd_en_i;
  wire ram_wr_en_i;
  wire s_axi_aclk;
  wire [3:3]NLW_plusOp_carry_CO_UNCONNECTED;
  wire [7:3]NLW_plusOp_carry__0_CO_UNCONNECTED;
  wire [7:4]NLW_plusOp_carry__0_DI_UNCONNECTED;
  wire [7:4]NLW_plusOp_carry__0_O_UNCONNECTED;
  wire [7:4]NLW_plusOp_carry__0_S_UNCONNECTED;

  FDCE #(
    .INIT(1'b0)) 
    \gdiff.gcry_1_sym.diff_pntr_pad_reg[10] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(AR),
        .D(plusOp_carry__0_n_14),
        .Q(\gdiff.gcry_1_sym.diff_pntr_pad_reg_n_0_[10] ));
  FDCE #(
    .INIT(1'b0)) 
    \gdiff.gcry_1_sym.diff_pntr_pad_reg[11] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(AR),
        .D(plusOp_carry__0_n_13),
        .Q(\gdiff.gcry_1_sym.diff_pntr_pad_reg_n_0_[11] ));
  FDCE #(
    .INIT(1'b0)) 
    \gdiff.gcry_1_sym.diff_pntr_pad_reg[12] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(AR),
        .D(plusOp_carry__0_n_12),
        .Q(\gdiff.gcry_1_sym.diff_pntr_pad_reg_n_0_[12] ));
  FDCE #(
    .INIT(1'b0)) 
    \gdiff.gcry_1_sym.diff_pntr_pad_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(AR),
        .D(plusOp_carry_n_15),
        .Q(\gdiff.gcry_1_sym.diff_pntr_pad_reg_n_0_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \gdiff.gcry_1_sym.diff_pntr_pad_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(AR),
        .D(plusOp_carry_n_14),
        .Q(\gdiff.gcry_1_sym.diff_pntr_pad_reg_n_0_[2] ));
  FDCE #(
    .INIT(1'b0)) 
    \gdiff.gcry_1_sym.diff_pntr_pad_reg[3] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(AR),
        .D(plusOp_carry_n_13),
        .Q(\gdiff.gcry_1_sym.diff_pntr_pad_reg_n_0_[3] ));
  FDCE #(
    .INIT(1'b0)) 
    \gdiff.gcry_1_sym.diff_pntr_pad_reg[4] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(AR),
        .D(plusOp_carry_n_12),
        .Q(\gdiff.gcry_1_sym.diff_pntr_pad_reg_n_0_[4] ));
  FDCE #(
    .INIT(1'b0)) 
    \gdiff.gcry_1_sym.diff_pntr_pad_reg[5] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(AR),
        .D(plusOp_carry_n_11),
        .Q(\gdiff.gcry_1_sym.diff_pntr_pad_reg_n_0_[5] ));
  FDCE #(
    .INIT(1'b0)) 
    \gdiff.gcry_1_sym.diff_pntr_pad_reg[6] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(AR),
        .D(plusOp_carry_n_10),
        .Q(\gdiff.gcry_1_sym.diff_pntr_pad_reg_n_0_[6] ));
  FDCE #(
    .INIT(1'b0)) 
    \gdiff.gcry_1_sym.diff_pntr_pad_reg[7] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(AR),
        .D(plusOp_carry_n_9),
        .Q(\gdiff.gcry_1_sym.diff_pntr_pad_reg_n_0_[7] ));
  FDCE #(
    .INIT(1'b0)) 
    \gdiff.gcry_1_sym.diff_pntr_pad_reg[8] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(AR),
        .D(plusOp_carry_n_8),
        .Q(\gdiff.gcry_1_sym.diff_pntr_pad_reg_n_0_[8] ));
  FDCE #(
    .INIT(1'b0)) 
    \gdiff.gcry_1_sym.diff_pntr_pad_reg[9] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(AR),
        .D(plusOp_carry__0_n_15),
        .Q(\gdiff.gcry_1_sym.diff_pntr_pad_reg_n_0_[9] ));
  LUT5 #(
    .INIT(32'h55150400)) 
    \gpfs.prog_full_i_i_1 
       (.I0(\grstd1.grst_full.grst_f.rst_d5_reg ),
        .I1(eqOp__10),
        .I2(ram_rd_en_i),
        .I3(ram_wr_en_i),
        .I4(prog_full_i),
        .O(\gpfs.prog_full_i_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \gpfs.prog_full_i_i_2 
       (.I0(\gpfs.prog_full_i_i_3_n_0 ),
        .I1(\gdiff.gcry_1_sym.diff_pntr_pad_reg_n_0_[12] ),
        .I2(\gdiff.gcry_1_sym.diff_pntr_pad_reg_n_0_[11] ),
        .I3(\gdiff.gcry_1_sym.diff_pntr_pad_reg_n_0_[10] ),
        .I4(\gdiff.gcry_1_sym.diff_pntr_pad_reg_n_0_[9] ),
        .I5(\gpfs.prog_full_i_i_4_n_0 ),
        .O(eqOp__10));
  LUT4 #(
    .INIT(16'h8000)) 
    \gpfs.prog_full_i_i_3 
       (.I0(\gdiff.gcry_1_sym.diff_pntr_pad_reg_n_0_[8] ),
        .I1(\gdiff.gcry_1_sym.diff_pntr_pad_reg_n_0_[7] ),
        .I2(\gdiff.gcry_1_sym.diff_pntr_pad_reg_n_0_[6] ),
        .I3(\gdiff.gcry_1_sym.diff_pntr_pad_reg_n_0_[5] ),
        .O(\gpfs.prog_full_i_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h0400)) 
    \gpfs.prog_full_i_i_4 
       (.I0(\gdiff.gcry_1_sym.diff_pntr_pad_reg_n_0_[2] ),
        .I1(\gdiff.gcry_1_sym.diff_pntr_pad_reg_n_0_[1] ),
        .I2(\gdiff.gcry_1_sym.diff_pntr_pad_reg_n_0_[3] ),
        .I3(\gdiff.gcry_1_sym.diff_pntr_pad_reg_n_0_[4] ),
        .O(\gpfs.prog_full_i_i_4_n_0 ));
  FDPE #(
    .INIT(1'b1)) 
    \gpfs.prog_full_i_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\gpfs.prog_full_i_i_1_n_0 ),
        .PRE(out),
        .Q(prog_full_i));
  FDCE #(
    .INIT(1'b0)) 
    \greg.ram_rd_en_i_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(AR),
        .D(p_6_out),
        .Q(ram_rd_en_i));
  FDCE #(
    .INIT(1'b0)) 
    \greg.ram_wr_en_i_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(AR),
        .D(E),
        .Q(ram_wr_en_i));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY8 plusOp_carry
       (.CI(p_3_out),
        .CI_TOP(1'b0),
        .CO({plusOp_carry_n_0,plusOp_carry_n_1,plusOp_carry_n_2,plusOp_carry_n_3,NLW_plusOp_carry_CO_UNCONNECTED[3],plusOp_carry_n_5,plusOp_carry_n_6,plusOp_carry_n_7}),
        .DI(Q[7:0]),
        .O({plusOp_carry_n_8,plusOp_carry_n_9,plusOp_carry_n_10,plusOp_carry_n_11,plusOp_carry_n_12,plusOp_carry_n_13,plusOp_carry_n_14,plusOp_carry_n_15}),
        .S(S));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY8 plusOp_carry__0
       (.CI(plusOp_carry_n_0),
        .CI_TOP(1'b0),
        .CO({NLW_plusOp_carry__0_CO_UNCONNECTED[7:3],plusOp_carry__0_n_5,plusOp_carry__0_n_6,plusOp_carry__0_n_7}),
        .DI({NLW_plusOp_carry__0_DI_UNCONNECTED[7:4],1'b0,Q[10:8]}),
        .O({NLW_plusOp_carry__0_O_UNCONNECTED[7:4],plusOp_carry__0_n_12,plusOp_carry__0_n_13,plusOp_carry__0_n_14,plusOp_carry__0_n_15}),
        .S({NLW_plusOp_carry__0_S_UNCONNECTED[7:4],\gcc0.gc0.count_reg[11] }));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_0_4_wr_status_flags_ss
   (\grxd.fg_rxd_wr_length_reg[3] ,
    rd_pntr_inv_pad,
    E,
    p_3_out,
    \count_reg[12] ,
    SR,
    sig_ip2bus_data1__0,
    rx_complete,
    \grxd.fg_rxd_wr_length_reg[3]_0 ,
    axi_str_rxd_tready,
    \grxd.rx_partial_pkt_reg ,
    \gc0.count_d1_reg[8] ,
    v1_reg,
    \gc0.count_d1_reg[8]_0 ,
    v1_reg_0,
    s_axi_aclk,
    out,
    axi_str_rxd_tvalid,
    p_6_out,
    \grstd1.grst_full.grst_f.rst_d5_reg ,
    valid_fwft,
    axis_rd_en__0,
    axi_str_rxd_tlast,
    rx_len_wr_en,
    s_axi_aresetn,
    Axi_Str_TxD_AReset,
    \grxd.rx_partial_pkt_reg_0 ,
    sig_rd_rlen_reg,
    in0);
  output \grxd.fg_rxd_wr_length_reg[3] ;
  output [0:0]rd_pntr_inv_pad;
  output [0:0]E;
  output p_3_out;
  output [0:0]\count_reg[12] ;
  output [0:0]SR;
  output sig_ip2bus_data1__0;
  output rx_complete;
  output [0:0]\grxd.fg_rxd_wr_length_reg[3]_0 ;
  output axi_str_rxd_tready;
  output \grxd.rx_partial_pkt_reg ;
  input [4:0]\gc0.count_d1_reg[8] ;
  input [0:0]v1_reg;
  input [4:0]\gc0.count_d1_reg[8]_0 ;
  input [0:0]v1_reg_0;
  input s_axi_aclk;
  input out;
  input axi_str_rxd_tvalid;
  input p_6_out;
  input \grstd1.grst_full.grst_f.rst_d5_reg ;
  input valid_fwft;
  input axis_rd_en__0;
  input axi_str_rxd_tlast;
  input rx_len_wr_en;
  input s_axi_aresetn;
  input Axi_Str_TxD_AReset;
  input \grxd.rx_partial_pkt_reg_0 ;
  input sig_rd_rlen_reg;
  input in0;

  wire Axi_Str_TxD_AReset;
  wire [0:0]E;
  wire [0:0]SR;
  wire axi_str_rxd_tlast;
  wire axi_str_rxd_tready;
  wire axi_str_rxd_tvalid;
  wire axis_rd_en__0;
  wire comp1;
  wire [0:0]\count_reg[12] ;
  wire [4:0]\gc0.count_d1_reg[8] ;
  wire [4:0]\gc0.count_d1_reg[8]_0 ;
  wire \grstd1.grst_full.grst_f.rst_d5_reg ;
  wire \grxd.fg_rxd_wr_length_reg[3] ;
  wire [0:0]\grxd.fg_rxd_wr_length_reg[3]_0 ;
  wire \grxd.rx_partial_pkt_reg ;
  wire \grxd.rx_partial_pkt_reg_0 ;
  wire in0;
  wire out;
  wire p_2_out;
  wire p_3_out;
  wire p_6_out;
  wire ram_full_comb;
  wire [0:0]rd_pntr_inv_pad;
  wire rx_complete;
  wire rx_len_wr_en;
  wire s_axi_aclk;
  wire s_axi_aresetn;
  wire sig_ip2bus_data1__0;
  wire sig_rd_rlen_reg;
  wire [0:0]v1_reg;
  wire [0:0]v1_reg_0;
  wire valid_fwft;

  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT1 #(
    .INIT(2'h1)) 
    axi_str_rxd_tready_INST_0
       (.I0(\grxd.fg_rxd_wr_length_reg[3] ),
        .O(axi_str_rxd_tready));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_0_4_compare c0
       (.E(E),
        .comp1(comp1),
        .\gc0.count_d1_reg[8] (\gc0.count_d1_reg[8] ),
        .\grstd1.grst_full.grst_f.rst_d5_reg (\grstd1.grst_full.grst_f.rst_d5_reg ),
        .p_2_out(p_2_out),
        .p_6_out(p_6_out),
        .ram_full_comb(ram_full_comb),
        .v1_reg(v1_reg));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_0_4_compare_3 c1
       (.comp1(comp1),
        .\gc0.count_d1_reg[8] (\gc0.count_d1_reg[8]_0 ),
        .v1_reg_0(v1_reg_0));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'h88888878)) 
    \count[12]_i_1 
       (.I0(valid_fwft),
        .I1(axis_rd_en__0),
        .I2(axi_str_rxd_tvalid),
        .I3(\grxd.fg_rxd_wr_length_reg[3] ),
        .I4(p_2_out),
        .O(\count_reg[12] ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h10)) 
    \greg.ram_wr_en_i_i_1 
       (.I0(p_2_out),
        .I1(\grxd.fg_rxd_wr_length_reg[3] ),
        .I2(axi_str_rxd_tvalid),
        .O(E));
  LUT6 #(
    .INIT(64'hFFFFFFFFBF00FFFF)) 
    \grxd.fg_rxd_wr_length[22]_i_1 
       (.I0(\grxd.fg_rxd_wr_length_reg[3] ),
        .I1(axi_str_rxd_tvalid),
        .I2(axi_str_rxd_tlast),
        .I3(rx_len_wr_en),
        .I4(s_axi_aresetn),
        .I5(Axi_Str_TxD_AReset),
        .O(SR));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \grxd.fg_rxd_wr_length[22]_i_2 
       (.I0(axi_str_rxd_tvalid),
        .I1(\grxd.fg_rxd_wr_length_reg[3] ),
        .O(\grxd.fg_rxd_wr_length_reg[3]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \grxd.rx_len_wr_en_i_2 
       (.I0(\grxd.fg_rxd_wr_length_reg[3] ),
        .I1(axi_str_rxd_tvalid),
        .I2(axi_str_rxd_tlast),
        .O(rx_complete));
  LUT6 #(
    .INIT(64'hFFFFFFFFE0EEEEEE)) 
    \grxd.rx_partial_pkt_i_1 
       (.I0(\grxd.rx_partial_pkt_reg_0 ),
        .I1(sig_rd_rlen_reg),
        .I2(\grxd.fg_rxd_wr_length_reg[3] ),
        .I3(axi_str_rxd_tvalid),
        .I4(axi_str_rxd_tlast),
        .I5(in0),
        .O(\grxd.rx_partial_pkt_reg ));
  LUT4 #(
    .INIT(16'h02FF)) 
    plusOp_carry_i_1
       (.I0(axi_str_rxd_tvalid),
        .I1(\grxd.fg_rxd_wr_length_reg[3] ),
        .I2(p_2_out),
        .I3(p_6_out),
        .O(rd_pntr_inv_pad));
  LUT4 #(
    .INIT(16'h0002)) 
    plusOp_carry_i_1__0
       (.I0(axi_str_rxd_tvalid),
        .I1(\grxd.fg_rxd_wr_length_reg[3] ),
        .I2(p_2_out),
        .I3(p_6_out),
        .O(p_3_out));
  (* equivalent_register_removal = "no" *) 
  FDPE #(
    .INIT(1'b1)) 
    ram_full_fb_i_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(ram_full_comb),
        .PRE(out),
        .Q(p_2_out));
  (* equivalent_register_removal = "no" *) 
  FDPE #(
    .INIT(1'b1)) 
    ram_full_i_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(ram_full_comb),
        .PRE(out),
        .Q(\grxd.fg_rxd_wr_length_reg[3] ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'hAA2A)) 
    \sig_ip2bus_data[16]_i_2 
       (.I0(\grxd.rx_partial_pkt_reg_0 ),
        .I1(axi_str_rxd_tlast),
        .I2(axi_str_rxd_tvalid),
        .I3(\grxd.fg_rxd_wr_length_reg[3] ),
        .O(sig_ip2bus_data1__0));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_1_2
   (in0,
    out,
    \sig_register_array[0]1_in ,
    \sig_ip2bus_data_reg[25] ,
    D,
    \sig_ip2bus_data_reg[9] ,
    s_axi_aclk,
    rx_fg_len_empty_d1,
    ram_full_i,
    axi_str_rxd_tvalid,
    axi_str_rxd_tlast,
    E,
    \grxd.rx_partial_pkt_reg ,
    Q,
    \count_reg[7] ,
    \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3] ,
    \count_reg[11] ,
    sig_rd_rlen_reg,
    rx_len_wr_en,
    sig_rx_channel_reset_reg,
    Axi_Str_TxD_AReset,
    s_axi_aresetn,
    \GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9] ,
    empty_fwft_i_reg,
    \GEN_BKEND_CE_REGISTERS[4].ce_out_i_reg[4] ,
    fg_rxd_wr_length);
  output in0;
  output out;
  output \sig_register_array[0]1_in ;
  output \sig_ip2bus_data_reg[25] ;
  output [5:0]D;
  output [15:0]\sig_ip2bus_data_reg[9] ;
  input s_axi_aclk;
  input rx_fg_len_empty_d1;
  input ram_full_i;
  input axi_str_rxd_tvalid;
  input axi_str_rxd_tlast;
  input [0:0]E;
  input \grxd.rx_partial_pkt_reg ;
  input [4:0]Q;
  input \count_reg[7] ;
  input \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3] ;
  input \count_reg[11] ;
  input sig_rd_rlen_reg;
  input rx_len_wr_en;
  input sig_rx_channel_reset_reg;
  input Axi_Str_TxD_AReset;
  input s_axi_aresetn;
  input \GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9] ;
  input empty_fwft_i_reg;
  input \GEN_BKEND_CE_REGISTERS[4].ce_out_i_reg[4] ;
  input [19:0]fg_rxd_wr_length;

  wire Axi_Str_TxD_AReset;
  wire [5:0]D;
  wire [0:0]E;
  wire \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3] ;
  wire \GEN_BKEND_CE_REGISTERS[4].ce_out_i_reg[4] ;
  wire \GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9] ;
  wire [4:0]Q;
  wire axi_str_rxd_tlast;
  wire axi_str_rxd_tvalid;
  wire \count_reg[11] ;
  wire \count_reg[7] ;
  wire empty_fwft_i_reg;
  wire [19:0]fg_rxd_wr_length;
  wire \grxd.rx_partial_pkt_reg ;
  wire in0;
  wire out;
  wire ram_full_i;
  wire rx_fg_len_empty_d1;
  wire rx_len_wr_en;
  wire s_axi_aclk;
  wire s_axi_aresetn;
  wire \sig_ip2bus_data_reg[25] ;
  wire [15:0]\sig_ip2bus_data_reg[9] ;
  wire sig_rd_rlen_reg;
  wire \sig_register_array[0]1_in ;
  wire sig_rx_channel_reset_reg;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_1_2_synth inst_fifo_gen
       (.Axi_Str_TxD_AReset(Axi_Str_TxD_AReset),
        .D(D),
        .E(E),
        .\GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3] (\GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3] ),
        .\GEN_BKEND_CE_REGISTERS[4].ce_out_i_reg[4] (\GEN_BKEND_CE_REGISTERS[4].ce_out_i_reg[4] ),
        .\GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9] (\GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9] ),
        .Q(Q),
        .axi_str_rxd_tlast(axi_str_rxd_tlast),
        .axi_str_rxd_tvalid(axi_str_rxd_tvalid),
        .\count_reg[11] (\count_reg[11] ),
        .\count_reg[7] (\count_reg[7] ),
        .empty_fwft_i_reg(empty_fwft_i_reg),
        .fg_rxd_wr_length(fg_rxd_wr_length),
        .\grxd.rx_partial_pkt_reg (\grxd.rx_partial_pkt_reg ),
        .in0(in0),
        .out(out),
        .ram_full_i(ram_full_i),
        .rx_fg_len_empty_d1(rx_fg_len_empty_d1),
        .rx_len_wr_en(rx_len_wr_en),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_aresetn(s_axi_aresetn),
        .\sig_ip2bus_data_reg[25] (\sig_ip2bus_data_reg[25] ),
        .\sig_ip2bus_data_reg[9] (\sig_ip2bus_data_reg[9] ),
        .sig_rd_rlen_reg(sig_rd_rlen_reg),
        .\sig_register_array[0]1_in (\sig_register_array[0]1_in ),
        .sig_rx_channel_reset_reg(sig_rx_channel_reset_reg));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_1_2_bram_fifo_rstlogic
   (in0,
    SR,
    s_axi_aclk,
    sig_rx_channel_reset_reg,
    Axi_Str_TxD_AReset,
    s_axi_aresetn);
  output in0;
  output [0:0]SR;
  input s_axi_aclk;
  input sig_rx_channel_reset_reg;
  input Axi_Str_TxD_AReset;
  input s_axi_aresetn;

  wire Axi_Str_TxD_AReset;
  wire [0:0]SR;
  (* async_reg = "true" *) wire d_asreg;
  wire in0;
  wire p_0_in;
  (* async_reg = "true" *) wire rd_rst_reg;
  (* async_reg = "true" *) wire rdrst_q1;
  (* async_reg = "true" *) wire rdrst_q2;
  (* async_reg = "true" *) wire rdrst_q3;
  (* async_reg = "true" *) wire rst_d1;
  (* async_reg = "true" *) wire rst_d2;
  wire s_axi_aclk;
  wire s_axi_aresetn;
  wire sig_rx_channel_reset_reg;
  wire wr_rst_reg_i_1_n_0;
  (* async_reg = "true" *) wire wrrst_q1;
  (* async_reg = "true" *) wire wrrst_q2;
  (* async_reg = "true" *) wire wrrst_q3;

  LUT4 #(
    .INIT(16'hFEFF)) 
    \gc1.count_d1[9]_i_1 
       (.I0(p_0_in),
        .I1(sig_rx_channel_reset_reg),
        .I2(Axi_Str_TxD_AReset),
        .I3(s_axi_aresetn),
        .O(SR));
  LUT1 #(
    .INIT(2'h2)) 
    i_0
       (.I0(1'b0),
        .O(d_asreg));
  LUT1 #(
    .INIT(2'h2)) 
    i_1
       (.I0(1'b0),
        .O(rd_rst_reg));
  LUT1 #(
    .INIT(2'h2)) 
    i_2
       (.I0(1'b0),
        .O(wrrst_q1));
  LUT1 #(
    .INIT(2'h2)) 
    i_3
       (.I0(1'b0),
        .O(wrrst_q2));
  LUT1 #(
    .INIT(2'h2)) 
    i_4
       (.I0(1'b0),
        .O(wrrst_q3));
  LUT1 #(
    .INIT(2'h2)) 
    i_5
       (.I0(1'b0),
        .O(rdrst_q1));
  LUT1 #(
    .INIT(2'h2)) 
    i_6
       (.I0(1'b0),
        .O(rdrst_q2));
  LUT1 #(
    .INIT(2'h2)) 
    i_7
       (.I0(1'b0),
        .O(rdrst_q3));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b1)) 
    rst_d1_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(in0),
        .Q(rst_d1),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b1)) 
    rst_d2_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(rst_d1),
        .Q(rst_d2),
        .R(1'b0));
  LUT3 #(
    .INIT(8'hFD)) 
    rst_inferred_i_1
       (.I0(s_axi_aresetn),
        .I1(Axi_Str_TxD_AReset),
        .I2(sig_rx_channel_reset_reg),
        .O(in0));
  LUT2 #(
    .INIT(4'h2)) 
    wr_rst_reg_i_1
       (.I0(in0),
        .I1(p_0_in),
        .O(wr_rst_reg_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    wr_rst_reg_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(wr_rst_reg_i_1_n_0),
        .Q(p_0_in),
        .R(1'b0));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_1_2_compare
   (comp0,
    v1_reg);
  output comp0;
  input [4:0]v1_reg;

  wire carrynet_0;
  wire carrynet_1;
  wire carrynet_2;
  wire comp0;
  wire [4:0]v1_reg;
  wire [7:3]\NLW_gmux.gm[0].gm1.m1_CARRY4_CARRY8_CO_UNCONNECTED ;
  wire [7:5]\NLW_gmux.gm[0].gm1.m1_CARRY4_CARRY8_DI_UNCONNECTED ;
  wire [7:0]\NLW_gmux.gm[0].gm1.m1_CARRY4_CARRY8_O_UNCONNECTED ;
  wire [7:5]\NLW_gmux.gm[0].gm1.m1_CARRY4_CARRY8_S_UNCONNECTED ;

  (* XILINX_LEGACY_PRIM = "(CARRY4)" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY8 \gmux.gm[0].gm1.m1_CARRY4_CARRY8 
       (.CI(1'b1),
        .CI_TOP(1'b0),
        .CO({\NLW_gmux.gm[0].gm1.m1_CARRY4_CARRY8_CO_UNCONNECTED [7:5],comp0,\NLW_gmux.gm[0].gm1.m1_CARRY4_CARRY8_CO_UNCONNECTED [3],carrynet_2,carrynet_1,carrynet_0}),
        .DI({\NLW_gmux.gm[0].gm1.m1_CARRY4_CARRY8_DI_UNCONNECTED [7:5],1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_gmux.gm[0].gm1.m1_CARRY4_CARRY8_O_UNCONNECTED [7:0]),
        .S({\NLW_gmux.gm[0].gm1.m1_CARRY4_CARRY8_S_UNCONNECTED [7:5],v1_reg}));
endmodule

(* ORIG_REF_NAME = "fifo_generator_v13_1_2_compare" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_1_2_compare_0
   (ram_full_i_reg,
    v1_reg_0,
    rx_len_wr_en,
    SR,
    p_7_out,
    comp0,
    out);
  output ram_full_i_reg;
  input [4:0]v1_reg_0;
  input rx_len_wr_en;
  input [0:0]SR;
  input p_7_out;
  input comp0;
  input out;

  wire [0:0]SR;
  wire carrynet_0;
  wire carrynet_1;
  wire carrynet_2;
  wire comp0;
  wire comp1;
  wire out;
  wire p_7_out;
  wire ram_full_i_reg;
  wire rx_len_wr_en;
  wire [4:0]v1_reg_0;
  wire [7:3]\NLW_gmux.gm[0].gm1.m1_CARRY4_CARRY8_CO_UNCONNECTED ;
  wire [7:5]\NLW_gmux.gm[0].gm1.m1_CARRY4_CARRY8_DI_UNCONNECTED ;
  wire [7:0]\NLW_gmux.gm[0].gm1.m1_CARRY4_CARRY8_O_UNCONNECTED ;
  wire [7:5]\NLW_gmux.gm[0].gm1.m1_CARRY4_CARRY8_S_UNCONNECTED ;

  (* XILINX_LEGACY_PRIM = "(CARRY4)" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY8 \gmux.gm[0].gm1.m1_CARRY4_CARRY8 
       (.CI(1'b1),
        .CI_TOP(1'b0),
        .CO({\NLW_gmux.gm[0].gm1.m1_CARRY4_CARRY8_CO_UNCONNECTED [7:5],comp1,\NLW_gmux.gm[0].gm1.m1_CARRY4_CARRY8_CO_UNCONNECTED [3],carrynet_2,carrynet_1,carrynet_0}),
        .DI({\NLW_gmux.gm[0].gm1.m1_CARRY4_CARRY8_DI_UNCONNECTED [7:5],1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_gmux.gm[0].gm1.m1_CARRY4_CARRY8_O_UNCONNECTED [7:0]),
        .S({\NLW_gmux.gm[0].gm1.m1_CARRY4_CARRY8_S_UNCONNECTED [7:5],v1_reg_0}));
  LUT6 #(
    .INIT(64'h000F0F0F00080008)) 
    ram_full_fb_i_i_1__0
       (.I0(comp1),
        .I1(rx_len_wr_en),
        .I2(SR),
        .I3(p_7_out),
        .I4(comp0),
        .I5(out),
        .O(ram_full_i_reg));
endmodule

(* ORIG_REF_NAME = "fifo_generator_v13_1_2_compare" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_1_2_compare_1
   (ram_empty_i_reg,
    \gc1.count_d2_reg[0]_rep__1 ,
    \gc1.count_d2_reg[2]_rep__1 ,
    \gc1.count_d2_reg[4]_rep__1 ,
    \gc1.count_d2_reg[6] ,
    \gc1.count_d2_reg[8] ,
    comp1,
    E,
    srst_full_ff_i,
    out,
    \grxd.rx_len_wr_en_reg );
  output ram_empty_i_reg;
  input \gc1.count_d2_reg[0]_rep__1 ;
  input \gc1.count_d2_reg[2]_rep__1 ;
  input \gc1.count_d2_reg[4]_rep__1 ;
  input \gc1.count_d2_reg[6] ;
  input \gc1.count_d2_reg[8] ;
  input comp1;
  input [0:0]E;
  input srst_full_ff_i;
  input out;
  input [0:0]\grxd.rx_len_wr_en_reg ;

  wire [0:0]E;
  wire carrynet_0;
  wire carrynet_1;
  wire carrynet_2;
  wire comp0;
  wire comp1;
  wire \gc1.count_d2_reg[0]_rep__1 ;
  wire \gc1.count_d2_reg[2]_rep__1 ;
  wire \gc1.count_d2_reg[4]_rep__1 ;
  wire \gc1.count_d2_reg[6] ;
  wire \gc1.count_d2_reg[8] ;
  wire [0:0]\grxd.rx_len_wr_en_reg ;
  wire out;
  wire ram_empty_i_reg;
  wire srst_full_ff_i;
  wire [7:3]\NLW_gmux.gm[0].gm1.m1_CARRY4_CARRY8_CO_UNCONNECTED ;
  wire [7:5]\NLW_gmux.gm[0].gm1.m1_CARRY4_CARRY8_DI_UNCONNECTED ;
  wire [7:0]\NLW_gmux.gm[0].gm1.m1_CARRY4_CARRY8_O_UNCONNECTED ;
  wire [7:5]\NLW_gmux.gm[0].gm1.m1_CARRY4_CARRY8_S_UNCONNECTED ;

  (* XILINX_LEGACY_PRIM = "(CARRY4)" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY8 \gmux.gm[0].gm1.m1_CARRY4_CARRY8 
       (.CI(1'b1),
        .CI_TOP(1'b0),
        .CO({\NLW_gmux.gm[0].gm1.m1_CARRY4_CARRY8_CO_UNCONNECTED [7:5],comp0,\NLW_gmux.gm[0].gm1.m1_CARRY4_CARRY8_CO_UNCONNECTED [3],carrynet_2,carrynet_1,carrynet_0}),
        .DI({\NLW_gmux.gm[0].gm1.m1_CARRY4_CARRY8_DI_UNCONNECTED [7:5],1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_gmux.gm[0].gm1.m1_CARRY4_CARRY8_O_UNCONNECTED [7:0]),
        .S({\NLW_gmux.gm[0].gm1.m1_CARRY4_CARRY8_S_UNCONNECTED [7:5],\gc1.count_d2_reg[8] ,\gc1.count_d2_reg[6] ,\gc1.count_d2_reg[4]_rep__1 ,\gc1.count_d2_reg[2]_rep__1 ,\gc1.count_d2_reg[0]_rep__1 }));
  LUT6 #(
    .INIT(64'hFF55FF00FFFFFFC0)) 
    ram_empty_fb_i_i_1__0
       (.I0(comp0),
        .I1(comp1),
        .I2(E),
        .I3(srst_full_ff_i),
        .I4(out),
        .I5(\grxd.rx_len_wr_en_reg ),
        .O(ram_empty_i_reg));
endmodule

(* ORIG_REF_NAME = "fifo_generator_v13_1_2_compare" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_1_2_compare_2
   (comp1,
    v1_reg);
  output comp1;
  input [4:0]v1_reg;

  wire carrynet_0;
  wire carrynet_1;
  wire carrynet_2;
  wire comp1;
  wire [4:0]v1_reg;
  wire [7:3]\NLW_gmux.gm[0].gm1.m1_CARRY4_CARRY8_CO_UNCONNECTED ;
  wire [7:5]\NLW_gmux.gm[0].gm1.m1_CARRY4_CARRY8_DI_UNCONNECTED ;
  wire [7:0]\NLW_gmux.gm[0].gm1.m1_CARRY4_CARRY8_O_UNCONNECTED ;
  wire [7:5]\NLW_gmux.gm[0].gm1.m1_CARRY4_CARRY8_S_UNCONNECTED ;

  (* XILINX_LEGACY_PRIM = "(CARRY4)" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY8 \gmux.gm[0].gm1.m1_CARRY4_CARRY8 
       (.CI(1'b1),
        .CI_TOP(1'b0),
        .CO({\NLW_gmux.gm[0].gm1.m1_CARRY4_CARRY8_CO_UNCONNECTED [7:5],comp1,\NLW_gmux.gm[0].gm1.m1_CARRY4_CARRY8_CO_UNCONNECTED [3],carrynet_2,carrynet_1,carrynet_0}),
        .DI({\NLW_gmux.gm[0].gm1.m1_CARRY4_CARRY8_DI_UNCONNECTED [7:5],1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_gmux.gm[0].gm1.m1_CARRY4_CARRY8_O_UNCONNECTED [7:0]),
        .S({\NLW_gmux.gm[0].gm1.m1_CARRY4_CARRY8_S_UNCONNECTED [7:5],v1_reg}));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_1_2_dmem
   (\goreg_dm.dout_i_reg[22] ,
    s_axi_aclk,
    fg_rxd_wr_length,
    Q,
    \gcc0.gc0.count_d1_reg[5] ,
    ram_full_fb_i_reg,
    ram_full_fb_i_reg_0,
    ram_full_fb_i_reg_1,
    \gcc0.gc0.count_d1_reg[9] ,
    ram_full_fb_i_reg_2,
    \gcc0.gc0.count_d1_reg[9]_0 ,
    \gcc0.gc0.count_d1_reg[9]_1 ,
    \gcc0.gc0.count_d1_reg[9]_2 ,
    ram_full_fb_i_reg_3,
    \gcc0.gc0.count_d1_reg[8] ,
    \gcc0.gc0.count_d1_reg[8]_0 ,
    \gcc0.gc0.count_d1_reg[8]_1 ,
    \gcc0.gc0.count_d1_reg[7] ,
    \gcc0.gc0.count_d1_reg[7]_0 ,
    \gcc0.gc0.count_d1_reg[6] ,
    ram_full_fb_i_reg_4,
    ADDRG,
    \gc1.count_d2_reg[5]_rep__0 ,
    \gc1.count_d2_reg[0]_rep__1 ,
    \gc1.count_d2_reg[1]_rep__1 ,
    \gc1.count_d2_reg[2]_rep__1 ,
    \gc1.count_d2_reg[3]_rep__1 ,
    \gc1.count_d2_reg[4]_rep__1 ,
    \gc1.count_d2_reg[5]_rep__1 ,
    SR,
    \gpregsm1.curr_fwft_state_reg[1] );
  output [22:0]\goreg_dm.dout_i_reg[22] ;
  input s_axi_aclk;
  input [19:0]fg_rxd_wr_length;
  input [9:0]Q;
  input [5:0]\gcc0.gc0.count_d1_reg[5] ;
  input ram_full_fb_i_reg;
  input ram_full_fb_i_reg_0;
  input ram_full_fb_i_reg_1;
  input \gcc0.gc0.count_d1_reg[9] ;
  input ram_full_fb_i_reg_2;
  input \gcc0.gc0.count_d1_reg[9]_0 ;
  input \gcc0.gc0.count_d1_reg[9]_1 ;
  input \gcc0.gc0.count_d1_reg[9]_2 ;
  input ram_full_fb_i_reg_3;
  input \gcc0.gc0.count_d1_reg[8] ;
  input \gcc0.gc0.count_d1_reg[8]_0 ;
  input \gcc0.gc0.count_d1_reg[8]_1 ;
  input \gcc0.gc0.count_d1_reg[7] ;
  input \gcc0.gc0.count_d1_reg[7]_0 ;
  input \gcc0.gc0.count_d1_reg[6] ;
  input ram_full_fb_i_reg_4;
  input [5:0]ADDRG;
  input [5:0]\gc1.count_d2_reg[5]_rep__0 ;
  input \gc1.count_d2_reg[0]_rep__1 ;
  input \gc1.count_d2_reg[1]_rep__1 ;
  input \gc1.count_d2_reg[2]_rep__1 ;
  input \gc1.count_d2_reg[3]_rep__1 ;
  input \gc1.count_d2_reg[4]_rep__1 ;
  input \gc1.count_d2_reg[5]_rep__1 ;
  input [0:0]SR;
  input [0:0]\gpregsm1.curr_fwft_state_reg[1] ;

  wire [5:0]ADDRG;
  wire [9:0]Q;
  wire RAM_reg_0_63_0_6_n_0;
  wire RAM_reg_0_63_0_6_n_1;
  wire RAM_reg_0_63_0_6_n_2;
  wire RAM_reg_0_63_0_6_n_3;
  wire RAM_reg_0_63_0_6_n_4;
  wire RAM_reg_0_63_0_6_n_5;
  wire RAM_reg_0_63_0_6_n_6;
  wire RAM_reg_0_63_14_20_n_0;
  wire RAM_reg_0_63_14_20_n_1;
  wire RAM_reg_0_63_14_20_n_2;
  wire RAM_reg_0_63_14_20_n_3;
  wire RAM_reg_0_63_14_20_n_4;
  wire RAM_reg_0_63_14_20_n_5;
  wire RAM_reg_0_63_14_20_n_6;
  wire RAM_reg_0_63_21_21_n_0;
  wire RAM_reg_0_63_22_22_n_0;
  wire RAM_reg_0_63_7_13_n_0;
  wire RAM_reg_0_63_7_13_n_1;
  wire RAM_reg_0_63_7_13_n_2;
  wire RAM_reg_0_63_7_13_n_3;
  wire RAM_reg_0_63_7_13_n_4;
  wire RAM_reg_0_63_7_13_n_5;
  wire RAM_reg_0_63_7_13_n_6;
  wire RAM_reg_128_191_0_6_n_0;
  wire RAM_reg_128_191_0_6_n_1;
  wire RAM_reg_128_191_0_6_n_2;
  wire RAM_reg_128_191_0_6_n_3;
  wire RAM_reg_128_191_0_6_n_4;
  wire RAM_reg_128_191_0_6_n_5;
  wire RAM_reg_128_191_0_6_n_6;
  wire RAM_reg_128_191_14_20_n_0;
  wire RAM_reg_128_191_14_20_n_1;
  wire RAM_reg_128_191_14_20_n_2;
  wire RAM_reg_128_191_14_20_n_3;
  wire RAM_reg_128_191_14_20_n_4;
  wire RAM_reg_128_191_14_20_n_5;
  wire RAM_reg_128_191_14_20_n_6;
  wire RAM_reg_128_191_21_21_n_0;
  wire RAM_reg_128_191_22_22_n_0;
  wire RAM_reg_128_191_7_13_n_0;
  wire RAM_reg_128_191_7_13_n_1;
  wire RAM_reg_128_191_7_13_n_2;
  wire RAM_reg_128_191_7_13_n_3;
  wire RAM_reg_128_191_7_13_n_4;
  wire RAM_reg_128_191_7_13_n_5;
  wire RAM_reg_128_191_7_13_n_6;
  wire RAM_reg_192_255_0_6_n_0;
  wire RAM_reg_192_255_0_6_n_1;
  wire RAM_reg_192_255_0_6_n_2;
  wire RAM_reg_192_255_0_6_n_3;
  wire RAM_reg_192_255_0_6_n_4;
  wire RAM_reg_192_255_0_6_n_5;
  wire RAM_reg_192_255_0_6_n_6;
  wire RAM_reg_192_255_14_20_n_0;
  wire RAM_reg_192_255_14_20_n_1;
  wire RAM_reg_192_255_14_20_n_2;
  wire RAM_reg_192_255_14_20_n_3;
  wire RAM_reg_192_255_14_20_n_4;
  wire RAM_reg_192_255_14_20_n_5;
  wire RAM_reg_192_255_14_20_n_6;
  wire RAM_reg_192_255_21_21_n_0;
  wire RAM_reg_192_255_22_22_n_0;
  wire RAM_reg_192_255_7_13_n_0;
  wire RAM_reg_192_255_7_13_n_1;
  wire RAM_reg_192_255_7_13_n_2;
  wire RAM_reg_192_255_7_13_n_3;
  wire RAM_reg_192_255_7_13_n_4;
  wire RAM_reg_192_255_7_13_n_5;
  wire RAM_reg_192_255_7_13_n_6;
  wire RAM_reg_256_319_0_6_n_0;
  wire RAM_reg_256_319_0_6_n_1;
  wire RAM_reg_256_319_0_6_n_2;
  wire RAM_reg_256_319_0_6_n_3;
  wire RAM_reg_256_319_0_6_n_4;
  wire RAM_reg_256_319_0_6_n_5;
  wire RAM_reg_256_319_0_6_n_6;
  wire RAM_reg_256_319_14_20_n_0;
  wire RAM_reg_256_319_14_20_n_1;
  wire RAM_reg_256_319_14_20_n_2;
  wire RAM_reg_256_319_14_20_n_3;
  wire RAM_reg_256_319_14_20_n_4;
  wire RAM_reg_256_319_14_20_n_5;
  wire RAM_reg_256_319_14_20_n_6;
  wire RAM_reg_256_319_21_21_n_0;
  wire RAM_reg_256_319_22_22_n_0;
  wire RAM_reg_256_319_7_13_n_0;
  wire RAM_reg_256_319_7_13_n_1;
  wire RAM_reg_256_319_7_13_n_2;
  wire RAM_reg_256_319_7_13_n_3;
  wire RAM_reg_256_319_7_13_n_4;
  wire RAM_reg_256_319_7_13_n_5;
  wire RAM_reg_256_319_7_13_n_6;
  wire RAM_reg_320_383_0_6_n_0;
  wire RAM_reg_320_383_0_6_n_1;
  wire RAM_reg_320_383_0_6_n_2;
  wire RAM_reg_320_383_0_6_n_3;
  wire RAM_reg_320_383_0_6_n_4;
  wire RAM_reg_320_383_0_6_n_5;
  wire RAM_reg_320_383_0_6_n_6;
  wire RAM_reg_320_383_14_20_n_0;
  wire RAM_reg_320_383_14_20_n_1;
  wire RAM_reg_320_383_14_20_n_2;
  wire RAM_reg_320_383_14_20_n_3;
  wire RAM_reg_320_383_14_20_n_4;
  wire RAM_reg_320_383_14_20_n_5;
  wire RAM_reg_320_383_14_20_n_6;
  wire RAM_reg_320_383_21_21_n_0;
  wire RAM_reg_320_383_22_22_n_0;
  wire RAM_reg_320_383_7_13_n_0;
  wire RAM_reg_320_383_7_13_n_1;
  wire RAM_reg_320_383_7_13_n_2;
  wire RAM_reg_320_383_7_13_n_3;
  wire RAM_reg_320_383_7_13_n_4;
  wire RAM_reg_320_383_7_13_n_5;
  wire RAM_reg_320_383_7_13_n_6;
  wire RAM_reg_384_447_0_6_n_0;
  wire RAM_reg_384_447_0_6_n_1;
  wire RAM_reg_384_447_0_6_n_2;
  wire RAM_reg_384_447_0_6_n_3;
  wire RAM_reg_384_447_0_6_n_4;
  wire RAM_reg_384_447_0_6_n_5;
  wire RAM_reg_384_447_0_6_n_6;
  wire RAM_reg_384_447_14_20_n_0;
  wire RAM_reg_384_447_14_20_n_1;
  wire RAM_reg_384_447_14_20_n_2;
  wire RAM_reg_384_447_14_20_n_3;
  wire RAM_reg_384_447_14_20_n_4;
  wire RAM_reg_384_447_14_20_n_5;
  wire RAM_reg_384_447_14_20_n_6;
  wire RAM_reg_384_447_21_21_n_0;
  wire RAM_reg_384_447_22_22_n_0;
  wire RAM_reg_384_447_7_13_n_0;
  wire RAM_reg_384_447_7_13_n_1;
  wire RAM_reg_384_447_7_13_n_2;
  wire RAM_reg_384_447_7_13_n_3;
  wire RAM_reg_384_447_7_13_n_4;
  wire RAM_reg_384_447_7_13_n_5;
  wire RAM_reg_384_447_7_13_n_6;
  wire RAM_reg_448_511_0_6_n_0;
  wire RAM_reg_448_511_0_6_n_1;
  wire RAM_reg_448_511_0_6_n_2;
  wire RAM_reg_448_511_0_6_n_3;
  wire RAM_reg_448_511_0_6_n_4;
  wire RAM_reg_448_511_0_6_n_5;
  wire RAM_reg_448_511_0_6_n_6;
  wire RAM_reg_448_511_14_20_n_0;
  wire RAM_reg_448_511_14_20_n_1;
  wire RAM_reg_448_511_14_20_n_2;
  wire RAM_reg_448_511_14_20_n_3;
  wire RAM_reg_448_511_14_20_n_4;
  wire RAM_reg_448_511_14_20_n_5;
  wire RAM_reg_448_511_14_20_n_6;
  wire RAM_reg_448_511_21_21_n_0;
  wire RAM_reg_448_511_22_22_n_0;
  wire RAM_reg_448_511_7_13_n_0;
  wire RAM_reg_448_511_7_13_n_1;
  wire RAM_reg_448_511_7_13_n_2;
  wire RAM_reg_448_511_7_13_n_3;
  wire RAM_reg_448_511_7_13_n_4;
  wire RAM_reg_448_511_7_13_n_5;
  wire RAM_reg_448_511_7_13_n_6;
  wire RAM_reg_512_575_0_6_n_0;
  wire RAM_reg_512_575_0_6_n_1;
  wire RAM_reg_512_575_0_6_n_2;
  wire RAM_reg_512_575_0_6_n_3;
  wire RAM_reg_512_575_0_6_n_4;
  wire RAM_reg_512_575_0_6_n_5;
  wire RAM_reg_512_575_0_6_n_6;
  wire RAM_reg_512_575_14_20_n_0;
  wire RAM_reg_512_575_14_20_n_1;
  wire RAM_reg_512_575_14_20_n_2;
  wire RAM_reg_512_575_14_20_n_3;
  wire RAM_reg_512_575_14_20_n_4;
  wire RAM_reg_512_575_14_20_n_5;
  wire RAM_reg_512_575_14_20_n_6;
  wire RAM_reg_512_575_21_21_n_0;
  wire RAM_reg_512_575_22_22_n_0;
  wire RAM_reg_512_575_7_13_n_0;
  wire RAM_reg_512_575_7_13_n_1;
  wire RAM_reg_512_575_7_13_n_2;
  wire RAM_reg_512_575_7_13_n_3;
  wire RAM_reg_512_575_7_13_n_4;
  wire RAM_reg_512_575_7_13_n_5;
  wire RAM_reg_512_575_7_13_n_6;
  wire RAM_reg_576_639_0_6_n_0;
  wire RAM_reg_576_639_0_6_n_1;
  wire RAM_reg_576_639_0_6_n_2;
  wire RAM_reg_576_639_0_6_n_3;
  wire RAM_reg_576_639_0_6_n_4;
  wire RAM_reg_576_639_0_6_n_5;
  wire RAM_reg_576_639_0_6_n_6;
  wire RAM_reg_576_639_14_20_n_0;
  wire RAM_reg_576_639_14_20_n_1;
  wire RAM_reg_576_639_14_20_n_2;
  wire RAM_reg_576_639_14_20_n_3;
  wire RAM_reg_576_639_14_20_n_4;
  wire RAM_reg_576_639_14_20_n_5;
  wire RAM_reg_576_639_14_20_n_6;
  wire RAM_reg_576_639_21_21_n_0;
  wire RAM_reg_576_639_22_22_n_0;
  wire RAM_reg_576_639_7_13_n_0;
  wire RAM_reg_576_639_7_13_n_1;
  wire RAM_reg_576_639_7_13_n_2;
  wire RAM_reg_576_639_7_13_n_3;
  wire RAM_reg_576_639_7_13_n_4;
  wire RAM_reg_576_639_7_13_n_5;
  wire RAM_reg_576_639_7_13_n_6;
  wire RAM_reg_640_703_0_6_n_0;
  wire RAM_reg_640_703_0_6_n_1;
  wire RAM_reg_640_703_0_6_n_2;
  wire RAM_reg_640_703_0_6_n_3;
  wire RAM_reg_640_703_0_6_n_4;
  wire RAM_reg_640_703_0_6_n_5;
  wire RAM_reg_640_703_0_6_n_6;
  wire RAM_reg_640_703_14_20_n_0;
  wire RAM_reg_640_703_14_20_n_1;
  wire RAM_reg_640_703_14_20_n_2;
  wire RAM_reg_640_703_14_20_n_3;
  wire RAM_reg_640_703_14_20_n_4;
  wire RAM_reg_640_703_14_20_n_5;
  wire RAM_reg_640_703_14_20_n_6;
  wire RAM_reg_640_703_21_21_n_0;
  wire RAM_reg_640_703_22_22_n_0;
  wire RAM_reg_640_703_7_13_n_0;
  wire RAM_reg_640_703_7_13_n_1;
  wire RAM_reg_640_703_7_13_n_2;
  wire RAM_reg_640_703_7_13_n_3;
  wire RAM_reg_640_703_7_13_n_4;
  wire RAM_reg_640_703_7_13_n_5;
  wire RAM_reg_640_703_7_13_n_6;
  wire RAM_reg_64_127_0_6_n_0;
  wire RAM_reg_64_127_0_6_n_1;
  wire RAM_reg_64_127_0_6_n_2;
  wire RAM_reg_64_127_0_6_n_3;
  wire RAM_reg_64_127_0_6_n_4;
  wire RAM_reg_64_127_0_6_n_5;
  wire RAM_reg_64_127_0_6_n_6;
  wire RAM_reg_64_127_14_20_n_0;
  wire RAM_reg_64_127_14_20_n_1;
  wire RAM_reg_64_127_14_20_n_2;
  wire RAM_reg_64_127_14_20_n_3;
  wire RAM_reg_64_127_14_20_n_4;
  wire RAM_reg_64_127_14_20_n_5;
  wire RAM_reg_64_127_14_20_n_6;
  wire RAM_reg_64_127_21_21_n_0;
  wire RAM_reg_64_127_22_22_n_0;
  wire RAM_reg_64_127_7_13_n_0;
  wire RAM_reg_64_127_7_13_n_1;
  wire RAM_reg_64_127_7_13_n_2;
  wire RAM_reg_64_127_7_13_n_3;
  wire RAM_reg_64_127_7_13_n_4;
  wire RAM_reg_64_127_7_13_n_5;
  wire RAM_reg_64_127_7_13_n_6;
  wire RAM_reg_704_767_0_6_n_0;
  wire RAM_reg_704_767_0_6_n_1;
  wire RAM_reg_704_767_0_6_n_2;
  wire RAM_reg_704_767_0_6_n_3;
  wire RAM_reg_704_767_0_6_n_4;
  wire RAM_reg_704_767_0_6_n_5;
  wire RAM_reg_704_767_0_6_n_6;
  wire RAM_reg_704_767_14_20_n_0;
  wire RAM_reg_704_767_14_20_n_1;
  wire RAM_reg_704_767_14_20_n_2;
  wire RAM_reg_704_767_14_20_n_3;
  wire RAM_reg_704_767_14_20_n_4;
  wire RAM_reg_704_767_14_20_n_5;
  wire RAM_reg_704_767_14_20_n_6;
  wire RAM_reg_704_767_21_21_n_0;
  wire RAM_reg_704_767_22_22_n_0;
  wire RAM_reg_704_767_7_13_n_0;
  wire RAM_reg_704_767_7_13_n_1;
  wire RAM_reg_704_767_7_13_n_2;
  wire RAM_reg_704_767_7_13_n_3;
  wire RAM_reg_704_767_7_13_n_4;
  wire RAM_reg_704_767_7_13_n_5;
  wire RAM_reg_704_767_7_13_n_6;
  wire RAM_reg_768_831_0_6_n_0;
  wire RAM_reg_768_831_0_6_n_1;
  wire RAM_reg_768_831_0_6_n_2;
  wire RAM_reg_768_831_0_6_n_3;
  wire RAM_reg_768_831_0_6_n_4;
  wire RAM_reg_768_831_0_6_n_5;
  wire RAM_reg_768_831_0_6_n_6;
  wire RAM_reg_768_831_14_20_n_0;
  wire RAM_reg_768_831_14_20_n_1;
  wire RAM_reg_768_831_14_20_n_2;
  wire RAM_reg_768_831_14_20_n_3;
  wire RAM_reg_768_831_14_20_n_4;
  wire RAM_reg_768_831_14_20_n_5;
  wire RAM_reg_768_831_14_20_n_6;
  wire RAM_reg_768_831_21_21_n_0;
  wire RAM_reg_768_831_22_22_n_0;
  wire RAM_reg_768_831_7_13_n_0;
  wire RAM_reg_768_831_7_13_n_1;
  wire RAM_reg_768_831_7_13_n_2;
  wire RAM_reg_768_831_7_13_n_3;
  wire RAM_reg_768_831_7_13_n_4;
  wire RAM_reg_768_831_7_13_n_5;
  wire RAM_reg_768_831_7_13_n_6;
  wire RAM_reg_832_895_0_6_n_0;
  wire RAM_reg_832_895_0_6_n_1;
  wire RAM_reg_832_895_0_6_n_2;
  wire RAM_reg_832_895_0_6_n_3;
  wire RAM_reg_832_895_0_6_n_4;
  wire RAM_reg_832_895_0_6_n_5;
  wire RAM_reg_832_895_0_6_n_6;
  wire RAM_reg_832_895_14_20_n_0;
  wire RAM_reg_832_895_14_20_n_1;
  wire RAM_reg_832_895_14_20_n_2;
  wire RAM_reg_832_895_14_20_n_3;
  wire RAM_reg_832_895_14_20_n_4;
  wire RAM_reg_832_895_14_20_n_5;
  wire RAM_reg_832_895_14_20_n_6;
  wire RAM_reg_832_895_21_21_n_0;
  wire RAM_reg_832_895_22_22_n_0;
  wire RAM_reg_832_895_7_13_n_0;
  wire RAM_reg_832_895_7_13_n_1;
  wire RAM_reg_832_895_7_13_n_2;
  wire RAM_reg_832_895_7_13_n_3;
  wire RAM_reg_832_895_7_13_n_4;
  wire RAM_reg_832_895_7_13_n_5;
  wire RAM_reg_832_895_7_13_n_6;
  wire RAM_reg_896_959_0_6_n_0;
  wire RAM_reg_896_959_0_6_n_1;
  wire RAM_reg_896_959_0_6_n_2;
  wire RAM_reg_896_959_0_6_n_3;
  wire RAM_reg_896_959_0_6_n_4;
  wire RAM_reg_896_959_0_6_n_5;
  wire RAM_reg_896_959_0_6_n_6;
  wire RAM_reg_896_959_14_20_n_0;
  wire RAM_reg_896_959_14_20_n_1;
  wire RAM_reg_896_959_14_20_n_2;
  wire RAM_reg_896_959_14_20_n_3;
  wire RAM_reg_896_959_14_20_n_4;
  wire RAM_reg_896_959_14_20_n_5;
  wire RAM_reg_896_959_14_20_n_6;
  wire RAM_reg_896_959_21_21_n_0;
  wire RAM_reg_896_959_22_22_n_0;
  wire RAM_reg_896_959_7_13_n_0;
  wire RAM_reg_896_959_7_13_n_1;
  wire RAM_reg_896_959_7_13_n_2;
  wire RAM_reg_896_959_7_13_n_3;
  wire RAM_reg_896_959_7_13_n_4;
  wire RAM_reg_896_959_7_13_n_5;
  wire RAM_reg_896_959_7_13_n_6;
  wire RAM_reg_960_1023_0_6_n_0;
  wire RAM_reg_960_1023_0_6_n_1;
  wire RAM_reg_960_1023_0_6_n_2;
  wire RAM_reg_960_1023_0_6_n_3;
  wire RAM_reg_960_1023_0_6_n_4;
  wire RAM_reg_960_1023_0_6_n_5;
  wire RAM_reg_960_1023_0_6_n_6;
  wire RAM_reg_960_1023_14_20_n_0;
  wire RAM_reg_960_1023_14_20_n_1;
  wire RAM_reg_960_1023_14_20_n_2;
  wire RAM_reg_960_1023_14_20_n_3;
  wire RAM_reg_960_1023_14_20_n_4;
  wire RAM_reg_960_1023_14_20_n_5;
  wire RAM_reg_960_1023_14_20_n_6;
  wire RAM_reg_960_1023_21_21_n_0;
  wire RAM_reg_960_1023_22_22_n_0;
  wire RAM_reg_960_1023_7_13_n_0;
  wire RAM_reg_960_1023_7_13_n_1;
  wire RAM_reg_960_1023_7_13_n_2;
  wire RAM_reg_960_1023_7_13_n_3;
  wire RAM_reg_960_1023_7_13_n_4;
  wire RAM_reg_960_1023_7_13_n_5;
  wire RAM_reg_960_1023_7_13_n_6;
  wire [0:0]SR;
  wire [19:0]fg_rxd_wr_length;
  wire \gc1.count_d2_reg[0]_rep__1 ;
  wire \gc1.count_d2_reg[1]_rep__1 ;
  wire \gc1.count_d2_reg[2]_rep__1 ;
  wire \gc1.count_d2_reg[3]_rep__1 ;
  wire \gc1.count_d2_reg[4]_rep__1 ;
  wire [5:0]\gc1.count_d2_reg[5]_rep__0 ;
  wire \gc1.count_d2_reg[5]_rep__1 ;
  wire [5:0]\gcc0.gc0.count_d1_reg[5] ;
  wire \gcc0.gc0.count_d1_reg[6] ;
  wire \gcc0.gc0.count_d1_reg[7] ;
  wire \gcc0.gc0.count_d1_reg[7]_0 ;
  wire \gcc0.gc0.count_d1_reg[8] ;
  wire \gcc0.gc0.count_d1_reg[8]_0 ;
  wire \gcc0.gc0.count_d1_reg[8]_1 ;
  wire \gcc0.gc0.count_d1_reg[9] ;
  wire \gcc0.gc0.count_d1_reg[9]_0 ;
  wire \gcc0.gc0.count_d1_reg[9]_1 ;
  wire \gcc0.gc0.count_d1_reg[9]_2 ;
  wire [22:0]\goreg_dm.dout_i_reg[22] ;
  wire \gpr1.dout_i[0]_i_4_n_0 ;
  wire \gpr1.dout_i[0]_i_5_n_0 ;
  wire \gpr1.dout_i[0]_i_6_n_0 ;
  wire \gpr1.dout_i[0]_i_7_n_0 ;
  wire \gpr1.dout_i[10]_i_4_n_0 ;
  wire \gpr1.dout_i[10]_i_5_n_0 ;
  wire \gpr1.dout_i[10]_i_6_n_0 ;
  wire \gpr1.dout_i[10]_i_7_n_0 ;
  wire \gpr1.dout_i[11]_i_4_n_0 ;
  wire \gpr1.dout_i[11]_i_5_n_0 ;
  wire \gpr1.dout_i[11]_i_6_n_0 ;
  wire \gpr1.dout_i[11]_i_7_n_0 ;
  wire \gpr1.dout_i[12]_i_4_n_0 ;
  wire \gpr1.dout_i[12]_i_5_n_0 ;
  wire \gpr1.dout_i[12]_i_6_n_0 ;
  wire \gpr1.dout_i[12]_i_7_n_0 ;
  wire \gpr1.dout_i[13]_i_4_n_0 ;
  wire \gpr1.dout_i[13]_i_5_n_0 ;
  wire \gpr1.dout_i[13]_i_6_n_0 ;
  wire \gpr1.dout_i[13]_i_7_n_0 ;
  wire \gpr1.dout_i[14]_i_4_n_0 ;
  wire \gpr1.dout_i[14]_i_5_n_0 ;
  wire \gpr1.dout_i[14]_i_6_n_0 ;
  wire \gpr1.dout_i[14]_i_7_n_0 ;
  wire \gpr1.dout_i[15]_i_4_n_0 ;
  wire \gpr1.dout_i[15]_i_5_n_0 ;
  wire \gpr1.dout_i[15]_i_6_n_0 ;
  wire \gpr1.dout_i[15]_i_7_n_0 ;
  wire \gpr1.dout_i[16]_i_4_n_0 ;
  wire \gpr1.dout_i[16]_i_5_n_0 ;
  wire \gpr1.dout_i[16]_i_6_n_0 ;
  wire \gpr1.dout_i[16]_i_7_n_0 ;
  wire \gpr1.dout_i[17]_i_4_n_0 ;
  wire \gpr1.dout_i[17]_i_5_n_0 ;
  wire \gpr1.dout_i[17]_i_6_n_0 ;
  wire \gpr1.dout_i[17]_i_7_n_0 ;
  wire \gpr1.dout_i[18]_i_4_n_0 ;
  wire \gpr1.dout_i[18]_i_5_n_0 ;
  wire \gpr1.dout_i[18]_i_6_n_0 ;
  wire \gpr1.dout_i[18]_i_7_n_0 ;
  wire \gpr1.dout_i[19]_i_4_n_0 ;
  wire \gpr1.dout_i[19]_i_5_n_0 ;
  wire \gpr1.dout_i[19]_i_6_n_0 ;
  wire \gpr1.dout_i[19]_i_7_n_0 ;
  wire \gpr1.dout_i[1]_i_4_n_0 ;
  wire \gpr1.dout_i[1]_i_5_n_0 ;
  wire \gpr1.dout_i[1]_i_6_n_0 ;
  wire \gpr1.dout_i[1]_i_7_n_0 ;
  wire \gpr1.dout_i[20]_i_4_n_0 ;
  wire \gpr1.dout_i[20]_i_5_n_0 ;
  wire \gpr1.dout_i[20]_i_6_n_0 ;
  wire \gpr1.dout_i[20]_i_7_n_0 ;
  wire \gpr1.dout_i[21]_i_4_n_0 ;
  wire \gpr1.dout_i[21]_i_5_n_0 ;
  wire \gpr1.dout_i[21]_i_6_n_0 ;
  wire \gpr1.dout_i[21]_i_7_n_0 ;
  wire \gpr1.dout_i[22]_i_5_n_0 ;
  wire \gpr1.dout_i[22]_i_6_n_0 ;
  wire \gpr1.dout_i[22]_i_7_n_0 ;
  wire \gpr1.dout_i[22]_i_8_n_0 ;
  wire \gpr1.dout_i[2]_i_4_n_0 ;
  wire \gpr1.dout_i[2]_i_5_n_0 ;
  wire \gpr1.dout_i[2]_i_6_n_0 ;
  wire \gpr1.dout_i[2]_i_7_n_0 ;
  wire \gpr1.dout_i[3]_i_4_n_0 ;
  wire \gpr1.dout_i[3]_i_5_n_0 ;
  wire \gpr1.dout_i[3]_i_6_n_0 ;
  wire \gpr1.dout_i[3]_i_7_n_0 ;
  wire \gpr1.dout_i[4]_i_4_n_0 ;
  wire \gpr1.dout_i[4]_i_5_n_0 ;
  wire \gpr1.dout_i[4]_i_6_n_0 ;
  wire \gpr1.dout_i[4]_i_7_n_0 ;
  wire \gpr1.dout_i[5]_i_4_n_0 ;
  wire \gpr1.dout_i[5]_i_5_n_0 ;
  wire \gpr1.dout_i[5]_i_6_n_0 ;
  wire \gpr1.dout_i[5]_i_7_n_0 ;
  wire \gpr1.dout_i[6]_i_4_n_0 ;
  wire \gpr1.dout_i[6]_i_5_n_0 ;
  wire \gpr1.dout_i[6]_i_6_n_0 ;
  wire \gpr1.dout_i[6]_i_7_n_0 ;
  wire \gpr1.dout_i[7]_i_4_n_0 ;
  wire \gpr1.dout_i[7]_i_5_n_0 ;
  wire \gpr1.dout_i[7]_i_6_n_0 ;
  wire \gpr1.dout_i[7]_i_7_n_0 ;
  wire \gpr1.dout_i[8]_i_4_n_0 ;
  wire \gpr1.dout_i[8]_i_5_n_0 ;
  wire \gpr1.dout_i[8]_i_6_n_0 ;
  wire \gpr1.dout_i[8]_i_7_n_0 ;
  wire \gpr1.dout_i[9]_i_4_n_0 ;
  wire \gpr1.dout_i[9]_i_5_n_0 ;
  wire \gpr1.dout_i[9]_i_6_n_0 ;
  wire \gpr1.dout_i[9]_i_7_n_0 ;
  wire \gpr1.dout_i_reg[0]_i_1_n_0 ;
  wire \gpr1.dout_i_reg[0]_i_2_n_0 ;
  wire \gpr1.dout_i_reg[0]_i_3_n_0 ;
  wire \gpr1.dout_i_reg[10]_i_1_n_0 ;
  wire \gpr1.dout_i_reg[10]_i_2_n_0 ;
  wire \gpr1.dout_i_reg[10]_i_3_n_0 ;
  wire \gpr1.dout_i_reg[11]_i_1_n_0 ;
  wire \gpr1.dout_i_reg[11]_i_2_n_0 ;
  wire \gpr1.dout_i_reg[11]_i_3_n_0 ;
  wire \gpr1.dout_i_reg[12]_i_1_n_0 ;
  wire \gpr1.dout_i_reg[12]_i_2_n_0 ;
  wire \gpr1.dout_i_reg[12]_i_3_n_0 ;
  wire \gpr1.dout_i_reg[13]_i_1_n_0 ;
  wire \gpr1.dout_i_reg[13]_i_2_n_0 ;
  wire \gpr1.dout_i_reg[13]_i_3_n_0 ;
  wire \gpr1.dout_i_reg[14]_i_1_n_0 ;
  wire \gpr1.dout_i_reg[14]_i_2_n_0 ;
  wire \gpr1.dout_i_reg[14]_i_3_n_0 ;
  wire \gpr1.dout_i_reg[15]_i_1_n_0 ;
  wire \gpr1.dout_i_reg[15]_i_2_n_0 ;
  wire \gpr1.dout_i_reg[15]_i_3_n_0 ;
  wire \gpr1.dout_i_reg[16]_i_1_n_0 ;
  wire \gpr1.dout_i_reg[16]_i_2_n_0 ;
  wire \gpr1.dout_i_reg[16]_i_3_n_0 ;
  wire \gpr1.dout_i_reg[17]_i_1_n_0 ;
  wire \gpr1.dout_i_reg[17]_i_2_n_0 ;
  wire \gpr1.dout_i_reg[17]_i_3_n_0 ;
  wire \gpr1.dout_i_reg[18]_i_1_n_0 ;
  wire \gpr1.dout_i_reg[18]_i_2_n_0 ;
  wire \gpr1.dout_i_reg[18]_i_3_n_0 ;
  wire \gpr1.dout_i_reg[19]_i_1_n_0 ;
  wire \gpr1.dout_i_reg[19]_i_2_n_0 ;
  wire \gpr1.dout_i_reg[19]_i_3_n_0 ;
  wire \gpr1.dout_i_reg[1]_i_1_n_0 ;
  wire \gpr1.dout_i_reg[1]_i_2_n_0 ;
  wire \gpr1.dout_i_reg[1]_i_3_n_0 ;
  wire \gpr1.dout_i_reg[20]_i_1_n_0 ;
  wire \gpr1.dout_i_reg[20]_i_2_n_0 ;
  wire \gpr1.dout_i_reg[20]_i_3_n_0 ;
  wire \gpr1.dout_i_reg[21]_i_1_n_0 ;
  wire \gpr1.dout_i_reg[21]_i_2_n_0 ;
  wire \gpr1.dout_i_reg[21]_i_3_n_0 ;
  wire \gpr1.dout_i_reg[22]_i_2_n_0 ;
  wire \gpr1.dout_i_reg[22]_i_3_n_0 ;
  wire \gpr1.dout_i_reg[22]_i_4_n_0 ;
  wire \gpr1.dout_i_reg[2]_i_1_n_0 ;
  wire \gpr1.dout_i_reg[2]_i_2_n_0 ;
  wire \gpr1.dout_i_reg[2]_i_3_n_0 ;
  wire \gpr1.dout_i_reg[3]_i_1_n_0 ;
  wire \gpr1.dout_i_reg[3]_i_2_n_0 ;
  wire \gpr1.dout_i_reg[3]_i_3_n_0 ;
  wire \gpr1.dout_i_reg[4]_i_1_n_0 ;
  wire \gpr1.dout_i_reg[4]_i_2_n_0 ;
  wire \gpr1.dout_i_reg[4]_i_3_n_0 ;
  wire \gpr1.dout_i_reg[5]_i_1_n_0 ;
  wire \gpr1.dout_i_reg[5]_i_2_n_0 ;
  wire \gpr1.dout_i_reg[5]_i_3_n_0 ;
  wire \gpr1.dout_i_reg[6]_i_1_n_0 ;
  wire \gpr1.dout_i_reg[6]_i_2_n_0 ;
  wire \gpr1.dout_i_reg[6]_i_3_n_0 ;
  wire \gpr1.dout_i_reg[7]_i_1_n_0 ;
  wire \gpr1.dout_i_reg[7]_i_2_n_0 ;
  wire \gpr1.dout_i_reg[7]_i_3_n_0 ;
  wire \gpr1.dout_i_reg[8]_i_1_n_0 ;
  wire \gpr1.dout_i_reg[8]_i_2_n_0 ;
  wire \gpr1.dout_i_reg[8]_i_3_n_0 ;
  wire \gpr1.dout_i_reg[9]_i_1_n_0 ;
  wire \gpr1.dout_i_reg[9]_i_2_n_0 ;
  wire \gpr1.dout_i_reg[9]_i_3_n_0 ;
  wire [0:0]\gpregsm1.curr_fwft_state_reg[1] ;
  wire ram_full_fb_i_reg;
  wire ram_full_fb_i_reg_0;
  wire ram_full_fb_i_reg_1;
  wire ram_full_fb_i_reg_2;
  wire ram_full_fb_i_reg_3;
  wire ram_full_fb_i_reg_4;
  wire s_axi_aclk;
  wire NLW_RAM_reg_0_63_0_6_DOH_UNCONNECTED;
  wire NLW_RAM_reg_0_63_14_20_DOH_UNCONNECTED;
  wire NLW_RAM_reg_0_63_21_21_SPO_UNCONNECTED;
  wire NLW_RAM_reg_0_63_22_22_SPO_UNCONNECTED;
  wire NLW_RAM_reg_0_63_7_13_DOH_UNCONNECTED;
  wire NLW_RAM_reg_128_191_0_6_DOH_UNCONNECTED;
  wire NLW_RAM_reg_128_191_14_20_DOH_UNCONNECTED;
  wire NLW_RAM_reg_128_191_21_21_SPO_UNCONNECTED;
  wire NLW_RAM_reg_128_191_22_22_SPO_UNCONNECTED;
  wire NLW_RAM_reg_128_191_7_13_DOH_UNCONNECTED;
  wire NLW_RAM_reg_192_255_0_6_DOH_UNCONNECTED;
  wire NLW_RAM_reg_192_255_14_20_DOH_UNCONNECTED;
  wire NLW_RAM_reg_192_255_21_21_SPO_UNCONNECTED;
  wire NLW_RAM_reg_192_255_22_22_SPO_UNCONNECTED;
  wire NLW_RAM_reg_192_255_7_13_DOH_UNCONNECTED;
  wire NLW_RAM_reg_256_319_0_6_DOH_UNCONNECTED;
  wire NLW_RAM_reg_256_319_14_20_DOH_UNCONNECTED;
  wire NLW_RAM_reg_256_319_21_21_SPO_UNCONNECTED;
  wire NLW_RAM_reg_256_319_22_22_SPO_UNCONNECTED;
  wire NLW_RAM_reg_256_319_7_13_DOH_UNCONNECTED;
  wire NLW_RAM_reg_320_383_0_6_DOH_UNCONNECTED;
  wire NLW_RAM_reg_320_383_14_20_DOH_UNCONNECTED;
  wire NLW_RAM_reg_320_383_21_21_SPO_UNCONNECTED;
  wire NLW_RAM_reg_320_383_22_22_SPO_UNCONNECTED;
  wire NLW_RAM_reg_320_383_7_13_DOH_UNCONNECTED;
  wire NLW_RAM_reg_384_447_0_6_DOH_UNCONNECTED;
  wire NLW_RAM_reg_384_447_14_20_DOH_UNCONNECTED;
  wire NLW_RAM_reg_384_447_21_21_SPO_UNCONNECTED;
  wire NLW_RAM_reg_384_447_22_22_SPO_UNCONNECTED;
  wire NLW_RAM_reg_384_447_7_13_DOH_UNCONNECTED;
  wire NLW_RAM_reg_448_511_0_6_DOH_UNCONNECTED;
  wire NLW_RAM_reg_448_511_14_20_DOH_UNCONNECTED;
  wire NLW_RAM_reg_448_511_21_21_SPO_UNCONNECTED;
  wire NLW_RAM_reg_448_511_22_22_SPO_UNCONNECTED;
  wire NLW_RAM_reg_448_511_7_13_DOH_UNCONNECTED;
  wire NLW_RAM_reg_512_575_0_6_DOH_UNCONNECTED;
  wire NLW_RAM_reg_512_575_14_20_DOH_UNCONNECTED;
  wire NLW_RAM_reg_512_575_21_21_SPO_UNCONNECTED;
  wire NLW_RAM_reg_512_575_22_22_SPO_UNCONNECTED;
  wire NLW_RAM_reg_512_575_7_13_DOH_UNCONNECTED;
  wire NLW_RAM_reg_576_639_0_6_DOH_UNCONNECTED;
  wire NLW_RAM_reg_576_639_14_20_DOH_UNCONNECTED;
  wire NLW_RAM_reg_576_639_21_21_SPO_UNCONNECTED;
  wire NLW_RAM_reg_576_639_22_22_SPO_UNCONNECTED;
  wire NLW_RAM_reg_576_639_7_13_DOH_UNCONNECTED;
  wire NLW_RAM_reg_640_703_0_6_DOH_UNCONNECTED;
  wire NLW_RAM_reg_640_703_14_20_DOH_UNCONNECTED;
  wire NLW_RAM_reg_640_703_21_21_SPO_UNCONNECTED;
  wire NLW_RAM_reg_640_703_22_22_SPO_UNCONNECTED;
  wire NLW_RAM_reg_640_703_7_13_DOH_UNCONNECTED;
  wire NLW_RAM_reg_64_127_0_6_DOH_UNCONNECTED;
  wire NLW_RAM_reg_64_127_14_20_DOH_UNCONNECTED;
  wire NLW_RAM_reg_64_127_21_21_SPO_UNCONNECTED;
  wire NLW_RAM_reg_64_127_22_22_SPO_UNCONNECTED;
  wire NLW_RAM_reg_64_127_7_13_DOH_UNCONNECTED;
  wire NLW_RAM_reg_704_767_0_6_DOH_UNCONNECTED;
  wire NLW_RAM_reg_704_767_14_20_DOH_UNCONNECTED;
  wire NLW_RAM_reg_704_767_21_21_SPO_UNCONNECTED;
  wire NLW_RAM_reg_704_767_22_22_SPO_UNCONNECTED;
  wire NLW_RAM_reg_704_767_7_13_DOH_UNCONNECTED;
  wire NLW_RAM_reg_768_831_0_6_DOH_UNCONNECTED;
  wire NLW_RAM_reg_768_831_14_20_DOH_UNCONNECTED;
  wire NLW_RAM_reg_768_831_21_21_SPO_UNCONNECTED;
  wire NLW_RAM_reg_768_831_22_22_SPO_UNCONNECTED;
  wire NLW_RAM_reg_768_831_7_13_DOH_UNCONNECTED;
  wire NLW_RAM_reg_832_895_0_6_DOH_UNCONNECTED;
  wire NLW_RAM_reg_832_895_14_20_DOH_UNCONNECTED;
  wire NLW_RAM_reg_832_895_21_21_SPO_UNCONNECTED;
  wire NLW_RAM_reg_832_895_22_22_SPO_UNCONNECTED;
  wire NLW_RAM_reg_832_895_7_13_DOH_UNCONNECTED;
  wire NLW_RAM_reg_896_959_0_6_DOH_UNCONNECTED;
  wire NLW_RAM_reg_896_959_14_20_DOH_UNCONNECTED;
  wire NLW_RAM_reg_896_959_21_21_SPO_UNCONNECTED;
  wire NLW_RAM_reg_896_959_22_22_SPO_UNCONNECTED;
  wire NLW_RAM_reg_896_959_7_13_DOH_UNCONNECTED;
  wire NLW_RAM_reg_960_1023_0_6_DOH_UNCONNECTED;
  wire NLW_RAM_reg_960_1023_14_20_DOH_UNCONNECTED;
  wire NLW_RAM_reg_960_1023_21_21_SPO_UNCONNECTED;
  wire NLW_RAM_reg_960_1023_22_22_SPO_UNCONNECTED;
  wire NLW_RAM_reg_960_1023_7_13_DOH_UNCONNECTED;

  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M8 RAM_reg_0_63_0_6
       (.ADDRA(Q[5:0]),
        .ADDRB(Q[5:0]),
        .ADDRC(Q[5:0]),
        .ADDRD(Q[5:0]),
        .ADDRE(Q[5:0]),
        .ADDRF(Q[5:0]),
        .ADDRG(Q[5:0]),
        .ADDRH(\gcc0.gc0.count_d1_reg[5] ),
        .DIA(1'b0),
        .DIB(1'b0),
        .DIC(1'b0),
        .DID(fg_rxd_wr_length[0]),
        .DIE(fg_rxd_wr_length[1]),
        .DIF(fg_rxd_wr_length[2]),
        .DIG(fg_rxd_wr_length[3]),
        .DIH(1'b0),
        .DOA(RAM_reg_0_63_0_6_n_0),
        .DOB(RAM_reg_0_63_0_6_n_1),
        .DOC(RAM_reg_0_63_0_6_n_2),
        .DOD(RAM_reg_0_63_0_6_n_3),
        .DOE(RAM_reg_0_63_0_6_n_4),
        .DOF(RAM_reg_0_63_0_6_n_5),
        .DOG(RAM_reg_0_63_0_6_n_6),
        .DOH(NLW_RAM_reg_0_63_0_6_DOH_UNCONNECTED),
        .WCLK(s_axi_aclk),
        .WE(ram_full_fb_i_reg));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M8 RAM_reg_0_63_14_20
       (.ADDRA(\gc1.count_d2_reg[5]_rep__0 ),
        .ADDRB(\gc1.count_d2_reg[5]_rep__0 ),
        .ADDRC(\gc1.count_d2_reg[5]_rep__0 ),
        .ADDRD(\gc1.count_d2_reg[5]_rep__0 ),
        .ADDRE(\gc1.count_d2_reg[5]_rep__0 ),
        .ADDRF(\gc1.count_d2_reg[5]_rep__0 ),
        .ADDRG(\gc1.count_d2_reg[5]_rep__0 ),
        .ADDRH(\gcc0.gc0.count_d1_reg[5] ),
        .DIA(fg_rxd_wr_length[11]),
        .DIB(fg_rxd_wr_length[12]),
        .DIC(fg_rxd_wr_length[13]),
        .DID(fg_rxd_wr_length[14]),
        .DIE(fg_rxd_wr_length[15]),
        .DIF(fg_rxd_wr_length[16]),
        .DIG(fg_rxd_wr_length[17]),
        .DIH(1'b0),
        .DOA(RAM_reg_0_63_14_20_n_0),
        .DOB(RAM_reg_0_63_14_20_n_1),
        .DOC(RAM_reg_0_63_14_20_n_2),
        .DOD(RAM_reg_0_63_14_20_n_3),
        .DOE(RAM_reg_0_63_14_20_n_4),
        .DOF(RAM_reg_0_63_14_20_n_5),
        .DOG(RAM_reg_0_63_14_20_n_6),
        .DOH(NLW_RAM_reg_0_63_14_20_DOH_UNCONNECTED),
        .WCLK(s_axi_aclk),
        .WE(ram_full_fb_i_reg));
  RAM64X1D RAM_reg_0_63_21_21
       (.A0(\gcc0.gc0.count_d1_reg[5] [0]),
        .A1(\gcc0.gc0.count_d1_reg[5] [1]),
        .A2(\gcc0.gc0.count_d1_reg[5] [2]),
        .A3(\gcc0.gc0.count_d1_reg[5] [3]),
        .A4(\gcc0.gc0.count_d1_reg[5] [4]),
        .A5(\gcc0.gc0.count_d1_reg[5] [5]),
        .D(fg_rxd_wr_length[18]),
        .DPO(RAM_reg_0_63_21_21_n_0),
        .DPRA0(\gc1.count_d2_reg[0]_rep__1 ),
        .DPRA1(\gc1.count_d2_reg[1]_rep__1 ),
        .DPRA2(\gc1.count_d2_reg[2]_rep__1 ),
        .DPRA3(\gc1.count_d2_reg[3]_rep__1 ),
        .DPRA4(\gc1.count_d2_reg[4]_rep__1 ),
        .DPRA5(\gc1.count_d2_reg[5]_rep__1 ),
        .SPO(NLW_RAM_reg_0_63_21_21_SPO_UNCONNECTED),
        .WCLK(s_axi_aclk),
        .WE(ram_full_fb_i_reg));
  RAM64X1D RAM_reg_0_63_22_22
       (.A0(\gcc0.gc0.count_d1_reg[5] [0]),
        .A1(\gcc0.gc0.count_d1_reg[5] [1]),
        .A2(\gcc0.gc0.count_d1_reg[5] [2]),
        .A3(\gcc0.gc0.count_d1_reg[5] [3]),
        .A4(\gcc0.gc0.count_d1_reg[5] [4]),
        .A5(\gcc0.gc0.count_d1_reg[5] [5]),
        .D(fg_rxd_wr_length[19]),
        .DPO(RAM_reg_0_63_22_22_n_0),
        .DPRA0(\gc1.count_d2_reg[0]_rep__1 ),
        .DPRA1(\gc1.count_d2_reg[1]_rep__1 ),
        .DPRA2(\gc1.count_d2_reg[2]_rep__1 ),
        .DPRA3(\gc1.count_d2_reg[3]_rep__1 ),
        .DPRA4(\gc1.count_d2_reg[4]_rep__1 ),
        .DPRA5(\gc1.count_d2_reg[5]_rep__1 ),
        .SPO(NLW_RAM_reg_0_63_22_22_SPO_UNCONNECTED),
        .WCLK(s_axi_aclk),
        .WE(ram_full_fb_i_reg));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M8 RAM_reg_0_63_7_13
       (.ADDRA(ADDRG),
        .ADDRB(ADDRG),
        .ADDRC(ADDRG),
        .ADDRD(ADDRG),
        .ADDRE(ADDRG),
        .ADDRF(ADDRG),
        .ADDRG(ADDRG),
        .ADDRH(\gcc0.gc0.count_d1_reg[5] ),
        .DIA(fg_rxd_wr_length[4]),
        .DIB(fg_rxd_wr_length[5]),
        .DIC(fg_rxd_wr_length[6]),
        .DID(fg_rxd_wr_length[7]),
        .DIE(fg_rxd_wr_length[8]),
        .DIF(fg_rxd_wr_length[9]),
        .DIG(fg_rxd_wr_length[10]),
        .DIH(1'b0),
        .DOA(RAM_reg_0_63_7_13_n_0),
        .DOB(RAM_reg_0_63_7_13_n_1),
        .DOC(RAM_reg_0_63_7_13_n_2),
        .DOD(RAM_reg_0_63_7_13_n_3),
        .DOE(RAM_reg_0_63_7_13_n_4),
        .DOF(RAM_reg_0_63_7_13_n_5),
        .DOG(RAM_reg_0_63_7_13_n_6),
        .DOH(NLW_RAM_reg_0_63_7_13_DOH_UNCONNECTED),
        .WCLK(s_axi_aclk),
        .WE(ram_full_fb_i_reg));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M8 RAM_reg_128_191_0_6
       (.ADDRA(Q[5:0]),
        .ADDRB(Q[5:0]),
        .ADDRC(Q[5:0]),
        .ADDRD(Q[5:0]),
        .ADDRE(Q[5:0]),
        .ADDRF(Q[5:0]),
        .ADDRG(Q[5:0]),
        .ADDRH(\gcc0.gc0.count_d1_reg[5] ),
        .DIA(1'b0),
        .DIB(1'b0),
        .DIC(1'b0),
        .DID(fg_rxd_wr_length[0]),
        .DIE(fg_rxd_wr_length[1]),
        .DIF(fg_rxd_wr_length[2]),
        .DIG(fg_rxd_wr_length[3]),
        .DIH(1'b0),
        .DOA(RAM_reg_128_191_0_6_n_0),
        .DOB(RAM_reg_128_191_0_6_n_1),
        .DOC(RAM_reg_128_191_0_6_n_2),
        .DOD(RAM_reg_128_191_0_6_n_3),
        .DOE(RAM_reg_128_191_0_6_n_4),
        .DOF(RAM_reg_128_191_0_6_n_5),
        .DOG(RAM_reg_128_191_0_6_n_6),
        .DOH(NLW_RAM_reg_128_191_0_6_DOH_UNCONNECTED),
        .WCLK(s_axi_aclk),
        .WE(ram_full_fb_i_reg_1));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M8 RAM_reg_128_191_14_20
       (.ADDRA(\gc1.count_d2_reg[5]_rep__0 ),
        .ADDRB(\gc1.count_d2_reg[5]_rep__0 ),
        .ADDRC(\gc1.count_d2_reg[5]_rep__0 ),
        .ADDRD(\gc1.count_d2_reg[5]_rep__0 ),
        .ADDRE(\gc1.count_d2_reg[5]_rep__0 ),
        .ADDRF(\gc1.count_d2_reg[5]_rep__0 ),
        .ADDRG(\gc1.count_d2_reg[5]_rep__0 ),
        .ADDRH(\gcc0.gc0.count_d1_reg[5] ),
        .DIA(fg_rxd_wr_length[11]),
        .DIB(fg_rxd_wr_length[12]),
        .DIC(fg_rxd_wr_length[13]),
        .DID(fg_rxd_wr_length[14]),
        .DIE(fg_rxd_wr_length[15]),
        .DIF(fg_rxd_wr_length[16]),
        .DIG(fg_rxd_wr_length[17]),
        .DIH(1'b0),
        .DOA(RAM_reg_128_191_14_20_n_0),
        .DOB(RAM_reg_128_191_14_20_n_1),
        .DOC(RAM_reg_128_191_14_20_n_2),
        .DOD(RAM_reg_128_191_14_20_n_3),
        .DOE(RAM_reg_128_191_14_20_n_4),
        .DOF(RAM_reg_128_191_14_20_n_5),
        .DOG(RAM_reg_128_191_14_20_n_6),
        .DOH(NLW_RAM_reg_128_191_14_20_DOH_UNCONNECTED),
        .WCLK(s_axi_aclk),
        .WE(ram_full_fb_i_reg_1));
  RAM64X1D RAM_reg_128_191_21_21
       (.A0(\gcc0.gc0.count_d1_reg[5] [0]),
        .A1(\gcc0.gc0.count_d1_reg[5] [1]),
        .A2(\gcc0.gc0.count_d1_reg[5] [2]),
        .A3(\gcc0.gc0.count_d1_reg[5] [3]),
        .A4(\gcc0.gc0.count_d1_reg[5] [4]),
        .A5(\gcc0.gc0.count_d1_reg[5] [5]),
        .D(fg_rxd_wr_length[18]),
        .DPO(RAM_reg_128_191_21_21_n_0),
        .DPRA0(\gc1.count_d2_reg[0]_rep__1 ),
        .DPRA1(\gc1.count_d2_reg[1]_rep__1 ),
        .DPRA2(\gc1.count_d2_reg[2]_rep__1 ),
        .DPRA3(\gc1.count_d2_reg[3]_rep__1 ),
        .DPRA4(\gc1.count_d2_reg[4]_rep__1 ),
        .DPRA5(\gc1.count_d2_reg[5]_rep__1 ),
        .SPO(NLW_RAM_reg_128_191_21_21_SPO_UNCONNECTED),
        .WCLK(s_axi_aclk),
        .WE(ram_full_fb_i_reg_1));
  RAM64X1D RAM_reg_128_191_22_22
       (.A0(\gcc0.gc0.count_d1_reg[5] [0]),
        .A1(\gcc0.gc0.count_d1_reg[5] [1]),
        .A2(\gcc0.gc0.count_d1_reg[5] [2]),
        .A3(\gcc0.gc0.count_d1_reg[5] [3]),
        .A4(\gcc0.gc0.count_d1_reg[5] [4]),
        .A5(\gcc0.gc0.count_d1_reg[5] [5]),
        .D(fg_rxd_wr_length[19]),
        .DPO(RAM_reg_128_191_22_22_n_0),
        .DPRA0(\gc1.count_d2_reg[0]_rep__1 ),
        .DPRA1(\gc1.count_d2_reg[1]_rep__1 ),
        .DPRA2(\gc1.count_d2_reg[2]_rep__1 ),
        .DPRA3(\gc1.count_d2_reg[3]_rep__1 ),
        .DPRA4(\gc1.count_d2_reg[4]_rep__1 ),
        .DPRA5(\gc1.count_d2_reg[5]_rep__1 ),
        .SPO(NLW_RAM_reg_128_191_22_22_SPO_UNCONNECTED),
        .WCLK(s_axi_aclk),
        .WE(ram_full_fb_i_reg_1));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M8 RAM_reg_128_191_7_13
       (.ADDRA(ADDRG),
        .ADDRB(ADDRG),
        .ADDRC(ADDRG),
        .ADDRD(ADDRG),
        .ADDRE(ADDRG),
        .ADDRF(ADDRG),
        .ADDRG(ADDRG),
        .ADDRH(\gcc0.gc0.count_d1_reg[5] ),
        .DIA(fg_rxd_wr_length[4]),
        .DIB(fg_rxd_wr_length[5]),
        .DIC(fg_rxd_wr_length[6]),
        .DID(fg_rxd_wr_length[7]),
        .DIE(fg_rxd_wr_length[8]),
        .DIF(fg_rxd_wr_length[9]),
        .DIG(fg_rxd_wr_length[10]),
        .DIH(1'b0),
        .DOA(RAM_reg_128_191_7_13_n_0),
        .DOB(RAM_reg_128_191_7_13_n_1),
        .DOC(RAM_reg_128_191_7_13_n_2),
        .DOD(RAM_reg_128_191_7_13_n_3),
        .DOE(RAM_reg_128_191_7_13_n_4),
        .DOF(RAM_reg_128_191_7_13_n_5),
        .DOG(RAM_reg_128_191_7_13_n_6),
        .DOH(NLW_RAM_reg_128_191_7_13_DOH_UNCONNECTED),
        .WCLK(s_axi_aclk),
        .WE(ram_full_fb_i_reg_1));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M8 RAM_reg_192_255_0_6
       (.ADDRA(Q[5:0]),
        .ADDRB(Q[5:0]),
        .ADDRC(Q[5:0]),
        .ADDRD(Q[5:0]),
        .ADDRE(Q[5:0]),
        .ADDRF(Q[5:0]),
        .ADDRG(Q[5:0]),
        .ADDRH(\gcc0.gc0.count_d1_reg[5] ),
        .DIA(1'b0),
        .DIB(1'b0),
        .DIC(1'b0),
        .DID(fg_rxd_wr_length[0]),
        .DIE(fg_rxd_wr_length[1]),
        .DIF(fg_rxd_wr_length[2]),
        .DIG(fg_rxd_wr_length[3]),
        .DIH(1'b0),
        .DOA(RAM_reg_192_255_0_6_n_0),
        .DOB(RAM_reg_192_255_0_6_n_1),
        .DOC(RAM_reg_192_255_0_6_n_2),
        .DOD(RAM_reg_192_255_0_6_n_3),
        .DOE(RAM_reg_192_255_0_6_n_4),
        .DOF(RAM_reg_192_255_0_6_n_5),
        .DOG(RAM_reg_192_255_0_6_n_6),
        .DOH(NLW_RAM_reg_192_255_0_6_DOH_UNCONNECTED),
        .WCLK(s_axi_aclk),
        .WE(\gcc0.gc0.count_d1_reg[9] ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M8 RAM_reg_192_255_14_20
       (.ADDRA(\gc1.count_d2_reg[5]_rep__0 ),
        .ADDRB(\gc1.count_d2_reg[5]_rep__0 ),
        .ADDRC(\gc1.count_d2_reg[5]_rep__0 ),
        .ADDRD(\gc1.count_d2_reg[5]_rep__0 ),
        .ADDRE(\gc1.count_d2_reg[5]_rep__0 ),
        .ADDRF(\gc1.count_d2_reg[5]_rep__0 ),
        .ADDRG(\gc1.count_d2_reg[5]_rep__0 ),
        .ADDRH(\gcc0.gc0.count_d1_reg[5] ),
        .DIA(fg_rxd_wr_length[11]),
        .DIB(fg_rxd_wr_length[12]),
        .DIC(fg_rxd_wr_length[13]),
        .DID(fg_rxd_wr_length[14]),
        .DIE(fg_rxd_wr_length[15]),
        .DIF(fg_rxd_wr_length[16]),
        .DIG(fg_rxd_wr_length[17]),
        .DIH(1'b0),
        .DOA(RAM_reg_192_255_14_20_n_0),
        .DOB(RAM_reg_192_255_14_20_n_1),
        .DOC(RAM_reg_192_255_14_20_n_2),
        .DOD(RAM_reg_192_255_14_20_n_3),
        .DOE(RAM_reg_192_255_14_20_n_4),
        .DOF(RAM_reg_192_255_14_20_n_5),
        .DOG(RAM_reg_192_255_14_20_n_6),
        .DOH(NLW_RAM_reg_192_255_14_20_DOH_UNCONNECTED),
        .WCLK(s_axi_aclk),
        .WE(\gcc0.gc0.count_d1_reg[9] ));
  RAM64X1D RAM_reg_192_255_21_21
       (.A0(\gcc0.gc0.count_d1_reg[5] [0]),
        .A1(\gcc0.gc0.count_d1_reg[5] [1]),
        .A2(\gcc0.gc0.count_d1_reg[5] [2]),
        .A3(\gcc0.gc0.count_d1_reg[5] [3]),
        .A4(\gcc0.gc0.count_d1_reg[5] [4]),
        .A5(\gcc0.gc0.count_d1_reg[5] [5]),
        .D(fg_rxd_wr_length[18]),
        .DPO(RAM_reg_192_255_21_21_n_0),
        .DPRA0(\gc1.count_d2_reg[0]_rep__1 ),
        .DPRA1(\gc1.count_d2_reg[1]_rep__1 ),
        .DPRA2(\gc1.count_d2_reg[2]_rep__1 ),
        .DPRA3(\gc1.count_d2_reg[3]_rep__1 ),
        .DPRA4(\gc1.count_d2_reg[4]_rep__1 ),
        .DPRA5(\gc1.count_d2_reg[5]_rep__1 ),
        .SPO(NLW_RAM_reg_192_255_21_21_SPO_UNCONNECTED),
        .WCLK(s_axi_aclk),
        .WE(\gcc0.gc0.count_d1_reg[9] ));
  RAM64X1D RAM_reg_192_255_22_22
       (.A0(\gcc0.gc0.count_d1_reg[5] [0]),
        .A1(\gcc0.gc0.count_d1_reg[5] [1]),
        .A2(\gcc0.gc0.count_d1_reg[5] [2]),
        .A3(\gcc0.gc0.count_d1_reg[5] [3]),
        .A4(\gcc0.gc0.count_d1_reg[5] [4]),
        .A5(\gcc0.gc0.count_d1_reg[5] [5]),
        .D(fg_rxd_wr_length[19]),
        .DPO(RAM_reg_192_255_22_22_n_0),
        .DPRA0(\gc1.count_d2_reg[0]_rep__1 ),
        .DPRA1(\gc1.count_d2_reg[1]_rep__1 ),
        .DPRA2(\gc1.count_d2_reg[2]_rep__1 ),
        .DPRA3(\gc1.count_d2_reg[3]_rep__1 ),
        .DPRA4(\gc1.count_d2_reg[4]_rep__1 ),
        .DPRA5(\gc1.count_d2_reg[5]_rep__1 ),
        .SPO(NLW_RAM_reg_192_255_22_22_SPO_UNCONNECTED),
        .WCLK(s_axi_aclk),
        .WE(\gcc0.gc0.count_d1_reg[9] ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M8 RAM_reg_192_255_7_13
       (.ADDRA(ADDRG),
        .ADDRB(ADDRG),
        .ADDRC(ADDRG),
        .ADDRD(ADDRG),
        .ADDRE(ADDRG),
        .ADDRF(ADDRG),
        .ADDRG(ADDRG),
        .ADDRH(\gcc0.gc0.count_d1_reg[5] ),
        .DIA(fg_rxd_wr_length[4]),
        .DIB(fg_rxd_wr_length[5]),
        .DIC(fg_rxd_wr_length[6]),
        .DID(fg_rxd_wr_length[7]),
        .DIE(fg_rxd_wr_length[8]),
        .DIF(fg_rxd_wr_length[9]),
        .DIG(fg_rxd_wr_length[10]),
        .DIH(1'b0),
        .DOA(RAM_reg_192_255_7_13_n_0),
        .DOB(RAM_reg_192_255_7_13_n_1),
        .DOC(RAM_reg_192_255_7_13_n_2),
        .DOD(RAM_reg_192_255_7_13_n_3),
        .DOE(RAM_reg_192_255_7_13_n_4),
        .DOF(RAM_reg_192_255_7_13_n_5),
        .DOG(RAM_reg_192_255_7_13_n_6),
        .DOH(NLW_RAM_reg_192_255_7_13_DOH_UNCONNECTED),
        .WCLK(s_axi_aclk),
        .WE(\gcc0.gc0.count_d1_reg[9] ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M8 RAM_reg_256_319_0_6
       (.ADDRA(Q[5:0]),
        .ADDRB(Q[5:0]),
        .ADDRC(Q[5:0]),
        .ADDRD(Q[5:0]),
        .ADDRE(Q[5:0]),
        .ADDRF(Q[5:0]),
        .ADDRG(Q[5:0]),
        .ADDRH(\gcc0.gc0.count_d1_reg[5] ),
        .DIA(1'b0),
        .DIB(1'b0),
        .DIC(1'b0),
        .DID(fg_rxd_wr_length[0]),
        .DIE(fg_rxd_wr_length[1]),
        .DIF(fg_rxd_wr_length[2]),
        .DIG(fg_rxd_wr_length[3]),
        .DIH(1'b0),
        .DOA(RAM_reg_256_319_0_6_n_0),
        .DOB(RAM_reg_256_319_0_6_n_1),
        .DOC(RAM_reg_256_319_0_6_n_2),
        .DOD(RAM_reg_256_319_0_6_n_3),
        .DOE(RAM_reg_256_319_0_6_n_4),
        .DOF(RAM_reg_256_319_0_6_n_5),
        .DOG(RAM_reg_256_319_0_6_n_6),
        .DOH(NLW_RAM_reg_256_319_0_6_DOH_UNCONNECTED),
        .WCLK(s_axi_aclk),
        .WE(ram_full_fb_i_reg_2));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M8 RAM_reg_256_319_14_20
       (.ADDRA(\gc1.count_d2_reg[5]_rep__0 ),
        .ADDRB(\gc1.count_d2_reg[5]_rep__0 ),
        .ADDRC(\gc1.count_d2_reg[5]_rep__0 ),
        .ADDRD(\gc1.count_d2_reg[5]_rep__0 ),
        .ADDRE(\gc1.count_d2_reg[5]_rep__0 ),
        .ADDRF(\gc1.count_d2_reg[5]_rep__0 ),
        .ADDRG(\gc1.count_d2_reg[5]_rep__0 ),
        .ADDRH(\gcc0.gc0.count_d1_reg[5] ),
        .DIA(fg_rxd_wr_length[11]),
        .DIB(fg_rxd_wr_length[12]),
        .DIC(fg_rxd_wr_length[13]),
        .DID(fg_rxd_wr_length[14]),
        .DIE(fg_rxd_wr_length[15]),
        .DIF(fg_rxd_wr_length[16]),
        .DIG(fg_rxd_wr_length[17]),
        .DIH(1'b0),
        .DOA(RAM_reg_256_319_14_20_n_0),
        .DOB(RAM_reg_256_319_14_20_n_1),
        .DOC(RAM_reg_256_319_14_20_n_2),
        .DOD(RAM_reg_256_319_14_20_n_3),
        .DOE(RAM_reg_256_319_14_20_n_4),
        .DOF(RAM_reg_256_319_14_20_n_5),
        .DOG(RAM_reg_256_319_14_20_n_6),
        .DOH(NLW_RAM_reg_256_319_14_20_DOH_UNCONNECTED),
        .WCLK(s_axi_aclk),
        .WE(ram_full_fb_i_reg_2));
  RAM64X1D RAM_reg_256_319_21_21
       (.A0(\gcc0.gc0.count_d1_reg[5] [0]),
        .A1(\gcc0.gc0.count_d1_reg[5] [1]),
        .A2(\gcc0.gc0.count_d1_reg[5] [2]),
        .A3(\gcc0.gc0.count_d1_reg[5] [3]),
        .A4(\gcc0.gc0.count_d1_reg[5] [4]),
        .A5(\gcc0.gc0.count_d1_reg[5] [5]),
        .D(fg_rxd_wr_length[18]),
        .DPO(RAM_reg_256_319_21_21_n_0),
        .DPRA0(\gc1.count_d2_reg[0]_rep__1 ),
        .DPRA1(\gc1.count_d2_reg[1]_rep__1 ),
        .DPRA2(\gc1.count_d2_reg[2]_rep__1 ),
        .DPRA3(\gc1.count_d2_reg[3]_rep__1 ),
        .DPRA4(\gc1.count_d2_reg[4]_rep__1 ),
        .DPRA5(\gc1.count_d2_reg[5]_rep__1 ),
        .SPO(NLW_RAM_reg_256_319_21_21_SPO_UNCONNECTED),
        .WCLK(s_axi_aclk),
        .WE(ram_full_fb_i_reg_2));
  RAM64X1D RAM_reg_256_319_22_22
       (.A0(\gcc0.gc0.count_d1_reg[5] [0]),
        .A1(\gcc0.gc0.count_d1_reg[5] [1]),
        .A2(\gcc0.gc0.count_d1_reg[5] [2]),
        .A3(\gcc0.gc0.count_d1_reg[5] [3]),
        .A4(\gcc0.gc0.count_d1_reg[5] [4]),
        .A5(\gcc0.gc0.count_d1_reg[5] [5]),
        .D(fg_rxd_wr_length[19]),
        .DPO(RAM_reg_256_319_22_22_n_0),
        .DPRA0(\gc1.count_d2_reg[0]_rep__1 ),
        .DPRA1(\gc1.count_d2_reg[1]_rep__1 ),
        .DPRA2(\gc1.count_d2_reg[2]_rep__1 ),
        .DPRA3(\gc1.count_d2_reg[3]_rep__1 ),
        .DPRA4(\gc1.count_d2_reg[4]_rep__1 ),
        .DPRA5(\gc1.count_d2_reg[5]_rep__1 ),
        .SPO(NLW_RAM_reg_256_319_22_22_SPO_UNCONNECTED),
        .WCLK(s_axi_aclk),
        .WE(ram_full_fb_i_reg_2));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M8 RAM_reg_256_319_7_13
       (.ADDRA(ADDRG),
        .ADDRB(ADDRG),
        .ADDRC(ADDRG),
        .ADDRD(ADDRG),
        .ADDRE(ADDRG),
        .ADDRF(ADDRG),
        .ADDRG(ADDRG),
        .ADDRH(\gcc0.gc0.count_d1_reg[5] ),
        .DIA(fg_rxd_wr_length[4]),
        .DIB(fg_rxd_wr_length[5]),
        .DIC(fg_rxd_wr_length[6]),
        .DID(fg_rxd_wr_length[7]),
        .DIE(fg_rxd_wr_length[8]),
        .DIF(fg_rxd_wr_length[9]),
        .DIG(fg_rxd_wr_length[10]),
        .DIH(1'b0),
        .DOA(RAM_reg_256_319_7_13_n_0),
        .DOB(RAM_reg_256_319_7_13_n_1),
        .DOC(RAM_reg_256_319_7_13_n_2),
        .DOD(RAM_reg_256_319_7_13_n_3),
        .DOE(RAM_reg_256_319_7_13_n_4),
        .DOF(RAM_reg_256_319_7_13_n_5),
        .DOG(RAM_reg_256_319_7_13_n_6),
        .DOH(NLW_RAM_reg_256_319_7_13_DOH_UNCONNECTED),
        .WCLK(s_axi_aclk),
        .WE(ram_full_fb_i_reg_2));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M8 RAM_reg_320_383_0_6
       (.ADDRA(Q[5:0]),
        .ADDRB(Q[5:0]),
        .ADDRC(Q[5:0]),
        .ADDRD(Q[5:0]),
        .ADDRE(Q[5:0]),
        .ADDRF(Q[5:0]),
        .ADDRG(Q[5:0]),
        .ADDRH(\gcc0.gc0.count_d1_reg[5] ),
        .DIA(1'b0),
        .DIB(1'b0),
        .DIC(1'b0),
        .DID(fg_rxd_wr_length[0]),
        .DIE(fg_rxd_wr_length[1]),
        .DIF(fg_rxd_wr_length[2]),
        .DIG(fg_rxd_wr_length[3]),
        .DIH(1'b0),
        .DOA(RAM_reg_320_383_0_6_n_0),
        .DOB(RAM_reg_320_383_0_6_n_1),
        .DOC(RAM_reg_320_383_0_6_n_2),
        .DOD(RAM_reg_320_383_0_6_n_3),
        .DOE(RAM_reg_320_383_0_6_n_4),
        .DOF(RAM_reg_320_383_0_6_n_5),
        .DOG(RAM_reg_320_383_0_6_n_6),
        .DOH(NLW_RAM_reg_320_383_0_6_DOH_UNCONNECTED),
        .WCLK(s_axi_aclk),
        .WE(\gcc0.gc0.count_d1_reg[9]_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M8 RAM_reg_320_383_14_20
       (.ADDRA(\gc1.count_d2_reg[5]_rep__0 ),
        .ADDRB(\gc1.count_d2_reg[5]_rep__0 ),
        .ADDRC(\gc1.count_d2_reg[5]_rep__0 ),
        .ADDRD(\gc1.count_d2_reg[5]_rep__0 ),
        .ADDRE(\gc1.count_d2_reg[5]_rep__0 ),
        .ADDRF(\gc1.count_d2_reg[5]_rep__0 ),
        .ADDRG(\gc1.count_d2_reg[5]_rep__0 ),
        .ADDRH(\gcc0.gc0.count_d1_reg[5] ),
        .DIA(fg_rxd_wr_length[11]),
        .DIB(fg_rxd_wr_length[12]),
        .DIC(fg_rxd_wr_length[13]),
        .DID(fg_rxd_wr_length[14]),
        .DIE(fg_rxd_wr_length[15]),
        .DIF(fg_rxd_wr_length[16]),
        .DIG(fg_rxd_wr_length[17]),
        .DIH(1'b0),
        .DOA(RAM_reg_320_383_14_20_n_0),
        .DOB(RAM_reg_320_383_14_20_n_1),
        .DOC(RAM_reg_320_383_14_20_n_2),
        .DOD(RAM_reg_320_383_14_20_n_3),
        .DOE(RAM_reg_320_383_14_20_n_4),
        .DOF(RAM_reg_320_383_14_20_n_5),
        .DOG(RAM_reg_320_383_14_20_n_6),
        .DOH(NLW_RAM_reg_320_383_14_20_DOH_UNCONNECTED),
        .WCLK(s_axi_aclk),
        .WE(\gcc0.gc0.count_d1_reg[9]_0 ));
  RAM64X1D RAM_reg_320_383_21_21
       (.A0(\gcc0.gc0.count_d1_reg[5] [0]),
        .A1(\gcc0.gc0.count_d1_reg[5] [1]),
        .A2(\gcc0.gc0.count_d1_reg[5] [2]),
        .A3(\gcc0.gc0.count_d1_reg[5] [3]),
        .A4(\gcc0.gc0.count_d1_reg[5] [4]),
        .A5(\gcc0.gc0.count_d1_reg[5] [5]),
        .D(fg_rxd_wr_length[18]),
        .DPO(RAM_reg_320_383_21_21_n_0),
        .DPRA0(\gc1.count_d2_reg[0]_rep__1 ),
        .DPRA1(\gc1.count_d2_reg[1]_rep__1 ),
        .DPRA2(\gc1.count_d2_reg[2]_rep__1 ),
        .DPRA3(\gc1.count_d2_reg[3]_rep__1 ),
        .DPRA4(\gc1.count_d2_reg[4]_rep__1 ),
        .DPRA5(\gc1.count_d2_reg[5]_rep__1 ),
        .SPO(NLW_RAM_reg_320_383_21_21_SPO_UNCONNECTED),
        .WCLK(s_axi_aclk),
        .WE(\gcc0.gc0.count_d1_reg[9]_0 ));
  RAM64X1D RAM_reg_320_383_22_22
       (.A0(\gcc0.gc0.count_d1_reg[5] [0]),
        .A1(\gcc0.gc0.count_d1_reg[5] [1]),
        .A2(\gcc0.gc0.count_d1_reg[5] [2]),
        .A3(\gcc0.gc0.count_d1_reg[5] [3]),
        .A4(\gcc0.gc0.count_d1_reg[5] [4]),
        .A5(\gcc0.gc0.count_d1_reg[5] [5]),
        .D(fg_rxd_wr_length[19]),
        .DPO(RAM_reg_320_383_22_22_n_0),
        .DPRA0(\gc1.count_d2_reg[0]_rep__1 ),
        .DPRA1(\gc1.count_d2_reg[1]_rep__1 ),
        .DPRA2(\gc1.count_d2_reg[2]_rep__1 ),
        .DPRA3(\gc1.count_d2_reg[3]_rep__1 ),
        .DPRA4(\gc1.count_d2_reg[4]_rep__1 ),
        .DPRA5(\gc1.count_d2_reg[5]_rep__1 ),
        .SPO(NLW_RAM_reg_320_383_22_22_SPO_UNCONNECTED),
        .WCLK(s_axi_aclk),
        .WE(\gcc0.gc0.count_d1_reg[9]_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M8 RAM_reg_320_383_7_13
       (.ADDRA(ADDRG),
        .ADDRB(ADDRG),
        .ADDRC(ADDRG),
        .ADDRD(ADDRG),
        .ADDRE(ADDRG),
        .ADDRF(ADDRG),
        .ADDRG(ADDRG),
        .ADDRH(\gcc0.gc0.count_d1_reg[5] ),
        .DIA(fg_rxd_wr_length[4]),
        .DIB(fg_rxd_wr_length[5]),
        .DIC(fg_rxd_wr_length[6]),
        .DID(fg_rxd_wr_length[7]),
        .DIE(fg_rxd_wr_length[8]),
        .DIF(fg_rxd_wr_length[9]),
        .DIG(fg_rxd_wr_length[10]),
        .DIH(1'b0),
        .DOA(RAM_reg_320_383_7_13_n_0),
        .DOB(RAM_reg_320_383_7_13_n_1),
        .DOC(RAM_reg_320_383_7_13_n_2),
        .DOD(RAM_reg_320_383_7_13_n_3),
        .DOE(RAM_reg_320_383_7_13_n_4),
        .DOF(RAM_reg_320_383_7_13_n_5),
        .DOG(RAM_reg_320_383_7_13_n_6),
        .DOH(NLW_RAM_reg_320_383_7_13_DOH_UNCONNECTED),
        .WCLK(s_axi_aclk),
        .WE(\gcc0.gc0.count_d1_reg[9]_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M8 RAM_reg_384_447_0_6
       (.ADDRA(Q[5:0]),
        .ADDRB(Q[5:0]),
        .ADDRC(Q[5:0]),
        .ADDRD(Q[5:0]),
        .ADDRE(Q[5:0]),
        .ADDRF(Q[5:0]),
        .ADDRG(Q[5:0]),
        .ADDRH(\gcc0.gc0.count_d1_reg[5] ),
        .DIA(1'b0),
        .DIB(1'b0),
        .DIC(1'b0),
        .DID(fg_rxd_wr_length[0]),
        .DIE(fg_rxd_wr_length[1]),
        .DIF(fg_rxd_wr_length[2]),
        .DIG(fg_rxd_wr_length[3]),
        .DIH(1'b0),
        .DOA(RAM_reg_384_447_0_6_n_0),
        .DOB(RAM_reg_384_447_0_6_n_1),
        .DOC(RAM_reg_384_447_0_6_n_2),
        .DOD(RAM_reg_384_447_0_6_n_3),
        .DOE(RAM_reg_384_447_0_6_n_4),
        .DOF(RAM_reg_384_447_0_6_n_5),
        .DOG(RAM_reg_384_447_0_6_n_6),
        .DOH(NLW_RAM_reg_384_447_0_6_DOH_UNCONNECTED),
        .WCLK(s_axi_aclk),
        .WE(\gcc0.gc0.count_d1_reg[9]_1 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M8 RAM_reg_384_447_14_20
       (.ADDRA(\gc1.count_d2_reg[5]_rep__0 ),
        .ADDRB(\gc1.count_d2_reg[5]_rep__0 ),
        .ADDRC(\gc1.count_d2_reg[5]_rep__0 ),
        .ADDRD(\gc1.count_d2_reg[5]_rep__0 ),
        .ADDRE(\gc1.count_d2_reg[5]_rep__0 ),
        .ADDRF(\gc1.count_d2_reg[5]_rep__0 ),
        .ADDRG(\gc1.count_d2_reg[5]_rep__0 ),
        .ADDRH(\gcc0.gc0.count_d1_reg[5] ),
        .DIA(fg_rxd_wr_length[11]),
        .DIB(fg_rxd_wr_length[12]),
        .DIC(fg_rxd_wr_length[13]),
        .DID(fg_rxd_wr_length[14]),
        .DIE(fg_rxd_wr_length[15]),
        .DIF(fg_rxd_wr_length[16]),
        .DIG(fg_rxd_wr_length[17]),
        .DIH(1'b0),
        .DOA(RAM_reg_384_447_14_20_n_0),
        .DOB(RAM_reg_384_447_14_20_n_1),
        .DOC(RAM_reg_384_447_14_20_n_2),
        .DOD(RAM_reg_384_447_14_20_n_3),
        .DOE(RAM_reg_384_447_14_20_n_4),
        .DOF(RAM_reg_384_447_14_20_n_5),
        .DOG(RAM_reg_384_447_14_20_n_6),
        .DOH(NLW_RAM_reg_384_447_14_20_DOH_UNCONNECTED),
        .WCLK(s_axi_aclk),
        .WE(\gcc0.gc0.count_d1_reg[9]_1 ));
  RAM64X1D RAM_reg_384_447_21_21
       (.A0(\gcc0.gc0.count_d1_reg[5] [0]),
        .A1(\gcc0.gc0.count_d1_reg[5] [1]),
        .A2(\gcc0.gc0.count_d1_reg[5] [2]),
        .A3(\gcc0.gc0.count_d1_reg[5] [3]),
        .A4(\gcc0.gc0.count_d1_reg[5] [4]),
        .A5(\gcc0.gc0.count_d1_reg[5] [5]),
        .D(fg_rxd_wr_length[18]),
        .DPO(RAM_reg_384_447_21_21_n_0),
        .DPRA0(\gc1.count_d2_reg[0]_rep__1 ),
        .DPRA1(\gc1.count_d2_reg[1]_rep__1 ),
        .DPRA2(\gc1.count_d2_reg[2]_rep__1 ),
        .DPRA3(\gc1.count_d2_reg[3]_rep__1 ),
        .DPRA4(\gc1.count_d2_reg[4]_rep__1 ),
        .DPRA5(\gc1.count_d2_reg[5]_rep__1 ),
        .SPO(NLW_RAM_reg_384_447_21_21_SPO_UNCONNECTED),
        .WCLK(s_axi_aclk),
        .WE(\gcc0.gc0.count_d1_reg[9]_1 ));
  RAM64X1D RAM_reg_384_447_22_22
       (.A0(\gcc0.gc0.count_d1_reg[5] [0]),
        .A1(\gcc0.gc0.count_d1_reg[5] [1]),
        .A2(\gcc0.gc0.count_d1_reg[5] [2]),
        .A3(\gcc0.gc0.count_d1_reg[5] [3]),
        .A4(\gcc0.gc0.count_d1_reg[5] [4]),
        .A5(\gcc0.gc0.count_d1_reg[5] [5]),
        .D(fg_rxd_wr_length[19]),
        .DPO(RAM_reg_384_447_22_22_n_0),
        .DPRA0(\gc1.count_d2_reg[0]_rep__1 ),
        .DPRA1(\gc1.count_d2_reg[1]_rep__1 ),
        .DPRA2(\gc1.count_d2_reg[2]_rep__1 ),
        .DPRA3(\gc1.count_d2_reg[3]_rep__1 ),
        .DPRA4(\gc1.count_d2_reg[4]_rep__1 ),
        .DPRA5(\gc1.count_d2_reg[5]_rep__1 ),
        .SPO(NLW_RAM_reg_384_447_22_22_SPO_UNCONNECTED),
        .WCLK(s_axi_aclk),
        .WE(\gcc0.gc0.count_d1_reg[9]_1 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M8 RAM_reg_384_447_7_13
       (.ADDRA(ADDRG),
        .ADDRB(ADDRG),
        .ADDRC(ADDRG),
        .ADDRD(ADDRG),
        .ADDRE(ADDRG),
        .ADDRF(ADDRG),
        .ADDRG(ADDRG),
        .ADDRH(\gcc0.gc0.count_d1_reg[5] ),
        .DIA(fg_rxd_wr_length[4]),
        .DIB(fg_rxd_wr_length[5]),
        .DIC(fg_rxd_wr_length[6]),
        .DID(fg_rxd_wr_length[7]),
        .DIE(fg_rxd_wr_length[8]),
        .DIF(fg_rxd_wr_length[9]),
        .DIG(fg_rxd_wr_length[10]),
        .DIH(1'b0),
        .DOA(RAM_reg_384_447_7_13_n_0),
        .DOB(RAM_reg_384_447_7_13_n_1),
        .DOC(RAM_reg_384_447_7_13_n_2),
        .DOD(RAM_reg_384_447_7_13_n_3),
        .DOE(RAM_reg_384_447_7_13_n_4),
        .DOF(RAM_reg_384_447_7_13_n_5),
        .DOG(RAM_reg_384_447_7_13_n_6),
        .DOH(NLW_RAM_reg_384_447_7_13_DOH_UNCONNECTED),
        .WCLK(s_axi_aclk),
        .WE(\gcc0.gc0.count_d1_reg[9]_1 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M8 RAM_reg_448_511_0_6
       (.ADDRA(Q[5:0]),
        .ADDRB(Q[5:0]),
        .ADDRC(Q[5:0]),
        .ADDRD(Q[5:0]),
        .ADDRE(Q[5:0]),
        .ADDRF(Q[5:0]),
        .ADDRG(Q[5:0]),
        .ADDRH(\gcc0.gc0.count_d1_reg[5] ),
        .DIA(1'b0),
        .DIB(1'b0),
        .DIC(1'b0),
        .DID(fg_rxd_wr_length[0]),
        .DIE(fg_rxd_wr_length[1]),
        .DIF(fg_rxd_wr_length[2]),
        .DIG(fg_rxd_wr_length[3]),
        .DIH(1'b0),
        .DOA(RAM_reg_448_511_0_6_n_0),
        .DOB(RAM_reg_448_511_0_6_n_1),
        .DOC(RAM_reg_448_511_0_6_n_2),
        .DOD(RAM_reg_448_511_0_6_n_3),
        .DOE(RAM_reg_448_511_0_6_n_4),
        .DOF(RAM_reg_448_511_0_6_n_5),
        .DOG(RAM_reg_448_511_0_6_n_6),
        .DOH(NLW_RAM_reg_448_511_0_6_DOH_UNCONNECTED),
        .WCLK(s_axi_aclk),
        .WE(\gcc0.gc0.count_d1_reg[9]_2 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M8 RAM_reg_448_511_14_20
       (.ADDRA(\gc1.count_d2_reg[5]_rep__0 ),
        .ADDRB(\gc1.count_d2_reg[5]_rep__0 ),
        .ADDRC(\gc1.count_d2_reg[5]_rep__0 ),
        .ADDRD(\gc1.count_d2_reg[5]_rep__0 ),
        .ADDRE(\gc1.count_d2_reg[5]_rep__0 ),
        .ADDRF(\gc1.count_d2_reg[5]_rep__0 ),
        .ADDRG(\gc1.count_d2_reg[5]_rep__0 ),
        .ADDRH(\gcc0.gc0.count_d1_reg[5] ),
        .DIA(fg_rxd_wr_length[11]),
        .DIB(fg_rxd_wr_length[12]),
        .DIC(fg_rxd_wr_length[13]),
        .DID(fg_rxd_wr_length[14]),
        .DIE(fg_rxd_wr_length[15]),
        .DIF(fg_rxd_wr_length[16]),
        .DIG(fg_rxd_wr_length[17]),
        .DIH(1'b0),
        .DOA(RAM_reg_448_511_14_20_n_0),
        .DOB(RAM_reg_448_511_14_20_n_1),
        .DOC(RAM_reg_448_511_14_20_n_2),
        .DOD(RAM_reg_448_511_14_20_n_3),
        .DOE(RAM_reg_448_511_14_20_n_4),
        .DOF(RAM_reg_448_511_14_20_n_5),
        .DOG(RAM_reg_448_511_14_20_n_6),
        .DOH(NLW_RAM_reg_448_511_14_20_DOH_UNCONNECTED),
        .WCLK(s_axi_aclk),
        .WE(\gcc0.gc0.count_d1_reg[9]_2 ));
  RAM64X1D RAM_reg_448_511_21_21
       (.A0(\gcc0.gc0.count_d1_reg[5] [0]),
        .A1(\gcc0.gc0.count_d1_reg[5] [1]),
        .A2(\gcc0.gc0.count_d1_reg[5] [2]),
        .A3(\gcc0.gc0.count_d1_reg[5] [3]),
        .A4(\gcc0.gc0.count_d1_reg[5] [4]),
        .A5(\gcc0.gc0.count_d1_reg[5] [5]),
        .D(fg_rxd_wr_length[18]),
        .DPO(RAM_reg_448_511_21_21_n_0),
        .DPRA0(\gc1.count_d2_reg[0]_rep__1 ),
        .DPRA1(\gc1.count_d2_reg[1]_rep__1 ),
        .DPRA2(\gc1.count_d2_reg[2]_rep__1 ),
        .DPRA3(\gc1.count_d2_reg[3]_rep__1 ),
        .DPRA4(\gc1.count_d2_reg[4]_rep__1 ),
        .DPRA5(\gc1.count_d2_reg[5]_rep__1 ),
        .SPO(NLW_RAM_reg_448_511_21_21_SPO_UNCONNECTED),
        .WCLK(s_axi_aclk),
        .WE(\gcc0.gc0.count_d1_reg[9]_2 ));
  RAM64X1D RAM_reg_448_511_22_22
       (.A0(\gcc0.gc0.count_d1_reg[5] [0]),
        .A1(\gcc0.gc0.count_d1_reg[5] [1]),
        .A2(\gcc0.gc0.count_d1_reg[5] [2]),
        .A3(\gcc0.gc0.count_d1_reg[5] [3]),
        .A4(\gcc0.gc0.count_d1_reg[5] [4]),
        .A5(\gcc0.gc0.count_d1_reg[5] [5]),
        .D(fg_rxd_wr_length[19]),
        .DPO(RAM_reg_448_511_22_22_n_0),
        .DPRA0(\gc1.count_d2_reg[0]_rep__1 ),
        .DPRA1(\gc1.count_d2_reg[1]_rep__1 ),
        .DPRA2(\gc1.count_d2_reg[2]_rep__1 ),
        .DPRA3(\gc1.count_d2_reg[3]_rep__1 ),
        .DPRA4(\gc1.count_d2_reg[4]_rep__1 ),
        .DPRA5(\gc1.count_d2_reg[5]_rep__1 ),
        .SPO(NLW_RAM_reg_448_511_22_22_SPO_UNCONNECTED),
        .WCLK(s_axi_aclk),
        .WE(\gcc0.gc0.count_d1_reg[9]_2 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M8 RAM_reg_448_511_7_13
       (.ADDRA(ADDRG),
        .ADDRB(ADDRG),
        .ADDRC(ADDRG),
        .ADDRD(ADDRG),
        .ADDRE(ADDRG),
        .ADDRF(ADDRG),
        .ADDRG(ADDRG),
        .ADDRH(\gcc0.gc0.count_d1_reg[5] ),
        .DIA(fg_rxd_wr_length[4]),
        .DIB(fg_rxd_wr_length[5]),
        .DIC(fg_rxd_wr_length[6]),
        .DID(fg_rxd_wr_length[7]),
        .DIE(fg_rxd_wr_length[8]),
        .DIF(fg_rxd_wr_length[9]),
        .DIG(fg_rxd_wr_length[10]),
        .DIH(1'b0),
        .DOA(RAM_reg_448_511_7_13_n_0),
        .DOB(RAM_reg_448_511_7_13_n_1),
        .DOC(RAM_reg_448_511_7_13_n_2),
        .DOD(RAM_reg_448_511_7_13_n_3),
        .DOE(RAM_reg_448_511_7_13_n_4),
        .DOF(RAM_reg_448_511_7_13_n_5),
        .DOG(RAM_reg_448_511_7_13_n_6),
        .DOH(NLW_RAM_reg_448_511_7_13_DOH_UNCONNECTED),
        .WCLK(s_axi_aclk),
        .WE(\gcc0.gc0.count_d1_reg[9]_2 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M8 RAM_reg_512_575_0_6
       (.ADDRA(Q[5:0]),
        .ADDRB(Q[5:0]),
        .ADDRC(Q[5:0]),
        .ADDRD(Q[5:0]),
        .ADDRE(Q[5:0]),
        .ADDRF(Q[5:0]),
        .ADDRG(Q[5:0]),
        .ADDRH(\gcc0.gc0.count_d1_reg[5] ),
        .DIA(1'b0),
        .DIB(1'b0),
        .DIC(1'b0),
        .DID(fg_rxd_wr_length[0]),
        .DIE(fg_rxd_wr_length[1]),
        .DIF(fg_rxd_wr_length[2]),
        .DIG(fg_rxd_wr_length[3]),
        .DIH(1'b0),
        .DOA(RAM_reg_512_575_0_6_n_0),
        .DOB(RAM_reg_512_575_0_6_n_1),
        .DOC(RAM_reg_512_575_0_6_n_2),
        .DOD(RAM_reg_512_575_0_6_n_3),
        .DOE(RAM_reg_512_575_0_6_n_4),
        .DOF(RAM_reg_512_575_0_6_n_5),
        .DOG(RAM_reg_512_575_0_6_n_6),
        .DOH(NLW_RAM_reg_512_575_0_6_DOH_UNCONNECTED),
        .WCLK(s_axi_aclk),
        .WE(ram_full_fb_i_reg_3));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M8 RAM_reg_512_575_14_20
       (.ADDRA(\gc1.count_d2_reg[5]_rep__0 ),
        .ADDRB(\gc1.count_d2_reg[5]_rep__0 ),
        .ADDRC(\gc1.count_d2_reg[5]_rep__0 ),
        .ADDRD(\gc1.count_d2_reg[5]_rep__0 ),
        .ADDRE(\gc1.count_d2_reg[5]_rep__0 ),
        .ADDRF(\gc1.count_d2_reg[5]_rep__0 ),
        .ADDRG(\gc1.count_d2_reg[5]_rep__0 ),
        .ADDRH(\gcc0.gc0.count_d1_reg[5] ),
        .DIA(fg_rxd_wr_length[11]),
        .DIB(fg_rxd_wr_length[12]),
        .DIC(fg_rxd_wr_length[13]),
        .DID(fg_rxd_wr_length[14]),
        .DIE(fg_rxd_wr_length[15]),
        .DIF(fg_rxd_wr_length[16]),
        .DIG(fg_rxd_wr_length[17]),
        .DIH(1'b0),
        .DOA(RAM_reg_512_575_14_20_n_0),
        .DOB(RAM_reg_512_575_14_20_n_1),
        .DOC(RAM_reg_512_575_14_20_n_2),
        .DOD(RAM_reg_512_575_14_20_n_3),
        .DOE(RAM_reg_512_575_14_20_n_4),
        .DOF(RAM_reg_512_575_14_20_n_5),
        .DOG(RAM_reg_512_575_14_20_n_6),
        .DOH(NLW_RAM_reg_512_575_14_20_DOH_UNCONNECTED),
        .WCLK(s_axi_aclk),
        .WE(ram_full_fb_i_reg_3));
  RAM64X1D RAM_reg_512_575_21_21
       (.A0(\gcc0.gc0.count_d1_reg[5] [0]),
        .A1(\gcc0.gc0.count_d1_reg[5] [1]),
        .A2(\gcc0.gc0.count_d1_reg[5] [2]),
        .A3(\gcc0.gc0.count_d1_reg[5] [3]),
        .A4(\gcc0.gc0.count_d1_reg[5] [4]),
        .A5(\gcc0.gc0.count_d1_reg[5] [5]),
        .D(fg_rxd_wr_length[18]),
        .DPO(RAM_reg_512_575_21_21_n_0),
        .DPRA0(\gc1.count_d2_reg[0]_rep__1 ),
        .DPRA1(\gc1.count_d2_reg[1]_rep__1 ),
        .DPRA2(\gc1.count_d2_reg[2]_rep__1 ),
        .DPRA3(\gc1.count_d2_reg[3]_rep__1 ),
        .DPRA4(\gc1.count_d2_reg[4]_rep__1 ),
        .DPRA5(\gc1.count_d2_reg[5]_rep__1 ),
        .SPO(NLW_RAM_reg_512_575_21_21_SPO_UNCONNECTED),
        .WCLK(s_axi_aclk),
        .WE(ram_full_fb_i_reg_3));
  RAM64X1D RAM_reg_512_575_22_22
       (.A0(\gcc0.gc0.count_d1_reg[5] [0]),
        .A1(\gcc0.gc0.count_d1_reg[5] [1]),
        .A2(\gcc0.gc0.count_d1_reg[5] [2]),
        .A3(\gcc0.gc0.count_d1_reg[5] [3]),
        .A4(\gcc0.gc0.count_d1_reg[5] [4]),
        .A5(\gcc0.gc0.count_d1_reg[5] [5]),
        .D(fg_rxd_wr_length[19]),
        .DPO(RAM_reg_512_575_22_22_n_0),
        .DPRA0(\gc1.count_d2_reg[0]_rep__1 ),
        .DPRA1(\gc1.count_d2_reg[1]_rep__1 ),
        .DPRA2(\gc1.count_d2_reg[2]_rep__1 ),
        .DPRA3(\gc1.count_d2_reg[3]_rep__1 ),
        .DPRA4(\gc1.count_d2_reg[4]_rep__1 ),
        .DPRA5(\gc1.count_d2_reg[5]_rep__1 ),
        .SPO(NLW_RAM_reg_512_575_22_22_SPO_UNCONNECTED),
        .WCLK(s_axi_aclk),
        .WE(ram_full_fb_i_reg_3));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M8 RAM_reg_512_575_7_13
       (.ADDRA(ADDRG),
        .ADDRB(ADDRG),
        .ADDRC(ADDRG),
        .ADDRD(ADDRG),
        .ADDRE(ADDRG),
        .ADDRF(ADDRG),
        .ADDRG(ADDRG),
        .ADDRH(\gcc0.gc0.count_d1_reg[5] ),
        .DIA(fg_rxd_wr_length[4]),
        .DIB(fg_rxd_wr_length[5]),
        .DIC(fg_rxd_wr_length[6]),
        .DID(fg_rxd_wr_length[7]),
        .DIE(fg_rxd_wr_length[8]),
        .DIF(fg_rxd_wr_length[9]),
        .DIG(fg_rxd_wr_length[10]),
        .DIH(1'b0),
        .DOA(RAM_reg_512_575_7_13_n_0),
        .DOB(RAM_reg_512_575_7_13_n_1),
        .DOC(RAM_reg_512_575_7_13_n_2),
        .DOD(RAM_reg_512_575_7_13_n_3),
        .DOE(RAM_reg_512_575_7_13_n_4),
        .DOF(RAM_reg_512_575_7_13_n_5),
        .DOG(RAM_reg_512_575_7_13_n_6),
        .DOH(NLW_RAM_reg_512_575_7_13_DOH_UNCONNECTED),
        .WCLK(s_axi_aclk),
        .WE(ram_full_fb_i_reg_3));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M8 RAM_reg_576_639_0_6
       (.ADDRA(Q[5:0]),
        .ADDRB(Q[5:0]),
        .ADDRC(Q[5:0]),
        .ADDRD(Q[5:0]),
        .ADDRE(Q[5:0]),
        .ADDRF(Q[5:0]),
        .ADDRG(Q[5:0]),
        .ADDRH(\gcc0.gc0.count_d1_reg[5] ),
        .DIA(1'b0),
        .DIB(1'b0),
        .DIC(1'b0),
        .DID(fg_rxd_wr_length[0]),
        .DIE(fg_rxd_wr_length[1]),
        .DIF(fg_rxd_wr_length[2]),
        .DIG(fg_rxd_wr_length[3]),
        .DIH(1'b0),
        .DOA(RAM_reg_576_639_0_6_n_0),
        .DOB(RAM_reg_576_639_0_6_n_1),
        .DOC(RAM_reg_576_639_0_6_n_2),
        .DOD(RAM_reg_576_639_0_6_n_3),
        .DOE(RAM_reg_576_639_0_6_n_4),
        .DOF(RAM_reg_576_639_0_6_n_5),
        .DOG(RAM_reg_576_639_0_6_n_6),
        .DOH(NLW_RAM_reg_576_639_0_6_DOH_UNCONNECTED),
        .WCLK(s_axi_aclk),
        .WE(\gcc0.gc0.count_d1_reg[8] ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M8 RAM_reg_576_639_14_20
       (.ADDRA(\gc1.count_d2_reg[5]_rep__0 ),
        .ADDRB(\gc1.count_d2_reg[5]_rep__0 ),
        .ADDRC(\gc1.count_d2_reg[5]_rep__0 ),
        .ADDRD(\gc1.count_d2_reg[5]_rep__0 ),
        .ADDRE(\gc1.count_d2_reg[5]_rep__0 ),
        .ADDRF(\gc1.count_d2_reg[5]_rep__0 ),
        .ADDRG(\gc1.count_d2_reg[5]_rep__0 ),
        .ADDRH(\gcc0.gc0.count_d1_reg[5] ),
        .DIA(fg_rxd_wr_length[11]),
        .DIB(fg_rxd_wr_length[12]),
        .DIC(fg_rxd_wr_length[13]),
        .DID(fg_rxd_wr_length[14]),
        .DIE(fg_rxd_wr_length[15]),
        .DIF(fg_rxd_wr_length[16]),
        .DIG(fg_rxd_wr_length[17]),
        .DIH(1'b0),
        .DOA(RAM_reg_576_639_14_20_n_0),
        .DOB(RAM_reg_576_639_14_20_n_1),
        .DOC(RAM_reg_576_639_14_20_n_2),
        .DOD(RAM_reg_576_639_14_20_n_3),
        .DOE(RAM_reg_576_639_14_20_n_4),
        .DOF(RAM_reg_576_639_14_20_n_5),
        .DOG(RAM_reg_576_639_14_20_n_6),
        .DOH(NLW_RAM_reg_576_639_14_20_DOH_UNCONNECTED),
        .WCLK(s_axi_aclk),
        .WE(\gcc0.gc0.count_d1_reg[8] ));
  RAM64X1D RAM_reg_576_639_21_21
       (.A0(\gcc0.gc0.count_d1_reg[5] [0]),
        .A1(\gcc0.gc0.count_d1_reg[5] [1]),
        .A2(\gcc0.gc0.count_d1_reg[5] [2]),
        .A3(\gcc0.gc0.count_d1_reg[5] [3]),
        .A4(\gcc0.gc0.count_d1_reg[5] [4]),
        .A5(\gcc0.gc0.count_d1_reg[5] [5]),
        .D(fg_rxd_wr_length[18]),
        .DPO(RAM_reg_576_639_21_21_n_0),
        .DPRA0(\gc1.count_d2_reg[0]_rep__1 ),
        .DPRA1(\gc1.count_d2_reg[1]_rep__1 ),
        .DPRA2(\gc1.count_d2_reg[2]_rep__1 ),
        .DPRA3(\gc1.count_d2_reg[3]_rep__1 ),
        .DPRA4(\gc1.count_d2_reg[4]_rep__1 ),
        .DPRA5(\gc1.count_d2_reg[5]_rep__1 ),
        .SPO(NLW_RAM_reg_576_639_21_21_SPO_UNCONNECTED),
        .WCLK(s_axi_aclk),
        .WE(\gcc0.gc0.count_d1_reg[8] ));
  RAM64X1D RAM_reg_576_639_22_22
       (.A0(\gcc0.gc0.count_d1_reg[5] [0]),
        .A1(\gcc0.gc0.count_d1_reg[5] [1]),
        .A2(\gcc0.gc0.count_d1_reg[5] [2]),
        .A3(\gcc0.gc0.count_d1_reg[5] [3]),
        .A4(\gcc0.gc0.count_d1_reg[5] [4]),
        .A5(\gcc0.gc0.count_d1_reg[5] [5]),
        .D(fg_rxd_wr_length[19]),
        .DPO(RAM_reg_576_639_22_22_n_0),
        .DPRA0(\gc1.count_d2_reg[0]_rep__1 ),
        .DPRA1(\gc1.count_d2_reg[1]_rep__1 ),
        .DPRA2(\gc1.count_d2_reg[2]_rep__1 ),
        .DPRA3(\gc1.count_d2_reg[3]_rep__1 ),
        .DPRA4(\gc1.count_d2_reg[4]_rep__1 ),
        .DPRA5(\gc1.count_d2_reg[5]_rep__1 ),
        .SPO(NLW_RAM_reg_576_639_22_22_SPO_UNCONNECTED),
        .WCLK(s_axi_aclk),
        .WE(\gcc0.gc0.count_d1_reg[8] ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M8 RAM_reg_576_639_7_13
       (.ADDRA(ADDRG),
        .ADDRB(ADDRG),
        .ADDRC(ADDRG),
        .ADDRD(ADDRG),
        .ADDRE(ADDRG),
        .ADDRF(ADDRG),
        .ADDRG(ADDRG),
        .ADDRH(\gcc0.gc0.count_d1_reg[5] ),
        .DIA(fg_rxd_wr_length[4]),
        .DIB(fg_rxd_wr_length[5]),
        .DIC(fg_rxd_wr_length[6]),
        .DID(fg_rxd_wr_length[7]),
        .DIE(fg_rxd_wr_length[8]),
        .DIF(fg_rxd_wr_length[9]),
        .DIG(fg_rxd_wr_length[10]),
        .DIH(1'b0),
        .DOA(RAM_reg_576_639_7_13_n_0),
        .DOB(RAM_reg_576_639_7_13_n_1),
        .DOC(RAM_reg_576_639_7_13_n_2),
        .DOD(RAM_reg_576_639_7_13_n_3),
        .DOE(RAM_reg_576_639_7_13_n_4),
        .DOF(RAM_reg_576_639_7_13_n_5),
        .DOG(RAM_reg_576_639_7_13_n_6),
        .DOH(NLW_RAM_reg_576_639_7_13_DOH_UNCONNECTED),
        .WCLK(s_axi_aclk),
        .WE(\gcc0.gc0.count_d1_reg[8] ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M8 RAM_reg_640_703_0_6
       (.ADDRA(Q[5:0]),
        .ADDRB(Q[5:0]),
        .ADDRC(Q[5:0]),
        .ADDRD(Q[5:0]),
        .ADDRE(Q[5:0]),
        .ADDRF(Q[5:0]),
        .ADDRG(Q[5:0]),
        .ADDRH(\gcc0.gc0.count_d1_reg[5] ),
        .DIA(1'b0),
        .DIB(1'b0),
        .DIC(1'b0),
        .DID(fg_rxd_wr_length[0]),
        .DIE(fg_rxd_wr_length[1]),
        .DIF(fg_rxd_wr_length[2]),
        .DIG(fg_rxd_wr_length[3]),
        .DIH(1'b0),
        .DOA(RAM_reg_640_703_0_6_n_0),
        .DOB(RAM_reg_640_703_0_6_n_1),
        .DOC(RAM_reg_640_703_0_6_n_2),
        .DOD(RAM_reg_640_703_0_6_n_3),
        .DOE(RAM_reg_640_703_0_6_n_4),
        .DOF(RAM_reg_640_703_0_6_n_5),
        .DOG(RAM_reg_640_703_0_6_n_6),
        .DOH(NLW_RAM_reg_640_703_0_6_DOH_UNCONNECTED),
        .WCLK(s_axi_aclk),
        .WE(\gcc0.gc0.count_d1_reg[8]_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M8 RAM_reg_640_703_14_20
       (.ADDRA(\gc1.count_d2_reg[5]_rep__0 ),
        .ADDRB(\gc1.count_d2_reg[5]_rep__0 ),
        .ADDRC(\gc1.count_d2_reg[5]_rep__0 ),
        .ADDRD(\gc1.count_d2_reg[5]_rep__0 ),
        .ADDRE(\gc1.count_d2_reg[5]_rep__0 ),
        .ADDRF(\gc1.count_d2_reg[5]_rep__0 ),
        .ADDRG(\gc1.count_d2_reg[5]_rep__0 ),
        .ADDRH(\gcc0.gc0.count_d1_reg[5] ),
        .DIA(fg_rxd_wr_length[11]),
        .DIB(fg_rxd_wr_length[12]),
        .DIC(fg_rxd_wr_length[13]),
        .DID(fg_rxd_wr_length[14]),
        .DIE(fg_rxd_wr_length[15]),
        .DIF(fg_rxd_wr_length[16]),
        .DIG(fg_rxd_wr_length[17]),
        .DIH(1'b0),
        .DOA(RAM_reg_640_703_14_20_n_0),
        .DOB(RAM_reg_640_703_14_20_n_1),
        .DOC(RAM_reg_640_703_14_20_n_2),
        .DOD(RAM_reg_640_703_14_20_n_3),
        .DOE(RAM_reg_640_703_14_20_n_4),
        .DOF(RAM_reg_640_703_14_20_n_5),
        .DOG(RAM_reg_640_703_14_20_n_6),
        .DOH(NLW_RAM_reg_640_703_14_20_DOH_UNCONNECTED),
        .WCLK(s_axi_aclk),
        .WE(\gcc0.gc0.count_d1_reg[8]_0 ));
  RAM64X1D RAM_reg_640_703_21_21
       (.A0(\gcc0.gc0.count_d1_reg[5] [0]),
        .A1(\gcc0.gc0.count_d1_reg[5] [1]),
        .A2(\gcc0.gc0.count_d1_reg[5] [2]),
        .A3(\gcc0.gc0.count_d1_reg[5] [3]),
        .A4(\gcc0.gc0.count_d1_reg[5] [4]),
        .A5(\gcc0.gc0.count_d1_reg[5] [5]),
        .D(fg_rxd_wr_length[18]),
        .DPO(RAM_reg_640_703_21_21_n_0),
        .DPRA0(\gc1.count_d2_reg[0]_rep__1 ),
        .DPRA1(\gc1.count_d2_reg[1]_rep__1 ),
        .DPRA2(\gc1.count_d2_reg[2]_rep__1 ),
        .DPRA3(\gc1.count_d2_reg[3]_rep__1 ),
        .DPRA4(\gc1.count_d2_reg[4]_rep__1 ),
        .DPRA5(\gc1.count_d2_reg[5]_rep__1 ),
        .SPO(NLW_RAM_reg_640_703_21_21_SPO_UNCONNECTED),
        .WCLK(s_axi_aclk),
        .WE(\gcc0.gc0.count_d1_reg[8]_0 ));
  RAM64X1D RAM_reg_640_703_22_22
       (.A0(\gcc0.gc0.count_d1_reg[5] [0]),
        .A1(\gcc0.gc0.count_d1_reg[5] [1]),
        .A2(\gcc0.gc0.count_d1_reg[5] [2]),
        .A3(\gcc0.gc0.count_d1_reg[5] [3]),
        .A4(\gcc0.gc0.count_d1_reg[5] [4]),
        .A5(\gcc0.gc0.count_d1_reg[5] [5]),
        .D(fg_rxd_wr_length[19]),
        .DPO(RAM_reg_640_703_22_22_n_0),
        .DPRA0(\gc1.count_d2_reg[0]_rep__1 ),
        .DPRA1(\gc1.count_d2_reg[1]_rep__1 ),
        .DPRA2(\gc1.count_d2_reg[2]_rep__1 ),
        .DPRA3(\gc1.count_d2_reg[3]_rep__1 ),
        .DPRA4(\gc1.count_d2_reg[4]_rep__1 ),
        .DPRA5(\gc1.count_d2_reg[5]_rep__1 ),
        .SPO(NLW_RAM_reg_640_703_22_22_SPO_UNCONNECTED),
        .WCLK(s_axi_aclk),
        .WE(\gcc0.gc0.count_d1_reg[8]_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M8 RAM_reg_640_703_7_13
       (.ADDRA(ADDRG),
        .ADDRB(ADDRG),
        .ADDRC(ADDRG),
        .ADDRD(ADDRG),
        .ADDRE(ADDRG),
        .ADDRF(ADDRG),
        .ADDRG(ADDRG),
        .ADDRH(\gcc0.gc0.count_d1_reg[5] ),
        .DIA(fg_rxd_wr_length[4]),
        .DIB(fg_rxd_wr_length[5]),
        .DIC(fg_rxd_wr_length[6]),
        .DID(fg_rxd_wr_length[7]),
        .DIE(fg_rxd_wr_length[8]),
        .DIF(fg_rxd_wr_length[9]),
        .DIG(fg_rxd_wr_length[10]),
        .DIH(1'b0),
        .DOA(RAM_reg_640_703_7_13_n_0),
        .DOB(RAM_reg_640_703_7_13_n_1),
        .DOC(RAM_reg_640_703_7_13_n_2),
        .DOD(RAM_reg_640_703_7_13_n_3),
        .DOE(RAM_reg_640_703_7_13_n_4),
        .DOF(RAM_reg_640_703_7_13_n_5),
        .DOG(RAM_reg_640_703_7_13_n_6),
        .DOH(NLW_RAM_reg_640_703_7_13_DOH_UNCONNECTED),
        .WCLK(s_axi_aclk),
        .WE(\gcc0.gc0.count_d1_reg[8]_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M8 RAM_reg_64_127_0_6
       (.ADDRA(Q[5:0]),
        .ADDRB(Q[5:0]),
        .ADDRC(Q[5:0]),
        .ADDRD(Q[5:0]),
        .ADDRE(Q[5:0]),
        .ADDRF(Q[5:0]),
        .ADDRG(Q[5:0]),
        .ADDRH(\gcc0.gc0.count_d1_reg[5] ),
        .DIA(1'b0),
        .DIB(1'b0),
        .DIC(1'b0),
        .DID(fg_rxd_wr_length[0]),
        .DIE(fg_rxd_wr_length[1]),
        .DIF(fg_rxd_wr_length[2]),
        .DIG(fg_rxd_wr_length[3]),
        .DIH(1'b0),
        .DOA(RAM_reg_64_127_0_6_n_0),
        .DOB(RAM_reg_64_127_0_6_n_1),
        .DOC(RAM_reg_64_127_0_6_n_2),
        .DOD(RAM_reg_64_127_0_6_n_3),
        .DOE(RAM_reg_64_127_0_6_n_4),
        .DOF(RAM_reg_64_127_0_6_n_5),
        .DOG(RAM_reg_64_127_0_6_n_6),
        .DOH(NLW_RAM_reg_64_127_0_6_DOH_UNCONNECTED),
        .WCLK(s_axi_aclk),
        .WE(ram_full_fb_i_reg_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M8 RAM_reg_64_127_14_20
       (.ADDRA(\gc1.count_d2_reg[5]_rep__0 ),
        .ADDRB(\gc1.count_d2_reg[5]_rep__0 ),
        .ADDRC(\gc1.count_d2_reg[5]_rep__0 ),
        .ADDRD(\gc1.count_d2_reg[5]_rep__0 ),
        .ADDRE(\gc1.count_d2_reg[5]_rep__0 ),
        .ADDRF(\gc1.count_d2_reg[5]_rep__0 ),
        .ADDRG(\gc1.count_d2_reg[5]_rep__0 ),
        .ADDRH(\gcc0.gc0.count_d1_reg[5] ),
        .DIA(fg_rxd_wr_length[11]),
        .DIB(fg_rxd_wr_length[12]),
        .DIC(fg_rxd_wr_length[13]),
        .DID(fg_rxd_wr_length[14]),
        .DIE(fg_rxd_wr_length[15]),
        .DIF(fg_rxd_wr_length[16]),
        .DIG(fg_rxd_wr_length[17]),
        .DIH(1'b0),
        .DOA(RAM_reg_64_127_14_20_n_0),
        .DOB(RAM_reg_64_127_14_20_n_1),
        .DOC(RAM_reg_64_127_14_20_n_2),
        .DOD(RAM_reg_64_127_14_20_n_3),
        .DOE(RAM_reg_64_127_14_20_n_4),
        .DOF(RAM_reg_64_127_14_20_n_5),
        .DOG(RAM_reg_64_127_14_20_n_6),
        .DOH(NLW_RAM_reg_64_127_14_20_DOH_UNCONNECTED),
        .WCLK(s_axi_aclk),
        .WE(ram_full_fb_i_reg_0));
  RAM64X1D RAM_reg_64_127_21_21
       (.A0(\gcc0.gc0.count_d1_reg[5] [0]),
        .A1(\gcc0.gc0.count_d1_reg[5] [1]),
        .A2(\gcc0.gc0.count_d1_reg[5] [2]),
        .A3(\gcc0.gc0.count_d1_reg[5] [3]),
        .A4(\gcc0.gc0.count_d1_reg[5] [4]),
        .A5(\gcc0.gc0.count_d1_reg[5] [5]),
        .D(fg_rxd_wr_length[18]),
        .DPO(RAM_reg_64_127_21_21_n_0),
        .DPRA0(\gc1.count_d2_reg[0]_rep__1 ),
        .DPRA1(\gc1.count_d2_reg[1]_rep__1 ),
        .DPRA2(\gc1.count_d2_reg[2]_rep__1 ),
        .DPRA3(\gc1.count_d2_reg[3]_rep__1 ),
        .DPRA4(\gc1.count_d2_reg[4]_rep__1 ),
        .DPRA5(\gc1.count_d2_reg[5]_rep__1 ),
        .SPO(NLW_RAM_reg_64_127_21_21_SPO_UNCONNECTED),
        .WCLK(s_axi_aclk),
        .WE(ram_full_fb_i_reg_0));
  RAM64X1D RAM_reg_64_127_22_22
       (.A0(\gcc0.gc0.count_d1_reg[5] [0]),
        .A1(\gcc0.gc0.count_d1_reg[5] [1]),
        .A2(\gcc0.gc0.count_d1_reg[5] [2]),
        .A3(\gcc0.gc0.count_d1_reg[5] [3]),
        .A4(\gcc0.gc0.count_d1_reg[5] [4]),
        .A5(\gcc0.gc0.count_d1_reg[5] [5]),
        .D(fg_rxd_wr_length[19]),
        .DPO(RAM_reg_64_127_22_22_n_0),
        .DPRA0(\gc1.count_d2_reg[0]_rep__1 ),
        .DPRA1(\gc1.count_d2_reg[1]_rep__1 ),
        .DPRA2(\gc1.count_d2_reg[2]_rep__1 ),
        .DPRA3(\gc1.count_d2_reg[3]_rep__1 ),
        .DPRA4(\gc1.count_d2_reg[4]_rep__1 ),
        .DPRA5(\gc1.count_d2_reg[5]_rep__1 ),
        .SPO(NLW_RAM_reg_64_127_22_22_SPO_UNCONNECTED),
        .WCLK(s_axi_aclk),
        .WE(ram_full_fb_i_reg_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M8 RAM_reg_64_127_7_13
       (.ADDRA(ADDRG),
        .ADDRB(ADDRG),
        .ADDRC(ADDRG),
        .ADDRD(ADDRG),
        .ADDRE(ADDRG),
        .ADDRF(ADDRG),
        .ADDRG(ADDRG),
        .ADDRH(\gcc0.gc0.count_d1_reg[5] ),
        .DIA(fg_rxd_wr_length[4]),
        .DIB(fg_rxd_wr_length[5]),
        .DIC(fg_rxd_wr_length[6]),
        .DID(fg_rxd_wr_length[7]),
        .DIE(fg_rxd_wr_length[8]),
        .DIF(fg_rxd_wr_length[9]),
        .DIG(fg_rxd_wr_length[10]),
        .DIH(1'b0),
        .DOA(RAM_reg_64_127_7_13_n_0),
        .DOB(RAM_reg_64_127_7_13_n_1),
        .DOC(RAM_reg_64_127_7_13_n_2),
        .DOD(RAM_reg_64_127_7_13_n_3),
        .DOE(RAM_reg_64_127_7_13_n_4),
        .DOF(RAM_reg_64_127_7_13_n_5),
        .DOG(RAM_reg_64_127_7_13_n_6),
        .DOH(NLW_RAM_reg_64_127_7_13_DOH_UNCONNECTED),
        .WCLK(s_axi_aclk),
        .WE(ram_full_fb_i_reg_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M8 RAM_reg_704_767_0_6
       (.ADDRA(Q[5:0]),
        .ADDRB(Q[5:0]),
        .ADDRC(Q[5:0]),
        .ADDRD(Q[5:0]),
        .ADDRE(Q[5:0]),
        .ADDRF(Q[5:0]),
        .ADDRG(Q[5:0]),
        .ADDRH(\gcc0.gc0.count_d1_reg[5] ),
        .DIA(1'b0),
        .DIB(1'b0),
        .DIC(1'b0),
        .DID(fg_rxd_wr_length[0]),
        .DIE(fg_rxd_wr_length[1]),
        .DIF(fg_rxd_wr_length[2]),
        .DIG(fg_rxd_wr_length[3]),
        .DIH(1'b0),
        .DOA(RAM_reg_704_767_0_6_n_0),
        .DOB(RAM_reg_704_767_0_6_n_1),
        .DOC(RAM_reg_704_767_0_6_n_2),
        .DOD(RAM_reg_704_767_0_6_n_3),
        .DOE(RAM_reg_704_767_0_6_n_4),
        .DOF(RAM_reg_704_767_0_6_n_5),
        .DOG(RAM_reg_704_767_0_6_n_6),
        .DOH(NLW_RAM_reg_704_767_0_6_DOH_UNCONNECTED),
        .WCLK(s_axi_aclk),
        .WE(\gcc0.gc0.count_d1_reg[8]_1 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M8 RAM_reg_704_767_14_20
       (.ADDRA(\gc1.count_d2_reg[5]_rep__0 ),
        .ADDRB(\gc1.count_d2_reg[5]_rep__0 ),
        .ADDRC(\gc1.count_d2_reg[5]_rep__0 ),
        .ADDRD(\gc1.count_d2_reg[5]_rep__0 ),
        .ADDRE(\gc1.count_d2_reg[5]_rep__0 ),
        .ADDRF(\gc1.count_d2_reg[5]_rep__0 ),
        .ADDRG(\gc1.count_d2_reg[5]_rep__0 ),
        .ADDRH(\gcc0.gc0.count_d1_reg[5] ),
        .DIA(fg_rxd_wr_length[11]),
        .DIB(fg_rxd_wr_length[12]),
        .DIC(fg_rxd_wr_length[13]),
        .DID(fg_rxd_wr_length[14]),
        .DIE(fg_rxd_wr_length[15]),
        .DIF(fg_rxd_wr_length[16]),
        .DIG(fg_rxd_wr_length[17]),
        .DIH(1'b0),
        .DOA(RAM_reg_704_767_14_20_n_0),
        .DOB(RAM_reg_704_767_14_20_n_1),
        .DOC(RAM_reg_704_767_14_20_n_2),
        .DOD(RAM_reg_704_767_14_20_n_3),
        .DOE(RAM_reg_704_767_14_20_n_4),
        .DOF(RAM_reg_704_767_14_20_n_5),
        .DOG(RAM_reg_704_767_14_20_n_6),
        .DOH(NLW_RAM_reg_704_767_14_20_DOH_UNCONNECTED),
        .WCLK(s_axi_aclk),
        .WE(\gcc0.gc0.count_d1_reg[8]_1 ));
  RAM64X1D RAM_reg_704_767_21_21
       (.A0(\gcc0.gc0.count_d1_reg[5] [0]),
        .A1(\gcc0.gc0.count_d1_reg[5] [1]),
        .A2(\gcc0.gc0.count_d1_reg[5] [2]),
        .A3(\gcc0.gc0.count_d1_reg[5] [3]),
        .A4(\gcc0.gc0.count_d1_reg[5] [4]),
        .A5(\gcc0.gc0.count_d1_reg[5] [5]),
        .D(fg_rxd_wr_length[18]),
        .DPO(RAM_reg_704_767_21_21_n_0),
        .DPRA0(\gc1.count_d2_reg[0]_rep__1 ),
        .DPRA1(\gc1.count_d2_reg[1]_rep__1 ),
        .DPRA2(\gc1.count_d2_reg[2]_rep__1 ),
        .DPRA3(\gc1.count_d2_reg[3]_rep__1 ),
        .DPRA4(\gc1.count_d2_reg[4]_rep__1 ),
        .DPRA5(\gc1.count_d2_reg[5]_rep__1 ),
        .SPO(NLW_RAM_reg_704_767_21_21_SPO_UNCONNECTED),
        .WCLK(s_axi_aclk),
        .WE(\gcc0.gc0.count_d1_reg[8]_1 ));
  RAM64X1D RAM_reg_704_767_22_22
       (.A0(\gcc0.gc0.count_d1_reg[5] [0]),
        .A1(\gcc0.gc0.count_d1_reg[5] [1]),
        .A2(\gcc0.gc0.count_d1_reg[5] [2]),
        .A3(\gcc0.gc0.count_d1_reg[5] [3]),
        .A4(\gcc0.gc0.count_d1_reg[5] [4]),
        .A5(\gcc0.gc0.count_d1_reg[5] [5]),
        .D(fg_rxd_wr_length[19]),
        .DPO(RAM_reg_704_767_22_22_n_0),
        .DPRA0(\gc1.count_d2_reg[0]_rep__1 ),
        .DPRA1(\gc1.count_d2_reg[1]_rep__1 ),
        .DPRA2(\gc1.count_d2_reg[2]_rep__1 ),
        .DPRA3(\gc1.count_d2_reg[3]_rep__1 ),
        .DPRA4(\gc1.count_d2_reg[4]_rep__1 ),
        .DPRA5(\gc1.count_d2_reg[5]_rep__1 ),
        .SPO(NLW_RAM_reg_704_767_22_22_SPO_UNCONNECTED),
        .WCLK(s_axi_aclk),
        .WE(\gcc0.gc0.count_d1_reg[8]_1 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M8 RAM_reg_704_767_7_13
       (.ADDRA(ADDRG),
        .ADDRB(ADDRG),
        .ADDRC(ADDRG),
        .ADDRD(ADDRG),
        .ADDRE(ADDRG),
        .ADDRF(ADDRG),
        .ADDRG(ADDRG),
        .ADDRH(\gcc0.gc0.count_d1_reg[5] ),
        .DIA(fg_rxd_wr_length[4]),
        .DIB(fg_rxd_wr_length[5]),
        .DIC(fg_rxd_wr_length[6]),
        .DID(fg_rxd_wr_length[7]),
        .DIE(fg_rxd_wr_length[8]),
        .DIF(fg_rxd_wr_length[9]),
        .DIG(fg_rxd_wr_length[10]),
        .DIH(1'b0),
        .DOA(RAM_reg_704_767_7_13_n_0),
        .DOB(RAM_reg_704_767_7_13_n_1),
        .DOC(RAM_reg_704_767_7_13_n_2),
        .DOD(RAM_reg_704_767_7_13_n_3),
        .DOE(RAM_reg_704_767_7_13_n_4),
        .DOF(RAM_reg_704_767_7_13_n_5),
        .DOG(RAM_reg_704_767_7_13_n_6),
        .DOH(NLW_RAM_reg_704_767_7_13_DOH_UNCONNECTED),
        .WCLK(s_axi_aclk),
        .WE(\gcc0.gc0.count_d1_reg[8]_1 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M8 RAM_reg_768_831_0_6
       (.ADDRA(Q[5:0]),
        .ADDRB(Q[5:0]),
        .ADDRC(Q[5:0]),
        .ADDRD(Q[5:0]),
        .ADDRE(Q[5:0]),
        .ADDRF(Q[5:0]),
        .ADDRG(Q[5:0]),
        .ADDRH(\gcc0.gc0.count_d1_reg[5] ),
        .DIA(1'b0),
        .DIB(1'b0),
        .DIC(1'b0),
        .DID(fg_rxd_wr_length[0]),
        .DIE(fg_rxd_wr_length[1]),
        .DIF(fg_rxd_wr_length[2]),
        .DIG(fg_rxd_wr_length[3]),
        .DIH(1'b0),
        .DOA(RAM_reg_768_831_0_6_n_0),
        .DOB(RAM_reg_768_831_0_6_n_1),
        .DOC(RAM_reg_768_831_0_6_n_2),
        .DOD(RAM_reg_768_831_0_6_n_3),
        .DOE(RAM_reg_768_831_0_6_n_4),
        .DOF(RAM_reg_768_831_0_6_n_5),
        .DOG(RAM_reg_768_831_0_6_n_6),
        .DOH(NLW_RAM_reg_768_831_0_6_DOH_UNCONNECTED),
        .WCLK(s_axi_aclk),
        .WE(\gcc0.gc0.count_d1_reg[7] ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M8 RAM_reg_768_831_14_20
       (.ADDRA(\gc1.count_d2_reg[5]_rep__0 ),
        .ADDRB(\gc1.count_d2_reg[5]_rep__0 ),
        .ADDRC(\gc1.count_d2_reg[5]_rep__0 ),
        .ADDRD(\gc1.count_d2_reg[5]_rep__0 ),
        .ADDRE(\gc1.count_d2_reg[5]_rep__0 ),
        .ADDRF(\gc1.count_d2_reg[5]_rep__0 ),
        .ADDRG(\gc1.count_d2_reg[5]_rep__0 ),
        .ADDRH(\gcc0.gc0.count_d1_reg[5] ),
        .DIA(fg_rxd_wr_length[11]),
        .DIB(fg_rxd_wr_length[12]),
        .DIC(fg_rxd_wr_length[13]),
        .DID(fg_rxd_wr_length[14]),
        .DIE(fg_rxd_wr_length[15]),
        .DIF(fg_rxd_wr_length[16]),
        .DIG(fg_rxd_wr_length[17]),
        .DIH(1'b0),
        .DOA(RAM_reg_768_831_14_20_n_0),
        .DOB(RAM_reg_768_831_14_20_n_1),
        .DOC(RAM_reg_768_831_14_20_n_2),
        .DOD(RAM_reg_768_831_14_20_n_3),
        .DOE(RAM_reg_768_831_14_20_n_4),
        .DOF(RAM_reg_768_831_14_20_n_5),
        .DOG(RAM_reg_768_831_14_20_n_6),
        .DOH(NLW_RAM_reg_768_831_14_20_DOH_UNCONNECTED),
        .WCLK(s_axi_aclk),
        .WE(\gcc0.gc0.count_d1_reg[7] ));
  RAM64X1D RAM_reg_768_831_21_21
       (.A0(\gcc0.gc0.count_d1_reg[5] [0]),
        .A1(\gcc0.gc0.count_d1_reg[5] [1]),
        .A2(\gcc0.gc0.count_d1_reg[5] [2]),
        .A3(\gcc0.gc0.count_d1_reg[5] [3]),
        .A4(\gcc0.gc0.count_d1_reg[5] [4]),
        .A5(\gcc0.gc0.count_d1_reg[5] [5]),
        .D(fg_rxd_wr_length[18]),
        .DPO(RAM_reg_768_831_21_21_n_0),
        .DPRA0(\gc1.count_d2_reg[0]_rep__1 ),
        .DPRA1(\gc1.count_d2_reg[1]_rep__1 ),
        .DPRA2(\gc1.count_d2_reg[2]_rep__1 ),
        .DPRA3(\gc1.count_d2_reg[3]_rep__1 ),
        .DPRA4(\gc1.count_d2_reg[4]_rep__1 ),
        .DPRA5(\gc1.count_d2_reg[5]_rep__1 ),
        .SPO(NLW_RAM_reg_768_831_21_21_SPO_UNCONNECTED),
        .WCLK(s_axi_aclk),
        .WE(\gcc0.gc0.count_d1_reg[7] ));
  RAM64X1D RAM_reg_768_831_22_22
       (.A0(\gcc0.gc0.count_d1_reg[5] [0]),
        .A1(\gcc0.gc0.count_d1_reg[5] [1]),
        .A2(\gcc0.gc0.count_d1_reg[5] [2]),
        .A3(\gcc0.gc0.count_d1_reg[5] [3]),
        .A4(\gcc0.gc0.count_d1_reg[5] [4]),
        .A5(\gcc0.gc0.count_d1_reg[5] [5]),
        .D(fg_rxd_wr_length[19]),
        .DPO(RAM_reg_768_831_22_22_n_0),
        .DPRA0(\gc1.count_d2_reg[0]_rep__1 ),
        .DPRA1(\gc1.count_d2_reg[1]_rep__1 ),
        .DPRA2(\gc1.count_d2_reg[2]_rep__1 ),
        .DPRA3(\gc1.count_d2_reg[3]_rep__1 ),
        .DPRA4(\gc1.count_d2_reg[4]_rep__1 ),
        .DPRA5(\gc1.count_d2_reg[5]_rep__1 ),
        .SPO(NLW_RAM_reg_768_831_22_22_SPO_UNCONNECTED),
        .WCLK(s_axi_aclk),
        .WE(\gcc0.gc0.count_d1_reg[7] ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M8 RAM_reg_768_831_7_13
       (.ADDRA(ADDRG),
        .ADDRB(ADDRG),
        .ADDRC(ADDRG),
        .ADDRD(ADDRG),
        .ADDRE(ADDRG),
        .ADDRF(ADDRG),
        .ADDRG(ADDRG),
        .ADDRH(\gcc0.gc0.count_d1_reg[5] ),
        .DIA(fg_rxd_wr_length[4]),
        .DIB(fg_rxd_wr_length[5]),
        .DIC(fg_rxd_wr_length[6]),
        .DID(fg_rxd_wr_length[7]),
        .DIE(fg_rxd_wr_length[8]),
        .DIF(fg_rxd_wr_length[9]),
        .DIG(fg_rxd_wr_length[10]),
        .DIH(1'b0),
        .DOA(RAM_reg_768_831_7_13_n_0),
        .DOB(RAM_reg_768_831_7_13_n_1),
        .DOC(RAM_reg_768_831_7_13_n_2),
        .DOD(RAM_reg_768_831_7_13_n_3),
        .DOE(RAM_reg_768_831_7_13_n_4),
        .DOF(RAM_reg_768_831_7_13_n_5),
        .DOG(RAM_reg_768_831_7_13_n_6),
        .DOH(NLW_RAM_reg_768_831_7_13_DOH_UNCONNECTED),
        .WCLK(s_axi_aclk),
        .WE(\gcc0.gc0.count_d1_reg[7] ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M8 RAM_reg_832_895_0_6
       (.ADDRA(Q[5:0]),
        .ADDRB(Q[5:0]),
        .ADDRC(Q[5:0]),
        .ADDRD(Q[5:0]),
        .ADDRE(Q[5:0]),
        .ADDRF(Q[5:0]),
        .ADDRG(Q[5:0]),
        .ADDRH(\gcc0.gc0.count_d1_reg[5] ),
        .DIA(1'b0),
        .DIB(1'b0),
        .DIC(1'b0),
        .DID(fg_rxd_wr_length[0]),
        .DIE(fg_rxd_wr_length[1]),
        .DIF(fg_rxd_wr_length[2]),
        .DIG(fg_rxd_wr_length[3]),
        .DIH(1'b0),
        .DOA(RAM_reg_832_895_0_6_n_0),
        .DOB(RAM_reg_832_895_0_6_n_1),
        .DOC(RAM_reg_832_895_0_6_n_2),
        .DOD(RAM_reg_832_895_0_6_n_3),
        .DOE(RAM_reg_832_895_0_6_n_4),
        .DOF(RAM_reg_832_895_0_6_n_5),
        .DOG(RAM_reg_832_895_0_6_n_6),
        .DOH(NLW_RAM_reg_832_895_0_6_DOH_UNCONNECTED),
        .WCLK(s_axi_aclk),
        .WE(\gcc0.gc0.count_d1_reg[7]_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M8 RAM_reg_832_895_14_20
       (.ADDRA(\gc1.count_d2_reg[5]_rep__0 ),
        .ADDRB(\gc1.count_d2_reg[5]_rep__0 ),
        .ADDRC(\gc1.count_d2_reg[5]_rep__0 ),
        .ADDRD(\gc1.count_d2_reg[5]_rep__0 ),
        .ADDRE(\gc1.count_d2_reg[5]_rep__0 ),
        .ADDRF(\gc1.count_d2_reg[5]_rep__0 ),
        .ADDRG(\gc1.count_d2_reg[5]_rep__0 ),
        .ADDRH(\gcc0.gc0.count_d1_reg[5] ),
        .DIA(fg_rxd_wr_length[11]),
        .DIB(fg_rxd_wr_length[12]),
        .DIC(fg_rxd_wr_length[13]),
        .DID(fg_rxd_wr_length[14]),
        .DIE(fg_rxd_wr_length[15]),
        .DIF(fg_rxd_wr_length[16]),
        .DIG(fg_rxd_wr_length[17]),
        .DIH(1'b0),
        .DOA(RAM_reg_832_895_14_20_n_0),
        .DOB(RAM_reg_832_895_14_20_n_1),
        .DOC(RAM_reg_832_895_14_20_n_2),
        .DOD(RAM_reg_832_895_14_20_n_3),
        .DOE(RAM_reg_832_895_14_20_n_4),
        .DOF(RAM_reg_832_895_14_20_n_5),
        .DOG(RAM_reg_832_895_14_20_n_6),
        .DOH(NLW_RAM_reg_832_895_14_20_DOH_UNCONNECTED),
        .WCLK(s_axi_aclk),
        .WE(\gcc0.gc0.count_d1_reg[7]_0 ));
  RAM64X1D RAM_reg_832_895_21_21
       (.A0(\gcc0.gc0.count_d1_reg[5] [0]),
        .A1(\gcc0.gc0.count_d1_reg[5] [1]),
        .A2(\gcc0.gc0.count_d1_reg[5] [2]),
        .A3(\gcc0.gc0.count_d1_reg[5] [3]),
        .A4(\gcc0.gc0.count_d1_reg[5] [4]),
        .A5(\gcc0.gc0.count_d1_reg[5] [5]),
        .D(fg_rxd_wr_length[18]),
        .DPO(RAM_reg_832_895_21_21_n_0),
        .DPRA0(\gc1.count_d2_reg[0]_rep__1 ),
        .DPRA1(\gc1.count_d2_reg[1]_rep__1 ),
        .DPRA2(\gc1.count_d2_reg[2]_rep__1 ),
        .DPRA3(\gc1.count_d2_reg[3]_rep__1 ),
        .DPRA4(\gc1.count_d2_reg[4]_rep__1 ),
        .DPRA5(\gc1.count_d2_reg[5]_rep__1 ),
        .SPO(NLW_RAM_reg_832_895_21_21_SPO_UNCONNECTED),
        .WCLK(s_axi_aclk),
        .WE(\gcc0.gc0.count_d1_reg[7]_0 ));
  RAM64X1D RAM_reg_832_895_22_22
       (.A0(\gcc0.gc0.count_d1_reg[5] [0]),
        .A1(\gcc0.gc0.count_d1_reg[5] [1]),
        .A2(\gcc0.gc0.count_d1_reg[5] [2]),
        .A3(\gcc0.gc0.count_d1_reg[5] [3]),
        .A4(\gcc0.gc0.count_d1_reg[5] [4]),
        .A5(\gcc0.gc0.count_d1_reg[5] [5]),
        .D(fg_rxd_wr_length[19]),
        .DPO(RAM_reg_832_895_22_22_n_0),
        .DPRA0(\gc1.count_d2_reg[0]_rep__1 ),
        .DPRA1(\gc1.count_d2_reg[1]_rep__1 ),
        .DPRA2(\gc1.count_d2_reg[2]_rep__1 ),
        .DPRA3(\gc1.count_d2_reg[3]_rep__1 ),
        .DPRA4(\gc1.count_d2_reg[4]_rep__1 ),
        .DPRA5(\gc1.count_d2_reg[5]_rep__1 ),
        .SPO(NLW_RAM_reg_832_895_22_22_SPO_UNCONNECTED),
        .WCLK(s_axi_aclk),
        .WE(\gcc0.gc0.count_d1_reg[7]_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M8 RAM_reg_832_895_7_13
       (.ADDRA(ADDRG),
        .ADDRB(ADDRG),
        .ADDRC(ADDRG),
        .ADDRD(ADDRG),
        .ADDRE(ADDRG),
        .ADDRF(ADDRG),
        .ADDRG(ADDRG),
        .ADDRH(\gcc0.gc0.count_d1_reg[5] ),
        .DIA(fg_rxd_wr_length[4]),
        .DIB(fg_rxd_wr_length[5]),
        .DIC(fg_rxd_wr_length[6]),
        .DID(fg_rxd_wr_length[7]),
        .DIE(fg_rxd_wr_length[8]),
        .DIF(fg_rxd_wr_length[9]),
        .DIG(fg_rxd_wr_length[10]),
        .DIH(1'b0),
        .DOA(RAM_reg_832_895_7_13_n_0),
        .DOB(RAM_reg_832_895_7_13_n_1),
        .DOC(RAM_reg_832_895_7_13_n_2),
        .DOD(RAM_reg_832_895_7_13_n_3),
        .DOE(RAM_reg_832_895_7_13_n_4),
        .DOF(RAM_reg_832_895_7_13_n_5),
        .DOG(RAM_reg_832_895_7_13_n_6),
        .DOH(NLW_RAM_reg_832_895_7_13_DOH_UNCONNECTED),
        .WCLK(s_axi_aclk),
        .WE(\gcc0.gc0.count_d1_reg[7]_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M8 RAM_reg_896_959_0_6
       (.ADDRA(Q[5:0]),
        .ADDRB(Q[5:0]),
        .ADDRC(Q[5:0]),
        .ADDRD(Q[5:0]),
        .ADDRE(Q[5:0]),
        .ADDRF(Q[5:0]),
        .ADDRG(Q[5:0]),
        .ADDRH(\gcc0.gc0.count_d1_reg[5] ),
        .DIA(1'b0),
        .DIB(1'b0),
        .DIC(1'b0),
        .DID(fg_rxd_wr_length[0]),
        .DIE(fg_rxd_wr_length[1]),
        .DIF(fg_rxd_wr_length[2]),
        .DIG(fg_rxd_wr_length[3]),
        .DIH(1'b0),
        .DOA(RAM_reg_896_959_0_6_n_0),
        .DOB(RAM_reg_896_959_0_6_n_1),
        .DOC(RAM_reg_896_959_0_6_n_2),
        .DOD(RAM_reg_896_959_0_6_n_3),
        .DOE(RAM_reg_896_959_0_6_n_4),
        .DOF(RAM_reg_896_959_0_6_n_5),
        .DOG(RAM_reg_896_959_0_6_n_6),
        .DOH(NLW_RAM_reg_896_959_0_6_DOH_UNCONNECTED),
        .WCLK(s_axi_aclk),
        .WE(\gcc0.gc0.count_d1_reg[6] ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M8 RAM_reg_896_959_14_20
       (.ADDRA(\gc1.count_d2_reg[5]_rep__0 ),
        .ADDRB(\gc1.count_d2_reg[5]_rep__0 ),
        .ADDRC(\gc1.count_d2_reg[5]_rep__0 ),
        .ADDRD(\gc1.count_d2_reg[5]_rep__0 ),
        .ADDRE(\gc1.count_d2_reg[5]_rep__0 ),
        .ADDRF(\gc1.count_d2_reg[5]_rep__0 ),
        .ADDRG(\gc1.count_d2_reg[5]_rep__0 ),
        .ADDRH(\gcc0.gc0.count_d1_reg[5] ),
        .DIA(fg_rxd_wr_length[11]),
        .DIB(fg_rxd_wr_length[12]),
        .DIC(fg_rxd_wr_length[13]),
        .DID(fg_rxd_wr_length[14]),
        .DIE(fg_rxd_wr_length[15]),
        .DIF(fg_rxd_wr_length[16]),
        .DIG(fg_rxd_wr_length[17]),
        .DIH(1'b0),
        .DOA(RAM_reg_896_959_14_20_n_0),
        .DOB(RAM_reg_896_959_14_20_n_1),
        .DOC(RAM_reg_896_959_14_20_n_2),
        .DOD(RAM_reg_896_959_14_20_n_3),
        .DOE(RAM_reg_896_959_14_20_n_4),
        .DOF(RAM_reg_896_959_14_20_n_5),
        .DOG(RAM_reg_896_959_14_20_n_6),
        .DOH(NLW_RAM_reg_896_959_14_20_DOH_UNCONNECTED),
        .WCLK(s_axi_aclk),
        .WE(\gcc0.gc0.count_d1_reg[6] ));
  RAM64X1D RAM_reg_896_959_21_21
       (.A0(\gcc0.gc0.count_d1_reg[5] [0]),
        .A1(\gcc0.gc0.count_d1_reg[5] [1]),
        .A2(\gcc0.gc0.count_d1_reg[5] [2]),
        .A3(\gcc0.gc0.count_d1_reg[5] [3]),
        .A4(\gcc0.gc0.count_d1_reg[5] [4]),
        .A5(\gcc0.gc0.count_d1_reg[5] [5]),
        .D(fg_rxd_wr_length[18]),
        .DPO(RAM_reg_896_959_21_21_n_0),
        .DPRA0(\gc1.count_d2_reg[0]_rep__1 ),
        .DPRA1(\gc1.count_d2_reg[1]_rep__1 ),
        .DPRA2(\gc1.count_d2_reg[2]_rep__1 ),
        .DPRA3(\gc1.count_d2_reg[3]_rep__1 ),
        .DPRA4(\gc1.count_d2_reg[4]_rep__1 ),
        .DPRA5(\gc1.count_d2_reg[5]_rep__1 ),
        .SPO(NLW_RAM_reg_896_959_21_21_SPO_UNCONNECTED),
        .WCLK(s_axi_aclk),
        .WE(\gcc0.gc0.count_d1_reg[6] ));
  RAM64X1D RAM_reg_896_959_22_22
       (.A0(\gcc0.gc0.count_d1_reg[5] [0]),
        .A1(\gcc0.gc0.count_d1_reg[5] [1]),
        .A2(\gcc0.gc0.count_d1_reg[5] [2]),
        .A3(\gcc0.gc0.count_d1_reg[5] [3]),
        .A4(\gcc0.gc0.count_d1_reg[5] [4]),
        .A5(\gcc0.gc0.count_d1_reg[5] [5]),
        .D(fg_rxd_wr_length[19]),
        .DPO(RAM_reg_896_959_22_22_n_0),
        .DPRA0(\gc1.count_d2_reg[0]_rep__1 ),
        .DPRA1(\gc1.count_d2_reg[1]_rep__1 ),
        .DPRA2(\gc1.count_d2_reg[2]_rep__1 ),
        .DPRA3(\gc1.count_d2_reg[3]_rep__1 ),
        .DPRA4(\gc1.count_d2_reg[4]_rep__1 ),
        .DPRA5(\gc1.count_d2_reg[5]_rep__1 ),
        .SPO(NLW_RAM_reg_896_959_22_22_SPO_UNCONNECTED),
        .WCLK(s_axi_aclk),
        .WE(\gcc0.gc0.count_d1_reg[6] ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M8 RAM_reg_896_959_7_13
       (.ADDRA(ADDRG),
        .ADDRB(ADDRG),
        .ADDRC(ADDRG),
        .ADDRD(ADDRG),
        .ADDRE(ADDRG),
        .ADDRF(ADDRG),
        .ADDRG(ADDRG),
        .ADDRH(\gcc0.gc0.count_d1_reg[5] ),
        .DIA(fg_rxd_wr_length[4]),
        .DIB(fg_rxd_wr_length[5]),
        .DIC(fg_rxd_wr_length[6]),
        .DID(fg_rxd_wr_length[7]),
        .DIE(fg_rxd_wr_length[8]),
        .DIF(fg_rxd_wr_length[9]),
        .DIG(fg_rxd_wr_length[10]),
        .DIH(1'b0),
        .DOA(RAM_reg_896_959_7_13_n_0),
        .DOB(RAM_reg_896_959_7_13_n_1),
        .DOC(RAM_reg_896_959_7_13_n_2),
        .DOD(RAM_reg_896_959_7_13_n_3),
        .DOE(RAM_reg_896_959_7_13_n_4),
        .DOF(RAM_reg_896_959_7_13_n_5),
        .DOG(RAM_reg_896_959_7_13_n_6),
        .DOH(NLW_RAM_reg_896_959_7_13_DOH_UNCONNECTED),
        .WCLK(s_axi_aclk),
        .WE(\gcc0.gc0.count_d1_reg[6] ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M8 RAM_reg_960_1023_0_6
       (.ADDRA(Q[5:0]),
        .ADDRB(Q[5:0]),
        .ADDRC(Q[5:0]),
        .ADDRD(Q[5:0]),
        .ADDRE(Q[5:0]),
        .ADDRF(Q[5:0]),
        .ADDRG(Q[5:0]),
        .ADDRH(\gcc0.gc0.count_d1_reg[5] ),
        .DIA(1'b0),
        .DIB(1'b0),
        .DIC(1'b0),
        .DID(fg_rxd_wr_length[0]),
        .DIE(fg_rxd_wr_length[1]),
        .DIF(fg_rxd_wr_length[2]),
        .DIG(fg_rxd_wr_length[3]),
        .DIH(1'b0),
        .DOA(RAM_reg_960_1023_0_6_n_0),
        .DOB(RAM_reg_960_1023_0_6_n_1),
        .DOC(RAM_reg_960_1023_0_6_n_2),
        .DOD(RAM_reg_960_1023_0_6_n_3),
        .DOE(RAM_reg_960_1023_0_6_n_4),
        .DOF(RAM_reg_960_1023_0_6_n_5),
        .DOG(RAM_reg_960_1023_0_6_n_6),
        .DOH(NLW_RAM_reg_960_1023_0_6_DOH_UNCONNECTED),
        .WCLK(s_axi_aclk),
        .WE(ram_full_fb_i_reg_4));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M8 RAM_reg_960_1023_14_20
       (.ADDRA(\gc1.count_d2_reg[5]_rep__0 ),
        .ADDRB(\gc1.count_d2_reg[5]_rep__0 ),
        .ADDRC(\gc1.count_d2_reg[5]_rep__0 ),
        .ADDRD(\gc1.count_d2_reg[5]_rep__0 ),
        .ADDRE(\gc1.count_d2_reg[5]_rep__0 ),
        .ADDRF(\gc1.count_d2_reg[5]_rep__0 ),
        .ADDRG(\gc1.count_d2_reg[5]_rep__0 ),
        .ADDRH(\gcc0.gc0.count_d1_reg[5] ),
        .DIA(fg_rxd_wr_length[11]),
        .DIB(fg_rxd_wr_length[12]),
        .DIC(fg_rxd_wr_length[13]),
        .DID(fg_rxd_wr_length[14]),
        .DIE(fg_rxd_wr_length[15]),
        .DIF(fg_rxd_wr_length[16]),
        .DIG(fg_rxd_wr_length[17]),
        .DIH(1'b0),
        .DOA(RAM_reg_960_1023_14_20_n_0),
        .DOB(RAM_reg_960_1023_14_20_n_1),
        .DOC(RAM_reg_960_1023_14_20_n_2),
        .DOD(RAM_reg_960_1023_14_20_n_3),
        .DOE(RAM_reg_960_1023_14_20_n_4),
        .DOF(RAM_reg_960_1023_14_20_n_5),
        .DOG(RAM_reg_960_1023_14_20_n_6),
        .DOH(NLW_RAM_reg_960_1023_14_20_DOH_UNCONNECTED),
        .WCLK(s_axi_aclk),
        .WE(ram_full_fb_i_reg_4));
  RAM64X1D RAM_reg_960_1023_21_21
       (.A0(\gcc0.gc0.count_d1_reg[5] [0]),
        .A1(\gcc0.gc0.count_d1_reg[5] [1]),
        .A2(\gcc0.gc0.count_d1_reg[5] [2]),
        .A3(\gcc0.gc0.count_d1_reg[5] [3]),
        .A4(\gcc0.gc0.count_d1_reg[5] [4]),
        .A5(\gcc0.gc0.count_d1_reg[5] [5]),
        .D(fg_rxd_wr_length[18]),
        .DPO(RAM_reg_960_1023_21_21_n_0),
        .DPRA0(\gc1.count_d2_reg[0]_rep__1 ),
        .DPRA1(\gc1.count_d2_reg[1]_rep__1 ),
        .DPRA2(\gc1.count_d2_reg[2]_rep__1 ),
        .DPRA3(\gc1.count_d2_reg[3]_rep__1 ),
        .DPRA4(\gc1.count_d2_reg[4]_rep__1 ),
        .DPRA5(\gc1.count_d2_reg[5]_rep__1 ),
        .SPO(NLW_RAM_reg_960_1023_21_21_SPO_UNCONNECTED),
        .WCLK(s_axi_aclk),
        .WE(ram_full_fb_i_reg_4));
  RAM64X1D RAM_reg_960_1023_22_22
       (.A0(\gcc0.gc0.count_d1_reg[5] [0]),
        .A1(\gcc0.gc0.count_d1_reg[5] [1]),
        .A2(\gcc0.gc0.count_d1_reg[5] [2]),
        .A3(\gcc0.gc0.count_d1_reg[5] [3]),
        .A4(\gcc0.gc0.count_d1_reg[5] [4]),
        .A5(\gcc0.gc0.count_d1_reg[5] [5]),
        .D(fg_rxd_wr_length[19]),
        .DPO(RAM_reg_960_1023_22_22_n_0),
        .DPRA0(\gc1.count_d2_reg[0]_rep__1 ),
        .DPRA1(\gc1.count_d2_reg[1]_rep__1 ),
        .DPRA2(\gc1.count_d2_reg[2]_rep__1 ),
        .DPRA3(\gc1.count_d2_reg[3]_rep__1 ),
        .DPRA4(\gc1.count_d2_reg[4]_rep__1 ),
        .DPRA5(\gc1.count_d2_reg[5]_rep__1 ),
        .SPO(NLW_RAM_reg_960_1023_22_22_SPO_UNCONNECTED),
        .WCLK(s_axi_aclk),
        .WE(ram_full_fb_i_reg_4));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M8 RAM_reg_960_1023_7_13
       (.ADDRA(ADDRG),
        .ADDRB(ADDRG),
        .ADDRC(ADDRG),
        .ADDRD(ADDRG),
        .ADDRE(ADDRG),
        .ADDRF(ADDRG),
        .ADDRG(ADDRG),
        .ADDRH(\gcc0.gc0.count_d1_reg[5] ),
        .DIA(fg_rxd_wr_length[4]),
        .DIB(fg_rxd_wr_length[5]),
        .DIC(fg_rxd_wr_length[6]),
        .DID(fg_rxd_wr_length[7]),
        .DIE(fg_rxd_wr_length[8]),
        .DIF(fg_rxd_wr_length[9]),
        .DIG(fg_rxd_wr_length[10]),
        .DIH(1'b0),
        .DOA(RAM_reg_960_1023_7_13_n_0),
        .DOB(RAM_reg_960_1023_7_13_n_1),
        .DOC(RAM_reg_960_1023_7_13_n_2),
        .DOD(RAM_reg_960_1023_7_13_n_3),
        .DOE(RAM_reg_960_1023_7_13_n_4),
        .DOF(RAM_reg_960_1023_7_13_n_5),
        .DOG(RAM_reg_960_1023_7_13_n_6),
        .DOH(NLW_RAM_reg_960_1023_7_13_DOH_UNCONNECTED),
        .WCLK(s_axi_aclk),
        .WE(ram_full_fb_i_reg_4));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[0]_i_4 
       (.I0(RAM_reg_192_255_0_6_n_0),
        .I1(RAM_reg_128_191_0_6_n_0),
        .I2(Q[7]),
        .I3(RAM_reg_64_127_0_6_n_0),
        .I4(Q[6]),
        .I5(RAM_reg_0_63_0_6_n_0),
        .O(\gpr1.dout_i[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[0]_i_5 
       (.I0(RAM_reg_448_511_0_6_n_0),
        .I1(RAM_reg_384_447_0_6_n_0),
        .I2(Q[7]),
        .I3(RAM_reg_320_383_0_6_n_0),
        .I4(Q[6]),
        .I5(RAM_reg_256_319_0_6_n_0),
        .O(\gpr1.dout_i[0]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[0]_i_6 
       (.I0(RAM_reg_704_767_0_6_n_0),
        .I1(RAM_reg_640_703_0_6_n_0),
        .I2(Q[7]),
        .I3(RAM_reg_576_639_0_6_n_0),
        .I4(Q[6]),
        .I5(RAM_reg_512_575_0_6_n_0),
        .O(\gpr1.dout_i[0]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[0]_i_7 
       (.I0(RAM_reg_960_1023_0_6_n_0),
        .I1(RAM_reg_896_959_0_6_n_0),
        .I2(Q[7]),
        .I3(RAM_reg_832_895_0_6_n_0),
        .I4(Q[6]),
        .I5(RAM_reg_768_831_0_6_n_0),
        .O(\gpr1.dout_i[0]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[10]_i_4 
       (.I0(RAM_reg_192_255_7_13_n_3),
        .I1(RAM_reg_128_191_7_13_n_3),
        .I2(Q[7]),
        .I3(RAM_reg_64_127_7_13_n_3),
        .I4(Q[6]),
        .I5(RAM_reg_0_63_7_13_n_3),
        .O(\gpr1.dout_i[10]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[10]_i_5 
       (.I0(RAM_reg_448_511_7_13_n_3),
        .I1(RAM_reg_384_447_7_13_n_3),
        .I2(Q[7]),
        .I3(RAM_reg_320_383_7_13_n_3),
        .I4(Q[6]),
        .I5(RAM_reg_256_319_7_13_n_3),
        .O(\gpr1.dout_i[10]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[10]_i_6 
       (.I0(RAM_reg_704_767_7_13_n_3),
        .I1(RAM_reg_640_703_7_13_n_3),
        .I2(Q[7]),
        .I3(RAM_reg_576_639_7_13_n_3),
        .I4(Q[6]),
        .I5(RAM_reg_512_575_7_13_n_3),
        .O(\gpr1.dout_i[10]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[10]_i_7 
       (.I0(RAM_reg_960_1023_7_13_n_3),
        .I1(RAM_reg_896_959_7_13_n_3),
        .I2(Q[7]),
        .I3(RAM_reg_832_895_7_13_n_3),
        .I4(Q[6]),
        .I5(RAM_reg_768_831_7_13_n_3),
        .O(\gpr1.dout_i[10]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[11]_i_4 
       (.I0(RAM_reg_192_255_7_13_n_4),
        .I1(RAM_reg_128_191_7_13_n_4),
        .I2(Q[7]),
        .I3(RAM_reg_64_127_7_13_n_4),
        .I4(Q[6]),
        .I5(RAM_reg_0_63_7_13_n_4),
        .O(\gpr1.dout_i[11]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[11]_i_5 
       (.I0(RAM_reg_448_511_7_13_n_4),
        .I1(RAM_reg_384_447_7_13_n_4),
        .I2(Q[7]),
        .I3(RAM_reg_320_383_7_13_n_4),
        .I4(Q[6]),
        .I5(RAM_reg_256_319_7_13_n_4),
        .O(\gpr1.dout_i[11]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[11]_i_6 
       (.I0(RAM_reg_704_767_7_13_n_4),
        .I1(RAM_reg_640_703_7_13_n_4),
        .I2(Q[7]),
        .I3(RAM_reg_576_639_7_13_n_4),
        .I4(Q[6]),
        .I5(RAM_reg_512_575_7_13_n_4),
        .O(\gpr1.dout_i[11]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[11]_i_7 
       (.I0(RAM_reg_960_1023_7_13_n_4),
        .I1(RAM_reg_896_959_7_13_n_4),
        .I2(Q[7]),
        .I3(RAM_reg_832_895_7_13_n_4),
        .I4(Q[6]),
        .I5(RAM_reg_768_831_7_13_n_4),
        .O(\gpr1.dout_i[11]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[12]_i_4 
       (.I0(RAM_reg_192_255_7_13_n_5),
        .I1(RAM_reg_128_191_7_13_n_5),
        .I2(Q[7]),
        .I3(RAM_reg_64_127_7_13_n_5),
        .I4(Q[6]),
        .I5(RAM_reg_0_63_7_13_n_5),
        .O(\gpr1.dout_i[12]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[12]_i_5 
       (.I0(RAM_reg_448_511_7_13_n_5),
        .I1(RAM_reg_384_447_7_13_n_5),
        .I2(Q[7]),
        .I3(RAM_reg_320_383_7_13_n_5),
        .I4(Q[6]),
        .I5(RAM_reg_256_319_7_13_n_5),
        .O(\gpr1.dout_i[12]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[12]_i_6 
       (.I0(RAM_reg_704_767_7_13_n_5),
        .I1(RAM_reg_640_703_7_13_n_5),
        .I2(Q[7]),
        .I3(RAM_reg_576_639_7_13_n_5),
        .I4(Q[6]),
        .I5(RAM_reg_512_575_7_13_n_5),
        .O(\gpr1.dout_i[12]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[12]_i_7 
       (.I0(RAM_reg_960_1023_7_13_n_5),
        .I1(RAM_reg_896_959_7_13_n_5),
        .I2(Q[7]),
        .I3(RAM_reg_832_895_7_13_n_5),
        .I4(Q[6]),
        .I5(RAM_reg_768_831_7_13_n_5),
        .O(\gpr1.dout_i[12]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[13]_i_4 
       (.I0(RAM_reg_192_255_7_13_n_6),
        .I1(RAM_reg_128_191_7_13_n_6),
        .I2(Q[7]),
        .I3(RAM_reg_64_127_7_13_n_6),
        .I4(Q[6]),
        .I5(RAM_reg_0_63_7_13_n_6),
        .O(\gpr1.dout_i[13]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[13]_i_5 
       (.I0(RAM_reg_448_511_7_13_n_6),
        .I1(RAM_reg_384_447_7_13_n_6),
        .I2(Q[7]),
        .I3(RAM_reg_320_383_7_13_n_6),
        .I4(Q[6]),
        .I5(RAM_reg_256_319_7_13_n_6),
        .O(\gpr1.dout_i[13]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[13]_i_6 
       (.I0(RAM_reg_704_767_7_13_n_6),
        .I1(RAM_reg_640_703_7_13_n_6),
        .I2(Q[7]),
        .I3(RAM_reg_576_639_7_13_n_6),
        .I4(Q[6]),
        .I5(RAM_reg_512_575_7_13_n_6),
        .O(\gpr1.dout_i[13]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[13]_i_7 
       (.I0(RAM_reg_960_1023_7_13_n_6),
        .I1(RAM_reg_896_959_7_13_n_6),
        .I2(Q[7]),
        .I3(RAM_reg_832_895_7_13_n_6),
        .I4(Q[6]),
        .I5(RAM_reg_768_831_7_13_n_6),
        .O(\gpr1.dout_i[13]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[14]_i_4 
       (.I0(RAM_reg_192_255_14_20_n_0),
        .I1(RAM_reg_128_191_14_20_n_0),
        .I2(Q[7]),
        .I3(RAM_reg_64_127_14_20_n_0),
        .I4(Q[6]),
        .I5(RAM_reg_0_63_14_20_n_0),
        .O(\gpr1.dout_i[14]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[14]_i_5 
       (.I0(RAM_reg_448_511_14_20_n_0),
        .I1(RAM_reg_384_447_14_20_n_0),
        .I2(Q[7]),
        .I3(RAM_reg_320_383_14_20_n_0),
        .I4(Q[6]),
        .I5(RAM_reg_256_319_14_20_n_0),
        .O(\gpr1.dout_i[14]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[14]_i_6 
       (.I0(RAM_reg_704_767_14_20_n_0),
        .I1(RAM_reg_640_703_14_20_n_0),
        .I2(Q[7]),
        .I3(RAM_reg_576_639_14_20_n_0),
        .I4(Q[6]),
        .I5(RAM_reg_512_575_14_20_n_0),
        .O(\gpr1.dout_i[14]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[14]_i_7 
       (.I0(RAM_reg_960_1023_14_20_n_0),
        .I1(RAM_reg_896_959_14_20_n_0),
        .I2(Q[7]),
        .I3(RAM_reg_832_895_14_20_n_0),
        .I4(Q[6]),
        .I5(RAM_reg_768_831_14_20_n_0),
        .O(\gpr1.dout_i[14]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[15]_i_4 
       (.I0(RAM_reg_192_255_14_20_n_1),
        .I1(RAM_reg_128_191_14_20_n_1),
        .I2(Q[7]),
        .I3(RAM_reg_64_127_14_20_n_1),
        .I4(Q[6]),
        .I5(RAM_reg_0_63_14_20_n_1),
        .O(\gpr1.dout_i[15]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[15]_i_5 
       (.I0(RAM_reg_448_511_14_20_n_1),
        .I1(RAM_reg_384_447_14_20_n_1),
        .I2(Q[7]),
        .I3(RAM_reg_320_383_14_20_n_1),
        .I4(Q[6]),
        .I5(RAM_reg_256_319_14_20_n_1),
        .O(\gpr1.dout_i[15]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[15]_i_6 
       (.I0(RAM_reg_704_767_14_20_n_1),
        .I1(RAM_reg_640_703_14_20_n_1),
        .I2(Q[7]),
        .I3(RAM_reg_576_639_14_20_n_1),
        .I4(Q[6]),
        .I5(RAM_reg_512_575_14_20_n_1),
        .O(\gpr1.dout_i[15]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[15]_i_7 
       (.I0(RAM_reg_960_1023_14_20_n_1),
        .I1(RAM_reg_896_959_14_20_n_1),
        .I2(Q[7]),
        .I3(RAM_reg_832_895_14_20_n_1),
        .I4(Q[6]),
        .I5(RAM_reg_768_831_14_20_n_1),
        .O(\gpr1.dout_i[15]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[16]_i_4 
       (.I0(RAM_reg_192_255_14_20_n_2),
        .I1(RAM_reg_128_191_14_20_n_2),
        .I2(Q[7]),
        .I3(RAM_reg_64_127_14_20_n_2),
        .I4(Q[6]),
        .I5(RAM_reg_0_63_14_20_n_2),
        .O(\gpr1.dout_i[16]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[16]_i_5 
       (.I0(RAM_reg_448_511_14_20_n_2),
        .I1(RAM_reg_384_447_14_20_n_2),
        .I2(Q[7]),
        .I3(RAM_reg_320_383_14_20_n_2),
        .I4(Q[6]),
        .I5(RAM_reg_256_319_14_20_n_2),
        .O(\gpr1.dout_i[16]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[16]_i_6 
       (.I0(RAM_reg_704_767_14_20_n_2),
        .I1(RAM_reg_640_703_14_20_n_2),
        .I2(Q[7]),
        .I3(RAM_reg_576_639_14_20_n_2),
        .I4(Q[6]),
        .I5(RAM_reg_512_575_14_20_n_2),
        .O(\gpr1.dout_i[16]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[16]_i_7 
       (.I0(RAM_reg_960_1023_14_20_n_2),
        .I1(RAM_reg_896_959_14_20_n_2),
        .I2(Q[7]),
        .I3(RAM_reg_832_895_14_20_n_2),
        .I4(Q[6]),
        .I5(RAM_reg_768_831_14_20_n_2),
        .O(\gpr1.dout_i[16]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[17]_i_4 
       (.I0(RAM_reg_192_255_14_20_n_3),
        .I1(RAM_reg_128_191_14_20_n_3),
        .I2(Q[7]),
        .I3(RAM_reg_64_127_14_20_n_3),
        .I4(Q[6]),
        .I5(RAM_reg_0_63_14_20_n_3),
        .O(\gpr1.dout_i[17]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[17]_i_5 
       (.I0(RAM_reg_448_511_14_20_n_3),
        .I1(RAM_reg_384_447_14_20_n_3),
        .I2(Q[7]),
        .I3(RAM_reg_320_383_14_20_n_3),
        .I4(Q[6]),
        .I5(RAM_reg_256_319_14_20_n_3),
        .O(\gpr1.dout_i[17]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[17]_i_6 
       (.I0(RAM_reg_704_767_14_20_n_3),
        .I1(RAM_reg_640_703_14_20_n_3),
        .I2(Q[7]),
        .I3(RAM_reg_576_639_14_20_n_3),
        .I4(Q[6]),
        .I5(RAM_reg_512_575_14_20_n_3),
        .O(\gpr1.dout_i[17]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[17]_i_7 
       (.I0(RAM_reg_960_1023_14_20_n_3),
        .I1(RAM_reg_896_959_14_20_n_3),
        .I2(Q[7]),
        .I3(RAM_reg_832_895_14_20_n_3),
        .I4(Q[6]),
        .I5(RAM_reg_768_831_14_20_n_3),
        .O(\gpr1.dout_i[17]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[18]_i_4 
       (.I0(RAM_reg_192_255_14_20_n_4),
        .I1(RAM_reg_128_191_14_20_n_4),
        .I2(Q[7]),
        .I3(RAM_reg_64_127_14_20_n_4),
        .I4(Q[6]),
        .I5(RAM_reg_0_63_14_20_n_4),
        .O(\gpr1.dout_i[18]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[18]_i_5 
       (.I0(RAM_reg_448_511_14_20_n_4),
        .I1(RAM_reg_384_447_14_20_n_4),
        .I2(Q[7]),
        .I3(RAM_reg_320_383_14_20_n_4),
        .I4(Q[6]),
        .I5(RAM_reg_256_319_14_20_n_4),
        .O(\gpr1.dout_i[18]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[18]_i_6 
       (.I0(RAM_reg_704_767_14_20_n_4),
        .I1(RAM_reg_640_703_14_20_n_4),
        .I2(Q[7]),
        .I3(RAM_reg_576_639_14_20_n_4),
        .I4(Q[6]),
        .I5(RAM_reg_512_575_14_20_n_4),
        .O(\gpr1.dout_i[18]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[18]_i_7 
       (.I0(RAM_reg_960_1023_14_20_n_4),
        .I1(RAM_reg_896_959_14_20_n_4),
        .I2(Q[7]),
        .I3(RAM_reg_832_895_14_20_n_4),
        .I4(Q[6]),
        .I5(RAM_reg_768_831_14_20_n_4),
        .O(\gpr1.dout_i[18]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[19]_i_4 
       (.I0(RAM_reg_192_255_14_20_n_5),
        .I1(RAM_reg_128_191_14_20_n_5),
        .I2(Q[7]),
        .I3(RAM_reg_64_127_14_20_n_5),
        .I4(Q[6]),
        .I5(RAM_reg_0_63_14_20_n_5),
        .O(\gpr1.dout_i[19]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[19]_i_5 
       (.I0(RAM_reg_448_511_14_20_n_5),
        .I1(RAM_reg_384_447_14_20_n_5),
        .I2(Q[7]),
        .I3(RAM_reg_320_383_14_20_n_5),
        .I4(Q[6]),
        .I5(RAM_reg_256_319_14_20_n_5),
        .O(\gpr1.dout_i[19]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[19]_i_6 
       (.I0(RAM_reg_704_767_14_20_n_5),
        .I1(RAM_reg_640_703_14_20_n_5),
        .I2(Q[7]),
        .I3(RAM_reg_576_639_14_20_n_5),
        .I4(Q[6]),
        .I5(RAM_reg_512_575_14_20_n_5),
        .O(\gpr1.dout_i[19]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[19]_i_7 
       (.I0(RAM_reg_960_1023_14_20_n_5),
        .I1(RAM_reg_896_959_14_20_n_5),
        .I2(Q[7]),
        .I3(RAM_reg_832_895_14_20_n_5),
        .I4(Q[6]),
        .I5(RAM_reg_768_831_14_20_n_5),
        .O(\gpr1.dout_i[19]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[1]_i_4 
       (.I0(RAM_reg_192_255_0_6_n_1),
        .I1(RAM_reg_128_191_0_6_n_1),
        .I2(Q[7]),
        .I3(RAM_reg_64_127_0_6_n_1),
        .I4(Q[6]),
        .I5(RAM_reg_0_63_0_6_n_1),
        .O(\gpr1.dout_i[1]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[1]_i_5 
       (.I0(RAM_reg_448_511_0_6_n_1),
        .I1(RAM_reg_384_447_0_6_n_1),
        .I2(Q[7]),
        .I3(RAM_reg_320_383_0_6_n_1),
        .I4(Q[6]),
        .I5(RAM_reg_256_319_0_6_n_1),
        .O(\gpr1.dout_i[1]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[1]_i_6 
       (.I0(RAM_reg_704_767_0_6_n_1),
        .I1(RAM_reg_640_703_0_6_n_1),
        .I2(Q[7]),
        .I3(RAM_reg_576_639_0_6_n_1),
        .I4(Q[6]),
        .I5(RAM_reg_512_575_0_6_n_1),
        .O(\gpr1.dout_i[1]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[1]_i_7 
       (.I0(RAM_reg_960_1023_0_6_n_1),
        .I1(RAM_reg_896_959_0_6_n_1),
        .I2(Q[7]),
        .I3(RAM_reg_832_895_0_6_n_1),
        .I4(Q[6]),
        .I5(RAM_reg_768_831_0_6_n_1),
        .O(\gpr1.dout_i[1]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[20]_i_4 
       (.I0(RAM_reg_192_255_14_20_n_6),
        .I1(RAM_reg_128_191_14_20_n_6),
        .I2(Q[7]),
        .I3(RAM_reg_64_127_14_20_n_6),
        .I4(Q[6]),
        .I5(RAM_reg_0_63_14_20_n_6),
        .O(\gpr1.dout_i[20]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[20]_i_5 
       (.I0(RAM_reg_448_511_14_20_n_6),
        .I1(RAM_reg_384_447_14_20_n_6),
        .I2(Q[7]),
        .I3(RAM_reg_320_383_14_20_n_6),
        .I4(Q[6]),
        .I5(RAM_reg_256_319_14_20_n_6),
        .O(\gpr1.dout_i[20]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[20]_i_6 
       (.I0(RAM_reg_704_767_14_20_n_6),
        .I1(RAM_reg_640_703_14_20_n_6),
        .I2(Q[7]),
        .I3(RAM_reg_576_639_14_20_n_6),
        .I4(Q[6]),
        .I5(RAM_reg_512_575_14_20_n_6),
        .O(\gpr1.dout_i[20]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[20]_i_7 
       (.I0(RAM_reg_960_1023_14_20_n_6),
        .I1(RAM_reg_896_959_14_20_n_6),
        .I2(Q[7]),
        .I3(RAM_reg_832_895_14_20_n_6),
        .I4(Q[6]),
        .I5(RAM_reg_768_831_14_20_n_6),
        .O(\gpr1.dout_i[20]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[21]_i_4 
       (.I0(RAM_reg_192_255_21_21_n_0),
        .I1(RAM_reg_128_191_21_21_n_0),
        .I2(Q[7]),
        .I3(RAM_reg_64_127_21_21_n_0),
        .I4(Q[6]),
        .I5(RAM_reg_0_63_21_21_n_0),
        .O(\gpr1.dout_i[21]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[21]_i_5 
       (.I0(RAM_reg_448_511_21_21_n_0),
        .I1(RAM_reg_384_447_21_21_n_0),
        .I2(Q[7]),
        .I3(RAM_reg_320_383_21_21_n_0),
        .I4(Q[6]),
        .I5(RAM_reg_256_319_21_21_n_0),
        .O(\gpr1.dout_i[21]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[21]_i_6 
       (.I0(RAM_reg_704_767_21_21_n_0),
        .I1(RAM_reg_640_703_21_21_n_0),
        .I2(Q[7]),
        .I3(RAM_reg_576_639_21_21_n_0),
        .I4(Q[6]),
        .I5(RAM_reg_512_575_21_21_n_0),
        .O(\gpr1.dout_i[21]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[21]_i_7 
       (.I0(RAM_reg_960_1023_21_21_n_0),
        .I1(RAM_reg_896_959_21_21_n_0),
        .I2(Q[7]),
        .I3(RAM_reg_832_895_21_21_n_0),
        .I4(Q[6]),
        .I5(RAM_reg_768_831_21_21_n_0),
        .O(\gpr1.dout_i[21]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[22]_i_5 
       (.I0(RAM_reg_192_255_22_22_n_0),
        .I1(RAM_reg_128_191_22_22_n_0),
        .I2(Q[7]),
        .I3(RAM_reg_64_127_22_22_n_0),
        .I4(Q[6]),
        .I5(RAM_reg_0_63_22_22_n_0),
        .O(\gpr1.dout_i[22]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[22]_i_6 
       (.I0(RAM_reg_448_511_22_22_n_0),
        .I1(RAM_reg_384_447_22_22_n_0),
        .I2(Q[7]),
        .I3(RAM_reg_320_383_22_22_n_0),
        .I4(Q[6]),
        .I5(RAM_reg_256_319_22_22_n_0),
        .O(\gpr1.dout_i[22]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[22]_i_7 
       (.I0(RAM_reg_704_767_22_22_n_0),
        .I1(RAM_reg_640_703_22_22_n_0),
        .I2(Q[7]),
        .I3(RAM_reg_576_639_22_22_n_0),
        .I4(Q[6]),
        .I5(RAM_reg_512_575_22_22_n_0),
        .O(\gpr1.dout_i[22]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[22]_i_8 
       (.I0(RAM_reg_960_1023_22_22_n_0),
        .I1(RAM_reg_896_959_22_22_n_0),
        .I2(Q[7]),
        .I3(RAM_reg_832_895_22_22_n_0),
        .I4(Q[6]),
        .I5(RAM_reg_768_831_22_22_n_0),
        .O(\gpr1.dout_i[22]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[2]_i_4 
       (.I0(RAM_reg_192_255_0_6_n_2),
        .I1(RAM_reg_128_191_0_6_n_2),
        .I2(Q[7]),
        .I3(RAM_reg_64_127_0_6_n_2),
        .I4(Q[6]),
        .I5(RAM_reg_0_63_0_6_n_2),
        .O(\gpr1.dout_i[2]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[2]_i_5 
       (.I0(RAM_reg_448_511_0_6_n_2),
        .I1(RAM_reg_384_447_0_6_n_2),
        .I2(Q[7]),
        .I3(RAM_reg_320_383_0_6_n_2),
        .I4(Q[6]),
        .I5(RAM_reg_256_319_0_6_n_2),
        .O(\gpr1.dout_i[2]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[2]_i_6 
       (.I0(RAM_reg_704_767_0_6_n_2),
        .I1(RAM_reg_640_703_0_6_n_2),
        .I2(Q[7]),
        .I3(RAM_reg_576_639_0_6_n_2),
        .I4(Q[6]),
        .I5(RAM_reg_512_575_0_6_n_2),
        .O(\gpr1.dout_i[2]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[2]_i_7 
       (.I0(RAM_reg_960_1023_0_6_n_2),
        .I1(RAM_reg_896_959_0_6_n_2),
        .I2(Q[7]),
        .I3(RAM_reg_832_895_0_6_n_2),
        .I4(Q[6]),
        .I5(RAM_reg_768_831_0_6_n_2),
        .O(\gpr1.dout_i[2]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[3]_i_4 
       (.I0(RAM_reg_192_255_0_6_n_3),
        .I1(RAM_reg_128_191_0_6_n_3),
        .I2(Q[7]),
        .I3(RAM_reg_64_127_0_6_n_3),
        .I4(Q[6]),
        .I5(RAM_reg_0_63_0_6_n_3),
        .O(\gpr1.dout_i[3]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[3]_i_5 
       (.I0(RAM_reg_448_511_0_6_n_3),
        .I1(RAM_reg_384_447_0_6_n_3),
        .I2(Q[7]),
        .I3(RAM_reg_320_383_0_6_n_3),
        .I4(Q[6]),
        .I5(RAM_reg_256_319_0_6_n_3),
        .O(\gpr1.dout_i[3]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[3]_i_6 
       (.I0(RAM_reg_704_767_0_6_n_3),
        .I1(RAM_reg_640_703_0_6_n_3),
        .I2(Q[7]),
        .I3(RAM_reg_576_639_0_6_n_3),
        .I4(Q[6]),
        .I5(RAM_reg_512_575_0_6_n_3),
        .O(\gpr1.dout_i[3]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[3]_i_7 
       (.I0(RAM_reg_960_1023_0_6_n_3),
        .I1(RAM_reg_896_959_0_6_n_3),
        .I2(Q[7]),
        .I3(RAM_reg_832_895_0_6_n_3),
        .I4(Q[6]),
        .I5(RAM_reg_768_831_0_6_n_3),
        .O(\gpr1.dout_i[3]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[4]_i_4 
       (.I0(RAM_reg_192_255_0_6_n_4),
        .I1(RAM_reg_128_191_0_6_n_4),
        .I2(Q[7]),
        .I3(RAM_reg_64_127_0_6_n_4),
        .I4(Q[6]),
        .I5(RAM_reg_0_63_0_6_n_4),
        .O(\gpr1.dout_i[4]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[4]_i_5 
       (.I0(RAM_reg_448_511_0_6_n_4),
        .I1(RAM_reg_384_447_0_6_n_4),
        .I2(Q[7]),
        .I3(RAM_reg_320_383_0_6_n_4),
        .I4(Q[6]),
        .I5(RAM_reg_256_319_0_6_n_4),
        .O(\gpr1.dout_i[4]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[4]_i_6 
       (.I0(RAM_reg_704_767_0_6_n_4),
        .I1(RAM_reg_640_703_0_6_n_4),
        .I2(Q[7]),
        .I3(RAM_reg_576_639_0_6_n_4),
        .I4(Q[6]),
        .I5(RAM_reg_512_575_0_6_n_4),
        .O(\gpr1.dout_i[4]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[4]_i_7 
       (.I0(RAM_reg_960_1023_0_6_n_4),
        .I1(RAM_reg_896_959_0_6_n_4),
        .I2(Q[7]),
        .I3(RAM_reg_832_895_0_6_n_4),
        .I4(Q[6]),
        .I5(RAM_reg_768_831_0_6_n_4),
        .O(\gpr1.dout_i[4]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[5]_i_4 
       (.I0(RAM_reg_192_255_0_6_n_5),
        .I1(RAM_reg_128_191_0_6_n_5),
        .I2(Q[7]),
        .I3(RAM_reg_64_127_0_6_n_5),
        .I4(Q[6]),
        .I5(RAM_reg_0_63_0_6_n_5),
        .O(\gpr1.dout_i[5]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[5]_i_5 
       (.I0(RAM_reg_448_511_0_6_n_5),
        .I1(RAM_reg_384_447_0_6_n_5),
        .I2(Q[7]),
        .I3(RAM_reg_320_383_0_6_n_5),
        .I4(Q[6]),
        .I5(RAM_reg_256_319_0_6_n_5),
        .O(\gpr1.dout_i[5]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[5]_i_6 
       (.I0(RAM_reg_704_767_0_6_n_5),
        .I1(RAM_reg_640_703_0_6_n_5),
        .I2(Q[7]),
        .I3(RAM_reg_576_639_0_6_n_5),
        .I4(Q[6]),
        .I5(RAM_reg_512_575_0_6_n_5),
        .O(\gpr1.dout_i[5]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[5]_i_7 
       (.I0(RAM_reg_960_1023_0_6_n_5),
        .I1(RAM_reg_896_959_0_6_n_5),
        .I2(Q[7]),
        .I3(RAM_reg_832_895_0_6_n_5),
        .I4(Q[6]),
        .I5(RAM_reg_768_831_0_6_n_5),
        .O(\gpr1.dout_i[5]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[6]_i_4 
       (.I0(RAM_reg_192_255_0_6_n_6),
        .I1(RAM_reg_128_191_0_6_n_6),
        .I2(Q[7]),
        .I3(RAM_reg_64_127_0_6_n_6),
        .I4(Q[6]),
        .I5(RAM_reg_0_63_0_6_n_6),
        .O(\gpr1.dout_i[6]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[6]_i_5 
       (.I0(RAM_reg_448_511_0_6_n_6),
        .I1(RAM_reg_384_447_0_6_n_6),
        .I2(Q[7]),
        .I3(RAM_reg_320_383_0_6_n_6),
        .I4(Q[6]),
        .I5(RAM_reg_256_319_0_6_n_6),
        .O(\gpr1.dout_i[6]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[6]_i_6 
       (.I0(RAM_reg_704_767_0_6_n_6),
        .I1(RAM_reg_640_703_0_6_n_6),
        .I2(Q[7]),
        .I3(RAM_reg_576_639_0_6_n_6),
        .I4(Q[6]),
        .I5(RAM_reg_512_575_0_6_n_6),
        .O(\gpr1.dout_i[6]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[6]_i_7 
       (.I0(RAM_reg_960_1023_0_6_n_6),
        .I1(RAM_reg_896_959_0_6_n_6),
        .I2(Q[7]),
        .I3(RAM_reg_832_895_0_6_n_6),
        .I4(Q[6]),
        .I5(RAM_reg_768_831_0_6_n_6),
        .O(\gpr1.dout_i[6]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[7]_i_4 
       (.I0(RAM_reg_192_255_7_13_n_0),
        .I1(RAM_reg_128_191_7_13_n_0),
        .I2(Q[7]),
        .I3(RAM_reg_64_127_7_13_n_0),
        .I4(Q[6]),
        .I5(RAM_reg_0_63_7_13_n_0),
        .O(\gpr1.dout_i[7]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[7]_i_5 
       (.I0(RAM_reg_448_511_7_13_n_0),
        .I1(RAM_reg_384_447_7_13_n_0),
        .I2(Q[7]),
        .I3(RAM_reg_320_383_7_13_n_0),
        .I4(Q[6]),
        .I5(RAM_reg_256_319_7_13_n_0),
        .O(\gpr1.dout_i[7]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[7]_i_6 
       (.I0(RAM_reg_704_767_7_13_n_0),
        .I1(RAM_reg_640_703_7_13_n_0),
        .I2(Q[7]),
        .I3(RAM_reg_576_639_7_13_n_0),
        .I4(Q[6]),
        .I5(RAM_reg_512_575_7_13_n_0),
        .O(\gpr1.dout_i[7]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[7]_i_7 
       (.I0(RAM_reg_960_1023_7_13_n_0),
        .I1(RAM_reg_896_959_7_13_n_0),
        .I2(Q[7]),
        .I3(RAM_reg_832_895_7_13_n_0),
        .I4(Q[6]),
        .I5(RAM_reg_768_831_7_13_n_0),
        .O(\gpr1.dout_i[7]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[8]_i_4 
       (.I0(RAM_reg_192_255_7_13_n_1),
        .I1(RAM_reg_128_191_7_13_n_1),
        .I2(Q[7]),
        .I3(RAM_reg_64_127_7_13_n_1),
        .I4(Q[6]),
        .I5(RAM_reg_0_63_7_13_n_1),
        .O(\gpr1.dout_i[8]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[8]_i_5 
       (.I0(RAM_reg_448_511_7_13_n_1),
        .I1(RAM_reg_384_447_7_13_n_1),
        .I2(Q[7]),
        .I3(RAM_reg_320_383_7_13_n_1),
        .I4(Q[6]),
        .I5(RAM_reg_256_319_7_13_n_1),
        .O(\gpr1.dout_i[8]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[8]_i_6 
       (.I0(RAM_reg_704_767_7_13_n_1),
        .I1(RAM_reg_640_703_7_13_n_1),
        .I2(Q[7]),
        .I3(RAM_reg_576_639_7_13_n_1),
        .I4(Q[6]),
        .I5(RAM_reg_512_575_7_13_n_1),
        .O(\gpr1.dout_i[8]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[8]_i_7 
       (.I0(RAM_reg_960_1023_7_13_n_1),
        .I1(RAM_reg_896_959_7_13_n_1),
        .I2(Q[7]),
        .I3(RAM_reg_832_895_7_13_n_1),
        .I4(Q[6]),
        .I5(RAM_reg_768_831_7_13_n_1),
        .O(\gpr1.dout_i[8]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[9]_i_4 
       (.I0(RAM_reg_192_255_7_13_n_2),
        .I1(RAM_reg_128_191_7_13_n_2),
        .I2(Q[7]),
        .I3(RAM_reg_64_127_7_13_n_2),
        .I4(Q[6]),
        .I5(RAM_reg_0_63_7_13_n_2),
        .O(\gpr1.dout_i[9]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[9]_i_5 
       (.I0(RAM_reg_448_511_7_13_n_2),
        .I1(RAM_reg_384_447_7_13_n_2),
        .I2(Q[7]),
        .I3(RAM_reg_320_383_7_13_n_2),
        .I4(Q[6]),
        .I5(RAM_reg_256_319_7_13_n_2),
        .O(\gpr1.dout_i[9]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[9]_i_6 
       (.I0(RAM_reg_704_767_7_13_n_2),
        .I1(RAM_reg_640_703_7_13_n_2),
        .I2(Q[7]),
        .I3(RAM_reg_576_639_7_13_n_2),
        .I4(Q[6]),
        .I5(RAM_reg_512_575_7_13_n_2),
        .O(\gpr1.dout_i[9]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[9]_i_7 
       (.I0(RAM_reg_960_1023_7_13_n_2),
        .I1(RAM_reg_896_959_7_13_n_2),
        .I2(Q[7]),
        .I3(RAM_reg_832_895_7_13_n_2),
        .I4(Q[6]),
        .I5(RAM_reg_768_831_7_13_n_2),
        .O(\gpr1.dout_i[9]_i_7_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[0] 
       (.C(s_axi_aclk),
        .CE(\gpregsm1.curr_fwft_state_reg[1] ),
        .D(\gpr1.dout_i_reg[0]_i_1_n_0 ),
        .Q(\goreg_dm.dout_i_reg[22] [0]),
        .R(SR));
  MUXF8 \gpr1.dout_i_reg[0]_i_1 
       (.I0(\gpr1.dout_i_reg[0]_i_2_n_0 ),
        .I1(\gpr1.dout_i_reg[0]_i_3_n_0 ),
        .O(\gpr1.dout_i_reg[0]_i_1_n_0 ),
        .S(Q[9]));
  MUXF7 \gpr1.dout_i_reg[0]_i_2 
       (.I0(\gpr1.dout_i[0]_i_4_n_0 ),
        .I1(\gpr1.dout_i[0]_i_5_n_0 ),
        .O(\gpr1.dout_i_reg[0]_i_2_n_0 ),
        .S(Q[8]));
  MUXF7 \gpr1.dout_i_reg[0]_i_3 
       (.I0(\gpr1.dout_i[0]_i_6_n_0 ),
        .I1(\gpr1.dout_i[0]_i_7_n_0 ),
        .O(\gpr1.dout_i_reg[0]_i_3_n_0 ),
        .S(Q[8]));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[10] 
       (.C(s_axi_aclk),
        .CE(\gpregsm1.curr_fwft_state_reg[1] ),
        .D(\gpr1.dout_i_reg[10]_i_1_n_0 ),
        .Q(\goreg_dm.dout_i_reg[22] [10]),
        .R(SR));
  MUXF8 \gpr1.dout_i_reg[10]_i_1 
       (.I0(\gpr1.dout_i_reg[10]_i_2_n_0 ),
        .I1(\gpr1.dout_i_reg[10]_i_3_n_0 ),
        .O(\gpr1.dout_i_reg[10]_i_1_n_0 ),
        .S(Q[9]));
  MUXF7 \gpr1.dout_i_reg[10]_i_2 
       (.I0(\gpr1.dout_i[10]_i_4_n_0 ),
        .I1(\gpr1.dout_i[10]_i_5_n_0 ),
        .O(\gpr1.dout_i_reg[10]_i_2_n_0 ),
        .S(Q[8]));
  MUXF7 \gpr1.dout_i_reg[10]_i_3 
       (.I0(\gpr1.dout_i[10]_i_6_n_0 ),
        .I1(\gpr1.dout_i[10]_i_7_n_0 ),
        .O(\gpr1.dout_i_reg[10]_i_3_n_0 ),
        .S(Q[8]));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[11] 
       (.C(s_axi_aclk),
        .CE(\gpregsm1.curr_fwft_state_reg[1] ),
        .D(\gpr1.dout_i_reg[11]_i_1_n_0 ),
        .Q(\goreg_dm.dout_i_reg[22] [11]),
        .R(SR));
  MUXF8 \gpr1.dout_i_reg[11]_i_1 
       (.I0(\gpr1.dout_i_reg[11]_i_2_n_0 ),
        .I1(\gpr1.dout_i_reg[11]_i_3_n_0 ),
        .O(\gpr1.dout_i_reg[11]_i_1_n_0 ),
        .S(Q[9]));
  MUXF7 \gpr1.dout_i_reg[11]_i_2 
       (.I0(\gpr1.dout_i[11]_i_4_n_0 ),
        .I1(\gpr1.dout_i[11]_i_5_n_0 ),
        .O(\gpr1.dout_i_reg[11]_i_2_n_0 ),
        .S(Q[8]));
  MUXF7 \gpr1.dout_i_reg[11]_i_3 
       (.I0(\gpr1.dout_i[11]_i_6_n_0 ),
        .I1(\gpr1.dout_i[11]_i_7_n_0 ),
        .O(\gpr1.dout_i_reg[11]_i_3_n_0 ),
        .S(Q[8]));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[12] 
       (.C(s_axi_aclk),
        .CE(\gpregsm1.curr_fwft_state_reg[1] ),
        .D(\gpr1.dout_i_reg[12]_i_1_n_0 ),
        .Q(\goreg_dm.dout_i_reg[22] [12]),
        .R(SR));
  MUXF8 \gpr1.dout_i_reg[12]_i_1 
       (.I0(\gpr1.dout_i_reg[12]_i_2_n_0 ),
        .I1(\gpr1.dout_i_reg[12]_i_3_n_0 ),
        .O(\gpr1.dout_i_reg[12]_i_1_n_0 ),
        .S(Q[9]));
  MUXF7 \gpr1.dout_i_reg[12]_i_2 
       (.I0(\gpr1.dout_i[12]_i_4_n_0 ),
        .I1(\gpr1.dout_i[12]_i_5_n_0 ),
        .O(\gpr1.dout_i_reg[12]_i_2_n_0 ),
        .S(Q[8]));
  MUXF7 \gpr1.dout_i_reg[12]_i_3 
       (.I0(\gpr1.dout_i[12]_i_6_n_0 ),
        .I1(\gpr1.dout_i[12]_i_7_n_0 ),
        .O(\gpr1.dout_i_reg[12]_i_3_n_0 ),
        .S(Q[8]));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[13] 
       (.C(s_axi_aclk),
        .CE(\gpregsm1.curr_fwft_state_reg[1] ),
        .D(\gpr1.dout_i_reg[13]_i_1_n_0 ),
        .Q(\goreg_dm.dout_i_reg[22] [13]),
        .R(SR));
  MUXF8 \gpr1.dout_i_reg[13]_i_1 
       (.I0(\gpr1.dout_i_reg[13]_i_2_n_0 ),
        .I1(\gpr1.dout_i_reg[13]_i_3_n_0 ),
        .O(\gpr1.dout_i_reg[13]_i_1_n_0 ),
        .S(Q[9]));
  MUXF7 \gpr1.dout_i_reg[13]_i_2 
       (.I0(\gpr1.dout_i[13]_i_4_n_0 ),
        .I1(\gpr1.dout_i[13]_i_5_n_0 ),
        .O(\gpr1.dout_i_reg[13]_i_2_n_0 ),
        .S(Q[8]));
  MUXF7 \gpr1.dout_i_reg[13]_i_3 
       (.I0(\gpr1.dout_i[13]_i_6_n_0 ),
        .I1(\gpr1.dout_i[13]_i_7_n_0 ),
        .O(\gpr1.dout_i_reg[13]_i_3_n_0 ),
        .S(Q[8]));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[14] 
       (.C(s_axi_aclk),
        .CE(\gpregsm1.curr_fwft_state_reg[1] ),
        .D(\gpr1.dout_i_reg[14]_i_1_n_0 ),
        .Q(\goreg_dm.dout_i_reg[22] [14]),
        .R(SR));
  MUXF8 \gpr1.dout_i_reg[14]_i_1 
       (.I0(\gpr1.dout_i_reg[14]_i_2_n_0 ),
        .I1(\gpr1.dout_i_reg[14]_i_3_n_0 ),
        .O(\gpr1.dout_i_reg[14]_i_1_n_0 ),
        .S(Q[9]));
  MUXF7 \gpr1.dout_i_reg[14]_i_2 
       (.I0(\gpr1.dout_i[14]_i_4_n_0 ),
        .I1(\gpr1.dout_i[14]_i_5_n_0 ),
        .O(\gpr1.dout_i_reg[14]_i_2_n_0 ),
        .S(Q[8]));
  MUXF7 \gpr1.dout_i_reg[14]_i_3 
       (.I0(\gpr1.dout_i[14]_i_6_n_0 ),
        .I1(\gpr1.dout_i[14]_i_7_n_0 ),
        .O(\gpr1.dout_i_reg[14]_i_3_n_0 ),
        .S(Q[8]));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[15] 
       (.C(s_axi_aclk),
        .CE(\gpregsm1.curr_fwft_state_reg[1] ),
        .D(\gpr1.dout_i_reg[15]_i_1_n_0 ),
        .Q(\goreg_dm.dout_i_reg[22] [15]),
        .R(SR));
  MUXF8 \gpr1.dout_i_reg[15]_i_1 
       (.I0(\gpr1.dout_i_reg[15]_i_2_n_0 ),
        .I1(\gpr1.dout_i_reg[15]_i_3_n_0 ),
        .O(\gpr1.dout_i_reg[15]_i_1_n_0 ),
        .S(Q[9]));
  MUXF7 \gpr1.dout_i_reg[15]_i_2 
       (.I0(\gpr1.dout_i[15]_i_4_n_0 ),
        .I1(\gpr1.dout_i[15]_i_5_n_0 ),
        .O(\gpr1.dout_i_reg[15]_i_2_n_0 ),
        .S(Q[8]));
  MUXF7 \gpr1.dout_i_reg[15]_i_3 
       (.I0(\gpr1.dout_i[15]_i_6_n_0 ),
        .I1(\gpr1.dout_i[15]_i_7_n_0 ),
        .O(\gpr1.dout_i_reg[15]_i_3_n_0 ),
        .S(Q[8]));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[16] 
       (.C(s_axi_aclk),
        .CE(\gpregsm1.curr_fwft_state_reg[1] ),
        .D(\gpr1.dout_i_reg[16]_i_1_n_0 ),
        .Q(\goreg_dm.dout_i_reg[22] [16]),
        .R(SR));
  MUXF8 \gpr1.dout_i_reg[16]_i_1 
       (.I0(\gpr1.dout_i_reg[16]_i_2_n_0 ),
        .I1(\gpr1.dout_i_reg[16]_i_3_n_0 ),
        .O(\gpr1.dout_i_reg[16]_i_1_n_0 ),
        .S(Q[9]));
  MUXF7 \gpr1.dout_i_reg[16]_i_2 
       (.I0(\gpr1.dout_i[16]_i_4_n_0 ),
        .I1(\gpr1.dout_i[16]_i_5_n_0 ),
        .O(\gpr1.dout_i_reg[16]_i_2_n_0 ),
        .S(Q[8]));
  MUXF7 \gpr1.dout_i_reg[16]_i_3 
       (.I0(\gpr1.dout_i[16]_i_6_n_0 ),
        .I1(\gpr1.dout_i[16]_i_7_n_0 ),
        .O(\gpr1.dout_i_reg[16]_i_3_n_0 ),
        .S(Q[8]));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[17] 
       (.C(s_axi_aclk),
        .CE(\gpregsm1.curr_fwft_state_reg[1] ),
        .D(\gpr1.dout_i_reg[17]_i_1_n_0 ),
        .Q(\goreg_dm.dout_i_reg[22] [17]),
        .R(SR));
  MUXF8 \gpr1.dout_i_reg[17]_i_1 
       (.I0(\gpr1.dout_i_reg[17]_i_2_n_0 ),
        .I1(\gpr1.dout_i_reg[17]_i_3_n_0 ),
        .O(\gpr1.dout_i_reg[17]_i_1_n_0 ),
        .S(Q[9]));
  MUXF7 \gpr1.dout_i_reg[17]_i_2 
       (.I0(\gpr1.dout_i[17]_i_4_n_0 ),
        .I1(\gpr1.dout_i[17]_i_5_n_0 ),
        .O(\gpr1.dout_i_reg[17]_i_2_n_0 ),
        .S(Q[8]));
  MUXF7 \gpr1.dout_i_reg[17]_i_3 
       (.I0(\gpr1.dout_i[17]_i_6_n_0 ),
        .I1(\gpr1.dout_i[17]_i_7_n_0 ),
        .O(\gpr1.dout_i_reg[17]_i_3_n_0 ),
        .S(Q[8]));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[18] 
       (.C(s_axi_aclk),
        .CE(\gpregsm1.curr_fwft_state_reg[1] ),
        .D(\gpr1.dout_i_reg[18]_i_1_n_0 ),
        .Q(\goreg_dm.dout_i_reg[22] [18]),
        .R(SR));
  MUXF8 \gpr1.dout_i_reg[18]_i_1 
       (.I0(\gpr1.dout_i_reg[18]_i_2_n_0 ),
        .I1(\gpr1.dout_i_reg[18]_i_3_n_0 ),
        .O(\gpr1.dout_i_reg[18]_i_1_n_0 ),
        .S(Q[9]));
  MUXF7 \gpr1.dout_i_reg[18]_i_2 
       (.I0(\gpr1.dout_i[18]_i_4_n_0 ),
        .I1(\gpr1.dout_i[18]_i_5_n_0 ),
        .O(\gpr1.dout_i_reg[18]_i_2_n_0 ),
        .S(Q[8]));
  MUXF7 \gpr1.dout_i_reg[18]_i_3 
       (.I0(\gpr1.dout_i[18]_i_6_n_0 ),
        .I1(\gpr1.dout_i[18]_i_7_n_0 ),
        .O(\gpr1.dout_i_reg[18]_i_3_n_0 ),
        .S(Q[8]));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[19] 
       (.C(s_axi_aclk),
        .CE(\gpregsm1.curr_fwft_state_reg[1] ),
        .D(\gpr1.dout_i_reg[19]_i_1_n_0 ),
        .Q(\goreg_dm.dout_i_reg[22] [19]),
        .R(SR));
  MUXF8 \gpr1.dout_i_reg[19]_i_1 
       (.I0(\gpr1.dout_i_reg[19]_i_2_n_0 ),
        .I1(\gpr1.dout_i_reg[19]_i_3_n_0 ),
        .O(\gpr1.dout_i_reg[19]_i_1_n_0 ),
        .S(Q[9]));
  MUXF7 \gpr1.dout_i_reg[19]_i_2 
       (.I0(\gpr1.dout_i[19]_i_4_n_0 ),
        .I1(\gpr1.dout_i[19]_i_5_n_0 ),
        .O(\gpr1.dout_i_reg[19]_i_2_n_0 ),
        .S(Q[8]));
  MUXF7 \gpr1.dout_i_reg[19]_i_3 
       (.I0(\gpr1.dout_i[19]_i_6_n_0 ),
        .I1(\gpr1.dout_i[19]_i_7_n_0 ),
        .O(\gpr1.dout_i_reg[19]_i_3_n_0 ),
        .S(Q[8]));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[1] 
       (.C(s_axi_aclk),
        .CE(\gpregsm1.curr_fwft_state_reg[1] ),
        .D(\gpr1.dout_i_reg[1]_i_1_n_0 ),
        .Q(\goreg_dm.dout_i_reg[22] [1]),
        .R(SR));
  MUXF8 \gpr1.dout_i_reg[1]_i_1 
       (.I0(\gpr1.dout_i_reg[1]_i_2_n_0 ),
        .I1(\gpr1.dout_i_reg[1]_i_3_n_0 ),
        .O(\gpr1.dout_i_reg[1]_i_1_n_0 ),
        .S(Q[9]));
  MUXF7 \gpr1.dout_i_reg[1]_i_2 
       (.I0(\gpr1.dout_i[1]_i_4_n_0 ),
        .I1(\gpr1.dout_i[1]_i_5_n_0 ),
        .O(\gpr1.dout_i_reg[1]_i_2_n_0 ),
        .S(Q[8]));
  MUXF7 \gpr1.dout_i_reg[1]_i_3 
       (.I0(\gpr1.dout_i[1]_i_6_n_0 ),
        .I1(\gpr1.dout_i[1]_i_7_n_0 ),
        .O(\gpr1.dout_i_reg[1]_i_3_n_0 ),
        .S(Q[8]));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[20] 
       (.C(s_axi_aclk),
        .CE(\gpregsm1.curr_fwft_state_reg[1] ),
        .D(\gpr1.dout_i_reg[20]_i_1_n_0 ),
        .Q(\goreg_dm.dout_i_reg[22] [20]),
        .R(SR));
  MUXF8 \gpr1.dout_i_reg[20]_i_1 
       (.I0(\gpr1.dout_i_reg[20]_i_2_n_0 ),
        .I1(\gpr1.dout_i_reg[20]_i_3_n_0 ),
        .O(\gpr1.dout_i_reg[20]_i_1_n_0 ),
        .S(Q[9]));
  MUXF7 \gpr1.dout_i_reg[20]_i_2 
       (.I0(\gpr1.dout_i[20]_i_4_n_0 ),
        .I1(\gpr1.dout_i[20]_i_5_n_0 ),
        .O(\gpr1.dout_i_reg[20]_i_2_n_0 ),
        .S(Q[8]));
  MUXF7 \gpr1.dout_i_reg[20]_i_3 
       (.I0(\gpr1.dout_i[20]_i_6_n_0 ),
        .I1(\gpr1.dout_i[20]_i_7_n_0 ),
        .O(\gpr1.dout_i_reg[20]_i_3_n_0 ),
        .S(Q[8]));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[21] 
       (.C(s_axi_aclk),
        .CE(\gpregsm1.curr_fwft_state_reg[1] ),
        .D(\gpr1.dout_i_reg[21]_i_1_n_0 ),
        .Q(\goreg_dm.dout_i_reg[22] [21]),
        .R(SR));
  MUXF8 \gpr1.dout_i_reg[21]_i_1 
       (.I0(\gpr1.dout_i_reg[21]_i_2_n_0 ),
        .I1(\gpr1.dout_i_reg[21]_i_3_n_0 ),
        .O(\gpr1.dout_i_reg[21]_i_1_n_0 ),
        .S(Q[9]));
  MUXF7 \gpr1.dout_i_reg[21]_i_2 
       (.I0(\gpr1.dout_i[21]_i_4_n_0 ),
        .I1(\gpr1.dout_i[21]_i_5_n_0 ),
        .O(\gpr1.dout_i_reg[21]_i_2_n_0 ),
        .S(Q[8]));
  MUXF7 \gpr1.dout_i_reg[21]_i_3 
       (.I0(\gpr1.dout_i[21]_i_6_n_0 ),
        .I1(\gpr1.dout_i[21]_i_7_n_0 ),
        .O(\gpr1.dout_i_reg[21]_i_3_n_0 ),
        .S(Q[8]));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[22] 
       (.C(s_axi_aclk),
        .CE(\gpregsm1.curr_fwft_state_reg[1] ),
        .D(\gpr1.dout_i_reg[22]_i_2_n_0 ),
        .Q(\goreg_dm.dout_i_reg[22] [22]),
        .R(SR));
  MUXF8 \gpr1.dout_i_reg[22]_i_2 
       (.I0(\gpr1.dout_i_reg[22]_i_3_n_0 ),
        .I1(\gpr1.dout_i_reg[22]_i_4_n_0 ),
        .O(\gpr1.dout_i_reg[22]_i_2_n_0 ),
        .S(Q[9]));
  MUXF7 \gpr1.dout_i_reg[22]_i_3 
       (.I0(\gpr1.dout_i[22]_i_5_n_0 ),
        .I1(\gpr1.dout_i[22]_i_6_n_0 ),
        .O(\gpr1.dout_i_reg[22]_i_3_n_0 ),
        .S(Q[8]));
  MUXF7 \gpr1.dout_i_reg[22]_i_4 
       (.I0(\gpr1.dout_i[22]_i_7_n_0 ),
        .I1(\gpr1.dout_i[22]_i_8_n_0 ),
        .O(\gpr1.dout_i_reg[22]_i_4_n_0 ),
        .S(Q[8]));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[2] 
       (.C(s_axi_aclk),
        .CE(\gpregsm1.curr_fwft_state_reg[1] ),
        .D(\gpr1.dout_i_reg[2]_i_1_n_0 ),
        .Q(\goreg_dm.dout_i_reg[22] [2]),
        .R(SR));
  MUXF8 \gpr1.dout_i_reg[2]_i_1 
       (.I0(\gpr1.dout_i_reg[2]_i_2_n_0 ),
        .I1(\gpr1.dout_i_reg[2]_i_3_n_0 ),
        .O(\gpr1.dout_i_reg[2]_i_1_n_0 ),
        .S(Q[9]));
  MUXF7 \gpr1.dout_i_reg[2]_i_2 
       (.I0(\gpr1.dout_i[2]_i_4_n_0 ),
        .I1(\gpr1.dout_i[2]_i_5_n_0 ),
        .O(\gpr1.dout_i_reg[2]_i_2_n_0 ),
        .S(Q[8]));
  MUXF7 \gpr1.dout_i_reg[2]_i_3 
       (.I0(\gpr1.dout_i[2]_i_6_n_0 ),
        .I1(\gpr1.dout_i[2]_i_7_n_0 ),
        .O(\gpr1.dout_i_reg[2]_i_3_n_0 ),
        .S(Q[8]));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[3] 
       (.C(s_axi_aclk),
        .CE(\gpregsm1.curr_fwft_state_reg[1] ),
        .D(\gpr1.dout_i_reg[3]_i_1_n_0 ),
        .Q(\goreg_dm.dout_i_reg[22] [3]),
        .R(SR));
  MUXF8 \gpr1.dout_i_reg[3]_i_1 
       (.I0(\gpr1.dout_i_reg[3]_i_2_n_0 ),
        .I1(\gpr1.dout_i_reg[3]_i_3_n_0 ),
        .O(\gpr1.dout_i_reg[3]_i_1_n_0 ),
        .S(Q[9]));
  MUXF7 \gpr1.dout_i_reg[3]_i_2 
       (.I0(\gpr1.dout_i[3]_i_4_n_0 ),
        .I1(\gpr1.dout_i[3]_i_5_n_0 ),
        .O(\gpr1.dout_i_reg[3]_i_2_n_0 ),
        .S(Q[8]));
  MUXF7 \gpr1.dout_i_reg[3]_i_3 
       (.I0(\gpr1.dout_i[3]_i_6_n_0 ),
        .I1(\gpr1.dout_i[3]_i_7_n_0 ),
        .O(\gpr1.dout_i_reg[3]_i_3_n_0 ),
        .S(Q[8]));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[4] 
       (.C(s_axi_aclk),
        .CE(\gpregsm1.curr_fwft_state_reg[1] ),
        .D(\gpr1.dout_i_reg[4]_i_1_n_0 ),
        .Q(\goreg_dm.dout_i_reg[22] [4]),
        .R(SR));
  MUXF8 \gpr1.dout_i_reg[4]_i_1 
       (.I0(\gpr1.dout_i_reg[4]_i_2_n_0 ),
        .I1(\gpr1.dout_i_reg[4]_i_3_n_0 ),
        .O(\gpr1.dout_i_reg[4]_i_1_n_0 ),
        .S(Q[9]));
  MUXF7 \gpr1.dout_i_reg[4]_i_2 
       (.I0(\gpr1.dout_i[4]_i_4_n_0 ),
        .I1(\gpr1.dout_i[4]_i_5_n_0 ),
        .O(\gpr1.dout_i_reg[4]_i_2_n_0 ),
        .S(Q[8]));
  MUXF7 \gpr1.dout_i_reg[4]_i_3 
       (.I0(\gpr1.dout_i[4]_i_6_n_0 ),
        .I1(\gpr1.dout_i[4]_i_7_n_0 ),
        .O(\gpr1.dout_i_reg[4]_i_3_n_0 ),
        .S(Q[8]));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[5] 
       (.C(s_axi_aclk),
        .CE(\gpregsm1.curr_fwft_state_reg[1] ),
        .D(\gpr1.dout_i_reg[5]_i_1_n_0 ),
        .Q(\goreg_dm.dout_i_reg[22] [5]),
        .R(SR));
  MUXF8 \gpr1.dout_i_reg[5]_i_1 
       (.I0(\gpr1.dout_i_reg[5]_i_2_n_0 ),
        .I1(\gpr1.dout_i_reg[5]_i_3_n_0 ),
        .O(\gpr1.dout_i_reg[5]_i_1_n_0 ),
        .S(Q[9]));
  MUXF7 \gpr1.dout_i_reg[5]_i_2 
       (.I0(\gpr1.dout_i[5]_i_4_n_0 ),
        .I1(\gpr1.dout_i[5]_i_5_n_0 ),
        .O(\gpr1.dout_i_reg[5]_i_2_n_0 ),
        .S(Q[8]));
  MUXF7 \gpr1.dout_i_reg[5]_i_3 
       (.I0(\gpr1.dout_i[5]_i_6_n_0 ),
        .I1(\gpr1.dout_i[5]_i_7_n_0 ),
        .O(\gpr1.dout_i_reg[5]_i_3_n_0 ),
        .S(Q[8]));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[6] 
       (.C(s_axi_aclk),
        .CE(\gpregsm1.curr_fwft_state_reg[1] ),
        .D(\gpr1.dout_i_reg[6]_i_1_n_0 ),
        .Q(\goreg_dm.dout_i_reg[22] [6]),
        .R(SR));
  MUXF8 \gpr1.dout_i_reg[6]_i_1 
       (.I0(\gpr1.dout_i_reg[6]_i_2_n_0 ),
        .I1(\gpr1.dout_i_reg[6]_i_3_n_0 ),
        .O(\gpr1.dout_i_reg[6]_i_1_n_0 ),
        .S(Q[9]));
  MUXF7 \gpr1.dout_i_reg[6]_i_2 
       (.I0(\gpr1.dout_i[6]_i_4_n_0 ),
        .I1(\gpr1.dout_i[6]_i_5_n_0 ),
        .O(\gpr1.dout_i_reg[6]_i_2_n_0 ),
        .S(Q[8]));
  MUXF7 \gpr1.dout_i_reg[6]_i_3 
       (.I0(\gpr1.dout_i[6]_i_6_n_0 ),
        .I1(\gpr1.dout_i[6]_i_7_n_0 ),
        .O(\gpr1.dout_i_reg[6]_i_3_n_0 ),
        .S(Q[8]));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[7] 
       (.C(s_axi_aclk),
        .CE(\gpregsm1.curr_fwft_state_reg[1] ),
        .D(\gpr1.dout_i_reg[7]_i_1_n_0 ),
        .Q(\goreg_dm.dout_i_reg[22] [7]),
        .R(SR));
  MUXF8 \gpr1.dout_i_reg[7]_i_1 
       (.I0(\gpr1.dout_i_reg[7]_i_2_n_0 ),
        .I1(\gpr1.dout_i_reg[7]_i_3_n_0 ),
        .O(\gpr1.dout_i_reg[7]_i_1_n_0 ),
        .S(Q[9]));
  MUXF7 \gpr1.dout_i_reg[7]_i_2 
       (.I0(\gpr1.dout_i[7]_i_4_n_0 ),
        .I1(\gpr1.dout_i[7]_i_5_n_0 ),
        .O(\gpr1.dout_i_reg[7]_i_2_n_0 ),
        .S(Q[8]));
  MUXF7 \gpr1.dout_i_reg[7]_i_3 
       (.I0(\gpr1.dout_i[7]_i_6_n_0 ),
        .I1(\gpr1.dout_i[7]_i_7_n_0 ),
        .O(\gpr1.dout_i_reg[7]_i_3_n_0 ),
        .S(Q[8]));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[8] 
       (.C(s_axi_aclk),
        .CE(\gpregsm1.curr_fwft_state_reg[1] ),
        .D(\gpr1.dout_i_reg[8]_i_1_n_0 ),
        .Q(\goreg_dm.dout_i_reg[22] [8]),
        .R(SR));
  MUXF8 \gpr1.dout_i_reg[8]_i_1 
       (.I0(\gpr1.dout_i_reg[8]_i_2_n_0 ),
        .I1(\gpr1.dout_i_reg[8]_i_3_n_0 ),
        .O(\gpr1.dout_i_reg[8]_i_1_n_0 ),
        .S(Q[9]));
  MUXF7 \gpr1.dout_i_reg[8]_i_2 
       (.I0(\gpr1.dout_i[8]_i_4_n_0 ),
        .I1(\gpr1.dout_i[8]_i_5_n_0 ),
        .O(\gpr1.dout_i_reg[8]_i_2_n_0 ),
        .S(Q[8]));
  MUXF7 \gpr1.dout_i_reg[8]_i_3 
       (.I0(\gpr1.dout_i[8]_i_6_n_0 ),
        .I1(\gpr1.dout_i[8]_i_7_n_0 ),
        .O(\gpr1.dout_i_reg[8]_i_3_n_0 ),
        .S(Q[8]));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[9] 
       (.C(s_axi_aclk),
        .CE(\gpregsm1.curr_fwft_state_reg[1] ),
        .D(\gpr1.dout_i_reg[9]_i_1_n_0 ),
        .Q(\goreg_dm.dout_i_reg[22] [9]),
        .R(SR));
  MUXF8 \gpr1.dout_i_reg[9]_i_1 
       (.I0(\gpr1.dout_i_reg[9]_i_2_n_0 ),
        .I1(\gpr1.dout_i_reg[9]_i_3_n_0 ),
        .O(\gpr1.dout_i_reg[9]_i_1_n_0 ),
        .S(Q[9]));
  MUXF7 \gpr1.dout_i_reg[9]_i_2 
       (.I0(\gpr1.dout_i[9]_i_4_n_0 ),
        .I1(\gpr1.dout_i[9]_i_5_n_0 ),
        .O(\gpr1.dout_i_reg[9]_i_2_n_0 ),
        .S(Q[8]));
  MUXF7 \gpr1.dout_i_reg[9]_i_3 
       (.I0(\gpr1.dout_i[9]_i_6_n_0 ),
        .I1(\gpr1.dout_i[9]_i_7_n_0 ),
        .O(\gpr1.dout_i_reg[9]_i_3_n_0 ),
        .S(Q[8]));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_1_2_fifo_generator_ramfifo
   (in0,
    out,
    \sig_register_array[0]1_in ,
    \sig_ip2bus_data_reg[25] ,
    D,
    \sig_ip2bus_data_reg[9] ,
    s_axi_aclk,
    rx_fg_len_empty_d1,
    ram_full_i,
    axi_str_rxd_tvalid,
    axi_str_rxd_tlast,
    E,
    \grxd.rx_partial_pkt_reg ,
    Q,
    \count_reg[7] ,
    \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3] ,
    \count_reg[11] ,
    sig_rd_rlen_reg,
    rx_len_wr_en,
    sig_rx_channel_reset_reg,
    Axi_Str_TxD_AReset,
    s_axi_aresetn,
    \GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9] ,
    empty_fwft_i_reg,
    \GEN_BKEND_CE_REGISTERS[4].ce_out_i_reg[4] ,
    fg_rxd_wr_length);
  output in0;
  output out;
  output \sig_register_array[0]1_in ;
  output \sig_ip2bus_data_reg[25] ;
  output [5:0]D;
  output [15:0]\sig_ip2bus_data_reg[9] ;
  input s_axi_aclk;
  input rx_fg_len_empty_d1;
  input ram_full_i;
  input axi_str_rxd_tvalid;
  input axi_str_rxd_tlast;
  input [0:0]E;
  input \grxd.rx_partial_pkt_reg ;
  input [4:0]Q;
  input \count_reg[7] ;
  input \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3] ;
  input \count_reg[11] ;
  input sig_rd_rlen_reg;
  input rx_len_wr_en;
  input sig_rx_channel_reset_reg;
  input Axi_Str_TxD_AReset;
  input s_axi_aresetn;
  input \GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9] ;
  input empty_fwft_i_reg;
  input \GEN_BKEND_CE_REGISTERS[4].ce_out_i_reg[4] ;
  input [19:0]fg_rxd_wr_length;

  wire Axi_Str_TxD_AReset;
  wire [5:0]D;
  wire [0:0]E;
  wire \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3] ;
  wire \GEN_BKEND_CE_REGISTERS[4].ce_out_i_reg[4] ;
  wire \GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9] ;
  wire [4:0]Q;
  wire axi_str_rxd_tlast;
  wire axi_str_rxd_tvalid;
  wire \count_reg[11] ;
  wire \count_reg[7] ;
  wire empty_fwft_i_reg;
  wire [19:0]fg_rxd_wr_length;
  wire \gntv_or_sync_fifo.gl0.rd_n_19 ;
  wire \gntv_or_sync_fifo.gl0.rd_n_20 ;
  wire \gntv_or_sync_fifo.gl0.rd_n_21 ;
  wire \gntv_or_sync_fifo.gl0.rd_n_22 ;
  wire \gntv_or_sync_fifo.gl0.rd_n_23 ;
  wire \gntv_or_sync_fifo.gl0.rd_n_24 ;
  wire \gntv_or_sync_fifo.gl0.rd_n_31 ;
  wire \gntv_or_sync_fifo.gl0.rd_n_32 ;
  wire \gntv_or_sync_fifo.gl0.rd_n_33 ;
  wire \gntv_or_sync_fifo.gl0.rd_n_34 ;
  wire \gntv_or_sync_fifo.gl0.rd_n_35 ;
  wire \gntv_or_sync_fifo.gl0.rd_n_36 ;
  wire \gntv_or_sync_fifo.gl0.rd_n_37 ;
  wire \gntv_or_sync_fifo.gl0.rd_n_38 ;
  wire \gntv_or_sync_fifo.gl0.rd_n_39 ;
  wire \gntv_or_sync_fifo.gl0.rd_n_40 ;
  wire \gntv_or_sync_fifo.gl0.rd_n_41 ;
  wire \gntv_or_sync_fifo.gl0.rd_n_42 ;
  wire \gntv_or_sync_fifo.gl0.wr_n_11 ;
  wire \gntv_or_sync_fifo.gl0.wr_n_22 ;
  wire \gntv_or_sync_fifo.gl0.wr_n_23 ;
  wire \gntv_or_sync_fifo.gl0.wr_n_24 ;
  wire \gntv_or_sync_fifo.gl0.wr_n_25 ;
  wire \gntv_or_sync_fifo.gl0.wr_n_26 ;
  wire \gntv_or_sync_fifo.gl0.wr_n_27 ;
  wire \gntv_or_sync_fifo.gl0.wr_n_28 ;
  wire \gntv_or_sync_fifo.gl0.wr_n_29 ;
  wire \gntv_or_sync_fifo.gl0.wr_n_30 ;
  wire \gntv_or_sync_fifo.gl0.wr_n_31 ;
  wire \gntv_or_sync_fifo.gl0.wr_n_32 ;
  wire \gntv_or_sync_fifo.gl0.wr_n_33 ;
  wire \gntv_or_sync_fifo.gl0.wr_n_34 ;
  wire \gntv_or_sync_fifo.gl0.wr_n_35 ;
  wire \gntv_or_sync_fifo.gl0.wr_n_36 ;
  wire [4:0]\grss.rsts/c1/v1_reg ;
  wire \grxd.rx_partial_pkt_reg ;
  wire [4:0]\gwss.wsts/c1/v1_reg ;
  wire in0;
  wire out;
  wire [9:0]p_0_out;
  wire [9:0]p_11_out;
  wire [9:0]p_12_out;
  wire p_17_out;
  wire p_5_out;
  wire p_7_out;
  wire ram_full_i;
  wire ram_rd_en_i;
  wire rx_fg_len_empty_d1;
  wire rx_len_wr_en;
  wire s_axi_aclk;
  wire s_axi_aresetn;
  wire \sig_ip2bus_data_reg[25] ;
  wire [15:0]\sig_ip2bus_data_reg[9] ;
  wire sig_rd_rlen_reg;
  wire \sig_register_array[0]1_in ;
  wire sig_rx_channel_reset_reg;
  wire srst_full_ff_i;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_1_2_rd_logic \gntv_or_sync_fifo.gl0.rd 
       (.ADDRG({\gntv_or_sync_fifo.gl0.rd_n_31 ,\gntv_or_sync_fifo.gl0.rd_n_32 ,\gntv_or_sync_fifo.gl0.rd_n_33 ,\gntv_or_sync_fifo.gl0.rd_n_34 ,\gntv_or_sync_fifo.gl0.rd_n_35 ,\gntv_or_sync_fifo.gl0.rd_n_36 }),
        .E(p_17_out),
        .Q(p_0_out),
        .axi_str_rxd_tlast(axi_str_rxd_tlast),
        .axi_str_rxd_tvalid(axi_str_rxd_tvalid),
        .\gcc0.gc0.count_d1_reg[9] (p_11_out),
        .\gcc0.gc0.count_reg[9] (p_12_out),
        .\goreg_dm.dout_i_reg[22] (p_5_out),
        .\gpr1.dout_i_reg[0] (ram_rd_en_i),
        .\gpr1.dout_i_reg[14] ({\gntv_or_sync_fifo.gl0.rd_n_37 ,\gntv_or_sync_fifo.gl0.rd_n_38 ,\gntv_or_sync_fifo.gl0.rd_n_39 ,\gntv_or_sync_fifo.gl0.rd_n_40 ,\gntv_or_sync_fifo.gl0.rd_n_41 ,\gntv_or_sync_fifo.gl0.rd_n_42 }),
        .\gpr1.dout_i_reg[22] (\gntv_or_sync_fifo.gl0.rd_n_19 ),
        .\gpr1.dout_i_reg[22]_0 (\gntv_or_sync_fifo.gl0.rd_n_20 ),
        .\gpr1.dout_i_reg[22]_1 (\gntv_or_sync_fifo.gl0.rd_n_21 ),
        .\gpr1.dout_i_reg[22]_2 (\gntv_or_sync_fifo.gl0.rd_n_22 ),
        .\gpr1.dout_i_reg[22]_3 (\gntv_or_sync_fifo.gl0.rd_n_23 ),
        .\gpr1.dout_i_reg[22]_4 (\gntv_or_sync_fifo.gl0.rd_n_24 ),
        .out(out),
        .p_7_out(p_7_out),
        .ram_full_i(ram_full_i),
        .rx_fg_len_empty_d1(rx_fg_len_empty_d1),
        .s_axi_aclk(s_axi_aclk),
        .sig_rd_rlen_reg(sig_rd_rlen_reg),
        .\sig_register_array[0]1_in (\sig_register_array[0]1_in ),
        .srst_full_ff_i(srst_full_ff_i),
        .v1_reg(\grss.rsts/c1/v1_reg ),
        .v1_reg_0(\gwss.wsts/c1/v1_reg ));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_1_2_wr_logic \gntv_or_sync_fifo.gl0.wr 
       (.E(p_17_out),
        .Q(p_12_out),
        .SR(srst_full_ff_i),
        .\gpr1.dout_i_reg[22] (\gntv_or_sync_fifo.gl0.wr_n_11 ),
        .\gpr1.dout_i_reg[22]_0 (\gntv_or_sync_fifo.gl0.wr_n_22 ),
        .\gpr1.dout_i_reg[22]_1 (\gntv_or_sync_fifo.gl0.wr_n_23 ),
        .\gpr1.dout_i_reg[22]_10 (\gntv_or_sync_fifo.gl0.wr_n_32 ),
        .\gpr1.dout_i_reg[22]_11 (\gntv_or_sync_fifo.gl0.wr_n_33 ),
        .\gpr1.dout_i_reg[22]_12 (\gntv_or_sync_fifo.gl0.wr_n_34 ),
        .\gpr1.dout_i_reg[22]_13 (\gntv_or_sync_fifo.gl0.wr_n_35 ),
        .\gpr1.dout_i_reg[22]_14 (\gntv_or_sync_fifo.gl0.wr_n_36 ),
        .\gpr1.dout_i_reg[22]_2 (\gntv_or_sync_fifo.gl0.wr_n_24 ),
        .\gpr1.dout_i_reg[22]_3 (\gntv_or_sync_fifo.gl0.wr_n_25 ),
        .\gpr1.dout_i_reg[22]_4 (\gntv_or_sync_fifo.gl0.wr_n_26 ),
        .\gpr1.dout_i_reg[22]_5 (\gntv_or_sync_fifo.gl0.wr_n_27 ),
        .\gpr1.dout_i_reg[22]_6 (\gntv_or_sync_fifo.gl0.wr_n_28 ),
        .\gpr1.dout_i_reg[22]_7 (\gntv_or_sync_fifo.gl0.wr_n_29 ),
        .\gpr1.dout_i_reg[22]_8 (\gntv_or_sync_fifo.gl0.wr_n_30 ),
        .\gpr1.dout_i_reg[22]_9 (\gntv_or_sync_fifo.gl0.wr_n_31 ),
        .p_7_out(p_7_out),
        .ram_empty_i_reg(p_11_out),
        .rx_len_wr_en(rx_len_wr_en),
        .s_axi_aclk(s_axi_aclk),
        .v1_reg(\grss.rsts/c1/v1_reg ),
        .v1_reg_0(\gwss.wsts/c1/v1_reg ));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_1_2_memory \gntv_or_sync_fifo.mem 
       (.ADDRG({\gntv_or_sync_fifo.gl0.rd_n_31 ,\gntv_or_sync_fifo.gl0.rd_n_32 ,\gntv_or_sync_fifo.gl0.rd_n_33 ,\gntv_or_sync_fifo.gl0.rd_n_34 ,\gntv_or_sync_fifo.gl0.rd_n_35 ,\gntv_or_sync_fifo.gl0.rd_n_36 }),
        .D(D),
        .E(E),
        .\GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3] (\GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3] ),
        .\GEN_BKEND_CE_REGISTERS[4].ce_out_i_reg[4] (\GEN_BKEND_CE_REGISTERS[4].ce_out_i_reg[4] ),
        .\GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9] (\GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9] ),
        .Q(p_0_out),
        .SR(srst_full_ff_i),
        .axi_str_rxd_tlast(axi_str_rxd_tlast),
        .\count_reg[11] (\count_reg[11] ),
        .\count_reg[12] (Q),
        .\count_reg[7] (\count_reg[7] ),
        .empty_fwft_i_reg(empty_fwft_i_reg),
        .fg_rxd_wr_length(fg_rxd_wr_length),
        .\gc1.count_d2_reg[0]_rep__1 (\gntv_or_sync_fifo.gl0.rd_n_23 ),
        .\gc1.count_d2_reg[1]_rep__1 (\gntv_or_sync_fifo.gl0.rd_n_24 ),
        .\gc1.count_d2_reg[2]_rep__1 (\gntv_or_sync_fifo.gl0.rd_n_21 ),
        .\gc1.count_d2_reg[3]_rep__1 (\gntv_or_sync_fifo.gl0.rd_n_22 ),
        .\gc1.count_d2_reg[4]_rep__1 (\gntv_or_sync_fifo.gl0.rd_n_19 ),
        .\gc1.count_d2_reg[5]_rep__0 ({\gntv_or_sync_fifo.gl0.rd_n_37 ,\gntv_or_sync_fifo.gl0.rd_n_38 ,\gntv_or_sync_fifo.gl0.rd_n_39 ,\gntv_or_sync_fifo.gl0.rd_n_40 ,\gntv_or_sync_fifo.gl0.rd_n_41 ,\gntv_or_sync_fifo.gl0.rd_n_42 }),
        .\gc1.count_d2_reg[5]_rep__1 (\gntv_or_sync_fifo.gl0.rd_n_20 ),
        .\gcc0.gc0.count_d1_reg[5] (p_11_out[5:0]),
        .\gcc0.gc0.count_d1_reg[6] (\gntv_or_sync_fifo.gl0.wr_n_32 ),
        .\gcc0.gc0.count_d1_reg[7] (\gntv_or_sync_fifo.gl0.wr_n_36 ),
        .\gcc0.gc0.count_d1_reg[7]_0 (\gntv_or_sync_fifo.gl0.wr_n_30 ),
        .\gcc0.gc0.count_d1_reg[8] (\gntv_or_sync_fifo.gl0.wr_n_34 ),
        .\gcc0.gc0.count_d1_reg[8]_0 (\gntv_or_sync_fifo.gl0.wr_n_35 ),
        .\gcc0.gc0.count_d1_reg[8]_1 (\gntv_or_sync_fifo.gl0.wr_n_27 ),
        .\gcc0.gc0.count_d1_reg[9] (\gntv_or_sync_fifo.gl0.wr_n_29 ),
        .\gcc0.gc0.count_d1_reg[9]_0 (\gntv_or_sync_fifo.gl0.wr_n_31 ),
        .\gcc0.gc0.count_d1_reg[9]_1 (\gntv_or_sync_fifo.gl0.wr_n_33 ),
        .\gcc0.gc0.count_d1_reg[9]_2 (\gntv_or_sync_fifo.gl0.wr_n_26 ),
        .\gpregsm1.curr_fwft_state_reg[0] (p_5_out),
        .\gpregsm1.curr_fwft_state_reg[1] (ram_rd_en_i),
        .\grxd.rx_partial_pkt_reg (\grxd.rx_partial_pkt_reg ),
        .out(out),
        .ram_full_fb_i_reg(\gntv_or_sync_fifo.gl0.wr_n_23 ),
        .ram_full_fb_i_reg_0(\gntv_or_sync_fifo.gl0.wr_n_24 ),
        .ram_full_fb_i_reg_1(\gntv_or_sync_fifo.gl0.wr_n_25 ),
        .ram_full_fb_i_reg_2(\gntv_or_sync_fifo.gl0.wr_n_11 ),
        .ram_full_fb_i_reg_3(\gntv_or_sync_fifo.gl0.wr_n_22 ),
        .ram_full_fb_i_reg_4(\gntv_or_sync_fifo.gl0.wr_n_28 ),
        .s_axi_aclk(s_axi_aclk),
        .\sig_ip2bus_data_reg[25] (\sig_ip2bus_data_reg[25] ),
        .\sig_ip2bus_data_reg[9] (\sig_ip2bus_data_reg[9] ));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_1_2_reset_blk_ramfifo rstblk
       (.Axi_Str_TxD_AReset(Axi_Str_TxD_AReset),
        .SR(srst_full_ff_i),
        .in0(in0),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_aresetn(s_axi_aresetn),
        .sig_rx_channel_reset_reg(sig_rx_channel_reset_reg));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_1_2_fifo_generator_top
   (in0,
    out,
    \sig_register_array[0]1_in ,
    \sig_ip2bus_data_reg[25] ,
    D,
    \sig_ip2bus_data_reg[9] ,
    s_axi_aclk,
    rx_fg_len_empty_d1,
    ram_full_i,
    axi_str_rxd_tvalid,
    axi_str_rxd_tlast,
    E,
    \grxd.rx_partial_pkt_reg ,
    Q,
    \count_reg[7] ,
    \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3] ,
    \count_reg[11] ,
    sig_rd_rlen_reg,
    rx_len_wr_en,
    sig_rx_channel_reset_reg,
    Axi_Str_TxD_AReset,
    s_axi_aresetn,
    \GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9] ,
    empty_fwft_i_reg,
    \GEN_BKEND_CE_REGISTERS[4].ce_out_i_reg[4] ,
    fg_rxd_wr_length);
  output in0;
  output out;
  output \sig_register_array[0]1_in ;
  output \sig_ip2bus_data_reg[25] ;
  output [5:0]D;
  output [15:0]\sig_ip2bus_data_reg[9] ;
  input s_axi_aclk;
  input rx_fg_len_empty_d1;
  input ram_full_i;
  input axi_str_rxd_tvalid;
  input axi_str_rxd_tlast;
  input [0:0]E;
  input \grxd.rx_partial_pkt_reg ;
  input [4:0]Q;
  input \count_reg[7] ;
  input \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3] ;
  input \count_reg[11] ;
  input sig_rd_rlen_reg;
  input rx_len_wr_en;
  input sig_rx_channel_reset_reg;
  input Axi_Str_TxD_AReset;
  input s_axi_aresetn;
  input \GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9] ;
  input empty_fwft_i_reg;
  input \GEN_BKEND_CE_REGISTERS[4].ce_out_i_reg[4] ;
  input [19:0]fg_rxd_wr_length;

  wire Axi_Str_TxD_AReset;
  wire [5:0]D;
  wire [0:0]E;
  wire \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3] ;
  wire \GEN_BKEND_CE_REGISTERS[4].ce_out_i_reg[4] ;
  wire \GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9] ;
  wire [4:0]Q;
  wire axi_str_rxd_tlast;
  wire axi_str_rxd_tvalid;
  wire \count_reg[11] ;
  wire \count_reg[7] ;
  wire empty_fwft_i_reg;
  wire [19:0]fg_rxd_wr_length;
  wire \grxd.rx_partial_pkt_reg ;
  wire in0;
  wire out;
  wire ram_full_i;
  wire rx_fg_len_empty_d1;
  wire rx_len_wr_en;
  wire s_axi_aclk;
  wire s_axi_aresetn;
  wire \sig_ip2bus_data_reg[25] ;
  wire [15:0]\sig_ip2bus_data_reg[9] ;
  wire sig_rd_rlen_reg;
  wire \sig_register_array[0]1_in ;
  wire sig_rx_channel_reset_reg;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_1_2_fifo_generator_ramfifo \grf.rf 
       (.Axi_Str_TxD_AReset(Axi_Str_TxD_AReset),
        .D(D),
        .E(E),
        .\GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3] (\GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3] ),
        .\GEN_BKEND_CE_REGISTERS[4].ce_out_i_reg[4] (\GEN_BKEND_CE_REGISTERS[4].ce_out_i_reg[4] ),
        .\GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9] (\GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9] ),
        .Q(Q),
        .axi_str_rxd_tlast(axi_str_rxd_tlast),
        .axi_str_rxd_tvalid(axi_str_rxd_tvalid),
        .\count_reg[11] (\count_reg[11] ),
        .\count_reg[7] (\count_reg[7] ),
        .empty_fwft_i_reg(empty_fwft_i_reg),
        .fg_rxd_wr_length(fg_rxd_wr_length),
        .\grxd.rx_partial_pkt_reg (\grxd.rx_partial_pkt_reg ),
        .in0(in0),
        .out(out),
        .ram_full_i(ram_full_i),
        .rx_fg_len_empty_d1(rx_fg_len_empty_d1),
        .rx_len_wr_en(rx_len_wr_en),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_aresetn(s_axi_aresetn),
        .\sig_ip2bus_data_reg[25] (\sig_ip2bus_data_reg[25] ),
        .\sig_ip2bus_data_reg[9] (\sig_ip2bus_data_reg[9] ),
        .sig_rd_rlen_reg(sig_rd_rlen_reg),
        .\sig_register_array[0]1_in (\sig_register_array[0]1_in ),
        .sig_rx_channel_reset_reg(sig_rx_channel_reset_reg));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_1_2_memory
   (\sig_ip2bus_data_reg[25] ,
    D,
    \sig_ip2bus_data_reg[9] ,
    s_axi_aclk,
    fg_rxd_wr_length,
    Q,
    \gcc0.gc0.count_d1_reg[5] ,
    ram_full_fb_i_reg,
    ram_full_fb_i_reg_0,
    ram_full_fb_i_reg_1,
    \gcc0.gc0.count_d1_reg[9] ,
    ram_full_fb_i_reg_2,
    \gcc0.gc0.count_d1_reg[9]_0 ,
    \gcc0.gc0.count_d1_reg[9]_1 ,
    \gcc0.gc0.count_d1_reg[9]_2 ,
    ram_full_fb_i_reg_3,
    \gcc0.gc0.count_d1_reg[8] ,
    \gcc0.gc0.count_d1_reg[8]_0 ,
    \gcc0.gc0.count_d1_reg[8]_1 ,
    \gcc0.gc0.count_d1_reg[7] ,
    \gcc0.gc0.count_d1_reg[7]_0 ,
    \gcc0.gc0.count_d1_reg[6] ,
    ram_full_fb_i_reg_4,
    ADDRG,
    \gc1.count_d2_reg[5]_rep__0 ,
    \gc1.count_d2_reg[0]_rep__1 ,
    \gc1.count_d2_reg[1]_rep__1 ,
    \gc1.count_d2_reg[2]_rep__1 ,
    \gc1.count_d2_reg[3]_rep__1 ,
    \gc1.count_d2_reg[4]_rep__1 ,
    \gc1.count_d2_reg[5]_rep__1 ,
    E,
    axi_str_rxd_tlast,
    \grxd.rx_partial_pkt_reg ,
    \count_reg[12] ,
    out,
    \count_reg[7] ,
    \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3] ,
    \count_reg[11] ,
    \GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9] ,
    empty_fwft_i_reg,
    \GEN_BKEND_CE_REGISTERS[4].ce_out_i_reg[4] ,
    SR,
    \gpregsm1.curr_fwft_state_reg[1] ,
    \gpregsm1.curr_fwft_state_reg[0] );
  output \sig_ip2bus_data_reg[25] ;
  output [5:0]D;
  output [15:0]\sig_ip2bus_data_reg[9] ;
  input s_axi_aclk;
  input [19:0]fg_rxd_wr_length;
  input [9:0]Q;
  input [5:0]\gcc0.gc0.count_d1_reg[5] ;
  input ram_full_fb_i_reg;
  input ram_full_fb_i_reg_0;
  input ram_full_fb_i_reg_1;
  input \gcc0.gc0.count_d1_reg[9] ;
  input ram_full_fb_i_reg_2;
  input \gcc0.gc0.count_d1_reg[9]_0 ;
  input \gcc0.gc0.count_d1_reg[9]_1 ;
  input \gcc0.gc0.count_d1_reg[9]_2 ;
  input ram_full_fb_i_reg_3;
  input \gcc0.gc0.count_d1_reg[8] ;
  input \gcc0.gc0.count_d1_reg[8]_0 ;
  input \gcc0.gc0.count_d1_reg[8]_1 ;
  input \gcc0.gc0.count_d1_reg[7] ;
  input \gcc0.gc0.count_d1_reg[7]_0 ;
  input \gcc0.gc0.count_d1_reg[6] ;
  input ram_full_fb_i_reg_4;
  input [5:0]ADDRG;
  input [5:0]\gc1.count_d2_reg[5]_rep__0 ;
  input \gc1.count_d2_reg[0]_rep__1 ;
  input \gc1.count_d2_reg[1]_rep__1 ;
  input \gc1.count_d2_reg[2]_rep__1 ;
  input \gc1.count_d2_reg[3]_rep__1 ;
  input \gc1.count_d2_reg[4]_rep__1 ;
  input \gc1.count_d2_reg[5]_rep__1 ;
  input [0:0]E;
  input axi_str_rxd_tlast;
  input \grxd.rx_partial_pkt_reg ;
  input [4:0]\count_reg[12] ;
  input out;
  input \count_reg[7] ;
  input \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3] ;
  input \count_reg[11] ;
  input \GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9] ;
  input empty_fwft_i_reg;
  input \GEN_BKEND_CE_REGISTERS[4].ce_out_i_reg[4] ;
  input [0:0]SR;
  input [0:0]\gpregsm1.curr_fwft_state_reg[1] ;
  input [0:0]\gpregsm1.curr_fwft_state_reg[0] ;

  wire [5:0]ADDRG;
  wire [5:0]D;
  wire [0:0]E;
  wire \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3] ;
  wire \GEN_BKEND_CE_REGISTERS[4].ce_out_i_reg[4] ;
  wire \GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9] ;
  wire [9:0]Q;
  wire [0:0]SR;
  wire axi_str_rxd_tlast;
  wire \count_reg[11] ;
  wire [4:0]\count_reg[12] ;
  wire \count_reg[7] ;
  wire [22:0]dout_i;
  wire empty_fwft_i_reg;
  wire [19:0]fg_rxd_wr_length;
  wire \gc1.count_d2_reg[0]_rep__1 ;
  wire \gc1.count_d2_reg[1]_rep__1 ;
  wire \gc1.count_d2_reg[2]_rep__1 ;
  wire \gc1.count_d2_reg[3]_rep__1 ;
  wire \gc1.count_d2_reg[4]_rep__1 ;
  wire [5:0]\gc1.count_d2_reg[5]_rep__0 ;
  wire \gc1.count_d2_reg[5]_rep__1 ;
  wire [5:0]\gcc0.gc0.count_d1_reg[5] ;
  wire \gcc0.gc0.count_d1_reg[6] ;
  wire \gcc0.gc0.count_d1_reg[7] ;
  wire \gcc0.gc0.count_d1_reg[7]_0 ;
  wire \gcc0.gc0.count_d1_reg[8] ;
  wire \gcc0.gc0.count_d1_reg[8]_0 ;
  wire \gcc0.gc0.count_d1_reg[8]_1 ;
  wire \gcc0.gc0.count_d1_reg[9] ;
  wire \gcc0.gc0.count_d1_reg[9]_0 ;
  wire \gcc0.gc0.count_d1_reg[9]_1 ;
  wire \gcc0.gc0.count_d1_reg[9]_2 ;
  wire \goreg_dm.dout_i_reg_n_0_[0] ;
  wire \goreg_dm.dout_i_reg_n_0_[14] ;
  wire \goreg_dm.dout_i_reg_n_0_[16] ;
  wire \goreg_dm.dout_i_reg_n_0_[1] ;
  wire \goreg_dm.dout_i_reg_n_0_[2] ;
  wire \goreg_dm.dout_i_reg_n_0_[3] ;
  wire \goreg_dm.dout_i_reg_n_0_[6] ;
  wire [0:0]\gpregsm1.curr_fwft_state_reg[0] ;
  wire [0:0]\gpregsm1.curr_fwft_state_reg[1] ;
  wire \grxd.rx_partial_pkt_reg ;
  wire out;
  wire ram_full_fb_i_reg;
  wire ram_full_fb_i_reg_0;
  wire ram_full_fb_i_reg_1;
  wire ram_full_fb_i_reg_2;
  wire ram_full_fb_i_reg_3;
  wire ram_full_fb_i_reg_4;
  wire s_axi_aclk;
  wire \sig_ip2bus_data_reg[25] ;
  wire [15:0]\sig_ip2bus_data_reg[9] ;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_1_2_dmem \gdm.dm_gen.dm 
       (.ADDRG(ADDRG),
        .Q(Q),
        .SR(SR),
        .fg_rxd_wr_length(fg_rxd_wr_length),
        .\gc1.count_d2_reg[0]_rep__1 (\gc1.count_d2_reg[0]_rep__1 ),
        .\gc1.count_d2_reg[1]_rep__1 (\gc1.count_d2_reg[1]_rep__1 ),
        .\gc1.count_d2_reg[2]_rep__1 (\gc1.count_d2_reg[2]_rep__1 ),
        .\gc1.count_d2_reg[3]_rep__1 (\gc1.count_d2_reg[3]_rep__1 ),
        .\gc1.count_d2_reg[4]_rep__1 (\gc1.count_d2_reg[4]_rep__1 ),
        .\gc1.count_d2_reg[5]_rep__0 (\gc1.count_d2_reg[5]_rep__0 ),
        .\gc1.count_d2_reg[5]_rep__1 (\gc1.count_d2_reg[5]_rep__1 ),
        .\gcc0.gc0.count_d1_reg[5] (\gcc0.gc0.count_d1_reg[5] ),
        .\gcc0.gc0.count_d1_reg[6] (\gcc0.gc0.count_d1_reg[6] ),
        .\gcc0.gc0.count_d1_reg[7] (\gcc0.gc0.count_d1_reg[7] ),
        .\gcc0.gc0.count_d1_reg[7]_0 (\gcc0.gc0.count_d1_reg[7]_0 ),
        .\gcc0.gc0.count_d1_reg[8] (\gcc0.gc0.count_d1_reg[8] ),
        .\gcc0.gc0.count_d1_reg[8]_0 (\gcc0.gc0.count_d1_reg[8]_0 ),
        .\gcc0.gc0.count_d1_reg[8]_1 (\gcc0.gc0.count_d1_reg[8]_1 ),
        .\gcc0.gc0.count_d1_reg[9] (\gcc0.gc0.count_d1_reg[9] ),
        .\gcc0.gc0.count_d1_reg[9]_0 (\gcc0.gc0.count_d1_reg[9]_0 ),
        .\gcc0.gc0.count_d1_reg[9]_1 (\gcc0.gc0.count_d1_reg[9]_1 ),
        .\gcc0.gc0.count_d1_reg[9]_2 (\gcc0.gc0.count_d1_reg[9]_2 ),
        .\goreg_dm.dout_i_reg[22] (dout_i),
        .\gpregsm1.curr_fwft_state_reg[1] (\gpregsm1.curr_fwft_state_reg[1] ),
        .ram_full_fb_i_reg(ram_full_fb_i_reg),
        .ram_full_fb_i_reg_0(ram_full_fb_i_reg_0),
        .ram_full_fb_i_reg_1(ram_full_fb_i_reg_1),
        .ram_full_fb_i_reg_2(ram_full_fb_i_reg_2),
        .ram_full_fb_i_reg_3(ram_full_fb_i_reg_3),
        .ram_full_fb_i_reg_4(ram_full_fb_i_reg_4),
        .s_axi_aclk(s_axi_aclk));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[0] 
       (.C(s_axi_aclk),
        .CE(\gpregsm1.curr_fwft_state_reg[0] ),
        .D(dout_i[0]),
        .Q(\goreg_dm.dout_i_reg_n_0_[0] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[10] 
       (.C(s_axi_aclk),
        .CE(\gpregsm1.curr_fwft_state_reg[0] ),
        .D(dout_i[10]),
        .Q(\sig_ip2bus_data_reg[9] [5]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[11] 
       (.C(s_axi_aclk),
        .CE(\gpregsm1.curr_fwft_state_reg[0] ),
        .D(dout_i[11]),
        .Q(\sig_ip2bus_data_reg[9] [6]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[12] 
       (.C(s_axi_aclk),
        .CE(\gpregsm1.curr_fwft_state_reg[0] ),
        .D(dout_i[12]),
        .Q(\sig_ip2bus_data_reg[9] [7]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[13] 
       (.C(s_axi_aclk),
        .CE(\gpregsm1.curr_fwft_state_reg[0] ),
        .D(dout_i[13]),
        .Q(\sig_ip2bus_data_reg[9] [8]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[14] 
       (.C(s_axi_aclk),
        .CE(\gpregsm1.curr_fwft_state_reg[0] ),
        .D(dout_i[14]),
        .Q(\goreg_dm.dout_i_reg_n_0_[14] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[15] 
       (.C(s_axi_aclk),
        .CE(\gpregsm1.curr_fwft_state_reg[0] ),
        .D(dout_i[15]),
        .Q(\sig_ip2bus_data_reg[9] [9]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[16] 
       (.C(s_axi_aclk),
        .CE(\gpregsm1.curr_fwft_state_reg[0] ),
        .D(dout_i[16]),
        .Q(\goreg_dm.dout_i_reg_n_0_[16] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[17] 
       (.C(s_axi_aclk),
        .CE(\gpregsm1.curr_fwft_state_reg[0] ),
        .D(dout_i[17]),
        .Q(\sig_ip2bus_data_reg[9] [10]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[18] 
       (.C(s_axi_aclk),
        .CE(\gpregsm1.curr_fwft_state_reg[0] ),
        .D(dout_i[18]),
        .Q(\sig_ip2bus_data_reg[9] [11]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[19] 
       (.C(s_axi_aclk),
        .CE(\gpregsm1.curr_fwft_state_reg[0] ),
        .D(dout_i[19]),
        .Q(\sig_ip2bus_data_reg[9] [12]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[1] 
       (.C(s_axi_aclk),
        .CE(\gpregsm1.curr_fwft_state_reg[0] ),
        .D(dout_i[1]),
        .Q(\goreg_dm.dout_i_reg_n_0_[1] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[20] 
       (.C(s_axi_aclk),
        .CE(\gpregsm1.curr_fwft_state_reg[0] ),
        .D(dout_i[20]),
        .Q(\sig_ip2bus_data_reg[9] [13]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[21] 
       (.C(s_axi_aclk),
        .CE(\gpregsm1.curr_fwft_state_reg[0] ),
        .D(dout_i[21]),
        .Q(\sig_ip2bus_data_reg[9] [14]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[22] 
       (.C(s_axi_aclk),
        .CE(\gpregsm1.curr_fwft_state_reg[0] ),
        .D(dout_i[22]),
        .Q(\sig_ip2bus_data_reg[9] [15]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[2] 
       (.C(s_axi_aclk),
        .CE(\gpregsm1.curr_fwft_state_reg[0] ),
        .D(dout_i[2]),
        .Q(\goreg_dm.dout_i_reg_n_0_[2] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[3] 
       (.C(s_axi_aclk),
        .CE(\gpregsm1.curr_fwft_state_reg[0] ),
        .D(dout_i[3]),
        .Q(\goreg_dm.dout_i_reg_n_0_[3] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[4] 
       (.C(s_axi_aclk),
        .CE(\gpregsm1.curr_fwft_state_reg[0] ),
        .D(dout_i[4]),
        .Q(\sig_ip2bus_data_reg[9] [0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[5] 
       (.C(s_axi_aclk),
        .CE(\gpregsm1.curr_fwft_state_reg[0] ),
        .D(dout_i[5]),
        .Q(\sig_ip2bus_data_reg[9] [1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[6] 
       (.C(s_axi_aclk),
        .CE(\gpregsm1.curr_fwft_state_reg[0] ),
        .D(dout_i[6]),
        .Q(\goreg_dm.dout_i_reg_n_0_[6] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[7] 
       (.C(s_axi_aclk),
        .CE(\gpregsm1.curr_fwft_state_reg[0] ),
        .D(dout_i[7]),
        .Q(\sig_ip2bus_data_reg[9] [2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[8] 
       (.C(s_axi_aclk),
        .CE(\gpregsm1.curr_fwft_state_reg[0] ),
        .D(dout_i[8]),
        .Q(\sig_ip2bus_data_reg[9] [3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[9] 
       (.C(s_axi_aclk),
        .CE(\gpregsm1.curr_fwft_state_reg[0] ),
        .D(dout_i[9]),
        .Q(\sig_ip2bus_data_reg[9] [4]),
        .R(SR));
  LUT5 #(
    .INIT(32'hC3AA0000)) 
    \sig_ip2bus_data[15]_i_1 
       (.I0(\goreg_dm.dout_i_reg_n_0_[16] ),
        .I1(\count_reg[12] [4]),
        .I2(\count_reg[11] ),
        .I3(out),
        .I4(\GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3] ),
        .O(D[5]));
  LUT4 #(
    .INIT(16'h3A00)) 
    \sig_ip2bus_data[17]_i_1 
       (.I0(\goreg_dm.dout_i_reg_n_0_[14] ),
        .I1(\count_reg[7] ),
        .I2(out),
        .I3(\GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3] ),
        .O(D[4]));
  LUT6 #(
    .INIT(64'h3F00C0FFAAAAAAAA)) 
    \sig_ip2bus_data[25]_i_2 
       (.I0(\goreg_dm.dout_i_reg_n_0_[6] ),
        .I1(E),
        .I2(axi_str_rxd_tlast),
        .I3(\grxd.rx_partial_pkt_reg ),
        .I4(\count_reg[12] [2]),
        .I5(out),
        .O(\sig_ip2bus_data_reg[25] ));
  LUT6 #(
    .INIT(64'hFF20202000000000)) 
    \sig_ip2bus_data[28]_i_1 
       (.I0(\goreg_dm.dout_i_reg_n_0_[3] ),
        .I1(out),
        .I2(\GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9] ),
        .I3(\count_reg[12] [3]),
        .I4(empty_fwft_i_reg),
        .I5(\GEN_BKEND_CE_REGISTERS[4].ce_out_i_reg[4] ),
        .O(D[3]));
  LUT6 #(
    .INIT(64'hFF20202000000000)) 
    \sig_ip2bus_data[29]_i_1 
       (.I0(\goreg_dm.dout_i_reg_n_0_[2] ),
        .I1(out),
        .I2(\GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9] ),
        .I3(\count_reg[12] [2]),
        .I4(empty_fwft_i_reg),
        .I5(\GEN_BKEND_CE_REGISTERS[4].ce_out_i_reg[4] ),
        .O(D[2]));
  LUT6 #(
    .INIT(64'hFF20202000000000)) 
    \sig_ip2bus_data[30]_i_1 
       (.I0(\goreg_dm.dout_i_reg_n_0_[1] ),
        .I1(out),
        .I2(\GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9] ),
        .I3(\count_reg[12] [1]),
        .I4(empty_fwft_i_reg),
        .I5(\GEN_BKEND_CE_REGISTERS[4].ce_out_i_reg[4] ),
        .O(D[1]));
  LUT6 #(
    .INIT(64'hFF20202000000000)) 
    \sig_ip2bus_data[31]_i_1 
       (.I0(\goreg_dm.dout_i_reg_n_0_[0] ),
        .I1(out),
        .I2(\GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9] ),
        .I3(\count_reg[12] [0]),
        .I4(empty_fwft_i_reg),
        .I5(\GEN_BKEND_CE_REGISTERS[4].ce_out_i_reg[4] ),
        .O(D[0]));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_1_2_rd_bin_cntr
   (v1_reg,
    Q,
    \gpr1.dout_i_reg[22] ,
    \gpr1.dout_i_reg[22]_0 ,
    \gpr1.dout_i_reg[22]_1 ,
    \gpr1.dout_i_reg[22]_2 ,
    \gpr1.dout_i_reg[22]_3 ,
    \gpr1.dout_i_reg[22]_4 ,
    v1_reg_1,
    v1_reg_0,
    ram_empty_i_reg,
    ram_empty_i_reg_0,
    ram_empty_i_reg_1,
    ram_empty_i_reg_2,
    ram_empty_i_reg_3,
    ADDRG,
    \gpr1.dout_i_reg[14] ,
    \gcc0.gc0.count_d1_reg[9] ,
    \gcc0.gc0.count_reg[9] ,
    srst_full_ff_i,
    E,
    s_axi_aclk);
  output [4:0]v1_reg;
  output [9:0]Q;
  output \gpr1.dout_i_reg[22] ;
  output \gpr1.dout_i_reg[22]_0 ;
  output \gpr1.dout_i_reg[22]_1 ;
  output \gpr1.dout_i_reg[22]_2 ;
  output \gpr1.dout_i_reg[22]_3 ;
  output \gpr1.dout_i_reg[22]_4 ;
  output [4:0]v1_reg_1;
  output [4:0]v1_reg_0;
  output ram_empty_i_reg;
  output ram_empty_i_reg_0;
  output ram_empty_i_reg_1;
  output ram_empty_i_reg_2;
  output ram_empty_i_reg_3;
  output [5:0]ADDRG;
  output [5:0]\gpr1.dout_i_reg[14] ;
  input [9:0]\gcc0.gc0.count_d1_reg[9] ;
  input [9:0]\gcc0.gc0.count_reg[9] ;
  input srst_full_ff_i;
  input [0:0]E;
  input s_axi_aclk;

  wire [5:0]ADDRG;
  wire [0:0]E;
  wire [9:0]Q;
  wire \gc1.count[9]_i_2_n_0 ;
  wire [9:0]\gcc0.gc0.count_d1_reg[9] ;
  wire [9:0]\gcc0.gc0.count_reg[9] ;
  wire [5:0]\gpr1.dout_i_reg[14] ;
  wire \gpr1.dout_i_reg[22] ;
  wire \gpr1.dout_i_reg[22]_0 ;
  wire \gpr1.dout_i_reg[22]_1 ;
  wire \gpr1.dout_i_reg[22]_2 ;
  wire \gpr1.dout_i_reg[22]_3 ;
  wire \gpr1.dout_i_reg[22]_4 ;
  wire [9:0]plusOp__1;
  wire ram_empty_i_reg;
  wire ram_empty_i_reg_0;
  wire ram_empty_i_reg_1;
  wire ram_empty_i_reg_2;
  wire ram_empty_i_reg_3;
  wire [9:0]rd_pntr_plus1;
  wire [9:0]rd_pntr_plus2;
  wire s_axi_aclk;
  wire srst_full_ff_i;
  wire [4:0]v1_reg;
  wire [4:0]v1_reg_0;
  wire [4:0]v1_reg_1;

  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \gc1.count[0]_i_1 
       (.I0(rd_pntr_plus2[0]),
        .O(plusOp__1[0]));
  LUT2 #(
    .INIT(4'h6)) 
    \gc1.count[1]_i_1 
       (.I0(rd_pntr_plus2[0]),
        .I1(rd_pntr_plus2[1]),
        .O(plusOp__1[1]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \gc1.count[2]_i_1 
       (.I0(rd_pntr_plus2[0]),
        .I1(rd_pntr_plus2[1]),
        .I2(rd_pntr_plus2[2]),
        .O(plusOp__1[2]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \gc1.count[3]_i_1 
       (.I0(rd_pntr_plus2[1]),
        .I1(rd_pntr_plus2[0]),
        .I2(rd_pntr_plus2[2]),
        .I3(rd_pntr_plus2[3]),
        .O(plusOp__1[3]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \gc1.count[4]_i_1 
       (.I0(rd_pntr_plus2[2]),
        .I1(rd_pntr_plus2[0]),
        .I2(rd_pntr_plus2[1]),
        .I3(rd_pntr_plus2[3]),
        .I4(rd_pntr_plus2[4]),
        .O(plusOp__1[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \gc1.count[5]_i_1 
       (.I0(rd_pntr_plus2[3]),
        .I1(rd_pntr_plus2[1]),
        .I2(rd_pntr_plus2[0]),
        .I3(rd_pntr_plus2[2]),
        .I4(rd_pntr_plus2[4]),
        .I5(rd_pntr_plus2[5]),
        .O(plusOp__1[5]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \gc1.count[6]_i_1 
       (.I0(\gc1.count[9]_i_2_n_0 ),
        .I1(rd_pntr_plus2[6]),
        .O(plusOp__1[6]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \gc1.count[7]_i_1 
       (.I0(\gc1.count[9]_i_2_n_0 ),
        .I1(rd_pntr_plus2[6]),
        .I2(rd_pntr_plus2[7]),
        .O(plusOp__1[7]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \gc1.count[8]_i_1 
       (.I0(rd_pntr_plus2[6]),
        .I1(\gc1.count[9]_i_2_n_0 ),
        .I2(rd_pntr_plus2[7]),
        .I3(rd_pntr_plus2[8]),
        .O(plusOp__1[8]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \gc1.count[9]_i_1 
       (.I0(rd_pntr_plus2[7]),
        .I1(\gc1.count[9]_i_2_n_0 ),
        .I2(rd_pntr_plus2[6]),
        .I3(rd_pntr_plus2[8]),
        .I4(rd_pntr_plus2[9]),
        .O(plusOp__1[9]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \gc1.count[9]_i_2 
       (.I0(rd_pntr_plus2[5]),
        .I1(rd_pntr_plus2[3]),
        .I2(rd_pntr_plus2[1]),
        .I3(rd_pntr_plus2[0]),
        .I4(rd_pntr_plus2[2]),
        .I5(rd_pntr_plus2[4]),
        .O(\gc1.count[9]_i_2_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \gc1.count_d1_reg[0] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(rd_pntr_plus2[0]),
        .Q(rd_pntr_plus1[0]),
        .S(srst_full_ff_i));
  FDRE #(
    .INIT(1'b0)) 
    \gc1.count_d1_reg[1] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(rd_pntr_plus2[1]),
        .Q(rd_pntr_plus1[1]),
        .R(srst_full_ff_i));
  FDRE #(
    .INIT(1'b0)) 
    \gc1.count_d1_reg[2] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(rd_pntr_plus2[2]),
        .Q(rd_pntr_plus1[2]),
        .R(srst_full_ff_i));
  FDRE #(
    .INIT(1'b0)) 
    \gc1.count_d1_reg[3] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(rd_pntr_plus2[3]),
        .Q(rd_pntr_plus1[3]),
        .R(srst_full_ff_i));
  FDRE #(
    .INIT(1'b0)) 
    \gc1.count_d1_reg[4] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(rd_pntr_plus2[4]),
        .Q(rd_pntr_plus1[4]),
        .R(srst_full_ff_i));
  FDRE #(
    .INIT(1'b0)) 
    \gc1.count_d1_reg[5] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(rd_pntr_plus2[5]),
        .Q(rd_pntr_plus1[5]),
        .R(srst_full_ff_i));
  FDRE #(
    .INIT(1'b0)) 
    \gc1.count_d1_reg[6] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(rd_pntr_plus2[6]),
        .Q(rd_pntr_plus1[6]),
        .R(srst_full_ff_i));
  FDRE #(
    .INIT(1'b0)) 
    \gc1.count_d1_reg[7] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(rd_pntr_plus2[7]),
        .Q(rd_pntr_plus1[7]),
        .R(srst_full_ff_i));
  FDRE #(
    .INIT(1'b0)) 
    \gc1.count_d1_reg[8] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(rd_pntr_plus2[8]),
        .Q(rd_pntr_plus1[8]),
        .R(srst_full_ff_i));
  FDRE #(
    .INIT(1'b0)) 
    \gc1.count_d1_reg[9] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(rd_pntr_plus2[9]),
        .Q(rd_pntr_plus1[9]),
        .R(srst_full_ff_i));
  (* ORIG_CELL_NAME = "gc1.count_d2_reg[0]" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gc1.count_d2_reg[0] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(rd_pntr_plus1[0]),
        .Q(Q[0]),
        .R(srst_full_ff_i));
  (* ORIG_CELL_NAME = "gc1.count_d2_reg[0]" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gc1.count_d2_reg[0]_rep 
       (.C(s_axi_aclk),
        .CE(E),
        .D(rd_pntr_plus1[0]),
        .Q(ADDRG[0]),
        .R(srst_full_ff_i));
  (* ORIG_CELL_NAME = "gc1.count_d2_reg[0]" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gc1.count_d2_reg[0]_rep__0 
       (.C(s_axi_aclk),
        .CE(E),
        .D(rd_pntr_plus1[0]),
        .Q(\gpr1.dout_i_reg[14] [0]),
        .R(srst_full_ff_i));
  (* ORIG_CELL_NAME = "gc1.count_d2_reg[0]" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gc1.count_d2_reg[0]_rep__1 
       (.C(s_axi_aclk),
        .CE(E),
        .D(rd_pntr_plus1[0]),
        .Q(\gpr1.dout_i_reg[22]_3 ),
        .R(srst_full_ff_i));
  (* ORIG_CELL_NAME = "gc1.count_d2_reg[1]" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gc1.count_d2_reg[1] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(rd_pntr_plus1[1]),
        .Q(Q[1]),
        .R(srst_full_ff_i));
  (* ORIG_CELL_NAME = "gc1.count_d2_reg[1]" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gc1.count_d2_reg[1]_rep 
       (.C(s_axi_aclk),
        .CE(E),
        .D(rd_pntr_plus1[1]),
        .Q(ADDRG[1]),
        .R(srst_full_ff_i));
  (* ORIG_CELL_NAME = "gc1.count_d2_reg[1]" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gc1.count_d2_reg[1]_rep__0 
       (.C(s_axi_aclk),
        .CE(E),
        .D(rd_pntr_plus1[1]),
        .Q(\gpr1.dout_i_reg[14] [1]),
        .R(srst_full_ff_i));
  (* ORIG_CELL_NAME = "gc1.count_d2_reg[1]" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gc1.count_d2_reg[1]_rep__1 
       (.C(s_axi_aclk),
        .CE(E),
        .D(rd_pntr_plus1[1]),
        .Q(\gpr1.dout_i_reg[22]_4 ),
        .R(srst_full_ff_i));
  (* ORIG_CELL_NAME = "gc1.count_d2_reg[2]" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gc1.count_d2_reg[2] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(rd_pntr_plus1[2]),
        .Q(Q[2]),
        .R(srst_full_ff_i));
  (* ORIG_CELL_NAME = "gc1.count_d2_reg[2]" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gc1.count_d2_reg[2]_rep 
       (.C(s_axi_aclk),
        .CE(E),
        .D(rd_pntr_plus1[2]),
        .Q(ADDRG[2]),
        .R(srst_full_ff_i));
  (* ORIG_CELL_NAME = "gc1.count_d2_reg[2]" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gc1.count_d2_reg[2]_rep__0 
       (.C(s_axi_aclk),
        .CE(E),
        .D(rd_pntr_plus1[2]),
        .Q(\gpr1.dout_i_reg[14] [2]),
        .R(srst_full_ff_i));
  (* ORIG_CELL_NAME = "gc1.count_d2_reg[2]" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gc1.count_d2_reg[2]_rep__1 
       (.C(s_axi_aclk),
        .CE(E),
        .D(rd_pntr_plus1[2]),
        .Q(\gpr1.dout_i_reg[22]_1 ),
        .R(srst_full_ff_i));
  (* ORIG_CELL_NAME = "gc1.count_d2_reg[3]" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gc1.count_d2_reg[3] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(rd_pntr_plus1[3]),
        .Q(Q[3]),
        .R(srst_full_ff_i));
  (* ORIG_CELL_NAME = "gc1.count_d2_reg[3]" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gc1.count_d2_reg[3]_rep 
       (.C(s_axi_aclk),
        .CE(E),
        .D(rd_pntr_plus1[3]),
        .Q(ADDRG[3]),
        .R(srst_full_ff_i));
  (* ORIG_CELL_NAME = "gc1.count_d2_reg[3]" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gc1.count_d2_reg[3]_rep__0 
       (.C(s_axi_aclk),
        .CE(E),
        .D(rd_pntr_plus1[3]),
        .Q(\gpr1.dout_i_reg[14] [3]),
        .R(srst_full_ff_i));
  (* ORIG_CELL_NAME = "gc1.count_d2_reg[3]" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gc1.count_d2_reg[3]_rep__1 
       (.C(s_axi_aclk),
        .CE(E),
        .D(rd_pntr_plus1[3]),
        .Q(\gpr1.dout_i_reg[22]_2 ),
        .R(srst_full_ff_i));
  (* ORIG_CELL_NAME = "gc1.count_d2_reg[4]" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gc1.count_d2_reg[4] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(rd_pntr_plus1[4]),
        .Q(Q[4]),
        .R(srst_full_ff_i));
  (* ORIG_CELL_NAME = "gc1.count_d2_reg[4]" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gc1.count_d2_reg[4]_rep 
       (.C(s_axi_aclk),
        .CE(E),
        .D(rd_pntr_plus1[4]),
        .Q(ADDRG[4]),
        .R(srst_full_ff_i));
  (* ORIG_CELL_NAME = "gc1.count_d2_reg[4]" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gc1.count_d2_reg[4]_rep__0 
       (.C(s_axi_aclk),
        .CE(E),
        .D(rd_pntr_plus1[4]),
        .Q(\gpr1.dout_i_reg[14] [4]),
        .R(srst_full_ff_i));
  (* ORIG_CELL_NAME = "gc1.count_d2_reg[4]" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gc1.count_d2_reg[4]_rep__1 
       (.C(s_axi_aclk),
        .CE(E),
        .D(rd_pntr_plus1[4]),
        .Q(\gpr1.dout_i_reg[22] ),
        .R(srst_full_ff_i));
  (* ORIG_CELL_NAME = "gc1.count_d2_reg[5]" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gc1.count_d2_reg[5] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(rd_pntr_plus1[5]),
        .Q(Q[5]),
        .R(srst_full_ff_i));
  (* ORIG_CELL_NAME = "gc1.count_d2_reg[5]" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gc1.count_d2_reg[5]_rep 
       (.C(s_axi_aclk),
        .CE(E),
        .D(rd_pntr_plus1[5]),
        .Q(ADDRG[5]),
        .R(srst_full_ff_i));
  (* ORIG_CELL_NAME = "gc1.count_d2_reg[5]" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gc1.count_d2_reg[5]_rep__0 
       (.C(s_axi_aclk),
        .CE(E),
        .D(rd_pntr_plus1[5]),
        .Q(\gpr1.dout_i_reg[14] [5]),
        .R(srst_full_ff_i));
  (* ORIG_CELL_NAME = "gc1.count_d2_reg[5]" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gc1.count_d2_reg[5]_rep__1 
       (.C(s_axi_aclk),
        .CE(E),
        .D(rd_pntr_plus1[5]),
        .Q(\gpr1.dout_i_reg[22]_0 ),
        .R(srst_full_ff_i));
  FDRE #(
    .INIT(1'b0)) 
    \gc1.count_d2_reg[6] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(rd_pntr_plus1[6]),
        .Q(Q[6]),
        .R(srst_full_ff_i));
  FDRE #(
    .INIT(1'b0)) 
    \gc1.count_d2_reg[7] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(rd_pntr_plus1[7]),
        .Q(Q[7]),
        .R(srst_full_ff_i));
  FDRE #(
    .INIT(1'b0)) 
    \gc1.count_d2_reg[8] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(rd_pntr_plus1[8]),
        .Q(Q[8]),
        .R(srst_full_ff_i));
  FDRE #(
    .INIT(1'b0)) 
    \gc1.count_d2_reg[9] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(rd_pntr_plus1[9]),
        .Q(Q[9]),
        .R(srst_full_ff_i));
  FDRE #(
    .INIT(1'b0)) 
    \gc1.count_reg[0] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(plusOp__1[0]),
        .Q(rd_pntr_plus2[0]),
        .R(srst_full_ff_i));
  FDSE #(
    .INIT(1'b1)) 
    \gc1.count_reg[1] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(plusOp__1[1]),
        .Q(rd_pntr_plus2[1]),
        .S(srst_full_ff_i));
  FDRE #(
    .INIT(1'b0)) 
    \gc1.count_reg[2] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(plusOp__1[2]),
        .Q(rd_pntr_plus2[2]),
        .R(srst_full_ff_i));
  FDRE #(
    .INIT(1'b0)) 
    \gc1.count_reg[3] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(plusOp__1[3]),
        .Q(rd_pntr_plus2[3]),
        .R(srst_full_ff_i));
  FDRE #(
    .INIT(1'b0)) 
    \gc1.count_reg[4] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(plusOp__1[4]),
        .Q(rd_pntr_plus2[4]),
        .R(srst_full_ff_i));
  FDRE #(
    .INIT(1'b0)) 
    \gc1.count_reg[5] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(plusOp__1[5]),
        .Q(rd_pntr_plus2[5]),
        .R(srst_full_ff_i));
  FDRE #(
    .INIT(1'b0)) 
    \gc1.count_reg[6] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(plusOp__1[6]),
        .Q(rd_pntr_plus2[6]),
        .R(srst_full_ff_i));
  FDRE #(
    .INIT(1'b0)) 
    \gc1.count_reg[7] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(plusOp__1[7]),
        .Q(rd_pntr_plus2[7]),
        .R(srst_full_ff_i));
  FDRE #(
    .INIT(1'b0)) 
    \gc1.count_reg[8] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(plusOp__1[8]),
        .Q(rd_pntr_plus2[8]),
        .R(srst_full_ff_i));
  FDRE #(
    .INIT(1'b0)) 
    \gc1.count_reg[9] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(plusOp__1[9]),
        .Q(rd_pntr_plus2[9]),
        .R(srst_full_ff_i));
  LUT4 #(
    .INIT(16'h9009)) 
    \gmux.gm[0].gm1.m1_i_1__0 
       (.I0(\gpr1.dout_i_reg[22]_3 ),
        .I1(\gcc0.gc0.count_d1_reg[9] [0]),
        .I2(\gpr1.dout_i_reg[22]_4 ),
        .I3(\gcc0.gc0.count_d1_reg[9] [1]),
        .O(v1_reg[0]));
  LUT4 #(
    .INIT(16'h9009)) 
    \gmux.gm[0].gm1.m1_i_1__3 
       (.I0(rd_pntr_plus1[0]),
        .I1(\gcc0.gc0.count_d1_reg[9] [0]),
        .I2(rd_pntr_plus1[1]),
        .I3(\gcc0.gc0.count_d1_reg[9] [1]),
        .O(v1_reg_1[0]));
  LUT4 #(
    .INIT(16'h9009)) 
    \gmux.gm[0].gm1.m1_i_1__4 
       (.I0(\gpr1.dout_i_reg[22]_3 ),
        .I1(\gcc0.gc0.count_reg[9] [0]),
        .I2(\gpr1.dout_i_reg[22]_4 ),
        .I3(\gcc0.gc0.count_reg[9] [1]),
        .O(v1_reg_0[0]));
  LUT4 #(
    .INIT(16'h9009)) 
    \gmux.gm[0].gm1.m1_i_1__6 
       (.I0(\gpr1.dout_i_reg[22]_3 ),
        .I1(\gcc0.gc0.count_d1_reg[9] [0]),
        .I2(\gpr1.dout_i_reg[22]_4 ),
        .I3(\gcc0.gc0.count_d1_reg[9] [1]),
        .O(ram_empty_i_reg));
  LUT4 #(
    .INIT(16'h9009)) 
    \gmux.gm[1].gms.ms_i_1__0 
       (.I0(\gpr1.dout_i_reg[22]_1 ),
        .I1(\gcc0.gc0.count_d1_reg[9] [2]),
        .I2(\gpr1.dout_i_reg[22]_2 ),
        .I3(\gcc0.gc0.count_d1_reg[9] [3]),
        .O(v1_reg[1]));
  LUT4 #(
    .INIT(16'h9009)) 
    \gmux.gm[1].gms.ms_i_1__3 
       (.I0(rd_pntr_plus1[2]),
        .I1(\gcc0.gc0.count_d1_reg[9] [2]),
        .I2(rd_pntr_plus1[3]),
        .I3(\gcc0.gc0.count_d1_reg[9] [3]),
        .O(v1_reg_1[1]));
  LUT4 #(
    .INIT(16'h9009)) 
    \gmux.gm[1].gms.ms_i_1__4 
       (.I0(\gpr1.dout_i_reg[22]_1 ),
        .I1(\gcc0.gc0.count_reg[9] [2]),
        .I2(\gpr1.dout_i_reg[22]_2 ),
        .I3(\gcc0.gc0.count_reg[9] [3]),
        .O(v1_reg_0[1]));
  LUT4 #(
    .INIT(16'h9009)) 
    \gmux.gm[1].gms.ms_i_1__6 
       (.I0(\gpr1.dout_i_reg[22]_1 ),
        .I1(\gcc0.gc0.count_d1_reg[9] [2]),
        .I2(\gpr1.dout_i_reg[22]_2 ),
        .I3(\gcc0.gc0.count_d1_reg[9] [3]),
        .O(ram_empty_i_reg_0));
  LUT4 #(
    .INIT(16'h9009)) 
    \gmux.gm[2].gms.ms_i_1__0 
       (.I0(\gpr1.dout_i_reg[22] ),
        .I1(\gcc0.gc0.count_d1_reg[9] [4]),
        .I2(\gpr1.dout_i_reg[22]_0 ),
        .I3(\gcc0.gc0.count_d1_reg[9] [5]),
        .O(v1_reg[2]));
  LUT4 #(
    .INIT(16'h9009)) 
    \gmux.gm[2].gms.ms_i_1__3 
       (.I0(rd_pntr_plus1[4]),
        .I1(\gcc0.gc0.count_d1_reg[9] [4]),
        .I2(rd_pntr_plus1[5]),
        .I3(\gcc0.gc0.count_d1_reg[9] [5]),
        .O(v1_reg_1[2]));
  LUT4 #(
    .INIT(16'h9009)) 
    \gmux.gm[2].gms.ms_i_1__4 
       (.I0(\gpr1.dout_i_reg[22] ),
        .I1(\gcc0.gc0.count_reg[9] [4]),
        .I2(\gpr1.dout_i_reg[22]_0 ),
        .I3(\gcc0.gc0.count_reg[9] [5]),
        .O(v1_reg_0[2]));
  LUT4 #(
    .INIT(16'h9009)) 
    \gmux.gm[2].gms.ms_i_1__6 
       (.I0(\gpr1.dout_i_reg[22] ),
        .I1(\gcc0.gc0.count_d1_reg[9] [4]),
        .I2(\gpr1.dout_i_reg[22]_0 ),
        .I3(\gcc0.gc0.count_d1_reg[9] [5]),
        .O(ram_empty_i_reg_1));
  LUT4 #(
    .INIT(16'h9009)) 
    \gmux.gm[3].gms.ms_i_1__0 
       (.I0(Q[6]),
        .I1(\gcc0.gc0.count_d1_reg[9] [6]),
        .I2(Q[7]),
        .I3(\gcc0.gc0.count_d1_reg[9] [7]),
        .O(v1_reg[3]));
  LUT4 #(
    .INIT(16'h9009)) 
    \gmux.gm[3].gms.ms_i_1__3 
       (.I0(rd_pntr_plus1[6]),
        .I1(\gcc0.gc0.count_d1_reg[9] [6]),
        .I2(rd_pntr_plus1[7]),
        .I3(\gcc0.gc0.count_d1_reg[9] [7]),
        .O(v1_reg_1[3]));
  LUT4 #(
    .INIT(16'h9009)) 
    \gmux.gm[3].gms.ms_i_1__4 
       (.I0(Q[6]),
        .I1(\gcc0.gc0.count_reg[9] [6]),
        .I2(Q[7]),
        .I3(\gcc0.gc0.count_reg[9] [7]),
        .O(v1_reg_0[3]));
  LUT4 #(
    .INIT(16'h9009)) 
    \gmux.gm[3].gms.ms_i_1__6 
       (.I0(Q[6]),
        .I1(\gcc0.gc0.count_d1_reg[9] [6]),
        .I2(Q[7]),
        .I3(\gcc0.gc0.count_d1_reg[9] [7]),
        .O(ram_empty_i_reg_2));
  LUT4 #(
    .INIT(16'h9009)) 
    \gmux.gm[4].gms.ms_i_1__0 
       (.I0(Q[8]),
        .I1(\gcc0.gc0.count_d1_reg[9] [8]),
        .I2(Q[9]),
        .I3(\gcc0.gc0.count_d1_reg[9] [9]),
        .O(v1_reg[4]));
  LUT4 #(
    .INIT(16'h9009)) 
    \gmux.gm[4].gms.ms_i_1__3 
       (.I0(rd_pntr_plus1[8]),
        .I1(\gcc0.gc0.count_d1_reg[9] [8]),
        .I2(rd_pntr_plus1[9]),
        .I3(\gcc0.gc0.count_d1_reg[9] [9]),
        .O(v1_reg_1[4]));
  LUT4 #(
    .INIT(16'h9009)) 
    \gmux.gm[4].gms.ms_i_1__4 
       (.I0(Q[8]),
        .I1(\gcc0.gc0.count_reg[9] [8]),
        .I2(Q[9]),
        .I3(\gcc0.gc0.count_reg[9] [9]),
        .O(v1_reg_0[4]));
  LUT4 #(
    .INIT(16'h9009)) 
    \gmux.gm[4].gms.ms_i_1__6 
       (.I0(Q[8]),
        .I1(\gcc0.gc0.count_d1_reg[9] [8]),
        .I2(Q[9]),
        .I3(\gcc0.gc0.count_d1_reg[9] [9]),
        .O(ram_empty_i_reg_3));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_1_2_rd_fwft
   (out,
    \sig_register_array[0]1_in ,
    \gpr1.dout_i_reg[0] ,
    E,
    \goreg_dm.dout_i_reg[22] ,
    s_axi_aclk,
    srst_full_ff_i,
    rx_fg_len_empty_d1,
    ram_full_i,
    axi_str_rxd_tvalid,
    axi_str_rxd_tlast,
    sig_rd_rlen_reg,
    ram_empty_fb_i_reg);
  output out;
  output \sig_register_array[0]1_in ;
  output [0:0]\gpr1.dout_i_reg[0] ;
  output [0:0]E;
  output [0:0]\goreg_dm.dout_i_reg[22] ;
  input s_axi_aclk;
  input srst_full_ff_i;
  input rx_fg_len_empty_d1;
  input ram_full_i;
  input axi_str_rxd_tvalid;
  input axi_str_rxd_tlast;
  input sig_rd_rlen_reg;
  input ram_empty_fb_i_reg;

  wire [0:0]E;
  (* DONT_TOUCH *) wire aempty_fwft_fb_i;
  wire aempty_fwft_fb_i_i_1_n_0;
  (* DONT_TOUCH *) wire aempty_fwft_i;
  wire axi_str_rxd_tlast;
  wire axi_str_rxd_tvalid;
  (* DONT_TOUCH *) wire [1:0]curr_fwft_state;
  (* DONT_TOUCH *) wire empty_fwft_fb_i;
  wire empty_fwft_fb_i_i_1_n_0;
  (* DONT_TOUCH *) wire empty_fwft_fb_o_i;
  wire empty_fwft_fb_o_i_reg0;
  (* DONT_TOUCH *) wire empty_fwft_i;
  wire [0:0]\goreg_dm.dout_i_reg[22] ;
  wire [0:0]\gpr1.dout_i_reg[0] ;
  wire [1:0]next_fwft_state;
  wire ram_empty_fb_i_reg;
  wire ram_full_i;
  wire rx_fg_len_empty_d1;
  wire s_axi_aclk;
  wire sig_rd_rlen_reg;
  wire \sig_register_array[0]1_in ;
  wire srst_full_ff_i;
  (* DONT_TOUCH *) wire user_valid;

  assign out = empty_fwft_i;
  LUT6 #(
    .INIT(64'hFFFEFFAFEAAAAAAA)) 
    aempty_fwft_fb_i_i_1
       (.I0(srst_full_ff_i),
        .I1(sig_rd_rlen_reg),
        .I2(curr_fwft_state[1]),
        .I3(ram_empty_fb_i_reg),
        .I4(curr_fwft_state[0]),
        .I5(aempty_fwft_fb_i),
        .O(aempty_fwft_fb_i_i_1_n_0));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b1)) 
    aempty_fwft_fb_i_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(aempty_fwft_fb_i_i_1_n_0),
        .Q(aempty_fwft_fb_i),
        .R(1'b0));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b1)) 
    aempty_fwft_i_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(aempty_fwft_fb_i_i_1_n_0),
        .Q(aempty_fwft_i),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hFFFFDD40)) 
    empty_fwft_fb_i_i_1
       (.I0(curr_fwft_state[1]),
        .I1(curr_fwft_state[0]),
        .I2(sig_rd_rlen_reg),
        .I3(empty_fwft_fb_i),
        .I4(srst_full_ff_i),
        .O(empty_fwft_fb_i_i_1_n_0));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b1)) 
    empty_fwft_fb_i_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(empty_fwft_fb_i_i_1_n_0),
        .Q(empty_fwft_fb_i),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hA0EA)) 
    empty_fwft_fb_o_i_i_1
       (.I0(empty_fwft_fb_o_i),
        .I1(sig_rd_rlen_reg),
        .I2(curr_fwft_state[0]),
        .I3(curr_fwft_state[1]),
        .O(empty_fwft_fb_o_i_reg0));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDSE #(
    .INIT(1'b1)) 
    empty_fwft_fb_o_i_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(empty_fwft_fb_o_i_reg0),
        .Q(empty_fwft_fb_o_i),
        .S(srst_full_ff_i));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b1)) 
    empty_fwft_i_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(empty_fwft_fb_i_i_1_n_0),
        .Q(empty_fwft_i),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h00BF)) 
    \gc1.count_d1[9]_i_2 
       (.I0(sig_rd_rlen_reg),
        .I1(curr_fwft_state[0]),
        .I2(curr_fwft_state[1]),
        .I3(ram_empty_fb_i_reg),
        .O(E));
  LUT3 #(
    .INIT(8'hD0)) 
    \goreg_dm.dout_i[22]_i_1 
       (.I0(curr_fwft_state[0]),
        .I1(sig_rd_rlen_reg),
        .I2(curr_fwft_state[1]),
        .O(\goreg_dm.dout_i_reg[22] ));
  LUT4 #(
    .INIT(16'h00F7)) 
    \gpr1.dout_i[22]_i_1 
       (.I0(curr_fwft_state[1]),
        .I1(curr_fwft_state[0]),
        .I2(sig_rd_rlen_reg),
        .I3(ram_empty_fb_i_reg),
        .O(\gpr1.dout_i_reg[0] ));
  LUT3 #(
    .INIT(8'hF4)) 
    \gpregsm1.curr_fwft_state[0]_i_1__0 
       (.I0(sig_rd_rlen_reg),
        .I1(curr_fwft_state[0]),
        .I2(curr_fwft_state[1]),
        .O(next_fwft_state[0]));
  LUT4 #(
    .INIT(16'h20FF)) 
    \gpregsm1.curr_fwft_state[1]_i_1__0 
       (.I0(curr_fwft_state[1]),
        .I1(sig_rd_rlen_reg),
        .I2(curr_fwft_state[0]),
        .I3(ram_empty_fb_i_reg),
        .O(next_fwft_state[1]));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gpregsm1.curr_fwft_state_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(next_fwft_state[0]),
        .Q(curr_fwft_state[0]),
        .R(srst_full_ff_i));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gpregsm1.curr_fwft_state_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(next_fwft_state[1]),
        .Q(curr_fwft_state[1]),
        .R(srst_full_ff_i));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gpregsm1.user_valid_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(next_fwft_state[0]),
        .Q(user_valid),
        .R(srst_full_ff_i));
  LUT5 #(
    .INIT(32'h23222222)) 
    \sig_register_array[0][5]_i_3 
       (.I0(rx_fg_len_empty_d1),
        .I1(empty_fwft_i),
        .I2(ram_full_i),
        .I3(axi_str_rxd_tvalid),
        .I4(axi_str_rxd_tlast),
        .O(\sig_register_array[0]1_in ));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_1_2_rd_logic
   (out,
    \sig_register_array[0]1_in ,
    p_7_out,
    \gpr1.dout_i_reg[0] ,
    v1_reg,
    Q,
    \gpr1.dout_i_reg[22] ,
    \gpr1.dout_i_reg[22]_0 ,
    \gpr1.dout_i_reg[22]_1 ,
    \gpr1.dout_i_reg[22]_2 ,
    \gpr1.dout_i_reg[22]_3 ,
    \gpr1.dout_i_reg[22]_4 ,
    \goreg_dm.dout_i_reg[22] ,
    v1_reg_0,
    ADDRG,
    \gpr1.dout_i_reg[14] ,
    s_axi_aclk,
    srst_full_ff_i,
    rx_fg_len_empty_d1,
    ram_full_i,
    axi_str_rxd_tvalid,
    axi_str_rxd_tlast,
    E,
    sig_rd_rlen_reg,
    \gcc0.gc0.count_d1_reg[9] ,
    \gcc0.gc0.count_reg[9] );
  output out;
  output \sig_register_array[0]1_in ;
  output p_7_out;
  output [0:0]\gpr1.dout_i_reg[0] ;
  output [4:0]v1_reg;
  output [9:0]Q;
  output \gpr1.dout_i_reg[22] ;
  output \gpr1.dout_i_reg[22]_0 ;
  output \gpr1.dout_i_reg[22]_1 ;
  output \gpr1.dout_i_reg[22]_2 ;
  output \gpr1.dout_i_reg[22]_3 ;
  output \gpr1.dout_i_reg[22]_4 ;
  output [0:0]\goreg_dm.dout_i_reg[22] ;
  output [4:0]v1_reg_0;
  output [5:0]ADDRG;
  output [5:0]\gpr1.dout_i_reg[14] ;
  input s_axi_aclk;
  input srst_full_ff_i;
  input rx_fg_len_empty_d1;
  input ram_full_i;
  input axi_str_rxd_tvalid;
  input axi_str_rxd_tlast;
  input [0:0]E;
  input sig_rd_rlen_reg;
  input [9:0]\gcc0.gc0.count_d1_reg[9] ;
  input [9:0]\gcc0.gc0.count_reg[9] ;

  wire [5:0]ADDRG;
  wire [0:0]E;
  wire [9:0]Q;
  wire axi_str_rxd_tlast;
  wire axi_str_rxd_tvalid;
  wire [4:0]\c2/v1_reg ;
  wire [9:0]\gcc0.gc0.count_d1_reg[9] ;
  wire [9:0]\gcc0.gc0.count_reg[9] ;
  wire [0:0]\goreg_dm.dout_i_reg[22] ;
  wire [0:0]\gpr1.dout_i_reg[0] ;
  wire [5:0]\gpr1.dout_i_reg[14] ;
  wire \gpr1.dout_i_reg[22] ;
  wire \gpr1.dout_i_reg[22]_0 ;
  wire \gpr1.dout_i_reg[22]_1 ;
  wire \gpr1.dout_i_reg[22]_2 ;
  wire \gpr1.dout_i_reg[22]_3 ;
  wire \gpr1.dout_i_reg[22]_4 ;
  wire out;
  wire p_2_out;
  wire p_7_out;
  wire ram_full_i;
  wire rpntr_n_31;
  wire rpntr_n_32;
  wire rpntr_n_33;
  wire rpntr_n_34;
  wire rpntr_n_35;
  wire rx_fg_len_empty_d1;
  wire s_axi_aclk;
  wire sig_rd_rlen_reg;
  wire \sig_register_array[0]1_in ;
  wire srst_full_ff_i;
  wire [4:0]v1_reg;
  wire [4:0]v1_reg_0;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_1_2_rd_fwft \gr1.gr1_int.rfwft 
       (.E(p_7_out),
        .axi_str_rxd_tlast(axi_str_rxd_tlast),
        .axi_str_rxd_tvalid(axi_str_rxd_tvalid),
        .\goreg_dm.dout_i_reg[22] (\goreg_dm.dout_i_reg[22] ),
        .\gpr1.dout_i_reg[0] (\gpr1.dout_i_reg[0] ),
        .out(out),
        .ram_empty_fb_i_reg(p_2_out),
        .ram_full_i(ram_full_i),
        .rx_fg_len_empty_d1(rx_fg_len_empty_d1),
        .s_axi_aclk(s_axi_aclk),
        .sig_rd_rlen_reg(sig_rd_rlen_reg),
        .\sig_register_array[0]1_in (\sig_register_array[0]1_in ),
        .srst_full_ff_i(srst_full_ff_i));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_1_2_rd_status_flags_ss \grss.rsts 
       (.E(p_7_out),
        .\gc1.count_d2_reg[0]_rep__1 (rpntr_n_31),
        .\gc1.count_d2_reg[2]_rep__1 (rpntr_n_32),
        .\gc1.count_d2_reg[4]_rep__1 (rpntr_n_33),
        .\gc1.count_d2_reg[6] (rpntr_n_34),
        .\gc1.count_d2_reg[8] (rpntr_n_35),
        .\grxd.rx_len_wr_en_reg (E),
        .out(p_2_out),
        .s_axi_aclk(s_axi_aclk),
        .srst_full_ff_i(srst_full_ff_i),
        .v1_reg(\c2/v1_reg ));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_1_2_rd_bin_cntr rpntr
       (.ADDRG(ADDRG),
        .E(p_7_out),
        .Q(Q),
        .\gcc0.gc0.count_d1_reg[9] (\gcc0.gc0.count_d1_reg[9] ),
        .\gcc0.gc0.count_reg[9] (\gcc0.gc0.count_reg[9] ),
        .\gpr1.dout_i_reg[14] (\gpr1.dout_i_reg[14] ),
        .\gpr1.dout_i_reg[22] (\gpr1.dout_i_reg[22] ),
        .\gpr1.dout_i_reg[22]_0 (\gpr1.dout_i_reg[22]_0 ),
        .\gpr1.dout_i_reg[22]_1 (\gpr1.dout_i_reg[22]_1 ),
        .\gpr1.dout_i_reg[22]_2 (\gpr1.dout_i_reg[22]_2 ),
        .\gpr1.dout_i_reg[22]_3 (\gpr1.dout_i_reg[22]_3 ),
        .\gpr1.dout_i_reg[22]_4 (\gpr1.dout_i_reg[22]_4 ),
        .ram_empty_i_reg(rpntr_n_31),
        .ram_empty_i_reg_0(rpntr_n_32),
        .ram_empty_i_reg_1(rpntr_n_33),
        .ram_empty_i_reg_2(rpntr_n_34),
        .ram_empty_i_reg_3(rpntr_n_35),
        .s_axi_aclk(s_axi_aclk),
        .srst_full_ff_i(srst_full_ff_i),
        .v1_reg(v1_reg),
        .v1_reg_0(v1_reg_0),
        .v1_reg_1(\c2/v1_reg ));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_1_2_rd_status_flags_ss
   (out,
    \gc1.count_d2_reg[0]_rep__1 ,
    \gc1.count_d2_reg[2]_rep__1 ,
    \gc1.count_d2_reg[4]_rep__1 ,
    \gc1.count_d2_reg[6] ,
    \gc1.count_d2_reg[8] ,
    v1_reg,
    s_axi_aclk,
    E,
    srst_full_ff_i,
    \grxd.rx_len_wr_en_reg );
  output out;
  input \gc1.count_d2_reg[0]_rep__1 ;
  input \gc1.count_d2_reg[2]_rep__1 ;
  input \gc1.count_d2_reg[4]_rep__1 ;
  input \gc1.count_d2_reg[6] ;
  input \gc1.count_d2_reg[8] ;
  input [4:0]v1_reg;
  input s_axi_aclk;
  input [0:0]E;
  input srst_full_ff_i;
  input [0:0]\grxd.rx_len_wr_en_reg ;

  wire [0:0]E;
  wire c1_n_0;
  wire comp1;
  wire \gc1.count_d2_reg[0]_rep__1 ;
  wire \gc1.count_d2_reg[2]_rep__1 ;
  wire \gc1.count_d2_reg[4]_rep__1 ;
  wire \gc1.count_d2_reg[6] ;
  wire \gc1.count_d2_reg[8] ;
  wire [0:0]\grxd.rx_len_wr_en_reg ;
  (* DONT_TOUCH *) wire ram_empty_fb_i;
  (* DONT_TOUCH *) wire ram_empty_i;
  wire s_axi_aclk;
  wire srst_full_ff_i;
  wire [4:0]v1_reg;

  assign out = ram_empty_fb_i;
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_1_2_compare_1 c1
       (.E(E),
        .comp1(comp1),
        .\gc1.count_d2_reg[0]_rep__1 (\gc1.count_d2_reg[0]_rep__1 ),
        .\gc1.count_d2_reg[2]_rep__1 (\gc1.count_d2_reg[2]_rep__1 ),
        .\gc1.count_d2_reg[4]_rep__1 (\gc1.count_d2_reg[4]_rep__1 ),
        .\gc1.count_d2_reg[6] (\gc1.count_d2_reg[6] ),
        .\gc1.count_d2_reg[8] (\gc1.count_d2_reg[8] ),
        .\grxd.rx_len_wr_en_reg (\grxd.rx_len_wr_en_reg ),
        .out(ram_empty_fb_i),
        .ram_empty_i_reg(c1_n_0),
        .srst_full_ff_i(srst_full_ff_i));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_1_2_compare_2 c2
       (.comp1(comp1),
        .v1_reg(v1_reg));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b1)) 
    ram_empty_fb_i_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(c1_n_0),
        .Q(ram_empty_fb_i),
        .R(1'b0));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b1)) 
    ram_empty_i_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(c1_n_0),
        .Q(ram_empty_i),
        .R(1'b0));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_1_2_reset_blk_ramfifo
   (in0,
    SR,
    s_axi_aclk,
    sig_rx_channel_reset_reg,
    Axi_Str_TxD_AReset,
    s_axi_aresetn);
  output in0;
  output [0:0]SR;
  input s_axi_aclk;
  input sig_rx_channel_reset_reg;
  input Axi_Str_TxD_AReset;
  input s_axi_aresetn;

  wire Axi_Str_TxD_AReset;
  wire [0:0]SR;
  wire in0;
  wire s_axi_aclk;
  wire s_axi_aresetn;
  wire sig_rx_channel_reset_reg;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_1_2_bram_fifo_rstlogic \g8serrst.usrst_inst 
       (.Axi_Str_TxD_AReset(Axi_Str_TxD_AReset),
        .SR(SR),
        .in0(in0),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_aresetn(s_axi_aresetn),
        .sig_rx_channel_reset_reg(sig_rx_channel_reset_reg));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_1_2_synth
   (in0,
    out,
    \sig_register_array[0]1_in ,
    \sig_ip2bus_data_reg[25] ,
    D,
    \sig_ip2bus_data_reg[9] ,
    s_axi_aclk,
    rx_fg_len_empty_d1,
    ram_full_i,
    axi_str_rxd_tvalid,
    axi_str_rxd_tlast,
    E,
    \grxd.rx_partial_pkt_reg ,
    Q,
    \count_reg[7] ,
    \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3] ,
    \count_reg[11] ,
    sig_rd_rlen_reg,
    rx_len_wr_en,
    sig_rx_channel_reset_reg,
    Axi_Str_TxD_AReset,
    s_axi_aresetn,
    \GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9] ,
    empty_fwft_i_reg,
    \GEN_BKEND_CE_REGISTERS[4].ce_out_i_reg[4] ,
    fg_rxd_wr_length);
  output in0;
  output out;
  output \sig_register_array[0]1_in ;
  output \sig_ip2bus_data_reg[25] ;
  output [5:0]D;
  output [15:0]\sig_ip2bus_data_reg[9] ;
  input s_axi_aclk;
  input rx_fg_len_empty_d1;
  input ram_full_i;
  input axi_str_rxd_tvalid;
  input axi_str_rxd_tlast;
  input [0:0]E;
  input \grxd.rx_partial_pkt_reg ;
  input [4:0]Q;
  input \count_reg[7] ;
  input \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3] ;
  input \count_reg[11] ;
  input sig_rd_rlen_reg;
  input rx_len_wr_en;
  input sig_rx_channel_reset_reg;
  input Axi_Str_TxD_AReset;
  input s_axi_aresetn;
  input \GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9] ;
  input empty_fwft_i_reg;
  input \GEN_BKEND_CE_REGISTERS[4].ce_out_i_reg[4] ;
  input [19:0]fg_rxd_wr_length;

  wire Axi_Str_TxD_AReset;
  wire [5:0]D;
  wire [0:0]E;
  wire \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3] ;
  wire \GEN_BKEND_CE_REGISTERS[4].ce_out_i_reg[4] ;
  wire \GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9] ;
  wire [4:0]Q;
  wire axi_str_rxd_tlast;
  wire axi_str_rxd_tvalid;
  wire \count_reg[11] ;
  wire \count_reg[7] ;
  wire empty_fwft_i_reg;
  wire [19:0]fg_rxd_wr_length;
  wire \grxd.rx_partial_pkt_reg ;
  wire in0;
  wire out;
  wire ram_full_i;
  wire rx_fg_len_empty_d1;
  wire rx_len_wr_en;
  wire s_axi_aclk;
  wire s_axi_aresetn;
  wire \sig_ip2bus_data_reg[25] ;
  wire [15:0]\sig_ip2bus_data_reg[9] ;
  wire sig_rd_rlen_reg;
  wire \sig_register_array[0]1_in ;
  wire sig_rx_channel_reset_reg;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_1_2_fifo_generator_top \gconvfifo.rf 
       (.Axi_Str_TxD_AReset(Axi_Str_TxD_AReset),
        .D(D),
        .E(E),
        .\GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3] (\GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3] ),
        .\GEN_BKEND_CE_REGISTERS[4].ce_out_i_reg[4] (\GEN_BKEND_CE_REGISTERS[4].ce_out_i_reg[4] ),
        .\GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9] (\GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9] ),
        .Q(Q),
        .axi_str_rxd_tlast(axi_str_rxd_tlast),
        .axi_str_rxd_tvalid(axi_str_rxd_tvalid),
        .\count_reg[11] (\count_reg[11] ),
        .\count_reg[7] (\count_reg[7] ),
        .empty_fwft_i_reg(empty_fwft_i_reg),
        .fg_rxd_wr_length(fg_rxd_wr_length),
        .\grxd.rx_partial_pkt_reg (\grxd.rx_partial_pkt_reg ),
        .in0(in0),
        .out(out),
        .ram_full_i(ram_full_i),
        .rx_fg_len_empty_d1(rx_fg_len_empty_d1),
        .rx_len_wr_en(rx_len_wr_en),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_aresetn(s_axi_aresetn),
        .\sig_ip2bus_data_reg[25] (\sig_ip2bus_data_reg[25] ),
        .\sig_ip2bus_data_reg[9] (\sig_ip2bus_data_reg[9] ),
        .sig_rd_rlen_reg(sig_rd_rlen_reg),
        .\sig_register_array[0]1_in (\sig_register_array[0]1_in ),
        .sig_rx_channel_reset_reg(sig_rx_channel_reset_reg));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_1_2_wr_bin_cntr
   (Q,
    \gpr1.dout_i_reg[22] ,
    ram_empty_i_reg,
    \gpr1.dout_i_reg[22]_0 ,
    \gpr1.dout_i_reg[22]_1 ,
    \gpr1.dout_i_reg[22]_2 ,
    \gpr1.dout_i_reg[22]_3 ,
    \gpr1.dout_i_reg[22]_4 ,
    \gpr1.dout_i_reg[22]_5 ,
    \gpr1.dout_i_reg[22]_6 ,
    \gpr1.dout_i_reg[22]_7 ,
    \gpr1.dout_i_reg[22]_8 ,
    \gpr1.dout_i_reg[22]_9 ,
    \gpr1.dout_i_reg[22]_10 ,
    \gpr1.dout_i_reg[22]_11 ,
    \gpr1.dout_i_reg[22]_12 ,
    \gpr1.dout_i_reg[22]_13 ,
    \gpr1.dout_i_reg[22]_14 ,
    out,
    rx_len_wr_en,
    SR,
    E,
    s_axi_aclk);
  output [9:0]Q;
  output \gpr1.dout_i_reg[22] ;
  output [9:0]ram_empty_i_reg;
  output \gpr1.dout_i_reg[22]_0 ;
  output \gpr1.dout_i_reg[22]_1 ;
  output \gpr1.dout_i_reg[22]_2 ;
  output \gpr1.dout_i_reg[22]_3 ;
  output \gpr1.dout_i_reg[22]_4 ;
  output \gpr1.dout_i_reg[22]_5 ;
  output \gpr1.dout_i_reg[22]_6 ;
  output \gpr1.dout_i_reg[22]_7 ;
  output \gpr1.dout_i_reg[22]_8 ;
  output \gpr1.dout_i_reg[22]_9 ;
  output \gpr1.dout_i_reg[22]_10 ;
  output \gpr1.dout_i_reg[22]_11 ;
  output \gpr1.dout_i_reg[22]_12 ;
  output \gpr1.dout_i_reg[22]_13 ;
  output \gpr1.dout_i_reg[22]_14 ;
  input out;
  input rx_len_wr_en;
  input [0:0]SR;
  input [0:0]E;
  input s_axi_aclk;

  wire [0:0]E;
  wire [9:0]Q;
  wire [0:0]SR;
  wire \gcc0.gc0.count[9]_i_2_n_0 ;
  wire \gpr1.dout_i_reg[22] ;
  wire \gpr1.dout_i_reg[22]_0 ;
  wire \gpr1.dout_i_reg[22]_1 ;
  wire \gpr1.dout_i_reg[22]_10 ;
  wire \gpr1.dout_i_reg[22]_11 ;
  wire \gpr1.dout_i_reg[22]_12 ;
  wire \gpr1.dout_i_reg[22]_13 ;
  wire \gpr1.dout_i_reg[22]_14 ;
  wire \gpr1.dout_i_reg[22]_2 ;
  wire \gpr1.dout_i_reg[22]_3 ;
  wire \gpr1.dout_i_reg[22]_4 ;
  wire \gpr1.dout_i_reg[22]_5 ;
  wire \gpr1.dout_i_reg[22]_6 ;
  wire \gpr1.dout_i_reg[22]_7 ;
  wire \gpr1.dout_i_reg[22]_8 ;
  wire \gpr1.dout_i_reg[22]_9 ;
  wire out;
  wire [9:0]plusOp__2;
  wire [9:0]ram_empty_i_reg;
  wire rx_len_wr_en;
  wire s_axi_aclk;

  LUT6 #(
    .INIT(64'h0000000000000004)) 
    RAM_reg_0_63_0_6_i_1
       (.I0(out),
        .I1(rx_len_wr_en),
        .I2(ram_empty_i_reg[7]),
        .I3(ram_empty_i_reg[6]),
        .I4(ram_empty_i_reg[9]),
        .I5(ram_empty_i_reg[8]),
        .O(\gpr1.dout_i_reg[22]_1 ));
  LUT6 #(
    .INIT(64'h0000000400000000)) 
    RAM_reg_128_191_0_6_i_1
       (.I0(out),
        .I1(rx_len_wr_en),
        .I2(ram_empty_i_reg[8]),
        .I3(ram_empty_i_reg[6]),
        .I4(ram_empty_i_reg[9]),
        .I5(ram_empty_i_reg[7]),
        .O(\gpr1.dout_i_reg[22]_3 ));
  LUT6 #(
    .INIT(64'h0000004000000000)) 
    RAM_reg_192_255_0_6_i_1
       (.I0(ram_empty_i_reg[9]),
        .I1(ram_empty_i_reg[7]),
        .I2(ram_empty_i_reg[6]),
        .I3(ram_empty_i_reg[8]),
        .I4(out),
        .I5(rx_len_wr_en),
        .O(\gpr1.dout_i_reg[22]_7 ));
  LUT6 #(
    .INIT(64'h0000000400000000)) 
    RAM_reg_256_319_0_6_i_1
       (.I0(out),
        .I1(rx_len_wr_en),
        .I2(ram_empty_i_reg[7]),
        .I3(ram_empty_i_reg[6]),
        .I4(ram_empty_i_reg[9]),
        .I5(ram_empty_i_reg[8]),
        .O(\gpr1.dout_i_reg[22] ));
  LUT6 #(
    .INIT(64'h0000004000000000)) 
    RAM_reg_320_383_0_6_i_1
       (.I0(ram_empty_i_reg[9]),
        .I1(ram_empty_i_reg[8]),
        .I2(ram_empty_i_reg[6]),
        .I3(ram_empty_i_reg[7]),
        .I4(out),
        .I5(rx_len_wr_en),
        .O(\gpr1.dout_i_reg[22]_9 ));
  LUT6 #(
    .INIT(64'h0000004000000000)) 
    RAM_reg_384_447_0_6_i_1
       (.I0(ram_empty_i_reg[9]),
        .I1(ram_empty_i_reg[8]),
        .I2(ram_empty_i_reg[7]),
        .I3(ram_empty_i_reg[6]),
        .I4(out),
        .I5(rx_len_wr_en),
        .O(\gpr1.dout_i_reg[22]_11 ));
  LUT6 #(
    .INIT(64'h0040000000000000)) 
    RAM_reg_448_511_0_6_i_1
       (.I0(ram_empty_i_reg[9]),
        .I1(ram_empty_i_reg[7]),
        .I2(ram_empty_i_reg[6]),
        .I3(out),
        .I4(rx_len_wr_en),
        .I5(ram_empty_i_reg[8]),
        .O(\gpr1.dout_i_reg[22]_4 ));
  LUT6 #(
    .INIT(64'h0000000400000000)) 
    RAM_reg_512_575_0_6_i_1
       (.I0(out),
        .I1(rx_len_wr_en),
        .I2(ram_empty_i_reg[7]),
        .I3(ram_empty_i_reg[6]),
        .I4(ram_empty_i_reg[8]),
        .I5(ram_empty_i_reg[9]),
        .O(\gpr1.dout_i_reg[22]_0 ));
  LUT6 #(
    .INIT(64'h0000004000000000)) 
    RAM_reg_576_639_0_6_i_1
       (.I0(ram_empty_i_reg[8]),
        .I1(ram_empty_i_reg[9]),
        .I2(ram_empty_i_reg[6]),
        .I3(ram_empty_i_reg[7]),
        .I4(out),
        .I5(rx_len_wr_en),
        .O(\gpr1.dout_i_reg[22]_12 ));
  LUT6 #(
    .INIT(64'h0000004000000000)) 
    RAM_reg_640_703_0_6_i_1
       (.I0(ram_empty_i_reg[8]),
        .I1(ram_empty_i_reg[9]),
        .I2(ram_empty_i_reg[7]),
        .I3(ram_empty_i_reg[6]),
        .I4(out),
        .I5(rx_len_wr_en),
        .O(\gpr1.dout_i_reg[22]_13 ));
  LUT6 #(
    .INIT(64'h0000000400000000)) 
    RAM_reg_64_127_0_6_i_1
       (.I0(out),
        .I1(rx_len_wr_en),
        .I2(ram_empty_i_reg[8]),
        .I3(ram_empty_i_reg[7]),
        .I4(ram_empty_i_reg[9]),
        .I5(ram_empty_i_reg[6]),
        .O(\gpr1.dout_i_reg[22]_2 ));
  LUT6 #(
    .INIT(64'h0040000000000000)) 
    RAM_reg_704_767_0_6_i_1
       (.I0(ram_empty_i_reg[8]),
        .I1(ram_empty_i_reg[7]),
        .I2(ram_empty_i_reg[6]),
        .I3(out),
        .I4(rx_len_wr_en),
        .I5(ram_empty_i_reg[9]),
        .O(\gpr1.dout_i_reg[22]_5 ));
  LUT6 #(
    .INIT(64'h0000004000000000)) 
    RAM_reg_768_831_0_6_i_1
       (.I0(ram_empty_i_reg[7]),
        .I1(ram_empty_i_reg[9]),
        .I2(ram_empty_i_reg[8]),
        .I3(ram_empty_i_reg[6]),
        .I4(out),
        .I5(rx_len_wr_en),
        .O(\gpr1.dout_i_reg[22]_14 ));
  LUT6 #(
    .INIT(64'h0040000000000000)) 
    RAM_reg_832_895_0_6_i_1
       (.I0(ram_empty_i_reg[7]),
        .I1(ram_empty_i_reg[8]),
        .I2(ram_empty_i_reg[6]),
        .I3(out),
        .I4(rx_len_wr_en),
        .I5(ram_empty_i_reg[9]),
        .O(\gpr1.dout_i_reg[22]_8 ));
  LUT6 #(
    .INIT(64'h0040000000000000)) 
    RAM_reg_896_959_0_6_i_1
       (.I0(ram_empty_i_reg[6]),
        .I1(ram_empty_i_reg[8]),
        .I2(ram_empty_i_reg[7]),
        .I3(out),
        .I4(rx_len_wr_en),
        .I5(ram_empty_i_reg[9]),
        .O(\gpr1.dout_i_reg[22]_10 ));
  LUT6 #(
    .INIT(64'h4000000000000000)) 
    RAM_reg_960_1023_0_6_i_1
       (.I0(out),
        .I1(rx_len_wr_en),
        .I2(ram_empty_i_reg[7]),
        .I3(ram_empty_i_reg[6]),
        .I4(ram_empty_i_reg[9]),
        .I5(ram_empty_i_reg[8]),
        .O(\gpr1.dout_i_reg[22]_6 ));
  LUT1 #(
    .INIT(2'h1)) 
    \gcc0.gc0.count[0]_i_1 
       (.I0(Q[0]),
        .O(plusOp__2[0]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \gcc0.gc0.count[1]_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(plusOp__2[1]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \gcc0.gc0.count[2]_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .O(plusOp__2[2]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \gcc0.gc0.count[3]_i_1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[3]),
        .O(plusOp__2[3]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \gcc0.gc0.count[4]_i_1 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[3]),
        .I4(Q[4]),
        .O(plusOp__2[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \gcc0.gc0.count[5]_i_1 
       (.I0(Q[3]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(Q[2]),
        .I4(Q[4]),
        .I5(Q[5]),
        .O(plusOp__2[5]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \gcc0.gc0.count[6]_i_1 
       (.I0(\gcc0.gc0.count[9]_i_2_n_0 ),
        .I1(Q[6]),
        .O(plusOp__2[6]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \gcc0.gc0.count[7]_i_1 
       (.I0(\gcc0.gc0.count[9]_i_2_n_0 ),
        .I1(Q[6]),
        .I2(Q[7]),
        .O(plusOp__2[7]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \gcc0.gc0.count[8]_i_1 
       (.I0(Q[6]),
        .I1(\gcc0.gc0.count[9]_i_2_n_0 ),
        .I2(Q[7]),
        .I3(Q[8]),
        .O(plusOp__2[8]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \gcc0.gc0.count[9]_i_1 
       (.I0(Q[7]),
        .I1(\gcc0.gc0.count[9]_i_2_n_0 ),
        .I2(Q[6]),
        .I3(Q[8]),
        .I4(Q[9]),
        .O(plusOp__2[9]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \gcc0.gc0.count[9]_i_2 
       (.I0(Q[5]),
        .I1(Q[3]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(Q[2]),
        .I5(Q[4]),
        .O(\gcc0.gc0.count[9]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gcc0.gc0.count_d1_reg[0] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(Q[0]),
        .Q(ram_empty_i_reg[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gcc0.gc0.count_d1_reg[1] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(Q[1]),
        .Q(ram_empty_i_reg[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gcc0.gc0.count_d1_reg[2] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(Q[2]),
        .Q(ram_empty_i_reg[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gcc0.gc0.count_d1_reg[3] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(Q[3]),
        .Q(ram_empty_i_reg[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gcc0.gc0.count_d1_reg[4] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(Q[4]),
        .Q(ram_empty_i_reg[4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gcc0.gc0.count_d1_reg[5] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(Q[5]),
        .Q(ram_empty_i_reg[5]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gcc0.gc0.count_d1_reg[6] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(Q[6]),
        .Q(ram_empty_i_reg[6]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gcc0.gc0.count_d1_reg[7] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(Q[7]),
        .Q(ram_empty_i_reg[7]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gcc0.gc0.count_d1_reg[8] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(Q[8]),
        .Q(ram_empty_i_reg[8]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gcc0.gc0.count_d1_reg[9] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(Q[9]),
        .Q(ram_empty_i_reg[9]),
        .R(SR));
  FDSE #(
    .INIT(1'b1)) 
    \gcc0.gc0.count_reg[0] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(plusOp__2[0]),
        .Q(Q[0]),
        .S(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gcc0.gc0.count_reg[1] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(plusOp__2[1]),
        .Q(Q[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gcc0.gc0.count_reg[2] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(plusOp__2[2]),
        .Q(Q[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gcc0.gc0.count_reg[3] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(plusOp__2[3]),
        .Q(Q[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gcc0.gc0.count_reg[4] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(plusOp__2[4]),
        .Q(Q[4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gcc0.gc0.count_reg[5] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(plusOp__2[5]),
        .Q(Q[5]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gcc0.gc0.count_reg[6] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(plusOp__2[6]),
        .Q(Q[6]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gcc0.gc0.count_reg[7] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(plusOp__2[7]),
        .Q(Q[7]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gcc0.gc0.count_reg[8] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(plusOp__2[8]),
        .Q(Q[8]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gcc0.gc0.count_reg[9] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(plusOp__2[9]),
        .Q(Q[9]),
        .R(SR));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_1_2_wr_logic
   (E,
    Q,
    \gpr1.dout_i_reg[22] ,
    ram_empty_i_reg,
    \gpr1.dout_i_reg[22]_0 ,
    \gpr1.dout_i_reg[22]_1 ,
    \gpr1.dout_i_reg[22]_2 ,
    \gpr1.dout_i_reg[22]_3 ,
    \gpr1.dout_i_reg[22]_4 ,
    \gpr1.dout_i_reg[22]_5 ,
    \gpr1.dout_i_reg[22]_6 ,
    \gpr1.dout_i_reg[22]_7 ,
    \gpr1.dout_i_reg[22]_8 ,
    \gpr1.dout_i_reg[22]_9 ,
    \gpr1.dout_i_reg[22]_10 ,
    \gpr1.dout_i_reg[22]_11 ,
    \gpr1.dout_i_reg[22]_12 ,
    \gpr1.dout_i_reg[22]_13 ,
    \gpr1.dout_i_reg[22]_14 ,
    v1_reg,
    v1_reg_0,
    s_axi_aclk,
    rx_len_wr_en,
    SR,
    p_7_out);
  output [0:0]E;
  output [9:0]Q;
  output \gpr1.dout_i_reg[22] ;
  output [9:0]ram_empty_i_reg;
  output \gpr1.dout_i_reg[22]_0 ;
  output \gpr1.dout_i_reg[22]_1 ;
  output \gpr1.dout_i_reg[22]_2 ;
  output \gpr1.dout_i_reg[22]_3 ;
  output \gpr1.dout_i_reg[22]_4 ;
  output \gpr1.dout_i_reg[22]_5 ;
  output \gpr1.dout_i_reg[22]_6 ;
  output \gpr1.dout_i_reg[22]_7 ;
  output \gpr1.dout_i_reg[22]_8 ;
  output \gpr1.dout_i_reg[22]_9 ;
  output \gpr1.dout_i_reg[22]_10 ;
  output \gpr1.dout_i_reg[22]_11 ;
  output \gpr1.dout_i_reg[22]_12 ;
  output \gpr1.dout_i_reg[22]_13 ;
  output \gpr1.dout_i_reg[22]_14 ;
  input [4:0]v1_reg;
  input [4:0]v1_reg_0;
  input s_axi_aclk;
  input rx_len_wr_en;
  input [0:0]SR;
  input p_7_out;

  wire [0:0]E;
  wire [9:0]Q;
  wire [0:0]SR;
  wire \gpr1.dout_i_reg[22] ;
  wire \gpr1.dout_i_reg[22]_0 ;
  wire \gpr1.dout_i_reg[22]_1 ;
  wire \gpr1.dout_i_reg[22]_10 ;
  wire \gpr1.dout_i_reg[22]_11 ;
  wire \gpr1.dout_i_reg[22]_12 ;
  wire \gpr1.dout_i_reg[22]_13 ;
  wire \gpr1.dout_i_reg[22]_14 ;
  wire \gpr1.dout_i_reg[22]_2 ;
  wire \gpr1.dout_i_reg[22]_3 ;
  wire \gpr1.dout_i_reg[22]_4 ;
  wire \gpr1.dout_i_reg[22]_5 ;
  wire \gpr1.dout_i_reg[22]_6 ;
  wire \gpr1.dout_i_reg[22]_7 ;
  wire \gpr1.dout_i_reg[22]_8 ;
  wire \gpr1.dout_i_reg[22]_9 ;
  wire \gwss.wsts_n_0 ;
  wire p_7_out;
  wire [9:0]ram_empty_i_reg;
  wire rx_len_wr_en;
  wire s_axi_aclk;
  wire [4:0]v1_reg;
  wire [4:0]v1_reg_0;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_1_2_wr_status_flags_ss \gwss.wsts 
       (.E(E),
        .SR(SR),
        .out(\gwss.wsts_n_0 ),
        .p_7_out(p_7_out),
        .rx_len_wr_en(rx_len_wr_en),
        .s_axi_aclk(s_axi_aclk),
        .v1_reg(v1_reg),
        .v1_reg_0(v1_reg_0));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_1_2_wr_bin_cntr wpntr
       (.E(E),
        .Q(Q),
        .SR(SR),
        .\gpr1.dout_i_reg[22] (\gpr1.dout_i_reg[22] ),
        .\gpr1.dout_i_reg[22]_0 (\gpr1.dout_i_reg[22]_0 ),
        .\gpr1.dout_i_reg[22]_1 (\gpr1.dout_i_reg[22]_1 ),
        .\gpr1.dout_i_reg[22]_10 (\gpr1.dout_i_reg[22]_10 ),
        .\gpr1.dout_i_reg[22]_11 (\gpr1.dout_i_reg[22]_11 ),
        .\gpr1.dout_i_reg[22]_12 (\gpr1.dout_i_reg[22]_12 ),
        .\gpr1.dout_i_reg[22]_13 (\gpr1.dout_i_reg[22]_13 ),
        .\gpr1.dout_i_reg[22]_14 (\gpr1.dout_i_reg[22]_14 ),
        .\gpr1.dout_i_reg[22]_2 (\gpr1.dout_i_reg[22]_2 ),
        .\gpr1.dout_i_reg[22]_3 (\gpr1.dout_i_reg[22]_3 ),
        .\gpr1.dout_i_reg[22]_4 (\gpr1.dout_i_reg[22]_4 ),
        .\gpr1.dout_i_reg[22]_5 (\gpr1.dout_i_reg[22]_5 ),
        .\gpr1.dout_i_reg[22]_6 (\gpr1.dout_i_reg[22]_6 ),
        .\gpr1.dout_i_reg[22]_7 (\gpr1.dout_i_reg[22]_7 ),
        .\gpr1.dout_i_reg[22]_8 (\gpr1.dout_i_reg[22]_8 ),
        .\gpr1.dout_i_reg[22]_9 (\gpr1.dout_i_reg[22]_9 ),
        .out(\gwss.wsts_n_0 ),
        .ram_empty_i_reg(ram_empty_i_reg),
        .rx_len_wr_en(rx_len_wr_en),
        .s_axi_aclk(s_axi_aclk));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_1_2_wr_status_flags_ss
   (out,
    E,
    v1_reg,
    v1_reg_0,
    s_axi_aclk,
    rx_len_wr_en,
    SR,
    p_7_out);
  output out;
  output [0:0]E;
  input [4:0]v1_reg;
  input [4:0]v1_reg_0;
  input s_axi_aclk;
  input rx_len_wr_en;
  input [0:0]SR;
  input p_7_out;

  wire [0:0]E;
  wire [0:0]SR;
  wire c1_n_0;
  wire comp0;
  wire p_7_out;
  (* DONT_TOUCH *) wire ram_afull_fb;
  (* DONT_TOUCH *) wire ram_afull_i;
  (* DONT_TOUCH *) wire ram_full_fb_i;
  (* DONT_TOUCH *) wire ram_full_i;
  wire rx_len_wr_en;
  wire s_axi_aclk;
  wire [4:0]v1_reg;
  wire [4:0]v1_reg_0;

  assign out = ram_full_fb_i;
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_1_2_compare c0
       (.comp0(comp0),
        .v1_reg(v1_reg));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_1_2_compare_0 c1
       (.SR(SR),
        .comp0(comp0),
        .out(ram_full_fb_i),
        .p_7_out(p_7_out),
        .ram_full_i_reg(c1_n_0),
        .rx_len_wr_en(rx_len_wr_en),
        .v1_reg_0(v1_reg_0));
  LUT2 #(
    .INIT(4'h2)) 
    \gcc0.gc0.count_d1[9]_i_1 
       (.I0(rx_len_wr_en),
        .I1(ram_full_fb_i),
        .O(E));
  LUT1 #(
    .INIT(2'h2)) 
    i_0
       (.I0(1'b0),
        .O(ram_afull_i));
  LUT1 #(
    .INIT(2'h2)) 
    i_1
       (.I0(1'b0),
        .O(ram_afull_fb));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    ram_full_fb_i_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(c1_n_0),
        .Q(ram_full_fb_i),
        .R(1'b0));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    ram_full_i_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(c1_n_0),
        .Q(ram_full_i),
        .R(1'b0));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (weak1, weak0) GSR = GSR_int;
    assign (weak1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif