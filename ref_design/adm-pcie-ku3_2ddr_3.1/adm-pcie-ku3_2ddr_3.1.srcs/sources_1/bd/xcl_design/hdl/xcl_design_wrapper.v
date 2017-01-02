//Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2016.3_sdx (lin64) Build 1721784 Tue Nov 29 22:12:24 MST 2016
//Date        : Fri Dec 30 08:06:25 2016
//Host        : hms-beatdown running 64-bit Ubuntu 15.10
//Command     : generate_target xcl_design_wrapper.bd
//Design      : xcl_design_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module xcl_design_wrapper
   (c0_ddr3_addr,
    c0_ddr3_ba,
    c0_ddr3_cas_n,
    c0_ddr3_ck_n,
    c0_ddr3_ck_p,
    c0_ddr3_cke,
    c0_ddr3_cs_n,
    c0_ddr3_dm,
    c0_ddr3_dq,
    c0_ddr3_dqs_n,
    c0_ddr3_dqs_p,
    c0_ddr3_odt,
    c0_ddr3_ras_n,
    c0_ddr3_reset_n,
    c0_ddr3_we_n,
    c0_sys_clk_n,
    c0_sys_clk_p,
    c1_ddr3_addr,
    c1_ddr3_ba,
    c1_ddr3_cas_n,
    c1_ddr3_ck_n,
    c1_ddr3_ck_p,
    c1_ddr3_cke,
    c1_ddr3_cs_n,
    c1_ddr3_dm,
    c1_ddr3_dq,
    c1_ddr3_dqs_n,
    c1_ddr3_dqs_p,
    c1_ddr3_odt,
    c1_ddr3_ras_n,
    c1_ddr3_reset_n,
    c1_ddr3_we_n,
    c1_sys_clk_n,
    c1_sys_clk_p,
    flash_A,
    flash_ADV_N,
    flash_DQ,
    flash_OE_N,
    flash_WE_N,
    init_calib_complete,
    led_0,
    pcie_7x_mgt_rxn,
    pcie_7x_mgt_rxp,
    pcie_7x_mgt_txn,
    pcie_7x_mgt_txp,
    perst_n,
    ref_clk_clk_n,
    ref_clk_clk_p);
  output [15:0]c0_ddr3_addr;
  output [2:0]c0_ddr3_ba;
  output c0_ddr3_cas_n;
  output [1:0]c0_ddr3_ck_n;
  output [1:0]c0_ddr3_ck_p;
  output [1:0]c0_ddr3_cke;
  output [1:0]c0_ddr3_cs_n;
  output [8:0]c0_ddr3_dm;
  inout [71:0]c0_ddr3_dq;
  inout [8:0]c0_ddr3_dqs_n;
  inout [8:0]c0_ddr3_dqs_p;
  output [1:0]c0_ddr3_odt;
  output c0_ddr3_ras_n;
  output c0_ddr3_reset_n;
  output c0_ddr3_we_n;
  input c0_sys_clk_n;
  input c0_sys_clk_p;
  output [15:0]c1_ddr3_addr;
  output [2:0]c1_ddr3_ba;
  output c1_ddr3_cas_n;
  output [1:0]c1_ddr3_ck_n;
  output [1:0]c1_ddr3_ck_p;
  output [1:0]c1_ddr3_cke;
  output [1:0]c1_ddr3_cs_n;
  output [8:0]c1_ddr3_dm;
  inout [71:0]c1_ddr3_dq;
  inout [8:0]c1_ddr3_dqs_n;
  inout [8:0]c1_ddr3_dqs_p;
  output [1:0]c1_ddr3_odt;
  output c1_ddr3_ras_n;
  output c1_ddr3_reset_n;
  output c1_ddr3_we_n;
  input c1_sys_clk_n;
  input c1_sys_clk_p;
  output [26:1]flash_A;
  output flash_ADV_N;
  inout [15:4]flash_DQ;
  output flash_OE_N;
  output flash_WE_N;
  output [0:0]init_calib_complete;
  output led_0;
  input [7:0]pcie_7x_mgt_rxn;
  input [7:0]pcie_7x_mgt_rxp;
  output [7:0]pcie_7x_mgt_txn;
  output [7:0]pcie_7x_mgt_txp;
  input perst_n;
  input [0:0]ref_clk_clk_n;
  input [0:0]ref_clk_clk_p;

  wire [15:0]c0_ddr3_addr;
  wire [2:0]c0_ddr3_ba;
  wire c0_ddr3_cas_n;
  wire [1:0]c0_ddr3_ck_n;
  wire [1:0]c0_ddr3_ck_p;
  wire [1:0]c0_ddr3_cke;
  wire [1:0]c0_ddr3_cs_n;
  wire [8:0]c0_ddr3_dm;
  wire [71:0]c0_ddr3_dq;
  wire [8:0]c0_ddr3_dqs_n;
  wire [8:0]c0_ddr3_dqs_p;
  wire [1:0]c0_ddr3_odt;
  wire c0_ddr3_ras_n;
  wire c0_ddr3_reset_n;
  wire c0_ddr3_we_n;
  wire c0_sys_clk_n;
  wire c0_sys_clk_p;
  wire [15:0]c1_ddr3_addr;
  wire [2:0]c1_ddr3_ba;
  wire c1_ddr3_cas_n;
  wire [1:0]c1_ddr3_ck_n;
  wire [1:0]c1_ddr3_ck_p;
  wire [1:0]c1_ddr3_cke;
  wire [1:0]c1_ddr3_cs_n;
  wire [8:0]c1_ddr3_dm;
  wire [71:0]c1_ddr3_dq;
  wire [8:0]c1_ddr3_dqs_n;
  wire [8:0]c1_ddr3_dqs_p;
  wire [1:0]c1_ddr3_odt;
  wire c1_ddr3_ras_n;
  wire c1_ddr3_reset_n;
  wire c1_ddr3_we_n;
  wire c1_sys_clk_n;
  wire c1_sys_clk_p;
  wire [26:1]flash_A;
  wire flash_ADV_N;
  wire [15:4]flash_DQ;
  wire flash_OE_N;
  wire flash_WE_N;
  wire [0:0]init_calib_complete;
  wire led_0;
  wire [7:0]pcie_7x_mgt_rxn;
  wire [7:0]pcie_7x_mgt_rxp;
  wire [7:0]pcie_7x_mgt_txn;
  wire [7:0]pcie_7x_mgt_txp;
  wire perst_n;
  wire [0:0]ref_clk_clk_n;
  wire [0:0]ref_clk_clk_p;

  xcl_design xcl_design_i
       (.c0_ddr3_addr(c0_ddr3_addr),
        .c0_ddr3_ba(c0_ddr3_ba),
        .c0_ddr3_cas_n(c0_ddr3_cas_n),
        .c0_ddr3_ck_n(c0_ddr3_ck_n),
        .c0_ddr3_ck_p(c0_ddr3_ck_p),
        .c0_ddr3_cke(c0_ddr3_cke),
        .c0_ddr3_cs_n(c0_ddr3_cs_n),
        .c0_ddr3_dm(c0_ddr3_dm),
        .c0_ddr3_dq(c0_ddr3_dq),
        .c0_ddr3_dqs_n(c0_ddr3_dqs_n),
        .c0_ddr3_dqs_p(c0_ddr3_dqs_p),
        .c0_ddr3_odt(c0_ddr3_odt),
        .c0_ddr3_ras_n(c0_ddr3_ras_n),
        .c0_ddr3_reset_n(c0_ddr3_reset_n),
        .c0_ddr3_we_n(c0_ddr3_we_n),
        .c0_sys_clk_n(c0_sys_clk_n),
        .c0_sys_clk_p(c0_sys_clk_p),
        .c1_ddr3_addr(c1_ddr3_addr),
        .c1_ddr3_ba(c1_ddr3_ba),
        .c1_ddr3_cas_n(c1_ddr3_cas_n),
        .c1_ddr3_ck_n(c1_ddr3_ck_n),
        .c1_ddr3_ck_p(c1_ddr3_ck_p),
        .c1_ddr3_cke(c1_ddr3_cke),
        .c1_ddr3_cs_n(c1_ddr3_cs_n),
        .c1_ddr3_dm(c1_ddr3_dm),
        .c1_ddr3_dq(c1_ddr3_dq),
        .c1_ddr3_dqs_n(c1_ddr3_dqs_n),
        .c1_ddr3_dqs_p(c1_ddr3_dqs_p),
        .c1_ddr3_odt(c1_ddr3_odt),
        .c1_ddr3_ras_n(c1_ddr3_ras_n),
        .c1_ddr3_reset_n(c1_ddr3_reset_n),
        .c1_ddr3_we_n(c1_ddr3_we_n),
        .c1_sys_clk_n(c1_sys_clk_n),
        .c1_sys_clk_p(c1_sys_clk_p),
        .flash_A(flash_A),
        .flash_ADV_N(flash_ADV_N),
        .flash_DQ(flash_DQ),
        .flash_OE_N(flash_OE_N),
        .flash_WE_N(flash_WE_N),
        .init_calib_complete(init_calib_complete),
        .led_0(led_0),
        .pcie_7x_mgt_rxn(pcie_7x_mgt_rxn),
        .pcie_7x_mgt_rxp(pcie_7x_mgt_rxp),
        .pcie_7x_mgt_txn(pcie_7x_mgt_txn),
        .pcie_7x_mgt_txp(pcie_7x_mgt_txp),
        .perst_n(perst_n),
        .ref_clk_clk_n(ref_clk_clk_n),
        .ref_clk_clk_p(ref_clk_clk_p));
endmodule
