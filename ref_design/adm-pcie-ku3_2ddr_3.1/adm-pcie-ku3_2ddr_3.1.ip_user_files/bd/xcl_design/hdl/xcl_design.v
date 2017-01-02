//Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2016.3_sdx (lin64) Build 1721784 Tue Nov 29 22:12:24 MST 2016
//Date        : Fri Dec 30 08:06:24 2016
//Host        : hms-beatdown running 64-bit Ubuntu 15.10
//Command     : generate_target xcl_design.bd
//Design      : xcl_design
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module apm_sys_imp_1WRTQ3I
   (SLOT_0_AXI_araddr,
    SLOT_0_AXI_arburst,
    SLOT_0_AXI_arcache,
    SLOT_0_AXI_arid,
    SLOT_0_AXI_arlen,
    SLOT_0_AXI_arlock,
    SLOT_0_AXI_arprot,
    SLOT_0_AXI_arqos,
    SLOT_0_AXI_arready,
    SLOT_0_AXI_arsize,
    SLOT_0_AXI_arvalid,
    SLOT_0_AXI_awaddr,
    SLOT_0_AXI_awburst,
    SLOT_0_AXI_awcache,
    SLOT_0_AXI_awid,
    SLOT_0_AXI_awlen,
    SLOT_0_AXI_awlock,
    SLOT_0_AXI_awprot,
    SLOT_0_AXI_awqos,
    SLOT_0_AXI_awready,
    SLOT_0_AXI_awsize,
    SLOT_0_AXI_awvalid,
    SLOT_0_AXI_bid,
    SLOT_0_AXI_bready,
    SLOT_0_AXI_bresp,
    SLOT_0_AXI_bvalid,
    SLOT_0_AXI_rdata,
    SLOT_0_AXI_rid,
    SLOT_0_AXI_rlast,
    SLOT_0_AXI_rready,
    SLOT_0_AXI_rresp,
    SLOT_0_AXI_rvalid,
    SLOT_0_AXI_wdata,
    SLOT_0_AXI_wlast,
    SLOT_0_AXI_wready,
    SLOT_0_AXI_wstrb,
    SLOT_0_AXI_wvalid,
    SLOT_1_AXI_araddr,
    SLOT_1_AXI_arburst,
    SLOT_1_AXI_arcache,
    SLOT_1_AXI_arid,
    SLOT_1_AXI_arlen,
    SLOT_1_AXI_arlock,
    SLOT_1_AXI_arprot,
    SLOT_1_AXI_arready,
    SLOT_1_AXI_arsize,
    SLOT_1_AXI_arvalid,
    SLOT_1_AXI_awaddr,
    SLOT_1_AXI_awburst,
    SLOT_1_AXI_awcache,
    SLOT_1_AXI_awid,
    SLOT_1_AXI_awlen,
    SLOT_1_AXI_awlock,
    SLOT_1_AXI_awprot,
    SLOT_1_AXI_awready,
    SLOT_1_AXI_awsize,
    SLOT_1_AXI_awvalid,
    SLOT_1_AXI_bid,
    SLOT_1_AXI_bready,
    SLOT_1_AXI_bresp,
    SLOT_1_AXI_bvalid,
    SLOT_1_AXI_rdata,
    SLOT_1_AXI_rid,
    SLOT_1_AXI_rlast,
    SLOT_1_AXI_rready,
    SLOT_1_AXI_rresp,
    SLOT_1_AXI_rvalid,
    SLOT_1_AXI_wdata,
    SLOT_1_AXI_wlast,
    SLOT_1_AXI_wready,
    SLOT_1_AXI_wstrb,
    SLOT_1_AXI_wvalid,
    SLOT_2_AXI_araddr,
    SLOT_2_AXI_arburst,
    SLOT_2_AXI_arcache,
    SLOT_2_AXI_arid,
    SLOT_2_AXI_arlen,
    SLOT_2_AXI_arlock,
    SLOT_2_AXI_arprot,
    SLOT_2_AXI_arqos,
    SLOT_2_AXI_arready,
    SLOT_2_AXI_arsize,
    SLOT_2_AXI_arvalid,
    SLOT_2_AXI_awaddr,
    SLOT_2_AXI_awburst,
    SLOT_2_AXI_awcache,
    SLOT_2_AXI_awid,
    SLOT_2_AXI_awlen,
    SLOT_2_AXI_awlock,
    SLOT_2_AXI_awprot,
    SLOT_2_AXI_awqos,
    SLOT_2_AXI_awready,
    SLOT_2_AXI_awsize,
    SLOT_2_AXI_awvalid,
    SLOT_2_AXI_bid,
    SLOT_2_AXI_bready,
    SLOT_2_AXI_bresp,
    SLOT_2_AXI_bvalid,
    SLOT_2_AXI_rdata,
    SLOT_2_AXI_rid,
    SLOT_2_AXI_rlast,
    SLOT_2_AXI_rready,
    SLOT_2_AXI_rresp,
    SLOT_2_AXI_rvalid,
    SLOT_2_AXI_wdata,
    SLOT_2_AXI_wlast,
    SLOT_2_AXI_wready,
    SLOT_2_AXI_wstrb,
    SLOT_2_AXI_wvalid,
    S_AXI1_araddr,
    S_AXI1_arready,
    S_AXI1_arvalid,
    S_AXI1_awaddr,
    S_AXI1_awready,
    S_AXI1_awvalid,
    S_AXI1_bready,
    S_AXI1_bresp,
    S_AXI1_bvalid,
    S_AXI1_rdata,
    S_AXI1_rready,
    S_AXI1_rresp,
    S_AXI1_rvalid,
    S_AXI1_wdata,
    S_AXI1_wready,
    S_AXI1_wstrb,
    S_AXI1_wvalid,
    S_AXI_FULL_araddr,
    S_AXI_FULL_arburst,
    S_AXI_FULL_arcache,
    S_AXI_FULL_arlen,
    S_AXI_FULL_arlock,
    S_AXI_FULL_arprot,
    S_AXI_FULL_arready,
    S_AXI_FULL_arsize,
    S_AXI_FULL_arvalid,
    S_AXI_FULL_rdata,
    S_AXI_FULL_rlast,
    S_AXI_FULL_rready,
    S_AXI_FULL_rresp,
    S_AXI_FULL_rvalid,
    S_AXI_araddr,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid,
    core_aresetn,
    ext_clk_0,
    ext_clk_1,
    ext_rstn_0);
  input [37:0]SLOT_0_AXI_araddr;
  input [1:0]SLOT_0_AXI_arburst;
  input [3:0]SLOT_0_AXI_arcache;
  input [3:0]SLOT_0_AXI_arid;
  input [7:0]SLOT_0_AXI_arlen;
  input [0:0]SLOT_0_AXI_arlock;
  input [2:0]SLOT_0_AXI_arprot;
  input [3:0]SLOT_0_AXI_arqos;
  input SLOT_0_AXI_arready;
  input [2:0]SLOT_0_AXI_arsize;
  input SLOT_0_AXI_arvalid;
  input [37:0]SLOT_0_AXI_awaddr;
  input [1:0]SLOT_0_AXI_awburst;
  input [3:0]SLOT_0_AXI_awcache;
  input [3:0]SLOT_0_AXI_awid;
  input [7:0]SLOT_0_AXI_awlen;
  input [0:0]SLOT_0_AXI_awlock;
  input [2:0]SLOT_0_AXI_awprot;
  input [3:0]SLOT_0_AXI_awqos;
  input SLOT_0_AXI_awready;
  input [2:0]SLOT_0_AXI_awsize;
  input SLOT_0_AXI_awvalid;
  input [3:0]SLOT_0_AXI_bid;
  input SLOT_0_AXI_bready;
  input [1:0]SLOT_0_AXI_bresp;
  input SLOT_0_AXI_bvalid;
  input [511:0]SLOT_0_AXI_rdata;
  input [3:0]SLOT_0_AXI_rid;
  input SLOT_0_AXI_rlast;
  input SLOT_0_AXI_rready;
  input [1:0]SLOT_0_AXI_rresp;
  input SLOT_0_AXI_rvalid;
  input [511:0]SLOT_0_AXI_wdata;
  input SLOT_0_AXI_wlast;
  input SLOT_0_AXI_wready;
  input [63:0]SLOT_0_AXI_wstrb;
  input SLOT_0_AXI_wvalid;
  input [63:0]SLOT_1_AXI_araddr;
  input [1:0]SLOT_1_AXI_arburst;
  input [3:0]SLOT_1_AXI_arcache;
  input [3:0]SLOT_1_AXI_arid;
  input [7:0]SLOT_1_AXI_arlen;
  input [0:0]SLOT_1_AXI_arlock;
  input [2:0]SLOT_1_AXI_arprot;
  input SLOT_1_AXI_arready;
  input [2:0]SLOT_1_AXI_arsize;
  input SLOT_1_AXI_arvalid;
  input [63:0]SLOT_1_AXI_awaddr;
  input [1:0]SLOT_1_AXI_awburst;
  input [3:0]SLOT_1_AXI_awcache;
  input [3:0]SLOT_1_AXI_awid;
  input [7:0]SLOT_1_AXI_awlen;
  input [0:0]SLOT_1_AXI_awlock;
  input [2:0]SLOT_1_AXI_awprot;
  input SLOT_1_AXI_awready;
  input [2:0]SLOT_1_AXI_awsize;
  input SLOT_1_AXI_awvalid;
  input [3:0]SLOT_1_AXI_bid;
  input SLOT_1_AXI_bready;
  input [1:0]SLOT_1_AXI_bresp;
  input SLOT_1_AXI_bvalid;
  input [255:0]SLOT_1_AXI_rdata;
  input [3:0]SLOT_1_AXI_rid;
  input SLOT_1_AXI_rlast;
  input SLOT_1_AXI_rready;
  input [1:0]SLOT_1_AXI_rresp;
  input SLOT_1_AXI_rvalid;
  input [255:0]SLOT_1_AXI_wdata;
  input SLOT_1_AXI_wlast;
  input SLOT_1_AXI_wready;
  input [31:0]SLOT_1_AXI_wstrb;
  input SLOT_1_AXI_wvalid;
  input [37:0]SLOT_2_AXI_araddr;
  input [1:0]SLOT_2_AXI_arburst;
  input [3:0]SLOT_2_AXI_arcache;
  input [3:0]SLOT_2_AXI_arid;
  input [7:0]SLOT_2_AXI_arlen;
  input [0:0]SLOT_2_AXI_arlock;
  input [2:0]SLOT_2_AXI_arprot;
  input [3:0]SLOT_2_AXI_arqos;
  input SLOT_2_AXI_arready;
  input [2:0]SLOT_2_AXI_arsize;
  input SLOT_2_AXI_arvalid;
  input [37:0]SLOT_2_AXI_awaddr;
  input [1:0]SLOT_2_AXI_awburst;
  input [3:0]SLOT_2_AXI_awcache;
  input [3:0]SLOT_2_AXI_awid;
  input [7:0]SLOT_2_AXI_awlen;
  input [0:0]SLOT_2_AXI_awlock;
  input [2:0]SLOT_2_AXI_awprot;
  input [3:0]SLOT_2_AXI_awqos;
  input SLOT_2_AXI_awready;
  input [2:0]SLOT_2_AXI_awsize;
  input SLOT_2_AXI_awvalid;
  input [3:0]SLOT_2_AXI_bid;
  input SLOT_2_AXI_bready;
  input [1:0]SLOT_2_AXI_bresp;
  input SLOT_2_AXI_bvalid;
  input [511:0]SLOT_2_AXI_rdata;
  input [3:0]SLOT_2_AXI_rid;
  input SLOT_2_AXI_rlast;
  input SLOT_2_AXI_rready;
  input [1:0]SLOT_2_AXI_rresp;
  input SLOT_2_AXI_rvalid;
  input [511:0]SLOT_2_AXI_wdata;
  input SLOT_2_AXI_wlast;
  input SLOT_2_AXI_wready;
  input [63:0]SLOT_2_AXI_wstrb;
  input SLOT_2_AXI_wvalid;
  input [31:0]S_AXI1_araddr;
  output S_AXI1_arready;
  input S_AXI1_arvalid;
  input [31:0]S_AXI1_awaddr;
  output S_AXI1_awready;
  input S_AXI1_awvalid;
  input S_AXI1_bready;
  output [1:0]S_AXI1_bresp;
  output S_AXI1_bvalid;
  output [31:0]S_AXI1_rdata;
  input S_AXI1_rready;
  output [1:0]S_AXI1_rresp;
  output S_AXI1_rvalid;
  input [31:0]S_AXI1_wdata;
  output S_AXI1_wready;
  input [3:0]S_AXI1_wstrb;
  input S_AXI1_wvalid;
  input [31:0]S_AXI_FULL_araddr;
  input [1:0]S_AXI_FULL_arburst;
  input [3:0]S_AXI_FULL_arcache;
  input [7:0]S_AXI_FULL_arlen;
  input [0:0]S_AXI_FULL_arlock;
  input [2:0]S_AXI_FULL_arprot;
  output S_AXI_FULL_arready;
  input [2:0]S_AXI_FULL_arsize;
  input S_AXI_FULL_arvalid;
  output [127:0]S_AXI_FULL_rdata;
  output S_AXI_FULL_rlast;
  input S_AXI_FULL_rready;
  output [1:0]S_AXI_FULL_rresp;
  output S_AXI_FULL_rvalid;
  input [15:0]S_AXI_araddr;
  output S_AXI_arready;
  input S_AXI_arvalid;
  input [15:0]S_AXI_awaddr;
  output S_AXI_awready;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;
  input core_aresetn;
  input ext_clk_0;
  input ext_clk_1;
  input [0:0]ext_rstn_0;

  wire [63:0]Conn1_ARADDR;
  wire [1:0]Conn1_ARBURST;
  wire [3:0]Conn1_ARCACHE;
  wire [3:0]Conn1_ARID;
  wire [7:0]Conn1_ARLEN;
  wire [0:0]Conn1_ARLOCK;
  wire [2:0]Conn1_ARPROT;
  wire Conn1_ARREADY;
  wire [2:0]Conn1_ARSIZE;
  wire Conn1_ARVALID;
  wire [63:0]Conn1_AWADDR;
  wire [1:0]Conn1_AWBURST;
  wire [3:0]Conn1_AWCACHE;
  wire [3:0]Conn1_AWID;
  wire [7:0]Conn1_AWLEN;
  wire [0:0]Conn1_AWLOCK;
  wire [2:0]Conn1_AWPROT;
  wire Conn1_AWREADY;
  wire [2:0]Conn1_AWSIZE;
  wire Conn1_AWVALID;
  wire [3:0]Conn1_BID;
  wire Conn1_BREADY;
  wire [1:0]Conn1_BRESP;
  wire Conn1_BVALID;
  wire [255:0]Conn1_RDATA;
  wire [3:0]Conn1_RID;
  wire Conn1_RLAST;
  wire Conn1_RREADY;
  wire [1:0]Conn1_RRESP;
  wire Conn1_RVALID;
  wire [255:0]Conn1_WDATA;
  wire Conn1_WLAST;
  wire Conn1_WREADY;
  wire [31:0]Conn1_WSTRB;
  wire Conn1_WVALID;
  wire [37:0]Conn2_ARADDR;
  wire [1:0]Conn2_ARBURST;
  wire [3:0]Conn2_ARCACHE;
  wire [3:0]Conn2_ARID;
  wire [7:0]Conn2_ARLEN;
  wire [0:0]Conn2_ARLOCK;
  wire [2:0]Conn2_ARPROT;
  wire Conn2_ARREADY;
  wire [2:0]Conn2_ARSIZE;
  wire Conn2_ARVALID;
  wire [37:0]Conn2_AWADDR;
  wire [1:0]Conn2_AWBURST;
  wire [3:0]Conn2_AWCACHE;
  wire [3:0]Conn2_AWID;
  wire [7:0]Conn2_AWLEN;
  wire [0:0]Conn2_AWLOCK;
  wire [2:0]Conn2_AWPROT;
  wire Conn2_AWREADY;
  wire [2:0]Conn2_AWSIZE;
  wire Conn2_AWVALID;
  wire [3:0]Conn2_BID;
  wire Conn2_BREADY;
  wire [1:0]Conn2_BRESP;
  wire Conn2_BVALID;
  wire [511:0]Conn2_RDATA;
  wire [3:0]Conn2_RID;
  wire Conn2_RLAST;
  wire Conn2_RREADY;
  wire [1:0]Conn2_RRESP;
  wire Conn2_RVALID;
  wire [511:0]Conn2_WDATA;
  wire Conn2_WLAST;
  wire Conn2_WREADY;
  wire [63:0]Conn2_WSTRB;
  wire Conn2_WVALID;
  wire [37:0]Conn3_ARADDR;
  wire [1:0]Conn3_ARBURST;
  wire [3:0]Conn3_ARCACHE;
  wire [3:0]Conn3_ARID;
  wire [7:0]Conn3_ARLEN;
  wire [0:0]Conn3_ARLOCK;
  wire [2:0]Conn3_ARPROT;
  wire Conn3_ARREADY;
  wire [2:0]Conn3_ARSIZE;
  wire Conn3_ARVALID;
  wire [37:0]Conn3_AWADDR;
  wire [1:0]Conn3_AWBURST;
  wire [3:0]Conn3_AWCACHE;
  wire [3:0]Conn3_AWID;
  wire [7:0]Conn3_AWLEN;
  wire [0:0]Conn3_AWLOCK;
  wire [2:0]Conn3_AWPROT;
  wire Conn3_AWREADY;
  wire [2:0]Conn3_AWSIZE;
  wire Conn3_AWVALID;
  wire [3:0]Conn3_BID;
  wire Conn3_BREADY;
  wire [1:0]Conn3_BRESP;
  wire Conn3_BVALID;
  wire [511:0]Conn3_RDATA;
  wire [3:0]Conn3_RID;
  wire Conn3_RLAST;
  wire Conn3_RREADY;
  wire [1:0]Conn3_RRESP;
  wire Conn3_RVALID;
  wire [511:0]Conn3_WDATA;
  wire Conn3_WLAST;
  wire Conn3_WREADY;
  wire [63:0]Conn3_WSTRB;
  wire Conn3_WVALID;
  wire [31:0]Conn4_ARADDR;
  wire [1:0]Conn4_ARBURST;
  wire [3:0]Conn4_ARCACHE;
  wire [7:0]Conn4_ARLEN;
  wire [0:0]Conn4_ARLOCK;
  wire [2:0]Conn4_ARPROT;
  wire Conn4_ARREADY;
  wire [2:0]Conn4_ARSIZE;
  wire Conn4_ARVALID;
  wire [127:0]Conn4_RDATA;
  wire Conn4_RLAST;
  wire Conn4_RREADY;
  wire [1:0]Conn4_RRESP;
  wire Conn4_RVALID;
  wire [15:0]Conn5_ARADDR;
  wire Conn5_ARREADY;
  wire Conn5_ARVALID;
  wire [15:0]Conn5_AWADDR;
  wire Conn5_AWREADY;
  wire Conn5_AWVALID;
  wire Conn5_BREADY;
  wire [1:0]Conn5_BRESP;
  wire Conn5_BVALID;
  wire [31:0]Conn5_RDATA;
  wire Conn5_RREADY;
  wire [1:0]Conn5_RRESP;
  wire Conn5_RVALID;
  wire [31:0]Conn5_WDATA;
  wire Conn5_WREADY;
  wire [3:0]Conn5_WSTRB;
  wire Conn5_WVALID;
  wire [31:0]Conn6_ARADDR;
  wire Conn6_ARREADY;
  wire Conn6_ARVALID;
  wire [31:0]Conn6_AWADDR;
  wire Conn6_AWREADY;
  wire Conn6_AWVALID;
  wire Conn6_BREADY;
  wire [1:0]Conn6_BRESP;
  wire Conn6_BVALID;
  wire [31:0]Conn6_RDATA;
  wire Conn6_RREADY;
  wire [1:0]Conn6_RRESP;
  wire Conn6_RVALID;
  wire [31:0]Conn6_WDATA;
  wire Conn6_WREADY;
  wire [3:0]Conn6_WSTRB;
  wire Conn6_WVALID;
  wire core_aresetn_1;
  wire ext_clk_0_1;
  wire ext_clk_1_1;
  wire [0:0]ext_rstn_0_1;
  wire [95:0]xilmonitor_apm_M_AXIS_TDATA;
  wire [0:0]xilmonitor_apm_M_AXIS_TID;
  wire xilmonitor_apm_M_AXIS_TREADY;
  wire [11:0]xilmonitor_apm_M_AXIS_TSTRB;
  wire xilmonitor_apm_M_AXIS_TVALID;
  wire [127:0]xilmonitor_subset0_M_AXIS_TDATA;
  wire [0:0]xilmonitor_subset0_M_AXIS_TID;
  wire xilmonitor_subset0_M_AXIS_TREADY;
  wire xilmonitor_subset0_M_AXIS_TVALID;

  assign Conn1_ARADDR = SLOT_1_AXI_araddr[63:0];
  assign Conn1_ARBURST = SLOT_1_AXI_arburst[1:0];
  assign Conn1_ARCACHE = SLOT_1_AXI_arcache[3:0];
  assign Conn1_ARID = SLOT_1_AXI_arid[3:0];
  assign Conn1_ARLEN = SLOT_1_AXI_arlen[7:0];
  assign Conn1_ARLOCK = SLOT_1_AXI_arlock[0];
  assign Conn1_ARPROT = SLOT_1_AXI_arprot[2:0];
  assign Conn1_ARREADY = SLOT_1_AXI_arready;
  assign Conn1_ARSIZE = SLOT_1_AXI_arsize[2:0];
  assign Conn1_ARVALID = SLOT_1_AXI_arvalid;
  assign Conn1_AWADDR = SLOT_1_AXI_awaddr[63:0];
  assign Conn1_AWBURST = SLOT_1_AXI_awburst[1:0];
  assign Conn1_AWCACHE = SLOT_1_AXI_awcache[3:0];
  assign Conn1_AWID = SLOT_1_AXI_awid[3:0];
  assign Conn1_AWLEN = SLOT_1_AXI_awlen[7:0];
  assign Conn1_AWLOCK = SLOT_1_AXI_awlock[0];
  assign Conn1_AWPROT = SLOT_1_AXI_awprot[2:0];
  assign Conn1_AWREADY = SLOT_1_AXI_awready;
  assign Conn1_AWSIZE = SLOT_1_AXI_awsize[2:0];
  assign Conn1_AWVALID = SLOT_1_AXI_awvalid;
  assign Conn1_BID = SLOT_1_AXI_bid[3:0];
  assign Conn1_BREADY = SLOT_1_AXI_bready;
  assign Conn1_BRESP = SLOT_1_AXI_bresp[1:0];
  assign Conn1_BVALID = SLOT_1_AXI_bvalid;
  assign Conn1_RDATA = SLOT_1_AXI_rdata[255:0];
  assign Conn1_RID = SLOT_1_AXI_rid[3:0];
  assign Conn1_RLAST = SLOT_1_AXI_rlast;
  assign Conn1_RREADY = SLOT_1_AXI_rready;
  assign Conn1_RRESP = SLOT_1_AXI_rresp[1:0];
  assign Conn1_RVALID = SLOT_1_AXI_rvalid;
  assign Conn1_WDATA = SLOT_1_AXI_wdata[255:0];
  assign Conn1_WLAST = SLOT_1_AXI_wlast;
  assign Conn1_WREADY = SLOT_1_AXI_wready;
  assign Conn1_WSTRB = SLOT_1_AXI_wstrb[31:0];
  assign Conn1_WVALID = SLOT_1_AXI_wvalid;
  assign Conn2_ARADDR = SLOT_0_AXI_araddr[37:0];
  assign Conn2_ARBURST = SLOT_0_AXI_arburst[1:0];
  assign Conn2_ARCACHE = SLOT_0_AXI_arcache[3:0];
  assign Conn2_ARID = SLOT_0_AXI_arid[3:0];
  assign Conn2_ARLEN = SLOT_0_AXI_arlen[7:0];
  assign Conn2_ARLOCK = SLOT_0_AXI_arlock[0];
  assign Conn2_ARPROT = SLOT_0_AXI_arprot[2:0];
  assign Conn2_ARREADY = SLOT_0_AXI_arready;
  assign Conn2_ARSIZE = SLOT_0_AXI_arsize[2:0];
  assign Conn2_ARVALID = SLOT_0_AXI_arvalid;
  assign Conn2_AWADDR = SLOT_0_AXI_awaddr[37:0];
  assign Conn2_AWBURST = SLOT_0_AXI_awburst[1:0];
  assign Conn2_AWCACHE = SLOT_0_AXI_awcache[3:0];
  assign Conn2_AWID = SLOT_0_AXI_awid[3:0];
  assign Conn2_AWLEN = SLOT_0_AXI_awlen[7:0];
  assign Conn2_AWLOCK = SLOT_0_AXI_awlock[0];
  assign Conn2_AWPROT = SLOT_0_AXI_awprot[2:0];
  assign Conn2_AWREADY = SLOT_0_AXI_awready;
  assign Conn2_AWSIZE = SLOT_0_AXI_awsize[2:0];
  assign Conn2_AWVALID = SLOT_0_AXI_awvalid;
  assign Conn2_BID = SLOT_0_AXI_bid[3:0];
  assign Conn2_BREADY = SLOT_0_AXI_bready;
  assign Conn2_BRESP = SLOT_0_AXI_bresp[1:0];
  assign Conn2_BVALID = SLOT_0_AXI_bvalid;
  assign Conn2_RDATA = SLOT_0_AXI_rdata[511:0];
  assign Conn2_RID = SLOT_0_AXI_rid[3:0];
  assign Conn2_RLAST = SLOT_0_AXI_rlast;
  assign Conn2_RREADY = SLOT_0_AXI_rready;
  assign Conn2_RRESP = SLOT_0_AXI_rresp[1:0];
  assign Conn2_RVALID = SLOT_0_AXI_rvalid;
  assign Conn2_WDATA = SLOT_0_AXI_wdata[511:0];
  assign Conn2_WLAST = SLOT_0_AXI_wlast;
  assign Conn2_WREADY = SLOT_0_AXI_wready;
  assign Conn2_WSTRB = SLOT_0_AXI_wstrb[63:0];
  assign Conn2_WVALID = SLOT_0_AXI_wvalid;
  assign Conn3_ARADDR = SLOT_2_AXI_araddr[37:0];
  assign Conn3_ARBURST = SLOT_2_AXI_arburst[1:0];
  assign Conn3_ARCACHE = SLOT_2_AXI_arcache[3:0];
  assign Conn3_ARID = SLOT_2_AXI_arid[3:0];
  assign Conn3_ARLEN = SLOT_2_AXI_arlen[7:0];
  assign Conn3_ARLOCK = SLOT_2_AXI_arlock[0];
  assign Conn3_ARPROT = SLOT_2_AXI_arprot[2:0];
  assign Conn3_ARREADY = SLOT_2_AXI_arready;
  assign Conn3_ARSIZE = SLOT_2_AXI_arsize[2:0];
  assign Conn3_ARVALID = SLOT_2_AXI_arvalid;
  assign Conn3_AWADDR = SLOT_2_AXI_awaddr[37:0];
  assign Conn3_AWBURST = SLOT_2_AXI_awburst[1:0];
  assign Conn3_AWCACHE = SLOT_2_AXI_awcache[3:0];
  assign Conn3_AWID = SLOT_2_AXI_awid[3:0];
  assign Conn3_AWLEN = SLOT_2_AXI_awlen[7:0];
  assign Conn3_AWLOCK = SLOT_2_AXI_awlock[0];
  assign Conn3_AWPROT = SLOT_2_AXI_awprot[2:0];
  assign Conn3_AWREADY = SLOT_2_AXI_awready;
  assign Conn3_AWSIZE = SLOT_2_AXI_awsize[2:0];
  assign Conn3_AWVALID = SLOT_2_AXI_awvalid;
  assign Conn3_BID = SLOT_2_AXI_bid[3:0];
  assign Conn3_BREADY = SLOT_2_AXI_bready;
  assign Conn3_BRESP = SLOT_2_AXI_bresp[1:0];
  assign Conn3_BVALID = SLOT_2_AXI_bvalid;
  assign Conn3_RDATA = SLOT_2_AXI_rdata[511:0];
  assign Conn3_RID = SLOT_2_AXI_rid[3:0];
  assign Conn3_RLAST = SLOT_2_AXI_rlast;
  assign Conn3_RREADY = SLOT_2_AXI_rready;
  assign Conn3_RRESP = SLOT_2_AXI_rresp[1:0];
  assign Conn3_RVALID = SLOT_2_AXI_rvalid;
  assign Conn3_WDATA = SLOT_2_AXI_wdata[511:0];
  assign Conn3_WLAST = SLOT_2_AXI_wlast;
  assign Conn3_WREADY = SLOT_2_AXI_wready;
  assign Conn3_WSTRB = SLOT_2_AXI_wstrb[63:0];
  assign Conn3_WVALID = SLOT_2_AXI_wvalid;
  assign Conn4_ARADDR = S_AXI_FULL_araddr[31:0];
  assign Conn4_ARBURST = S_AXI_FULL_arburst[1:0];
  assign Conn4_ARCACHE = S_AXI_FULL_arcache[3:0];
  assign Conn4_ARLEN = S_AXI_FULL_arlen[7:0];
  assign Conn4_ARLOCK = S_AXI_FULL_arlock[0];
  assign Conn4_ARPROT = S_AXI_FULL_arprot[2:0];
  assign Conn4_ARSIZE = S_AXI_FULL_arsize[2:0];
  assign Conn4_ARVALID = S_AXI_FULL_arvalid;
  assign Conn4_RREADY = S_AXI_FULL_rready;
  assign Conn5_ARADDR = S_AXI_araddr[15:0];
  assign Conn5_ARVALID = S_AXI_arvalid;
  assign Conn5_AWADDR = S_AXI_awaddr[15:0];
  assign Conn5_AWVALID = S_AXI_awvalid;
  assign Conn5_BREADY = S_AXI_bready;
  assign Conn5_RREADY = S_AXI_rready;
  assign Conn5_WDATA = S_AXI_wdata[31:0];
  assign Conn5_WSTRB = S_AXI_wstrb[3:0];
  assign Conn5_WVALID = S_AXI_wvalid;
  assign Conn6_ARADDR = S_AXI1_araddr[31:0];
  assign Conn6_ARVALID = S_AXI1_arvalid;
  assign Conn6_AWADDR = S_AXI1_awaddr[31:0];
  assign Conn6_AWVALID = S_AXI1_awvalid;
  assign Conn6_BREADY = S_AXI1_bready;
  assign Conn6_RREADY = S_AXI1_rready;
  assign Conn6_WDATA = S_AXI1_wdata[31:0];
  assign Conn6_WSTRB = S_AXI1_wstrb[3:0];
  assign Conn6_WVALID = S_AXI1_wvalid;
  assign S_AXI1_arready = Conn6_ARREADY;
  assign S_AXI1_awready = Conn6_AWREADY;
  assign S_AXI1_bresp[1:0] = Conn6_BRESP;
  assign S_AXI1_bvalid = Conn6_BVALID;
  assign S_AXI1_rdata[31:0] = Conn6_RDATA;
  assign S_AXI1_rresp[1:0] = Conn6_RRESP;
  assign S_AXI1_rvalid = Conn6_RVALID;
  assign S_AXI1_wready = Conn6_WREADY;
  assign S_AXI_FULL_arready = Conn4_ARREADY;
  assign S_AXI_FULL_rdata[127:0] = Conn4_RDATA;
  assign S_AXI_FULL_rlast = Conn4_RLAST;
  assign S_AXI_FULL_rresp[1:0] = Conn4_RRESP;
  assign S_AXI_FULL_rvalid = Conn4_RVALID;
  assign S_AXI_arready = Conn5_ARREADY;
  assign S_AXI_awready = Conn5_AWREADY;
  assign S_AXI_bresp[1:0] = Conn5_BRESP;
  assign S_AXI_bvalid = Conn5_BVALID;
  assign S_AXI_rdata[31:0] = Conn5_RDATA;
  assign S_AXI_rresp[1:0] = Conn5_RRESP;
  assign S_AXI_rvalid = Conn5_RVALID;
  assign S_AXI_wready = Conn5_WREADY;
  assign core_aresetn_1 = core_aresetn;
  assign ext_clk_0_1 = ext_clk_0;
  assign ext_clk_1_1 = ext_clk_1;
  assign ext_rstn_0_1 = ext_rstn_0[0];
  xcl_design_xilmonitor_apm_0 xilmonitor_apm
       (.capture_event(1'b0),
        .core_aclk(ext_clk_1_1),
        .core_aresetn(core_aresetn_1),
        .ext_clk_0(ext_clk_0_1),
        .ext_clk_1(ext_clk_1_1),
        .ext_clk_2(ext_clk_0_1),
        .ext_event_0(1'b0),
        .ext_event_0_cnt_start(1'b0),
        .ext_event_0_cnt_stop(1'b0),
        .ext_event_1(1'b0),
        .ext_event_1_cnt_start(1'b0),
        .ext_event_1_cnt_stop(1'b0),
        .ext_event_2(1'b0),
        .ext_event_2_cnt_start(1'b0),
        .ext_event_2_cnt_stop(1'b0),
        .ext_rstn_0(ext_rstn_0_1),
        .ext_rstn_1(core_aresetn_1),
        .ext_rstn_2(ext_rstn_0_1),
        .m_axis_aclk(ext_clk_0_1),
        .m_axis_aresetn(ext_rstn_0_1),
        .m_axis_tdata(xilmonitor_apm_M_AXIS_TDATA),
        .m_axis_tid(xilmonitor_apm_M_AXIS_TID),
        .m_axis_tready(xilmonitor_apm_M_AXIS_TREADY),
        .m_axis_tstrb(xilmonitor_apm_M_AXIS_TSTRB),
        .m_axis_tvalid(xilmonitor_apm_M_AXIS_TVALID),
        .reset_event(1'b0),
        .s_axi_aclk(ext_clk_0_1),
        .s_axi_araddr(Conn5_ARADDR),
        .s_axi_aresetn(ext_rstn_0_1),
        .s_axi_arready(Conn5_ARREADY),
        .s_axi_arvalid(Conn5_ARVALID),
        .s_axi_awaddr(Conn5_AWADDR),
        .s_axi_awready(Conn5_AWREADY),
        .s_axi_awvalid(Conn5_AWVALID),
        .s_axi_bready(Conn5_BREADY),
        .s_axi_bresp(Conn5_BRESP),
        .s_axi_bvalid(Conn5_BVALID),
        .s_axi_rdata(Conn5_RDATA),
        .s_axi_rready(Conn5_RREADY),
        .s_axi_rresp(Conn5_RRESP),
        .s_axi_rvalid(Conn5_RVALID),
        .s_axi_wdata(Conn5_WDATA),
        .s_axi_wready(Conn5_WREADY),
        .s_axi_wstrb(Conn5_WSTRB),
        .s_axi_wvalid(Conn5_WVALID),
        .slot_0_axi_aclk(ext_clk_0_1),
        .slot_0_axi_araddr(Conn2_ARADDR),
        .slot_0_axi_arburst(Conn2_ARBURST),
        .slot_0_axi_arcache(Conn2_ARCACHE),
        .slot_0_axi_aresetn(ext_rstn_0_1),
        .slot_0_axi_arid(Conn2_ARID),
        .slot_0_axi_arlen(Conn2_ARLEN),
        .slot_0_axi_arlock(Conn2_ARLOCK),
        .slot_0_axi_arprot(Conn2_ARPROT),
        .slot_0_axi_arready(Conn2_ARREADY),
        .slot_0_axi_arsize(Conn2_ARSIZE),
        .slot_0_axi_arvalid(Conn2_ARVALID),
        .slot_0_axi_awaddr(Conn2_AWADDR),
        .slot_0_axi_awburst(Conn2_AWBURST),
        .slot_0_axi_awcache(Conn2_AWCACHE),
        .slot_0_axi_awid(Conn2_AWID),
        .slot_0_axi_awlen(Conn2_AWLEN),
        .slot_0_axi_awlock(Conn2_AWLOCK),
        .slot_0_axi_awprot(Conn2_AWPROT),
        .slot_0_axi_awready(Conn2_AWREADY),
        .slot_0_axi_awsize(Conn2_AWSIZE),
        .slot_0_axi_awvalid(Conn2_AWVALID),
        .slot_0_axi_bid(Conn2_BID),
        .slot_0_axi_bready(Conn2_BREADY),
        .slot_0_axi_bresp(Conn2_BRESP),
        .slot_0_axi_bvalid(Conn2_BVALID),
        .slot_0_axi_rdata(Conn2_RDATA),
        .slot_0_axi_rid(Conn2_RID),
        .slot_0_axi_rlast(Conn2_RLAST),
        .slot_0_axi_rready(Conn2_RREADY),
        .slot_0_axi_rresp(Conn2_RRESP),
        .slot_0_axi_rvalid(Conn2_RVALID),
        .slot_0_axi_wdata(Conn2_WDATA),
        .slot_0_axi_wlast(Conn2_WLAST),
        .slot_0_axi_wready(Conn2_WREADY),
        .slot_0_axi_wstrb(Conn2_WSTRB),
        .slot_0_axi_wvalid(Conn2_WVALID),
        .slot_0_ext_trig(1'b0),
        .slot_0_ext_trig_stop(1'b0),
        .slot_1_axi_aclk(ext_clk_1_1),
        .slot_1_axi_araddr(Conn1_ARADDR),
        .slot_1_axi_arburst(Conn1_ARBURST),
        .slot_1_axi_arcache(Conn1_ARCACHE),
        .slot_1_axi_aresetn(core_aresetn_1),
        .slot_1_axi_arid({1'b0,Conn1_ARID}),
        .slot_1_axi_arlen(Conn1_ARLEN),
        .slot_1_axi_arlock(Conn1_ARLOCK),
        .slot_1_axi_arprot(Conn1_ARPROT),
        .slot_1_axi_arready(Conn1_ARREADY),
        .slot_1_axi_arsize(Conn1_ARSIZE),
        .slot_1_axi_arvalid(Conn1_ARVALID),
        .slot_1_axi_awaddr(Conn1_AWADDR),
        .slot_1_axi_awburst(Conn1_AWBURST),
        .slot_1_axi_awcache(Conn1_AWCACHE),
        .slot_1_axi_awid({1'b0,Conn1_AWID}),
        .slot_1_axi_awlen(Conn1_AWLEN),
        .slot_1_axi_awlock(Conn1_AWLOCK),
        .slot_1_axi_awprot(Conn1_AWPROT),
        .slot_1_axi_awready(Conn1_AWREADY),
        .slot_1_axi_awsize(Conn1_AWSIZE),
        .slot_1_axi_awvalid(Conn1_AWVALID),
        .slot_1_axi_bid({1'b0,Conn1_BID}),
        .slot_1_axi_bready(Conn1_BREADY),
        .slot_1_axi_bresp(Conn1_BRESP),
        .slot_1_axi_bvalid(Conn1_BVALID),
        .slot_1_axi_rdata(Conn1_RDATA),
        .slot_1_axi_rid({1'b0,Conn1_RID}),
        .slot_1_axi_rlast(Conn1_RLAST),
        .slot_1_axi_rready(Conn1_RREADY),
        .slot_1_axi_rresp(Conn1_RRESP),
        .slot_1_axi_rvalid(Conn1_RVALID),
        .slot_1_axi_wdata(Conn1_WDATA),
        .slot_1_axi_wlast(Conn1_WLAST),
        .slot_1_axi_wready(Conn1_WREADY),
        .slot_1_axi_wstrb(Conn1_WSTRB),
        .slot_1_axi_wvalid(Conn1_WVALID),
        .slot_1_ext_trig(1'b0),
        .slot_1_ext_trig_stop(1'b0),
        .slot_2_axi_aclk(ext_clk_0_1),
        .slot_2_axi_araddr(Conn3_ARADDR),
        .slot_2_axi_arburst(Conn3_ARBURST),
        .slot_2_axi_arcache(Conn3_ARCACHE),
        .slot_2_axi_aresetn(ext_rstn_0_1),
        .slot_2_axi_arid(Conn3_ARID),
        .slot_2_axi_arlen(Conn3_ARLEN),
        .slot_2_axi_arlock(Conn3_ARLOCK),
        .slot_2_axi_arprot(Conn3_ARPROT),
        .slot_2_axi_arready(Conn3_ARREADY),
        .slot_2_axi_arsize(Conn3_ARSIZE),
        .slot_2_axi_arvalid(Conn3_ARVALID),
        .slot_2_axi_awaddr(Conn3_AWADDR),
        .slot_2_axi_awburst(Conn3_AWBURST),
        .slot_2_axi_awcache(Conn3_AWCACHE),
        .slot_2_axi_awid(Conn3_AWID),
        .slot_2_axi_awlen(Conn3_AWLEN),
        .slot_2_axi_awlock(Conn3_AWLOCK),
        .slot_2_axi_awprot(Conn3_AWPROT),
        .slot_2_axi_awready(Conn3_AWREADY),
        .slot_2_axi_awsize(Conn3_AWSIZE),
        .slot_2_axi_awvalid(Conn3_AWVALID),
        .slot_2_axi_bid(Conn3_BID),
        .slot_2_axi_bready(Conn3_BREADY),
        .slot_2_axi_bresp(Conn3_BRESP),
        .slot_2_axi_bvalid(Conn3_BVALID),
        .slot_2_axi_rdata(Conn3_RDATA),
        .slot_2_axi_rid(Conn3_RID),
        .slot_2_axi_rlast(Conn3_RLAST),
        .slot_2_axi_rready(Conn3_RREADY),
        .slot_2_axi_rresp(Conn3_RRESP),
        .slot_2_axi_rvalid(Conn3_RVALID),
        .slot_2_axi_wdata(Conn3_WDATA),
        .slot_2_axi_wlast(Conn3_WLAST),
        .slot_2_axi_wready(Conn3_WREADY),
        .slot_2_axi_wstrb(Conn3_WSTRB),
        .slot_2_axi_wvalid(Conn3_WVALID),
        .slot_2_ext_trig(1'b0),
        .slot_2_ext_trig_stop(1'b0));
  xcl_design_xilmonitor_fifo0_0 xilmonitor_fifo0
       (.axi_str_rxd_tdata(xilmonitor_subset0_M_AXIS_TDATA),
        .axi_str_rxd_tid(xilmonitor_subset0_M_AXIS_TID),
        .axi_str_rxd_tlast(1'b0),
        .axi_str_rxd_tready(xilmonitor_subset0_M_AXIS_TREADY),
        .axi_str_rxd_tvalid(xilmonitor_subset0_M_AXIS_TVALID),
        .s_axi4_araddr(Conn4_ARADDR),
        .s_axi4_arburst(Conn4_ARBURST),
        .s_axi4_arcache(Conn4_ARCACHE),
        .s_axi4_arid(1'b0),
        .s_axi4_arlen(Conn4_ARLEN),
        .s_axi4_arlock(Conn4_ARLOCK),
        .s_axi4_arprot(Conn4_ARPROT),
        .s_axi4_arready(Conn4_ARREADY),
        .s_axi4_arsize(Conn4_ARSIZE),
        .s_axi4_arvalid(Conn4_ARVALID),
        .s_axi4_rdata(Conn4_RDATA),
        .s_axi4_rlast(Conn4_RLAST),
        .s_axi4_rready(Conn4_RREADY),
        .s_axi4_rresp(Conn4_RRESP),
        .s_axi4_rvalid(Conn4_RVALID),
        .s_axi_aclk(ext_clk_0_1),
        .s_axi_araddr(Conn6_ARADDR),
        .s_axi_aresetn(ext_rstn_0_1),
        .s_axi_arready(Conn6_ARREADY),
        .s_axi_arvalid(Conn6_ARVALID),
        .s_axi_awaddr(Conn6_AWADDR),
        .s_axi_awready(Conn6_AWREADY),
        .s_axi_awvalid(Conn6_AWVALID),
        .s_axi_bready(Conn6_BREADY),
        .s_axi_bresp(Conn6_BRESP),
        .s_axi_bvalid(Conn6_BVALID),
        .s_axi_rdata(Conn6_RDATA),
        .s_axi_rready(Conn6_RREADY),
        .s_axi_rresp(Conn6_RRESP),
        .s_axi_rvalid(Conn6_RVALID),
        .s_axi_wdata(Conn6_WDATA),
        .s_axi_wready(Conn6_WREADY),
        .s_axi_wstrb(Conn6_WSTRB),
        .s_axi_wvalid(Conn6_WVALID));
  xcl_design_xilmonitor_subset0_0 xilmonitor_subset0
       (.aclk(ext_clk_0_1),
        .aresetn(ext_rstn_0_1),
        .m_axis_tdata(xilmonitor_subset0_M_AXIS_TDATA),
        .m_axis_tid(xilmonitor_subset0_M_AXIS_TID),
        .m_axis_tready(xilmonitor_subset0_M_AXIS_TREADY),
        .m_axis_tvalid(xilmonitor_subset0_M_AXIS_TVALID),
        .s_axis_tdata(xilmonitor_apm_M_AXIS_TDATA),
        .s_axis_tid(xilmonitor_apm_M_AXIS_TID),
        .s_axis_tready(xilmonitor_apm_M_AXIS_TREADY),
        .s_axis_tstrb(xilmonitor_apm_M_AXIS_TSTRB),
        .s_axis_tvalid(xilmonitor_apm_M_AXIS_TVALID));
endmodule

module base_clocking_imp_TFI73W
   (BUFG_GT_CE,
    BUFG_GT_CEMASK,
    BUFG_GT_CLR,
    BUFG_GT_CLRMASK,
    BUFG_GT_DIV,
    CLK_IN_D_clk_n,
    CLK_IN_D_clk_p,
    IBUF_DS_ODIV2,
    IBUF_OUT,
    S_AXI_araddr,
    S_AXI_arprot,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awprot,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid,
    clk_out1,
    clk_out2,
    clk_out3,
    ext_reset_in,
    locked,
    locked1,
    s_axi_aresetn);
  input [0:0]BUFG_GT_CE;
  input [0:0]BUFG_GT_CEMASK;
  input [0:0]BUFG_GT_CLR;
  input [0:0]BUFG_GT_CLRMASK;
  input [2:0]BUFG_GT_DIV;
  input [0:0]CLK_IN_D_clk_n;
  input [0:0]CLK_IN_D_clk_p;
  output [0:0]IBUF_DS_ODIV2;
  output [0:0]IBUF_OUT;
  input [10:0]S_AXI_araddr;
  input [2:0]S_AXI_arprot;
  output S_AXI_arready;
  input S_AXI_arvalid;
  input [10:0]S_AXI_awaddr;
  input [2:0]S_AXI_awprot;
  output S_AXI_awready;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;
  output clk_out1;
  output clk_out2;
  output clk_out3;
  input ext_reset_in;
  output locked;
  output locked1;
  input [0:0]s_axi_aresetn;

  wire [0:0]BUFG_GT_CEMASK_1;
  wire [0:0]BUFG_GT_CE_1;
  wire [0:0]BUFG_GT_CLRMASK_1;
  wire [0:0]BUFG_GT_CLR_1;
  wire [2:0]BUFG_GT_DIV_1;
  wire [0:0]Conn1_CLK_N;
  wire [0:0]Conn1_CLK_P;
  wire [10:0]Conn2_ARADDR;
  wire [2:0]Conn2_ARPROT;
  wire Conn2_ARREADY;
  wire Conn2_ARVALID;
  wire [10:0]Conn2_AWADDR;
  wire [2:0]Conn2_AWPROT;
  wire Conn2_AWREADY;
  wire Conn2_AWVALID;
  wire Conn2_BREADY;
  wire [1:0]Conn2_BRESP;
  wire Conn2_BVALID;
  wire [31:0]Conn2_RDATA;
  wire Conn2_RREADY;
  wire [1:0]Conn2_RRESP;
  wire Conn2_RVALID;
  wire [31:0]Conn2_WDATA;
  wire Conn2_WREADY;
  wire [3:0]Conn2_WSTRB;
  wire Conn2_WVALID;
  wire [0:0]buf_refclk_bufg_BUFG_GT_O;
  wire [0:0]buf_refclk_ibuf_IBUF_DS_ODIV2;
  wire [0:0]buf_refclk_ibuf_IBUF_OUT;
  wire [10:0]clkconv_clkwiz_kernel_M_AXI_ARADDR;
  wire clkconv_clkwiz_kernel_M_AXI_ARREADY;
  wire clkconv_clkwiz_kernel_M_AXI_ARVALID;
  wire [10:0]clkconv_clkwiz_kernel_M_AXI_AWADDR;
  wire clkconv_clkwiz_kernel_M_AXI_AWREADY;
  wire clkconv_clkwiz_kernel_M_AXI_AWVALID;
  wire clkconv_clkwiz_kernel_M_AXI_BREADY;
  wire [1:0]clkconv_clkwiz_kernel_M_AXI_BRESP;
  wire clkconv_clkwiz_kernel_M_AXI_BVALID;
  wire [31:0]clkconv_clkwiz_kernel_M_AXI_RDATA;
  wire clkconv_clkwiz_kernel_M_AXI_RREADY;
  wire [1:0]clkconv_clkwiz_kernel_M_AXI_RRESP;
  wire clkconv_clkwiz_kernel_M_AXI_RVALID;
  wire [31:0]clkconv_clkwiz_kernel_M_AXI_WDATA;
  wire clkconv_clkwiz_kernel_M_AXI_WREADY;
  wire [3:0]clkconv_clkwiz_kernel_M_AXI_WSTRB;
  wire clkconv_clkwiz_kernel_M_AXI_WVALID;
  wire clkwiz_kernel_clk_out1;
  wire clkwiz_kernel_locked;
  wire clkwiz_system_clk_out1;
  wire clkwiz_system_clk_out2;
  wire clkwiz_system_locked;
  wire ext_reset_in_1;
  wire [0:0]psreset_perst_n_interconnect_aresetn;
  wire [0:0]s_axi_aresetn_1;

  assign BUFG_GT_CEMASK_1 = BUFG_GT_CEMASK[0];
  assign BUFG_GT_CE_1 = BUFG_GT_CE[0];
  assign BUFG_GT_CLRMASK_1 = BUFG_GT_CLRMASK[0];
  assign BUFG_GT_CLR_1 = BUFG_GT_CLR[0];
  assign BUFG_GT_DIV_1 = BUFG_GT_DIV[2:0];
  assign Conn1_CLK_N = CLK_IN_D_clk_n[0];
  assign Conn1_CLK_P = CLK_IN_D_clk_p[0];
  assign Conn2_ARADDR = S_AXI_araddr[10:0];
  assign Conn2_ARPROT = S_AXI_arprot[2:0];
  assign Conn2_ARVALID = S_AXI_arvalid;
  assign Conn2_AWADDR = S_AXI_awaddr[10:0];
  assign Conn2_AWPROT = S_AXI_awprot[2:0];
  assign Conn2_AWVALID = S_AXI_awvalid;
  assign Conn2_BREADY = S_AXI_bready;
  assign Conn2_RREADY = S_AXI_rready;
  assign Conn2_WDATA = S_AXI_wdata[31:0];
  assign Conn2_WSTRB = S_AXI_wstrb[3:0];
  assign Conn2_WVALID = S_AXI_wvalid;
  assign IBUF_DS_ODIV2[0] = buf_refclk_ibuf_IBUF_DS_ODIV2;
  assign IBUF_OUT[0] = buf_refclk_ibuf_IBUF_OUT;
  assign S_AXI_arready = Conn2_ARREADY;
  assign S_AXI_awready = Conn2_AWREADY;
  assign S_AXI_bresp[1:0] = Conn2_BRESP;
  assign S_AXI_bvalid = Conn2_BVALID;
  assign S_AXI_rdata[31:0] = Conn2_RDATA;
  assign S_AXI_rresp[1:0] = Conn2_RRESP;
  assign S_AXI_rvalid = Conn2_RVALID;
  assign S_AXI_wready = Conn2_WREADY;
  assign clk_out1 = clkwiz_kernel_clk_out1;
  assign clk_out2 = clkwiz_system_clk_out1;
  assign clk_out3 = clkwiz_system_clk_out2;
  assign ext_reset_in_1 = ext_reset_in;
  assign locked = clkwiz_kernel_locked;
  assign locked1 = clkwiz_system_locked;
  assign s_axi_aresetn_1 = s_axi_aresetn[0];
  xcl_design_buf_refclk_bufg_0 buf_refclk_bufg
       (.BUFG_GT_CE(BUFG_GT_CE_1),
        .BUFG_GT_CEMASK(BUFG_GT_CEMASK_1),
        .BUFG_GT_CLR(BUFG_GT_CLR_1),
        .BUFG_GT_CLRMASK(BUFG_GT_CLRMASK_1),
        .BUFG_GT_DIV(BUFG_GT_DIV_1),
        .BUFG_GT_I(buf_refclk_ibuf_IBUF_DS_ODIV2),
        .BUFG_GT_O(buf_refclk_bufg_BUFG_GT_O));
  xcl_design_buf_refclk_ibuf_0 buf_refclk_ibuf
       (.IBUF_DS_N(Conn1_CLK_N),
        .IBUF_DS_ODIV2(buf_refclk_ibuf_IBUF_DS_ODIV2),
        .IBUF_DS_P(Conn1_CLK_P),
        .IBUF_OUT(buf_refclk_ibuf_IBUF_OUT));
  xcl_design_clkconv_clkwiz_kernel_0 clkconv_clkwiz_kernel
       (.m_axi_aclk(buf_refclk_bufg_BUFG_GT_O),
        .m_axi_araddr(clkconv_clkwiz_kernel_M_AXI_ARADDR),
        .m_axi_aresetn(psreset_perst_n_interconnect_aresetn),
        .m_axi_arready(clkconv_clkwiz_kernel_M_AXI_ARREADY),
        .m_axi_arvalid(clkconv_clkwiz_kernel_M_AXI_ARVALID),
        .m_axi_awaddr(clkconv_clkwiz_kernel_M_AXI_AWADDR),
        .m_axi_awready(clkconv_clkwiz_kernel_M_AXI_AWREADY),
        .m_axi_awvalid(clkconv_clkwiz_kernel_M_AXI_AWVALID),
        .m_axi_bready(clkconv_clkwiz_kernel_M_AXI_BREADY),
        .m_axi_bresp(clkconv_clkwiz_kernel_M_AXI_BRESP),
        .m_axi_bvalid(clkconv_clkwiz_kernel_M_AXI_BVALID),
        .m_axi_rdata(clkconv_clkwiz_kernel_M_AXI_RDATA),
        .m_axi_rready(clkconv_clkwiz_kernel_M_AXI_RREADY),
        .m_axi_rresp(clkconv_clkwiz_kernel_M_AXI_RRESP),
        .m_axi_rvalid(clkconv_clkwiz_kernel_M_AXI_RVALID),
        .m_axi_wdata(clkconv_clkwiz_kernel_M_AXI_WDATA),
        .m_axi_wready(clkconv_clkwiz_kernel_M_AXI_WREADY),
        .m_axi_wstrb(clkconv_clkwiz_kernel_M_AXI_WSTRB),
        .m_axi_wvalid(clkconv_clkwiz_kernel_M_AXI_WVALID),
        .s_axi_aclk(clkwiz_system_clk_out1),
        .s_axi_araddr(Conn2_ARADDR),
        .s_axi_aresetn(s_axi_aresetn_1),
        .s_axi_arprot(Conn2_ARPROT),
        .s_axi_arready(Conn2_ARREADY),
        .s_axi_arvalid(Conn2_ARVALID),
        .s_axi_awaddr(Conn2_AWADDR),
        .s_axi_awprot(Conn2_AWPROT),
        .s_axi_awready(Conn2_AWREADY),
        .s_axi_awvalid(Conn2_AWVALID),
        .s_axi_bready(Conn2_BREADY),
        .s_axi_bresp(Conn2_BRESP),
        .s_axi_bvalid(Conn2_BVALID),
        .s_axi_rdata(Conn2_RDATA),
        .s_axi_rready(Conn2_RREADY),
        .s_axi_rresp(Conn2_RRESP),
        .s_axi_rvalid(Conn2_RVALID),
        .s_axi_wdata(Conn2_WDATA),
        .s_axi_wready(Conn2_WREADY),
        .s_axi_wstrb(Conn2_WSTRB),
        .s_axi_wvalid(Conn2_WVALID));
  xcl_design_clkwiz_kernel_0 clkwiz_kernel
       (.clk_in1(buf_refclk_bufg_BUFG_GT_O),
        .clk_out1(clkwiz_kernel_clk_out1),
        .locked(clkwiz_kernel_locked),
        .s_axi_aclk(buf_refclk_bufg_BUFG_GT_O),
        .s_axi_araddr(clkconv_clkwiz_kernel_M_AXI_ARADDR),
        .s_axi_aresetn(psreset_perst_n_interconnect_aresetn),
        .s_axi_arready(clkconv_clkwiz_kernel_M_AXI_ARREADY),
        .s_axi_arvalid(clkconv_clkwiz_kernel_M_AXI_ARVALID),
        .s_axi_awaddr(clkconv_clkwiz_kernel_M_AXI_AWADDR),
        .s_axi_awready(clkconv_clkwiz_kernel_M_AXI_AWREADY),
        .s_axi_awvalid(clkconv_clkwiz_kernel_M_AXI_AWVALID),
        .s_axi_bready(clkconv_clkwiz_kernel_M_AXI_BREADY),
        .s_axi_bresp(clkconv_clkwiz_kernel_M_AXI_BRESP),
        .s_axi_bvalid(clkconv_clkwiz_kernel_M_AXI_BVALID),
        .s_axi_rdata(clkconv_clkwiz_kernel_M_AXI_RDATA),
        .s_axi_rready(clkconv_clkwiz_kernel_M_AXI_RREADY),
        .s_axi_rresp(clkconv_clkwiz_kernel_M_AXI_RRESP),
        .s_axi_rvalid(clkconv_clkwiz_kernel_M_AXI_RVALID),
        .s_axi_wdata(clkconv_clkwiz_kernel_M_AXI_WDATA),
        .s_axi_wready(clkconv_clkwiz_kernel_M_AXI_WREADY),
        .s_axi_wstrb(clkconv_clkwiz_kernel_M_AXI_WSTRB),
        .s_axi_wvalid(clkconv_clkwiz_kernel_M_AXI_WVALID));
  xcl_design_clkwiz_system_0 clkwiz_system
       (.clk_in1(buf_refclk_bufg_BUFG_GT_O),
        .clk_out1(clkwiz_system_clk_out1),
        .clk_out2(clkwiz_system_clk_out2),
        .locked(clkwiz_system_locked),
        .resetn(psreset_perst_n_interconnect_aresetn));
  xcl_design_psreset_perst_n_0 psreset_perst_n
       (.aux_reset_in(1'b1),
        .dcm_locked(1'b1),
        .ext_reset_in(ext_reset_in_1),
        .interconnect_aresetn(psreset_perst_n_interconnect_aresetn),
        .mb_debug_sys_rst(1'b0),
        .slowest_sync_clk(buf_refclk_bufg_BUFG_GT_O));
endmodule

module base_region_imp_1OPYDD2
   (CLK_IN_D_clk_n,
    CLK_IN_D_clk_p,
    M_AXI1_araddr,
    M_AXI1_arprot,
    M_AXI1_arready,
    M_AXI1_arvalid,
    M_AXI1_awaddr,
    M_AXI1_awprot,
    M_AXI1_awready,
    M_AXI1_awvalid,
    M_AXI1_bready,
    M_AXI1_bresp,
    M_AXI1_bvalid,
    M_AXI1_rdata,
    M_AXI1_rready,
    M_AXI1_rresp,
    M_AXI1_rvalid,
    M_AXI1_wdata,
    M_AXI1_wready,
    M_AXI1_wstrb,
    M_AXI1_wvalid,
    M_AXI2_araddr,
    M_AXI2_arburst,
    M_AXI2_arcache,
    M_AXI2_arid,
    M_AXI2_arlen,
    M_AXI2_arlock,
    M_AXI2_arprot,
    M_AXI2_arqos,
    M_AXI2_arready,
    M_AXI2_arsize,
    M_AXI2_arvalid,
    M_AXI2_awaddr,
    M_AXI2_awburst,
    M_AXI2_awcache,
    M_AXI2_awid,
    M_AXI2_awlen,
    M_AXI2_awlock,
    M_AXI2_awprot,
    M_AXI2_awqos,
    M_AXI2_awready,
    M_AXI2_awsize,
    M_AXI2_awvalid,
    M_AXI2_bid,
    M_AXI2_bready,
    M_AXI2_bresp,
    M_AXI2_bvalid,
    M_AXI2_rdata,
    M_AXI2_rid,
    M_AXI2_rlast,
    M_AXI2_rready,
    M_AXI2_rresp,
    M_AXI2_rvalid,
    M_AXI2_wdata,
    M_AXI2_wlast,
    M_AXI2_wready,
    M_AXI2_wstrb,
    M_AXI2_wvalid,
    M_AXI3_araddr,
    M_AXI3_arburst,
    M_AXI3_arcache,
    M_AXI3_arid,
    M_AXI3_arlen,
    M_AXI3_arlock,
    M_AXI3_arprot,
    M_AXI3_arqos,
    M_AXI3_arready,
    M_AXI3_arsize,
    M_AXI3_arvalid,
    M_AXI3_awaddr,
    M_AXI3_awburst,
    M_AXI3_awcache,
    M_AXI3_awid,
    M_AXI3_awlen,
    M_AXI3_awlock,
    M_AXI3_awprot,
    M_AXI3_awqos,
    M_AXI3_awready,
    M_AXI3_awsize,
    M_AXI3_awvalid,
    M_AXI3_bid,
    M_AXI3_bready,
    M_AXI3_bresp,
    M_AXI3_bvalid,
    M_AXI3_rdata,
    M_AXI3_rid,
    M_AXI3_rlast,
    M_AXI3_rready,
    M_AXI3_rresp,
    M_AXI3_rvalid,
    M_AXI3_wdata,
    M_AXI3_wlast,
    M_AXI3_wready,
    M_AXI3_wstrb,
    M_AXI3_wvalid,
    M_AXI_LITE_araddr,
    M_AXI_LITE_arprot,
    M_AXI_LITE_arready,
    M_AXI_LITE_arvalid,
    M_AXI_LITE_awaddr,
    M_AXI_LITE_awprot,
    M_AXI_LITE_awready,
    M_AXI_LITE_awvalid,
    M_AXI_LITE_bready,
    M_AXI_LITE_bresp,
    M_AXI_LITE_bvalid,
    M_AXI_LITE_rdata,
    M_AXI_LITE_rready,
    M_AXI_LITE_rresp,
    M_AXI_LITE_rvalid,
    M_AXI_LITE_wdata,
    M_AXI_LITE_wready,
    M_AXI_LITE_wstrb,
    M_AXI_LITE_wvalid,
    M_AXI_araddr,
    M_AXI_arburst,
    M_AXI_arcache,
    M_AXI_arid,
    M_AXI_arlen,
    M_AXI_arlock,
    M_AXI_arprot,
    M_AXI_arready,
    M_AXI_arsize,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awburst,
    M_AXI_awcache,
    M_AXI_awid,
    M_AXI_awlen,
    M_AXI_awlock,
    M_AXI_awprot,
    M_AXI_awready,
    M_AXI_awsize,
    M_AXI_awvalid,
    M_AXI_bid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rid,
    M_AXI_rlast,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wlast,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_AXI1_araddr,
    S_AXI1_arburst,
    S_AXI1_arcache,
    S_AXI1_arid,
    S_AXI1_arlen,
    S_AXI1_arlock,
    S_AXI1_arprot,
    S_AXI1_arqos,
    S_AXI1_arready,
    S_AXI1_arsize,
    S_AXI1_arvalid,
    S_AXI1_awaddr,
    S_AXI1_awburst,
    S_AXI1_awcache,
    S_AXI1_awid,
    S_AXI1_awlen,
    S_AXI1_awlock,
    S_AXI1_awprot,
    S_AXI1_awqos,
    S_AXI1_awready,
    S_AXI1_awsize,
    S_AXI1_awvalid,
    S_AXI1_bid,
    S_AXI1_bready,
    S_AXI1_bresp,
    S_AXI1_bvalid,
    S_AXI1_rdata,
    S_AXI1_rid,
    S_AXI1_rlast,
    S_AXI1_rready,
    S_AXI1_rresp,
    S_AXI1_rvalid,
    S_AXI1_wdata,
    S_AXI1_wlast,
    S_AXI1_wready,
    S_AXI1_wstrb,
    S_AXI1_wvalid,
    S_AXI2_araddr,
    S_AXI2_arprot,
    S_AXI2_arready,
    S_AXI2_arvalid,
    S_AXI2_awaddr,
    S_AXI2_awprot,
    S_AXI2_awready,
    S_AXI2_awvalid,
    S_AXI2_bready,
    S_AXI2_bresp,
    S_AXI2_bvalid,
    S_AXI2_rdata,
    S_AXI2_rready,
    S_AXI2_rresp,
    S_AXI2_rvalid,
    S_AXI2_wdata,
    S_AXI2_wready,
    S_AXI2_wstrb,
    S_AXI2_wvalid,
    S_AXI3_araddr,
    S_AXI3_arready,
    S_AXI3_arvalid,
    S_AXI3_awaddr,
    S_AXI3_awready,
    S_AXI3_awvalid,
    S_AXI3_bready,
    S_AXI3_bresp,
    S_AXI3_bvalid,
    S_AXI3_rdata,
    S_AXI3_rready,
    S_AXI3_rresp,
    S_AXI3_rvalid,
    S_AXI3_wdata,
    S_AXI3_wready,
    S_AXI3_wstrb,
    S_AXI3_wvalid,
    S_AXI4_araddr,
    S_AXI4_arready,
    S_AXI4_arvalid,
    S_AXI4_awaddr,
    S_AXI4_awready,
    S_AXI4_awvalid,
    S_AXI4_bready,
    S_AXI4_bresp,
    S_AXI4_bvalid,
    S_AXI4_rdata,
    S_AXI4_rready,
    S_AXI4_rresp,
    S_AXI4_rvalid,
    S_AXI4_wdata,
    S_AXI4_wready,
    S_AXI4_wstrb,
    S_AXI4_wvalid,
    S_AXI5_araddr,
    S_AXI5_arready,
    S_AXI5_arvalid,
    S_AXI5_awaddr,
    S_AXI5_awready,
    S_AXI5_awvalid,
    S_AXI5_bready,
    S_AXI5_bresp,
    S_AXI5_bvalid,
    S_AXI5_rdata,
    S_AXI5_rready,
    S_AXI5_rresp,
    S_AXI5_rvalid,
    S_AXI5_wdata,
    S_AXI5_wready,
    S_AXI5_wstrb,
    S_AXI5_wvalid,
    S_AXI6_araddr,
    S_AXI6_arprot,
    S_AXI6_arready,
    S_AXI6_arvalid,
    S_AXI6_awaddr,
    S_AXI6_awprot,
    S_AXI6_awready,
    S_AXI6_awvalid,
    S_AXI6_bready,
    S_AXI6_bresp,
    S_AXI6_bvalid,
    S_AXI6_rdata,
    S_AXI6_rready,
    S_AXI6_rresp,
    S_AXI6_rvalid,
    S_AXI6_wdata,
    S_AXI6_wready,
    S_AXI6_wstrb,
    S_AXI6_wvalid,
    S_AXI_araddr,
    S_AXI_arburst,
    S_AXI_arcache,
    S_AXI_arid,
    S_AXI_arlen,
    S_AXI_arlock,
    S_AXI_arprot,
    S_AXI_arqos,
    S_AXI_arready,
    S_AXI_arsize,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awburst,
    S_AXI_awcache,
    S_AXI_awid,
    S_AXI_awlen,
    S_AXI_awlock,
    S_AXI_awprot,
    S_AXI_awqos,
    S_AXI_awready,
    S_AXI_awsize,
    S_AXI_awvalid,
    S_AXI_bid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rid,
    S_AXI_rlast,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wlast,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid,
    axi_aclk,
    axi_aresetn,
    clk_out1,
    clk_out2,
    clk_out3,
    ext_reset_in,
    gpio_io_i,
    interconnect_aresetn,
    interconnect_aresetn1,
    locked,
    pcie_mgt_rxn,
    pcie_mgt_rxp,
    pcie_mgt_txn,
    pcie_mgt_txp,
    sys_rst_n,
    user_lnk_up);
  input [0:0]CLK_IN_D_clk_n;
  input [0:0]CLK_IN_D_clk_p;
  output [16:0]M_AXI1_araddr;
  output [2:0]M_AXI1_arprot;
  input M_AXI1_arready;
  output M_AXI1_arvalid;
  output [16:0]M_AXI1_awaddr;
  output [2:0]M_AXI1_awprot;
  input M_AXI1_awready;
  output M_AXI1_awvalid;
  output M_AXI1_bready;
  input [1:0]M_AXI1_bresp;
  input M_AXI1_bvalid;
  input [31:0]M_AXI1_rdata;
  output M_AXI1_rready;
  input [1:0]M_AXI1_rresp;
  input M_AXI1_rvalid;
  output [31:0]M_AXI1_wdata;
  input M_AXI1_wready;
  output [3:0]M_AXI1_wstrb;
  output M_AXI1_wvalid;
  output [37:0]M_AXI2_araddr;
  output [1:0]M_AXI2_arburst;
  output [3:0]M_AXI2_arcache;
  output [3:0]M_AXI2_arid;
  output [7:0]M_AXI2_arlen;
  output [0:0]M_AXI2_arlock;
  output [2:0]M_AXI2_arprot;
  output [3:0]M_AXI2_arqos;
  input M_AXI2_arready;
  output [2:0]M_AXI2_arsize;
  output M_AXI2_arvalid;
  output [37:0]M_AXI2_awaddr;
  output [1:0]M_AXI2_awburst;
  output [3:0]M_AXI2_awcache;
  output [3:0]M_AXI2_awid;
  output [7:0]M_AXI2_awlen;
  output [0:0]M_AXI2_awlock;
  output [2:0]M_AXI2_awprot;
  output [3:0]M_AXI2_awqos;
  input M_AXI2_awready;
  output [2:0]M_AXI2_awsize;
  output M_AXI2_awvalid;
  input [3:0]M_AXI2_bid;
  output M_AXI2_bready;
  input [1:0]M_AXI2_bresp;
  input M_AXI2_bvalid;
  input [511:0]M_AXI2_rdata;
  input [3:0]M_AXI2_rid;
  input M_AXI2_rlast;
  output M_AXI2_rready;
  input [1:0]M_AXI2_rresp;
  input M_AXI2_rvalid;
  output [511:0]M_AXI2_wdata;
  output M_AXI2_wlast;
  input M_AXI2_wready;
  output [63:0]M_AXI2_wstrb;
  output M_AXI2_wvalid;
  output [37:0]M_AXI3_araddr;
  output [1:0]M_AXI3_arburst;
  output [3:0]M_AXI3_arcache;
  output [3:0]M_AXI3_arid;
  output [7:0]M_AXI3_arlen;
  output [0:0]M_AXI3_arlock;
  output [2:0]M_AXI3_arprot;
  output [3:0]M_AXI3_arqos;
  input M_AXI3_arready;
  output [2:0]M_AXI3_arsize;
  output M_AXI3_arvalid;
  output [37:0]M_AXI3_awaddr;
  output [1:0]M_AXI3_awburst;
  output [3:0]M_AXI3_awcache;
  output [3:0]M_AXI3_awid;
  output [7:0]M_AXI3_awlen;
  output [0:0]M_AXI3_awlock;
  output [2:0]M_AXI3_awprot;
  output [3:0]M_AXI3_awqos;
  input M_AXI3_awready;
  output [2:0]M_AXI3_awsize;
  output M_AXI3_awvalid;
  input [3:0]M_AXI3_bid;
  output M_AXI3_bready;
  input [1:0]M_AXI3_bresp;
  input M_AXI3_bvalid;
  input [511:0]M_AXI3_rdata;
  input [3:0]M_AXI3_rid;
  input M_AXI3_rlast;
  output M_AXI3_rready;
  input [1:0]M_AXI3_rresp;
  input M_AXI3_rvalid;
  output [511:0]M_AXI3_wdata;
  output M_AXI3_wlast;
  input M_AXI3_wready;
  output [63:0]M_AXI3_wstrb;
  output M_AXI3_wvalid;
  output [31:0]M_AXI_LITE_araddr;
  output [2:0]M_AXI_LITE_arprot;
  input M_AXI_LITE_arready;
  output M_AXI_LITE_arvalid;
  output [31:0]M_AXI_LITE_awaddr;
  output [2:0]M_AXI_LITE_awprot;
  input M_AXI_LITE_awready;
  output M_AXI_LITE_awvalid;
  output M_AXI_LITE_bready;
  input [1:0]M_AXI_LITE_bresp;
  input M_AXI_LITE_bvalid;
  input [31:0]M_AXI_LITE_rdata;
  output M_AXI_LITE_rready;
  input [1:0]M_AXI_LITE_rresp;
  input M_AXI_LITE_rvalid;
  output [31:0]M_AXI_LITE_wdata;
  input M_AXI_LITE_wready;
  output [3:0]M_AXI_LITE_wstrb;
  output M_AXI_LITE_wvalid;
  output [63:0]M_AXI_araddr;
  output [1:0]M_AXI_arburst;
  output [3:0]M_AXI_arcache;
  output [3:0]M_AXI_arid;
  output [7:0]M_AXI_arlen;
  output [0:0]M_AXI_arlock;
  output [2:0]M_AXI_arprot;
  input M_AXI_arready;
  output [2:0]M_AXI_arsize;
  output M_AXI_arvalid;
  output [63:0]M_AXI_awaddr;
  output [1:0]M_AXI_awburst;
  output [3:0]M_AXI_awcache;
  output [3:0]M_AXI_awid;
  output [7:0]M_AXI_awlen;
  output [0:0]M_AXI_awlock;
  output [2:0]M_AXI_awprot;
  input M_AXI_awready;
  output [2:0]M_AXI_awsize;
  output M_AXI_awvalid;
  input [3:0]M_AXI_bid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [255:0]M_AXI_rdata;
  input [3:0]M_AXI_rid;
  input M_AXI_rlast;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [255:0]M_AXI_wdata;
  output M_AXI_wlast;
  input M_AXI_wready;
  output [31:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input [37:0]S_AXI1_araddr;
  input [1:0]S_AXI1_arburst;
  input [3:0]S_AXI1_arcache;
  input [3:0]S_AXI1_arid;
  input [7:0]S_AXI1_arlen;
  input [0:0]S_AXI1_arlock;
  input [2:0]S_AXI1_arprot;
  input [3:0]S_AXI1_arqos;
  output S_AXI1_arready;
  input [2:0]S_AXI1_arsize;
  input S_AXI1_arvalid;
  input [37:0]S_AXI1_awaddr;
  input [1:0]S_AXI1_awburst;
  input [3:0]S_AXI1_awcache;
  input [3:0]S_AXI1_awid;
  input [7:0]S_AXI1_awlen;
  input [0:0]S_AXI1_awlock;
  input [2:0]S_AXI1_awprot;
  input [3:0]S_AXI1_awqos;
  output S_AXI1_awready;
  input [2:0]S_AXI1_awsize;
  input S_AXI1_awvalid;
  output [3:0]S_AXI1_bid;
  input S_AXI1_bready;
  output [1:0]S_AXI1_bresp;
  output S_AXI1_bvalid;
  output [511:0]S_AXI1_rdata;
  output [3:0]S_AXI1_rid;
  output S_AXI1_rlast;
  input S_AXI1_rready;
  output [1:0]S_AXI1_rresp;
  output S_AXI1_rvalid;
  input [511:0]S_AXI1_wdata;
  input S_AXI1_wlast;
  output S_AXI1_wready;
  input [63:0]S_AXI1_wstrb;
  input S_AXI1_wvalid;
  input [16:0]S_AXI2_araddr;
  input [2:0]S_AXI2_arprot;
  output S_AXI2_arready;
  input S_AXI2_arvalid;
  input [16:0]S_AXI2_awaddr;
  input [2:0]S_AXI2_awprot;
  output S_AXI2_awready;
  input S_AXI2_awvalid;
  input S_AXI2_bready;
  output [1:0]S_AXI2_bresp;
  output S_AXI2_bvalid;
  output [31:0]S_AXI2_rdata;
  input S_AXI2_rready;
  output [1:0]S_AXI2_rresp;
  output S_AXI2_rvalid;
  input [31:0]S_AXI2_wdata;
  output S_AXI2_wready;
  input [3:0]S_AXI2_wstrb;
  input S_AXI2_wvalid;
  input [8:0]S_AXI3_araddr;
  output S_AXI3_arready;
  input S_AXI3_arvalid;
  input [8:0]S_AXI3_awaddr;
  output S_AXI3_awready;
  input S_AXI3_awvalid;
  input S_AXI3_bready;
  output [1:0]S_AXI3_bresp;
  output S_AXI3_bvalid;
  output [31:0]S_AXI3_rdata;
  input S_AXI3_rready;
  output [1:0]S_AXI3_rresp;
  output S_AXI3_rvalid;
  input [31:0]S_AXI3_wdata;
  output S_AXI3_wready;
  input [3:0]S_AXI3_wstrb;
  input S_AXI3_wvalid;
  input [8:0]S_AXI4_araddr;
  output S_AXI4_arready;
  input S_AXI4_arvalid;
  input [8:0]S_AXI4_awaddr;
  output S_AXI4_awready;
  input S_AXI4_awvalid;
  input S_AXI4_bready;
  output [1:0]S_AXI4_bresp;
  output S_AXI4_bvalid;
  output [31:0]S_AXI4_rdata;
  input S_AXI4_rready;
  output [1:0]S_AXI4_rresp;
  output S_AXI4_rvalid;
  input [31:0]S_AXI4_wdata;
  output S_AXI4_wready;
  input [3:0]S_AXI4_wstrb;
  input S_AXI4_wvalid;
  input [8:0]S_AXI5_araddr;
  output S_AXI5_arready;
  input S_AXI5_arvalid;
  input [8:0]S_AXI5_awaddr;
  output S_AXI5_awready;
  input S_AXI5_awvalid;
  input S_AXI5_bready;
  output [1:0]S_AXI5_bresp;
  output S_AXI5_bvalid;
  output [31:0]S_AXI5_rdata;
  input S_AXI5_rready;
  output [1:0]S_AXI5_rresp;
  output S_AXI5_rvalid;
  input [31:0]S_AXI5_wdata;
  output S_AXI5_wready;
  input [3:0]S_AXI5_wstrb;
  input S_AXI5_wvalid;
  input [10:0]S_AXI6_araddr;
  input [2:0]S_AXI6_arprot;
  output S_AXI6_arready;
  input S_AXI6_arvalid;
  input [10:0]S_AXI6_awaddr;
  input [2:0]S_AXI6_awprot;
  output S_AXI6_awready;
  input S_AXI6_awvalid;
  input S_AXI6_bready;
  output [1:0]S_AXI6_bresp;
  output S_AXI6_bvalid;
  output [31:0]S_AXI6_rdata;
  input S_AXI6_rready;
  output [1:0]S_AXI6_rresp;
  output S_AXI6_rvalid;
  input [31:0]S_AXI6_wdata;
  output S_AXI6_wready;
  input [3:0]S_AXI6_wstrb;
  input S_AXI6_wvalid;
  input [37:0]S_AXI_araddr;
  input [1:0]S_AXI_arburst;
  input [3:0]S_AXI_arcache;
  input [3:0]S_AXI_arid;
  input [7:0]S_AXI_arlen;
  input [0:0]S_AXI_arlock;
  input [2:0]S_AXI_arprot;
  input [3:0]S_AXI_arqos;
  output S_AXI_arready;
  input [2:0]S_AXI_arsize;
  input S_AXI_arvalid;
  input [37:0]S_AXI_awaddr;
  input [1:0]S_AXI_awburst;
  input [3:0]S_AXI_awcache;
  input [3:0]S_AXI_awid;
  input [7:0]S_AXI_awlen;
  input [0:0]S_AXI_awlock;
  input [2:0]S_AXI_awprot;
  input [3:0]S_AXI_awqos;
  output S_AXI_awready;
  input [2:0]S_AXI_awsize;
  input S_AXI_awvalid;
  output [3:0]S_AXI_bid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [511:0]S_AXI_rdata;
  output [3:0]S_AXI_rid;
  output S_AXI_rlast;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [511:0]S_AXI_wdata;
  input S_AXI_wlast;
  output S_AXI_wready;
  input [63:0]S_AXI_wstrb;
  input S_AXI_wvalid;
  output axi_aclk;
  output axi_aresetn;
  output clk_out1;
  output clk_out2;
  output clk_out3;
  input [0:0]ext_reset_in;
  input [0:0]gpio_io_i;
  output [0:0]interconnect_aresetn;
  output [0:0]interconnect_aresetn1;
  output locked;
  input [7:0]pcie_mgt_rxn;
  input [7:0]pcie_mgt_rxp;
  output [7:0]pcie_mgt_txn;
  output [7:0]pcie_mgt_txp;
  input sys_rst_n;
  output user_lnk_up;

  wire [7:0]Conn1_rxn;
  wire [7:0]Conn1_rxp;
  wire [7:0]Conn1_txn;
  wire [7:0]Conn1_txp;
  wire [0:0]Conn2_CLK_N;
  wire [0:0]Conn2_CLK_P;
  wire [37:0]S_AXI1_1_ARADDR;
  wire [1:0]S_AXI1_1_ARBURST;
  wire [3:0]S_AXI1_1_ARCACHE;
  wire [3:0]S_AXI1_1_ARID;
  wire [7:0]S_AXI1_1_ARLEN;
  wire [0:0]S_AXI1_1_ARLOCK;
  wire [2:0]S_AXI1_1_ARPROT;
  wire [3:0]S_AXI1_1_ARQOS;
  wire S_AXI1_1_ARREADY;
  wire [2:0]S_AXI1_1_ARSIZE;
  wire S_AXI1_1_ARVALID;
  wire [37:0]S_AXI1_1_AWADDR;
  wire [1:0]S_AXI1_1_AWBURST;
  wire [3:0]S_AXI1_1_AWCACHE;
  wire [3:0]S_AXI1_1_AWID;
  wire [7:0]S_AXI1_1_AWLEN;
  wire [0:0]S_AXI1_1_AWLOCK;
  wire [2:0]S_AXI1_1_AWPROT;
  wire [3:0]S_AXI1_1_AWQOS;
  wire S_AXI1_1_AWREADY;
  wire [2:0]S_AXI1_1_AWSIZE;
  wire S_AXI1_1_AWVALID;
  wire [3:0]S_AXI1_1_BID;
  wire S_AXI1_1_BREADY;
  wire [1:0]S_AXI1_1_BRESP;
  wire S_AXI1_1_BVALID;
  wire [511:0]S_AXI1_1_RDATA;
  wire [3:0]S_AXI1_1_RID;
  wire S_AXI1_1_RLAST;
  wire S_AXI1_1_RREADY;
  wire [1:0]S_AXI1_1_RRESP;
  wire S_AXI1_1_RVALID;
  wire [511:0]S_AXI1_1_WDATA;
  wire S_AXI1_1_WLAST;
  wire S_AXI1_1_WREADY;
  wire [63:0]S_AXI1_1_WSTRB;
  wire S_AXI1_1_WVALID;
  wire [16:0]S_AXI2_1_ARADDR;
  wire [2:0]S_AXI2_1_ARPROT;
  wire S_AXI2_1_ARREADY;
  wire S_AXI2_1_ARVALID;
  wire [16:0]S_AXI2_1_AWADDR;
  wire [2:0]S_AXI2_1_AWPROT;
  wire S_AXI2_1_AWREADY;
  wire S_AXI2_1_AWVALID;
  wire S_AXI2_1_BREADY;
  wire [1:0]S_AXI2_1_BRESP;
  wire S_AXI2_1_BVALID;
  wire [31:0]S_AXI2_1_RDATA;
  wire S_AXI2_1_RREADY;
  wire [1:0]S_AXI2_1_RRESP;
  wire S_AXI2_1_RVALID;
  wire [31:0]S_AXI2_1_WDATA;
  wire S_AXI2_1_WREADY;
  wire [3:0]S_AXI2_1_WSTRB;
  wire S_AXI2_1_WVALID;
  wire [8:0]S_AXI3_1_ARADDR;
  wire S_AXI3_1_ARREADY;
  wire S_AXI3_1_ARVALID;
  wire [8:0]S_AXI3_1_AWADDR;
  wire S_AXI3_1_AWREADY;
  wire S_AXI3_1_AWVALID;
  wire S_AXI3_1_BREADY;
  wire [1:0]S_AXI3_1_BRESP;
  wire S_AXI3_1_BVALID;
  wire [31:0]S_AXI3_1_RDATA;
  wire S_AXI3_1_RREADY;
  wire [1:0]S_AXI3_1_RRESP;
  wire S_AXI3_1_RVALID;
  wire [31:0]S_AXI3_1_WDATA;
  wire S_AXI3_1_WREADY;
  wire [3:0]S_AXI3_1_WSTRB;
  wire S_AXI3_1_WVALID;
  wire [8:0]S_AXI4_1_ARADDR;
  wire S_AXI4_1_ARREADY;
  wire S_AXI4_1_ARVALID;
  wire [8:0]S_AXI4_1_AWADDR;
  wire S_AXI4_1_AWREADY;
  wire S_AXI4_1_AWVALID;
  wire S_AXI4_1_BREADY;
  wire [1:0]S_AXI4_1_BRESP;
  wire S_AXI4_1_BVALID;
  wire [31:0]S_AXI4_1_RDATA;
  wire S_AXI4_1_RREADY;
  wire [1:0]S_AXI4_1_RRESP;
  wire S_AXI4_1_RVALID;
  wire [31:0]S_AXI4_1_WDATA;
  wire S_AXI4_1_WREADY;
  wire [3:0]S_AXI4_1_WSTRB;
  wire S_AXI4_1_WVALID;
  wire [8:0]S_AXI5_1_ARADDR;
  wire S_AXI5_1_ARREADY;
  wire S_AXI5_1_ARVALID;
  wire [8:0]S_AXI5_1_AWADDR;
  wire S_AXI5_1_AWREADY;
  wire S_AXI5_1_AWVALID;
  wire S_AXI5_1_BREADY;
  wire [1:0]S_AXI5_1_BRESP;
  wire S_AXI5_1_BVALID;
  wire [31:0]S_AXI5_1_RDATA;
  wire S_AXI5_1_RREADY;
  wire [1:0]S_AXI5_1_RRESP;
  wire S_AXI5_1_RVALID;
  wire [31:0]S_AXI5_1_WDATA;
  wire S_AXI5_1_WREADY;
  wire [3:0]S_AXI5_1_WSTRB;
  wire S_AXI5_1_WVALID;
  wire [10:0]S_AXI6_1_ARADDR;
  wire [2:0]S_AXI6_1_ARPROT;
  wire S_AXI6_1_ARREADY;
  wire S_AXI6_1_ARVALID;
  wire [10:0]S_AXI6_1_AWADDR;
  wire [2:0]S_AXI6_1_AWPROT;
  wire S_AXI6_1_AWREADY;
  wire S_AXI6_1_AWVALID;
  wire S_AXI6_1_BREADY;
  wire [1:0]S_AXI6_1_BRESP;
  wire S_AXI6_1_BVALID;
  wire [31:0]S_AXI6_1_RDATA;
  wire S_AXI6_1_RREADY;
  wire [1:0]S_AXI6_1_RRESP;
  wire S_AXI6_1_RVALID;
  wire [31:0]S_AXI6_1_WDATA;
  wire S_AXI6_1_WREADY;
  wire [3:0]S_AXI6_1_WSTRB;
  wire S_AXI6_1_WVALID;
  wire [37:0]S_AXI_1_ARADDR;
  wire [1:0]S_AXI_1_ARBURST;
  wire [3:0]S_AXI_1_ARCACHE;
  wire [3:0]S_AXI_1_ARID;
  wire [7:0]S_AXI_1_ARLEN;
  wire [0:0]S_AXI_1_ARLOCK;
  wire [2:0]S_AXI_1_ARPROT;
  wire [3:0]S_AXI_1_ARQOS;
  wire S_AXI_1_ARREADY;
  wire [2:0]S_AXI_1_ARSIZE;
  wire S_AXI_1_ARVALID;
  wire [37:0]S_AXI_1_AWADDR;
  wire [1:0]S_AXI_1_AWBURST;
  wire [3:0]S_AXI_1_AWCACHE;
  wire [3:0]S_AXI_1_AWID;
  wire [7:0]S_AXI_1_AWLEN;
  wire [0:0]S_AXI_1_AWLOCK;
  wire [2:0]S_AXI_1_AWPROT;
  wire [3:0]S_AXI_1_AWQOS;
  wire S_AXI_1_AWREADY;
  wire [2:0]S_AXI_1_AWSIZE;
  wire S_AXI_1_AWVALID;
  wire [3:0]S_AXI_1_BID;
  wire S_AXI_1_BREADY;
  wire [1:0]S_AXI_1_BRESP;
  wire S_AXI_1_BVALID;
  wire [511:0]S_AXI_1_RDATA;
  wire [3:0]S_AXI_1_RID;
  wire S_AXI_1_RLAST;
  wire S_AXI_1_RREADY;
  wire [1:0]S_AXI_1_RRESP;
  wire S_AXI_1_RVALID;
  wire [511:0]S_AXI_1_WDATA;
  wire S_AXI_1_WLAST;
  wire S_AXI_1_WREADY;
  wire [63:0]S_AXI_1_WSTRB;
  wire S_AXI_1_WVALID;
  wire [0:0]base_clocking_IBUF_DS_ODIV2;
  wire [0:0]base_clocking_IBUF_OUT;
  wire base_clocking_clk_out1;
  wire base_clocking_clk_out2;
  wire base_clocking_clk_out3;
  wire base_clocking_locked;
  wire base_clocking_locked1;
  wire [0:0]base_tieoffs_dout;
  wire [2:0]base_tieoffs_dout1;
  wire [0:0]base_tieoffs_dout2;
  wire [63:0]dma_pcie_M_AXI_ARADDR;
  wire [1:0]dma_pcie_M_AXI_ARBURST;
  wire [3:0]dma_pcie_M_AXI_ARCACHE;
  wire [3:0]dma_pcie_M_AXI_ARID;
  wire [7:0]dma_pcie_M_AXI_ARLEN;
  wire dma_pcie_M_AXI_ARLOCK;
  wire [2:0]dma_pcie_M_AXI_ARPROT;
  wire dma_pcie_M_AXI_ARREADY;
  wire [2:0]dma_pcie_M_AXI_ARSIZE;
  wire dma_pcie_M_AXI_ARVALID;
  wire [63:0]dma_pcie_M_AXI_AWADDR;
  wire [1:0]dma_pcie_M_AXI_AWBURST;
  wire [3:0]dma_pcie_M_AXI_AWCACHE;
  wire [3:0]dma_pcie_M_AXI_AWID;
  wire [7:0]dma_pcie_M_AXI_AWLEN;
  wire dma_pcie_M_AXI_AWLOCK;
  wire [2:0]dma_pcie_M_AXI_AWPROT;
  wire dma_pcie_M_AXI_AWREADY;
  wire [2:0]dma_pcie_M_AXI_AWSIZE;
  wire dma_pcie_M_AXI_AWVALID;
  wire [3:0]dma_pcie_M_AXI_BID;
  wire dma_pcie_M_AXI_BREADY;
  wire [1:0]dma_pcie_M_AXI_BRESP;
  wire dma_pcie_M_AXI_BVALID;
  wire [31:0]dma_pcie_M_AXI_LITE_ARADDR;
  wire [2:0]dma_pcie_M_AXI_LITE_ARPROT;
  wire dma_pcie_M_AXI_LITE_ARREADY;
  wire dma_pcie_M_AXI_LITE_ARVALID;
  wire [31:0]dma_pcie_M_AXI_LITE_AWADDR;
  wire [2:0]dma_pcie_M_AXI_LITE_AWPROT;
  wire dma_pcie_M_AXI_LITE_AWREADY;
  wire dma_pcie_M_AXI_LITE_AWVALID;
  wire dma_pcie_M_AXI_LITE_BREADY;
  wire [1:0]dma_pcie_M_AXI_LITE_BRESP;
  wire dma_pcie_M_AXI_LITE_BVALID;
  wire [31:0]dma_pcie_M_AXI_LITE_RDATA;
  wire dma_pcie_M_AXI_LITE_RREADY;
  wire [1:0]dma_pcie_M_AXI_LITE_RRESP;
  wire dma_pcie_M_AXI_LITE_RVALID;
  wire [31:0]dma_pcie_M_AXI_LITE_WDATA;
  wire dma_pcie_M_AXI_LITE_WREADY;
  wire [3:0]dma_pcie_M_AXI_LITE_WSTRB;
  wire dma_pcie_M_AXI_LITE_WVALID;
  wire [255:0]dma_pcie_M_AXI_RDATA;
  wire [3:0]dma_pcie_M_AXI_RID;
  wire dma_pcie_M_AXI_RLAST;
  wire dma_pcie_M_AXI_RREADY;
  wire [1:0]dma_pcie_M_AXI_RRESP;
  wire dma_pcie_M_AXI_RVALID;
  wire [255:0]dma_pcie_M_AXI_WDATA;
  wire dma_pcie_M_AXI_WLAST;
  wire dma_pcie_M_AXI_WREADY;
  wire [31:0]dma_pcie_M_AXI_WSTRB;
  wire dma_pcie_M_AXI_WVALID;
  wire dma_pcie_axi_aclk;
  wire dma_pcie_axi_aresetn;
  wire dma_pcie_user_lnk_up;
  wire [0:0]ext_reset_in_1;
  wire [0:0]gpio_io_i_1;
  wire [37:0]pr_isolation_limited_M_AXI1_ARADDR;
  wire [1:0]pr_isolation_limited_M_AXI1_ARBURST;
  wire [3:0]pr_isolation_limited_M_AXI1_ARCACHE;
  wire [3:0]pr_isolation_limited_M_AXI1_ARID;
  wire [7:0]pr_isolation_limited_M_AXI1_ARLEN;
  wire [0:0]pr_isolation_limited_M_AXI1_ARLOCK;
  wire [2:0]pr_isolation_limited_M_AXI1_ARPROT;
  wire [3:0]pr_isolation_limited_M_AXI1_ARQOS;
  wire pr_isolation_limited_M_AXI1_ARREADY;
  wire [2:0]pr_isolation_limited_M_AXI1_ARSIZE;
  wire pr_isolation_limited_M_AXI1_ARVALID;
  wire [37:0]pr_isolation_limited_M_AXI1_AWADDR;
  wire [1:0]pr_isolation_limited_M_AXI1_AWBURST;
  wire [3:0]pr_isolation_limited_M_AXI1_AWCACHE;
  wire [3:0]pr_isolation_limited_M_AXI1_AWID;
  wire [7:0]pr_isolation_limited_M_AXI1_AWLEN;
  wire [0:0]pr_isolation_limited_M_AXI1_AWLOCK;
  wire [2:0]pr_isolation_limited_M_AXI1_AWPROT;
  wire [3:0]pr_isolation_limited_M_AXI1_AWQOS;
  wire pr_isolation_limited_M_AXI1_AWREADY;
  wire [2:0]pr_isolation_limited_M_AXI1_AWSIZE;
  wire pr_isolation_limited_M_AXI1_AWVALID;
  wire [3:0]pr_isolation_limited_M_AXI1_BID;
  wire pr_isolation_limited_M_AXI1_BREADY;
  wire [1:0]pr_isolation_limited_M_AXI1_BRESP;
  wire pr_isolation_limited_M_AXI1_BVALID;
  wire [511:0]pr_isolation_limited_M_AXI1_RDATA;
  wire [3:0]pr_isolation_limited_M_AXI1_RID;
  wire pr_isolation_limited_M_AXI1_RLAST;
  wire pr_isolation_limited_M_AXI1_RREADY;
  wire [1:0]pr_isolation_limited_M_AXI1_RRESP;
  wire pr_isolation_limited_M_AXI1_RVALID;
  wire [511:0]pr_isolation_limited_M_AXI1_WDATA;
  wire pr_isolation_limited_M_AXI1_WLAST;
  wire pr_isolation_limited_M_AXI1_WREADY;
  wire [63:0]pr_isolation_limited_M_AXI1_WSTRB;
  wire pr_isolation_limited_M_AXI1_WVALID;
  wire [37:0]pr_isolation_limited_M_AXI2_ARADDR;
  wire [1:0]pr_isolation_limited_M_AXI2_ARBURST;
  wire [3:0]pr_isolation_limited_M_AXI2_ARCACHE;
  wire [3:0]pr_isolation_limited_M_AXI2_ARID;
  wire [7:0]pr_isolation_limited_M_AXI2_ARLEN;
  wire [0:0]pr_isolation_limited_M_AXI2_ARLOCK;
  wire [2:0]pr_isolation_limited_M_AXI2_ARPROT;
  wire [3:0]pr_isolation_limited_M_AXI2_ARQOS;
  wire pr_isolation_limited_M_AXI2_ARREADY;
  wire [2:0]pr_isolation_limited_M_AXI2_ARSIZE;
  wire pr_isolation_limited_M_AXI2_ARVALID;
  wire [37:0]pr_isolation_limited_M_AXI2_AWADDR;
  wire [1:0]pr_isolation_limited_M_AXI2_AWBURST;
  wire [3:0]pr_isolation_limited_M_AXI2_AWCACHE;
  wire [3:0]pr_isolation_limited_M_AXI2_AWID;
  wire [7:0]pr_isolation_limited_M_AXI2_AWLEN;
  wire [0:0]pr_isolation_limited_M_AXI2_AWLOCK;
  wire [2:0]pr_isolation_limited_M_AXI2_AWPROT;
  wire [3:0]pr_isolation_limited_M_AXI2_AWQOS;
  wire pr_isolation_limited_M_AXI2_AWREADY;
  wire [2:0]pr_isolation_limited_M_AXI2_AWSIZE;
  wire pr_isolation_limited_M_AXI2_AWVALID;
  wire [3:0]pr_isolation_limited_M_AXI2_BID;
  wire pr_isolation_limited_M_AXI2_BREADY;
  wire [1:0]pr_isolation_limited_M_AXI2_BRESP;
  wire pr_isolation_limited_M_AXI2_BVALID;
  wire [511:0]pr_isolation_limited_M_AXI2_RDATA;
  wire [3:0]pr_isolation_limited_M_AXI2_RID;
  wire pr_isolation_limited_M_AXI2_RLAST;
  wire pr_isolation_limited_M_AXI2_RREADY;
  wire [1:0]pr_isolation_limited_M_AXI2_RRESP;
  wire pr_isolation_limited_M_AXI2_RVALID;
  wire [511:0]pr_isolation_limited_M_AXI2_WDATA;
  wire pr_isolation_limited_M_AXI2_WLAST;
  wire pr_isolation_limited_M_AXI2_WREADY;
  wire [63:0]pr_isolation_limited_M_AXI2_WSTRB;
  wire pr_isolation_limited_M_AXI2_WVALID;
  wire [16:0]pr_isolation_limited_M_AXI_ARADDR;
  wire [2:0]pr_isolation_limited_M_AXI_ARPROT;
  wire pr_isolation_limited_M_AXI_ARREADY;
  wire pr_isolation_limited_M_AXI_ARVALID;
  wire [16:0]pr_isolation_limited_M_AXI_AWADDR;
  wire [2:0]pr_isolation_limited_M_AXI_AWPROT;
  wire pr_isolation_limited_M_AXI_AWREADY;
  wire pr_isolation_limited_M_AXI_AWVALID;
  wire pr_isolation_limited_M_AXI_BREADY;
  wire [1:0]pr_isolation_limited_M_AXI_BRESP;
  wire pr_isolation_limited_M_AXI_BVALID;
  wire [31:0]pr_isolation_limited_M_AXI_RDATA;
  wire pr_isolation_limited_M_AXI_RREADY;
  wire [1:0]pr_isolation_limited_M_AXI_RRESP;
  wire pr_isolation_limited_M_AXI_RVALID;
  wire [31:0]pr_isolation_limited_M_AXI_WDATA;
  wire pr_isolation_limited_M_AXI_WREADY;
  wire [3:0]pr_isolation_limited_M_AXI_WSTRB;
  wire pr_isolation_limited_M_AXI_WVALID;
  wire [0:0]pr_isolation_limited_interconnect_aresetn;
  wire [0:0]pr_isolation_limited_interconnect_aresetn1;
  wire sys_rst_n_1;

  assign Conn1_rxn = pcie_mgt_rxn[7:0];
  assign Conn1_rxp = pcie_mgt_rxp[7:0];
  assign Conn2_CLK_N = CLK_IN_D_clk_n[0];
  assign Conn2_CLK_P = CLK_IN_D_clk_p[0];
  assign M_AXI1_araddr[16:0] = pr_isolation_limited_M_AXI_ARADDR;
  assign M_AXI1_arprot[2:0] = pr_isolation_limited_M_AXI_ARPROT;
  assign M_AXI1_arvalid = pr_isolation_limited_M_AXI_ARVALID;
  assign M_AXI1_awaddr[16:0] = pr_isolation_limited_M_AXI_AWADDR;
  assign M_AXI1_awprot[2:0] = pr_isolation_limited_M_AXI_AWPROT;
  assign M_AXI1_awvalid = pr_isolation_limited_M_AXI_AWVALID;
  assign M_AXI1_bready = pr_isolation_limited_M_AXI_BREADY;
  assign M_AXI1_rready = pr_isolation_limited_M_AXI_RREADY;
  assign M_AXI1_wdata[31:0] = pr_isolation_limited_M_AXI_WDATA;
  assign M_AXI1_wstrb[3:0] = pr_isolation_limited_M_AXI_WSTRB;
  assign M_AXI1_wvalid = pr_isolation_limited_M_AXI_WVALID;
  assign M_AXI2_araddr[37:0] = pr_isolation_limited_M_AXI1_ARADDR;
  assign M_AXI2_arburst[1:0] = pr_isolation_limited_M_AXI1_ARBURST;
  assign M_AXI2_arcache[3:0] = pr_isolation_limited_M_AXI1_ARCACHE;
  assign M_AXI2_arid[3:0] = pr_isolation_limited_M_AXI1_ARID;
  assign M_AXI2_arlen[7:0] = pr_isolation_limited_M_AXI1_ARLEN;
  assign M_AXI2_arlock[0] = pr_isolation_limited_M_AXI1_ARLOCK;
  assign M_AXI2_arprot[2:0] = pr_isolation_limited_M_AXI1_ARPROT;
  assign M_AXI2_arqos[3:0] = pr_isolation_limited_M_AXI1_ARQOS;
  assign M_AXI2_arsize[2:0] = pr_isolation_limited_M_AXI1_ARSIZE;
  assign M_AXI2_arvalid = pr_isolation_limited_M_AXI1_ARVALID;
  assign M_AXI2_awaddr[37:0] = pr_isolation_limited_M_AXI1_AWADDR;
  assign M_AXI2_awburst[1:0] = pr_isolation_limited_M_AXI1_AWBURST;
  assign M_AXI2_awcache[3:0] = pr_isolation_limited_M_AXI1_AWCACHE;
  assign M_AXI2_awid[3:0] = pr_isolation_limited_M_AXI1_AWID;
  assign M_AXI2_awlen[7:0] = pr_isolation_limited_M_AXI1_AWLEN;
  assign M_AXI2_awlock[0] = pr_isolation_limited_M_AXI1_AWLOCK;
  assign M_AXI2_awprot[2:0] = pr_isolation_limited_M_AXI1_AWPROT;
  assign M_AXI2_awqos[3:0] = pr_isolation_limited_M_AXI1_AWQOS;
  assign M_AXI2_awsize[2:0] = pr_isolation_limited_M_AXI1_AWSIZE;
  assign M_AXI2_awvalid = pr_isolation_limited_M_AXI1_AWVALID;
  assign M_AXI2_bready = pr_isolation_limited_M_AXI1_BREADY;
  assign M_AXI2_rready = pr_isolation_limited_M_AXI1_RREADY;
  assign M_AXI2_wdata[511:0] = pr_isolation_limited_M_AXI1_WDATA;
  assign M_AXI2_wlast = pr_isolation_limited_M_AXI1_WLAST;
  assign M_AXI2_wstrb[63:0] = pr_isolation_limited_M_AXI1_WSTRB;
  assign M_AXI2_wvalid = pr_isolation_limited_M_AXI1_WVALID;
  assign M_AXI3_araddr[37:0] = pr_isolation_limited_M_AXI2_ARADDR;
  assign M_AXI3_arburst[1:0] = pr_isolation_limited_M_AXI2_ARBURST;
  assign M_AXI3_arcache[3:0] = pr_isolation_limited_M_AXI2_ARCACHE;
  assign M_AXI3_arid[3:0] = pr_isolation_limited_M_AXI2_ARID;
  assign M_AXI3_arlen[7:0] = pr_isolation_limited_M_AXI2_ARLEN;
  assign M_AXI3_arlock[0] = pr_isolation_limited_M_AXI2_ARLOCK;
  assign M_AXI3_arprot[2:0] = pr_isolation_limited_M_AXI2_ARPROT;
  assign M_AXI3_arqos[3:0] = pr_isolation_limited_M_AXI2_ARQOS;
  assign M_AXI3_arsize[2:0] = pr_isolation_limited_M_AXI2_ARSIZE;
  assign M_AXI3_arvalid = pr_isolation_limited_M_AXI2_ARVALID;
  assign M_AXI3_awaddr[37:0] = pr_isolation_limited_M_AXI2_AWADDR;
  assign M_AXI3_awburst[1:0] = pr_isolation_limited_M_AXI2_AWBURST;
  assign M_AXI3_awcache[3:0] = pr_isolation_limited_M_AXI2_AWCACHE;
  assign M_AXI3_awid[3:0] = pr_isolation_limited_M_AXI2_AWID;
  assign M_AXI3_awlen[7:0] = pr_isolation_limited_M_AXI2_AWLEN;
  assign M_AXI3_awlock[0] = pr_isolation_limited_M_AXI2_AWLOCK;
  assign M_AXI3_awprot[2:0] = pr_isolation_limited_M_AXI2_AWPROT;
  assign M_AXI3_awqos[3:0] = pr_isolation_limited_M_AXI2_AWQOS;
  assign M_AXI3_awsize[2:0] = pr_isolation_limited_M_AXI2_AWSIZE;
  assign M_AXI3_awvalid = pr_isolation_limited_M_AXI2_AWVALID;
  assign M_AXI3_bready = pr_isolation_limited_M_AXI2_BREADY;
  assign M_AXI3_rready = pr_isolation_limited_M_AXI2_RREADY;
  assign M_AXI3_wdata[511:0] = pr_isolation_limited_M_AXI2_WDATA;
  assign M_AXI3_wlast = pr_isolation_limited_M_AXI2_WLAST;
  assign M_AXI3_wstrb[63:0] = pr_isolation_limited_M_AXI2_WSTRB;
  assign M_AXI3_wvalid = pr_isolation_limited_M_AXI2_WVALID;
  assign M_AXI_LITE_araddr[31:0] = dma_pcie_M_AXI_LITE_ARADDR;
  assign M_AXI_LITE_arprot[2:0] = dma_pcie_M_AXI_LITE_ARPROT;
  assign M_AXI_LITE_arvalid = dma_pcie_M_AXI_LITE_ARVALID;
  assign M_AXI_LITE_awaddr[31:0] = dma_pcie_M_AXI_LITE_AWADDR;
  assign M_AXI_LITE_awprot[2:0] = dma_pcie_M_AXI_LITE_AWPROT;
  assign M_AXI_LITE_awvalid = dma_pcie_M_AXI_LITE_AWVALID;
  assign M_AXI_LITE_bready = dma_pcie_M_AXI_LITE_BREADY;
  assign M_AXI_LITE_rready = dma_pcie_M_AXI_LITE_RREADY;
  assign M_AXI_LITE_wdata[31:0] = dma_pcie_M_AXI_LITE_WDATA;
  assign M_AXI_LITE_wstrb[3:0] = dma_pcie_M_AXI_LITE_WSTRB;
  assign M_AXI_LITE_wvalid = dma_pcie_M_AXI_LITE_WVALID;
  assign M_AXI_araddr[63:0] = dma_pcie_M_AXI_ARADDR;
  assign M_AXI_arburst[1:0] = dma_pcie_M_AXI_ARBURST;
  assign M_AXI_arcache[3:0] = dma_pcie_M_AXI_ARCACHE;
  assign M_AXI_arid[3:0] = dma_pcie_M_AXI_ARID;
  assign M_AXI_arlen[7:0] = dma_pcie_M_AXI_ARLEN;
  assign M_AXI_arlock[0] = dma_pcie_M_AXI_ARLOCK;
  assign M_AXI_arprot[2:0] = dma_pcie_M_AXI_ARPROT;
  assign M_AXI_arsize[2:0] = dma_pcie_M_AXI_ARSIZE;
  assign M_AXI_arvalid = dma_pcie_M_AXI_ARVALID;
  assign M_AXI_awaddr[63:0] = dma_pcie_M_AXI_AWADDR;
  assign M_AXI_awburst[1:0] = dma_pcie_M_AXI_AWBURST;
  assign M_AXI_awcache[3:0] = dma_pcie_M_AXI_AWCACHE;
  assign M_AXI_awid[3:0] = dma_pcie_M_AXI_AWID;
  assign M_AXI_awlen[7:0] = dma_pcie_M_AXI_AWLEN;
  assign M_AXI_awlock[0] = dma_pcie_M_AXI_AWLOCK;
  assign M_AXI_awprot[2:0] = dma_pcie_M_AXI_AWPROT;
  assign M_AXI_awsize[2:0] = dma_pcie_M_AXI_AWSIZE;
  assign M_AXI_awvalid = dma_pcie_M_AXI_AWVALID;
  assign M_AXI_bready = dma_pcie_M_AXI_BREADY;
  assign M_AXI_rready = dma_pcie_M_AXI_RREADY;
  assign M_AXI_wdata[255:0] = dma_pcie_M_AXI_WDATA;
  assign M_AXI_wlast = dma_pcie_M_AXI_WLAST;
  assign M_AXI_wstrb[31:0] = dma_pcie_M_AXI_WSTRB;
  assign M_AXI_wvalid = dma_pcie_M_AXI_WVALID;
  assign S_AXI1_1_ARADDR = S_AXI1_araddr[37:0];
  assign S_AXI1_1_ARBURST = S_AXI1_arburst[1:0];
  assign S_AXI1_1_ARCACHE = S_AXI1_arcache[3:0];
  assign S_AXI1_1_ARID = S_AXI1_arid[3:0];
  assign S_AXI1_1_ARLEN = S_AXI1_arlen[7:0];
  assign S_AXI1_1_ARLOCK = S_AXI1_arlock[0];
  assign S_AXI1_1_ARPROT = S_AXI1_arprot[2:0];
  assign S_AXI1_1_ARQOS = S_AXI1_arqos[3:0];
  assign S_AXI1_1_ARSIZE = S_AXI1_arsize[2:0];
  assign S_AXI1_1_ARVALID = S_AXI1_arvalid;
  assign S_AXI1_1_AWADDR = S_AXI1_awaddr[37:0];
  assign S_AXI1_1_AWBURST = S_AXI1_awburst[1:0];
  assign S_AXI1_1_AWCACHE = S_AXI1_awcache[3:0];
  assign S_AXI1_1_AWID = S_AXI1_awid[3:0];
  assign S_AXI1_1_AWLEN = S_AXI1_awlen[7:0];
  assign S_AXI1_1_AWLOCK = S_AXI1_awlock[0];
  assign S_AXI1_1_AWPROT = S_AXI1_awprot[2:0];
  assign S_AXI1_1_AWQOS = S_AXI1_awqos[3:0];
  assign S_AXI1_1_AWSIZE = S_AXI1_awsize[2:0];
  assign S_AXI1_1_AWVALID = S_AXI1_awvalid;
  assign S_AXI1_1_BREADY = S_AXI1_bready;
  assign S_AXI1_1_RREADY = S_AXI1_rready;
  assign S_AXI1_1_WDATA = S_AXI1_wdata[511:0];
  assign S_AXI1_1_WLAST = S_AXI1_wlast;
  assign S_AXI1_1_WSTRB = S_AXI1_wstrb[63:0];
  assign S_AXI1_1_WVALID = S_AXI1_wvalid;
  assign S_AXI1_arready = S_AXI1_1_ARREADY;
  assign S_AXI1_awready = S_AXI1_1_AWREADY;
  assign S_AXI1_bid[3:0] = S_AXI1_1_BID;
  assign S_AXI1_bresp[1:0] = S_AXI1_1_BRESP;
  assign S_AXI1_bvalid = S_AXI1_1_BVALID;
  assign S_AXI1_rdata[511:0] = S_AXI1_1_RDATA;
  assign S_AXI1_rid[3:0] = S_AXI1_1_RID;
  assign S_AXI1_rlast = S_AXI1_1_RLAST;
  assign S_AXI1_rresp[1:0] = S_AXI1_1_RRESP;
  assign S_AXI1_rvalid = S_AXI1_1_RVALID;
  assign S_AXI1_wready = S_AXI1_1_WREADY;
  assign S_AXI2_1_ARADDR = S_AXI2_araddr[16:0];
  assign S_AXI2_1_ARPROT = S_AXI2_arprot[2:0];
  assign S_AXI2_1_ARVALID = S_AXI2_arvalid;
  assign S_AXI2_1_AWADDR = S_AXI2_awaddr[16:0];
  assign S_AXI2_1_AWPROT = S_AXI2_awprot[2:0];
  assign S_AXI2_1_AWVALID = S_AXI2_awvalid;
  assign S_AXI2_1_BREADY = S_AXI2_bready;
  assign S_AXI2_1_RREADY = S_AXI2_rready;
  assign S_AXI2_1_WDATA = S_AXI2_wdata[31:0];
  assign S_AXI2_1_WSTRB = S_AXI2_wstrb[3:0];
  assign S_AXI2_1_WVALID = S_AXI2_wvalid;
  assign S_AXI2_arready = S_AXI2_1_ARREADY;
  assign S_AXI2_awready = S_AXI2_1_AWREADY;
  assign S_AXI2_bresp[1:0] = S_AXI2_1_BRESP;
  assign S_AXI2_bvalid = S_AXI2_1_BVALID;
  assign S_AXI2_rdata[31:0] = S_AXI2_1_RDATA;
  assign S_AXI2_rresp[1:0] = S_AXI2_1_RRESP;
  assign S_AXI2_rvalid = S_AXI2_1_RVALID;
  assign S_AXI2_wready = S_AXI2_1_WREADY;
  assign S_AXI3_1_ARADDR = S_AXI3_araddr[8:0];
  assign S_AXI3_1_ARVALID = S_AXI3_arvalid;
  assign S_AXI3_1_AWADDR = S_AXI3_awaddr[8:0];
  assign S_AXI3_1_AWVALID = S_AXI3_awvalid;
  assign S_AXI3_1_BREADY = S_AXI3_bready;
  assign S_AXI3_1_RREADY = S_AXI3_rready;
  assign S_AXI3_1_WDATA = S_AXI3_wdata[31:0];
  assign S_AXI3_1_WSTRB = S_AXI3_wstrb[3:0];
  assign S_AXI3_1_WVALID = S_AXI3_wvalid;
  assign S_AXI3_arready = S_AXI3_1_ARREADY;
  assign S_AXI3_awready = S_AXI3_1_AWREADY;
  assign S_AXI3_bresp[1:0] = S_AXI3_1_BRESP;
  assign S_AXI3_bvalid = S_AXI3_1_BVALID;
  assign S_AXI3_rdata[31:0] = S_AXI3_1_RDATA;
  assign S_AXI3_rresp[1:0] = S_AXI3_1_RRESP;
  assign S_AXI3_rvalid = S_AXI3_1_RVALID;
  assign S_AXI3_wready = S_AXI3_1_WREADY;
  assign S_AXI4_1_ARADDR = S_AXI4_araddr[8:0];
  assign S_AXI4_1_ARVALID = S_AXI4_arvalid;
  assign S_AXI4_1_AWADDR = S_AXI4_awaddr[8:0];
  assign S_AXI4_1_AWVALID = S_AXI4_awvalid;
  assign S_AXI4_1_BREADY = S_AXI4_bready;
  assign S_AXI4_1_RREADY = S_AXI4_rready;
  assign S_AXI4_1_WDATA = S_AXI4_wdata[31:0];
  assign S_AXI4_1_WSTRB = S_AXI4_wstrb[3:0];
  assign S_AXI4_1_WVALID = S_AXI4_wvalid;
  assign S_AXI4_arready = S_AXI4_1_ARREADY;
  assign S_AXI4_awready = S_AXI4_1_AWREADY;
  assign S_AXI4_bresp[1:0] = S_AXI4_1_BRESP;
  assign S_AXI4_bvalid = S_AXI4_1_BVALID;
  assign S_AXI4_rdata[31:0] = S_AXI4_1_RDATA;
  assign S_AXI4_rresp[1:0] = S_AXI4_1_RRESP;
  assign S_AXI4_rvalid = S_AXI4_1_RVALID;
  assign S_AXI4_wready = S_AXI4_1_WREADY;
  assign S_AXI5_1_ARADDR = S_AXI5_araddr[8:0];
  assign S_AXI5_1_ARVALID = S_AXI5_arvalid;
  assign S_AXI5_1_AWADDR = S_AXI5_awaddr[8:0];
  assign S_AXI5_1_AWVALID = S_AXI5_awvalid;
  assign S_AXI5_1_BREADY = S_AXI5_bready;
  assign S_AXI5_1_RREADY = S_AXI5_rready;
  assign S_AXI5_1_WDATA = S_AXI5_wdata[31:0];
  assign S_AXI5_1_WSTRB = S_AXI5_wstrb[3:0];
  assign S_AXI5_1_WVALID = S_AXI5_wvalid;
  assign S_AXI5_arready = S_AXI5_1_ARREADY;
  assign S_AXI5_awready = S_AXI5_1_AWREADY;
  assign S_AXI5_bresp[1:0] = S_AXI5_1_BRESP;
  assign S_AXI5_bvalid = S_AXI5_1_BVALID;
  assign S_AXI5_rdata[31:0] = S_AXI5_1_RDATA;
  assign S_AXI5_rresp[1:0] = S_AXI5_1_RRESP;
  assign S_AXI5_rvalid = S_AXI5_1_RVALID;
  assign S_AXI5_wready = S_AXI5_1_WREADY;
  assign S_AXI6_1_ARADDR = S_AXI6_araddr[10:0];
  assign S_AXI6_1_ARPROT = S_AXI6_arprot[2:0];
  assign S_AXI6_1_ARVALID = S_AXI6_arvalid;
  assign S_AXI6_1_AWADDR = S_AXI6_awaddr[10:0];
  assign S_AXI6_1_AWPROT = S_AXI6_awprot[2:0];
  assign S_AXI6_1_AWVALID = S_AXI6_awvalid;
  assign S_AXI6_1_BREADY = S_AXI6_bready;
  assign S_AXI6_1_RREADY = S_AXI6_rready;
  assign S_AXI6_1_WDATA = S_AXI6_wdata[31:0];
  assign S_AXI6_1_WSTRB = S_AXI6_wstrb[3:0];
  assign S_AXI6_1_WVALID = S_AXI6_wvalid;
  assign S_AXI6_arready = S_AXI6_1_ARREADY;
  assign S_AXI6_awready = S_AXI6_1_AWREADY;
  assign S_AXI6_bresp[1:0] = S_AXI6_1_BRESP;
  assign S_AXI6_bvalid = S_AXI6_1_BVALID;
  assign S_AXI6_rdata[31:0] = S_AXI6_1_RDATA;
  assign S_AXI6_rresp[1:0] = S_AXI6_1_RRESP;
  assign S_AXI6_rvalid = S_AXI6_1_RVALID;
  assign S_AXI6_wready = S_AXI6_1_WREADY;
  assign S_AXI_1_ARADDR = S_AXI_araddr[37:0];
  assign S_AXI_1_ARBURST = S_AXI_arburst[1:0];
  assign S_AXI_1_ARCACHE = S_AXI_arcache[3:0];
  assign S_AXI_1_ARID = S_AXI_arid[3:0];
  assign S_AXI_1_ARLEN = S_AXI_arlen[7:0];
  assign S_AXI_1_ARLOCK = S_AXI_arlock[0];
  assign S_AXI_1_ARPROT = S_AXI_arprot[2:0];
  assign S_AXI_1_ARQOS = S_AXI_arqos[3:0];
  assign S_AXI_1_ARSIZE = S_AXI_arsize[2:0];
  assign S_AXI_1_ARVALID = S_AXI_arvalid;
  assign S_AXI_1_AWADDR = S_AXI_awaddr[37:0];
  assign S_AXI_1_AWBURST = S_AXI_awburst[1:0];
  assign S_AXI_1_AWCACHE = S_AXI_awcache[3:0];
  assign S_AXI_1_AWID = S_AXI_awid[3:0];
  assign S_AXI_1_AWLEN = S_AXI_awlen[7:0];
  assign S_AXI_1_AWLOCK = S_AXI_awlock[0];
  assign S_AXI_1_AWPROT = S_AXI_awprot[2:0];
  assign S_AXI_1_AWQOS = S_AXI_awqos[3:0];
  assign S_AXI_1_AWSIZE = S_AXI_awsize[2:0];
  assign S_AXI_1_AWVALID = S_AXI_awvalid;
  assign S_AXI_1_BREADY = S_AXI_bready;
  assign S_AXI_1_RREADY = S_AXI_rready;
  assign S_AXI_1_WDATA = S_AXI_wdata[511:0];
  assign S_AXI_1_WLAST = S_AXI_wlast;
  assign S_AXI_1_WSTRB = S_AXI_wstrb[63:0];
  assign S_AXI_1_WVALID = S_AXI_wvalid;
  assign S_AXI_arready = S_AXI_1_ARREADY;
  assign S_AXI_awready = S_AXI_1_AWREADY;
  assign S_AXI_bid[3:0] = S_AXI_1_BID;
  assign S_AXI_bresp[1:0] = S_AXI_1_BRESP;
  assign S_AXI_bvalid = S_AXI_1_BVALID;
  assign S_AXI_rdata[511:0] = S_AXI_1_RDATA;
  assign S_AXI_rid[3:0] = S_AXI_1_RID;
  assign S_AXI_rlast = S_AXI_1_RLAST;
  assign S_AXI_rresp[1:0] = S_AXI_1_RRESP;
  assign S_AXI_rvalid = S_AXI_1_RVALID;
  assign S_AXI_wready = S_AXI_1_WREADY;
  assign axi_aclk = dma_pcie_axi_aclk;
  assign axi_aresetn = dma_pcie_axi_aresetn;
  assign clk_out1 = base_clocking_clk_out1;
  assign clk_out2 = base_clocking_clk_out2;
  assign clk_out3 = base_clocking_clk_out3;
  assign dma_pcie_M_AXI_ARREADY = M_AXI_arready;
  assign dma_pcie_M_AXI_AWREADY = M_AXI_awready;
  assign dma_pcie_M_AXI_BID = M_AXI_bid[3:0];
  assign dma_pcie_M_AXI_BRESP = M_AXI_bresp[1:0];
  assign dma_pcie_M_AXI_BVALID = M_AXI_bvalid;
  assign dma_pcie_M_AXI_LITE_ARREADY = M_AXI_LITE_arready;
  assign dma_pcie_M_AXI_LITE_AWREADY = M_AXI_LITE_awready;
  assign dma_pcie_M_AXI_LITE_BRESP = M_AXI_LITE_bresp[1:0];
  assign dma_pcie_M_AXI_LITE_BVALID = M_AXI_LITE_bvalid;
  assign dma_pcie_M_AXI_LITE_RDATA = M_AXI_LITE_rdata[31:0];
  assign dma_pcie_M_AXI_LITE_RRESP = M_AXI_LITE_rresp[1:0];
  assign dma_pcie_M_AXI_LITE_RVALID = M_AXI_LITE_rvalid;
  assign dma_pcie_M_AXI_LITE_WREADY = M_AXI_LITE_wready;
  assign dma_pcie_M_AXI_RDATA = M_AXI_rdata[255:0];
  assign dma_pcie_M_AXI_RID = M_AXI_rid[3:0];
  assign dma_pcie_M_AXI_RLAST = M_AXI_rlast;
  assign dma_pcie_M_AXI_RRESP = M_AXI_rresp[1:0];
  assign dma_pcie_M_AXI_RVALID = M_AXI_rvalid;
  assign dma_pcie_M_AXI_WREADY = M_AXI_wready;
  assign ext_reset_in_1 = ext_reset_in[0];
  assign gpio_io_i_1 = gpio_io_i[0];
  assign interconnect_aresetn[0] = pr_isolation_limited_interconnect_aresetn;
  assign interconnect_aresetn1[0] = pr_isolation_limited_interconnect_aresetn1;
  assign locked = base_clocking_locked1;
  assign pcie_mgt_txn[7:0] = Conn1_txn;
  assign pcie_mgt_txp[7:0] = Conn1_txp;
  assign pr_isolation_limited_M_AXI1_ARREADY = M_AXI2_arready;
  assign pr_isolation_limited_M_AXI1_AWREADY = M_AXI2_awready;
  assign pr_isolation_limited_M_AXI1_BID = M_AXI2_bid[3:0];
  assign pr_isolation_limited_M_AXI1_BRESP = M_AXI2_bresp[1:0];
  assign pr_isolation_limited_M_AXI1_BVALID = M_AXI2_bvalid;
  assign pr_isolation_limited_M_AXI1_RDATA = M_AXI2_rdata[511:0];
  assign pr_isolation_limited_M_AXI1_RID = M_AXI2_rid[3:0];
  assign pr_isolation_limited_M_AXI1_RLAST = M_AXI2_rlast;
  assign pr_isolation_limited_M_AXI1_RRESP = M_AXI2_rresp[1:0];
  assign pr_isolation_limited_M_AXI1_RVALID = M_AXI2_rvalid;
  assign pr_isolation_limited_M_AXI1_WREADY = M_AXI2_wready;
  assign pr_isolation_limited_M_AXI2_ARREADY = M_AXI3_arready;
  assign pr_isolation_limited_M_AXI2_AWREADY = M_AXI3_awready;
  assign pr_isolation_limited_M_AXI2_BID = M_AXI3_bid[3:0];
  assign pr_isolation_limited_M_AXI2_BRESP = M_AXI3_bresp[1:0];
  assign pr_isolation_limited_M_AXI2_BVALID = M_AXI3_bvalid;
  assign pr_isolation_limited_M_AXI2_RDATA = M_AXI3_rdata[511:0];
  assign pr_isolation_limited_M_AXI2_RID = M_AXI3_rid[3:0];
  assign pr_isolation_limited_M_AXI2_RLAST = M_AXI3_rlast;
  assign pr_isolation_limited_M_AXI2_RRESP = M_AXI3_rresp[1:0];
  assign pr_isolation_limited_M_AXI2_RVALID = M_AXI3_rvalid;
  assign pr_isolation_limited_M_AXI2_WREADY = M_AXI3_wready;
  assign pr_isolation_limited_M_AXI_ARREADY = M_AXI1_arready;
  assign pr_isolation_limited_M_AXI_AWREADY = M_AXI1_awready;
  assign pr_isolation_limited_M_AXI_BRESP = M_AXI1_bresp[1:0];
  assign pr_isolation_limited_M_AXI_BVALID = M_AXI1_bvalid;
  assign pr_isolation_limited_M_AXI_RDATA = M_AXI1_rdata[31:0];
  assign pr_isolation_limited_M_AXI_RRESP = M_AXI1_rresp[1:0];
  assign pr_isolation_limited_M_AXI_RVALID = M_AXI1_rvalid;
  assign pr_isolation_limited_M_AXI_WREADY = M_AXI1_wready;
  assign sys_rst_n_1 = sys_rst_n;
  assign user_lnk_up = dma_pcie_user_lnk_up;
  base_clocking_imp_TFI73W base_clocking
       (.BUFG_GT_CE(base_tieoffs_dout2),
        .BUFG_GT_CEMASK(base_tieoffs_dout),
        .BUFG_GT_CLR(base_tieoffs_dout),
        .BUFG_GT_CLRMASK(base_tieoffs_dout),
        .BUFG_GT_DIV(base_tieoffs_dout1),
        .CLK_IN_D_clk_n(Conn2_CLK_N),
        .CLK_IN_D_clk_p(Conn2_CLK_P),
        .IBUF_DS_ODIV2(base_clocking_IBUF_DS_ODIV2),
        .IBUF_OUT(base_clocking_IBUF_OUT),
        .S_AXI_araddr(S_AXI6_1_ARADDR),
        .S_AXI_arprot(S_AXI6_1_ARPROT),
        .S_AXI_arready(S_AXI6_1_ARREADY),
        .S_AXI_arvalid(S_AXI6_1_ARVALID),
        .S_AXI_awaddr(S_AXI6_1_AWADDR),
        .S_AXI_awprot(S_AXI6_1_AWPROT),
        .S_AXI_awready(S_AXI6_1_AWREADY),
        .S_AXI_awvalid(S_AXI6_1_AWVALID),
        .S_AXI_bready(S_AXI6_1_BREADY),
        .S_AXI_bresp(S_AXI6_1_BRESP),
        .S_AXI_bvalid(S_AXI6_1_BVALID),
        .S_AXI_rdata(S_AXI6_1_RDATA),
        .S_AXI_rready(S_AXI6_1_RREADY),
        .S_AXI_rresp(S_AXI6_1_RRESP),
        .S_AXI_rvalid(S_AXI6_1_RVALID),
        .S_AXI_wdata(S_AXI6_1_WDATA),
        .S_AXI_wready(S_AXI6_1_WREADY),
        .S_AXI_wstrb(S_AXI6_1_WSTRB),
        .S_AXI_wvalid(S_AXI6_1_WVALID),
        .clk_out1(base_clocking_clk_out1),
        .clk_out2(base_clocking_clk_out2),
        .clk_out3(base_clocking_clk_out3),
        .ext_reset_in(sys_rst_n_1),
        .locked(base_clocking_locked),
        .locked1(base_clocking_locked1),
        .s_axi_aresetn(ext_reset_in_1));
  base_tieoffs_imp_15UYBSQ base_tieoffs
       (.dout(base_tieoffs_dout),
        .dout1(base_tieoffs_dout1),
        .dout2(base_tieoffs_dout2));
  xcl_design_dma_pcie_0 dma_pcie
       (.axi_aclk(dma_pcie_axi_aclk),
        .axi_aresetn(dma_pcie_axi_aresetn),
        .cap_gnt(1'b1),
        .cap_rel(1'b0),
        .m_axi_araddr(dma_pcie_M_AXI_ARADDR),
        .m_axi_arburst(dma_pcie_M_AXI_ARBURST),
        .m_axi_arcache(dma_pcie_M_AXI_ARCACHE),
        .m_axi_arid(dma_pcie_M_AXI_ARID),
        .m_axi_arlen(dma_pcie_M_AXI_ARLEN),
        .m_axi_arlock(dma_pcie_M_AXI_ARLOCK),
        .m_axi_arprot(dma_pcie_M_AXI_ARPROT),
        .m_axi_arready(dma_pcie_M_AXI_ARREADY),
        .m_axi_arsize(dma_pcie_M_AXI_ARSIZE),
        .m_axi_arvalid(dma_pcie_M_AXI_ARVALID),
        .m_axi_awaddr(dma_pcie_M_AXI_AWADDR),
        .m_axi_awburst(dma_pcie_M_AXI_AWBURST),
        .m_axi_awcache(dma_pcie_M_AXI_AWCACHE),
        .m_axi_awid(dma_pcie_M_AXI_AWID),
        .m_axi_awlen(dma_pcie_M_AXI_AWLEN),
        .m_axi_awlock(dma_pcie_M_AXI_AWLOCK),
        .m_axi_awprot(dma_pcie_M_AXI_AWPROT),
        .m_axi_awready(dma_pcie_M_AXI_AWREADY),
        .m_axi_awsize(dma_pcie_M_AXI_AWSIZE),
        .m_axi_awvalid(dma_pcie_M_AXI_AWVALID),
        .m_axi_bid(dma_pcie_M_AXI_BID),
        .m_axi_bready(dma_pcie_M_AXI_BREADY),
        .m_axi_bresp(dma_pcie_M_AXI_BRESP),
        .m_axi_bvalid(dma_pcie_M_AXI_BVALID),
        .m_axi_rdata(dma_pcie_M_AXI_RDATA),
        .m_axi_rid(dma_pcie_M_AXI_RID),
        .m_axi_rlast(dma_pcie_M_AXI_RLAST),
        .m_axi_rready(dma_pcie_M_AXI_RREADY),
        .m_axi_rresp(dma_pcie_M_AXI_RRESP),
        .m_axi_rvalid(dma_pcie_M_AXI_RVALID),
        .m_axi_wdata(dma_pcie_M_AXI_WDATA),
        .m_axi_wlast(dma_pcie_M_AXI_WLAST),
        .m_axi_wready(dma_pcie_M_AXI_WREADY),
        .m_axi_wstrb(dma_pcie_M_AXI_WSTRB),
        .m_axi_wvalid(dma_pcie_M_AXI_WVALID),
        .m_axil_araddr(dma_pcie_M_AXI_LITE_ARADDR),
        .m_axil_arprot(dma_pcie_M_AXI_LITE_ARPROT),
        .m_axil_arready(dma_pcie_M_AXI_LITE_ARREADY),
        .m_axil_arvalid(dma_pcie_M_AXI_LITE_ARVALID),
        .m_axil_awaddr(dma_pcie_M_AXI_LITE_AWADDR),
        .m_axil_awprot(dma_pcie_M_AXI_LITE_AWPROT),
        .m_axil_awready(dma_pcie_M_AXI_LITE_AWREADY),
        .m_axil_awvalid(dma_pcie_M_AXI_LITE_AWVALID),
        .m_axil_bready(dma_pcie_M_AXI_LITE_BREADY),
        .m_axil_bresp(dma_pcie_M_AXI_LITE_BRESP),
        .m_axil_bvalid(dma_pcie_M_AXI_LITE_BVALID),
        .m_axil_rdata(dma_pcie_M_AXI_LITE_RDATA),
        .m_axil_rready(dma_pcie_M_AXI_LITE_RREADY),
        .m_axil_rresp(dma_pcie_M_AXI_LITE_RRESP),
        .m_axil_rvalid(dma_pcie_M_AXI_LITE_RVALID),
        .m_axil_wdata(dma_pcie_M_AXI_LITE_WDATA),
        .m_axil_wready(dma_pcie_M_AXI_LITE_WREADY),
        .m_axil_wstrb(dma_pcie_M_AXI_LITE_WSTRB),
        .m_axil_wvalid(dma_pcie_M_AXI_LITE_WVALID),
        .pci_exp_rxn(Conn1_rxn),
        .pci_exp_rxp(Conn1_rxp),
        .pci_exp_txn(Conn1_txn),
        .pci_exp_txp(Conn1_txp),
        .sys_clk(base_clocking_IBUF_DS_ODIV2),
        .sys_clk_gt(base_clocking_IBUF_OUT),
        .sys_rst_n(sys_rst_n_1),
        .user_lnk_up(dma_pcie_user_lnk_up),
        .usr_irq_req({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  featureid_imp_1OS8HUC featureid
       (.S_AXI_araddr(S_AXI4_1_ARADDR),
        .S_AXI_arready(S_AXI4_1_ARREADY),
        .S_AXI_arvalid(S_AXI4_1_ARVALID),
        .S_AXI_awaddr(S_AXI4_1_AWADDR),
        .S_AXI_awready(S_AXI4_1_AWREADY),
        .S_AXI_awvalid(S_AXI4_1_AWVALID),
        .S_AXI_bready(S_AXI4_1_BREADY),
        .S_AXI_bresp(S_AXI4_1_BRESP),
        .S_AXI_bvalid(S_AXI4_1_BVALID),
        .S_AXI_rdata(S_AXI4_1_RDATA),
        .S_AXI_rready(S_AXI4_1_RREADY),
        .S_AXI_rresp(S_AXI4_1_RRESP),
        .S_AXI_rvalid(S_AXI4_1_RVALID),
        .S_AXI_wdata(S_AXI4_1_WDATA),
        .S_AXI_wready(S_AXI4_1_WREADY),
        .S_AXI_wstrb(S_AXI4_1_WSTRB),
        .S_AXI_wvalid(S_AXI4_1_WVALID),
        .s_axi_aclk(base_clocking_clk_out2),
        .s_axi_aresetn(ext_reset_in_1));
  pr_isolation_limited_imp_FDL1GF pr_isolation_limited
       (.M_AXI1_araddr(pr_isolation_limited_M_AXI1_ARADDR),
        .M_AXI1_arburst(pr_isolation_limited_M_AXI1_ARBURST),
        .M_AXI1_arcache(pr_isolation_limited_M_AXI1_ARCACHE),
        .M_AXI1_arid(pr_isolation_limited_M_AXI1_ARID),
        .M_AXI1_arlen(pr_isolation_limited_M_AXI1_ARLEN),
        .M_AXI1_arlock(pr_isolation_limited_M_AXI1_ARLOCK),
        .M_AXI1_arprot(pr_isolation_limited_M_AXI1_ARPROT),
        .M_AXI1_arqos(pr_isolation_limited_M_AXI1_ARQOS),
        .M_AXI1_arready(pr_isolation_limited_M_AXI1_ARREADY),
        .M_AXI1_arsize(pr_isolation_limited_M_AXI1_ARSIZE),
        .M_AXI1_arvalid(pr_isolation_limited_M_AXI1_ARVALID),
        .M_AXI1_awaddr(pr_isolation_limited_M_AXI1_AWADDR),
        .M_AXI1_awburst(pr_isolation_limited_M_AXI1_AWBURST),
        .M_AXI1_awcache(pr_isolation_limited_M_AXI1_AWCACHE),
        .M_AXI1_awid(pr_isolation_limited_M_AXI1_AWID),
        .M_AXI1_awlen(pr_isolation_limited_M_AXI1_AWLEN),
        .M_AXI1_awlock(pr_isolation_limited_M_AXI1_AWLOCK),
        .M_AXI1_awprot(pr_isolation_limited_M_AXI1_AWPROT),
        .M_AXI1_awqos(pr_isolation_limited_M_AXI1_AWQOS),
        .M_AXI1_awready(pr_isolation_limited_M_AXI1_AWREADY),
        .M_AXI1_awsize(pr_isolation_limited_M_AXI1_AWSIZE),
        .M_AXI1_awvalid(pr_isolation_limited_M_AXI1_AWVALID),
        .M_AXI1_bid(pr_isolation_limited_M_AXI1_BID),
        .M_AXI1_bready(pr_isolation_limited_M_AXI1_BREADY),
        .M_AXI1_bresp(pr_isolation_limited_M_AXI1_BRESP),
        .M_AXI1_bvalid(pr_isolation_limited_M_AXI1_BVALID),
        .M_AXI1_rdata(pr_isolation_limited_M_AXI1_RDATA),
        .M_AXI1_rid(pr_isolation_limited_M_AXI1_RID),
        .M_AXI1_rlast(pr_isolation_limited_M_AXI1_RLAST),
        .M_AXI1_rready(pr_isolation_limited_M_AXI1_RREADY),
        .M_AXI1_rresp(pr_isolation_limited_M_AXI1_RRESP),
        .M_AXI1_rvalid(pr_isolation_limited_M_AXI1_RVALID),
        .M_AXI1_wdata(pr_isolation_limited_M_AXI1_WDATA),
        .M_AXI1_wlast(pr_isolation_limited_M_AXI1_WLAST),
        .M_AXI1_wready(pr_isolation_limited_M_AXI1_WREADY),
        .M_AXI1_wstrb(pr_isolation_limited_M_AXI1_WSTRB),
        .M_AXI1_wvalid(pr_isolation_limited_M_AXI1_WVALID),
        .M_AXI2_araddr(pr_isolation_limited_M_AXI2_ARADDR),
        .M_AXI2_arburst(pr_isolation_limited_M_AXI2_ARBURST),
        .M_AXI2_arcache(pr_isolation_limited_M_AXI2_ARCACHE),
        .M_AXI2_arid(pr_isolation_limited_M_AXI2_ARID),
        .M_AXI2_arlen(pr_isolation_limited_M_AXI2_ARLEN),
        .M_AXI2_arlock(pr_isolation_limited_M_AXI2_ARLOCK),
        .M_AXI2_arprot(pr_isolation_limited_M_AXI2_ARPROT),
        .M_AXI2_arqos(pr_isolation_limited_M_AXI2_ARQOS),
        .M_AXI2_arready(pr_isolation_limited_M_AXI2_ARREADY),
        .M_AXI2_arsize(pr_isolation_limited_M_AXI2_ARSIZE),
        .M_AXI2_arvalid(pr_isolation_limited_M_AXI2_ARVALID),
        .M_AXI2_awaddr(pr_isolation_limited_M_AXI2_AWADDR),
        .M_AXI2_awburst(pr_isolation_limited_M_AXI2_AWBURST),
        .M_AXI2_awcache(pr_isolation_limited_M_AXI2_AWCACHE),
        .M_AXI2_awid(pr_isolation_limited_M_AXI2_AWID),
        .M_AXI2_awlen(pr_isolation_limited_M_AXI2_AWLEN),
        .M_AXI2_awlock(pr_isolation_limited_M_AXI2_AWLOCK),
        .M_AXI2_awprot(pr_isolation_limited_M_AXI2_AWPROT),
        .M_AXI2_awqos(pr_isolation_limited_M_AXI2_AWQOS),
        .M_AXI2_awready(pr_isolation_limited_M_AXI2_AWREADY),
        .M_AXI2_awsize(pr_isolation_limited_M_AXI2_AWSIZE),
        .M_AXI2_awvalid(pr_isolation_limited_M_AXI2_AWVALID),
        .M_AXI2_bid(pr_isolation_limited_M_AXI2_BID),
        .M_AXI2_bready(pr_isolation_limited_M_AXI2_BREADY),
        .M_AXI2_bresp(pr_isolation_limited_M_AXI2_BRESP),
        .M_AXI2_bvalid(pr_isolation_limited_M_AXI2_BVALID),
        .M_AXI2_rdata(pr_isolation_limited_M_AXI2_RDATA),
        .M_AXI2_rid(pr_isolation_limited_M_AXI2_RID),
        .M_AXI2_rlast(pr_isolation_limited_M_AXI2_RLAST),
        .M_AXI2_rready(pr_isolation_limited_M_AXI2_RREADY),
        .M_AXI2_rresp(pr_isolation_limited_M_AXI2_RRESP),
        .M_AXI2_rvalid(pr_isolation_limited_M_AXI2_RVALID),
        .M_AXI2_wdata(pr_isolation_limited_M_AXI2_WDATA),
        .M_AXI2_wlast(pr_isolation_limited_M_AXI2_WLAST),
        .M_AXI2_wready(pr_isolation_limited_M_AXI2_WREADY),
        .M_AXI2_wstrb(pr_isolation_limited_M_AXI2_WSTRB),
        .M_AXI2_wvalid(pr_isolation_limited_M_AXI2_WVALID),
        .M_AXI_araddr(pr_isolation_limited_M_AXI_ARADDR),
        .M_AXI_arprot(pr_isolation_limited_M_AXI_ARPROT),
        .M_AXI_arready(pr_isolation_limited_M_AXI_ARREADY),
        .M_AXI_arvalid(pr_isolation_limited_M_AXI_ARVALID),
        .M_AXI_awaddr(pr_isolation_limited_M_AXI_AWADDR),
        .M_AXI_awprot(pr_isolation_limited_M_AXI_AWPROT),
        .M_AXI_awready(pr_isolation_limited_M_AXI_AWREADY),
        .M_AXI_awvalid(pr_isolation_limited_M_AXI_AWVALID),
        .M_AXI_bready(pr_isolation_limited_M_AXI_BREADY),
        .M_AXI_bresp(pr_isolation_limited_M_AXI_BRESP),
        .M_AXI_bvalid(pr_isolation_limited_M_AXI_BVALID),
        .M_AXI_rdata(pr_isolation_limited_M_AXI_RDATA),
        .M_AXI_rready(pr_isolation_limited_M_AXI_RREADY),
        .M_AXI_rresp(pr_isolation_limited_M_AXI_RRESP),
        .M_AXI_rvalid(pr_isolation_limited_M_AXI_RVALID),
        .M_AXI_wdata(pr_isolation_limited_M_AXI_WDATA),
        .M_AXI_wready(pr_isolation_limited_M_AXI_WREADY),
        .M_AXI_wstrb(pr_isolation_limited_M_AXI_WSTRB),
        .M_AXI_wvalid(pr_isolation_limited_M_AXI_WVALID),
        .S_AXI1_araddr(S_AXI1_1_ARADDR),
        .S_AXI1_arburst(S_AXI1_1_ARBURST),
        .S_AXI1_arcache(S_AXI1_1_ARCACHE),
        .S_AXI1_arid(S_AXI1_1_ARID),
        .S_AXI1_arlen(S_AXI1_1_ARLEN),
        .S_AXI1_arlock(S_AXI1_1_ARLOCK),
        .S_AXI1_arprot(S_AXI1_1_ARPROT),
        .S_AXI1_arqos(S_AXI1_1_ARQOS),
        .S_AXI1_arready(S_AXI1_1_ARREADY),
        .S_AXI1_arsize(S_AXI1_1_ARSIZE),
        .S_AXI1_arvalid(S_AXI1_1_ARVALID),
        .S_AXI1_awaddr(S_AXI1_1_AWADDR),
        .S_AXI1_awburst(S_AXI1_1_AWBURST),
        .S_AXI1_awcache(S_AXI1_1_AWCACHE),
        .S_AXI1_awid(S_AXI1_1_AWID),
        .S_AXI1_awlen(S_AXI1_1_AWLEN),
        .S_AXI1_awlock(S_AXI1_1_AWLOCK),
        .S_AXI1_awprot(S_AXI1_1_AWPROT),
        .S_AXI1_awqos(S_AXI1_1_AWQOS),
        .S_AXI1_awready(S_AXI1_1_AWREADY),
        .S_AXI1_awsize(S_AXI1_1_AWSIZE),
        .S_AXI1_awvalid(S_AXI1_1_AWVALID),
        .S_AXI1_bid(S_AXI1_1_BID),
        .S_AXI1_bready(S_AXI1_1_BREADY),
        .S_AXI1_bresp(S_AXI1_1_BRESP),
        .S_AXI1_bvalid(S_AXI1_1_BVALID),
        .S_AXI1_rdata(S_AXI1_1_RDATA),
        .S_AXI1_rid(S_AXI1_1_RID),
        .S_AXI1_rlast(S_AXI1_1_RLAST),
        .S_AXI1_rready(S_AXI1_1_RREADY),
        .S_AXI1_rresp(S_AXI1_1_RRESP),
        .S_AXI1_rvalid(S_AXI1_1_RVALID),
        .S_AXI1_wdata(S_AXI1_1_WDATA),
        .S_AXI1_wlast(S_AXI1_1_WLAST),
        .S_AXI1_wready(S_AXI1_1_WREADY),
        .S_AXI1_wstrb(S_AXI1_1_WSTRB),
        .S_AXI1_wvalid(S_AXI1_1_WVALID),
        .S_AXI2_araddr(S_AXI2_1_ARADDR),
        .S_AXI2_arprot(S_AXI2_1_ARPROT),
        .S_AXI2_arready(S_AXI2_1_ARREADY),
        .S_AXI2_arvalid(S_AXI2_1_ARVALID),
        .S_AXI2_awaddr(S_AXI2_1_AWADDR),
        .S_AXI2_awprot(S_AXI2_1_AWPROT),
        .S_AXI2_awready(S_AXI2_1_AWREADY),
        .S_AXI2_awvalid(S_AXI2_1_AWVALID),
        .S_AXI2_bready(S_AXI2_1_BREADY),
        .S_AXI2_bresp(S_AXI2_1_BRESP),
        .S_AXI2_bvalid(S_AXI2_1_BVALID),
        .S_AXI2_rdata(S_AXI2_1_RDATA),
        .S_AXI2_rready(S_AXI2_1_RREADY),
        .S_AXI2_rresp(S_AXI2_1_RRESP),
        .S_AXI2_rvalid(S_AXI2_1_RVALID),
        .S_AXI2_wdata(S_AXI2_1_WDATA),
        .S_AXI2_wready(S_AXI2_1_WREADY),
        .S_AXI2_wstrb(S_AXI2_1_WSTRB),
        .S_AXI2_wvalid(S_AXI2_1_WVALID),
        .S_AXI3_araddr(S_AXI3_1_ARADDR),
        .S_AXI3_arready(S_AXI3_1_ARREADY),
        .S_AXI3_arvalid(S_AXI3_1_ARVALID),
        .S_AXI3_awaddr(S_AXI3_1_AWADDR),
        .S_AXI3_awready(S_AXI3_1_AWREADY),
        .S_AXI3_awvalid(S_AXI3_1_AWVALID),
        .S_AXI3_bready(S_AXI3_1_BREADY),
        .S_AXI3_bresp(S_AXI3_1_BRESP),
        .S_AXI3_bvalid(S_AXI3_1_BVALID),
        .S_AXI3_rdata(S_AXI3_1_RDATA),
        .S_AXI3_rready(S_AXI3_1_RREADY),
        .S_AXI3_rresp(S_AXI3_1_RRESP),
        .S_AXI3_rvalid(S_AXI3_1_RVALID),
        .S_AXI3_wdata(S_AXI3_1_WDATA),
        .S_AXI3_wready(S_AXI3_1_WREADY),
        .S_AXI3_wstrb(S_AXI3_1_WSTRB),
        .S_AXI3_wvalid(S_AXI3_1_WVALID),
        .S_AXI4_araddr(S_AXI5_1_ARADDR),
        .S_AXI4_arready(S_AXI5_1_ARREADY),
        .S_AXI4_arvalid(S_AXI5_1_ARVALID),
        .S_AXI4_awaddr(S_AXI5_1_AWADDR),
        .S_AXI4_awready(S_AXI5_1_AWREADY),
        .S_AXI4_awvalid(S_AXI5_1_AWVALID),
        .S_AXI4_bready(S_AXI5_1_BREADY),
        .S_AXI4_bresp(S_AXI5_1_BRESP),
        .S_AXI4_bvalid(S_AXI5_1_BVALID),
        .S_AXI4_rdata(S_AXI5_1_RDATA),
        .S_AXI4_rready(S_AXI5_1_RREADY),
        .S_AXI4_rresp(S_AXI5_1_RRESP),
        .S_AXI4_rvalid(S_AXI5_1_RVALID),
        .S_AXI4_wdata(S_AXI5_1_WDATA),
        .S_AXI4_wready(S_AXI5_1_WREADY),
        .S_AXI4_wstrb(S_AXI5_1_WSTRB),
        .S_AXI4_wvalid(S_AXI5_1_WVALID),
        .S_AXI_araddr(S_AXI_1_ARADDR),
        .S_AXI_arburst(S_AXI_1_ARBURST),
        .S_AXI_arcache(S_AXI_1_ARCACHE),
        .S_AXI_arid(S_AXI_1_ARID),
        .S_AXI_arlen(S_AXI_1_ARLEN),
        .S_AXI_arlock(S_AXI_1_ARLOCK),
        .S_AXI_arprot(S_AXI_1_ARPROT),
        .S_AXI_arqos(S_AXI_1_ARQOS),
        .S_AXI_arready(S_AXI_1_ARREADY),
        .S_AXI_arsize(S_AXI_1_ARSIZE),
        .S_AXI_arvalid(S_AXI_1_ARVALID),
        .S_AXI_awaddr(S_AXI_1_AWADDR),
        .S_AXI_awburst(S_AXI_1_AWBURST),
        .S_AXI_awcache(S_AXI_1_AWCACHE),
        .S_AXI_awid(S_AXI_1_AWID),
        .S_AXI_awlen(S_AXI_1_AWLEN),
        .S_AXI_awlock(S_AXI_1_AWLOCK),
        .S_AXI_awprot(S_AXI_1_AWPROT),
        .S_AXI_awqos(S_AXI_1_AWQOS),
        .S_AXI_awready(S_AXI_1_AWREADY),
        .S_AXI_awsize(S_AXI_1_AWSIZE),
        .S_AXI_awvalid(S_AXI_1_AWVALID),
        .S_AXI_bid(S_AXI_1_BID),
        .S_AXI_bready(S_AXI_1_BREADY),
        .S_AXI_bresp(S_AXI_1_BRESP),
        .S_AXI_bvalid(S_AXI_1_BVALID),
        .S_AXI_rdata(S_AXI_1_RDATA),
        .S_AXI_rid(S_AXI_1_RID),
        .S_AXI_rlast(S_AXI_1_RLAST),
        .S_AXI_rready(S_AXI_1_RREADY),
        .S_AXI_rresp(S_AXI_1_RRESP),
        .S_AXI_rvalid(S_AXI_1_RVALID),
        .S_AXI_wdata(S_AXI_1_WDATA),
        .S_AXI_wlast(S_AXI_1_WLAST),
        .S_AXI_wready(S_AXI_1_WREADY),
        .S_AXI_wstrb(S_AXI_1_WSTRB),
        .S_AXI_wvalid(S_AXI_1_WVALID),
        .dcm_locked(base_clocking_locked),
        .dcm_locked1(base_clocking_locked1),
        .ext_reset_in(ext_reset_in_1),
        .gpio_io_i(gpio_io_i_1),
        .interconnect_aresetn(pr_isolation_limited_interconnect_aresetn),
        .interconnect_aresetn1(pr_isolation_limited_interconnect_aresetn1),
        .slowest_sync_clk(base_clocking_clk_out1),
        .slowest_sync_clk1(base_clocking_clk_out2));
endmodule

module base_tieoffs_imp_15UYBSQ
   (dout,
    dout1,
    dout2);
  output [0:0]dout;
  output [2:0]dout1;
  output [0:0]dout2;

  wire [0:0]const_gnd_1_dout;
  wire [2:0]const_gnd_3_dout;
  wire [0:0]const_vcc_1_dout;

  assign dout[0] = const_gnd_1_dout;
  assign dout1[2:0] = const_gnd_3_dout;
  assign dout2[0] = const_vcc_1_dout;
  xcl_design_const_gnd_1_0 const_gnd_1
       (.dout(const_gnd_1_dout));
  xcl_design_const_gnd_3_0 const_gnd_3
       (.dout(const_gnd_3_dout));
  xcl_design_const_vcc_1_0 const_vcc_1
       (.dout(const_vcc_1_dout));
endmodule

module expanded_region_imp_112GC7E
   (ACLK,
    C0_DDR3_addr,
    C0_DDR3_ba,
    C0_DDR3_cas_n,
    C0_DDR3_ck_n,
    C0_DDR3_ck_p,
    C0_DDR3_cke,
    C0_DDR3_cs_n,
    C0_DDR3_dq,
    C0_DDR3_dqs_n,
    C0_DDR3_dqs_p,
    C0_DDR3_odt,
    C0_DDR3_ras_n,
    C0_DDR3_reset_n,
    C0_DDR3_we_n,
    C0_DDR4_addr,
    C0_DDR4_ba,
    C0_DDR4_cas_n,
    C0_DDR4_ck_n,
    C0_DDR4_ck_p,
    C0_DDR4_cke,
    C0_DDR4_cs_n,
    C0_DDR4_dq,
    C0_DDR4_dqs_n,
    C0_DDR4_dqs_p,
    C0_DDR4_odt,
    C0_DDR4_ras_n,
    C0_DDR4_reset_n,
    C0_DDR4_we_n,
    C0_SYS_CLK1_clk_n,
    C0_SYS_CLK1_clk_p,
    C0_SYS_CLK_clk_n,
    C0_SYS_CLK_clk_p,
    INTERCONNECT_RESET,
    KERNEL_CLK,
    KERNEL_RESET,
    M00_AXI_araddr,
    M00_AXI_arburst,
    M00_AXI_arcache,
    M00_AXI_arid,
    M00_AXI_arlen,
    M00_AXI_arlock,
    M00_AXI_arprot,
    M00_AXI_arqos,
    M00_AXI_arready,
    M00_AXI_arsize,
    M00_AXI_arvalid,
    M00_AXI_awaddr,
    M00_AXI_awburst,
    M00_AXI_awcache,
    M00_AXI_awid,
    M00_AXI_awlen,
    M00_AXI_awlock,
    M00_AXI_awprot,
    M00_AXI_awqos,
    M00_AXI_awready,
    M00_AXI_awsize,
    M00_AXI_awvalid,
    M00_AXI_bid,
    M00_AXI_bready,
    M00_AXI_bresp,
    M00_AXI_bvalid,
    M00_AXI_rdata,
    M00_AXI_rid,
    M00_AXI_rlast,
    M00_AXI_rready,
    M00_AXI_rresp,
    M00_AXI_rvalid,
    M00_AXI_wdata,
    M00_AXI_wlast,
    M00_AXI_wready,
    M00_AXI_wstrb,
    M00_AXI_wvalid,
    M01_AXI_araddr,
    M01_AXI_arburst,
    M01_AXI_arcache,
    M01_AXI_arid,
    M01_AXI_arlen,
    M01_AXI_arlock,
    M01_AXI_arprot,
    M01_AXI_arqos,
    M01_AXI_arready,
    M01_AXI_arsize,
    M01_AXI_arvalid,
    M01_AXI_awaddr,
    M01_AXI_awburst,
    M01_AXI_awcache,
    M01_AXI_awid,
    M01_AXI_awlen,
    M01_AXI_awlock,
    M01_AXI_awprot,
    M01_AXI_awqos,
    M01_AXI_awready,
    M01_AXI_awsize,
    M01_AXI_awvalid,
    M01_AXI_bid,
    M01_AXI_bready,
    M01_AXI_bresp,
    M01_AXI_bvalid,
    M01_AXI_rdata,
    M01_AXI_rid,
    M01_AXI_rlast,
    M01_AXI_rready,
    M01_AXI_rresp,
    M01_AXI_rvalid,
    M01_AXI_wdata,
    M01_AXI_wlast,
    M01_AXI_wready,
    M01_AXI_wstrb,
    M01_AXI_wvalid,
    M05_AXI_araddr,
    M05_AXI_arprot,
    M05_AXI_arready,
    M05_AXI_arvalid,
    M05_AXI_awaddr,
    M05_AXI_awprot,
    M05_AXI_awready,
    M05_AXI_awvalid,
    M05_AXI_bready,
    M05_AXI_bresp,
    M05_AXI_bvalid,
    M05_AXI_rdata,
    M05_AXI_rready,
    M05_AXI_rresp,
    M05_AXI_rvalid,
    M05_AXI_wdata,
    M05_AXI_wready,
    M05_AXI_wstrb,
    M05_AXI_wvalid,
    M06_AXI_araddr,
    M06_AXI_arready,
    M06_AXI_arvalid,
    M06_AXI_awaddr,
    M06_AXI_awready,
    M06_AXI_awvalid,
    M06_AXI_bready,
    M06_AXI_bresp,
    M06_AXI_bvalid,
    M06_AXI_rdata,
    M06_AXI_rready,
    M06_AXI_rresp,
    M06_AXI_rvalid,
    M06_AXI_wdata,
    M06_AXI_wready,
    M06_AXI_wstrb,
    M06_AXI_wvalid,
    M07_AXI_araddr,
    M07_AXI_arready,
    M07_AXI_arvalid,
    M07_AXI_awaddr,
    M07_AXI_awready,
    M07_AXI_awvalid,
    M07_AXI_bready,
    M07_AXI_bresp,
    M07_AXI_bvalid,
    M07_AXI_rdata,
    M07_AXI_rready,
    M07_AXI_rresp,
    M07_AXI_rvalid,
    M07_AXI_wdata,
    M07_AXI_wready,
    M07_AXI_wstrb,
    M07_AXI_wvalid,
    M08_AXI_araddr,
    M08_AXI_arready,
    M08_AXI_arvalid,
    M08_AXI_awaddr,
    M08_AXI_awready,
    M08_AXI_awvalid,
    M08_AXI_bready,
    M08_AXI_bresp,
    M08_AXI_bvalid,
    M08_AXI_rdata,
    M08_AXI_rready,
    M08_AXI_rresp,
    M08_AXI_rvalid,
    M08_AXI_wdata,
    M08_AXI_wready,
    M08_AXI_wstrb,
    M08_AXI_wvalid,
    M09_AXI_araddr,
    M09_AXI_arprot,
    M09_AXI_arready,
    M09_AXI_arvalid,
    M09_AXI_awaddr,
    M09_AXI_awprot,
    M09_AXI_awready,
    M09_AXI_awvalid,
    M09_AXI_bready,
    M09_AXI_bresp,
    M09_AXI_bvalid,
    M09_AXI_rdata,
    M09_AXI_rready,
    M09_AXI_rresp,
    M09_AXI_rvalid,
    M09_AXI_wdata,
    M09_AXI_wready,
    M09_AXI_wstrb,
    M09_AXI_wvalid,
    Op1,
    Res,
    S00_ACLK,
    S00_AXI1_araddr,
    S00_AXI1_arburst,
    S00_AXI1_arcache,
    S00_AXI1_arid,
    S00_AXI1_arlen,
    S00_AXI1_arlock,
    S00_AXI1_arprot,
    S00_AXI1_arready,
    S00_AXI1_arsize,
    S00_AXI1_arvalid,
    S00_AXI1_awaddr,
    S00_AXI1_awburst,
    S00_AXI1_awcache,
    S00_AXI1_awid,
    S00_AXI1_awlen,
    S00_AXI1_awlock,
    S00_AXI1_awprot,
    S00_AXI1_awready,
    S00_AXI1_awsize,
    S00_AXI1_awvalid,
    S00_AXI1_bid,
    S00_AXI1_bready,
    S00_AXI1_bresp,
    S00_AXI1_bvalid,
    S00_AXI1_rdata,
    S00_AXI1_rid,
    S00_AXI1_rlast,
    S00_AXI1_rready,
    S00_AXI1_rresp,
    S00_AXI1_rvalid,
    S00_AXI1_wdata,
    S00_AXI1_wlast,
    S00_AXI1_wready,
    S00_AXI1_wstrb,
    S00_AXI1_wvalid,
    S00_AXI_araddr,
    S00_AXI_arprot,
    S00_AXI_arready,
    S00_AXI_arvalid,
    S00_AXI_awaddr,
    S00_AXI_awprot,
    S00_AXI_awready,
    S00_AXI_awvalid,
    S00_AXI_bready,
    S00_AXI_bresp,
    S00_AXI_bvalid,
    S00_AXI_rdata,
    S00_AXI_rready,
    S00_AXI_rresp,
    S00_AXI_rvalid,
    S00_AXI_wdata,
    S00_AXI_wready,
    S00_AXI_wstrb,
    S00_AXI_wvalid,
    S01_AXI_araddr,
    S01_AXI_arburst,
    S01_AXI_arcache,
    S01_AXI_arid,
    S01_AXI_arlen,
    S01_AXI_arlock,
    S01_AXI_arprot,
    S01_AXI_arqos,
    S01_AXI_arready,
    S01_AXI_arsize,
    S01_AXI_arvalid,
    S01_AXI_awaddr,
    S01_AXI_awburst,
    S01_AXI_awcache,
    S01_AXI_awid,
    S01_AXI_awlen,
    S01_AXI_awlock,
    S01_AXI_awprot,
    S01_AXI_awqos,
    S01_AXI_awready,
    S01_AXI_awsize,
    S01_AXI_awvalid,
    S01_AXI_bid,
    S01_AXI_bready,
    S01_AXI_bresp,
    S01_AXI_bvalid,
    S01_AXI_rdata,
    S01_AXI_rid,
    S01_AXI_rlast,
    S01_AXI_rready,
    S01_AXI_rresp,
    S01_AXI_rvalid,
    S01_AXI_wdata,
    S01_AXI_wlast,
    S01_AXI_wready,
    S01_AXI_wstrb,
    S01_AXI_wvalid,
    S02_AXI_araddr,
    S02_AXI_arburst,
    S02_AXI_arcache,
    S02_AXI_arid,
    S02_AXI_arlen,
    S02_AXI_arlock,
    S02_AXI_arprot,
    S02_AXI_arqos,
    S02_AXI_arready,
    S02_AXI_arsize,
    S02_AXI_arvalid,
    S02_AXI_awaddr,
    S02_AXI_awburst,
    S02_AXI_awcache,
    S02_AXI_awid,
    S02_AXI_awlen,
    S02_AXI_awlock,
    S02_AXI_awprot,
    S02_AXI_awqos,
    S02_AXI_awready,
    S02_AXI_awsize,
    S02_AXI_awvalid,
    S02_AXI_bid,
    S02_AXI_bready,
    S02_AXI_bresp,
    S02_AXI_bvalid,
    S02_AXI_rdata,
    S02_AXI_rid,
    S02_AXI_rlast,
    S02_AXI_rready,
    S02_AXI_rresp,
    S02_AXI_rvalid,
    S02_AXI_wdata,
    S02_AXI_wlast,
    S02_AXI_wready,
    S02_AXI_wstrb,
    S02_AXI_wvalid,
    S_AXI_araddr,
    S_AXI_arprot,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awprot,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid,
    core_aresetn,
    dcm_locked,
    dout,
    flash_A,
    flash_ADV_N,
    flash_DQ,
    flash_OE_N,
    flash_WE_N,
    flash_clk,
    interconnect_aresetn1);
  input ACLK;
  output [15:0]C0_DDR3_addr;
  output [2:0]C0_DDR3_ba;
  output C0_DDR3_cas_n;
  output [1:0]C0_DDR3_ck_n;
  output [1:0]C0_DDR3_ck_p;
  output [1:0]C0_DDR3_cke;
  output [1:0]C0_DDR3_cs_n;
  inout [71:0]C0_DDR3_dq;
  inout [8:0]C0_DDR3_dqs_n;
  inout [8:0]C0_DDR3_dqs_p;
  output [1:0]C0_DDR3_odt;
  output C0_DDR3_ras_n;
  output C0_DDR3_reset_n;
  output C0_DDR3_we_n;
  output [15:0]C0_DDR4_addr;
  output [2:0]C0_DDR4_ba;
  output C0_DDR4_cas_n;
  output [1:0]C0_DDR4_ck_n;
  output [1:0]C0_DDR4_ck_p;
  output [1:0]C0_DDR4_cke;
  output [1:0]C0_DDR4_cs_n;
  inout [71:0]C0_DDR4_dq;
  inout [8:0]C0_DDR4_dqs_n;
  inout [8:0]C0_DDR4_dqs_p;
  output [1:0]C0_DDR4_odt;
  output C0_DDR4_ras_n;
  output C0_DDR4_reset_n;
  output C0_DDR4_we_n;
  input C0_SYS_CLK1_clk_n;
  input C0_SYS_CLK1_clk_p;
  input C0_SYS_CLK_clk_n;
  input C0_SYS_CLK_clk_p;
  input [0:0]INTERCONNECT_RESET;
  input KERNEL_CLK;
  input [0:0]KERNEL_RESET;
  output [37:0]M00_AXI_araddr;
  output [1:0]M00_AXI_arburst;
  output [3:0]M00_AXI_arcache;
  output [3:0]M00_AXI_arid;
  output [7:0]M00_AXI_arlen;
  output [0:0]M00_AXI_arlock;
  output [2:0]M00_AXI_arprot;
  output [3:0]M00_AXI_arqos;
  input M00_AXI_arready;
  output [2:0]M00_AXI_arsize;
  output M00_AXI_arvalid;
  output [37:0]M00_AXI_awaddr;
  output [1:0]M00_AXI_awburst;
  output [3:0]M00_AXI_awcache;
  output [3:0]M00_AXI_awid;
  output [7:0]M00_AXI_awlen;
  output [0:0]M00_AXI_awlock;
  output [2:0]M00_AXI_awprot;
  output [3:0]M00_AXI_awqos;
  input M00_AXI_awready;
  output [2:0]M00_AXI_awsize;
  output M00_AXI_awvalid;
  input [3:0]M00_AXI_bid;
  output M00_AXI_bready;
  input [1:0]M00_AXI_bresp;
  input M00_AXI_bvalid;
  input [511:0]M00_AXI_rdata;
  input [3:0]M00_AXI_rid;
  input M00_AXI_rlast;
  output M00_AXI_rready;
  input [1:0]M00_AXI_rresp;
  input M00_AXI_rvalid;
  output [511:0]M00_AXI_wdata;
  output M00_AXI_wlast;
  input M00_AXI_wready;
  output [63:0]M00_AXI_wstrb;
  output M00_AXI_wvalid;
  output [37:0]M01_AXI_araddr;
  output [1:0]M01_AXI_arburst;
  output [3:0]M01_AXI_arcache;
  output [3:0]M01_AXI_arid;
  output [7:0]M01_AXI_arlen;
  output [0:0]M01_AXI_arlock;
  output [2:0]M01_AXI_arprot;
  output [3:0]M01_AXI_arqos;
  input M01_AXI_arready;
  output [2:0]M01_AXI_arsize;
  output M01_AXI_arvalid;
  output [37:0]M01_AXI_awaddr;
  output [1:0]M01_AXI_awburst;
  output [3:0]M01_AXI_awcache;
  output [3:0]M01_AXI_awid;
  output [7:0]M01_AXI_awlen;
  output [0:0]M01_AXI_awlock;
  output [2:0]M01_AXI_awprot;
  output [3:0]M01_AXI_awqos;
  input M01_AXI_awready;
  output [2:0]M01_AXI_awsize;
  output M01_AXI_awvalid;
  input [3:0]M01_AXI_bid;
  output M01_AXI_bready;
  input [1:0]M01_AXI_bresp;
  input M01_AXI_bvalid;
  input [511:0]M01_AXI_rdata;
  input [3:0]M01_AXI_rid;
  input M01_AXI_rlast;
  output M01_AXI_rready;
  input [1:0]M01_AXI_rresp;
  input M01_AXI_rvalid;
  output [511:0]M01_AXI_wdata;
  output M01_AXI_wlast;
  input M01_AXI_wready;
  output [63:0]M01_AXI_wstrb;
  output M01_AXI_wvalid;
  output [16:0]M05_AXI_araddr;
  output [2:0]M05_AXI_arprot;
  input M05_AXI_arready;
  output M05_AXI_arvalid;
  output [16:0]M05_AXI_awaddr;
  output [2:0]M05_AXI_awprot;
  input M05_AXI_awready;
  output M05_AXI_awvalid;
  output M05_AXI_bready;
  input [1:0]M05_AXI_bresp;
  input M05_AXI_bvalid;
  input [31:0]M05_AXI_rdata;
  output M05_AXI_rready;
  input [1:0]M05_AXI_rresp;
  input M05_AXI_rvalid;
  output [31:0]M05_AXI_wdata;
  input M05_AXI_wready;
  output [3:0]M05_AXI_wstrb;
  output M05_AXI_wvalid;
  output [8:0]M06_AXI_araddr;
  input M06_AXI_arready;
  output M06_AXI_arvalid;
  output [8:0]M06_AXI_awaddr;
  input M06_AXI_awready;
  output M06_AXI_awvalid;
  output M06_AXI_bready;
  input [1:0]M06_AXI_bresp;
  input M06_AXI_bvalid;
  input [31:0]M06_AXI_rdata;
  output M06_AXI_rready;
  input [1:0]M06_AXI_rresp;
  input M06_AXI_rvalid;
  output [31:0]M06_AXI_wdata;
  input M06_AXI_wready;
  output [3:0]M06_AXI_wstrb;
  output M06_AXI_wvalid;
  output [8:0]M07_AXI_araddr;
  input M07_AXI_arready;
  output M07_AXI_arvalid;
  output [8:0]M07_AXI_awaddr;
  input M07_AXI_awready;
  output M07_AXI_awvalid;
  output M07_AXI_bready;
  input [1:0]M07_AXI_bresp;
  input M07_AXI_bvalid;
  input [31:0]M07_AXI_rdata;
  output M07_AXI_rready;
  input [1:0]M07_AXI_rresp;
  input M07_AXI_rvalid;
  output [31:0]M07_AXI_wdata;
  input M07_AXI_wready;
  output [3:0]M07_AXI_wstrb;
  output M07_AXI_wvalid;
  output [8:0]M08_AXI_araddr;
  input M08_AXI_arready;
  output M08_AXI_arvalid;
  output [8:0]M08_AXI_awaddr;
  input M08_AXI_awready;
  output M08_AXI_awvalid;
  output M08_AXI_bready;
  input [1:0]M08_AXI_bresp;
  input M08_AXI_bvalid;
  input [31:0]M08_AXI_rdata;
  output M08_AXI_rready;
  input [1:0]M08_AXI_rresp;
  input M08_AXI_rvalid;
  output [31:0]M08_AXI_wdata;
  input M08_AXI_wready;
  output [3:0]M08_AXI_wstrb;
  output M08_AXI_wvalid;
  output [10:0]M09_AXI_araddr;
  output [2:0]M09_AXI_arprot;
  input M09_AXI_arready;
  output M09_AXI_arvalid;
  output [10:0]M09_AXI_awaddr;
  output [2:0]M09_AXI_awprot;
  input M09_AXI_awready;
  output M09_AXI_awvalid;
  output M09_AXI_bready;
  input [1:0]M09_AXI_bresp;
  input M09_AXI_bvalid;
  input [31:0]M09_AXI_rdata;
  output M09_AXI_rready;
  input [1:0]M09_AXI_rresp;
  input M09_AXI_rvalid;
  output [31:0]M09_AXI_wdata;
  input M09_AXI_wready;
  output [3:0]M09_AXI_wstrb;
  output M09_AXI_wvalid;
  input [0:0]Op1;
  output [0:0]Res;
  input S00_ACLK;
  input [63:0]S00_AXI1_araddr;
  input [1:0]S00_AXI1_arburst;
  input [3:0]S00_AXI1_arcache;
  input [3:0]S00_AXI1_arid;
  input [7:0]S00_AXI1_arlen;
  input [0:0]S00_AXI1_arlock;
  input [2:0]S00_AXI1_arprot;
  output S00_AXI1_arready;
  input [2:0]S00_AXI1_arsize;
  input S00_AXI1_arvalid;
  input [63:0]S00_AXI1_awaddr;
  input [1:0]S00_AXI1_awburst;
  input [3:0]S00_AXI1_awcache;
  input [3:0]S00_AXI1_awid;
  input [7:0]S00_AXI1_awlen;
  input [0:0]S00_AXI1_awlock;
  input [2:0]S00_AXI1_awprot;
  output S00_AXI1_awready;
  input [2:0]S00_AXI1_awsize;
  input S00_AXI1_awvalid;
  output [3:0]S00_AXI1_bid;
  input S00_AXI1_bready;
  output [1:0]S00_AXI1_bresp;
  output S00_AXI1_bvalid;
  output [255:0]S00_AXI1_rdata;
  output [3:0]S00_AXI1_rid;
  output S00_AXI1_rlast;
  input S00_AXI1_rready;
  output [1:0]S00_AXI1_rresp;
  output S00_AXI1_rvalid;
  input [255:0]S00_AXI1_wdata;
  input S00_AXI1_wlast;
  output S00_AXI1_wready;
  input [31:0]S00_AXI1_wstrb;
  input S00_AXI1_wvalid;
  input [31:0]S00_AXI_araddr;
  input [2:0]S00_AXI_arprot;
  output S00_AXI_arready;
  input S00_AXI_arvalid;
  input [31:0]S00_AXI_awaddr;
  input [2:0]S00_AXI_awprot;
  output S00_AXI_awready;
  input S00_AXI_awvalid;
  input S00_AXI_bready;
  output [1:0]S00_AXI_bresp;
  output S00_AXI_bvalid;
  output [31:0]S00_AXI_rdata;
  input S00_AXI_rready;
  output [1:0]S00_AXI_rresp;
  output S00_AXI_rvalid;
  input [31:0]S00_AXI_wdata;
  output S00_AXI_wready;
  input [3:0]S00_AXI_wstrb;
  input S00_AXI_wvalid;
  input [37:0]S01_AXI_araddr;
  input [1:0]S01_AXI_arburst;
  input [3:0]S01_AXI_arcache;
  input [3:0]S01_AXI_arid;
  input [7:0]S01_AXI_arlen;
  input [0:0]S01_AXI_arlock;
  input [2:0]S01_AXI_arprot;
  input [3:0]S01_AXI_arqos;
  output S01_AXI_arready;
  input [2:0]S01_AXI_arsize;
  input S01_AXI_arvalid;
  input [37:0]S01_AXI_awaddr;
  input [1:0]S01_AXI_awburst;
  input [3:0]S01_AXI_awcache;
  input [3:0]S01_AXI_awid;
  input [7:0]S01_AXI_awlen;
  input [0:0]S01_AXI_awlock;
  input [2:0]S01_AXI_awprot;
  input [3:0]S01_AXI_awqos;
  output S01_AXI_awready;
  input [2:0]S01_AXI_awsize;
  input S01_AXI_awvalid;
  output [3:0]S01_AXI_bid;
  input S01_AXI_bready;
  output [1:0]S01_AXI_bresp;
  output S01_AXI_bvalid;
  output [511:0]S01_AXI_rdata;
  output [3:0]S01_AXI_rid;
  output S01_AXI_rlast;
  input S01_AXI_rready;
  output [1:0]S01_AXI_rresp;
  output S01_AXI_rvalid;
  input [511:0]S01_AXI_wdata;
  input S01_AXI_wlast;
  output S01_AXI_wready;
  input [63:0]S01_AXI_wstrb;
  input S01_AXI_wvalid;
  input [37:0]S02_AXI_araddr;
  input [1:0]S02_AXI_arburst;
  input [3:0]S02_AXI_arcache;
  input [3:0]S02_AXI_arid;
  input [7:0]S02_AXI_arlen;
  input [0:0]S02_AXI_arlock;
  input [2:0]S02_AXI_arprot;
  input [3:0]S02_AXI_arqos;
  output S02_AXI_arready;
  input [2:0]S02_AXI_arsize;
  input S02_AXI_arvalid;
  input [37:0]S02_AXI_awaddr;
  input [1:0]S02_AXI_awburst;
  input [3:0]S02_AXI_awcache;
  input [3:0]S02_AXI_awid;
  input [7:0]S02_AXI_awlen;
  input [0:0]S02_AXI_awlock;
  input [2:0]S02_AXI_awprot;
  input [3:0]S02_AXI_awqos;
  output S02_AXI_awready;
  input [2:0]S02_AXI_awsize;
  input S02_AXI_awvalid;
  output [3:0]S02_AXI_bid;
  input S02_AXI_bready;
  output [1:0]S02_AXI_bresp;
  output S02_AXI_bvalid;
  output [511:0]S02_AXI_rdata;
  output [3:0]S02_AXI_rid;
  output S02_AXI_rlast;
  input S02_AXI_rready;
  output [1:0]S02_AXI_rresp;
  output S02_AXI_rvalid;
  input [511:0]S02_AXI_wdata;
  input S02_AXI_wlast;
  output S02_AXI_wready;
  input [63:0]S02_AXI_wstrb;
  input S02_AXI_wvalid;
  input [16:0]S_AXI_araddr;
  input [2:0]S_AXI_arprot;
  output S_AXI_arready;
  input S_AXI_arvalid;
  input [16:0]S_AXI_awaddr;
  input [2:0]S_AXI_awprot;
  output S_AXI_awready;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;
  input core_aresetn;
  input dcm_locked;
  output [8:0]dout;
  output [26:1]flash_A;
  output flash_ADV_N;
  inout [15:4]flash_DQ;
  output flash_OE_N;
  output flash_WE_N;
  input flash_clk;
  output [0:0]interconnect_aresetn1;

  wire ACLK_1;
  wire [0:0]ARESETN_1;
  wire Conn1_CLK_N;
  wire Conn1_CLK_P;
  wire [15:0]Conn2_ADDR;
  wire [2:0]Conn2_BA;
  wire Conn2_CAS_N;
  wire [1:0]Conn2_CKE;
  wire [1:0]Conn2_CK_N;
  wire [1:0]Conn2_CK_P;
  wire [1:0]Conn2_CS_N;
  wire [71:0]Conn2_DQ;
  wire [8:0]Conn2_DQS_N;
  wire [8:0]Conn2_DQS_P;
  wire [1:0]Conn2_ODT;
  wire Conn2_RAS_N;
  wire Conn2_RESET_N;
  wire Conn2_WE_N;
  wire Conn3_CLK_N;
  wire Conn3_CLK_P;
  wire [15:0]Conn4_ADDR;
  wire [2:0]Conn4_BA;
  wire Conn4_CAS_N;
  wire [1:0]Conn4_CKE;
  wire [1:0]Conn4_CK_N;
  wire [1:0]Conn4_CK_P;
  wire [1:0]Conn4_CS_N;
  wire [71:0]Conn4_DQ;
  wire [8:0]Conn4_DQS_N;
  wire [8:0]Conn4_DQS_P;
  wire [1:0]Conn4_ODT;
  wire Conn4_RAS_N;
  wire Conn4_RESET_N;
  wire Conn4_WE_N;
  wire [0:0]INTERCONNECT_RESET_1;
  wire KERNEL_CLK_1;
  wire [0:0]KERNEL_RESET_1;
  wire [0:0]M03_ARESETN_1;
  wire [15:4]Net;
  wire [0:0]Op1_1;
  wire S00_ACLK_1;
  wire [63:0]S00_AXI1_1_ARADDR;
  wire [1:0]S00_AXI1_1_ARBURST;
  wire [3:0]S00_AXI1_1_ARCACHE;
  wire [3:0]S00_AXI1_1_ARID;
  wire [7:0]S00_AXI1_1_ARLEN;
  wire [0:0]S00_AXI1_1_ARLOCK;
  wire [2:0]S00_AXI1_1_ARPROT;
  wire S00_AXI1_1_ARREADY;
  wire [2:0]S00_AXI1_1_ARSIZE;
  wire S00_AXI1_1_ARVALID;
  wire [63:0]S00_AXI1_1_AWADDR;
  wire [1:0]S00_AXI1_1_AWBURST;
  wire [3:0]S00_AXI1_1_AWCACHE;
  wire [3:0]S00_AXI1_1_AWID;
  wire [7:0]S00_AXI1_1_AWLEN;
  wire [0:0]S00_AXI1_1_AWLOCK;
  wire [2:0]S00_AXI1_1_AWPROT;
  wire S00_AXI1_1_AWREADY;
  wire [2:0]S00_AXI1_1_AWSIZE;
  wire S00_AXI1_1_AWVALID;
  wire [3:0]S00_AXI1_1_BID;
  wire S00_AXI1_1_BREADY;
  wire [1:0]S00_AXI1_1_BRESP;
  wire S00_AXI1_1_BVALID;
  wire [255:0]S00_AXI1_1_RDATA;
  wire [3:0]S00_AXI1_1_RID;
  wire S00_AXI1_1_RLAST;
  wire S00_AXI1_1_RREADY;
  wire [1:0]S00_AXI1_1_RRESP;
  wire S00_AXI1_1_RVALID;
  wire [255:0]S00_AXI1_1_WDATA;
  wire S00_AXI1_1_WLAST;
  wire S00_AXI1_1_WREADY;
  wire [31:0]S00_AXI1_1_WSTRB;
  wire S00_AXI1_1_WVALID;
  wire [31:0]S00_AXI_1_ARADDR;
  wire [2:0]S00_AXI_1_ARPROT;
  wire S00_AXI_1_ARREADY;
  wire S00_AXI_1_ARVALID;
  wire [31:0]S00_AXI_1_AWADDR;
  wire [2:0]S00_AXI_1_AWPROT;
  wire S00_AXI_1_AWREADY;
  wire S00_AXI_1_AWVALID;
  wire S00_AXI_1_BREADY;
  wire [1:0]S00_AXI_1_BRESP;
  wire S00_AXI_1_BVALID;
  wire [31:0]S00_AXI_1_RDATA;
  wire S00_AXI_1_RREADY;
  wire [1:0]S00_AXI_1_RRESP;
  wire S00_AXI_1_RVALID;
  wire [31:0]S00_AXI_1_WDATA;
  wire S00_AXI_1_WREADY;
  wire [3:0]S00_AXI_1_WSTRB;
  wire S00_AXI_1_WVALID;
  wire [37:0]S01_AXI_1_ARADDR;
  wire [1:0]S01_AXI_1_ARBURST;
  wire [3:0]S01_AXI_1_ARCACHE;
  wire [3:0]S01_AXI_1_ARID;
  wire [7:0]S01_AXI_1_ARLEN;
  wire [0:0]S01_AXI_1_ARLOCK;
  wire [2:0]S01_AXI_1_ARPROT;
  wire [3:0]S01_AXI_1_ARQOS;
  wire S01_AXI_1_ARREADY;
  wire [2:0]S01_AXI_1_ARSIZE;
  wire S01_AXI_1_ARVALID;
  wire [37:0]S01_AXI_1_AWADDR;
  wire [1:0]S01_AXI_1_AWBURST;
  wire [3:0]S01_AXI_1_AWCACHE;
  wire [3:0]S01_AXI_1_AWID;
  wire [7:0]S01_AXI_1_AWLEN;
  wire [0:0]S01_AXI_1_AWLOCK;
  wire [2:0]S01_AXI_1_AWPROT;
  wire [3:0]S01_AXI_1_AWQOS;
  wire S01_AXI_1_AWREADY;
  wire [2:0]S01_AXI_1_AWSIZE;
  wire S01_AXI_1_AWVALID;
  wire [3:0]S01_AXI_1_BID;
  wire S01_AXI_1_BREADY;
  wire [1:0]S01_AXI_1_BRESP;
  wire S01_AXI_1_BVALID;
  wire [511:0]S01_AXI_1_RDATA;
  wire [3:0]S01_AXI_1_RID;
  wire S01_AXI_1_RLAST;
  wire S01_AXI_1_RREADY;
  wire [1:0]S01_AXI_1_RRESP;
  wire S01_AXI_1_RVALID;
  wire [511:0]S01_AXI_1_WDATA;
  wire S01_AXI_1_WLAST;
  wire S01_AXI_1_WREADY;
  wire [63:0]S01_AXI_1_WSTRB;
  wire S01_AXI_1_WVALID;
  wire [37:0]S02_AXI_1_ARADDR;
  wire [1:0]S02_AXI_1_ARBURST;
  wire [3:0]S02_AXI_1_ARCACHE;
  wire [3:0]S02_AXI_1_ARID;
  wire [7:0]S02_AXI_1_ARLEN;
  wire [0:0]S02_AXI_1_ARLOCK;
  wire [2:0]S02_AXI_1_ARPROT;
  wire [3:0]S02_AXI_1_ARQOS;
  wire S02_AXI_1_ARREADY;
  wire [2:0]S02_AXI_1_ARSIZE;
  wire S02_AXI_1_ARVALID;
  wire [37:0]S02_AXI_1_AWADDR;
  wire [1:0]S02_AXI_1_AWBURST;
  wire [3:0]S02_AXI_1_AWCACHE;
  wire [3:0]S02_AXI_1_AWID;
  wire [7:0]S02_AXI_1_AWLEN;
  wire [0:0]S02_AXI_1_AWLOCK;
  wire [2:0]S02_AXI_1_AWPROT;
  wire [3:0]S02_AXI_1_AWQOS;
  wire S02_AXI_1_AWREADY;
  wire [2:0]S02_AXI_1_AWSIZE;
  wire S02_AXI_1_AWVALID;
  wire [3:0]S02_AXI_1_BID;
  wire S02_AXI_1_BREADY;
  wire [1:0]S02_AXI_1_BRESP;
  wire S02_AXI_1_BVALID;
  wire [511:0]S02_AXI_1_RDATA;
  wire [3:0]S02_AXI_1_RID;
  wire S02_AXI_1_RLAST;
  wire S02_AXI_1_RREADY;
  wire [1:0]S02_AXI_1_RRESP;
  wire S02_AXI_1_RVALID;
  wire [511:0]S02_AXI_1_WDATA;
  wire S02_AXI_1_WLAST;
  wire S02_AXI_1_WREADY;
  wire [63:0]S02_AXI_1_WSTRB;
  wire S02_AXI_1_WVALID;
  wire [16:0]S_AXI_1_ARADDR;
  wire [2:0]S_AXI_1_ARPROT;
  wire S_AXI_1_ARREADY;
  wire S_AXI_1_ARVALID;
  wire [16:0]S_AXI_1_AWADDR;
  wire [2:0]S_AXI_1_AWPROT;
  wire S_AXI_1_AWREADY;
  wire S_AXI_1_AWVALID;
  wire S_AXI_1_BREADY;
  wire [1:0]S_AXI_1_BRESP;
  wire S_AXI_1_BVALID;
  wire [31:0]S_AXI_1_RDATA;
  wire S_AXI_1_RREADY;
  wire [1:0]S_AXI_1_RRESP;
  wire S_AXI_1_RVALID;
  wire [31:0]S_AXI_1_WDATA;
  wire S_AXI_1_WREADY;
  wire [3:0]S_AXI_1_WSTRB;
  wire S_AXI_1_WVALID;
  wire core_aresetn_1;
  wire dcm_locked_1;
  wire [0:0]expanded_resets_Res;
  wire [0:0]expanded_resets_interconnect_aresetn2;
  wire [0:0]expanded_resets_peripheral_reset;
  wire flash_clk_1;
  wire [7:0]interconnect_axilite_M00_AXI_ARADDR;
  wire [2:0]interconnect_axilite_M00_AXI_ARPROT;
  wire interconnect_axilite_M00_AXI_ARREADY;
  wire interconnect_axilite_M00_AXI_ARVALID;
  wire [7:0]interconnect_axilite_M00_AXI_AWADDR;
  wire [2:0]interconnect_axilite_M00_AXI_AWPROT;
  wire interconnect_axilite_M00_AXI_AWREADY;
  wire interconnect_axilite_M00_AXI_AWVALID;
  wire interconnect_axilite_M00_AXI_BREADY;
  wire [1:0]interconnect_axilite_M00_AXI_BRESP;
  wire interconnect_axilite_M00_AXI_BVALID;
  wire [31:0]interconnect_axilite_M00_AXI_RDATA;
  wire interconnect_axilite_M00_AXI_RREADY;
  wire [1:0]interconnect_axilite_M00_AXI_RRESP;
  wire interconnect_axilite_M00_AXI_RVALID;
  wire [31:0]interconnect_axilite_M00_AXI_WDATA;
  wire interconnect_axilite_M00_AXI_WREADY;
  wire [3:0]interconnect_axilite_M00_AXI_WSTRB;
  wire interconnect_axilite_M00_AXI_WVALID;
  wire [15:0]interconnect_axilite_M01_AXI_ARADDR;
  wire interconnect_axilite_M01_AXI_ARREADY;
  wire interconnect_axilite_M01_AXI_ARVALID;
  wire [15:0]interconnect_axilite_M01_AXI_AWADDR;
  wire interconnect_axilite_M01_AXI_AWREADY;
  wire interconnect_axilite_M01_AXI_AWVALID;
  wire interconnect_axilite_M01_AXI_BREADY;
  wire [1:0]interconnect_axilite_M01_AXI_BRESP;
  wire interconnect_axilite_M01_AXI_BVALID;
  wire [31:0]interconnect_axilite_M01_AXI_RDATA;
  wire interconnect_axilite_M01_AXI_RREADY;
  wire [1:0]interconnect_axilite_M01_AXI_RRESP;
  wire interconnect_axilite_M01_AXI_RVALID;
  wire [31:0]interconnect_axilite_M01_AXI_WDATA;
  wire interconnect_axilite_M01_AXI_WREADY;
  wire [3:0]interconnect_axilite_M01_AXI_WSTRB;
  wire interconnect_axilite_M01_AXI_WVALID;
  wire [31:0]interconnect_axilite_M02_AXI_ARADDR;
  wire interconnect_axilite_M02_AXI_ARREADY;
  wire interconnect_axilite_M02_AXI_ARVALID;
  wire [31:0]interconnect_axilite_M02_AXI_AWADDR;
  wire interconnect_axilite_M02_AXI_AWREADY;
  wire interconnect_axilite_M02_AXI_AWVALID;
  wire interconnect_axilite_M02_AXI_BREADY;
  wire [1:0]interconnect_axilite_M02_AXI_BRESP;
  wire interconnect_axilite_M02_AXI_BVALID;
  wire [31:0]interconnect_axilite_M02_AXI_RDATA;
  wire interconnect_axilite_M02_AXI_RREADY;
  wire [1:0]interconnect_axilite_M02_AXI_RRESP;
  wire interconnect_axilite_M02_AXI_RVALID;
  wire [31:0]interconnect_axilite_M02_AXI_WDATA;
  wire interconnect_axilite_M02_AXI_WREADY;
  wire [3:0]interconnect_axilite_M02_AXI_WSTRB;
  wire interconnect_axilite_M02_AXI_WVALID;
  wire [31:0]interconnect_axilite_M03_AXI_ARADDR;
  wire interconnect_axilite_M03_AXI_ARREADY;
  wire interconnect_axilite_M03_AXI_ARVALID;
  wire [31:0]interconnect_axilite_M03_AXI_AWADDR;
  wire interconnect_axilite_M03_AXI_AWREADY;
  wire interconnect_axilite_M03_AXI_AWVALID;
  wire interconnect_axilite_M03_AXI_BREADY;
  wire [1:0]interconnect_axilite_M03_AXI_BRESP;
  wire interconnect_axilite_M03_AXI_BVALID;
  wire [31:0]interconnect_axilite_M03_AXI_RDATA;
  wire interconnect_axilite_M03_AXI_RREADY;
  wire [1:0]interconnect_axilite_M03_AXI_RRESP;
  wire interconnect_axilite_M03_AXI_RVALID;
  wire [31:0]interconnect_axilite_M03_AXI_WDATA;
  wire interconnect_axilite_M03_AXI_WREADY;
  wire interconnect_axilite_M03_AXI_WVALID;
  wire [31:0]interconnect_axilite_M04_AXI_ARADDR;
  wire interconnect_axilite_M04_AXI_ARREADY;
  wire interconnect_axilite_M04_AXI_ARVALID;
  wire [31:0]interconnect_axilite_M04_AXI_AWADDR;
  wire interconnect_axilite_M04_AXI_AWREADY;
  wire interconnect_axilite_M04_AXI_AWVALID;
  wire interconnect_axilite_M04_AXI_BREADY;
  wire [1:0]interconnect_axilite_M04_AXI_BRESP;
  wire interconnect_axilite_M04_AXI_BVALID;
  wire [31:0]interconnect_axilite_M04_AXI_RDATA;
  wire interconnect_axilite_M04_AXI_RREADY;
  wire [1:0]interconnect_axilite_M04_AXI_RRESP;
  wire interconnect_axilite_M04_AXI_RVALID;
  wire [31:0]interconnect_axilite_M04_AXI_WDATA;
  wire interconnect_axilite_M04_AXI_WREADY;
  wire interconnect_axilite_M04_AXI_WVALID;
  wire [16:0]interconnect_axilite_M05_AXI_ARADDR;
  wire [2:0]interconnect_axilite_M05_AXI_ARPROT;
  wire interconnect_axilite_M05_AXI_ARREADY;
  wire interconnect_axilite_M05_AXI_ARVALID;
  wire [16:0]interconnect_axilite_M05_AXI_AWADDR;
  wire [2:0]interconnect_axilite_M05_AXI_AWPROT;
  wire interconnect_axilite_M05_AXI_AWREADY;
  wire interconnect_axilite_M05_AXI_AWVALID;
  wire interconnect_axilite_M05_AXI_BREADY;
  wire [1:0]interconnect_axilite_M05_AXI_BRESP;
  wire interconnect_axilite_M05_AXI_BVALID;
  wire [31:0]interconnect_axilite_M05_AXI_RDATA;
  wire interconnect_axilite_M05_AXI_RREADY;
  wire [1:0]interconnect_axilite_M05_AXI_RRESP;
  wire interconnect_axilite_M05_AXI_RVALID;
  wire [31:0]interconnect_axilite_M05_AXI_WDATA;
  wire interconnect_axilite_M05_AXI_WREADY;
  wire [3:0]interconnect_axilite_M05_AXI_WSTRB;
  wire interconnect_axilite_M05_AXI_WVALID;
  wire [8:0]interconnect_axilite_M06_AXI_ARADDR;
  wire interconnect_axilite_M06_AXI_ARREADY;
  wire interconnect_axilite_M06_AXI_ARVALID;
  wire [8:0]interconnect_axilite_M06_AXI_AWADDR;
  wire interconnect_axilite_M06_AXI_AWREADY;
  wire interconnect_axilite_M06_AXI_AWVALID;
  wire interconnect_axilite_M06_AXI_BREADY;
  wire [1:0]interconnect_axilite_M06_AXI_BRESP;
  wire interconnect_axilite_M06_AXI_BVALID;
  wire [31:0]interconnect_axilite_M06_AXI_RDATA;
  wire interconnect_axilite_M06_AXI_RREADY;
  wire [1:0]interconnect_axilite_M06_AXI_RRESP;
  wire interconnect_axilite_M06_AXI_RVALID;
  wire [31:0]interconnect_axilite_M06_AXI_WDATA;
  wire interconnect_axilite_M06_AXI_WREADY;
  wire [3:0]interconnect_axilite_M06_AXI_WSTRB;
  wire interconnect_axilite_M06_AXI_WVALID;
  wire [8:0]interconnect_axilite_M07_AXI_ARADDR;
  wire interconnect_axilite_M07_AXI_ARREADY;
  wire interconnect_axilite_M07_AXI_ARVALID;
  wire [8:0]interconnect_axilite_M07_AXI_AWADDR;
  wire interconnect_axilite_M07_AXI_AWREADY;
  wire interconnect_axilite_M07_AXI_AWVALID;
  wire interconnect_axilite_M07_AXI_BREADY;
  wire [1:0]interconnect_axilite_M07_AXI_BRESP;
  wire interconnect_axilite_M07_AXI_BVALID;
  wire [31:0]interconnect_axilite_M07_AXI_RDATA;
  wire interconnect_axilite_M07_AXI_RREADY;
  wire [1:0]interconnect_axilite_M07_AXI_RRESP;
  wire interconnect_axilite_M07_AXI_RVALID;
  wire [31:0]interconnect_axilite_M07_AXI_WDATA;
  wire interconnect_axilite_M07_AXI_WREADY;
  wire [3:0]interconnect_axilite_M07_AXI_WSTRB;
  wire interconnect_axilite_M07_AXI_WVALID;
  wire [8:0]interconnect_axilite_M08_AXI_ARADDR;
  wire interconnect_axilite_M08_AXI_ARREADY;
  wire interconnect_axilite_M08_AXI_ARVALID;
  wire [8:0]interconnect_axilite_M08_AXI_AWADDR;
  wire interconnect_axilite_M08_AXI_AWREADY;
  wire interconnect_axilite_M08_AXI_AWVALID;
  wire interconnect_axilite_M08_AXI_BREADY;
  wire [1:0]interconnect_axilite_M08_AXI_BRESP;
  wire interconnect_axilite_M08_AXI_BVALID;
  wire [31:0]interconnect_axilite_M08_AXI_RDATA;
  wire interconnect_axilite_M08_AXI_RREADY;
  wire [1:0]interconnect_axilite_M08_AXI_RRESP;
  wire interconnect_axilite_M08_AXI_RVALID;
  wire [31:0]interconnect_axilite_M08_AXI_WDATA;
  wire interconnect_axilite_M08_AXI_WREADY;
  wire [3:0]interconnect_axilite_M08_AXI_WSTRB;
  wire interconnect_axilite_M08_AXI_WVALID;
  wire [10:0]interconnect_axilite_M09_AXI_ARADDR;
  wire [2:0]interconnect_axilite_M09_AXI_ARPROT;
  wire interconnect_axilite_M09_AXI_ARREADY;
  wire interconnect_axilite_M09_AXI_ARVALID;
  wire [10:0]interconnect_axilite_M09_AXI_AWADDR;
  wire [2:0]interconnect_axilite_M09_AXI_AWPROT;
  wire interconnect_axilite_M09_AXI_AWREADY;
  wire interconnect_axilite_M09_AXI_AWVALID;
  wire interconnect_axilite_M09_AXI_BREADY;
  wire [1:0]interconnect_axilite_M09_AXI_BRESP;
  wire interconnect_axilite_M09_AXI_BVALID;
  wire [31:0]interconnect_axilite_M09_AXI_RDATA;
  wire interconnect_axilite_M09_AXI_RREADY;
  wire [1:0]interconnect_axilite_M09_AXI_RRESP;
  wire interconnect_axilite_M09_AXI_RVALID;
  wire [31:0]interconnect_axilite_M09_AXI_WDATA;
  wire interconnect_axilite_M09_AXI_WREADY;
  wire [3:0]interconnect_axilite_M09_AXI_WSTRB;
  wire interconnect_axilite_M09_AXI_WVALID;
  wire [32:0]interconnect_aximm_M00_AXI_ARADDR;
  wire [1:0]interconnect_aximm_M00_AXI_ARBURST;
  wire [3:0]interconnect_aximm_M00_AXI_ARCACHE;
  wire [7:0]interconnect_aximm_M00_AXI_ARLEN;
  wire [0:0]interconnect_aximm_M00_AXI_ARLOCK;
  wire [2:0]interconnect_aximm_M00_AXI_ARPROT;
  wire [3:0]interconnect_aximm_M00_AXI_ARQOS;
  wire interconnect_aximm_M00_AXI_ARREADY;
  wire [2:0]interconnect_aximm_M00_AXI_ARSIZE;
  wire interconnect_aximm_M00_AXI_ARVALID;
  wire [32:0]interconnect_aximm_M00_AXI_AWADDR;
  wire [1:0]interconnect_aximm_M00_AXI_AWBURST;
  wire [3:0]interconnect_aximm_M00_AXI_AWCACHE;
  wire [7:0]interconnect_aximm_M00_AXI_AWLEN;
  wire [0:0]interconnect_aximm_M00_AXI_AWLOCK;
  wire [2:0]interconnect_aximm_M00_AXI_AWPROT;
  wire [3:0]interconnect_aximm_M00_AXI_AWQOS;
  wire interconnect_aximm_M00_AXI_AWREADY;
  wire [2:0]interconnect_aximm_M00_AXI_AWSIZE;
  wire interconnect_aximm_M00_AXI_AWVALID;
  wire interconnect_aximm_M00_AXI_BREADY;
  wire [1:0]interconnect_aximm_M00_AXI_BRESP;
  wire interconnect_aximm_M00_AXI_BVALID;
  wire [511:0]interconnect_aximm_M00_AXI_RDATA;
  wire interconnect_aximm_M00_AXI_RLAST;
  wire interconnect_aximm_M00_AXI_RREADY;
  wire [1:0]interconnect_aximm_M00_AXI_RRESP;
  wire interconnect_aximm_M00_AXI_RVALID;
  wire [511:0]interconnect_aximm_M00_AXI_WDATA;
  wire interconnect_aximm_M00_AXI_WLAST;
  wire interconnect_aximm_M00_AXI_WREADY;
  wire [63:0]interconnect_aximm_M00_AXI_WSTRB;
  wire interconnect_aximm_M00_AXI_WVALID;
  wire [32:0]interconnect_aximm_M01_AXI_ARADDR;
  wire [1:0]interconnect_aximm_M01_AXI_ARBURST;
  wire [3:0]interconnect_aximm_M01_AXI_ARCACHE;
  wire [7:0]interconnect_aximm_M01_AXI_ARLEN;
  wire [0:0]interconnect_aximm_M01_AXI_ARLOCK;
  wire [2:0]interconnect_aximm_M01_AXI_ARPROT;
  wire [3:0]interconnect_aximm_M01_AXI_ARQOS;
  wire interconnect_aximm_M01_AXI_ARREADY;
  wire [2:0]interconnect_aximm_M01_AXI_ARSIZE;
  wire interconnect_aximm_M01_AXI_ARVALID;
  wire [32:0]interconnect_aximm_M01_AXI_AWADDR;
  wire [1:0]interconnect_aximm_M01_AXI_AWBURST;
  wire [3:0]interconnect_aximm_M01_AXI_AWCACHE;
  wire [7:0]interconnect_aximm_M01_AXI_AWLEN;
  wire [0:0]interconnect_aximm_M01_AXI_AWLOCK;
  wire [2:0]interconnect_aximm_M01_AXI_AWPROT;
  wire [3:0]interconnect_aximm_M01_AXI_AWQOS;
  wire interconnect_aximm_M01_AXI_AWREADY;
  wire [2:0]interconnect_aximm_M01_AXI_AWSIZE;
  wire interconnect_aximm_M01_AXI_AWVALID;
  wire interconnect_aximm_M01_AXI_BREADY;
  wire [1:0]interconnect_aximm_M01_AXI_BRESP;
  wire interconnect_aximm_M01_AXI_BVALID;
  wire [511:0]interconnect_aximm_M01_AXI_RDATA;
  wire interconnect_aximm_M01_AXI_RLAST;
  wire interconnect_aximm_M01_AXI_RREADY;
  wire [1:0]interconnect_aximm_M01_AXI_RRESP;
  wire interconnect_aximm_M01_AXI_RVALID;
  wire [511:0]interconnect_aximm_M01_AXI_WDATA;
  wire interconnect_aximm_M01_AXI_WLAST;
  wire interconnect_aximm_M01_AXI_WREADY;
  wire [63:0]interconnect_aximm_M01_AXI_WSTRB;
  wire interconnect_aximm_M01_AXI_WVALID;
  wire [31:0]interconnect_aximm_M02_AXI_ARADDR;
  wire [1:0]interconnect_aximm_M02_AXI_ARBURST;
  wire [3:0]interconnect_aximm_M02_AXI_ARCACHE;
  wire [7:0]interconnect_aximm_M02_AXI_ARLEN;
  wire [0:0]interconnect_aximm_M02_AXI_ARLOCK;
  wire [2:0]interconnect_aximm_M02_AXI_ARPROT;
  wire interconnect_aximm_M02_AXI_ARREADY;
  wire [2:0]interconnect_aximm_M02_AXI_ARSIZE;
  wire interconnect_aximm_M02_AXI_ARVALID;
  wire [127:0]interconnect_aximm_M02_AXI_RDATA;
  wire interconnect_aximm_M02_AXI_RLAST;
  wire interconnect_aximm_M02_AXI_RREADY;
  wire [1:0]interconnect_aximm_M02_AXI_RRESP;
  wire interconnect_aximm_M02_AXI_RVALID;
  wire [0:0]memory_Res;
  wire memory_c0_ddr3_ui_clk;
  wire memory_c0_ddr3_ui_clk1;
  wire memory_c0_ddr3_ui_clk_sync_rst;
  wire memory_c0_ddr3_ui_clk_sync_rst1;
  wire [8:0]pr_support_limited_dout;
  wire [26:1]pr_support_limited_flash_A;
  wire pr_support_limited_flash_ADV_N;
  wire pr_support_limited_flash_OE_N;
  wire pr_support_limited_flash_WE_N;
  wire [37:0]u_ocl_region_M00_AXI_ARADDR;
  wire [1:0]u_ocl_region_M00_AXI_ARBURST;
  wire [3:0]u_ocl_region_M00_AXI_ARCACHE;
  wire [3:0]u_ocl_region_M00_AXI_ARID;
  wire [7:0]u_ocl_region_M00_AXI_ARLEN;
  wire [0:0]u_ocl_region_M00_AXI_ARLOCK;
  wire [2:0]u_ocl_region_M00_AXI_ARPROT;
  wire [3:0]u_ocl_region_M00_AXI_ARQOS;
  wire u_ocl_region_M00_AXI_ARREADY;
  wire [2:0]u_ocl_region_M00_AXI_ARSIZE;
  wire u_ocl_region_M00_AXI_ARVALID;
  wire [37:0]u_ocl_region_M00_AXI_AWADDR;
  wire [1:0]u_ocl_region_M00_AXI_AWBURST;
  wire [3:0]u_ocl_region_M00_AXI_AWCACHE;
  wire [3:0]u_ocl_region_M00_AXI_AWID;
  wire [7:0]u_ocl_region_M00_AXI_AWLEN;
  wire [0:0]u_ocl_region_M00_AXI_AWLOCK;
  wire [2:0]u_ocl_region_M00_AXI_AWPROT;
  wire [3:0]u_ocl_region_M00_AXI_AWQOS;
  wire u_ocl_region_M00_AXI_AWREADY;
  wire [2:0]u_ocl_region_M00_AXI_AWSIZE;
  wire u_ocl_region_M00_AXI_AWVALID;
  wire [3:0]u_ocl_region_M00_AXI_BID;
  wire u_ocl_region_M00_AXI_BREADY;
  wire [1:0]u_ocl_region_M00_AXI_BRESP;
  wire u_ocl_region_M00_AXI_BVALID;
  wire [511:0]u_ocl_region_M00_AXI_RDATA;
  wire [3:0]u_ocl_region_M00_AXI_RID;
  wire u_ocl_region_M00_AXI_RLAST;
  wire u_ocl_region_M00_AXI_RREADY;
  wire [1:0]u_ocl_region_M00_AXI_RRESP;
  wire u_ocl_region_M00_AXI_RVALID;
  wire [511:0]u_ocl_region_M00_AXI_WDATA;
  wire u_ocl_region_M00_AXI_WLAST;
  wire u_ocl_region_M00_AXI_WREADY;
  wire [63:0]u_ocl_region_M00_AXI_WSTRB;
  wire u_ocl_region_M00_AXI_WVALID;
  wire [37:0]u_ocl_region_M01_AXI_ARADDR;
  wire [1:0]u_ocl_region_M01_AXI_ARBURST;
  wire [3:0]u_ocl_region_M01_AXI_ARCACHE;
  wire [3:0]u_ocl_region_M01_AXI_ARID;
  wire [7:0]u_ocl_region_M01_AXI_ARLEN;
  wire [0:0]u_ocl_region_M01_AXI_ARLOCK;
  wire [2:0]u_ocl_region_M01_AXI_ARPROT;
  wire [3:0]u_ocl_region_M01_AXI_ARQOS;
  wire u_ocl_region_M01_AXI_ARREADY;
  wire [2:0]u_ocl_region_M01_AXI_ARSIZE;
  wire u_ocl_region_M01_AXI_ARVALID;
  wire [37:0]u_ocl_region_M01_AXI_AWADDR;
  wire [1:0]u_ocl_region_M01_AXI_AWBURST;
  wire [3:0]u_ocl_region_M01_AXI_AWCACHE;
  wire [3:0]u_ocl_region_M01_AXI_AWID;
  wire [7:0]u_ocl_region_M01_AXI_AWLEN;
  wire [0:0]u_ocl_region_M01_AXI_AWLOCK;
  wire [2:0]u_ocl_region_M01_AXI_AWPROT;
  wire [3:0]u_ocl_region_M01_AXI_AWQOS;
  wire u_ocl_region_M01_AXI_AWREADY;
  wire [2:0]u_ocl_region_M01_AXI_AWSIZE;
  wire u_ocl_region_M01_AXI_AWVALID;
  wire [3:0]u_ocl_region_M01_AXI_BID;
  wire u_ocl_region_M01_AXI_BREADY;
  wire [1:0]u_ocl_region_M01_AXI_BRESP;
  wire u_ocl_region_M01_AXI_BVALID;
  wire [511:0]u_ocl_region_M01_AXI_RDATA;
  wire [3:0]u_ocl_region_M01_AXI_RID;
  wire u_ocl_region_M01_AXI_RLAST;
  wire u_ocl_region_M01_AXI_RREADY;
  wire [1:0]u_ocl_region_M01_AXI_RRESP;
  wire u_ocl_region_M01_AXI_RVALID;
  wire [511:0]u_ocl_region_M01_AXI_WDATA;
  wire u_ocl_region_M01_AXI_WLAST;
  wire u_ocl_region_M01_AXI_WREADY;
  wire [63:0]u_ocl_region_M01_AXI_WSTRB;
  wire u_ocl_region_M01_AXI_WVALID;

  assign ACLK_1 = ACLK;
  assign C0_DDR3_addr[15:0] = Conn2_ADDR;
  assign C0_DDR3_ba[2:0] = Conn2_BA;
  assign C0_DDR3_cas_n = Conn2_CAS_N;
  assign C0_DDR3_ck_n[1:0] = Conn2_CK_N;
  assign C0_DDR3_ck_p[1:0] = Conn2_CK_P;
  assign C0_DDR3_cke[1:0] = Conn2_CKE;
  assign C0_DDR3_cs_n[1:0] = Conn2_CS_N;
  assign C0_DDR3_odt[1:0] = Conn2_ODT;
  assign C0_DDR3_ras_n = Conn2_RAS_N;
  assign C0_DDR3_reset_n = Conn2_RESET_N;
  assign C0_DDR3_we_n = Conn2_WE_N;
  assign C0_DDR4_addr[15:0] = Conn4_ADDR;
  assign C0_DDR4_ba[2:0] = Conn4_BA;
  assign C0_DDR4_cas_n = Conn4_CAS_N;
  assign C0_DDR4_ck_n[1:0] = Conn4_CK_N;
  assign C0_DDR4_ck_p[1:0] = Conn4_CK_P;
  assign C0_DDR4_cke[1:0] = Conn4_CKE;
  assign C0_DDR4_cs_n[1:0] = Conn4_CS_N;
  assign C0_DDR4_odt[1:0] = Conn4_ODT;
  assign C0_DDR4_ras_n = Conn4_RAS_N;
  assign C0_DDR4_reset_n = Conn4_RESET_N;
  assign C0_DDR4_we_n = Conn4_WE_N;
  assign Conn1_CLK_N = C0_SYS_CLK_clk_n;
  assign Conn1_CLK_P = C0_SYS_CLK_clk_p;
  assign Conn3_CLK_N = C0_SYS_CLK1_clk_n;
  assign Conn3_CLK_P = C0_SYS_CLK1_clk_p;
  assign INTERCONNECT_RESET_1 = INTERCONNECT_RESET[0];
  assign KERNEL_CLK_1 = KERNEL_CLK;
  assign KERNEL_RESET_1 = KERNEL_RESET[0];
  assign M00_AXI_araddr[37:0] = u_ocl_region_M00_AXI_ARADDR;
  assign M00_AXI_arburst[1:0] = u_ocl_region_M00_AXI_ARBURST;
  assign M00_AXI_arcache[3:0] = u_ocl_region_M00_AXI_ARCACHE;
  assign M00_AXI_arid[3:0] = u_ocl_region_M00_AXI_ARID;
  assign M00_AXI_arlen[7:0] = u_ocl_region_M00_AXI_ARLEN;
  assign M00_AXI_arlock[0] = u_ocl_region_M00_AXI_ARLOCK;
  assign M00_AXI_arprot[2:0] = u_ocl_region_M00_AXI_ARPROT;
  assign M00_AXI_arqos[3:0] = u_ocl_region_M00_AXI_ARQOS;
  assign M00_AXI_arsize[2:0] = u_ocl_region_M00_AXI_ARSIZE;
  assign M00_AXI_arvalid = u_ocl_region_M00_AXI_ARVALID;
  assign M00_AXI_awaddr[37:0] = u_ocl_region_M00_AXI_AWADDR;
  assign M00_AXI_awburst[1:0] = u_ocl_region_M00_AXI_AWBURST;
  assign M00_AXI_awcache[3:0] = u_ocl_region_M00_AXI_AWCACHE;
  assign M00_AXI_awid[3:0] = u_ocl_region_M00_AXI_AWID;
  assign M00_AXI_awlen[7:0] = u_ocl_region_M00_AXI_AWLEN;
  assign M00_AXI_awlock[0] = u_ocl_region_M00_AXI_AWLOCK;
  assign M00_AXI_awprot[2:0] = u_ocl_region_M00_AXI_AWPROT;
  assign M00_AXI_awqos[3:0] = u_ocl_region_M00_AXI_AWQOS;
  assign M00_AXI_awsize[2:0] = u_ocl_region_M00_AXI_AWSIZE;
  assign M00_AXI_awvalid = u_ocl_region_M00_AXI_AWVALID;
  assign M00_AXI_bready = u_ocl_region_M00_AXI_BREADY;
  assign M00_AXI_rready = u_ocl_region_M00_AXI_RREADY;
  assign M00_AXI_wdata[511:0] = u_ocl_region_M00_AXI_WDATA;
  assign M00_AXI_wlast = u_ocl_region_M00_AXI_WLAST;
  assign M00_AXI_wstrb[63:0] = u_ocl_region_M00_AXI_WSTRB;
  assign M00_AXI_wvalid = u_ocl_region_M00_AXI_WVALID;
  assign M01_AXI_araddr[37:0] = u_ocl_region_M01_AXI_ARADDR;
  assign M01_AXI_arburst[1:0] = u_ocl_region_M01_AXI_ARBURST;
  assign M01_AXI_arcache[3:0] = u_ocl_region_M01_AXI_ARCACHE;
  assign M01_AXI_arid[3:0] = u_ocl_region_M01_AXI_ARID;
  assign M01_AXI_arlen[7:0] = u_ocl_region_M01_AXI_ARLEN;
  assign M01_AXI_arlock[0] = u_ocl_region_M01_AXI_ARLOCK;
  assign M01_AXI_arprot[2:0] = u_ocl_region_M01_AXI_ARPROT;
  assign M01_AXI_arqos[3:0] = u_ocl_region_M01_AXI_ARQOS;
  assign M01_AXI_arsize[2:0] = u_ocl_region_M01_AXI_ARSIZE;
  assign M01_AXI_arvalid = u_ocl_region_M01_AXI_ARVALID;
  assign M01_AXI_awaddr[37:0] = u_ocl_region_M01_AXI_AWADDR;
  assign M01_AXI_awburst[1:0] = u_ocl_region_M01_AXI_AWBURST;
  assign M01_AXI_awcache[3:0] = u_ocl_region_M01_AXI_AWCACHE;
  assign M01_AXI_awid[3:0] = u_ocl_region_M01_AXI_AWID;
  assign M01_AXI_awlen[7:0] = u_ocl_region_M01_AXI_AWLEN;
  assign M01_AXI_awlock[0] = u_ocl_region_M01_AXI_AWLOCK;
  assign M01_AXI_awprot[2:0] = u_ocl_region_M01_AXI_AWPROT;
  assign M01_AXI_awqos[3:0] = u_ocl_region_M01_AXI_AWQOS;
  assign M01_AXI_awsize[2:0] = u_ocl_region_M01_AXI_AWSIZE;
  assign M01_AXI_awvalid = u_ocl_region_M01_AXI_AWVALID;
  assign M01_AXI_bready = u_ocl_region_M01_AXI_BREADY;
  assign M01_AXI_rready = u_ocl_region_M01_AXI_RREADY;
  assign M01_AXI_wdata[511:0] = u_ocl_region_M01_AXI_WDATA;
  assign M01_AXI_wlast = u_ocl_region_M01_AXI_WLAST;
  assign M01_AXI_wstrb[63:0] = u_ocl_region_M01_AXI_WSTRB;
  assign M01_AXI_wvalid = u_ocl_region_M01_AXI_WVALID;
  assign M05_AXI_araddr[16:0] = interconnect_axilite_M05_AXI_ARADDR;
  assign M05_AXI_arprot[2:0] = interconnect_axilite_M05_AXI_ARPROT;
  assign M05_AXI_arvalid = interconnect_axilite_M05_AXI_ARVALID;
  assign M05_AXI_awaddr[16:0] = interconnect_axilite_M05_AXI_AWADDR;
  assign M05_AXI_awprot[2:0] = interconnect_axilite_M05_AXI_AWPROT;
  assign M05_AXI_awvalid = interconnect_axilite_M05_AXI_AWVALID;
  assign M05_AXI_bready = interconnect_axilite_M05_AXI_BREADY;
  assign M05_AXI_rready = interconnect_axilite_M05_AXI_RREADY;
  assign M05_AXI_wdata[31:0] = interconnect_axilite_M05_AXI_WDATA;
  assign M05_AXI_wstrb[3:0] = interconnect_axilite_M05_AXI_WSTRB;
  assign M05_AXI_wvalid = interconnect_axilite_M05_AXI_WVALID;
  assign M06_AXI_araddr[8:0] = interconnect_axilite_M06_AXI_ARADDR;
  assign M06_AXI_arvalid = interconnect_axilite_M06_AXI_ARVALID;
  assign M06_AXI_awaddr[8:0] = interconnect_axilite_M06_AXI_AWADDR;
  assign M06_AXI_awvalid = interconnect_axilite_M06_AXI_AWVALID;
  assign M06_AXI_bready = interconnect_axilite_M06_AXI_BREADY;
  assign M06_AXI_rready = interconnect_axilite_M06_AXI_RREADY;
  assign M06_AXI_wdata[31:0] = interconnect_axilite_M06_AXI_WDATA;
  assign M06_AXI_wstrb[3:0] = interconnect_axilite_M06_AXI_WSTRB;
  assign M06_AXI_wvalid = interconnect_axilite_M06_AXI_WVALID;
  assign M07_AXI_araddr[8:0] = interconnect_axilite_M07_AXI_ARADDR;
  assign M07_AXI_arvalid = interconnect_axilite_M07_AXI_ARVALID;
  assign M07_AXI_awaddr[8:0] = interconnect_axilite_M07_AXI_AWADDR;
  assign M07_AXI_awvalid = interconnect_axilite_M07_AXI_AWVALID;
  assign M07_AXI_bready = interconnect_axilite_M07_AXI_BREADY;
  assign M07_AXI_rready = interconnect_axilite_M07_AXI_RREADY;
  assign M07_AXI_wdata[31:0] = interconnect_axilite_M07_AXI_WDATA;
  assign M07_AXI_wstrb[3:0] = interconnect_axilite_M07_AXI_WSTRB;
  assign M07_AXI_wvalid = interconnect_axilite_M07_AXI_WVALID;
  assign M08_AXI_araddr[8:0] = interconnect_axilite_M08_AXI_ARADDR;
  assign M08_AXI_arvalid = interconnect_axilite_M08_AXI_ARVALID;
  assign M08_AXI_awaddr[8:0] = interconnect_axilite_M08_AXI_AWADDR;
  assign M08_AXI_awvalid = interconnect_axilite_M08_AXI_AWVALID;
  assign M08_AXI_bready = interconnect_axilite_M08_AXI_BREADY;
  assign M08_AXI_rready = interconnect_axilite_M08_AXI_RREADY;
  assign M08_AXI_wdata[31:0] = interconnect_axilite_M08_AXI_WDATA;
  assign M08_AXI_wstrb[3:0] = interconnect_axilite_M08_AXI_WSTRB;
  assign M08_AXI_wvalid = interconnect_axilite_M08_AXI_WVALID;
  assign M09_AXI_araddr[10:0] = interconnect_axilite_M09_AXI_ARADDR;
  assign M09_AXI_arprot[2:0] = interconnect_axilite_M09_AXI_ARPROT;
  assign M09_AXI_arvalid = interconnect_axilite_M09_AXI_ARVALID;
  assign M09_AXI_awaddr[10:0] = interconnect_axilite_M09_AXI_AWADDR;
  assign M09_AXI_awprot[2:0] = interconnect_axilite_M09_AXI_AWPROT;
  assign M09_AXI_awvalid = interconnect_axilite_M09_AXI_AWVALID;
  assign M09_AXI_bready = interconnect_axilite_M09_AXI_BREADY;
  assign M09_AXI_rready = interconnect_axilite_M09_AXI_RREADY;
  assign M09_AXI_wdata[31:0] = interconnect_axilite_M09_AXI_WDATA;
  assign M09_AXI_wstrb[3:0] = interconnect_axilite_M09_AXI_WSTRB;
  assign M09_AXI_wvalid = interconnect_axilite_M09_AXI_WVALID;
  assign Op1_1 = Op1[0];
  assign Res[0] = memory_Res;
  assign S00_ACLK_1 = S00_ACLK;
  assign S00_AXI1_1_ARADDR = S00_AXI1_araddr[63:0];
  assign S00_AXI1_1_ARBURST = S00_AXI1_arburst[1:0];
  assign S00_AXI1_1_ARCACHE = S00_AXI1_arcache[3:0];
  assign S00_AXI1_1_ARID = S00_AXI1_arid[3:0];
  assign S00_AXI1_1_ARLEN = S00_AXI1_arlen[7:0];
  assign S00_AXI1_1_ARLOCK = S00_AXI1_arlock[0];
  assign S00_AXI1_1_ARPROT = S00_AXI1_arprot[2:0];
  assign S00_AXI1_1_ARSIZE = S00_AXI1_arsize[2:0];
  assign S00_AXI1_1_ARVALID = S00_AXI1_arvalid;
  assign S00_AXI1_1_AWADDR = S00_AXI1_awaddr[63:0];
  assign S00_AXI1_1_AWBURST = S00_AXI1_awburst[1:0];
  assign S00_AXI1_1_AWCACHE = S00_AXI1_awcache[3:0];
  assign S00_AXI1_1_AWID = S00_AXI1_awid[3:0];
  assign S00_AXI1_1_AWLEN = S00_AXI1_awlen[7:0];
  assign S00_AXI1_1_AWLOCK = S00_AXI1_awlock[0];
  assign S00_AXI1_1_AWPROT = S00_AXI1_awprot[2:0];
  assign S00_AXI1_1_AWSIZE = S00_AXI1_awsize[2:0];
  assign S00_AXI1_1_AWVALID = S00_AXI1_awvalid;
  assign S00_AXI1_1_BREADY = S00_AXI1_bready;
  assign S00_AXI1_1_RREADY = S00_AXI1_rready;
  assign S00_AXI1_1_WDATA = S00_AXI1_wdata[255:0];
  assign S00_AXI1_1_WLAST = S00_AXI1_wlast;
  assign S00_AXI1_1_WSTRB = S00_AXI1_wstrb[31:0];
  assign S00_AXI1_1_WVALID = S00_AXI1_wvalid;
  assign S00_AXI1_arready = S00_AXI1_1_ARREADY;
  assign S00_AXI1_awready = S00_AXI1_1_AWREADY;
  assign S00_AXI1_bid[3:0] = S00_AXI1_1_BID;
  assign S00_AXI1_bresp[1:0] = S00_AXI1_1_BRESP;
  assign S00_AXI1_bvalid = S00_AXI1_1_BVALID;
  assign S00_AXI1_rdata[255:0] = S00_AXI1_1_RDATA;
  assign S00_AXI1_rid[3:0] = S00_AXI1_1_RID;
  assign S00_AXI1_rlast = S00_AXI1_1_RLAST;
  assign S00_AXI1_rresp[1:0] = S00_AXI1_1_RRESP;
  assign S00_AXI1_rvalid = S00_AXI1_1_RVALID;
  assign S00_AXI1_wready = S00_AXI1_1_WREADY;
  assign S00_AXI_1_ARADDR = S00_AXI_araddr[31:0];
  assign S00_AXI_1_ARPROT = S00_AXI_arprot[2:0];
  assign S00_AXI_1_ARVALID = S00_AXI_arvalid;
  assign S00_AXI_1_AWADDR = S00_AXI_awaddr[31:0];
  assign S00_AXI_1_AWPROT = S00_AXI_awprot[2:0];
  assign S00_AXI_1_AWVALID = S00_AXI_awvalid;
  assign S00_AXI_1_BREADY = S00_AXI_bready;
  assign S00_AXI_1_RREADY = S00_AXI_rready;
  assign S00_AXI_1_WDATA = S00_AXI_wdata[31:0];
  assign S00_AXI_1_WSTRB = S00_AXI_wstrb[3:0];
  assign S00_AXI_1_WVALID = S00_AXI_wvalid;
  assign S00_AXI_arready = S00_AXI_1_ARREADY;
  assign S00_AXI_awready = S00_AXI_1_AWREADY;
  assign S00_AXI_bresp[1:0] = S00_AXI_1_BRESP;
  assign S00_AXI_bvalid = S00_AXI_1_BVALID;
  assign S00_AXI_rdata[31:0] = S00_AXI_1_RDATA;
  assign S00_AXI_rresp[1:0] = S00_AXI_1_RRESP;
  assign S00_AXI_rvalid = S00_AXI_1_RVALID;
  assign S00_AXI_wready = S00_AXI_1_WREADY;
  assign S01_AXI_1_ARADDR = S01_AXI_araddr[37:0];
  assign S01_AXI_1_ARBURST = S01_AXI_arburst[1:0];
  assign S01_AXI_1_ARCACHE = S01_AXI_arcache[3:0];
  assign S01_AXI_1_ARID = S01_AXI_arid[3:0];
  assign S01_AXI_1_ARLEN = S01_AXI_arlen[7:0];
  assign S01_AXI_1_ARLOCK = S01_AXI_arlock[0];
  assign S01_AXI_1_ARPROT = S01_AXI_arprot[2:0];
  assign S01_AXI_1_ARQOS = S01_AXI_arqos[3:0];
  assign S01_AXI_1_ARSIZE = S01_AXI_arsize[2:0];
  assign S01_AXI_1_ARVALID = S01_AXI_arvalid;
  assign S01_AXI_1_AWADDR = S01_AXI_awaddr[37:0];
  assign S01_AXI_1_AWBURST = S01_AXI_awburst[1:0];
  assign S01_AXI_1_AWCACHE = S01_AXI_awcache[3:0];
  assign S01_AXI_1_AWID = S01_AXI_awid[3:0];
  assign S01_AXI_1_AWLEN = S01_AXI_awlen[7:0];
  assign S01_AXI_1_AWLOCK = S01_AXI_awlock[0];
  assign S01_AXI_1_AWPROT = S01_AXI_awprot[2:0];
  assign S01_AXI_1_AWQOS = S01_AXI_awqos[3:0];
  assign S01_AXI_1_AWSIZE = S01_AXI_awsize[2:0];
  assign S01_AXI_1_AWVALID = S01_AXI_awvalid;
  assign S01_AXI_1_BREADY = S01_AXI_bready;
  assign S01_AXI_1_RREADY = S01_AXI_rready;
  assign S01_AXI_1_WDATA = S01_AXI_wdata[511:0];
  assign S01_AXI_1_WLAST = S01_AXI_wlast;
  assign S01_AXI_1_WSTRB = S01_AXI_wstrb[63:0];
  assign S01_AXI_1_WVALID = S01_AXI_wvalid;
  assign S01_AXI_arready = S01_AXI_1_ARREADY;
  assign S01_AXI_awready = S01_AXI_1_AWREADY;
  assign S01_AXI_bid[3:0] = S01_AXI_1_BID;
  assign S01_AXI_bresp[1:0] = S01_AXI_1_BRESP;
  assign S01_AXI_bvalid = S01_AXI_1_BVALID;
  assign S01_AXI_rdata[511:0] = S01_AXI_1_RDATA;
  assign S01_AXI_rid[3:0] = S01_AXI_1_RID;
  assign S01_AXI_rlast = S01_AXI_1_RLAST;
  assign S01_AXI_rresp[1:0] = S01_AXI_1_RRESP;
  assign S01_AXI_rvalid = S01_AXI_1_RVALID;
  assign S01_AXI_wready = S01_AXI_1_WREADY;
  assign S02_AXI_1_ARADDR = S02_AXI_araddr[37:0];
  assign S02_AXI_1_ARBURST = S02_AXI_arburst[1:0];
  assign S02_AXI_1_ARCACHE = S02_AXI_arcache[3:0];
  assign S02_AXI_1_ARID = S02_AXI_arid[3:0];
  assign S02_AXI_1_ARLEN = S02_AXI_arlen[7:0];
  assign S02_AXI_1_ARLOCK = S02_AXI_arlock[0];
  assign S02_AXI_1_ARPROT = S02_AXI_arprot[2:0];
  assign S02_AXI_1_ARQOS = S02_AXI_arqos[3:0];
  assign S02_AXI_1_ARSIZE = S02_AXI_arsize[2:0];
  assign S02_AXI_1_ARVALID = S02_AXI_arvalid;
  assign S02_AXI_1_AWADDR = S02_AXI_awaddr[37:0];
  assign S02_AXI_1_AWBURST = S02_AXI_awburst[1:0];
  assign S02_AXI_1_AWCACHE = S02_AXI_awcache[3:0];
  assign S02_AXI_1_AWID = S02_AXI_awid[3:0];
  assign S02_AXI_1_AWLEN = S02_AXI_awlen[7:0];
  assign S02_AXI_1_AWLOCK = S02_AXI_awlock[0];
  assign S02_AXI_1_AWPROT = S02_AXI_awprot[2:0];
  assign S02_AXI_1_AWQOS = S02_AXI_awqos[3:0];
  assign S02_AXI_1_AWSIZE = S02_AXI_awsize[2:0];
  assign S02_AXI_1_AWVALID = S02_AXI_awvalid;
  assign S02_AXI_1_BREADY = S02_AXI_bready;
  assign S02_AXI_1_RREADY = S02_AXI_rready;
  assign S02_AXI_1_WDATA = S02_AXI_wdata[511:0];
  assign S02_AXI_1_WLAST = S02_AXI_wlast;
  assign S02_AXI_1_WSTRB = S02_AXI_wstrb[63:0];
  assign S02_AXI_1_WVALID = S02_AXI_wvalid;
  assign S02_AXI_arready = S02_AXI_1_ARREADY;
  assign S02_AXI_awready = S02_AXI_1_AWREADY;
  assign S02_AXI_bid[3:0] = S02_AXI_1_BID;
  assign S02_AXI_bresp[1:0] = S02_AXI_1_BRESP;
  assign S02_AXI_bvalid = S02_AXI_1_BVALID;
  assign S02_AXI_rdata[511:0] = S02_AXI_1_RDATA;
  assign S02_AXI_rid[3:0] = S02_AXI_1_RID;
  assign S02_AXI_rlast = S02_AXI_1_RLAST;
  assign S02_AXI_rresp[1:0] = S02_AXI_1_RRESP;
  assign S02_AXI_rvalid = S02_AXI_1_RVALID;
  assign S02_AXI_wready = S02_AXI_1_WREADY;
  assign S_AXI_1_ARADDR = S_AXI_araddr[16:0];
  assign S_AXI_1_ARPROT = S_AXI_arprot[2:0];
  assign S_AXI_1_ARVALID = S_AXI_arvalid;
  assign S_AXI_1_AWADDR = S_AXI_awaddr[16:0];
  assign S_AXI_1_AWPROT = S_AXI_awprot[2:0];
  assign S_AXI_1_AWVALID = S_AXI_awvalid;
  assign S_AXI_1_BREADY = S_AXI_bready;
  assign S_AXI_1_RREADY = S_AXI_rready;
  assign S_AXI_1_WDATA = S_AXI_wdata[31:0];
  assign S_AXI_1_WSTRB = S_AXI_wstrb[3:0];
  assign S_AXI_1_WVALID = S_AXI_wvalid;
  assign S_AXI_arready = S_AXI_1_ARREADY;
  assign S_AXI_awready = S_AXI_1_AWREADY;
  assign S_AXI_bresp[1:0] = S_AXI_1_BRESP;
  assign S_AXI_bvalid = S_AXI_1_BVALID;
  assign S_AXI_rdata[31:0] = S_AXI_1_RDATA;
  assign S_AXI_rresp[1:0] = S_AXI_1_RRESP;
  assign S_AXI_rvalid = S_AXI_1_RVALID;
  assign S_AXI_wready = S_AXI_1_WREADY;
  assign core_aresetn_1 = core_aresetn;
  assign dcm_locked_1 = dcm_locked;
  assign dout[8:0] = pr_support_limited_dout;
  assign flash_A[26:1] = pr_support_limited_flash_A;
  assign flash_ADV_N = pr_support_limited_flash_ADV_N;
  assign flash_OE_N = pr_support_limited_flash_OE_N;
  assign flash_WE_N = pr_support_limited_flash_WE_N;
  assign flash_clk_1 = flash_clk;
  assign interconnect_aresetn1[0] = ARESETN_1;
  assign interconnect_axilite_M05_AXI_ARREADY = M05_AXI_arready;
  assign interconnect_axilite_M05_AXI_AWREADY = M05_AXI_awready;
  assign interconnect_axilite_M05_AXI_BRESP = M05_AXI_bresp[1:0];
  assign interconnect_axilite_M05_AXI_BVALID = M05_AXI_bvalid;
  assign interconnect_axilite_M05_AXI_RDATA = M05_AXI_rdata[31:0];
  assign interconnect_axilite_M05_AXI_RRESP = M05_AXI_rresp[1:0];
  assign interconnect_axilite_M05_AXI_RVALID = M05_AXI_rvalid;
  assign interconnect_axilite_M05_AXI_WREADY = M05_AXI_wready;
  assign interconnect_axilite_M06_AXI_ARREADY = M06_AXI_arready;
  assign interconnect_axilite_M06_AXI_AWREADY = M06_AXI_awready;
  assign interconnect_axilite_M06_AXI_BRESP = M06_AXI_bresp[1:0];
  assign interconnect_axilite_M06_AXI_BVALID = M06_AXI_bvalid;
  assign interconnect_axilite_M06_AXI_RDATA = M06_AXI_rdata[31:0];
  assign interconnect_axilite_M06_AXI_RRESP = M06_AXI_rresp[1:0];
  assign interconnect_axilite_M06_AXI_RVALID = M06_AXI_rvalid;
  assign interconnect_axilite_M06_AXI_WREADY = M06_AXI_wready;
  assign interconnect_axilite_M07_AXI_ARREADY = M07_AXI_arready;
  assign interconnect_axilite_M07_AXI_AWREADY = M07_AXI_awready;
  assign interconnect_axilite_M07_AXI_BRESP = M07_AXI_bresp[1:0];
  assign interconnect_axilite_M07_AXI_BVALID = M07_AXI_bvalid;
  assign interconnect_axilite_M07_AXI_RDATA = M07_AXI_rdata[31:0];
  assign interconnect_axilite_M07_AXI_RRESP = M07_AXI_rresp[1:0];
  assign interconnect_axilite_M07_AXI_RVALID = M07_AXI_rvalid;
  assign interconnect_axilite_M07_AXI_WREADY = M07_AXI_wready;
  assign interconnect_axilite_M08_AXI_ARREADY = M08_AXI_arready;
  assign interconnect_axilite_M08_AXI_AWREADY = M08_AXI_awready;
  assign interconnect_axilite_M08_AXI_BRESP = M08_AXI_bresp[1:0];
  assign interconnect_axilite_M08_AXI_BVALID = M08_AXI_bvalid;
  assign interconnect_axilite_M08_AXI_RDATA = M08_AXI_rdata[31:0];
  assign interconnect_axilite_M08_AXI_RRESP = M08_AXI_rresp[1:0];
  assign interconnect_axilite_M08_AXI_RVALID = M08_AXI_rvalid;
  assign interconnect_axilite_M08_AXI_WREADY = M08_AXI_wready;
  assign interconnect_axilite_M09_AXI_ARREADY = M09_AXI_arready;
  assign interconnect_axilite_M09_AXI_AWREADY = M09_AXI_awready;
  assign interconnect_axilite_M09_AXI_BRESP = M09_AXI_bresp[1:0];
  assign interconnect_axilite_M09_AXI_BVALID = M09_AXI_bvalid;
  assign interconnect_axilite_M09_AXI_RDATA = M09_AXI_rdata[31:0];
  assign interconnect_axilite_M09_AXI_RRESP = M09_AXI_rresp[1:0];
  assign interconnect_axilite_M09_AXI_RVALID = M09_AXI_rvalid;
  assign interconnect_axilite_M09_AXI_WREADY = M09_AXI_wready;
  assign u_ocl_region_M00_AXI_ARREADY = M00_AXI_arready;
  assign u_ocl_region_M00_AXI_AWREADY = M00_AXI_awready;
  assign u_ocl_region_M00_AXI_BID = M00_AXI_bid[3:0];
  assign u_ocl_region_M00_AXI_BRESP = M00_AXI_bresp[1:0];
  assign u_ocl_region_M00_AXI_BVALID = M00_AXI_bvalid;
  assign u_ocl_region_M00_AXI_RDATA = M00_AXI_rdata[511:0];
  assign u_ocl_region_M00_AXI_RID = M00_AXI_rid[3:0];
  assign u_ocl_region_M00_AXI_RLAST = M00_AXI_rlast;
  assign u_ocl_region_M00_AXI_RRESP = M00_AXI_rresp[1:0];
  assign u_ocl_region_M00_AXI_RVALID = M00_AXI_rvalid;
  assign u_ocl_region_M00_AXI_WREADY = M00_AXI_wready;
  assign u_ocl_region_M01_AXI_ARREADY = M01_AXI_arready;
  assign u_ocl_region_M01_AXI_AWREADY = M01_AXI_awready;
  assign u_ocl_region_M01_AXI_BID = M01_AXI_bid[3:0];
  assign u_ocl_region_M01_AXI_BRESP = M01_AXI_bresp[1:0];
  assign u_ocl_region_M01_AXI_BVALID = M01_AXI_bvalid;
  assign u_ocl_region_M01_AXI_RDATA = M01_AXI_rdata[511:0];
  assign u_ocl_region_M01_AXI_RID = M01_AXI_rid[3:0];
  assign u_ocl_region_M01_AXI_RLAST = M01_AXI_rlast;
  assign u_ocl_region_M01_AXI_RRESP = M01_AXI_rresp[1:0];
  assign u_ocl_region_M01_AXI_RVALID = M01_AXI_rvalid;
  assign u_ocl_region_M01_AXI_WREADY = M01_AXI_wready;
  apm_sys_imp_1WRTQ3I apm_sys
       (.SLOT_0_AXI_araddr(S01_AXI_1_ARADDR),
        .SLOT_0_AXI_arburst(S01_AXI_1_ARBURST),
        .SLOT_0_AXI_arcache(S01_AXI_1_ARCACHE),
        .SLOT_0_AXI_arid(S01_AXI_1_ARID),
        .SLOT_0_AXI_arlen(S01_AXI_1_ARLEN),
        .SLOT_0_AXI_arlock(S01_AXI_1_ARLOCK),
        .SLOT_0_AXI_arprot(S01_AXI_1_ARPROT),
        .SLOT_0_AXI_arqos(S01_AXI_1_ARQOS),
        .SLOT_0_AXI_arready(S01_AXI_1_ARREADY),
        .SLOT_0_AXI_arsize(S01_AXI_1_ARSIZE),
        .SLOT_0_AXI_arvalid(S01_AXI_1_ARVALID),
        .SLOT_0_AXI_awaddr(S01_AXI_1_AWADDR),
        .SLOT_0_AXI_awburst(S01_AXI_1_AWBURST),
        .SLOT_0_AXI_awcache(S01_AXI_1_AWCACHE),
        .SLOT_0_AXI_awid(S01_AXI_1_AWID),
        .SLOT_0_AXI_awlen(S01_AXI_1_AWLEN),
        .SLOT_0_AXI_awlock(S01_AXI_1_AWLOCK),
        .SLOT_0_AXI_awprot(S01_AXI_1_AWPROT),
        .SLOT_0_AXI_awqos(S01_AXI_1_AWQOS),
        .SLOT_0_AXI_awready(S01_AXI_1_AWREADY),
        .SLOT_0_AXI_awsize(S01_AXI_1_AWSIZE),
        .SLOT_0_AXI_awvalid(S01_AXI_1_AWVALID),
        .SLOT_0_AXI_bid(S01_AXI_1_BID),
        .SLOT_0_AXI_bready(S01_AXI_1_BREADY),
        .SLOT_0_AXI_bresp(S01_AXI_1_BRESP),
        .SLOT_0_AXI_bvalid(S01_AXI_1_BVALID),
        .SLOT_0_AXI_rdata(S01_AXI_1_RDATA),
        .SLOT_0_AXI_rid(S01_AXI_1_RID),
        .SLOT_0_AXI_rlast(S01_AXI_1_RLAST),
        .SLOT_0_AXI_rready(S01_AXI_1_RREADY),
        .SLOT_0_AXI_rresp(S01_AXI_1_RRESP),
        .SLOT_0_AXI_rvalid(S01_AXI_1_RVALID),
        .SLOT_0_AXI_wdata(S01_AXI_1_WDATA),
        .SLOT_0_AXI_wlast(S01_AXI_1_WLAST),
        .SLOT_0_AXI_wready(S01_AXI_1_WREADY),
        .SLOT_0_AXI_wstrb(S01_AXI_1_WSTRB),
        .SLOT_0_AXI_wvalid(S01_AXI_1_WVALID),
        .SLOT_1_AXI_araddr(S00_AXI1_1_ARADDR),
        .SLOT_1_AXI_arburst(S00_AXI1_1_ARBURST),
        .SLOT_1_AXI_arcache(S00_AXI1_1_ARCACHE),
        .SLOT_1_AXI_arid(S00_AXI1_1_ARID),
        .SLOT_1_AXI_arlen(S00_AXI1_1_ARLEN),
        .SLOT_1_AXI_arlock(S00_AXI1_1_ARLOCK),
        .SLOT_1_AXI_arprot(S00_AXI1_1_ARPROT),
        .SLOT_1_AXI_arready(S00_AXI1_1_ARREADY),
        .SLOT_1_AXI_arsize(S00_AXI1_1_ARSIZE),
        .SLOT_1_AXI_arvalid(S00_AXI1_1_ARVALID),
        .SLOT_1_AXI_awaddr(S00_AXI1_1_AWADDR),
        .SLOT_1_AXI_awburst(S00_AXI1_1_AWBURST),
        .SLOT_1_AXI_awcache(S00_AXI1_1_AWCACHE),
        .SLOT_1_AXI_awid(S00_AXI1_1_AWID),
        .SLOT_1_AXI_awlen(S00_AXI1_1_AWLEN),
        .SLOT_1_AXI_awlock(S00_AXI1_1_AWLOCK),
        .SLOT_1_AXI_awprot(S00_AXI1_1_AWPROT),
        .SLOT_1_AXI_awready(S00_AXI1_1_AWREADY),
        .SLOT_1_AXI_awsize(S00_AXI1_1_AWSIZE),
        .SLOT_1_AXI_awvalid(S00_AXI1_1_AWVALID),
        .SLOT_1_AXI_bid(S00_AXI1_1_BID),
        .SLOT_1_AXI_bready(S00_AXI1_1_BREADY),
        .SLOT_1_AXI_bresp(S00_AXI1_1_BRESP),
        .SLOT_1_AXI_bvalid(S00_AXI1_1_BVALID),
        .SLOT_1_AXI_rdata(S00_AXI1_1_RDATA),
        .SLOT_1_AXI_rid(S00_AXI1_1_RID),
        .SLOT_1_AXI_rlast(S00_AXI1_1_RLAST),
        .SLOT_1_AXI_rready(S00_AXI1_1_RREADY),
        .SLOT_1_AXI_rresp(S00_AXI1_1_RRESP),
        .SLOT_1_AXI_rvalid(S00_AXI1_1_RVALID),
        .SLOT_1_AXI_wdata(S00_AXI1_1_WDATA),
        .SLOT_1_AXI_wlast(S00_AXI1_1_WLAST),
        .SLOT_1_AXI_wready(S00_AXI1_1_WREADY),
        .SLOT_1_AXI_wstrb(S00_AXI1_1_WSTRB),
        .SLOT_1_AXI_wvalid(S00_AXI1_1_WVALID),
        .SLOT_2_AXI_araddr(S02_AXI_1_ARADDR),
        .SLOT_2_AXI_arburst(S02_AXI_1_ARBURST),
        .SLOT_2_AXI_arcache(S02_AXI_1_ARCACHE),
        .SLOT_2_AXI_arid(S02_AXI_1_ARID),
        .SLOT_2_AXI_arlen(S02_AXI_1_ARLEN),
        .SLOT_2_AXI_arlock(S02_AXI_1_ARLOCK),
        .SLOT_2_AXI_arprot(S02_AXI_1_ARPROT),
        .SLOT_2_AXI_arqos(S02_AXI_1_ARQOS),
        .SLOT_2_AXI_arready(S02_AXI_1_ARREADY),
        .SLOT_2_AXI_arsize(S02_AXI_1_ARSIZE),
        .SLOT_2_AXI_arvalid(S02_AXI_1_ARVALID),
        .SLOT_2_AXI_awaddr(S02_AXI_1_AWADDR),
        .SLOT_2_AXI_awburst(S02_AXI_1_AWBURST),
        .SLOT_2_AXI_awcache(S02_AXI_1_AWCACHE),
        .SLOT_2_AXI_awid(S02_AXI_1_AWID),
        .SLOT_2_AXI_awlen(S02_AXI_1_AWLEN),
        .SLOT_2_AXI_awlock(S02_AXI_1_AWLOCK),
        .SLOT_2_AXI_awprot(S02_AXI_1_AWPROT),
        .SLOT_2_AXI_awqos(S02_AXI_1_AWQOS),
        .SLOT_2_AXI_awready(S02_AXI_1_AWREADY),
        .SLOT_2_AXI_awsize(S02_AXI_1_AWSIZE),
        .SLOT_2_AXI_awvalid(S02_AXI_1_AWVALID),
        .SLOT_2_AXI_bid(S02_AXI_1_BID),
        .SLOT_2_AXI_bready(S02_AXI_1_BREADY),
        .SLOT_2_AXI_bresp(S02_AXI_1_BRESP),
        .SLOT_2_AXI_bvalid(S02_AXI_1_BVALID),
        .SLOT_2_AXI_rdata(S02_AXI_1_RDATA),
        .SLOT_2_AXI_rid(S02_AXI_1_RID),
        .SLOT_2_AXI_rlast(S02_AXI_1_RLAST),
        .SLOT_2_AXI_rready(S02_AXI_1_RREADY),
        .SLOT_2_AXI_rresp(S02_AXI_1_RRESP),
        .SLOT_2_AXI_rvalid(S02_AXI_1_RVALID),
        .SLOT_2_AXI_wdata(S02_AXI_1_WDATA),
        .SLOT_2_AXI_wlast(S02_AXI_1_WLAST),
        .SLOT_2_AXI_wready(S02_AXI_1_WREADY),
        .SLOT_2_AXI_wstrb(S02_AXI_1_WSTRB),
        .SLOT_2_AXI_wvalid(S02_AXI_1_WVALID),
        .S_AXI1_araddr(interconnect_axilite_M02_AXI_ARADDR),
        .S_AXI1_arready(interconnect_axilite_M02_AXI_ARREADY),
        .S_AXI1_arvalid(interconnect_axilite_M02_AXI_ARVALID),
        .S_AXI1_awaddr(interconnect_axilite_M02_AXI_AWADDR),
        .S_AXI1_awready(interconnect_axilite_M02_AXI_AWREADY),
        .S_AXI1_awvalid(interconnect_axilite_M02_AXI_AWVALID),
        .S_AXI1_bready(interconnect_axilite_M02_AXI_BREADY),
        .S_AXI1_bresp(interconnect_axilite_M02_AXI_BRESP),
        .S_AXI1_bvalid(interconnect_axilite_M02_AXI_BVALID),
        .S_AXI1_rdata(interconnect_axilite_M02_AXI_RDATA),
        .S_AXI1_rready(interconnect_axilite_M02_AXI_RREADY),
        .S_AXI1_rresp(interconnect_axilite_M02_AXI_RRESP),
        .S_AXI1_rvalid(interconnect_axilite_M02_AXI_RVALID),
        .S_AXI1_wdata(interconnect_axilite_M02_AXI_WDATA),
        .S_AXI1_wready(interconnect_axilite_M02_AXI_WREADY),
        .S_AXI1_wstrb(interconnect_axilite_M02_AXI_WSTRB),
        .S_AXI1_wvalid(interconnect_axilite_M02_AXI_WVALID),
        .S_AXI_FULL_araddr(interconnect_aximm_M02_AXI_ARADDR),
        .S_AXI_FULL_arburst(interconnect_aximm_M02_AXI_ARBURST),
        .S_AXI_FULL_arcache(interconnect_aximm_M02_AXI_ARCACHE),
        .S_AXI_FULL_arlen(interconnect_aximm_M02_AXI_ARLEN),
        .S_AXI_FULL_arlock(interconnect_aximm_M02_AXI_ARLOCK),
        .S_AXI_FULL_arprot(interconnect_aximm_M02_AXI_ARPROT),
        .S_AXI_FULL_arready(interconnect_aximm_M02_AXI_ARREADY),
        .S_AXI_FULL_arsize(interconnect_aximm_M02_AXI_ARSIZE),
        .S_AXI_FULL_arvalid(interconnect_aximm_M02_AXI_ARVALID),
        .S_AXI_FULL_rdata(interconnect_aximm_M02_AXI_RDATA),
        .S_AXI_FULL_rlast(interconnect_aximm_M02_AXI_RLAST),
        .S_AXI_FULL_rready(interconnect_aximm_M02_AXI_RREADY),
        .S_AXI_FULL_rresp(interconnect_aximm_M02_AXI_RRESP),
        .S_AXI_FULL_rvalid(interconnect_aximm_M02_AXI_RVALID),
        .S_AXI_araddr(interconnect_axilite_M01_AXI_ARADDR),
        .S_AXI_arready(interconnect_axilite_M01_AXI_ARREADY),
        .S_AXI_arvalid(interconnect_axilite_M01_AXI_ARVALID),
        .S_AXI_awaddr(interconnect_axilite_M01_AXI_AWADDR),
        .S_AXI_awready(interconnect_axilite_M01_AXI_AWREADY),
        .S_AXI_awvalid(interconnect_axilite_M01_AXI_AWVALID),
        .S_AXI_bready(interconnect_axilite_M01_AXI_BREADY),
        .S_AXI_bresp(interconnect_axilite_M01_AXI_BRESP),
        .S_AXI_bvalid(interconnect_axilite_M01_AXI_BVALID),
        .S_AXI_rdata(interconnect_axilite_M01_AXI_RDATA),
        .S_AXI_rready(interconnect_axilite_M01_AXI_RREADY),
        .S_AXI_rresp(interconnect_axilite_M01_AXI_RRESP),
        .S_AXI_rvalid(interconnect_axilite_M01_AXI_RVALID),
        .S_AXI_wdata(interconnect_axilite_M01_AXI_WDATA),
        .S_AXI_wready(interconnect_axilite_M01_AXI_WREADY),
        .S_AXI_wstrb(interconnect_axilite_M01_AXI_WSTRB),
        .S_AXI_wvalid(interconnect_axilite_M01_AXI_WVALID),
        .core_aresetn(core_aresetn_1),
        .ext_clk_0(ACLK_1),
        .ext_clk_1(S00_ACLK_1),
        .ext_rstn_0(ARESETN_1));
  expanded_resets_imp_1KYY8TE expanded_resets
       (.Op1(Op1_1),
        .Res(expanded_resets_Res),
        .aux_reset_in(memory_c0_ddr3_ui_clk_sync_rst1),
        .dcm_locked(dcm_locked_1),
        .ext_reset_in(core_aresetn_1),
        .ext_reset_in1(memory_c0_ddr3_ui_clk_sync_rst),
        .ext_reset_in2(memory_c0_ddr3_ui_clk_sync_rst1),
        .interconnect_aresetn(M03_ARESETN_1),
        .interconnect_aresetn1(ARESETN_1),
        .interconnect_aresetn2(expanded_resets_interconnect_aresetn2),
        .peripheral_reset(expanded_resets_peripheral_reset),
        .slowest_sync_clk(ACLK_1),
        .slowest_sync_clk1(memory_c0_ddr3_ui_clk),
        .slowest_sync_clk2(memory_c0_ddr3_ui_clk1),
        .slowest_sync_clk3(flash_clk_1));
  xcl_design_interconnect_axilite_0 interconnect_axilite
       (.ACLK(ACLK_1),
        .ARESETN(ARESETN_1),
        .M00_ACLK(ACLK_1),
        .M00_ARESETN(ARESETN_1),
        .M00_AXI_araddr(interconnect_axilite_M00_AXI_ARADDR),
        .M00_AXI_arprot(interconnect_axilite_M00_AXI_ARPROT),
        .M00_AXI_arready(interconnect_axilite_M00_AXI_ARREADY),
        .M00_AXI_arvalid(interconnect_axilite_M00_AXI_ARVALID),
        .M00_AXI_awaddr(interconnect_axilite_M00_AXI_AWADDR),
        .M00_AXI_awprot(interconnect_axilite_M00_AXI_AWPROT),
        .M00_AXI_awready(interconnect_axilite_M00_AXI_AWREADY),
        .M00_AXI_awvalid(interconnect_axilite_M00_AXI_AWVALID),
        .M00_AXI_bready(interconnect_axilite_M00_AXI_BREADY),
        .M00_AXI_bresp(interconnect_axilite_M00_AXI_BRESP),
        .M00_AXI_bvalid(interconnect_axilite_M00_AXI_BVALID),
        .M00_AXI_rdata(interconnect_axilite_M00_AXI_RDATA),
        .M00_AXI_rready(interconnect_axilite_M00_AXI_RREADY),
        .M00_AXI_rresp(interconnect_axilite_M00_AXI_RRESP),
        .M00_AXI_rvalid(interconnect_axilite_M00_AXI_RVALID),
        .M00_AXI_wdata(interconnect_axilite_M00_AXI_WDATA),
        .M00_AXI_wready(interconnect_axilite_M00_AXI_WREADY),
        .M00_AXI_wstrb(interconnect_axilite_M00_AXI_WSTRB),
        .M00_AXI_wvalid(interconnect_axilite_M00_AXI_WVALID),
        .M01_ACLK(ACLK_1),
        .M01_ARESETN(ARESETN_1),
        .M01_AXI_araddr(interconnect_axilite_M01_AXI_ARADDR),
        .M01_AXI_arready(interconnect_axilite_M01_AXI_ARREADY),
        .M01_AXI_arvalid(interconnect_axilite_M01_AXI_ARVALID),
        .M01_AXI_awaddr(interconnect_axilite_M01_AXI_AWADDR),
        .M01_AXI_awready(interconnect_axilite_M01_AXI_AWREADY),
        .M01_AXI_awvalid(interconnect_axilite_M01_AXI_AWVALID),
        .M01_AXI_bready(interconnect_axilite_M01_AXI_BREADY),
        .M01_AXI_bresp(interconnect_axilite_M01_AXI_BRESP),
        .M01_AXI_bvalid(interconnect_axilite_M01_AXI_BVALID),
        .M01_AXI_rdata(interconnect_axilite_M01_AXI_RDATA),
        .M01_AXI_rready(interconnect_axilite_M01_AXI_RREADY),
        .M01_AXI_rresp(interconnect_axilite_M01_AXI_RRESP),
        .M01_AXI_rvalid(interconnect_axilite_M01_AXI_RVALID),
        .M01_AXI_wdata(interconnect_axilite_M01_AXI_WDATA),
        .M01_AXI_wready(interconnect_axilite_M01_AXI_WREADY),
        .M01_AXI_wstrb(interconnect_axilite_M01_AXI_WSTRB),
        .M01_AXI_wvalid(interconnect_axilite_M01_AXI_WVALID),
        .M02_ACLK(ACLK_1),
        .M02_ARESETN(ARESETN_1),
        .M02_AXI_araddr(interconnect_axilite_M02_AXI_ARADDR),
        .M02_AXI_arready(interconnect_axilite_M02_AXI_ARREADY),
        .M02_AXI_arvalid(interconnect_axilite_M02_AXI_ARVALID),
        .M02_AXI_awaddr(interconnect_axilite_M02_AXI_AWADDR),
        .M02_AXI_awready(interconnect_axilite_M02_AXI_AWREADY),
        .M02_AXI_awvalid(interconnect_axilite_M02_AXI_AWVALID),
        .M02_AXI_bready(interconnect_axilite_M02_AXI_BREADY),
        .M02_AXI_bresp(interconnect_axilite_M02_AXI_BRESP),
        .M02_AXI_bvalid(interconnect_axilite_M02_AXI_BVALID),
        .M02_AXI_rdata(interconnect_axilite_M02_AXI_RDATA),
        .M02_AXI_rready(interconnect_axilite_M02_AXI_RREADY),
        .M02_AXI_rresp(interconnect_axilite_M02_AXI_RRESP),
        .M02_AXI_rvalid(interconnect_axilite_M02_AXI_RVALID),
        .M02_AXI_wdata(interconnect_axilite_M02_AXI_WDATA),
        .M02_AXI_wready(interconnect_axilite_M02_AXI_WREADY),
        .M02_AXI_wstrb(interconnect_axilite_M02_AXI_WSTRB),
        .M02_AXI_wvalid(interconnect_axilite_M02_AXI_WVALID),
        .M03_ACLK(memory_c0_ddr3_ui_clk),
        .M03_ARESETN(M03_ARESETN_1),
        .M03_AXI_araddr(interconnect_axilite_M03_AXI_ARADDR),
        .M03_AXI_arready(interconnect_axilite_M03_AXI_ARREADY),
        .M03_AXI_arvalid(interconnect_axilite_M03_AXI_ARVALID),
        .M03_AXI_awaddr(interconnect_axilite_M03_AXI_AWADDR),
        .M03_AXI_awready(interconnect_axilite_M03_AXI_AWREADY),
        .M03_AXI_awvalid(interconnect_axilite_M03_AXI_AWVALID),
        .M03_AXI_bready(interconnect_axilite_M03_AXI_BREADY),
        .M03_AXI_bresp(interconnect_axilite_M03_AXI_BRESP),
        .M03_AXI_bvalid(interconnect_axilite_M03_AXI_BVALID),
        .M03_AXI_rdata(interconnect_axilite_M03_AXI_RDATA),
        .M03_AXI_rready(interconnect_axilite_M03_AXI_RREADY),
        .M03_AXI_rresp(interconnect_axilite_M03_AXI_RRESP),
        .M03_AXI_rvalid(interconnect_axilite_M03_AXI_RVALID),
        .M03_AXI_wdata(interconnect_axilite_M03_AXI_WDATA),
        .M03_AXI_wready(interconnect_axilite_M03_AXI_WREADY),
        .M03_AXI_wvalid(interconnect_axilite_M03_AXI_WVALID),
        .M04_ACLK(memory_c0_ddr3_ui_clk1),
        .M04_ARESETN(expanded_resets_interconnect_aresetn2),
        .M04_AXI_araddr(interconnect_axilite_M04_AXI_ARADDR),
        .M04_AXI_arready(interconnect_axilite_M04_AXI_ARREADY),
        .M04_AXI_arvalid(interconnect_axilite_M04_AXI_ARVALID),
        .M04_AXI_awaddr(interconnect_axilite_M04_AXI_AWADDR),
        .M04_AXI_awready(interconnect_axilite_M04_AXI_AWREADY),
        .M04_AXI_awvalid(interconnect_axilite_M04_AXI_AWVALID),
        .M04_AXI_bready(interconnect_axilite_M04_AXI_BREADY),
        .M04_AXI_bresp(interconnect_axilite_M04_AXI_BRESP),
        .M04_AXI_bvalid(interconnect_axilite_M04_AXI_BVALID),
        .M04_AXI_rdata(interconnect_axilite_M04_AXI_RDATA),
        .M04_AXI_rready(interconnect_axilite_M04_AXI_RREADY),
        .M04_AXI_rresp(interconnect_axilite_M04_AXI_RRESP),
        .M04_AXI_rvalid(interconnect_axilite_M04_AXI_RVALID),
        .M04_AXI_wdata(interconnect_axilite_M04_AXI_WDATA),
        .M04_AXI_wready(interconnect_axilite_M04_AXI_WREADY),
        .M04_AXI_wvalid(interconnect_axilite_M04_AXI_WVALID),
        .M05_ACLK(ACLK_1),
        .M05_ARESETN(ARESETN_1),
        .M05_AXI_araddr(interconnect_axilite_M05_AXI_ARADDR),
        .M05_AXI_arprot(interconnect_axilite_M05_AXI_ARPROT),
        .M05_AXI_arready(interconnect_axilite_M05_AXI_ARREADY),
        .M05_AXI_arvalid(interconnect_axilite_M05_AXI_ARVALID),
        .M05_AXI_awaddr(interconnect_axilite_M05_AXI_AWADDR),
        .M05_AXI_awprot(interconnect_axilite_M05_AXI_AWPROT),
        .M05_AXI_awready(interconnect_axilite_M05_AXI_AWREADY),
        .M05_AXI_awvalid(interconnect_axilite_M05_AXI_AWVALID),
        .M05_AXI_bready(interconnect_axilite_M05_AXI_BREADY),
        .M05_AXI_bresp(interconnect_axilite_M05_AXI_BRESP),
        .M05_AXI_bvalid(interconnect_axilite_M05_AXI_BVALID),
        .M05_AXI_rdata(interconnect_axilite_M05_AXI_RDATA),
        .M05_AXI_rready(interconnect_axilite_M05_AXI_RREADY),
        .M05_AXI_rresp(interconnect_axilite_M05_AXI_RRESP),
        .M05_AXI_rvalid(interconnect_axilite_M05_AXI_RVALID),
        .M05_AXI_wdata(interconnect_axilite_M05_AXI_WDATA),
        .M05_AXI_wready(interconnect_axilite_M05_AXI_WREADY),
        .M05_AXI_wstrb(interconnect_axilite_M05_AXI_WSTRB),
        .M05_AXI_wvalid(interconnect_axilite_M05_AXI_WVALID),
        .M06_ACLK(ACLK_1),
        .M06_ARESETN(ARESETN_1),
        .M06_AXI_araddr(interconnect_axilite_M06_AXI_ARADDR),
        .M06_AXI_arready(interconnect_axilite_M06_AXI_ARREADY),
        .M06_AXI_arvalid(interconnect_axilite_M06_AXI_ARVALID),
        .M06_AXI_awaddr(interconnect_axilite_M06_AXI_AWADDR),
        .M06_AXI_awready(interconnect_axilite_M06_AXI_AWREADY),
        .M06_AXI_awvalid(interconnect_axilite_M06_AXI_AWVALID),
        .M06_AXI_bready(interconnect_axilite_M06_AXI_BREADY),
        .M06_AXI_bresp(interconnect_axilite_M06_AXI_BRESP),
        .M06_AXI_bvalid(interconnect_axilite_M06_AXI_BVALID),
        .M06_AXI_rdata(interconnect_axilite_M06_AXI_RDATA),
        .M06_AXI_rready(interconnect_axilite_M06_AXI_RREADY),
        .M06_AXI_rresp(interconnect_axilite_M06_AXI_RRESP),
        .M06_AXI_rvalid(interconnect_axilite_M06_AXI_RVALID),
        .M06_AXI_wdata(interconnect_axilite_M06_AXI_WDATA),
        .M06_AXI_wready(interconnect_axilite_M06_AXI_WREADY),
        .M06_AXI_wstrb(interconnect_axilite_M06_AXI_WSTRB),
        .M06_AXI_wvalid(interconnect_axilite_M06_AXI_WVALID),
        .M07_ACLK(ACLK_1),
        .M07_ARESETN(ARESETN_1),
        .M07_AXI_araddr(interconnect_axilite_M07_AXI_ARADDR),
        .M07_AXI_arready(interconnect_axilite_M07_AXI_ARREADY),
        .M07_AXI_arvalid(interconnect_axilite_M07_AXI_ARVALID),
        .M07_AXI_awaddr(interconnect_axilite_M07_AXI_AWADDR),
        .M07_AXI_awready(interconnect_axilite_M07_AXI_AWREADY),
        .M07_AXI_awvalid(interconnect_axilite_M07_AXI_AWVALID),
        .M07_AXI_bready(interconnect_axilite_M07_AXI_BREADY),
        .M07_AXI_bresp(interconnect_axilite_M07_AXI_BRESP),
        .M07_AXI_bvalid(interconnect_axilite_M07_AXI_BVALID),
        .M07_AXI_rdata(interconnect_axilite_M07_AXI_RDATA),
        .M07_AXI_rready(interconnect_axilite_M07_AXI_RREADY),
        .M07_AXI_rresp(interconnect_axilite_M07_AXI_RRESP),
        .M07_AXI_rvalid(interconnect_axilite_M07_AXI_RVALID),
        .M07_AXI_wdata(interconnect_axilite_M07_AXI_WDATA),
        .M07_AXI_wready(interconnect_axilite_M07_AXI_WREADY),
        .M07_AXI_wstrb(interconnect_axilite_M07_AXI_WSTRB),
        .M07_AXI_wvalid(interconnect_axilite_M07_AXI_WVALID),
        .M08_ACLK(ACLK_1),
        .M08_ARESETN(ARESETN_1),
        .M08_AXI_araddr(interconnect_axilite_M08_AXI_ARADDR),
        .M08_AXI_arready(interconnect_axilite_M08_AXI_ARREADY),
        .M08_AXI_arvalid(interconnect_axilite_M08_AXI_ARVALID),
        .M08_AXI_awaddr(interconnect_axilite_M08_AXI_AWADDR),
        .M08_AXI_awready(interconnect_axilite_M08_AXI_AWREADY),
        .M08_AXI_awvalid(interconnect_axilite_M08_AXI_AWVALID),
        .M08_AXI_bready(interconnect_axilite_M08_AXI_BREADY),
        .M08_AXI_bresp(interconnect_axilite_M08_AXI_BRESP),
        .M08_AXI_bvalid(interconnect_axilite_M08_AXI_BVALID),
        .M08_AXI_rdata(interconnect_axilite_M08_AXI_RDATA),
        .M08_AXI_rready(interconnect_axilite_M08_AXI_RREADY),
        .M08_AXI_rresp(interconnect_axilite_M08_AXI_RRESP),
        .M08_AXI_rvalid(interconnect_axilite_M08_AXI_RVALID),
        .M08_AXI_wdata(interconnect_axilite_M08_AXI_WDATA),
        .M08_AXI_wready(interconnect_axilite_M08_AXI_WREADY),
        .M08_AXI_wstrb(interconnect_axilite_M08_AXI_WSTRB),
        .M08_AXI_wvalid(interconnect_axilite_M08_AXI_WVALID),
        .M09_ACLK(ACLK_1),
        .M09_ARESETN(ARESETN_1),
        .M09_AXI_araddr(interconnect_axilite_M09_AXI_ARADDR),
        .M09_AXI_arprot(interconnect_axilite_M09_AXI_ARPROT),
        .M09_AXI_arready(interconnect_axilite_M09_AXI_ARREADY),
        .M09_AXI_arvalid(interconnect_axilite_M09_AXI_ARVALID),
        .M09_AXI_awaddr(interconnect_axilite_M09_AXI_AWADDR),
        .M09_AXI_awprot(interconnect_axilite_M09_AXI_AWPROT),
        .M09_AXI_awready(interconnect_axilite_M09_AXI_AWREADY),
        .M09_AXI_awvalid(interconnect_axilite_M09_AXI_AWVALID),
        .M09_AXI_bready(interconnect_axilite_M09_AXI_BREADY),
        .M09_AXI_bresp(interconnect_axilite_M09_AXI_BRESP),
        .M09_AXI_bvalid(interconnect_axilite_M09_AXI_BVALID),
        .M09_AXI_rdata(interconnect_axilite_M09_AXI_RDATA),
        .M09_AXI_rready(interconnect_axilite_M09_AXI_RREADY),
        .M09_AXI_rresp(interconnect_axilite_M09_AXI_RRESP),
        .M09_AXI_rvalid(interconnect_axilite_M09_AXI_RVALID),
        .M09_AXI_wdata(interconnect_axilite_M09_AXI_WDATA),
        .M09_AXI_wready(interconnect_axilite_M09_AXI_WREADY),
        .M09_AXI_wstrb(interconnect_axilite_M09_AXI_WSTRB),
        .M09_AXI_wvalid(interconnect_axilite_M09_AXI_WVALID),
        .S00_ACLK(S00_ACLK_1),
        .S00_ARESETN(core_aresetn_1),
        .S00_AXI_araddr(S00_AXI_1_ARADDR),
        .S00_AXI_arprot(S00_AXI_1_ARPROT),
        .S00_AXI_arready(S00_AXI_1_ARREADY),
        .S00_AXI_arvalid(S00_AXI_1_ARVALID),
        .S00_AXI_awaddr(S00_AXI_1_AWADDR),
        .S00_AXI_awprot(S00_AXI_1_AWPROT),
        .S00_AXI_awready(S00_AXI_1_AWREADY),
        .S00_AXI_awvalid(S00_AXI_1_AWVALID),
        .S00_AXI_bready(S00_AXI_1_BREADY),
        .S00_AXI_bresp(S00_AXI_1_BRESP),
        .S00_AXI_bvalid(S00_AXI_1_BVALID),
        .S00_AXI_rdata(S00_AXI_1_RDATA),
        .S00_AXI_rready(S00_AXI_1_RREADY),
        .S00_AXI_rresp(S00_AXI_1_RRESP),
        .S00_AXI_rvalid(S00_AXI_1_RVALID),
        .S00_AXI_wdata(S00_AXI_1_WDATA),
        .S00_AXI_wready(S00_AXI_1_WREADY),
        .S00_AXI_wstrb(S00_AXI_1_WSTRB),
        .S00_AXI_wvalid(S00_AXI_1_WVALID));
  xcl_design_interconnect_aximm_0 interconnect_aximm
       (.M00_AXI_araddr(interconnect_aximm_M00_AXI_ARADDR),
        .M00_AXI_arburst(interconnect_aximm_M00_AXI_ARBURST),
        .M00_AXI_arcache(interconnect_aximm_M00_AXI_ARCACHE),
        .M00_AXI_arlen(interconnect_aximm_M00_AXI_ARLEN),
        .M00_AXI_arlock(interconnect_aximm_M00_AXI_ARLOCK),
        .M00_AXI_arprot(interconnect_aximm_M00_AXI_ARPROT),
        .M00_AXI_arqos(interconnect_aximm_M00_AXI_ARQOS),
        .M00_AXI_arready(interconnect_aximm_M00_AXI_ARREADY),
        .M00_AXI_arsize(interconnect_aximm_M00_AXI_ARSIZE),
        .M00_AXI_arvalid(interconnect_aximm_M00_AXI_ARVALID),
        .M00_AXI_awaddr(interconnect_aximm_M00_AXI_AWADDR),
        .M00_AXI_awburst(interconnect_aximm_M00_AXI_AWBURST),
        .M00_AXI_awcache(interconnect_aximm_M00_AXI_AWCACHE),
        .M00_AXI_awlen(interconnect_aximm_M00_AXI_AWLEN),
        .M00_AXI_awlock(interconnect_aximm_M00_AXI_AWLOCK),
        .M00_AXI_awprot(interconnect_aximm_M00_AXI_AWPROT),
        .M00_AXI_awqos(interconnect_aximm_M00_AXI_AWQOS),
        .M00_AXI_awready(interconnect_aximm_M00_AXI_AWREADY),
        .M00_AXI_awsize(interconnect_aximm_M00_AXI_AWSIZE),
        .M00_AXI_awvalid(interconnect_aximm_M00_AXI_AWVALID),
        .M00_AXI_bready(interconnect_aximm_M00_AXI_BREADY),
        .M00_AXI_bresp(interconnect_aximm_M00_AXI_BRESP),
        .M00_AXI_bvalid(interconnect_aximm_M00_AXI_BVALID),
        .M00_AXI_rdata(interconnect_aximm_M00_AXI_RDATA),
        .M00_AXI_rlast(interconnect_aximm_M00_AXI_RLAST),
        .M00_AXI_rready(interconnect_aximm_M00_AXI_RREADY),
        .M00_AXI_rresp(interconnect_aximm_M00_AXI_RRESP),
        .M00_AXI_rvalid(interconnect_aximm_M00_AXI_RVALID),
        .M00_AXI_wdata(interconnect_aximm_M00_AXI_WDATA),
        .M00_AXI_wlast(interconnect_aximm_M00_AXI_WLAST),
        .M00_AXI_wready(interconnect_aximm_M00_AXI_WREADY),
        .M00_AXI_wstrb(interconnect_aximm_M00_AXI_WSTRB),
        .M00_AXI_wvalid(interconnect_aximm_M00_AXI_WVALID),
        .M01_AXI_araddr(interconnect_aximm_M01_AXI_ARADDR),
        .M01_AXI_arburst(interconnect_aximm_M01_AXI_ARBURST),
        .M01_AXI_arcache(interconnect_aximm_M01_AXI_ARCACHE),
        .M01_AXI_arlen(interconnect_aximm_M01_AXI_ARLEN),
        .M01_AXI_arlock(interconnect_aximm_M01_AXI_ARLOCK),
        .M01_AXI_arprot(interconnect_aximm_M01_AXI_ARPROT),
        .M01_AXI_arqos(interconnect_aximm_M01_AXI_ARQOS),
        .M01_AXI_arready(interconnect_aximm_M01_AXI_ARREADY),
        .M01_AXI_arsize(interconnect_aximm_M01_AXI_ARSIZE),
        .M01_AXI_arvalid(interconnect_aximm_M01_AXI_ARVALID),
        .M01_AXI_awaddr(interconnect_aximm_M01_AXI_AWADDR),
        .M01_AXI_awburst(interconnect_aximm_M01_AXI_AWBURST),
        .M01_AXI_awcache(interconnect_aximm_M01_AXI_AWCACHE),
        .M01_AXI_awlen(interconnect_aximm_M01_AXI_AWLEN),
        .M01_AXI_awlock(interconnect_aximm_M01_AXI_AWLOCK),
        .M01_AXI_awprot(interconnect_aximm_M01_AXI_AWPROT),
        .M01_AXI_awqos(interconnect_aximm_M01_AXI_AWQOS),
        .M01_AXI_awready(interconnect_aximm_M01_AXI_AWREADY),
        .M01_AXI_awsize(interconnect_aximm_M01_AXI_AWSIZE),
        .M01_AXI_awvalid(interconnect_aximm_M01_AXI_AWVALID),
        .M01_AXI_bready(interconnect_aximm_M01_AXI_BREADY),
        .M01_AXI_bresp(interconnect_aximm_M01_AXI_BRESP),
        .M01_AXI_bvalid(interconnect_aximm_M01_AXI_BVALID),
        .M01_AXI_rdata(interconnect_aximm_M01_AXI_RDATA),
        .M01_AXI_rlast(interconnect_aximm_M01_AXI_RLAST),
        .M01_AXI_rready(interconnect_aximm_M01_AXI_RREADY),
        .M01_AXI_rresp(interconnect_aximm_M01_AXI_RRESP),
        .M01_AXI_rvalid(interconnect_aximm_M01_AXI_RVALID),
        .M01_AXI_wdata(interconnect_aximm_M01_AXI_WDATA),
        .M01_AXI_wlast(interconnect_aximm_M01_AXI_WLAST),
        .M01_AXI_wready(interconnect_aximm_M01_AXI_WREADY),
        .M01_AXI_wstrb(interconnect_aximm_M01_AXI_WSTRB),
        .M01_AXI_wvalid(interconnect_aximm_M01_AXI_WVALID),
        .M02_AXI_araddr(interconnect_aximm_M02_AXI_ARADDR),
        .M02_AXI_arburst(interconnect_aximm_M02_AXI_ARBURST),
        .M02_AXI_arcache(interconnect_aximm_M02_AXI_ARCACHE),
        .M02_AXI_arlen(interconnect_aximm_M02_AXI_ARLEN),
        .M02_AXI_arlock(interconnect_aximm_M02_AXI_ARLOCK),
        .M02_AXI_arprot(interconnect_aximm_M02_AXI_ARPROT),
        .M02_AXI_arready(interconnect_aximm_M02_AXI_ARREADY),
        .M02_AXI_arsize(interconnect_aximm_M02_AXI_ARSIZE),
        .M02_AXI_arvalid(interconnect_aximm_M02_AXI_ARVALID),
        .M02_AXI_rdata(interconnect_aximm_M02_AXI_RDATA),
        .M02_AXI_rlast(interconnect_aximm_M02_AXI_RLAST),
        .M02_AXI_rready(interconnect_aximm_M02_AXI_RREADY),
        .M02_AXI_rresp(interconnect_aximm_M02_AXI_RRESP),
        .M02_AXI_rvalid(interconnect_aximm_M02_AXI_RVALID),
        .S00_AXI_araddr(S00_AXI1_1_ARADDR),
        .S00_AXI_arburst(S00_AXI1_1_ARBURST),
        .S00_AXI_arcache(S00_AXI1_1_ARCACHE),
        .S00_AXI_arid(S00_AXI1_1_ARID),
        .S00_AXI_arlen(S00_AXI1_1_ARLEN),
        .S00_AXI_arlock(S00_AXI1_1_ARLOCK),
        .S00_AXI_arprot(S00_AXI1_1_ARPROT),
        .S00_AXI_arqos({1'b0,1'b0,1'b0,1'b0}),
        .S00_AXI_arready(S00_AXI1_1_ARREADY),
        .S00_AXI_arsize(S00_AXI1_1_ARSIZE),
        .S00_AXI_arvalid(S00_AXI1_1_ARVALID),
        .S00_AXI_awaddr(S00_AXI1_1_AWADDR),
        .S00_AXI_awburst(S00_AXI1_1_AWBURST),
        .S00_AXI_awcache(S00_AXI1_1_AWCACHE),
        .S00_AXI_awid(S00_AXI1_1_AWID),
        .S00_AXI_awlen(S00_AXI1_1_AWLEN),
        .S00_AXI_awlock(S00_AXI1_1_AWLOCK),
        .S00_AXI_awprot(S00_AXI1_1_AWPROT),
        .S00_AXI_awqos({1'b0,1'b0,1'b0,1'b0}),
        .S00_AXI_awready(S00_AXI1_1_AWREADY),
        .S00_AXI_awsize(S00_AXI1_1_AWSIZE),
        .S00_AXI_awvalid(S00_AXI1_1_AWVALID),
        .S00_AXI_bid(S00_AXI1_1_BID),
        .S00_AXI_bready(S00_AXI1_1_BREADY),
        .S00_AXI_bresp(S00_AXI1_1_BRESP),
        .S00_AXI_bvalid(S00_AXI1_1_BVALID),
        .S00_AXI_rdata(S00_AXI1_1_RDATA),
        .S00_AXI_rid(S00_AXI1_1_RID),
        .S00_AXI_rlast(S00_AXI1_1_RLAST),
        .S00_AXI_rready(S00_AXI1_1_RREADY),
        .S00_AXI_rresp(S00_AXI1_1_RRESP),
        .S00_AXI_rvalid(S00_AXI1_1_RVALID),
        .S00_AXI_wdata(S00_AXI1_1_WDATA),
        .S00_AXI_wlast(S00_AXI1_1_WLAST),
        .S00_AXI_wready(S00_AXI1_1_WREADY),
        .S00_AXI_wstrb(S00_AXI1_1_WSTRB),
        .S00_AXI_wvalid(S00_AXI1_1_WVALID),
        .S01_AXI_araddr(S01_AXI_1_ARADDR),
        .S01_AXI_arburst(S01_AXI_1_ARBURST),
        .S01_AXI_arcache(S01_AXI_1_ARCACHE),
        .S01_AXI_arid(S01_AXI_1_ARID),
        .S01_AXI_arlen(S01_AXI_1_ARLEN),
        .S01_AXI_arlock(S01_AXI_1_ARLOCK),
        .S01_AXI_arprot(S01_AXI_1_ARPROT),
        .S01_AXI_arqos(S01_AXI_1_ARQOS),
        .S01_AXI_arready(S01_AXI_1_ARREADY),
        .S01_AXI_arsize(S01_AXI_1_ARSIZE),
        .S01_AXI_arvalid(S01_AXI_1_ARVALID),
        .S01_AXI_awaddr(S01_AXI_1_AWADDR),
        .S01_AXI_awburst(S01_AXI_1_AWBURST),
        .S01_AXI_awcache(S01_AXI_1_AWCACHE),
        .S01_AXI_awid(S01_AXI_1_AWID),
        .S01_AXI_awlen(S01_AXI_1_AWLEN),
        .S01_AXI_awlock(S01_AXI_1_AWLOCK),
        .S01_AXI_awprot(S01_AXI_1_AWPROT),
        .S01_AXI_awqos(S01_AXI_1_AWQOS),
        .S01_AXI_awready(S01_AXI_1_AWREADY),
        .S01_AXI_awsize(S01_AXI_1_AWSIZE),
        .S01_AXI_awvalid(S01_AXI_1_AWVALID),
        .S01_AXI_bid(S01_AXI_1_BID),
        .S01_AXI_bready(S01_AXI_1_BREADY),
        .S01_AXI_bresp(S01_AXI_1_BRESP),
        .S01_AXI_bvalid(S01_AXI_1_BVALID),
        .S01_AXI_rdata(S01_AXI_1_RDATA),
        .S01_AXI_rid(S01_AXI_1_RID),
        .S01_AXI_rlast(S01_AXI_1_RLAST),
        .S01_AXI_rready(S01_AXI_1_RREADY),
        .S01_AXI_rresp(S01_AXI_1_RRESP),
        .S01_AXI_rvalid(S01_AXI_1_RVALID),
        .S01_AXI_wdata(S01_AXI_1_WDATA),
        .S01_AXI_wlast(S01_AXI_1_WLAST),
        .S01_AXI_wready(S01_AXI_1_WREADY),
        .S01_AXI_wstrb(S01_AXI_1_WSTRB),
        .S01_AXI_wvalid(S01_AXI_1_WVALID),
        .S02_AXI_araddr(S02_AXI_1_ARADDR),
        .S02_AXI_arburst(S02_AXI_1_ARBURST),
        .S02_AXI_arcache(S02_AXI_1_ARCACHE),
        .S02_AXI_arid(S02_AXI_1_ARID),
        .S02_AXI_arlen(S02_AXI_1_ARLEN),
        .S02_AXI_arlock(S02_AXI_1_ARLOCK),
        .S02_AXI_arprot(S02_AXI_1_ARPROT),
        .S02_AXI_arqos(S02_AXI_1_ARQOS),
        .S02_AXI_arready(S02_AXI_1_ARREADY),
        .S02_AXI_arsize(S02_AXI_1_ARSIZE),
        .S02_AXI_arvalid(S02_AXI_1_ARVALID),
        .S02_AXI_awaddr(S02_AXI_1_AWADDR),
        .S02_AXI_awburst(S02_AXI_1_AWBURST),
        .S02_AXI_awcache(S02_AXI_1_AWCACHE),
        .S02_AXI_awid(S02_AXI_1_AWID),
        .S02_AXI_awlen(S02_AXI_1_AWLEN),
        .S02_AXI_awlock(S02_AXI_1_AWLOCK),
        .S02_AXI_awprot(S02_AXI_1_AWPROT),
        .S02_AXI_awqos(S02_AXI_1_AWQOS),
        .S02_AXI_awready(S02_AXI_1_AWREADY),
        .S02_AXI_awsize(S02_AXI_1_AWSIZE),
        .S02_AXI_awvalid(S02_AXI_1_AWVALID),
        .S02_AXI_bid(S02_AXI_1_BID),
        .S02_AXI_bready(S02_AXI_1_BREADY),
        .S02_AXI_bresp(S02_AXI_1_BRESP),
        .S02_AXI_bvalid(S02_AXI_1_BVALID),
        .S02_AXI_rdata(S02_AXI_1_RDATA),
        .S02_AXI_rid(S02_AXI_1_RID),
        .S02_AXI_rlast(S02_AXI_1_RLAST),
        .S02_AXI_rready(S02_AXI_1_RREADY),
        .S02_AXI_rresp(S02_AXI_1_RRESP),
        .S02_AXI_rvalid(S02_AXI_1_RVALID),
        .S02_AXI_wdata(S02_AXI_1_WDATA),
        .S02_AXI_wlast(S02_AXI_1_WLAST),
        .S02_AXI_wready(S02_AXI_1_WREADY),
        .S02_AXI_wstrb(S02_AXI_1_WSTRB),
        .S02_AXI_wvalid(S02_AXI_1_WVALID),
        .aclk(ACLK_1),
        .aclk1(memory_c0_ddr3_ui_clk),
        .aclk2(S00_ACLK_1),
        .aclk3(memory_c0_ddr3_ui_clk1),
        .aresetn(ARESETN_1));
  memory_imp_1FWFGZD memory
       (.C0_DDR3_S_AXI1_araddr(interconnect_aximm_M01_AXI_ARADDR),
        .C0_DDR3_S_AXI1_arburst(interconnect_aximm_M01_AXI_ARBURST),
        .C0_DDR3_S_AXI1_arcache(interconnect_aximm_M01_AXI_ARCACHE),
        .C0_DDR3_S_AXI1_arlen(interconnect_aximm_M01_AXI_ARLEN),
        .C0_DDR3_S_AXI1_arlock(interconnect_aximm_M01_AXI_ARLOCK),
        .C0_DDR3_S_AXI1_arprot(interconnect_aximm_M01_AXI_ARPROT),
        .C0_DDR3_S_AXI1_arqos(interconnect_aximm_M01_AXI_ARQOS),
        .C0_DDR3_S_AXI1_arready(interconnect_aximm_M01_AXI_ARREADY),
        .C0_DDR3_S_AXI1_arsize(interconnect_aximm_M01_AXI_ARSIZE),
        .C0_DDR3_S_AXI1_arvalid(interconnect_aximm_M01_AXI_ARVALID),
        .C0_DDR3_S_AXI1_awaddr(interconnect_aximm_M01_AXI_AWADDR),
        .C0_DDR3_S_AXI1_awburst(interconnect_aximm_M01_AXI_AWBURST),
        .C0_DDR3_S_AXI1_awcache(interconnect_aximm_M01_AXI_AWCACHE),
        .C0_DDR3_S_AXI1_awlen(interconnect_aximm_M01_AXI_AWLEN),
        .C0_DDR3_S_AXI1_awlock(interconnect_aximm_M01_AXI_AWLOCK),
        .C0_DDR3_S_AXI1_awprot(interconnect_aximm_M01_AXI_AWPROT),
        .C0_DDR3_S_AXI1_awqos(interconnect_aximm_M01_AXI_AWQOS),
        .C0_DDR3_S_AXI1_awready(interconnect_aximm_M01_AXI_AWREADY),
        .C0_DDR3_S_AXI1_awsize(interconnect_aximm_M01_AXI_AWSIZE),
        .C0_DDR3_S_AXI1_awvalid(interconnect_aximm_M01_AXI_AWVALID),
        .C0_DDR3_S_AXI1_bready(interconnect_aximm_M01_AXI_BREADY),
        .C0_DDR3_S_AXI1_bresp(interconnect_aximm_M01_AXI_BRESP),
        .C0_DDR3_S_AXI1_bvalid(interconnect_aximm_M01_AXI_BVALID),
        .C0_DDR3_S_AXI1_rdata(interconnect_aximm_M01_AXI_RDATA),
        .C0_DDR3_S_AXI1_rlast(interconnect_aximm_M01_AXI_RLAST),
        .C0_DDR3_S_AXI1_rready(interconnect_aximm_M01_AXI_RREADY),
        .C0_DDR3_S_AXI1_rresp(interconnect_aximm_M01_AXI_RRESP),
        .C0_DDR3_S_AXI1_rvalid(interconnect_aximm_M01_AXI_RVALID),
        .C0_DDR3_S_AXI1_wdata(interconnect_aximm_M01_AXI_WDATA),
        .C0_DDR3_S_AXI1_wlast(interconnect_aximm_M01_AXI_WLAST),
        .C0_DDR3_S_AXI1_wready(interconnect_aximm_M01_AXI_WREADY),
        .C0_DDR3_S_AXI1_wstrb(interconnect_aximm_M01_AXI_WSTRB),
        .C0_DDR3_S_AXI1_wvalid(interconnect_aximm_M01_AXI_WVALID),
        .C0_DDR3_S_AXI_CTRL1_araddr(interconnect_axilite_M04_AXI_ARADDR),
        .C0_DDR3_S_AXI_CTRL1_arready(interconnect_axilite_M04_AXI_ARREADY),
        .C0_DDR3_S_AXI_CTRL1_arvalid(interconnect_axilite_M04_AXI_ARVALID),
        .C0_DDR3_S_AXI_CTRL1_awaddr(interconnect_axilite_M04_AXI_AWADDR),
        .C0_DDR3_S_AXI_CTRL1_awready(interconnect_axilite_M04_AXI_AWREADY),
        .C0_DDR3_S_AXI_CTRL1_awvalid(interconnect_axilite_M04_AXI_AWVALID),
        .C0_DDR3_S_AXI_CTRL1_bready(interconnect_axilite_M04_AXI_BREADY),
        .C0_DDR3_S_AXI_CTRL1_bresp(interconnect_axilite_M04_AXI_BRESP),
        .C0_DDR3_S_AXI_CTRL1_bvalid(interconnect_axilite_M04_AXI_BVALID),
        .C0_DDR3_S_AXI_CTRL1_rdata(interconnect_axilite_M04_AXI_RDATA),
        .C0_DDR3_S_AXI_CTRL1_rready(interconnect_axilite_M04_AXI_RREADY),
        .C0_DDR3_S_AXI_CTRL1_rresp(interconnect_axilite_M04_AXI_RRESP),
        .C0_DDR3_S_AXI_CTRL1_rvalid(interconnect_axilite_M04_AXI_RVALID),
        .C0_DDR3_S_AXI_CTRL1_wdata(interconnect_axilite_M04_AXI_WDATA),
        .C0_DDR3_S_AXI_CTRL1_wready(interconnect_axilite_M04_AXI_WREADY),
        .C0_DDR3_S_AXI_CTRL1_wvalid(interconnect_axilite_M04_AXI_WVALID),
        .C0_DDR3_S_AXI_CTRL_araddr(interconnect_axilite_M03_AXI_ARADDR),
        .C0_DDR3_S_AXI_CTRL_arready(interconnect_axilite_M03_AXI_ARREADY),
        .C0_DDR3_S_AXI_CTRL_arvalid(interconnect_axilite_M03_AXI_ARVALID),
        .C0_DDR3_S_AXI_CTRL_awaddr(interconnect_axilite_M03_AXI_AWADDR),
        .C0_DDR3_S_AXI_CTRL_awready(interconnect_axilite_M03_AXI_AWREADY),
        .C0_DDR3_S_AXI_CTRL_awvalid(interconnect_axilite_M03_AXI_AWVALID),
        .C0_DDR3_S_AXI_CTRL_bready(interconnect_axilite_M03_AXI_BREADY),
        .C0_DDR3_S_AXI_CTRL_bresp(interconnect_axilite_M03_AXI_BRESP),
        .C0_DDR3_S_AXI_CTRL_bvalid(interconnect_axilite_M03_AXI_BVALID),
        .C0_DDR3_S_AXI_CTRL_rdata(interconnect_axilite_M03_AXI_RDATA),
        .C0_DDR3_S_AXI_CTRL_rready(interconnect_axilite_M03_AXI_RREADY),
        .C0_DDR3_S_AXI_CTRL_rresp(interconnect_axilite_M03_AXI_RRESP),
        .C0_DDR3_S_AXI_CTRL_rvalid(interconnect_axilite_M03_AXI_RVALID),
        .C0_DDR3_S_AXI_CTRL_wdata(interconnect_axilite_M03_AXI_WDATA),
        .C0_DDR3_S_AXI_CTRL_wready(interconnect_axilite_M03_AXI_WREADY),
        .C0_DDR3_S_AXI_CTRL_wvalid(interconnect_axilite_M03_AXI_WVALID),
        .C0_DDR3_S_AXI_araddr(interconnect_aximm_M00_AXI_ARADDR),
        .C0_DDR3_S_AXI_arburst(interconnect_aximm_M00_AXI_ARBURST),
        .C0_DDR3_S_AXI_arcache(interconnect_aximm_M00_AXI_ARCACHE),
        .C0_DDR3_S_AXI_arlen(interconnect_aximm_M00_AXI_ARLEN),
        .C0_DDR3_S_AXI_arlock(interconnect_aximm_M00_AXI_ARLOCK),
        .C0_DDR3_S_AXI_arprot(interconnect_aximm_M00_AXI_ARPROT),
        .C0_DDR3_S_AXI_arqos(interconnect_aximm_M00_AXI_ARQOS),
        .C0_DDR3_S_AXI_arready(interconnect_aximm_M00_AXI_ARREADY),
        .C0_DDR3_S_AXI_arsize(interconnect_aximm_M00_AXI_ARSIZE),
        .C0_DDR3_S_AXI_arvalid(interconnect_aximm_M00_AXI_ARVALID),
        .C0_DDR3_S_AXI_awaddr(interconnect_aximm_M00_AXI_AWADDR),
        .C0_DDR3_S_AXI_awburst(interconnect_aximm_M00_AXI_AWBURST),
        .C0_DDR3_S_AXI_awcache(interconnect_aximm_M00_AXI_AWCACHE),
        .C0_DDR3_S_AXI_awlen(interconnect_aximm_M00_AXI_AWLEN),
        .C0_DDR3_S_AXI_awlock(interconnect_aximm_M00_AXI_AWLOCK),
        .C0_DDR3_S_AXI_awprot(interconnect_aximm_M00_AXI_AWPROT),
        .C0_DDR3_S_AXI_awqos(interconnect_aximm_M00_AXI_AWQOS),
        .C0_DDR3_S_AXI_awready(interconnect_aximm_M00_AXI_AWREADY),
        .C0_DDR3_S_AXI_awsize(interconnect_aximm_M00_AXI_AWSIZE),
        .C0_DDR3_S_AXI_awvalid(interconnect_aximm_M00_AXI_AWVALID),
        .C0_DDR3_S_AXI_bready(interconnect_aximm_M00_AXI_BREADY),
        .C0_DDR3_S_AXI_bresp(interconnect_aximm_M00_AXI_BRESP),
        .C0_DDR3_S_AXI_bvalid(interconnect_aximm_M00_AXI_BVALID),
        .C0_DDR3_S_AXI_rdata(interconnect_aximm_M00_AXI_RDATA),
        .C0_DDR3_S_AXI_rlast(interconnect_aximm_M00_AXI_RLAST),
        .C0_DDR3_S_AXI_rready(interconnect_aximm_M00_AXI_RREADY),
        .C0_DDR3_S_AXI_rresp(interconnect_aximm_M00_AXI_RRESP),
        .C0_DDR3_S_AXI_rvalid(interconnect_aximm_M00_AXI_RVALID),
        .C0_DDR3_S_AXI_wdata(interconnect_aximm_M00_AXI_WDATA),
        .C0_DDR3_S_AXI_wlast(interconnect_aximm_M00_AXI_WLAST),
        .C0_DDR3_S_AXI_wready(interconnect_aximm_M00_AXI_WREADY),
        .C0_DDR3_S_AXI_wstrb(interconnect_aximm_M00_AXI_WSTRB),
        .C0_DDR3_S_AXI_wvalid(interconnect_aximm_M00_AXI_WVALID),
        .C0_DDR3_addr(Conn2_ADDR),
        .C0_DDR3_ba(Conn2_BA),
        .C0_DDR3_cas_n(Conn2_CAS_N),
        .C0_DDR3_ck_n(Conn2_CK_N),
        .C0_DDR3_ck_p(Conn2_CK_P),
        .C0_DDR3_cke(Conn2_CKE),
        .C0_DDR3_cs_n(Conn2_CS_N),
        .C0_DDR3_dq(C0_DDR3_dq[71:0]),
        .C0_DDR3_dqs_n(C0_DDR3_dqs_n[8:0]),
        .C0_DDR3_dqs_p(C0_DDR3_dqs_p[8:0]),
        .C0_DDR3_odt(Conn2_ODT),
        .C0_DDR3_ras_n(Conn2_RAS_N),
        .C0_DDR3_reset_n(Conn2_RESET_N),
        .C0_DDR3_we_n(Conn2_WE_N),
        .C0_DDR4_addr(Conn4_ADDR),
        .C0_DDR4_ba(Conn4_BA),
        .C0_DDR4_cas_n(Conn4_CAS_N),
        .C0_DDR4_ck_n(Conn4_CK_N),
        .C0_DDR4_ck_p(Conn4_CK_P),
        .C0_DDR4_cke(Conn4_CKE),
        .C0_DDR4_cs_n(Conn4_CS_N),
        .C0_DDR4_dq(C0_DDR4_dq[71:0]),
        .C0_DDR4_dqs_n(C0_DDR4_dqs_n[8:0]),
        .C0_DDR4_dqs_p(C0_DDR4_dqs_p[8:0]),
        .C0_DDR4_odt(Conn4_ODT),
        .C0_DDR4_ras_n(Conn4_RAS_N),
        .C0_DDR4_reset_n(Conn4_RESET_N),
        .C0_DDR4_we_n(Conn4_WE_N),
        .C0_SYS_CLK1_clk_n(Conn3_CLK_N),
        .C0_SYS_CLK1_clk_p(Conn3_CLK_P),
        .C0_SYS_CLK_clk_n(Conn1_CLK_N),
        .C0_SYS_CLK_clk_p(Conn1_CLK_P),
        .Res(memory_Res),
        .c0_ddr3_aresetn(M03_ARESETN_1),
        .c0_ddr3_aresetn1(expanded_resets_interconnect_aresetn2),
        .c0_ddr3_ui_clk(memory_c0_ddr3_ui_clk),
        .c0_ddr3_ui_clk1(memory_c0_ddr3_ui_clk1),
        .c0_ddr3_ui_clk_sync_rst(memory_c0_ddr3_ui_clk_sync_rst),
        .c0_ddr3_ui_clk_sync_rst1(memory_c0_ddr3_ui_clk_sync_rst1),
        .sys_rst(expanded_resets_Res),
        .sys_rst1(expanded_resets_Res));
  pr_support_limited_imp_9558ZS pr_support_limited
       (.S_AXI_ACLK(ACLK_1),
        .S_AXI_ARESETN(ARESETN_1),
        .S_AXI_araddr(interconnect_axilite_M00_AXI_ARADDR),
        .S_AXI_arprot(interconnect_axilite_M00_AXI_ARPROT),
        .S_AXI_arready(interconnect_axilite_M00_AXI_ARREADY),
        .S_AXI_arvalid(interconnect_axilite_M00_AXI_ARVALID),
        .S_AXI_awaddr(interconnect_axilite_M00_AXI_AWADDR),
        .S_AXI_awprot(interconnect_axilite_M00_AXI_AWPROT),
        .S_AXI_awready(interconnect_axilite_M00_AXI_AWREADY),
        .S_AXI_awvalid(interconnect_axilite_M00_AXI_AWVALID),
        .S_AXI_bready(interconnect_axilite_M00_AXI_BREADY),
        .S_AXI_bresp(interconnect_axilite_M00_AXI_BRESP),
        .S_AXI_bvalid(interconnect_axilite_M00_AXI_BVALID),
        .S_AXI_rdata(interconnect_axilite_M00_AXI_RDATA),
        .S_AXI_rready(interconnect_axilite_M00_AXI_RREADY),
        .S_AXI_rresp(interconnect_axilite_M00_AXI_RRESP),
        .S_AXI_rvalid(interconnect_axilite_M00_AXI_RVALID),
        .S_AXI_wdata(interconnect_axilite_M00_AXI_WDATA),
        .S_AXI_wready(interconnect_axilite_M00_AXI_WREADY),
        .S_AXI_wstrb(interconnect_axilite_M00_AXI_WSTRB),
        .S_AXI_wvalid(interconnect_axilite_M00_AXI_WVALID),
        .dout(pr_support_limited_dout),
        .flash_A(pr_support_limited_flash_A),
        .flash_ADV_N(pr_support_limited_flash_ADV_N),
        .flash_DQ(flash_DQ[15:4]),
        .flash_OE_N(pr_support_limited_flash_OE_N),
        .flash_WE_N(pr_support_limited_flash_WE_N),
        .flash_clk(flash_clk_1),
        .flash_rst(expanded_resets_peripheral_reset));
  (* \HD.RECONFIGURABLE  *) 
  xcl_design_u_ocl_region_0 u_ocl_region
       (.INTERCONNECT_CLK(ACLK_1),
        .INTERCONNECT_RESET(INTERCONNECT_RESET_1),
        .KERNEL_CLK(KERNEL_CLK_1),
        .KERNEL_RESET(KERNEL_RESET_1),
        .M00_AXI_araddr(u_ocl_region_M00_AXI_ARADDR),
        .M00_AXI_arburst(u_ocl_region_M00_AXI_ARBURST),
        .M00_AXI_arcache(u_ocl_region_M00_AXI_ARCACHE),
        .M00_AXI_arid(u_ocl_region_M00_AXI_ARID),
        .M00_AXI_arlen(u_ocl_region_M00_AXI_ARLEN),
        .M00_AXI_arlock(u_ocl_region_M00_AXI_ARLOCK),
        .M00_AXI_arprot(u_ocl_region_M00_AXI_ARPROT),
        .M00_AXI_arqos(u_ocl_region_M00_AXI_ARQOS),
        .M00_AXI_arready(u_ocl_region_M00_AXI_ARREADY),
        .M00_AXI_arsize(u_ocl_region_M00_AXI_ARSIZE),
        .M00_AXI_arvalid(u_ocl_region_M00_AXI_ARVALID),
        .M00_AXI_awaddr(u_ocl_region_M00_AXI_AWADDR),
        .M00_AXI_awburst(u_ocl_region_M00_AXI_AWBURST),
        .M00_AXI_awcache(u_ocl_region_M00_AXI_AWCACHE),
        .M00_AXI_awid(u_ocl_region_M00_AXI_AWID),
        .M00_AXI_awlen(u_ocl_region_M00_AXI_AWLEN),
        .M00_AXI_awlock(u_ocl_region_M00_AXI_AWLOCK),
        .M00_AXI_awprot(u_ocl_region_M00_AXI_AWPROT),
        .M00_AXI_awqos(u_ocl_region_M00_AXI_AWQOS),
        .M00_AXI_awready(u_ocl_region_M00_AXI_AWREADY),
        .M00_AXI_awsize(u_ocl_region_M00_AXI_AWSIZE),
        .M00_AXI_awvalid(u_ocl_region_M00_AXI_AWVALID),
        .M00_AXI_bid(u_ocl_region_M00_AXI_BID),
        .M00_AXI_bready(u_ocl_region_M00_AXI_BREADY),
        .M00_AXI_bresp(u_ocl_region_M00_AXI_BRESP),
        .M00_AXI_bvalid(u_ocl_region_M00_AXI_BVALID),
        .M00_AXI_rdata(u_ocl_region_M00_AXI_RDATA),
        .M00_AXI_rid(u_ocl_region_M00_AXI_RID),
        .M00_AXI_rlast(u_ocl_region_M00_AXI_RLAST),
        .M00_AXI_rready(u_ocl_region_M00_AXI_RREADY),
        .M00_AXI_rresp(u_ocl_region_M00_AXI_RRESP),
        .M00_AXI_rvalid(u_ocl_region_M00_AXI_RVALID),
        .M00_AXI_wdata(u_ocl_region_M00_AXI_WDATA),
        .M00_AXI_wlast(u_ocl_region_M00_AXI_WLAST),
        .M00_AXI_wready(u_ocl_region_M00_AXI_WREADY),
        .M00_AXI_wstrb(u_ocl_region_M00_AXI_WSTRB),
        .M00_AXI_wvalid(u_ocl_region_M00_AXI_WVALID),
        .M01_AXI_araddr(u_ocl_region_M01_AXI_ARADDR),
        .M01_AXI_arburst(u_ocl_region_M01_AXI_ARBURST),
        .M01_AXI_arcache(u_ocl_region_M01_AXI_ARCACHE),
        .M01_AXI_arid(u_ocl_region_M01_AXI_ARID),
        .M01_AXI_arlen(u_ocl_region_M01_AXI_ARLEN),
        .M01_AXI_arlock(u_ocl_region_M01_AXI_ARLOCK),
        .M01_AXI_arprot(u_ocl_region_M01_AXI_ARPROT),
        .M01_AXI_arqos(u_ocl_region_M01_AXI_ARQOS),
        .M01_AXI_arready(u_ocl_region_M01_AXI_ARREADY),
        .M01_AXI_arsize(u_ocl_region_M01_AXI_ARSIZE),
        .M01_AXI_arvalid(u_ocl_region_M01_AXI_ARVALID),
        .M01_AXI_awaddr(u_ocl_region_M01_AXI_AWADDR),
        .M01_AXI_awburst(u_ocl_region_M01_AXI_AWBURST),
        .M01_AXI_awcache(u_ocl_region_M01_AXI_AWCACHE),
        .M01_AXI_awid(u_ocl_region_M01_AXI_AWID),
        .M01_AXI_awlen(u_ocl_region_M01_AXI_AWLEN),
        .M01_AXI_awlock(u_ocl_region_M01_AXI_AWLOCK),
        .M01_AXI_awprot(u_ocl_region_M01_AXI_AWPROT),
        .M01_AXI_awqos(u_ocl_region_M01_AXI_AWQOS),
        .M01_AXI_awready(u_ocl_region_M01_AXI_AWREADY),
        .M01_AXI_awsize(u_ocl_region_M01_AXI_AWSIZE),
        .M01_AXI_awvalid(u_ocl_region_M01_AXI_AWVALID),
        .M01_AXI_bid(u_ocl_region_M01_AXI_BID),
        .M01_AXI_bready(u_ocl_region_M01_AXI_BREADY),
        .M01_AXI_bresp(u_ocl_region_M01_AXI_BRESP),
        .M01_AXI_bvalid(u_ocl_region_M01_AXI_BVALID),
        .M01_AXI_rdata(u_ocl_region_M01_AXI_RDATA),
        .M01_AXI_rid(u_ocl_region_M01_AXI_RID),
        .M01_AXI_rlast(u_ocl_region_M01_AXI_RLAST),
        .M01_AXI_rready(u_ocl_region_M01_AXI_RREADY),
        .M01_AXI_rresp(u_ocl_region_M01_AXI_RRESP),
        .M01_AXI_rvalid(u_ocl_region_M01_AXI_RVALID),
        .M01_AXI_wdata(u_ocl_region_M01_AXI_WDATA),
        .M01_AXI_wlast(u_ocl_region_M01_AXI_WLAST),
        .M01_AXI_wready(u_ocl_region_M01_AXI_WREADY),
        .M01_AXI_wstrb(u_ocl_region_M01_AXI_WSTRB),
        .M01_AXI_wvalid(u_ocl_region_M01_AXI_WVALID),
        .S_AXI_araddr(S_AXI_1_ARADDR),
        .S_AXI_arprot(S_AXI_1_ARPROT),
        .S_AXI_arqos({1'b0,1'b0,1'b0,1'b0}),
        .S_AXI_arready(S_AXI_1_ARREADY),
        .S_AXI_arvalid(S_AXI_1_ARVALID),
        .S_AXI_awaddr(S_AXI_1_AWADDR),
        .S_AXI_awprot(S_AXI_1_AWPROT),
        .S_AXI_awqos({1'b0,1'b0,1'b0,1'b0}),
        .S_AXI_awready(S_AXI_1_AWREADY),
        .S_AXI_awvalid(S_AXI_1_AWVALID),
        .S_AXI_bready(S_AXI_1_BREADY),
        .S_AXI_bresp(S_AXI_1_BRESP),
        .S_AXI_bvalid(S_AXI_1_BVALID),
        .S_AXI_rdata(S_AXI_1_RDATA),
        .S_AXI_rready(S_AXI_1_RREADY),
        .S_AXI_rresp(S_AXI_1_RRESP),
        .S_AXI_rvalid(S_AXI_1_RVALID),
        .S_AXI_wdata(S_AXI_1_WDATA),
        .S_AXI_wready(S_AXI_1_WREADY),
        .S_AXI_wstrb(S_AXI_1_WSTRB),
        .S_AXI_wvalid(S_AXI_1_WVALID));
endmodule

module expanded_resets_imp_1KYY8TE
   (Op1,
    Res,
    aux_reset_in,
    dcm_locked,
    ext_reset_in,
    ext_reset_in1,
    ext_reset_in2,
    interconnect_aresetn,
    interconnect_aresetn1,
    interconnect_aresetn2,
    peripheral_reset,
    slowest_sync_clk,
    slowest_sync_clk1,
    slowest_sync_clk2,
    slowest_sync_clk3);
  input [0:0]Op1;
  output [0:0]Res;
  input aux_reset_in;
  input dcm_locked;
  input ext_reset_in;
  input ext_reset_in1;
  input ext_reset_in2;
  output [0:0]interconnect_aresetn;
  output [0:0]interconnect_aresetn1;
  output [0:0]interconnect_aresetn2;
  output [0:0]peripheral_reset;
  input slowest_sync_clk;
  input slowest_sync_clk1;
  input slowest_sync_clk2;
  input slowest_sync_clk3;

  wire [0:0]Op1_1;
  wire aux_reset_in_1;
  wire dcm_locked_1;
  wire ext_reset_in1_1;
  wire ext_reset_in2_1;
  wire ext_reset_in_1;
  wire [0:0]logic_reset_op_Res;
  wire [0:0]psreset_ddrmem_n_2_interconnect_aresetn;
  wire [0:0]psreset_ddrmem_n_interconnect_aresetn;
  wire [0:0]psreset_flashprog_peripheral_reset;
  wire [0:0]psreset_system_interconnect_aresetn;
  wire slowest_sync_clk1_1;
  wire slowest_sync_clk2_1;
  wire slowest_sync_clk3_1;
  wire slowest_sync_clk_1;

  assign Op1_1 = Op1[0];
  assign Res[0] = logic_reset_op_Res;
  assign aux_reset_in_1 = aux_reset_in;
  assign dcm_locked_1 = dcm_locked;
  assign ext_reset_in1_1 = ext_reset_in1;
  assign ext_reset_in2_1 = ext_reset_in2;
  assign ext_reset_in_1 = ext_reset_in;
  assign interconnect_aresetn[0] = psreset_ddrmem_n_interconnect_aresetn;
  assign interconnect_aresetn1[0] = psreset_system_interconnect_aresetn;
  assign interconnect_aresetn2[0] = psreset_ddrmem_n_2_interconnect_aresetn;
  assign peripheral_reset[0] = psreset_flashprog_peripheral_reset;
  assign slowest_sync_clk1_1 = slowest_sync_clk1;
  assign slowest_sync_clk2_1 = slowest_sync_clk2;
  assign slowest_sync_clk3_1 = slowest_sync_clk3;
  assign slowest_sync_clk_1 = slowest_sync_clk;
  xcl_design_logic_reset_op_0 logic_reset_op
       (.Op1(Op1_1),
        .Res(logic_reset_op_Res));
  xcl_design_psreset_ddrmem_n_0 psreset_ddrmem_n
       (.aux_reset_in(aux_reset_in_1),
        .dcm_locked(1'b1),
        .ext_reset_in(ext_reset_in1_1),
        .interconnect_aresetn(psreset_ddrmem_n_interconnect_aresetn),
        .mb_debug_sys_rst(1'b0),
        .slowest_sync_clk(slowest_sync_clk1_1));
  xcl_design_psreset_ddrmem_n_2_0 psreset_ddrmem_n_2
       (.aux_reset_in(1'b1),
        .dcm_locked(1'b1),
        .ext_reset_in(ext_reset_in2_1),
        .interconnect_aresetn(psreset_ddrmem_n_2_interconnect_aresetn),
        .mb_debug_sys_rst(1'b0),
        .slowest_sync_clk(slowest_sync_clk2_1));
  xcl_design_psreset_flashprog_0 psreset_flashprog
       (.aux_reset_in(1'b1),
        .dcm_locked(dcm_locked_1),
        .ext_reset_in(psreset_system_interconnect_aresetn),
        .mb_debug_sys_rst(1'b0),
        .peripheral_reset(psreset_flashprog_peripheral_reset),
        .slowest_sync_clk(slowest_sync_clk3_1));
  xcl_design_psreset_system_0 psreset_system
       (.aux_reset_in(psreset_ddrmem_n_interconnect_aresetn),
        .dcm_locked(dcm_locked_1),
        .ext_reset_in(ext_reset_in_1),
        .interconnect_aresetn(psreset_system_interconnect_aresetn),
        .mb_debug_sys_rst(1'b0),
        .slowest_sync_clk(slowest_sync_clk_1));
endmodule

module featureid_imp_1OS8HUC
   (S_AXI_araddr,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid,
    s_axi_aclk,
    s_axi_aresetn);
  input [8:0]S_AXI_araddr;
  output S_AXI_arready;
  input S_AXI_arvalid;
  input [8:0]S_AXI_awaddr;
  output S_AXI_awready;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;
  input s_axi_aclk;
  input [0:0]s_axi_aresetn;

  wire [8:0]Conn1_ARADDR;
  wire Conn1_ARREADY;
  wire Conn1_ARVALID;
  wire [8:0]Conn1_AWADDR;
  wire Conn1_AWREADY;
  wire Conn1_AWVALID;
  wire Conn1_BREADY;
  wire [1:0]Conn1_BRESP;
  wire Conn1_BVALID;
  wire [31:0]Conn1_RDATA;
  wire Conn1_RREADY;
  wire [1:0]Conn1_RRESP;
  wire Conn1_RVALID;
  wire [31:0]Conn1_WDATA;
  wire Conn1_WREADY;
  wire [3:0]Conn1_WSTRB;
  wire Conn1_WVALID;
  wire [31:0]const_featureid_high_dout;
  wire [31:0]const_featureid_low_dout;
  wire s_axi_aclk_1;
  wire [0:0]s_axi_aresetn_1;

  assign Conn1_ARADDR = S_AXI_araddr[8:0];
  assign Conn1_ARVALID = S_AXI_arvalid;
  assign Conn1_AWADDR = S_AXI_awaddr[8:0];
  assign Conn1_AWVALID = S_AXI_awvalid;
  assign Conn1_BREADY = S_AXI_bready;
  assign Conn1_RREADY = S_AXI_rready;
  assign Conn1_WDATA = S_AXI_wdata[31:0];
  assign Conn1_WSTRB = S_AXI_wstrb[3:0];
  assign Conn1_WVALID = S_AXI_wvalid;
  assign S_AXI_arready = Conn1_ARREADY;
  assign S_AXI_awready = Conn1_AWREADY;
  assign S_AXI_bresp[1:0] = Conn1_BRESP;
  assign S_AXI_bvalid = Conn1_BVALID;
  assign S_AXI_rdata[31:0] = Conn1_RDATA;
  assign S_AXI_rresp[1:0] = Conn1_RRESP;
  assign S_AXI_rvalid = Conn1_RVALID;
  assign S_AXI_wready = Conn1_WREADY;
  assign s_axi_aclk_1 = s_axi_aclk;
  assign s_axi_aresetn_1 = s_axi_aresetn[0];
  xcl_design_const_featureid_high_0 const_featureid_high
       (.dout(const_featureid_high_dout));
  xcl_design_const_featureid_low_0 const_featureid_low
       (.dout(const_featureid_low_dout));
  xcl_design_gpio_featureid_0 gpio_featureid
       (.gpio2_io_i(const_featureid_high_dout),
        .gpio_io_i(const_featureid_low_dout),
        .s_axi_aclk(s_axi_aclk_1),
        .s_axi_araddr(Conn1_ARADDR),
        .s_axi_aresetn(s_axi_aresetn_1),
        .s_axi_arready(Conn1_ARREADY),
        .s_axi_arvalid(Conn1_ARVALID),
        .s_axi_awaddr(Conn1_AWADDR),
        .s_axi_awready(Conn1_AWREADY),
        .s_axi_awvalid(Conn1_AWVALID),
        .s_axi_bready(Conn1_BREADY),
        .s_axi_bresp(Conn1_BRESP),
        .s_axi_bvalid(Conn1_BVALID),
        .s_axi_rdata(Conn1_RDATA),
        .s_axi_rready(Conn1_RREADY),
        .s_axi_rresp(Conn1_RRESP),
        .s_axi_rvalid(Conn1_RVALID),
        .s_axi_wdata(Conn1_WDATA),
        .s_axi_wready(Conn1_WREADY),
        .s_axi_wstrb(Conn1_WSTRB),
        .s_axi_wvalid(Conn1_WVALID));
endmodule

module m00_couplers_imp_1T8JY77
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arprot,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awprot,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arprot,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awprot,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [7:0]M_AXI_araddr;
  output [2:0]M_AXI_arprot;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [7:0]M_AXI_awaddr;
  output [2:0]M_AXI_awprot;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  input [2:0]S_AXI_arprot;
  output S_AXI_arready;
  input S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  input [2:0]S_AXI_awprot;
  output S_AXI_awready;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire M_ACLK_1;
  wire M_ARESETN_1;
  wire [31:0]m00_couplers_to_m00_regslice_ARADDR;
  wire [2:0]m00_couplers_to_m00_regslice_ARPROT;
  wire m00_couplers_to_m00_regslice_ARREADY;
  wire m00_couplers_to_m00_regslice_ARVALID;
  wire [31:0]m00_couplers_to_m00_regslice_AWADDR;
  wire [2:0]m00_couplers_to_m00_regslice_AWPROT;
  wire m00_couplers_to_m00_regslice_AWREADY;
  wire m00_couplers_to_m00_regslice_AWVALID;
  wire m00_couplers_to_m00_regslice_BREADY;
  wire [1:0]m00_couplers_to_m00_regslice_BRESP;
  wire m00_couplers_to_m00_regslice_BVALID;
  wire [31:0]m00_couplers_to_m00_regslice_RDATA;
  wire m00_couplers_to_m00_regslice_RREADY;
  wire [1:0]m00_couplers_to_m00_regslice_RRESP;
  wire m00_couplers_to_m00_regslice_RVALID;
  wire [31:0]m00_couplers_to_m00_regslice_WDATA;
  wire m00_couplers_to_m00_regslice_WREADY;
  wire [3:0]m00_couplers_to_m00_regslice_WSTRB;
  wire m00_couplers_to_m00_regslice_WVALID;
  wire [7:0]m00_regslice_to_m00_couplers_ARADDR;
  wire [2:0]m00_regslice_to_m00_couplers_ARPROT;
  wire m00_regslice_to_m00_couplers_ARREADY;
  wire m00_regslice_to_m00_couplers_ARVALID;
  wire [7:0]m00_regslice_to_m00_couplers_AWADDR;
  wire [2:0]m00_regslice_to_m00_couplers_AWPROT;
  wire m00_regslice_to_m00_couplers_AWREADY;
  wire m00_regslice_to_m00_couplers_AWVALID;
  wire m00_regslice_to_m00_couplers_BREADY;
  wire [1:0]m00_regslice_to_m00_couplers_BRESP;
  wire m00_regslice_to_m00_couplers_BVALID;
  wire [31:0]m00_regslice_to_m00_couplers_RDATA;
  wire m00_regslice_to_m00_couplers_RREADY;
  wire [1:0]m00_regslice_to_m00_couplers_RRESP;
  wire m00_regslice_to_m00_couplers_RVALID;
  wire [31:0]m00_regslice_to_m00_couplers_WDATA;
  wire m00_regslice_to_m00_couplers_WREADY;
  wire [3:0]m00_regslice_to_m00_couplers_WSTRB;
  wire m00_regslice_to_m00_couplers_WVALID;

  assign M_ACLK_1 = M_ACLK;
  assign M_ARESETN_1 = M_ARESETN;
  assign M_AXI_araddr[7:0] = m00_regslice_to_m00_couplers_ARADDR;
  assign M_AXI_arprot[2:0] = m00_regslice_to_m00_couplers_ARPROT;
  assign M_AXI_arvalid = m00_regslice_to_m00_couplers_ARVALID;
  assign M_AXI_awaddr[7:0] = m00_regslice_to_m00_couplers_AWADDR;
  assign M_AXI_awprot[2:0] = m00_regslice_to_m00_couplers_AWPROT;
  assign M_AXI_awvalid = m00_regslice_to_m00_couplers_AWVALID;
  assign M_AXI_bready = m00_regslice_to_m00_couplers_BREADY;
  assign M_AXI_rready = m00_regslice_to_m00_couplers_RREADY;
  assign M_AXI_wdata[31:0] = m00_regslice_to_m00_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = m00_regslice_to_m00_couplers_WSTRB;
  assign M_AXI_wvalid = m00_regslice_to_m00_couplers_WVALID;
  assign S_AXI_arready = m00_couplers_to_m00_regslice_ARREADY;
  assign S_AXI_awready = m00_couplers_to_m00_regslice_AWREADY;
  assign S_AXI_bresp[1:0] = m00_couplers_to_m00_regslice_BRESP;
  assign S_AXI_bvalid = m00_couplers_to_m00_regslice_BVALID;
  assign S_AXI_rdata[31:0] = m00_couplers_to_m00_regslice_RDATA;
  assign S_AXI_rresp[1:0] = m00_couplers_to_m00_regslice_RRESP;
  assign S_AXI_rvalid = m00_couplers_to_m00_regslice_RVALID;
  assign S_AXI_wready = m00_couplers_to_m00_regslice_WREADY;
  assign m00_couplers_to_m00_regslice_ARADDR = S_AXI_araddr[31:0];
  assign m00_couplers_to_m00_regslice_ARPROT = S_AXI_arprot[2:0];
  assign m00_couplers_to_m00_regslice_ARVALID = S_AXI_arvalid;
  assign m00_couplers_to_m00_regslice_AWADDR = S_AXI_awaddr[31:0];
  assign m00_couplers_to_m00_regslice_AWPROT = S_AXI_awprot[2:0];
  assign m00_couplers_to_m00_regslice_AWVALID = S_AXI_awvalid;
  assign m00_couplers_to_m00_regslice_BREADY = S_AXI_bready;
  assign m00_couplers_to_m00_regslice_RREADY = S_AXI_rready;
  assign m00_couplers_to_m00_regslice_WDATA = S_AXI_wdata[31:0];
  assign m00_couplers_to_m00_regslice_WSTRB = S_AXI_wstrb[3:0];
  assign m00_couplers_to_m00_regslice_WVALID = S_AXI_wvalid;
  assign m00_regslice_to_m00_couplers_ARREADY = M_AXI_arready;
  assign m00_regslice_to_m00_couplers_AWREADY = M_AXI_awready;
  assign m00_regslice_to_m00_couplers_BRESP = M_AXI_bresp[1:0];
  assign m00_regslice_to_m00_couplers_BVALID = M_AXI_bvalid;
  assign m00_regslice_to_m00_couplers_RDATA = M_AXI_rdata[31:0];
  assign m00_regslice_to_m00_couplers_RRESP = M_AXI_rresp[1:0];
  assign m00_regslice_to_m00_couplers_RVALID = M_AXI_rvalid;
  assign m00_regslice_to_m00_couplers_WREADY = M_AXI_wready;
  xcl_design_m00_regslice_0 m00_regslice
       (.aclk(M_ACLK_1),
        .aresetn(M_ARESETN_1),
        .m_axi_araddr(m00_regslice_to_m00_couplers_ARADDR),
        .m_axi_arprot(m00_regslice_to_m00_couplers_ARPROT),
        .m_axi_arready(m00_regslice_to_m00_couplers_ARREADY),
        .m_axi_arvalid(m00_regslice_to_m00_couplers_ARVALID),
        .m_axi_awaddr(m00_regslice_to_m00_couplers_AWADDR),
        .m_axi_awprot(m00_regslice_to_m00_couplers_AWPROT),
        .m_axi_awready(m00_regslice_to_m00_couplers_AWREADY),
        .m_axi_awvalid(m00_regslice_to_m00_couplers_AWVALID),
        .m_axi_bready(m00_regslice_to_m00_couplers_BREADY),
        .m_axi_bresp(m00_regslice_to_m00_couplers_BRESP),
        .m_axi_bvalid(m00_regslice_to_m00_couplers_BVALID),
        .m_axi_rdata(m00_regslice_to_m00_couplers_RDATA),
        .m_axi_rready(m00_regslice_to_m00_couplers_RREADY),
        .m_axi_rresp(m00_regslice_to_m00_couplers_RRESP),
        .m_axi_rvalid(m00_regslice_to_m00_couplers_RVALID),
        .m_axi_wdata(m00_regslice_to_m00_couplers_WDATA),
        .m_axi_wready(m00_regslice_to_m00_couplers_WREADY),
        .m_axi_wstrb(m00_regslice_to_m00_couplers_WSTRB),
        .m_axi_wvalid(m00_regslice_to_m00_couplers_WVALID),
        .s_axi_araddr(m00_couplers_to_m00_regslice_ARADDR[7:0]),
        .s_axi_arprot(m00_couplers_to_m00_regslice_ARPROT),
        .s_axi_arready(m00_couplers_to_m00_regslice_ARREADY),
        .s_axi_arvalid(m00_couplers_to_m00_regslice_ARVALID),
        .s_axi_awaddr(m00_couplers_to_m00_regslice_AWADDR[7:0]),
        .s_axi_awprot(m00_couplers_to_m00_regslice_AWPROT),
        .s_axi_awready(m00_couplers_to_m00_regslice_AWREADY),
        .s_axi_awvalid(m00_couplers_to_m00_regslice_AWVALID),
        .s_axi_bready(m00_couplers_to_m00_regslice_BREADY),
        .s_axi_bresp(m00_couplers_to_m00_regslice_BRESP),
        .s_axi_bvalid(m00_couplers_to_m00_regslice_BVALID),
        .s_axi_rdata(m00_couplers_to_m00_regslice_RDATA),
        .s_axi_rready(m00_couplers_to_m00_regslice_RREADY),
        .s_axi_rresp(m00_couplers_to_m00_regslice_RRESP),
        .s_axi_rvalid(m00_couplers_to_m00_regslice_RVALID),
        .s_axi_wdata(m00_couplers_to_m00_regslice_WDATA),
        .s_axi_wready(m00_couplers_to_m00_regslice_WREADY),
        .s_axi_wstrb(m00_couplers_to_m00_regslice_WSTRB),
        .s_axi_wvalid(m00_couplers_to_m00_regslice_WVALID));
endmodule

module m01_couplers_imp_13J5K85
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arprot,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awprot,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [15:0]M_AXI_araddr;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [15:0]M_AXI_awaddr;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  input [2:0]S_AXI_arprot;
  output S_AXI_arready;
  input S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  input [2:0]S_AXI_awprot;
  output S_AXI_awready;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire M_ACLK_1;
  wire M_ARESETN_1;
  wire [31:0]m01_couplers_to_m01_regslice_ARADDR;
  wire [2:0]m01_couplers_to_m01_regslice_ARPROT;
  wire m01_couplers_to_m01_regslice_ARREADY;
  wire m01_couplers_to_m01_regslice_ARVALID;
  wire [31:0]m01_couplers_to_m01_regslice_AWADDR;
  wire [2:0]m01_couplers_to_m01_regslice_AWPROT;
  wire m01_couplers_to_m01_regslice_AWREADY;
  wire m01_couplers_to_m01_regslice_AWVALID;
  wire m01_couplers_to_m01_regslice_BREADY;
  wire [1:0]m01_couplers_to_m01_regslice_BRESP;
  wire m01_couplers_to_m01_regslice_BVALID;
  wire [31:0]m01_couplers_to_m01_regslice_RDATA;
  wire m01_couplers_to_m01_regslice_RREADY;
  wire [1:0]m01_couplers_to_m01_regslice_RRESP;
  wire m01_couplers_to_m01_regslice_RVALID;
  wire [31:0]m01_couplers_to_m01_regslice_WDATA;
  wire m01_couplers_to_m01_regslice_WREADY;
  wire [3:0]m01_couplers_to_m01_regslice_WSTRB;
  wire m01_couplers_to_m01_regslice_WVALID;
  wire [15:0]m01_regslice_to_m01_couplers_ARADDR;
  wire m01_regslice_to_m01_couplers_ARREADY;
  wire m01_regslice_to_m01_couplers_ARVALID;
  wire [15:0]m01_regslice_to_m01_couplers_AWADDR;
  wire m01_regslice_to_m01_couplers_AWREADY;
  wire m01_regslice_to_m01_couplers_AWVALID;
  wire m01_regslice_to_m01_couplers_BREADY;
  wire [1:0]m01_regslice_to_m01_couplers_BRESP;
  wire m01_regslice_to_m01_couplers_BVALID;
  wire [31:0]m01_regslice_to_m01_couplers_RDATA;
  wire m01_regslice_to_m01_couplers_RREADY;
  wire [1:0]m01_regslice_to_m01_couplers_RRESP;
  wire m01_regslice_to_m01_couplers_RVALID;
  wire [31:0]m01_regslice_to_m01_couplers_WDATA;
  wire m01_regslice_to_m01_couplers_WREADY;
  wire [3:0]m01_regslice_to_m01_couplers_WSTRB;
  wire m01_regslice_to_m01_couplers_WVALID;

  assign M_ACLK_1 = M_ACLK;
  assign M_ARESETN_1 = M_ARESETN;
  assign M_AXI_araddr[15:0] = m01_regslice_to_m01_couplers_ARADDR;
  assign M_AXI_arvalid = m01_regslice_to_m01_couplers_ARVALID;
  assign M_AXI_awaddr[15:0] = m01_regslice_to_m01_couplers_AWADDR;
  assign M_AXI_awvalid = m01_regslice_to_m01_couplers_AWVALID;
  assign M_AXI_bready = m01_regslice_to_m01_couplers_BREADY;
  assign M_AXI_rready = m01_regslice_to_m01_couplers_RREADY;
  assign M_AXI_wdata[31:0] = m01_regslice_to_m01_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = m01_regslice_to_m01_couplers_WSTRB;
  assign M_AXI_wvalid = m01_regslice_to_m01_couplers_WVALID;
  assign S_AXI_arready = m01_couplers_to_m01_regslice_ARREADY;
  assign S_AXI_awready = m01_couplers_to_m01_regslice_AWREADY;
  assign S_AXI_bresp[1:0] = m01_couplers_to_m01_regslice_BRESP;
  assign S_AXI_bvalid = m01_couplers_to_m01_regslice_BVALID;
  assign S_AXI_rdata[31:0] = m01_couplers_to_m01_regslice_RDATA;
  assign S_AXI_rresp[1:0] = m01_couplers_to_m01_regslice_RRESP;
  assign S_AXI_rvalid = m01_couplers_to_m01_regslice_RVALID;
  assign S_AXI_wready = m01_couplers_to_m01_regslice_WREADY;
  assign m01_couplers_to_m01_regslice_ARADDR = S_AXI_araddr[31:0];
  assign m01_couplers_to_m01_regslice_ARPROT = S_AXI_arprot[2:0];
  assign m01_couplers_to_m01_regslice_ARVALID = S_AXI_arvalid;
  assign m01_couplers_to_m01_regslice_AWADDR = S_AXI_awaddr[31:0];
  assign m01_couplers_to_m01_regslice_AWPROT = S_AXI_awprot[2:0];
  assign m01_couplers_to_m01_regslice_AWVALID = S_AXI_awvalid;
  assign m01_couplers_to_m01_regslice_BREADY = S_AXI_bready;
  assign m01_couplers_to_m01_regslice_RREADY = S_AXI_rready;
  assign m01_couplers_to_m01_regslice_WDATA = S_AXI_wdata[31:0];
  assign m01_couplers_to_m01_regslice_WSTRB = S_AXI_wstrb[3:0];
  assign m01_couplers_to_m01_regslice_WVALID = S_AXI_wvalid;
  assign m01_regslice_to_m01_couplers_ARREADY = M_AXI_arready;
  assign m01_regslice_to_m01_couplers_AWREADY = M_AXI_awready;
  assign m01_regslice_to_m01_couplers_BRESP = M_AXI_bresp[1:0];
  assign m01_regslice_to_m01_couplers_BVALID = M_AXI_bvalid;
  assign m01_regslice_to_m01_couplers_RDATA = M_AXI_rdata[31:0];
  assign m01_regslice_to_m01_couplers_RRESP = M_AXI_rresp[1:0];
  assign m01_regslice_to_m01_couplers_RVALID = M_AXI_rvalid;
  assign m01_regslice_to_m01_couplers_WREADY = M_AXI_wready;
  xcl_design_m01_regslice_0 m01_regslice
       (.aclk(M_ACLK_1),
        .aresetn(M_ARESETN_1),
        .m_axi_araddr(m01_regslice_to_m01_couplers_ARADDR),
        .m_axi_arready(m01_regslice_to_m01_couplers_ARREADY),
        .m_axi_arvalid(m01_regslice_to_m01_couplers_ARVALID),
        .m_axi_awaddr(m01_regslice_to_m01_couplers_AWADDR),
        .m_axi_awready(m01_regslice_to_m01_couplers_AWREADY),
        .m_axi_awvalid(m01_regslice_to_m01_couplers_AWVALID),
        .m_axi_bready(m01_regslice_to_m01_couplers_BREADY),
        .m_axi_bresp(m01_regslice_to_m01_couplers_BRESP),
        .m_axi_bvalid(m01_regslice_to_m01_couplers_BVALID),
        .m_axi_rdata(m01_regslice_to_m01_couplers_RDATA),
        .m_axi_rready(m01_regslice_to_m01_couplers_RREADY),
        .m_axi_rresp(m01_regslice_to_m01_couplers_RRESP),
        .m_axi_rvalid(m01_regslice_to_m01_couplers_RVALID),
        .m_axi_wdata(m01_regslice_to_m01_couplers_WDATA),
        .m_axi_wready(m01_regslice_to_m01_couplers_WREADY),
        .m_axi_wstrb(m01_regslice_to_m01_couplers_WSTRB),
        .m_axi_wvalid(m01_regslice_to_m01_couplers_WVALID),
        .s_axi_araddr(m01_couplers_to_m01_regslice_ARADDR[15:0]),
        .s_axi_arprot(m01_couplers_to_m01_regslice_ARPROT),
        .s_axi_arready(m01_couplers_to_m01_regslice_ARREADY),
        .s_axi_arvalid(m01_couplers_to_m01_regslice_ARVALID),
        .s_axi_awaddr(m01_couplers_to_m01_regslice_AWADDR[15:0]),
        .s_axi_awprot(m01_couplers_to_m01_regslice_AWPROT),
        .s_axi_awready(m01_couplers_to_m01_regslice_AWREADY),
        .s_axi_awvalid(m01_couplers_to_m01_regslice_AWVALID),
        .s_axi_bready(m01_couplers_to_m01_regslice_BREADY),
        .s_axi_bresp(m01_couplers_to_m01_regslice_BRESP),
        .s_axi_bvalid(m01_couplers_to_m01_regslice_BVALID),
        .s_axi_rdata(m01_couplers_to_m01_regslice_RDATA),
        .s_axi_rready(m01_couplers_to_m01_regslice_RREADY),
        .s_axi_rresp(m01_couplers_to_m01_regslice_RRESP),
        .s_axi_rvalid(m01_couplers_to_m01_regslice_RVALID),
        .s_axi_wdata(m01_couplers_to_m01_regslice_WDATA),
        .s_axi_wready(m01_couplers_to_m01_regslice_WREADY),
        .s_axi_wstrb(m01_couplers_to_m01_regslice_WSTRB),
        .s_axi_wvalid(m01_couplers_to_m01_regslice_WVALID));
endmodule

module m02_couplers_imp_9DRP7Z
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arprot,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awprot,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_araddr;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  input [2:0]S_AXI_arprot;
  output S_AXI_arready;
  input S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  input [2:0]S_AXI_awprot;
  output S_AXI_awready;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire M_ACLK_1;
  wire M_ARESETN_1;
  wire [31:0]m02_couplers_to_m02_regslice_ARADDR;
  wire [2:0]m02_couplers_to_m02_regslice_ARPROT;
  wire m02_couplers_to_m02_regslice_ARREADY;
  wire m02_couplers_to_m02_regslice_ARVALID;
  wire [31:0]m02_couplers_to_m02_regslice_AWADDR;
  wire [2:0]m02_couplers_to_m02_regslice_AWPROT;
  wire m02_couplers_to_m02_regslice_AWREADY;
  wire m02_couplers_to_m02_regslice_AWVALID;
  wire m02_couplers_to_m02_regslice_BREADY;
  wire [1:0]m02_couplers_to_m02_regslice_BRESP;
  wire m02_couplers_to_m02_regslice_BVALID;
  wire [31:0]m02_couplers_to_m02_regslice_RDATA;
  wire m02_couplers_to_m02_regslice_RREADY;
  wire [1:0]m02_couplers_to_m02_regslice_RRESP;
  wire m02_couplers_to_m02_regslice_RVALID;
  wire [31:0]m02_couplers_to_m02_regslice_WDATA;
  wire m02_couplers_to_m02_regslice_WREADY;
  wire [3:0]m02_couplers_to_m02_regslice_WSTRB;
  wire m02_couplers_to_m02_regslice_WVALID;
  wire [31:0]m02_regslice_to_m02_couplers_ARADDR;
  wire m02_regslice_to_m02_couplers_ARREADY;
  wire m02_regslice_to_m02_couplers_ARVALID;
  wire [31:0]m02_regslice_to_m02_couplers_AWADDR;
  wire m02_regslice_to_m02_couplers_AWREADY;
  wire m02_regslice_to_m02_couplers_AWVALID;
  wire m02_regslice_to_m02_couplers_BREADY;
  wire [1:0]m02_regslice_to_m02_couplers_BRESP;
  wire m02_regslice_to_m02_couplers_BVALID;
  wire [31:0]m02_regslice_to_m02_couplers_RDATA;
  wire m02_regslice_to_m02_couplers_RREADY;
  wire [1:0]m02_regslice_to_m02_couplers_RRESP;
  wire m02_regslice_to_m02_couplers_RVALID;
  wire [31:0]m02_regslice_to_m02_couplers_WDATA;
  wire m02_regslice_to_m02_couplers_WREADY;
  wire [3:0]m02_regslice_to_m02_couplers_WSTRB;
  wire m02_regslice_to_m02_couplers_WVALID;

  assign M_ACLK_1 = M_ACLK;
  assign M_ARESETN_1 = M_ARESETN;
  assign M_AXI_araddr[31:0] = m02_regslice_to_m02_couplers_ARADDR;
  assign M_AXI_arvalid = m02_regslice_to_m02_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = m02_regslice_to_m02_couplers_AWADDR;
  assign M_AXI_awvalid = m02_regslice_to_m02_couplers_AWVALID;
  assign M_AXI_bready = m02_regslice_to_m02_couplers_BREADY;
  assign M_AXI_rready = m02_regslice_to_m02_couplers_RREADY;
  assign M_AXI_wdata[31:0] = m02_regslice_to_m02_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = m02_regslice_to_m02_couplers_WSTRB;
  assign M_AXI_wvalid = m02_regslice_to_m02_couplers_WVALID;
  assign S_AXI_arready = m02_couplers_to_m02_regslice_ARREADY;
  assign S_AXI_awready = m02_couplers_to_m02_regslice_AWREADY;
  assign S_AXI_bresp[1:0] = m02_couplers_to_m02_regslice_BRESP;
  assign S_AXI_bvalid = m02_couplers_to_m02_regslice_BVALID;
  assign S_AXI_rdata[31:0] = m02_couplers_to_m02_regslice_RDATA;
  assign S_AXI_rresp[1:0] = m02_couplers_to_m02_regslice_RRESP;
  assign S_AXI_rvalid = m02_couplers_to_m02_regslice_RVALID;
  assign S_AXI_wready = m02_couplers_to_m02_regslice_WREADY;
  assign m02_couplers_to_m02_regslice_ARADDR = S_AXI_araddr[31:0];
  assign m02_couplers_to_m02_regslice_ARPROT = S_AXI_arprot[2:0];
  assign m02_couplers_to_m02_regslice_ARVALID = S_AXI_arvalid;
  assign m02_couplers_to_m02_regslice_AWADDR = S_AXI_awaddr[31:0];
  assign m02_couplers_to_m02_regslice_AWPROT = S_AXI_awprot[2:0];
  assign m02_couplers_to_m02_regslice_AWVALID = S_AXI_awvalid;
  assign m02_couplers_to_m02_regslice_BREADY = S_AXI_bready;
  assign m02_couplers_to_m02_regslice_RREADY = S_AXI_rready;
  assign m02_couplers_to_m02_regslice_WDATA = S_AXI_wdata[31:0];
  assign m02_couplers_to_m02_regslice_WSTRB = S_AXI_wstrb[3:0];
  assign m02_couplers_to_m02_regslice_WVALID = S_AXI_wvalid;
  assign m02_regslice_to_m02_couplers_ARREADY = M_AXI_arready;
  assign m02_regslice_to_m02_couplers_AWREADY = M_AXI_awready;
  assign m02_regslice_to_m02_couplers_BRESP = M_AXI_bresp[1:0];
  assign m02_regslice_to_m02_couplers_BVALID = M_AXI_bvalid;
  assign m02_regslice_to_m02_couplers_RDATA = M_AXI_rdata[31:0];
  assign m02_regslice_to_m02_couplers_RRESP = M_AXI_rresp[1:0];
  assign m02_regslice_to_m02_couplers_RVALID = M_AXI_rvalid;
  assign m02_regslice_to_m02_couplers_WREADY = M_AXI_wready;
  xcl_design_m02_regslice_0 m02_regslice
       (.aclk(M_ACLK_1),
        .aresetn(M_ARESETN_1),
        .m_axi_araddr(m02_regslice_to_m02_couplers_ARADDR),
        .m_axi_arready(m02_regslice_to_m02_couplers_ARREADY),
        .m_axi_arvalid(m02_regslice_to_m02_couplers_ARVALID),
        .m_axi_awaddr(m02_regslice_to_m02_couplers_AWADDR),
        .m_axi_awready(m02_regslice_to_m02_couplers_AWREADY),
        .m_axi_awvalid(m02_regslice_to_m02_couplers_AWVALID),
        .m_axi_bready(m02_regslice_to_m02_couplers_BREADY),
        .m_axi_bresp(m02_regslice_to_m02_couplers_BRESP),
        .m_axi_bvalid(m02_regslice_to_m02_couplers_BVALID),
        .m_axi_rdata(m02_regslice_to_m02_couplers_RDATA),
        .m_axi_rready(m02_regslice_to_m02_couplers_RREADY),
        .m_axi_rresp(m02_regslice_to_m02_couplers_RRESP),
        .m_axi_rvalid(m02_regslice_to_m02_couplers_RVALID),
        .m_axi_wdata(m02_regslice_to_m02_couplers_WDATA),
        .m_axi_wready(m02_regslice_to_m02_couplers_WREADY),
        .m_axi_wstrb(m02_regslice_to_m02_couplers_WSTRB),
        .m_axi_wvalid(m02_regslice_to_m02_couplers_WVALID),
        .s_axi_araddr(m02_couplers_to_m02_regslice_ARADDR),
        .s_axi_arprot(m02_couplers_to_m02_regslice_ARPROT),
        .s_axi_arready(m02_couplers_to_m02_regslice_ARREADY),
        .s_axi_arvalid(m02_couplers_to_m02_regslice_ARVALID),
        .s_axi_awaddr(m02_couplers_to_m02_regslice_AWADDR),
        .s_axi_awprot(m02_couplers_to_m02_regslice_AWPROT),
        .s_axi_awready(m02_couplers_to_m02_regslice_AWREADY),
        .s_axi_awvalid(m02_couplers_to_m02_regslice_AWVALID),
        .s_axi_bready(m02_couplers_to_m02_regslice_BREADY),
        .s_axi_bresp(m02_couplers_to_m02_regslice_BRESP),
        .s_axi_bvalid(m02_couplers_to_m02_regslice_BVALID),
        .s_axi_rdata(m02_couplers_to_m02_regslice_RDATA),
        .s_axi_rready(m02_couplers_to_m02_regslice_RREADY),
        .s_axi_rresp(m02_couplers_to_m02_regslice_RRESP),
        .s_axi_rvalid(m02_couplers_to_m02_regslice_RVALID),
        .s_axi_wdata(m02_couplers_to_m02_regslice_WDATA),
        .s_axi_wready(m02_couplers_to_m02_regslice_WREADY),
        .s_axi_wstrb(m02_couplers_to_m02_regslice_WSTRB),
        .s_axi_wvalid(m02_couplers_to_m02_regslice_WVALID));
endmodule

module m03_couplers_imp_J2E8TL
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arprot,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awprot,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_araddr;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  input [2:0]S_AXI_arprot;
  output S_AXI_arready;
  input S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  input [2:0]S_AXI_awprot;
  output S_AXI_awready;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire M_ACLK_1;
  wire M_ARESETN_1;
  wire S_ACLK_1;
  wire S_ARESETN_1;
  wire [31:0]auto_cc_to_m03_regslice_ARADDR;
  wire [2:0]auto_cc_to_m03_regslice_ARPROT;
  wire auto_cc_to_m03_regslice_ARREADY;
  wire auto_cc_to_m03_regslice_ARVALID;
  wire [31:0]auto_cc_to_m03_regslice_AWADDR;
  wire [2:0]auto_cc_to_m03_regslice_AWPROT;
  wire auto_cc_to_m03_regslice_AWREADY;
  wire auto_cc_to_m03_regslice_AWVALID;
  wire auto_cc_to_m03_regslice_BREADY;
  wire [1:0]auto_cc_to_m03_regslice_BRESP;
  wire auto_cc_to_m03_regslice_BVALID;
  wire [31:0]auto_cc_to_m03_regslice_RDATA;
  wire auto_cc_to_m03_regslice_RREADY;
  wire [1:0]auto_cc_to_m03_regslice_RRESP;
  wire auto_cc_to_m03_regslice_RVALID;
  wire [31:0]auto_cc_to_m03_regslice_WDATA;
  wire auto_cc_to_m03_regslice_WREADY;
  wire [3:0]auto_cc_to_m03_regslice_WSTRB;
  wire auto_cc_to_m03_regslice_WVALID;
  wire [31:0]m03_couplers_to_auto_cc_ARADDR;
  wire [2:0]m03_couplers_to_auto_cc_ARPROT;
  wire m03_couplers_to_auto_cc_ARREADY;
  wire m03_couplers_to_auto_cc_ARVALID;
  wire [31:0]m03_couplers_to_auto_cc_AWADDR;
  wire [2:0]m03_couplers_to_auto_cc_AWPROT;
  wire m03_couplers_to_auto_cc_AWREADY;
  wire m03_couplers_to_auto_cc_AWVALID;
  wire m03_couplers_to_auto_cc_BREADY;
  wire [1:0]m03_couplers_to_auto_cc_BRESP;
  wire m03_couplers_to_auto_cc_BVALID;
  wire [31:0]m03_couplers_to_auto_cc_RDATA;
  wire m03_couplers_to_auto_cc_RREADY;
  wire [1:0]m03_couplers_to_auto_cc_RRESP;
  wire m03_couplers_to_auto_cc_RVALID;
  wire [31:0]m03_couplers_to_auto_cc_WDATA;
  wire m03_couplers_to_auto_cc_WREADY;
  wire [3:0]m03_couplers_to_auto_cc_WSTRB;
  wire m03_couplers_to_auto_cc_WVALID;
  wire [31:0]m03_regslice_to_m03_couplers_ARADDR;
  wire m03_regslice_to_m03_couplers_ARREADY;
  wire m03_regslice_to_m03_couplers_ARVALID;
  wire [31:0]m03_regslice_to_m03_couplers_AWADDR;
  wire m03_regslice_to_m03_couplers_AWREADY;
  wire m03_regslice_to_m03_couplers_AWVALID;
  wire m03_regslice_to_m03_couplers_BREADY;
  wire [1:0]m03_regslice_to_m03_couplers_BRESP;
  wire m03_regslice_to_m03_couplers_BVALID;
  wire [31:0]m03_regslice_to_m03_couplers_RDATA;
  wire m03_regslice_to_m03_couplers_RREADY;
  wire [1:0]m03_regslice_to_m03_couplers_RRESP;
  wire m03_regslice_to_m03_couplers_RVALID;
  wire [31:0]m03_regslice_to_m03_couplers_WDATA;
  wire m03_regslice_to_m03_couplers_WREADY;
  wire m03_regslice_to_m03_couplers_WVALID;

  assign M_ACLK_1 = M_ACLK;
  assign M_ARESETN_1 = M_ARESETN;
  assign M_AXI_araddr[31:0] = m03_regslice_to_m03_couplers_ARADDR;
  assign M_AXI_arvalid = m03_regslice_to_m03_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = m03_regslice_to_m03_couplers_AWADDR;
  assign M_AXI_awvalid = m03_regslice_to_m03_couplers_AWVALID;
  assign M_AXI_bready = m03_regslice_to_m03_couplers_BREADY;
  assign M_AXI_rready = m03_regslice_to_m03_couplers_RREADY;
  assign M_AXI_wdata[31:0] = m03_regslice_to_m03_couplers_WDATA;
  assign M_AXI_wvalid = m03_regslice_to_m03_couplers_WVALID;
  assign S_ACLK_1 = S_ACLK;
  assign S_ARESETN_1 = S_ARESETN;
  assign S_AXI_arready = m03_couplers_to_auto_cc_ARREADY;
  assign S_AXI_awready = m03_couplers_to_auto_cc_AWREADY;
  assign S_AXI_bresp[1:0] = m03_couplers_to_auto_cc_BRESP;
  assign S_AXI_bvalid = m03_couplers_to_auto_cc_BVALID;
  assign S_AXI_rdata[31:0] = m03_couplers_to_auto_cc_RDATA;
  assign S_AXI_rresp[1:0] = m03_couplers_to_auto_cc_RRESP;
  assign S_AXI_rvalid = m03_couplers_to_auto_cc_RVALID;
  assign S_AXI_wready = m03_couplers_to_auto_cc_WREADY;
  assign m03_couplers_to_auto_cc_ARADDR = S_AXI_araddr[31:0];
  assign m03_couplers_to_auto_cc_ARPROT = S_AXI_arprot[2:0];
  assign m03_couplers_to_auto_cc_ARVALID = S_AXI_arvalid;
  assign m03_couplers_to_auto_cc_AWADDR = S_AXI_awaddr[31:0];
  assign m03_couplers_to_auto_cc_AWPROT = S_AXI_awprot[2:0];
  assign m03_couplers_to_auto_cc_AWVALID = S_AXI_awvalid;
  assign m03_couplers_to_auto_cc_BREADY = S_AXI_bready;
  assign m03_couplers_to_auto_cc_RREADY = S_AXI_rready;
  assign m03_couplers_to_auto_cc_WDATA = S_AXI_wdata[31:0];
  assign m03_couplers_to_auto_cc_WSTRB = S_AXI_wstrb[3:0];
  assign m03_couplers_to_auto_cc_WVALID = S_AXI_wvalid;
  assign m03_regslice_to_m03_couplers_ARREADY = M_AXI_arready;
  assign m03_regslice_to_m03_couplers_AWREADY = M_AXI_awready;
  assign m03_regslice_to_m03_couplers_BRESP = M_AXI_bresp[1:0];
  assign m03_regslice_to_m03_couplers_BVALID = M_AXI_bvalid;
  assign m03_regslice_to_m03_couplers_RDATA = M_AXI_rdata[31:0];
  assign m03_regslice_to_m03_couplers_RRESP = M_AXI_rresp[1:0];
  assign m03_regslice_to_m03_couplers_RVALID = M_AXI_rvalid;
  assign m03_regslice_to_m03_couplers_WREADY = M_AXI_wready;
  xcl_design_auto_cc_0 auto_cc
       (.m_axi_aclk(M_ACLK_1),
        .m_axi_araddr(auto_cc_to_m03_regslice_ARADDR),
        .m_axi_aresetn(M_ARESETN_1),
        .m_axi_arprot(auto_cc_to_m03_regslice_ARPROT),
        .m_axi_arready(auto_cc_to_m03_regslice_ARREADY),
        .m_axi_arvalid(auto_cc_to_m03_regslice_ARVALID),
        .m_axi_awaddr(auto_cc_to_m03_regslice_AWADDR),
        .m_axi_awprot(auto_cc_to_m03_regslice_AWPROT),
        .m_axi_awready(auto_cc_to_m03_regslice_AWREADY),
        .m_axi_awvalid(auto_cc_to_m03_regslice_AWVALID),
        .m_axi_bready(auto_cc_to_m03_regslice_BREADY),
        .m_axi_bresp(auto_cc_to_m03_regslice_BRESP),
        .m_axi_bvalid(auto_cc_to_m03_regslice_BVALID),
        .m_axi_rdata(auto_cc_to_m03_regslice_RDATA),
        .m_axi_rready(auto_cc_to_m03_regslice_RREADY),
        .m_axi_rresp(auto_cc_to_m03_regslice_RRESP),
        .m_axi_rvalid(auto_cc_to_m03_regslice_RVALID),
        .m_axi_wdata(auto_cc_to_m03_regslice_WDATA),
        .m_axi_wready(auto_cc_to_m03_regslice_WREADY),
        .m_axi_wstrb(auto_cc_to_m03_regslice_WSTRB),
        .m_axi_wvalid(auto_cc_to_m03_regslice_WVALID),
        .s_axi_aclk(S_ACLK_1),
        .s_axi_araddr(m03_couplers_to_auto_cc_ARADDR),
        .s_axi_aresetn(S_ARESETN_1),
        .s_axi_arprot(m03_couplers_to_auto_cc_ARPROT),
        .s_axi_arready(m03_couplers_to_auto_cc_ARREADY),
        .s_axi_arvalid(m03_couplers_to_auto_cc_ARVALID),
        .s_axi_awaddr(m03_couplers_to_auto_cc_AWADDR),
        .s_axi_awprot(m03_couplers_to_auto_cc_AWPROT),
        .s_axi_awready(m03_couplers_to_auto_cc_AWREADY),
        .s_axi_awvalid(m03_couplers_to_auto_cc_AWVALID),
        .s_axi_bready(m03_couplers_to_auto_cc_BREADY),
        .s_axi_bresp(m03_couplers_to_auto_cc_BRESP),
        .s_axi_bvalid(m03_couplers_to_auto_cc_BVALID),
        .s_axi_rdata(m03_couplers_to_auto_cc_RDATA),
        .s_axi_rready(m03_couplers_to_auto_cc_RREADY),
        .s_axi_rresp(m03_couplers_to_auto_cc_RRESP),
        .s_axi_rvalid(m03_couplers_to_auto_cc_RVALID),
        .s_axi_wdata(m03_couplers_to_auto_cc_WDATA),
        .s_axi_wready(m03_couplers_to_auto_cc_WREADY),
        .s_axi_wstrb(m03_couplers_to_auto_cc_WSTRB),
        .s_axi_wvalid(m03_couplers_to_auto_cc_WVALID));
  xcl_design_m03_regslice_0 m03_regslice
       (.aclk(M_ACLK_1),
        .aresetn(M_ARESETN_1),
        .m_axi_araddr(m03_regslice_to_m03_couplers_ARADDR),
        .m_axi_arready(m03_regslice_to_m03_couplers_ARREADY),
        .m_axi_arvalid(m03_regslice_to_m03_couplers_ARVALID),
        .m_axi_awaddr(m03_regslice_to_m03_couplers_AWADDR),
        .m_axi_awready(m03_regslice_to_m03_couplers_AWREADY),
        .m_axi_awvalid(m03_regslice_to_m03_couplers_AWVALID),
        .m_axi_bready(m03_regslice_to_m03_couplers_BREADY),
        .m_axi_bresp(m03_regslice_to_m03_couplers_BRESP),
        .m_axi_bvalid(m03_regslice_to_m03_couplers_BVALID),
        .m_axi_rdata(m03_regslice_to_m03_couplers_RDATA),
        .m_axi_rready(m03_regslice_to_m03_couplers_RREADY),
        .m_axi_rresp(m03_regslice_to_m03_couplers_RRESP),
        .m_axi_rvalid(m03_regslice_to_m03_couplers_RVALID),
        .m_axi_wdata(m03_regslice_to_m03_couplers_WDATA),
        .m_axi_wready(m03_regslice_to_m03_couplers_WREADY),
        .m_axi_wvalid(m03_regslice_to_m03_couplers_WVALID),
        .s_axi_araddr(auto_cc_to_m03_regslice_ARADDR),
        .s_axi_arprot(auto_cc_to_m03_regslice_ARPROT),
        .s_axi_arready(auto_cc_to_m03_regslice_ARREADY),
        .s_axi_arvalid(auto_cc_to_m03_regslice_ARVALID),
        .s_axi_awaddr(auto_cc_to_m03_regslice_AWADDR),
        .s_axi_awprot(auto_cc_to_m03_regslice_AWPROT),
        .s_axi_awready(auto_cc_to_m03_regslice_AWREADY),
        .s_axi_awvalid(auto_cc_to_m03_regslice_AWVALID),
        .s_axi_bready(auto_cc_to_m03_regslice_BREADY),
        .s_axi_bresp(auto_cc_to_m03_regslice_BRESP),
        .s_axi_bvalid(auto_cc_to_m03_regslice_BVALID),
        .s_axi_rdata(auto_cc_to_m03_regslice_RDATA),
        .s_axi_rready(auto_cc_to_m03_regslice_RREADY),
        .s_axi_rresp(auto_cc_to_m03_regslice_RRESP),
        .s_axi_rvalid(auto_cc_to_m03_regslice_RVALID),
        .s_axi_wdata(auto_cc_to_m03_regslice_WDATA),
        .s_axi_wready(auto_cc_to_m03_regslice_WREADY),
        .s_axi_wstrb(auto_cc_to_m03_regslice_WSTRB),
        .s_axi_wvalid(auto_cc_to_m03_regslice_WVALID));
endmodule

module m04_couplers_imp_1A1MMKA
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arprot,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awprot,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_araddr;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  input [2:0]S_AXI_arprot;
  output S_AXI_arready;
  input S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  input [2:0]S_AXI_awprot;
  output S_AXI_awready;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire M_ACLK_1;
  wire M_ARESETN_1;
  wire S_ACLK_1;
  wire S_ARESETN_1;
  wire [31:0]auto_cc_to_m04_regslice_ARADDR;
  wire [2:0]auto_cc_to_m04_regslice_ARPROT;
  wire auto_cc_to_m04_regslice_ARREADY;
  wire auto_cc_to_m04_regslice_ARVALID;
  wire [31:0]auto_cc_to_m04_regslice_AWADDR;
  wire [2:0]auto_cc_to_m04_regslice_AWPROT;
  wire auto_cc_to_m04_regslice_AWREADY;
  wire auto_cc_to_m04_regslice_AWVALID;
  wire auto_cc_to_m04_regslice_BREADY;
  wire [1:0]auto_cc_to_m04_regslice_BRESP;
  wire auto_cc_to_m04_regslice_BVALID;
  wire [31:0]auto_cc_to_m04_regslice_RDATA;
  wire auto_cc_to_m04_regslice_RREADY;
  wire [1:0]auto_cc_to_m04_regslice_RRESP;
  wire auto_cc_to_m04_regslice_RVALID;
  wire [31:0]auto_cc_to_m04_regslice_WDATA;
  wire auto_cc_to_m04_regslice_WREADY;
  wire [3:0]auto_cc_to_m04_regslice_WSTRB;
  wire auto_cc_to_m04_regslice_WVALID;
  wire [31:0]m04_couplers_to_auto_cc_ARADDR;
  wire [2:0]m04_couplers_to_auto_cc_ARPROT;
  wire m04_couplers_to_auto_cc_ARREADY;
  wire m04_couplers_to_auto_cc_ARVALID;
  wire [31:0]m04_couplers_to_auto_cc_AWADDR;
  wire [2:0]m04_couplers_to_auto_cc_AWPROT;
  wire m04_couplers_to_auto_cc_AWREADY;
  wire m04_couplers_to_auto_cc_AWVALID;
  wire m04_couplers_to_auto_cc_BREADY;
  wire [1:0]m04_couplers_to_auto_cc_BRESP;
  wire m04_couplers_to_auto_cc_BVALID;
  wire [31:0]m04_couplers_to_auto_cc_RDATA;
  wire m04_couplers_to_auto_cc_RREADY;
  wire [1:0]m04_couplers_to_auto_cc_RRESP;
  wire m04_couplers_to_auto_cc_RVALID;
  wire [31:0]m04_couplers_to_auto_cc_WDATA;
  wire m04_couplers_to_auto_cc_WREADY;
  wire [3:0]m04_couplers_to_auto_cc_WSTRB;
  wire m04_couplers_to_auto_cc_WVALID;
  wire [31:0]m04_regslice_to_m04_couplers_ARADDR;
  wire m04_regslice_to_m04_couplers_ARREADY;
  wire m04_regslice_to_m04_couplers_ARVALID;
  wire [31:0]m04_regslice_to_m04_couplers_AWADDR;
  wire m04_regslice_to_m04_couplers_AWREADY;
  wire m04_regslice_to_m04_couplers_AWVALID;
  wire m04_regslice_to_m04_couplers_BREADY;
  wire [1:0]m04_regslice_to_m04_couplers_BRESP;
  wire m04_regslice_to_m04_couplers_BVALID;
  wire [31:0]m04_regslice_to_m04_couplers_RDATA;
  wire m04_regslice_to_m04_couplers_RREADY;
  wire [1:0]m04_regslice_to_m04_couplers_RRESP;
  wire m04_regslice_to_m04_couplers_RVALID;
  wire [31:0]m04_regslice_to_m04_couplers_WDATA;
  wire m04_regslice_to_m04_couplers_WREADY;
  wire m04_regslice_to_m04_couplers_WVALID;

  assign M_ACLK_1 = M_ACLK;
  assign M_ARESETN_1 = M_ARESETN;
  assign M_AXI_araddr[31:0] = m04_regslice_to_m04_couplers_ARADDR;
  assign M_AXI_arvalid = m04_regslice_to_m04_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = m04_regslice_to_m04_couplers_AWADDR;
  assign M_AXI_awvalid = m04_regslice_to_m04_couplers_AWVALID;
  assign M_AXI_bready = m04_regslice_to_m04_couplers_BREADY;
  assign M_AXI_rready = m04_regslice_to_m04_couplers_RREADY;
  assign M_AXI_wdata[31:0] = m04_regslice_to_m04_couplers_WDATA;
  assign M_AXI_wvalid = m04_regslice_to_m04_couplers_WVALID;
  assign S_ACLK_1 = S_ACLK;
  assign S_ARESETN_1 = S_ARESETN;
  assign S_AXI_arready = m04_couplers_to_auto_cc_ARREADY;
  assign S_AXI_awready = m04_couplers_to_auto_cc_AWREADY;
  assign S_AXI_bresp[1:0] = m04_couplers_to_auto_cc_BRESP;
  assign S_AXI_bvalid = m04_couplers_to_auto_cc_BVALID;
  assign S_AXI_rdata[31:0] = m04_couplers_to_auto_cc_RDATA;
  assign S_AXI_rresp[1:0] = m04_couplers_to_auto_cc_RRESP;
  assign S_AXI_rvalid = m04_couplers_to_auto_cc_RVALID;
  assign S_AXI_wready = m04_couplers_to_auto_cc_WREADY;
  assign m04_couplers_to_auto_cc_ARADDR = S_AXI_araddr[31:0];
  assign m04_couplers_to_auto_cc_ARPROT = S_AXI_arprot[2:0];
  assign m04_couplers_to_auto_cc_ARVALID = S_AXI_arvalid;
  assign m04_couplers_to_auto_cc_AWADDR = S_AXI_awaddr[31:0];
  assign m04_couplers_to_auto_cc_AWPROT = S_AXI_awprot[2:0];
  assign m04_couplers_to_auto_cc_AWVALID = S_AXI_awvalid;
  assign m04_couplers_to_auto_cc_BREADY = S_AXI_bready;
  assign m04_couplers_to_auto_cc_RREADY = S_AXI_rready;
  assign m04_couplers_to_auto_cc_WDATA = S_AXI_wdata[31:0];
  assign m04_couplers_to_auto_cc_WSTRB = S_AXI_wstrb[3:0];
  assign m04_couplers_to_auto_cc_WVALID = S_AXI_wvalid;
  assign m04_regslice_to_m04_couplers_ARREADY = M_AXI_arready;
  assign m04_regslice_to_m04_couplers_AWREADY = M_AXI_awready;
  assign m04_regslice_to_m04_couplers_BRESP = M_AXI_bresp[1:0];
  assign m04_regslice_to_m04_couplers_BVALID = M_AXI_bvalid;
  assign m04_regslice_to_m04_couplers_RDATA = M_AXI_rdata[31:0];
  assign m04_regslice_to_m04_couplers_RRESP = M_AXI_rresp[1:0];
  assign m04_regslice_to_m04_couplers_RVALID = M_AXI_rvalid;
  assign m04_regslice_to_m04_couplers_WREADY = M_AXI_wready;
  xcl_design_auto_cc_1 auto_cc
       (.m_axi_aclk(M_ACLK_1),
        .m_axi_araddr(auto_cc_to_m04_regslice_ARADDR),
        .m_axi_aresetn(M_ARESETN_1),
        .m_axi_arprot(auto_cc_to_m04_regslice_ARPROT),
        .m_axi_arready(auto_cc_to_m04_regslice_ARREADY),
        .m_axi_arvalid(auto_cc_to_m04_regslice_ARVALID),
        .m_axi_awaddr(auto_cc_to_m04_regslice_AWADDR),
        .m_axi_awprot(auto_cc_to_m04_regslice_AWPROT),
        .m_axi_awready(auto_cc_to_m04_regslice_AWREADY),
        .m_axi_awvalid(auto_cc_to_m04_regslice_AWVALID),
        .m_axi_bready(auto_cc_to_m04_regslice_BREADY),
        .m_axi_bresp(auto_cc_to_m04_regslice_BRESP),
        .m_axi_bvalid(auto_cc_to_m04_regslice_BVALID),
        .m_axi_rdata(auto_cc_to_m04_regslice_RDATA),
        .m_axi_rready(auto_cc_to_m04_regslice_RREADY),
        .m_axi_rresp(auto_cc_to_m04_regslice_RRESP),
        .m_axi_rvalid(auto_cc_to_m04_regslice_RVALID),
        .m_axi_wdata(auto_cc_to_m04_regslice_WDATA),
        .m_axi_wready(auto_cc_to_m04_regslice_WREADY),
        .m_axi_wstrb(auto_cc_to_m04_regslice_WSTRB),
        .m_axi_wvalid(auto_cc_to_m04_regslice_WVALID),
        .s_axi_aclk(S_ACLK_1),
        .s_axi_araddr(m04_couplers_to_auto_cc_ARADDR),
        .s_axi_aresetn(S_ARESETN_1),
        .s_axi_arprot(m04_couplers_to_auto_cc_ARPROT),
        .s_axi_arready(m04_couplers_to_auto_cc_ARREADY),
        .s_axi_arvalid(m04_couplers_to_auto_cc_ARVALID),
        .s_axi_awaddr(m04_couplers_to_auto_cc_AWADDR),
        .s_axi_awprot(m04_couplers_to_auto_cc_AWPROT),
        .s_axi_awready(m04_couplers_to_auto_cc_AWREADY),
        .s_axi_awvalid(m04_couplers_to_auto_cc_AWVALID),
        .s_axi_bready(m04_couplers_to_auto_cc_BREADY),
        .s_axi_bresp(m04_couplers_to_auto_cc_BRESP),
        .s_axi_bvalid(m04_couplers_to_auto_cc_BVALID),
        .s_axi_rdata(m04_couplers_to_auto_cc_RDATA),
        .s_axi_rready(m04_couplers_to_auto_cc_RREADY),
        .s_axi_rresp(m04_couplers_to_auto_cc_RRESP),
        .s_axi_rvalid(m04_couplers_to_auto_cc_RVALID),
        .s_axi_wdata(m04_couplers_to_auto_cc_WDATA),
        .s_axi_wready(m04_couplers_to_auto_cc_WREADY),
        .s_axi_wstrb(m04_couplers_to_auto_cc_WSTRB),
        .s_axi_wvalid(m04_couplers_to_auto_cc_WVALID));
  xcl_design_m04_regslice_0 m04_regslice
       (.aclk(M_ACLK_1),
        .aresetn(M_ARESETN_1),
        .m_axi_araddr(m04_regslice_to_m04_couplers_ARADDR),
        .m_axi_arready(m04_regslice_to_m04_couplers_ARREADY),
        .m_axi_arvalid(m04_regslice_to_m04_couplers_ARVALID),
        .m_axi_awaddr(m04_regslice_to_m04_couplers_AWADDR),
        .m_axi_awready(m04_regslice_to_m04_couplers_AWREADY),
        .m_axi_awvalid(m04_regslice_to_m04_couplers_AWVALID),
        .m_axi_bready(m04_regslice_to_m04_couplers_BREADY),
        .m_axi_bresp(m04_regslice_to_m04_couplers_BRESP),
        .m_axi_bvalid(m04_regslice_to_m04_couplers_BVALID),
        .m_axi_rdata(m04_regslice_to_m04_couplers_RDATA),
        .m_axi_rready(m04_regslice_to_m04_couplers_RREADY),
        .m_axi_rresp(m04_regslice_to_m04_couplers_RRESP),
        .m_axi_rvalid(m04_regslice_to_m04_couplers_RVALID),
        .m_axi_wdata(m04_regslice_to_m04_couplers_WDATA),
        .m_axi_wready(m04_regslice_to_m04_couplers_WREADY),
        .m_axi_wvalid(m04_regslice_to_m04_couplers_WVALID),
        .s_axi_araddr(auto_cc_to_m04_regslice_ARADDR),
        .s_axi_arprot(auto_cc_to_m04_regslice_ARPROT),
        .s_axi_arready(auto_cc_to_m04_regslice_ARREADY),
        .s_axi_arvalid(auto_cc_to_m04_regslice_ARVALID),
        .s_axi_awaddr(auto_cc_to_m04_regslice_AWADDR),
        .s_axi_awprot(auto_cc_to_m04_regslice_AWPROT),
        .s_axi_awready(auto_cc_to_m04_regslice_AWREADY),
        .s_axi_awvalid(auto_cc_to_m04_regslice_AWVALID),
        .s_axi_bready(auto_cc_to_m04_regslice_BREADY),
        .s_axi_bresp(auto_cc_to_m04_regslice_BRESP),
        .s_axi_bvalid(auto_cc_to_m04_regslice_BVALID),
        .s_axi_rdata(auto_cc_to_m04_regslice_RDATA),
        .s_axi_rready(auto_cc_to_m04_regslice_RREADY),
        .s_axi_rresp(auto_cc_to_m04_regslice_RRESP),
        .s_axi_rvalid(auto_cc_to_m04_regslice_RVALID),
        .s_axi_wdata(auto_cc_to_m04_regslice_WDATA),
        .s_axi_wready(auto_cc_to_m04_regslice_WREADY),
        .s_axi_wstrb(auto_cc_to_m04_regslice_WSTRB),
        .s_axi_wvalid(auto_cc_to_m04_regslice_WVALID));
endmodule

module m05_couplers_imp_1HFM0OS
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arprot,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awprot,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arprot,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awprot,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [16:0]M_AXI_araddr;
  output [2:0]M_AXI_arprot;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [16:0]M_AXI_awaddr;
  output [2:0]M_AXI_awprot;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  input [2:0]S_AXI_arprot;
  output S_AXI_arready;
  input S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  input [2:0]S_AXI_awprot;
  output S_AXI_awready;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire M_ACLK_1;
  wire M_ARESETN_1;
  wire [31:0]m05_couplers_to_m05_regslice_ARADDR;
  wire [2:0]m05_couplers_to_m05_regslice_ARPROT;
  wire m05_couplers_to_m05_regslice_ARREADY;
  wire m05_couplers_to_m05_regslice_ARVALID;
  wire [31:0]m05_couplers_to_m05_regslice_AWADDR;
  wire [2:0]m05_couplers_to_m05_regslice_AWPROT;
  wire m05_couplers_to_m05_regslice_AWREADY;
  wire m05_couplers_to_m05_regslice_AWVALID;
  wire m05_couplers_to_m05_regslice_BREADY;
  wire [1:0]m05_couplers_to_m05_regslice_BRESP;
  wire m05_couplers_to_m05_regslice_BVALID;
  wire [31:0]m05_couplers_to_m05_regslice_RDATA;
  wire m05_couplers_to_m05_regslice_RREADY;
  wire [1:0]m05_couplers_to_m05_regslice_RRESP;
  wire m05_couplers_to_m05_regslice_RVALID;
  wire [31:0]m05_couplers_to_m05_regslice_WDATA;
  wire m05_couplers_to_m05_regslice_WREADY;
  wire [3:0]m05_couplers_to_m05_regslice_WSTRB;
  wire m05_couplers_to_m05_regslice_WVALID;
  wire [16:0]m05_regslice_to_m05_couplers_ARADDR;
  wire [2:0]m05_regslice_to_m05_couplers_ARPROT;
  wire m05_regslice_to_m05_couplers_ARREADY;
  wire m05_regslice_to_m05_couplers_ARVALID;
  wire [16:0]m05_regslice_to_m05_couplers_AWADDR;
  wire [2:0]m05_regslice_to_m05_couplers_AWPROT;
  wire m05_regslice_to_m05_couplers_AWREADY;
  wire m05_regslice_to_m05_couplers_AWVALID;
  wire m05_regslice_to_m05_couplers_BREADY;
  wire [1:0]m05_regslice_to_m05_couplers_BRESP;
  wire m05_regslice_to_m05_couplers_BVALID;
  wire [31:0]m05_regslice_to_m05_couplers_RDATA;
  wire m05_regslice_to_m05_couplers_RREADY;
  wire [1:0]m05_regslice_to_m05_couplers_RRESP;
  wire m05_regslice_to_m05_couplers_RVALID;
  wire [31:0]m05_regslice_to_m05_couplers_WDATA;
  wire m05_regslice_to_m05_couplers_WREADY;
  wire [3:0]m05_regslice_to_m05_couplers_WSTRB;
  wire m05_regslice_to_m05_couplers_WVALID;

  assign M_ACLK_1 = M_ACLK;
  assign M_ARESETN_1 = M_ARESETN;
  assign M_AXI_araddr[16:0] = m05_regslice_to_m05_couplers_ARADDR;
  assign M_AXI_arprot[2:0] = m05_regslice_to_m05_couplers_ARPROT;
  assign M_AXI_arvalid = m05_regslice_to_m05_couplers_ARVALID;
  assign M_AXI_awaddr[16:0] = m05_regslice_to_m05_couplers_AWADDR;
  assign M_AXI_awprot[2:0] = m05_regslice_to_m05_couplers_AWPROT;
  assign M_AXI_awvalid = m05_regslice_to_m05_couplers_AWVALID;
  assign M_AXI_bready = m05_regslice_to_m05_couplers_BREADY;
  assign M_AXI_rready = m05_regslice_to_m05_couplers_RREADY;
  assign M_AXI_wdata[31:0] = m05_regslice_to_m05_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = m05_regslice_to_m05_couplers_WSTRB;
  assign M_AXI_wvalid = m05_regslice_to_m05_couplers_WVALID;
  assign S_AXI_arready = m05_couplers_to_m05_regslice_ARREADY;
  assign S_AXI_awready = m05_couplers_to_m05_regslice_AWREADY;
  assign S_AXI_bresp[1:0] = m05_couplers_to_m05_regslice_BRESP;
  assign S_AXI_bvalid = m05_couplers_to_m05_regslice_BVALID;
  assign S_AXI_rdata[31:0] = m05_couplers_to_m05_regslice_RDATA;
  assign S_AXI_rresp[1:0] = m05_couplers_to_m05_regslice_RRESP;
  assign S_AXI_rvalid = m05_couplers_to_m05_regslice_RVALID;
  assign S_AXI_wready = m05_couplers_to_m05_regslice_WREADY;
  assign m05_couplers_to_m05_regslice_ARADDR = S_AXI_araddr[31:0];
  assign m05_couplers_to_m05_regslice_ARPROT = S_AXI_arprot[2:0];
  assign m05_couplers_to_m05_regslice_ARVALID = S_AXI_arvalid;
  assign m05_couplers_to_m05_regslice_AWADDR = S_AXI_awaddr[31:0];
  assign m05_couplers_to_m05_regslice_AWPROT = S_AXI_awprot[2:0];
  assign m05_couplers_to_m05_regslice_AWVALID = S_AXI_awvalid;
  assign m05_couplers_to_m05_regslice_BREADY = S_AXI_bready;
  assign m05_couplers_to_m05_regslice_RREADY = S_AXI_rready;
  assign m05_couplers_to_m05_regslice_WDATA = S_AXI_wdata[31:0];
  assign m05_couplers_to_m05_regslice_WSTRB = S_AXI_wstrb[3:0];
  assign m05_couplers_to_m05_regslice_WVALID = S_AXI_wvalid;
  assign m05_regslice_to_m05_couplers_ARREADY = M_AXI_arready;
  assign m05_regslice_to_m05_couplers_AWREADY = M_AXI_awready;
  assign m05_regslice_to_m05_couplers_BRESP = M_AXI_bresp[1:0];
  assign m05_regslice_to_m05_couplers_BVALID = M_AXI_bvalid;
  assign m05_regslice_to_m05_couplers_RDATA = M_AXI_rdata[31:0];
  assign m05_regslice_to_m05_couplers_RRESP = M_AXI_rresp[1:0];
  assign m05_regslice_to_m05_couplers_RVALID = M_AXI_rvalid;
  assign m05_regslice_to_m05_couplers_WREADY = M_AXI_wready;
  xcl_design_m05_regslice_0 m05_regslice
       (.aclk(M_ACLK_1),
        .aresetn(M_ARESETN_1),
        .m_axi_araddr(m05_regslice_to_m05_couplers_ARADDR),
        .m_axi_arprot(m05_regslice_to_m05_couplers_ARPROT),
        .m_axi_arready(m05_regslice_to_m05_couplers_ARREADY),
        .m_axi_arvalid(m05_regslice_to_m05_couplers_ARVALID),
        .m_axi_awaddr(m05_regslice_to_m05_couplers_AWADDR),
        .m_axi_awprot(m05_regslice_to_m05_couplers_AWPROT),
        .m_axi_awready(m05_regslice_to_m05_couplers_AWREADY),
        .m_axi_awvalid(m05_regslice_to_m05_couplers_AWVALID),
        .m_axi_bready(m05_regslice_to_m05_couplers_BREADY),
        .m_axi_bresp(m05_regslice_to_m05_couplers_BRESP),
        .m_axi_bvalid(m05_regslice_to_m05_couplers_BVALID),
        .m_axi_rdata(m05_regslice_to_m05_couplers_RDATA),
        .m_axi_rready(m05_regslice_to_m05_couplers_RREADY),
        .m_axi_rresp(m05_regslice_to_m05_couplers_RRESP),
        .m_axi_rvalid(m05_regslice_to_m05_couplers_RVALID),
        .m_axi_wdata(m05_regslice_to_m05_couplers_WDATA),
        .m_axi_wready(m05_regslice_to_m05_couplers_WREADY),
        .m_axi_wstrb(m05_regslice_to_m05_couplers_WSTRB),
        .m_axi_wvalid(m05_regslice_to_m05_couplers_WVALID),
        .s_axi_araddr(m05_couplers_to_m05_regslice_ARADDR[16:0]),
        .s_axi_arprot(m05_couplers_to_m05_regslice_ARPROT),
        .s_axi_arready(m05_couplers_to_m05_regslice_ARREADY),
        .s_axi_arvalid(m05_couplers_to_m05_regslice_ARVALID),
        .s_axi_awaddr(m05_couplers_to_m05_regslice_AWADDR[16:0]),
        .s_axi_awprot(m05_couplers_to_m05_regslice_AWPROT),
        .s_axi_awready(m05_couplers_to_m05_regslice_AWREADY),
        .s_axi_awvalid(m05_couplers_to_m05_regslice_AWVALID),
        .s_axi_bready(m05_couplers_to_m05_regslice_BREADY),
        .s_axi_bresp(m05_couplers_to_m05_regslice_BRESP),
        .s_axi_bvalid(m05_couplers_to_m05_regslice_BVALID),
        .s_axi_rdata(m05_couplers_to_m05_regslice_RDATA),
        .s_axi_rready(m05_couplers_to_m05_regslice_RREADY),
        .s_axi_rresp(m05_couplers_to_m05_regslice_RRESP),
        .s_axi_rvalid(m05_couplers_to_m05_regslice_RVALID),
        .s_axi_wdata(m05_couplers_to_m05_regslice_WDATA),
        .s_axi_wready(m05_couplers_to_m05_regslice_WREADY),
        .s_axi_wstrb(m05_couplers_to_m05_regslice_WSTRB),
        .s_axi_wvalid(m05_couplers_to_m05_regslice_WVALID));
endmodule

module m06_couplers_imp_UV4Z7A
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arprot,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awprot,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [8:0]M_AXI_araddr;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [8:0]M_AXI_awaddr;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  input [2:0]S_AXI_arprot;
  output S_AXI_arready;
  input S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  input [2:0]S_AXI_awprot;
  output S_AXI_awready;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire M_ACLK_1;
  wire M_ARESETN_1;
  wire [31:0]m06_couplers_to_m06_regslice_ARADDR;
  wire [2:0]m06_couplers_to_m06_regslice_ARPROT;
  wire m06_couplers_to_m06_regslice_ARREADY;
  wire m06_couplers_to_m06_regslice_ARVALID;
  wire [31:0]m06_couplers_to_m06_regslice_AWADDR;
  wire [2:0]m06_couplers_to_m06_regslice_AWPROT;
  wire m06_couplers_to_m06_regslice_AWREADY;
  wire m06_couplers_to_m06_regslice_AWVALID;
  wire m06_couplers_to_m06_regslice_BREADY;
  wire [1:0]m06_couplers_to_m06_regslice_BRESP;
  wire m06_couplers_to_m06_regslice_BVALID;
  wire [31:0]m06_couplers_to_m06_regslice_RDATA;
  wire m06_couplers_to_m06_regslice_RREADY;
  wire [1:0]m06_couplers_to_m06_regslice_RRESP;
  wire m06_couplers_to_m06_regslice_RVALID;
  wire [31:0]m06_couplers_to_m06_regslice_WDATA;
  wire m06_couplers_to_m06_regslice_WREADY;
  wire [3:0]m06_couplers_to_m06_regslice_WSTRB;
  wire m06_couplers_to_m06_regslice_WVALID;
  wire [8:0]m06_regslice_to_m06_couplers_ARADDR;
  wire m06_regslice_to_m06_couplers_ARREADY;
  wire m06_regslice_to_m06_couplers_ARVALID;
  wire [8:0]m06_regslice_to_m06_couplers_AWADDR;
  wire m06_regslice_to_m06_couplers_AWREADY;
  wire m06_regslice_to_m06_couplers_AWVALID;
  wire m06_regslice_to_m06_couplers_BREADY;
  wire [1:0]m06_regslice_to_m06_couplers_BRESP;
  wire m06_regslice_to_m06_couplers_BVALID;
  wire [31:0]m06_regslice_to_m06_couplers_RDATA;
  wire m06_regslice_to_m06_couplers_RREADY;
  wire [1:0]m06_regslice_to_m06_couplers_RRESP;
  wire m06_regslice_to_m06_couplers_RVALID;
  wire [31:0]m06_regslice_to_m06_couplers_WDATA;
  wire m06_regslice_to_m06_couplers_WREADY;
  wire [3:0]m06_regslice_to_m06_couplers_WSTRB;
  wire m06_regslice_to_m06_couplers_WVALID;

  assign M_ACLK_1 = M_ACLK;
  assign M_ARESETN_1 = M_ARESETN;
  assign M_AXI_araddr[8:0] = m06_regslice_to_m06_couplers_ARADDR;
  assign M_AXI_arvalid = m06_regslice_to_m06_couplers_ARVALID;
  assign M_AXI_awaddr[8:0] = m06_regslice_to_m06_couplers_AWADDR;
  assign M_AXI_awvalid = m06_regslice_to_m06_couplers_AWVALID;
  assign M_AXI_bready = m06_regslice_to_m06_couplers_BREADY;
  assign M_AXI_rready = m06_regslice_to_m06_couplers_RREADY;
  assign M_AXI_wdata[31:0] = m06_regslice_to_m06_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = m06_regslice_to_m06_couplers_WSTRB;
  assign M_AXI_wvalid = m06_regslice_to_m06_couplers_WVALID;
  assign S_AXI_arready = m06_couplers_to_m06_regslice_ARREADY;
  assign S_AXI_awready = m06_couplers_to_m06_regslice_AWREADY;
  assign S_AXI_bresp[1:0] = m06_couplers_to_m06_regslice_BRESP;
  assign S_AXI_bvalid = m06_couplers_to_m06_regslice_BVALID;
  assign S_AXI_rdata[31:0] = m06_couplers_to_m06_regslice_RDATA;
  assign S_AXI_rresp[1:0] = m06_couplers_to_m06_regslice_RRESP;
  assign S_AXI_rvalid = m06_couplers_to_m06_regslice_RVALID;
  assign S_AXI_wready = m06_couplers_to_m06_regslice_WREADY;
  assign m06_couplers_to_m06_regslice_ARADDR = S_AXI_araddr[31:0];
  assign m06_couplers_to_m06_regslice_ARPROT = S_AXI_arprot[2:0];
  assign m06_couplers_to_m06_regslice_ARVALID = S_AXI_arvalid;
  assign m06_couplers_to_m06_regslice_AWADDR = S_AXI_awaddr[31:0];
  assign m06_couplers_to_m06_regslice_AWPROT = S_AXI_awprot[2:0];
  assign m06_couplers_to_m06_regslice_AWVALID = S_AXI_awvalid;
  assign m06_couplers_to_m06_regslice_BREADY = S_AXI_bready;
  assign m06_couplers_to_m06_regslice_RREADY = S_AXI_rready;
  assign m06_couplers_to_m06_regslice_WDATA = S_AXI_wdata[31:0];
  assign m06_couplers_to_m06_regslice_WSTRB = S_AXI_wstrb[3:0];
  assign m06_couplers_to_m06_regslice_WVALID = S_AXI_wvalid;
  assign m06_regslice_to_m06_couplers_ARREADY = M_AXI_arready;
  assign m06_regslice_to_m06_couplers_AWREADY = M_AXI_awready;
  assign m06_regslice_to_m06_couplers_BRESP = M_AXI_bresp[1:0];
  assign m06_regslice_to_m06_couplers_BVALID = M_AXI_bvalid;
  assign m06_regslice_to_m06_couplers_RDATA = M_AXI_rdata[31:0];
  assign m06_regslice_to_m06_couplers_RRESP = M_AXI_rresp[1:0];
  assign m06_regslice_to_m06_couplers_RVALID = M_AXI_rvalid;
  assign m06_regslice_to_m06_couplers_WREADY = M_AXI_wready;
  xcl_design_m06_regslice_0 m06_regslice
       (.aclk(M_ACLK_1),
        .aresetn(M_ARESETN_1),
        .m_axi_araddr(m06_regslice_to_m06_couplers_ARADDR),
        .m_axi_arready(m06_regslice_to_m06_couplers_ARREADY),
        .m_axi_arvalid(m06_regslice_to_m06_couplers_ARVALID),
        .m_axi_awaddr(m06_regslice_to_m06_couplers_AWADDR),
        .m_axi_awready(m06_regslice_to_m06_couplers_AWREADY),
        .m_axi_awvalid(m06_regslice_to_m06_couplers_AWVALID),
        .m_axi_bready(m06_regslice_to_m06_couplers_BREADY),
        .m_axi_bresp(m06_regslice_to_m06_couplers_BRESP),
        .m_axi_bvalid(m06_regslice_to_m06_couplers_BVALID),
        .m_axi_rdata(m06_regslice_to_m06_couplers_RDATA),
        .m_axi_rready(m06_regslice_to_m06_couplers_RREADY),
        .m_axi_rresp(m06_regslice_to_m06_couplers_RRESP),
        .m_axi_rvalid(m06_regslice_to_m06_couplers_RVALID),
        .m_axi_wdata(m06_regslice_to_m06_couplers_WDATA),
        .m_axi_wready(m06_regslice_to_m06_couplers_WREADY),
        .m_axi_wstrb(m06_regslice_to_m06_couplers_WSTRB),
        .m_axi_wvalid(m06_regslice_to_m06_couplers_WVALID),
        .s_axi_araddr(m06_couplers_to_m06_regslice_ARADDR[8:0]),
        .s_axi_arprot(m06_couplers_to_m06_regslice_ARPROT),
        .s_axi_arready(m06_couplers_to_m06_regslice_ARREADY),
        .s_axi_arvalid(m06_couplers_to_m06_regslice_ARVALID),
        .s_axi_awaddr(m06_couplers_to_m06_regslice_AWADDR[8:0]),
        .s_axi_awprot(m06_couplers_to_m06_regslice_AWPROT),
        .s_axi_awready(m06_couplers_to_m06_regslice_AWREADY),
        .s_axi_awvalid(m06_couplers_to_m06_regslice_AWVALID),
        .s_axi_bready(m06_couplers_to_m06_regslice_BREADY),
        .s_axi_bresp(m06_couplers_to_m06_regslice_BRESP),
        .s_axi_bvalid(m06_couplers_to_m06_regslice_BVALID),
        .s_axi_rdata(m06_couplers_to_m06_regslice_RDATA),
        .s_axi_rready(m06_couplers_to_m06_regslice_RREADY),
        .s_axi_rresp(m06_couplers_to_m06_regslice_RRESP),
        .s_axi_rvalid(m06_couplers_to_m06_regslice_RVALID),
        .s_axi_wdata(m06_couplers_to_m06_regslice_WDATA),
        .s_axi_wready(m06_couplers_to_m06_regslice_WREADY),
        .s_axi_wstrb(m06_couplers_to_m06_regslice_WSTRB),
        .s_axi_wvalid(m06_couplers_to_m06_regslice_WVALID));
endmodule

module m07_couplers_imp_2VF0XC
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arprot,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awprot,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [8:0]M_AXI_araddr;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [8:0]M_AXI_awaddr;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  input [2:0]S_AXI_arprot;
  output S_AXI_arready;
  input S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  input [2:0]S_AXI_awprot;
  output S_AXI_awready;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire M_ACLK_1;
  wire M_ARESETN_1;
  wire [31:0]m07_couplers_to_m07_regslice_ARADDR;
  wire [2:0]m07_couplers_to_m07_regslice_ARPROT;
  wire m07_couplers_to_m07_regslice_ARREADY;
  wire m07_couplers_to_m07_regslice_ARVALID;
  wire [31:0]m07_couplers_to_m07_regslice_AWADDR;
  wire [2:0]m07_couplers_to_m07_regslice_AWPROT;
  wire m07_couplers_to_m07_regslice_AWREADY;
  wire m07_couplers_to_m07_regslice_AWVALID;
  wire m07_couplers_to_m07_regslice_BREADY;
  wire [1:0]m07_couplers_to_m07_regslice_BRESP;
  wire m07_couplers_to_m07_regslice_BVALID;
  wire [31:0]m07_couplers_to_m07_regslice_RDATA;
  wire m07_couplers_to_m07_regslice_RREADY;
  wire [1:0]m07_couplers_to_m07_regslice_RRESP;
  wire m07_couplers_to_m07_regslice_RVALID;
  wire [31:0]m07_couplers_to_m07_regslice_WDATA;
  wire m07_couplers_to_m07_regslice_WREADY;
  wire [3:0]m07_couplers_to_m07_regslice_WSTRB;
  wire m07_couplers_to_m07_regslice_WVALID;
  wire [8:0]m07_regslice_to_m07_couplers_ARADDR;
  wire m07_regslice_to_m07_couplers_ARREADY;
  wire m07_regslice_to_m07_couplers_ARVALID;
  wire [8:0]m07_regslice_to_m07_couplers_AWADDR;
  wire m07_regslice_to_m07_couplers_AWREADY;
  wire m07_regslice_to_m07_couplers_AWVALID;
  wire m07_regslice_to_m07_couplers_BREADY;
  wire [1:0]m07_regslice_to_m07_couplers_BRESP;
  wire m07_regslice_to_m07_couplers_BVALID;
  wire [31:0]m07_regslice_to_m07_couplers_RDATA;
  wire m07_regslice_to_m07_couplers_RREADY;
  wire [1:0]m07_regslice_to_m07_couplers_RRESP;
  wire m07_regslice_to_m07_couplers_RVALID;
  wire [31:0]m07_regslice_to_m07_couplers_WDATA;
  wire m07_regslice_to_m07_couplers_WREADY;
  wire [3:0]m07_regslice_to_m07_couplers_WSTRB;
  wire m07_regslice_to_m07_couplers_WVALID;

  assign M_ACLK_1 = M_ACLK;
  assign M_ARESETN_1 = M_ARESETN;
  assign M_AXI_araddr[8:0] = m07_regslice_to_m07_couplers_ARADDR;
  assign M_AXI_arvalid = m07_regslice_to_m07_couplers_ARVALID;
  assign M_AXI_awaddr[8:0] = m07_regslice_to_m07_couplers_AWADDR;
  assign M_AXI_awvalid = m07_regslice_to_m07_couplers_AWVALID;
  assign M_AXI_bready = m07_regslice_to_m07_couplers_BREADY;
  assign M_AXI_rready = m07_regslice_to_m07_couplers_RREADY;
  assign M_AXI_wdata[31:0] = m07_regslice_to_m07_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = m07_regslice_to_m07_couplers_WSTRB;
  assign M_AXI_wvalid = m07_regslice_to_m07_couplers_WVALID;
  assign S_AXI_arready = m07_couplers_to_m07_regslice_ARREADY;
  assign S_AXI_awready = m07_couplers_to_m07_regslice_AWREADY;
  assign S_AXI_bresp[1:0] = m07_couplers_to_m07_regslice_BRESP;
  assign S_AXI_bvalid = m07_couplers_to_m07_regslice_BVALID;
  assign S_AXI_rdata[31:0] = m07_couplers_to_m07_regslice_RDATA;
  assign S_AXI_rresp[1:0] = m07_couplers_to_m07_regslice_RRESP;
  assign S_AXI_rvalid = m07_couplers_to_m07_regslice_RVALID;
  assign S_AXI_wready = m07_couplers_to_m07_regslice_WREADY;
  assign m07_couplers_to_m07_regslice_ARADDR = S_AXI_araddr[31:0];
  assign m07_couplers_to_m07_regslice_ARPROT = S_AXI_arprot[2:0];
  assign m07_couplers_to_m07_regslice_ARVALID = S_AXI_arvalid;
  assign m07_couplers_to_m07_regslice_AWADDR = S_AXI_awaddr[31:0];
  assign m07_couplers_to_m07_regslice_AWPROT = S_AXI_awprot[2:0];
  assign m07_couplers_to_m07_regslice_AWVALID = S_AXI_awvalid;
  assign m07_couplers_to_m07_regslice_BREADY = S_AXI_bready;
  assign m07_couplers_to_m07_regslice_RREADY = S_AXI_rready;
  assign m07_couplers_to_m07_regslice_WDATA = S_AXI_wdata[31:0];
  assign m07_couplers_to_m07_regslice_WSTRB = S_AXI_wstrb[3:0];
  assign m07_couplers_to_m07_regslice_WVALID = S_AXI_wvalid;
  assign m07_regslice_to_m07_couplers_ARREADY = M_AXI_arready;
  assign m07_regslice_to_m07_couplers_AWREADY = M_AXI_awready;
  assign m07_regslice_to_m07_couplers_BRESP = M_AXI_bresp[1:0];
  assign m07_regslice_to_m07_couplers_BVALID = M_AXI_bvalid;
  assign m07_regslice_to_m07_couplers_RDATA = M_AXI_rdata[31:0];
  assign m07_regslice_to_m07_couplers_RRESP = M_AXI_rresp[1:0];
  assign m07_regslice_to_m07_couplers_RVALID = M_AXI_rvalid;
  assign m07_regslice_to_m07_couplers_WREADY = M_AXI_wready;
  xcl_design_m07_regslice_0 m07_regslice
       (.aclk(M_ACLK_1),
        .aresetn(M_ARESETN_1),
        .m_axi_araddr(m07_regslice_to_m07_couplers_ARADDR),
        .m_axi_arready(m07_regslice_to_m07_couplers_ARREADY),
        .m_axi_arvalid(m07_regslice_to_m07_couplers_ARVALID),
        .m_axi_awaddr(m07_regslice_to_m07_couplers_AWADDR),
        .m_axi_awready(m07_regslice_to_m07_couplers_AWREADY),
        .m_axi_awvalid(m07_regslice_to_m07_couplers_AWVALID),
        .m_axi_bready(m07_regslice_to_m07_couplers_BREADY),
        .m_axi_bresp(m07_regslice_to_m07_couplers_BRESP),
        .m_axi_bvalid(m07_regslice_to_m07_couplers_BVALID),
        .m_axi_rdata(m07_regslice_to_m07_couplers_RDATA),
        .m_axi_rready(m07_regslice_to_m07_couplers_RREADY),
        .m_axi_rresp(m07_regslice_to_m07_couplers_RRESP),
        .m_axi_rvalid(m07_regslice_to_m07_couplers_RVALID),
        .m_axi_wdata(m07_regslice_to_m07_couplers_WDATA),
        .m_axi_wready(m07_regslice_to_m07_couplers_WREADY),
        .m_axi_wstrb(m07_regslice_to_m07_couplers_WSTRB),
        .m_axi_wvalid(m07_regslice_to_m07_couplers_WVALID),
        .s_axi_araddr(m07_couplers_to_m07_regslice_ARADDR[8:0]),
        .s_axi_arprot(m07_couplers_to_m07_regslice_ARPROT),
        .s_axi_arready(m07_couplers_to_m07_regslice_ARREADY),
        .s_axi_arvalid(m07_couplers_to_m07_regslice_ARVALID),
        .s_axi_awaddr(m07_couplers_to_m07_regslice_AWADDR[8:0]),
        .s_axi_awprot(m07_couplers_to_m07_regslice_AWPROT),
        .s_axi_awready(m07_couplers_to_m07_regslice_AWREADY),
        .s_axi_awvalid(m07_couplers_to_m07_regslice_AWVALID),
        .s_axi_bready(m07_couplers_to_m07_regslice_BREADY),
        .s_axi_bresp(m07_couplers_to_m07_regslice_BRESP),
        .s_axi_bvalid(m07_couplers_to_m07_regslice_BVALID),
        .s_axi_rdata(m07_couplers_to_m07_regslice_RDATA),
        .s_axi_rready(m07_couplers_to_m07_regslice_RREADY),
        .s_axi_rresp(m07_couplers_to_m07_regslice_RRESP),
        .s_axi_rvalid(m07_couplers_to_m07_regslice_RVALID),
        .s_axi_wdata(m07_couplers_to_m07_regslice_WDATA),
        .s_axi_wready(m07_couplers_to_m07_regslice_WREADY),
        .s_axi_wstrb(m07_couplers_to_m07_regslice_WSTRB),
        .s_axi_wvalid(m07_couplers_to_m07_regslice_WVALID));
endmodule

module m08_couplers_imp_WYCUVL
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arprot,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awprot,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [8:0]M_AXI_araddr;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [8:0]M_AXI_awaddr;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  input [2:0]S_AXI_arprot;
  output S_AXI_arready;
  input S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  input [2:0]S_AXI_awprot;
  output S_AXI_awready;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire M_ACLK_1;
  wire M_ARESETN_1;
  wire [31:0]m08_couplers_to_m08_regslice_ARADDR;
  wire [2:0]m08_couplers_to_m08_regslice_ARPROT;
  wire m08_couplers_to_m08_regslice_ARREADY;
  wire m08_couplers_to_m08_regslice_ARVALID;
  wire [31:0]m08_couplers_to_m08_regslice_AWADDR;
  wire [2:0]m08_couplers_to_m08_regslice_AWPROT;
  wire m08_couplers_to_m08_regslice_AWREADY;
  wire m08_couplers_to_m08_regslice_AWVALID;
  wire m08_couplers_to_m08_regslice_BREADY;
  wire [1:0]m08_couplers_to_m08_regslice_BRESP;
  wire m08_couplers_to_m08_regslice_BVALID;
  wire [31:0]m08_couplers_to_m08_regslice_RDATA;
  wire m08_couplers_to_m08_regslice_RREADY;
  wire [1:0]m08_couplers_to_m08_regslice_RRESP;
  wire m08_couplers_to_m08_regslice_RVALID;
  wire [31:0]m08_couplers_to_m08_regslice_WDATA;
  wire m08_couplers_to_m08_regslice_WREADY;
  wire [3:0]m08_couplers_to_m08_regslice_WSTRB;
  wire m08_couplers_to_m08_regslice_WVALID;
  wire [8:0]m08_regslice_to_m08_couplers_ARADDR;
  wire m08_regslice_to_m08_couplers_ARREADY;
  wire m08_regslice_to_m08_couplers_ARVALID;
  wire [8:0]m08_regslice_to_m08_couplers_AWADDR;
  wire m08_regslice_to_m08_couplers_AWREADY;
  wire m08_regslice_to_m08_couplers_AWVALID;
  wire m08_regslice_to_m08_couplers_BREADY;
  wire [1:0]m08_regslice_to_m08_couplers_BRESP;
  wire m08_regslice_to_m08_couplers_BVALID;
  wire [31:0]m08_regslice_to_m08_couplers_RDATA;
  wire m08_regslice_to_m08_couplers_RREADY;
  wire [1:0]m08_regslice_to_m08_couplers_RRESP;
  wire m08_regslice_to_m08_couplers_RVALID;
  wire [31:0]m08_regslice_to_m08_couplers_WDATA;
  wire m08_regslice_to_m08_couplers_WREADY;
  wire [3:0]m08_regslice_to_m08_couplers_WSTRB;
  wire m08_regslice_to_m08_couplers_WVALID;

  assign M_ACLK_1 = M_ACLK;
  assign M_ARESETN_1 = M_ARESETN;
  assign M_AXI_araddr[8:0] = m08_regslice_to_m08_couplers_ARADDR;
  assign M_AXI_arvalid = m08_regslice_to_m08_couplers_ARVALID;
  assign M_AXI_awaddr[8:0] = m08_regslice_to_m08_couplers_AWADDR;
  assign M_AXI_awvalid = m08_regslice_to_m08_couplers_AWVALID;
  assign M_AXI_bready = m08_regslice_to_m08_couplers_BREADY;
  assign M_AXI_rready = m08_regslice_to_m08_couplers_RREADY;
  assign M_AXI_wdata[31:0] = m08_regslice_to_m08_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = m08_regslice_to_m08_couplers_WSTRB;
  assign M_AXI_wvalid = m08_regslice_to_m08_couplers_WVALID;
  assign S_AXI_arready = m08_couplers_to_m08_regslice_ARREADY;
  assign S_AXI_awready = m08_couplers_to_m08_regslice_AWREADY;
  assign S_AXI_bresp[1:0] = m08_couplers_to_m08_regslice_BRESP;
  assign S_AXI_bvalid = m08_couplers_to_m08_regslice_BVALID;
  assign S_AXI_rdata[31:0] = m08_couplers_to_m08_regslice_RDATA;
  assign S_AXI_rresp[1:0] = m08_couplers_to_m08_regslice_RRESP;
  assign S_AXI_rvalid = m08_couplers_to_m08_regslice_RVALID;
  assign S_AXI_wready = m08_couplers_to_m08_regslice_WREADY;
  assign m08_couplers_to_m08_regslice_ARADDR = S_AXI_araddr[31:0];
  assign m08_couplers_to_m08_regslice_ARPROT = S_AXI_arprot[2:0];
  assign m08_couplers_to_m08_regslice_ARVALID = S_AXI_arvalid;
  assign m08_couplers_to_m08_regslice_AWADDR = S_AXI_awaddr[31:0];
  assign m08_couplers_to_m08_regslice_AWPROT = S_AXI_awprot[2:0];
  assign m08_couplers_to_m08_regslice_AWVALID = S_AXI_awvalid;
  assign m08_couplers_to_m08_regslice_BREADY = S_AXI_bready;
  assign m08_couplers_to_m08_regslice_RREADY = S_AXI_rready;
  assign m08_couplers_to_m08_regslice_WDATA = S_AXI_wdata[31:0];
  assign m08_couplers_to_m08_regslice_WSTRB = S_AXI_wstrb[3:0];
  assign m08_couplers_to_m08_regslice_WVALID = S_AXI_wvalid;
  assign m08_regslice_to_m08_couplers_ARREADY = M_AXI_arready;
  assign m08_regslice_to_m08_couplers_AWREADY = M_AXI_awready;
  assign m08_regslice_to_m08_couplers_BRESP = M_AXI_bresp[1:0];
  assign m08_regslice_to_m08_couplers_BVALID = M_AXI_bvalid;
  assign m08_regslice_to_m08_couplers_RDATA = M_AXI_rdata[31:0];
  assign m08_regslice_to_m08_couplers_RRESP = M_AXI_rresp[1:0];
  assign m08_regslice_to_m08_couplers_RVALID = M_AXI_rvalid;
  assign m08_regslice_to_m08_couplers_WREADY = M_AXI_wready;
  xcl_design_m08_regslice_0 m08_regslice
       (.aclk(M_ACLK_1),
        .aresetn(M_ARESETN_1),
        .m_axi_araddr(m08_regslice_to_m08_couplers_ARADDR),
        .m_axi_arready(m08_regslice_to_m08_couplers_ARREADY),
        .m_axi_arvalid(m08_regslice_to_m08_couplers_ARVALID),
        .m_axi_awaddr(m08_regslice_to_m08_couplers_AWADDR),
        .m_axi_awready(m08_regslice_to_m08_couplers_AWREADY),
        .m_axi_awvalid(m08_regslice_to_m08_couplers_AWVALID),
        .m_axi_bready(m08_regslice_to_m08_couplers_BREADY),
        .m_axi_bresp(m08_regslice_to_m08_couplers_BRESP),
        .m_axi_bvalid(m08_regslice_to_m08_couplers_BVALID),
        .m_axi_rdata(m08_regslice_to_m08_couplers_RDATA),
        .m_axi_rready(m08_regslice_to_m08_couplers_RREADY),
        .m_axi_rresp(m08_regslice_to_m08_couplers_RRESP),
        .m_axi_rvalid(m08_regslice_to_m08_couplers_RVALID),
        .m_axi_wdata(m08_regslice_to_m08_couplers_WDATA),
        .m_axi_wready(m08_regslice_to_m08_couplers_WREADY),
        .m_axi_wstrb(m08_regslice_to_m08_couplers_WSTRB),
        .m_axi_wvalid(m08_regslice_to_m08_couplers_WVALID),
        .s_axi_araddr(m08_couplers_to_m08_regslice_ARADDR[8:0]),
        .s_axi_arprot(m08_couplers_to_m08_regslice_ARPROT),
        .s_axi_arready(m08_couplers_to_m08_regslice_ARREADY),
        .s_axi_arvalid(m08_couplers_to_m08_regslice_ARVALID),
        .s_axi_awaddr(m08_couplers_to_m08_regslice_AWADDR[8:0]),
        .s_axi_awprot(m08_couplers_to_m08_regslice_AWPROT),
        .s_axi_awready(m08_couplers_to_m08_regslice_AWREADY),
        .s_axi_awvalid(m08_couplers_to_m08_regslice_AWVALID),
        .s_axi_bready(m08_couplers_to_m08_regslice_BREADY),
        .s_axi_bresp(m08_couplers_to_m08_regslice_BRESP),
        .s_axi_bvalid(m08_couplers_to_m08_regslice_BVALID),
        .s_axi_rdata(m08_couplers_to_m08_regslice_RDATA),
        .s_axi_rready(m08_couplers_to_m08_regslice_RREADY),
        .s_axi_rresp(m08_couplers_to_m08_regslice_RRESP),
        .s_axi_rvalid(m08_couplers_to_m08_regslice_RVALID),
        .s_axi_wdata(m08_couplers_to_m08_regslice_WDATA),
        .s_axi_wready(m08_couplers_to_m08_regslice_WREADY),
        .s_axi_wstrb(m08_couplers_to_m08_regslice_WSTRB),
        .s_axi_wvalid(m08_couplers_to_m08_regslice_WVALID));
endmodule

module m09_couplers_imp_5G445Z
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arprot,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awprot,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arprot,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awprot,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [10:0]M_AXI_araddr;
  output [2:0]M_AXI_arprot;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [10:0]M_AXI_awaddr;
  output [2:0]M_AXI_awprot;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  input [2:0]S_AXI_arprot;
  output S_AXI_arready;
  input S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  input [2:0]S_AXI_awprot;
  output S_AXI_awready;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire M_ACLK_1;
  wire M_ARESETN_1;
  wire [31:0]m09_couplers_to_m09_regslice_ARADDR;
  wire [2:0]m09_couplers_to_m09_regslice_ARPROT;
  wire m09_couplers_to_m09_regslice_ARREADY;
  wire m09_couplers_to_m09_regslice_ARVALID;
  wire [31:0]m09_couplers_to_m09_regslice_AWADDR;
  wire [2:0]m09_couplers_to_m09_regslice_AWPROT;
  wire m09_couplers_to_m09_regslice_AWREADY;
  wire m09_couplers_to_m09_regslice_AWVALID;
  wire m09_couplers_to_m09_regslice_BREADY;
  wire [1:0]m09_couplers_to_m09_regslice_BRESP;
  wire m09_couplers_to_m09_regslice_BVALID;
  wire [31:0]m09_couplers_to_m09_regslice_RDATA;
  wire m09_couplers_to_m09_regslice_RREADY;
  wire [1:0]m09_couplers_to_m09_regslice_RRESP;
  wire m09_couplers_to_m09_regslice_RVALID;
  wire [31:0]m09_couplers_to_m09_regslice_WDATA;
  wire m09_couplers_to_m09_regslice_WREADY;
  wire [3:0]m09_couplers_to_m09_regslice_WSTRB;
  wire m09_couplers_to_m09_regslice_WVALID;
  wire [10:0]m09_regslice_to_m09_couplers_ARADDR;
  wire [2:0]m09_regslice_to_m09_couplers_ARPROT;
  wire m09_regslice_to_m09_couplers_ARREADY;
  wire m09_regslice_to_m09_couplers_ARVALID;
  wire [10:0]m09_regslice_to_m09_couplers_AWADDR;
  wire [2:0]m09_regslice_to_m09_couplers_AWPROT;
  wire m09_regslice_to_m09_couplers_AWREADY;
  wire m09_regslice_to_m09_couplers_AWVALID;
  wire m09_regslice_to_m09_couplers_BREADY;
  wire [1:0]m09_regslice_to_m09_couplers_BRESP;
  wire m09_regslice_to_m09_couplers_BVALID;
  wire [31:0]m09_regslice_to_m09_couplers_RDATA;
  wire m09_regslice_to_m09_couplers_RREADY;
  wire [1:0]m09_regslice_to_m09_couplers_RRESP;
  wire m09_regslice_to_m09_couplers_RVALID;
  wire [31:0]m09_regslice_to_m09_couplers_WDATA;
  wire m09_regslice_to_m09_couplers_WREADY;
  wire [3:0]m09_regslice_to_m09_couplers_WSTRB;
  wire m09_regslice_to_m09_couplers_WVALID;

  assign M_ACLK_1 = M_ACLK;
  assign M_ARESETN_1 = M_ARESETN;
  assign M_AXI_araddr[10:0] = m09_regslice_to_m09_couplers_ARADDR;
  assign M_AXI_arprot[2:0] = m09_regslice_to_m09_couplers_ARPROT;
  assign M_AXI_arvalid = m09_regslice_to_m09_couplers_ARVALID;
  assign M_AXI_awaddr[10:0] = m09_regslice_to_m09_couplers_AWADDR;
  assign M_AXI_awprot[2:0] = m09_regslice_to_m09_couplers_AWPROT;
  assign M_AXI_awvalid = m09_regslice_to_m09_couplers_AWVALID;
  assign M_AXI_bready = m09_regslice_to_m09_couplers_BREADY;
  assign M_AXI_rready = m09_regslice_to_m09_couplers_RREADY;
  assign M_AXI_wdata[31:0] = m09_regslice_to_m09_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = m09_regslice_to_m09_couplers_WSTRB;
  assign M_AXI_wvalid = m09_regslice_to_m09_couplers_WVALID;
  assign S_AXI_arready = m09_couplers_to_m09_regslice_ARREADY;
  assign S_AXI_awready = m09_couplers_to_m09_regslice_AWREADY;
  assign S_AXI_bresp[1:0] = m09_couplers_to_m09_regslice_BRESP;
  assign S_AXI_bvalid = m09_couplers_to_m09_regslice_BVALID;
  assign S_AXI_rdata[31:0] = m09_couplers_to_m09_regslice_RDATA;
  assign S_AXI_rresp[1:0] = m09_couplers_to_m09_regslice_RRESP;
  assign S_AXI_rvalid = m09_couplers_to_m09_regslice_RVALID;
  assign S_AXI_wready = m09_couplers_to_m09_regslice_WREADY;
  assign m09_couplers_to_m09_regslice_ARADDR = S_AXI_araddr[31:0];
  assign m09_couplers_to_m09_regslice_ARPROT = S_AXI_arprot[2:0];
  assign m09_couplers_to_m09_regslice_ARVALID = S_AXI_arvalid;
  assign m09_couplers_to_m09_regslice_AWADDR = S_AXI_awaddr[31:0];
  assign m09_couplers_to_m09_regslice_AWPROT = S_AXI_awprot[2:0];
  assign m09_couplers_to_m09_regslice_AWVALID = S_AXI_awvalid;
  assign m09_couplers_to_m09_regslice_BREADY = S_AXI_bready;
  assign m09_couplers_to_m09_regslice_RREADY = S_AXI_rready;
  assign m09_couplers_to_m09_regslice_WDATA = S_AXI_wdata[31:0];
  assign m09_couplers_to_m09_regslice_WSTRB = S_AXI_wstrb[3:0];
  assign m09_couplers_to_m09_regslice_WVALID = S_AXI_wvalid;
  assign m09_regslice_to_m09_couplers_ARREADY = M_AXI_arready;
  assign m09_regslice_to_m09_couplers_AWREADY = M_AXI_awready;
  assign m09_regslice_to_m09_couplers_BRESP = M_AXI_bresp[1:0];
  assign m09_regslice_to_m09_couplers_BVALID = M_AXI_bvalid;
  assign m09_regslice_to_m09_couplers_RDATA = M_AXI_rdata[31:0];
  assign m09_regslice_to_m09_couplers_RRESP = M_AXI_rresp[1:0];
  assign m09_regslice_to_m09_couplers_RVALID = M_AXI_rvalid;
  assign m09_regslice_to_m09_couplers_WREADY = M_AXI_wready;
  xcl_design_m09_regslice_0 m09_regslice
       (.aclk(M_ACLK_1),
        .aresetn(M_ARESETN_1),
        .m_axi_araddr(m09_regslice_to_m09_couplers_ARADDR),
        .m_axi_arprot(m09_regslice_to_m09_couplers_ARPROT),
        .m_axi_arready(m09_regslice_to_m09_couplers_ARREADY),
        .m_axi_arvalid(m09_regslice_to_m09_couplers_ARVALID),
        .m_axi_awaddr(m09_regslice_to_m09_couplers_AWADDR),
        .m_axi_awprot(m09_regslice_to_m09_couplers_AWPROT),
        .m_axi_awready(m09_regslice_to_m09_couplers_AWREADY),
        .m_axi_awvalid(m09_regslice_to_m09_couplers_AWVALID),
        .m_axi_bready(m09_regslice_to_m09_couplers_BREADY),
        .m_axi_bresp(m09_regslice_to_m09_couplers_BRESP),
        .m_axi_bvalid(m09_regslice_to_m09_couplers_BVALID),
        .m_axi_rdata(m09_regslice_to_m09_couplers_RDATA),
        .m_axi_rready(m09_regslice_to_m09_couplers_RREADY),
        .m_axi_rresp(m09_regslice_to_m09_couplers_RRESP),
        .m_axi_rvalid(m09_regslice_to_m09_couplers_RVALID),
        .m_axi_wdata(m09_regslice_to_m09_couplers_WDATA),
        .m_axi_wready(m09_regslice_to_m09_couplers_WREADY),
        .m_axi_wstrb(m09_regslice_to_m09_couplers_WSTRB),
        .m_axi_wvalid(m09_regslice_to_m09_couplers_WVALID),
        .s_axi_araddr(m09_couplers_to_m09_regslice_ARADDR[10:0]),
        .s_axi_arprot(m09_couplers_to_m09_regslice_ARPROT),
        .s_axi_arready(m09_couplers_to_m09_regslice_ARREADY),
        .s_axi_arvalid(m09_couplers_to_m09_regslice_ARVALID),
        .s_axi_awaddr(m09_couplers_to_m09_regslice_AWADDR[10:0]),
        .s_axi_awprot(m09_couplers_to_m09_regslice_AWPROT),
        .s_axi_awready(m09_couplers_to_m09_regslice_AWREADY),
        .s_axi_awvalid(m09_couplers_to_m09_regslice_AWVALID),
        .s_axi_bready(m09_couplers_to_m09_regslice_BREADY),
        .s_axi_bresp(m09_couplers_to_m09_regslice_BRESP),
        .s_axi_bvalid(m09_couplers_to_m09_regslice_BVALID),
        .s_axi_rdata(m09_couplers_to_m09_regslice_RDATA),
        .s_axi_rready(m09_couplers_to_m09_regslice_RREADY),
        .s_axi_rresp(m09_couplers_to_m09_regslice_RRESP),
        .s_axi_rvalid(m09_couplers_to_m09_regslice_RVALID),
        .s_axi_wdata(m09_couplers_to_m09_regslice_WDATA),
        .s_axi_wready(m09_couplers_to_m09_regslice_WREADY),
        .s_axi_wstrb(m09_couplers_to_m09_regslice_WSTRB),
        .s_axi_wvalid(m09_couplers_to_m09_regslice_WVALID));
endmodule

module memory_imp_1FWFGZD
   (C0_DDR3_S_AXI1_araddr,
    C0_DDR3_S_AXI1_arburst,
    C0_DDR3_S_AXI1_arcache,
    C0_DDR3_S_AXI1_arlen,
    C0_DDR3_S_AXI1_arlock,
    C0_DDR3_S_AXI1_arprot,
    C0_DDR3_S_AXI1_arqos,
    C0_DDR3_S_AXI1_arready,
    C0_DDR3_S_AXI1_arsize,
    C0_DDR3_S_AXI1_arvalid,
    C0_DDR3_S_AXI1_awaddr,
    C0_DDR3_S_AXI1_awburst,
    C0_DDR3_S_AXI1_awcache,
    C0_DDR3_S_AXI1_awlen,
    C0_DDR3_S_AXI1_awlock,
    C0_DDR3_S_AXI1_awprot,
    C0_DDR3_S_AXI1_awqos,
    C0_DDR3_S_AXI1_awready,
    C0_DDR3_S_AXI1_awsize,
    C0_DDR3_S_AXI1_awvalid,
    C0_DDR3_S_AXI1_bready,
    C0_DDR3_S_AXI1_bresp,
    C0_DDR3_S_AXI1_bvalid,
    C0_DDR3_S_AXI1_rdata,
    C0_DDR3_S_AXI1_rlast,
    C0_DDR3_S_AXI1_rready,
    C0_DDR3_S_AXI1_rresp,
    C0_DDR3_S_AXI1_rvalid,
    C0_DDR3_S_AXI1_wdata,
    C0_DDR3_S_AXI1_wlast,
    C0_DDR3_S_AXI1_wready,
    C0_DDR3_S_AXI1_wstrb,
    C0_DDR3_S_AXI1_wvalid,
    C0_DDR3_S_AXI_CTRL1_araddr,
    C0_DDR3_S_AXI_CTRL1_arready,
    C0_DDR3_S_AXI_CTRL1_arvalid,
    C0_DDR3_S_AXI_CTRL1_awaddr,
    C0_DDR3_S_AXI_CTRL1_awready,
    C0_DDR3_S_AXI_CTRL1_awvalid,
    C0_DDR3_S_AXI_CTRL1_bready,
    C0_DDR3_S_AXI_CTRL1_bresp,
    C0_DDR3_S_AXI_CTRL1_bvalid,
    C0_DDR3_S_AXI_CTRL1_rdata,
    C0_DDR3_S_AXI_CTRL1_rready,
    C0_DDR3_S_AXI_CTRL1_rresp,
    C0_DDR3_S_AXI_CTRL1_rvalid,
    C0_DDR3_S_AXI_CTRL1_wdata,
    C0_DDR3_S_AXI_CTRL1_wready,
    C0_DDR3_S_AXI_CTRL1_wvalid,
    C0_DDR3_S_AXI_CTRL_araddr,
    C0_DDR3_S_AXI_CTRL_arready,
    C0_DDR3_S_AXI_CTRL_arvalid,
    C0_DDR3_S_AXI_CTRL_awaddr,
    C0_DDR3_S_AXI_CTRL_awready,
    C0_DDR3_S_AXI_CTRL_awvalid,
    C0_DDR3_S_AXI_CTRL_bready,
    C0_DDR3_S_AXI_CTRL_bresp,
    C0_DDR3_S_AXI_CTRL_bvalid,
    C0_DDR3_S_AXI_CTRL_rdata,
    C0_DDR3_S_AXI_CTRL_rready,
    C0_DDR3_S_AXI_CTRL_rresp,
    C0_DDR3_S_AXI_CTRL_rvalid,
    C0_DDR3_S_AXI_CTRL_wdata,
    C0_DDR3_S_AXI_CTRL_wready,
    C0_DDR3_S_AXI_CTRL_wvalid,
    C0_DDR3_S_AXI_araddr,
    C0_DDR3_S_AXI_arburst,
    C0_DDR3_S_AXI_arcache,
    C0_DDR3_S_AXI_arlen,
    C0_DDR3_S_AXI_arlock,
    C0_DDR3_S_AXI_arprot,
    C0_DDR3_S_AXI_arqos,
    C0_DDR3_S_AXI_arready,
    C0_DDR3_S_AXI_arsize,
    C0_DDR3_S_AXI_arvalid,
    C0_DDR3_S_AXI_awaddr,
    C0_DDR3_S_AXI_awburst,
    C0_DDR3_S_AXI_awcache,
    C0_DDR3_S_AXI_awlen,
    C0_DDR3_S_AXI_awlock,
    C0_DDR3_S_AXI_awprot,
    C0_DDR3_S_AXI_awqos,
    C0_DDR3_S_AXI_awready,
    C0_DDR3_S_AXI_awsize,
    C0_DDR3_S_AXI_awvalid,
    C0_DDR3_S_AXI_bready,
    C0_DDR3_S_AXI_bresp,
    C0_DDR3_S_AXI_bvalid,
    C0_DDR3_S_AXI_rdata,
    C0_DDR3_S_AXI_rlast,
    C0_DDR3_S_AXI_rready,
    C0_DDR3_S_AXI_rresp,
    C0_DDR3_S_AXI_rvalid,
    C0_DDR3_S_AXI_wdata,
    C0_DDR3_S_AXI_wlast,
    C0_DDR3_S_AXI_wready,
    C0_DDR3_S_AXI_wstrb,
    C0_DDR3_S_AXI_wvalid,
    C0_DDR3_addr,
    C0_DDR3_ba,
    C0_DDR3_cas_n,
    C0_DDR3_ck_n,
    C0_DDR3_ck_p,
    C0_DDR3_cke,
    C0_DDR3_cs_n,
    C0_DDR3_dq,
    C0_DDR3_dqs_n,
    C0_DDR3_dqs_p,
    C0_DDR3_odt,
    C0_DDR3_ras_n,
    C0_DDR3_reset_n,
    C0_DDR3_we_n,
    C0_DDR4_addr,
    C0_DDR4_ba,
    C0_DDR4_cas_n,
    C0_DDR4_ck_n,
    C0_DDR4_ck_p,
    C0_DDR4_cke,
    C0_DDR4_cs_n,
    C0_DDR4_dq,
    C0_DDR4_dqs_n,
    C0_DDR4_dqs_p,
    C0_DDR4_odt,
    C0_DDR4_ras_n,
    C0_DDR4_reset_n,
    C0_DDR4_we_n,
    C0_SYS_CLK1_clk_n,
    C0_SYS_CLK1_clk_p,
    C0_SYS_CLK_clk_n,
    C0_SYS_CLK_clk_p,
    Res,
    c0_ddr3_aresetn,
    c0_ddr3_aresetn1,
    c0_ddr3_ui_clk,
    c0_ddr3_ui_clk1,
    c0_ddr3_ui_clk_sync_rst,
    c0_ddr3_ui_clk_sync_rst1,
    sys_rst,
    sys_rst1);
  input [32:0]C0_DDR3_S_AXI1_araddr;
  input [1:0]C0_DDR3_S_AXI1_arburst;
  input [3:0]C0_DDR3_S_AXI1_arcache;
  input [7:0]C0_DDR3_S_AXI1_arlen;
  input [0:0]C0_DDR3_S_AXI1_arlock;
  input [2:0]C0_DDR3_S_AXI1_arprot;
  input [3:0]C0_DDR3_S_AXI1_arqos;
  output C0_DDR3_S_AXI1_arready;
  input [2:0]C0_DDR3_S_AXI1_arsize;
  input C0_DDR3_S_AXI1_arvalid;
  input [32:0]C0_DDR3_S_AXI1_awaddr;
  input [1:0]C0_DDR3_S_AXI1_awburst;
  input [3:0]C0_DDR3_S_AXI1_awcache;
  input [7:0]C0_DDR3_S_AXI1_awlen;
  input [0:0]C0_DDR3_S_AXI1_awlock;
  input [2:0]C0_DDR3_S_AXI1_awprot;
  input [3:0]C0_DDR3_S_AXI1_awqos;
  output C0_DDR3_S_AXI1_awready;
  input [2:0]C0_DDR3_S_AXI1_awsize;
  input C0_DDR3_S_AXI1_awvalid;
  input C0_DDR3_S_AXI1_bready;
  output [1:0]C0_DDR3_S_AXI1_bresp;
  output C0_DDR3_S_AXI1_bvalid;
  output [511:0]C0_DDR3_S_AXI1_rdata;
  output C0_DDR3_S_AXI1_rlast;
  input C0_DDR3_S_AXI1_rready;
  output [1:0]C0_DDR3_S_AXI1_rresp;
  output C0_DDR3_S_AXI1_rvalid;
  input [511:0]C0_DDR3_S_AXI1_wdata;
  input C0_DDR3_S_AXI1_wlast;
  output C0_DDR3_S_AXI1_wready;
  input [63:0]C0_DDR3_S_AXI1_wstrb;
  input C0_DDR3_S_AXI1_wvalid;
  input [31:0]C0_DDR3_S_AXI_CTRL1_araddr;
  output C0_DDR3_S_AXI_CTRL1_arready;
  input C0_DDR3_S_AXI_CTRL1_arvalid;
  input [31:0]C0_DDR3_S_AXI_CTRL1_awaddr;
  output C0_DDR3_S_AXI_CTRL1_awready;
  input C0_DDR3_S_AXI_CTRL1_awvalid;
  input C0_DDR3_S_AXI_CTRL1_bready;
  output [1:0]C0_DDR3_S_AXI_CTRL1_bresp;
  output C0_DDR3_S_AXI_CTRL1_bvalid;
  output [31:0]C0_DDR3_S_AXI_CTRL1_rdata;
  input C0_DDR3_S_AXI_CTRL1_rready;
  output [1:0]C0_DDR3_S_AXI_CTRL1_rresp;
  output C0_DDR3_S_AXI_CTRL1_rvalid;
  input [31:0]C0_DDR3_S_AXI_CTRL1_wdata;
  output C0_DDR3_S_AXI_CTRL1_wready;
  input C0_DDR3_S_AXI_CTRL1_wvalid;
  input [31:0]C0_DDR3_S_AXI_CTRL_araddr;
  output C0_DDR3_S_AXI_CTRL_arready;
  input C0_DDR3_S_AXI_CTRL_arvalid;
  input [31:0]C0_DDR3_S_AXI_CTRL_awaddr;
  output C0_DDR3_S_AXI_CTRL_awready;
  input C0_DDR3_S_AXI_CTRL_awvalid;
  input C0_DDR3_S_AXI_CTRL_bready;
  output [1:0]C0_DDR3_S_AXI_CTRL_bresp;
  output C0_DDR3_S_AXI_CTRL_bvalid;
  output [31:0]C0_DDR3_S_AXI_CTRL_rdata;
  input C0_DDR3_S_AXI_CTRL_rready;
  output [1:0]C0_DDR3_S_AXI_CTRL_rresp;
  output C0_DDR3_S_AXI_CTRL_rvalid;
  input [31:0]C0_DDR3_S_AXI_CTRL_wdata;
  output C0_DDR3_S_AXI_CTRL_wready;
  input C0_DDR3_S_AXI_CTRL_wvalid;
  input [32:0]C0_DDR3_S_AXI_araddr;
  input [1:0]C0_DDR3_S_AXI_arburst;
  input [3:0]C0_DDR3_S_AXI_arcache;
  input [7:0]C0_DDR3_S_AXI_arlen;
  input [0:0]C0_DDR3_S_AXI_arlock;
  input [2:0]C0_DDR3_S_AXI_arprot;
  input [3:0]C0_DDR3_S_AXI_arqos;
  output C0_DDR3_S_AXI_arready;
  input [2:0]C0_DDR3_S_AXI_arsize;
  input C0_DDR3_S_AXI_arvalid;
  input [32:0]C0_DDR3_S_AXI_awaddr;
  input [1:0]C0_DDR3_S_AXI_awburst;
  input [3:0]C0_DDR3_S_AXI_awcache;
  input [7:0]C0_DDR3_S_AXI_awlen;
  input [0:0]C0_DDR3_S_AXI_awlock;
  input [2:0]C0_DDR3_S_AXI_awprot;
  input [3:0]C0_DDR3_S_AXI_awqos;
  output C0_DDR3_S_AXI_awready;
  input [2:0]C0_DDR3_S_AXI_awsize;
  input C0_DDR3_S_AXI_awvalid;
  input C0_DDR3_S_AXI_bready;
  output [1:0]C0_DDR3_S_AXI_bresp;
  output C0_DDR3_S_AXI_bvalid;
  output [511:0]C0_DDR3_S_AXI_rdata;
  output C0_DDR3_S_AXI_rlast;
  input C0_DDR3_S_AXI_rready;
  output [1:0]C0_DDR3_S_AXI_rresp;
  output C0_DDR3_S_AXI_rvalid;
  input [511:0]C0_DDR3_S_AXI_wdata;
  input C0_DDR3_S_AXI_wlast;
  output C0_DDR3_S_AXI_wready;
  input [63:0]C0_DDR3_S_AXI_wstrb;
  input C0_DDR3_S_AXI_wvalid;
  output [15:0]C0_DDR3_addr;
  output [2:0]C0_DDR3_ba;
  output C0_DDR3_cas_n;
  output [1:0]C0_DDR3_ck_n;
  output [1:0]C0_DDR3_ck_p;
  output [1:0]C0_DDR3_cke;
  output [1:0]C0_DDR3_cs_n;
  inout [71:0]C0_DDR3_dq;
  inout [8:0]C0_DDR3_dqs_n;
  inout [8:0]C0_DDR3_dqs_p;
  output [1:0]C0_DDR3_odt;
  output C0_DDR3_ras_n;
  output C0_DDR3_reset_n;
  output C0_DDR3_we_n;
  output [15:0]C0_DDR4_addr;
  output [2:0]C0_DDR4_ba;
  output C0_DDR4_cas_n;
  output [1:0]C0_DDR4_ck_n;
  output [1:0]C0_DDR4_ck_p;
  output [1:0]C0_DDR4_cke;
  output [1:0]C0_DDR4_cs_n;
  inout [71:0]C0_DDR4_dq;
  inout [8:0]C0_DDR4_dqs_n;
  inout [8:0]C0_DDR4_dqs_p;
  output [1:0]C0_DDR4_odt;
  output C0_DDR4_ras_n;
  output C0_DDR4_reset_n;
  output C0_DDR4_we_n;
  input C0_SYS_CLK1_clk_n;
  input C0_SYS_CLK1_clk_p;
  input C0_SYS_CLK_clk_n;
  input C0_SYS_CLK_clk_p;
  output [0:0]Res;
  input [0:0]c0_ddr3_aresetn;
  input [0:0]c0_ddr3_aresetn1;
  output c0_ddr3_ui_clk;
  output c0_ddr3_ui_clk1;
  output c0_ddr3_ui_clk_sync_rst;
  output c0_ddr3_ui_clk_sync_rst1;
  input [0:0]sys_rst;
  input [0:0]sys_rst1;

  wire Conn1_CLK_N;
  wire Conn1_CLK_P;
  wire [15:0]Conn2_ADDR;
  wire [2:0]Conn2_BA;
  wire Conn2_CAS_N;
  wire [1:0]Conn2_CKE;
  wire [1:0]Conn2_CK_N;
  wire [1:0]Conn2_CK_P;
  wire [1:0]Conn2_CS_N;
  wire [71:0]Conn2_DQ;
  wire [8:0]Conn2_DQS_N;
  wire [8:0]Conn2_DQS_P;
  wire [1:0]Conn2_ODT;
  wire Conn2_RAS_N;
  wire Conn2_RESET_N;
  wire Conn2_WE_N;
  wire Conn3_CLK_N;
  wire Conn3_CLK_P;
  wire [15:0]Conn4_ADDR;
  wire [2:0]Conn4_BA;
  wire Conn4_CAS_N;
  wire [1:0]Conn4_CKE;
  wire [1:0]Conn4_CK_N;
  wire [1:0]Conn4_CK_P;
  wire [1:0]Conn4_CS_N;
  wire [71:0]Conn4_DQ;
  wire [8:0]Conn4_DQS_N;
  wire [8:0]Conn4_DQS_P;
  wire [1:0]Conn4_ODT;
  wire Conn4_RAS_N;
  wire Conn4_RESET_N;
  wire Conn4_WE_N;
  wire [32:0]Conn5_ARADDR;
  wire [1:0]Conn5_ARBURST;
  wire [3:0]Conn5_ARCACHE;
  wire [7:0]Conn5_ARLEN;
  wire [0:0]Conn5_ARLOCK;
  wire [2:0]Conn5_ARPROT;
  wire [3:0]Conn5_ARQOS;
  wire Conn5_ARREADY;
  wire [2:0]Conn5_ARSIZE;
  wire Conn5_ARVALID;
  wire [32:0]Conn5_AWADDR;
  wire [1:0]Conn5_AWBURST;
  wire [3:0]Conn5_AWCACHE;
  wire [7:0]Conn5_AWLEN;
  wire [0:0]Conn5_AWLOCK;
  wire [2:0]Conn5_AWPROT;
  wire [3:0]Conn5_AWQOS;
  wire Conn5_AWREADY;
  wire [2:0]Conn5_AWSIZE;
  wire Conn5_AWVALID;
  wire Conn5_BREADY;
  wire [1:0]Conn5_BRESP;
  wire Conn5_BVALID;
  wire [511:0]Conn5_RDATA;
  wire Conn5_RLAST;
  wire Conn5_RREADY;
  wire [1:0]Conn5_RRESP;
  wire Conn5_RVALID;
  wire [511:0]Conn5_WDATA;
  wire Conn5_WLAST;
  wire Conn5_WREADY;
  wire [63:0]Conn5_WSTRB;
  wire Conn5_WVALID;
  wire [32:0]Conn6_ARADDR;
  wire [1:0]Conn6_ARBURST;
  wire [3:0]Conn6_ARCACHE;
  wire [7:0]Conn6_ARLEN;
  wire [0:0]Conn6_ARLOCK;
  wire [2:0]Conn6_ARPROT;
  wire [3:0]Conn6_ARQOS;
  wire Conn6_ARREADY;
  wire [2:0]Conn6_ARSIZE;
  wire Conn6_ARVALID;
  wire [32:0]Conn6_AWADDR;
  wire [1:0]Conn6_AWBURST;
  wire [3:0]Conn6_AWCACHE;
  wire [7:0]Conn6_AWLEN;
  wire [0:0]Conn6_AWLOCK;
  wire [2:0]Conn6_AWPROT;
  wire [3:0]Conn6_AWQOS;
  wire Conn6_AWREADY;
  wire [2:0]Conn6_AWSIZE;
  wire Conn6_AWVALID;
  wire Conn6_BREADY;
  wire [1:0]Conn6_BRESP;
  wire Conn6_BVALID;
  wire [511:0]Conn6_RDATA;
  wire Conn6_RLAST;
  wire Conn6_RREADY;
  wire [1:0]Conn6_RRESP;
  wire Conn6_RVALID;
  wire [511:0]Conn6_WDATA;
  wire Conn6_WLAST;
  wire Conn6_WREADY;
  wire [63:0]Conn6_WSTRB;
  wire Conn6_WVALID;
  wire [31:0]Conn7_ARADDR;
  wire Conn7_ARREADY;
  wire Conn7_ARVALID;
  wire [31:0]Conn7_AWADDR;
  wire Conn7_AWREADY;
  wire Conn7_AWVALID;
  wire Conn7_BREADY;
  wire [1:0]Conn7_BRESP;
  wire Conn7_BVALID;
  wire [31:0]Conn7_RDATA;
  wire Conn7_RREADY;
  wire [1:0]Conn7_RRESP;
  wire Conn7_RVALID;
  wire [31:0]Conn7_WDATA;
  wire Conn7_WREADY;
  wire Conn7_WVALID;
  wire [31:0]Conn8_ARADDR;
  wire Conn8_ARREADY;
  wire Conn8_ARVALID;
  wire [31:0]Conn8_AWADDR;
  wire Conn8_AWREADY;
  wire Conn8_AWVALID;
  wire Conn8_BREADY;
  wire [1:0]Conn8_BRESP;
  wire Conn8_BVALID;
  wire [31:0]Conn8_RDATA;
  wire Conn8_RREADY;
  wire [1:0]Conn8_RRESP;
  wire Conn8_RVALID;
  wire [31:0]Conn8_WDATA;
  wire Conn8_WREADY;
  wire Conn8_WVALID;
  wire [0:0]c0_ddr3_aresetn1_1;
  wire [0:0]c0_ddr3_aresetn_1;
  wire ddrmem_2_c0_ddr3_ui_clk;
  wire ddrmem_2_c0_ddr3_ui_clk_sync_rst;
  wire ddrmem_2_c0_init_calib_complete;
  wire ddrmem_c0_ddr3_ui_clk;
  wire ddrmem_c0_ddr3_ui_clk_sync_rst;
  wire ddrmem_c0_init_calib_complete;
  wire [0:0]logic_ddrcalib_op_Res;
  wire [0:0]sys_rst1_1;
  wire [0:0]sys_rst_1;

  assign C0_DDR3_S_AXI1_arready = Conn6_ARREADY;
  assign C0_DDR3_S_AXI1_awready = Conn6_AWREADY;
  assign C0_DDR3_S_AXI1_bresp[1:0] = Conn6_BRESP;
  assign C0_DDR3_S_AXI1_bvalid = Conn6_BVALID;
  assign C0_DDR3_S_AXI1_rdata[511:0] = Conn6_RDATA;
  assign C0_DDR3_S_AXI1_rlast = Conn6_RLAST;
  assign C0_DDR3_S_AXI1_rresp[1:0] = Conn6_RRESP;
  assign C0_DDR3_S_AXI1_rvalid = Conn6_RVALID;
  assign C0_DDR3_S_AXI1_wready = Conn6_WREADY;
  assign C0_DDR3_S_AXI_CTRL1_arready = Conn8_ARREADY;
  assign C0_DDR3_S_AXI_CTRL1_awready = Conn8_AWREADY;
  assign C0_DDR3_S_AXI_CTRL1_bresp[1:0] = Conn8_BRESP;
  assign C0_DDR3_S_AXI_CTRL1_bvalid = Conn8_BVALID;
  assign C0_DDR3_S_AXI_CTRL1_rdata[31:0] = Conn8_RDATA;
  assign C0_DDR3_S_AXI_CTRL1_rresp[1:0] = Conn8_RRESP;
  assign C0_DDR3_S_AXI_CTRL1_rvalid = Conn8_RVALID;
  assign C0_DDR3_S_AXI_CTRL1_wready = Conn8_WREADY;
  assign C0_DDR3_S_AXI_CTRL_arready = Conn7_ARREADY;
  assign C0_DDR3_S_AXI_CTRL_awready = Conn7_AWREADY;
  assign C0_DDR3_S_AXI_CTRL_bresp[1:0] = Conn7_BRESP;
  assign C0_DDR3_S_AXI_CTRL_bvalid = Conn7_BVALID;
  assign C0_DDR3_S_AXI_CTRL_rdata[31:0] = Conn7_RDATA;
  assign C0_DDR3_S_AXI_CTRL_rresp[1:0] = Conn7_RRESP;
  assign C0_DDR3_S_AXI_CTRL_rvalid = Conn7_RVALID;
  assign C0_DDR3_S_AXI_CTRL_wready = Conn7_WREADY;
  assign C0_DDR3_S_AXI_arready = Conn5_ARREADY;
  assign C0_DDR3_S_AXI_awready = Conn5_AWREADY;
  assign C0_DDR3_S_AXI_bresp[1:0] = Conn5_BRESP;
  assign C0_DDR3_S_AXI_bvalid = Conn5_BVALID;
  assign C0_DDR3_S_AXI_rdata[511:0] = Conn5_RDATA;
  assign C0_DDR3_S_AXI_rlast = Conn5_RLAST;
  assign C0_DDR3_S_AXI_rresp[1:0] = Conn5_RRESP;
  assign C0_DDR3_S_AXI_rvalid = Conn5_RVALID;
  assign C0_DDR3_S_AXI_wready = Conn5_WREADY;
  assign C0_DDR3_addr[15:0] = Conn2_ADDR;
  assign C0_DDR3_ba[2:0] = Conn2_BA;
  assign C0_DDR3_cas_n = Conn2_CAS_N;
  assign C0_DDR3_ck_n[1:0] = Conn2_CK_N;
  assign C0_DDR3_ck_p[1:0] = Conn2_CK_P;
  assign C0_DDR3_cke[1:0] = Conn2_CKE;
  assign C0_DDR3_cs_n[1:0] = Conn2_CS_N;
  assign C0_DDR3_odt[1:0] = Conn2_ODT;
  assign C0_DDR3_ras_n = Conn2_RAS_N;
  assign C0_DDR3_reset_n = Conn2_RESET_N;
  assign C0_DDR3_we_n = Conn2_WE_N;
  assign C0_DDR4_addr[15:0] = Conn4_ADDR;
  assign C0_DDR4_ba[2:0] = Conn4_BA;
  assign C0_DDR4_cas_n = Conn4_CAS_N;
  assign C0_DDR4_ck_n[1:0] = Conn4_CK_N;
  assign C0_DDR4_ck_p[1:0] = Conn4_CK_P;
  assign C0_DDR4_cke[1:0] = Conn4_CKE;
  assign C0_DDR4_cs_n[1:0] = Conn4_CS_N;
  assign C0_DDR4_odt[1:0] = Conn4_ODT;
  assign C0_DDR4_ras_n = Conn4_RAS_N;
  assign C0_DDR4_reset_n = Conn4_RESET_N;
  assign C0_DDR4_we_n = Conn4_WE_N;
  assign Conn1_CLK_N = C0_SYS_CLK_clk_n;
  assign Conn1_CLK_P = C0_SYS_CLK_clk_p;
  assign Conn3_CLK_N = C0_SYS_CLK1_clk_n;
  assign Conn3_CLK_P = C0_SYS_CLK1_clk_p;
  assign Conn5_ARADDR = C0_DDR3_S_AXI_araddr[32:0];
  assign Conn5_ARBURST = C0_DDR3_S_AXI_arburst[1:0];
  assign Conn5_ARCACHE = C0_DDR3_S_AXI_arcache[3:0];
  assign Conn5_ARLEN = C0_DDR3_S_AXI_arlen[7:0];
  assign Conn5_ARLOCK = C0_DDR3_S_AXI_arlock[0];
  assign Conn5_ARPROT = C0_DDR3_S_AXI_arprot[2:0];
  assign Conn5_ARQOS = C0_DDR3_S_AXI_arqos[3:0];
  assign Conn5_ARSIZE = C0_DDR3_S_AXI_arsize[2:0];
  assign Conn5_ARVALID = C0_DDR3_S_AXI_arvalid;
  assign Conn5_AWADDR = C0_DDR3_S_AXI_awaddr[32:0];
  assign Conn5_AWBURST = C0_DDR3_S_AXI_awburst[1:0];
  assign Conn5_AWCACHE = C0_DDR3_S_AXI_awcache[3:0];
  assign Conn5_AWLEN = C0_DDR3_S_AXI_awlen[7:0];
  assign Conn5_AWLOCK = C0_DDR3_S_AXI_awlock[0];
  assign Conn5_AWPROT = C0_DDR3_S_AXI_awprot[2:0];
  assign Conn5_AWQOS = C0_DDR3_S_AXI_awqos[3:0];
  assign Conn5_AWSIZE = C0_DDR3_S_AXI_awsize[2:0];
  assign Conn5_AWVALID = C0_DDR3_S_AXI_awvalid;
  assign Conn5_BREADY = C0_DDR3_S_AXI_bready;
  assign Conn5_RREADY = C0_DDR3_S_AXI_rready;
  assign Conn5_WDATA = C0_DDR3_S_AXI_wdata[511:0];
  assign Conn5_WLAST = C0_DDR3_S_AXI_wlast;
  assign Conn5_WSTRB = C0_DDR3_S_AXI_wstrb[63:0];
  assign Conn5_WVALID = C0_DDR3_S_AXI_wvalid;
  assign Conn6_ARADDR = C0_DDR3_S_AXI1_araddr[32:0];
  assign Conn6_ARBURST = C0_DDR3_S_AXI1_arburst[1:0];
  assign Conn6_ARCACHE = C0_DDR3_S_AXI1_arcache[3:0];
  assign Conn6_ARLEN = C0_DDR3_S_AXI1_arlen[7:0];
  assign Conn6_ARLOCK = C0_DDR3_S_AXI1_arlock[0];
  assign Conn6_ARPROT = C0_DDR3_S_AXI1_arprot[2:0];
  assign Conn6_ARQOS = C0_DDR3_S_AXI1_arqos[3:0];
  assign Conn6_ARSIZE = C0_DDR3_S_AXI1_arsize[2:0];
  assign Conn6_ARVALID = C0_DDR3_S_AXI1_arvalid;
  assign Conn6_AWADDR = C0_DDR3_S_AXI1_awaddr[32:0];
  assign Conn6_AWBURST = C0_DDR3_S_AXI1_awburst[1:0];
  assign Conn6_AWCACHE = C0_DDR3_S_AXI1_awcache[3:0];
  assign Conn6_AWLEN = C0_DDR3_S_AXI1_awlen[7:0];
  assign Conn6_AWLOCK = C0_DDR3_S_AXI1_awlock[0];
  assign Conn6_AWPROT = C0_DDR3_S_AXI1_awprot[2:0];
  assign Conn6_AWQOS = C0_DDR3_S_AXI1_awqos[3:0];
  assign Conn6_AWSIZE = C0_DDR3_S_AXI1_awsize[2:0];
  assign Conn6_AWVALID = C0_DDR3_S_AXI1_awvalid;
  assign Conn6_BREADY = C0_DDR3_S_AXI1_bready;
  assign Conn6_RREADY = C0_DDR3_S_AXI1_rready;
  assign Conn6_WDATA = C0_DDR3_S_AXI1_wdata[511:0];
  assign Conn6_WLAST = C0_DDR3_S_AXI1_wlast;
  assign Conn6_WSTRB = C0_DDR3_S_AXI1_wstrb[63:0];
  assign Conn6_WVALID = C0_DDR3_S_AXI1_wvalid;
  assign Conn7_ARADDR = C0_DDR3_S_AXI_CTRL_araddr[31:0];
  assign Conn7_ARVALID = C0_DDR3_S_AXI_CTRL_arvalid;
  assign Conn7_AWADDR = C0_DDR3_S_AXI_CTRL_awaddr[31:0];
  assign Conn7_AWVALID = C0_DDR3_S_AXI_CTRL_awvalid;
  assign Conn7_BREADY = C0_DDR3_S_AXI_CTRL_bready;
  assign Conn7_RREADY = C0_DDR3_S_AXI_CTRL_rready;
  assign Conn7_WDATA = C0_DDR3_S_AXI_CTRL_wdata[31:0];
  assign Conn7_WVALID = C0_DDR3_S_AXI_CTRL_wvalid;
  assign Conn8_ARADDR = C0_DDR3_S_AXI_CTRL1_araddr[31:0];
  assign Conn8_ARVALID = C0_DDR3_S_AXI_CTRL1_arvalid;
  assign Conn8_AWADDR = C0_DDR3_S_AXI_CTRL1_awaddr[31:0];
  assign Conn8_AWVALID = C0_DDR3_S_AXI_CTRL1_awvalid;
  assign Conn8_BREADY = C0_DDR3_S_AXI_CTRL1_bready;
  assign Conn8_RREADY = C0_DDR3_S_AXI_CTRL1_rready;
  assign Conn8_WDATA = C0_DDR3_S_AXI_CTRL1_wdata[31:0];
  assign Conn8_WVALID = C0_DDR3_S_AXI_CTRL1_wvalid;
  assign Res[0] = logic_ddrcalib_op_Res;
  assign c0_ddr3_aresetn1_1 = c0_ddr3_aresetn1[0];
  assign c0_ddr3_aresetn_1 = c0_ddr3_aresetn[0];
  assign c0_ddr3_ui_clk = ddrmem_c0_ddr3_ui_clk;
  assign c0_ddr3_ui_clk1 = ddrmem_2_c0_ddr3_ui_clk;
  assign c0_ddr3_ui_clk_sync_rst = ddrmem_c0_ddr3_ui_clk_sync_rst;
  assign c0_ddr3_ui_clk_sync_rst1 = ddrmem_2_c0_ddr3_ui_clk_sync_rst;
  assign sys_rst1_1 = sys_rst1[0];
  assign sys_rst_1 = sys_rst[0];
  xcl_design_ddrmem_0 ddrmem
       (.c0_ddr3_addr(Conn2_ADDR),
        .c0_ddr3_aresetn(c0_ddr3_aresetn_1),
        .c0_ddr3_ba(Conn2_BA),
        .c0_ddr3_cas_n(Conn2_CAS_N),
        .c0_ddr3_ck_n(Conn2_CK_N),
        .c0_ddr3_ck_p(Conn2_CK_P),
        .c0_ddr3_cke(Conn2_CKE),
        .c0_ddr3_cs_n(Conn2_CS_N),
        .c0_ddr3_dq(C0_DDR3_dq[71:0]),
        .c0_ddr3_dqs_n(C0_DDR3_dqs_n[8:0]),
        .c0_ddr3_dqs_p(C0_DDR3_dqs_p[8:0]),
        .c0_ddr3_odt(Conn2_ODT),
        .c0_ddr3_ras_n(Conn2_RAS_N),
        .c0_ddr3_reset_n(Conn2_RESET_N),
        .c0_ddr3_s_axi_araddr(Conn5_ARADDR),
        .c0_ddr3_s_axi_arburst(Conn5_ARBURST),
        .c0_ddr3_s_axi_arcache(Conn5_ARCACHE),
        .c0_ddr3_s_axi_arid(1'b0),
        .c0_ddr3_s_axi_arlen(Conn5_ARLEN),
        .c0_ddr3_s_axi_arlock(Conn5_ARLOCK),
        .c0_ddr3_s_axi_arprot(Conn5_ARPROT),
        .c0_ddr3_s_axi_arqos(Conn5_ARQOS),
        .c0_ddr3_s_axi_arready(Conn5_ARREADY),
        .c0_ddr3_s_axi_arsize(Conn5_ARSIZE),
        .c0_ddr3_s_axi_arvalid(Conn5_ARVALID),
        .c0_ddr3_s_axi_awaddr(Conn5_AWADDR),
        .c0_ddr3_s_axi_awburst(Conn5_AWBURST),
        .c0_ddr3_s_axi_awcache(Conn5_AWCACHE),
        .c0_ddr3_s_axi_awid(1'b0),
        .c0_ddr3_s_axi_awlen(Conn5_AWLEN),
        .c0_ddr3_s_axi_awlock(Conn5_AWLOCK),
        .c0_ddr3_s_axi_awprot(Conn5_AWPROT),
        .c0_ddr3_s_axi_awqos(Conn5_AWQOS),
        .c0_ddr3_s_axi_awready(Conn5_AWREADY),
        .c0_ddr3_s_axi_awsize(Conn5_AWSIZE),
        .c0_ddr3_s_axi_awvalid(Conn5_AWVALID),
        .c0_ddr3_s_axi_bready(Conn5_BREADY),
        .c0_ddr3_s_axi_bresp(Conn5_BRESP),
        .c0_ddr3_s_axi_bvalid(Conn5_BVALID),
        .c0_ddr3_s_axi_ctrl_araddr(Conn7_ARADDR),
        .c0_ddr3_s_axi_ctrl_arready(Conn7_ARREADY),
        .c0_ddr3_s_axi_ctrl_arvalid(Conn7_ARVALID),
        .c0_ddr3_s_axi_ctrl_awaddr(Conn7_AWADDR),
        .c0_ddr3_s_axi_ctrl_awready(Conn7_AWREADY),
        .c0_ddr3_s_axi_ctrl_awvalid(Conn7_AWVALID),
        .c0_ddr3_s_axi_ctrl_bready(Conn7_BREADY),
        .c0_ddr3_s_axi_ctrl_bresp(Conn7_BRESP),
        .c0_ddr3_s_axi_ctrl_bvalid(Conn7_BVALID),
        .c0_ddr3_s_axi_ctrl_rdata(Conn7_RDATA),
        .c0_ddr3_s_axi_ctrl_rready(Conn7_RREADY),
        .c0_ddr3_s_axi_ctrl_rresp(Conn7_RRESP),
        .c0_ddr3_s_axi_ctrl_rvalid(Conn7_RVALID),
        .c0_ddr3_s_axi_ctrl_wdata(Conn7_WDATA),
        .c0_ddr3_s_axi_ctrl_wready(Conn7_WREADY),
        .c0_ddr3_s_axi_ctrl_wvalid(Conn7_WVALID),
        .c0_ddr3_s_axi_rdata(Conn5_RDATA),
        .c0_ddr3_s_axi_rlast(Conn5_RLAST),
        .c0_ddr3_s_axi_rready(Conn5_RREADY),
        .c0_ddr3_s_axi_rresp(Conn5_RRESP),
        .c0_ddr3_s_axi_rvalid(Conn5_RVALID),
        .c0_ddr3_s_axi_wdata(Conn5_WDATA),
        .c0_ddr3_s_axi_wlast(Conn5_WLAST),
        .c0_ddr3_s_axi_wready(Conn5_WREADY),
        .c0_ddr3_s_axi_wstrb(Conn5_WSTRB),
        .c0_ddr3_s_axi_wvalid(Conn5_WVALID),
        .c0_ddr3_ui_clk(ddrmem_c0_ddr3_ui_clk),
        .c0_ddr3_ui_clk_sync_rst(ddrmem_c0_ddr3_ui_clk_sync_rst),
        .c0_ddr3_we_n(Conn2_WE_N),
        .c0_init_calib_complete(ddrmem_c0_init_calib_complete),
        .c0_sys_clk_n(Conn1_CLK_N),
        .c0_sys_clk_p(Conn1_CLK_P),
        .sys_rst(sys_rst_1));
  xcl_design_ddrmem_2_0 ddrmem_2
       (.c0_ddr3_addr(Conn4_ADDR),
        .c0_ddr3_aresetn(c0_ddr3_aresetn1_1),
        .c0_ddr3_ba(Conn4_BA),
        .c0_ddr3_cas_n(Conn4_CAS_N),
        .c0_ddr3_ck_n(Conn4_CK_N),
        .c0_ddr3_ck_p(Conn4_CK_P),
        .c0_ddr3_cke(Conn4_CKE),
        .c0_ddr3_cs_n(Conn4_CS_N),
        .c0_ddr3_dq(C0_DDR4_dq[71:0]),
        .c0_ddr3_dqs_n(C0_DDR4_dqs_n[8:0]),
        .c0_ddr3_dqs_p(C0_DDR4_dqs_p[8:0]),
        .c0_ddr3_odt(Conn4_ODT),
        .c0_ddr3_ras_n(Conn4_RAS_N),
        .c0_ddr3_reset_n(Conn4_RESET_N),
        .c0_ddr3_s_axi_araddr(Conn6_ARADDR),
        .c0_ddr3_s_axi_arburst(Conn6_ARBURST),
        .c0_ddr3_s_axi_arcache(Conn6_ARCACHE),
        .c0_ddr3_s_axi_arid(1'b0),
        .c0_ddr3_s_axi_arlen(Conn6_ARLEN),
        .c0_ddr3_s_axi_arlock(Conn6_ARLOCK),
        .c0_ddr3_s_axi_arprot(Conn6_ARPROT),
        .c0_ddr3_s_axi_arqos(Conn6_ARQOS),
        .c0_ddr3_s_axi_arready(Conn6_ARREADY),
        .c0_ddr3_s_axi_arsize(Conn6_ARSIZE),
        .c0_ddr3_s_axi_arvalid(Conn6_ARVALID),
        .c0_ddr3_s_axi_awaddr(Conn6_AWADDR),
        .c0_ddr3_s_axi_awburst(Conn6_AWBURST),
        .c0_ddr3_s_axi_awcache(Conn6_AWCACHE),
        .c0_ddr3_s_axi_awid(1'b0),
        .c0_ddr3_s_axi_awlen(Conn6_AWLEN),
        .c0_ddr3_s_axi_awlock(Conn6_AWLOCK),
        .c0_ddr3_s_axi_awprot(Conn6_AWPROT),
        .c0_ddr3_s_axi_awqos(Conn6_AWQOS),
        .c0_ddr3_s_axi_awready(Conn6_AWREADY),
        .c0_ddr3_s_axi_awsize(Conn6_AWSIZE),
        .c0_ddr3_s_axi_awvalid(Conn6_AWVALID),
        .c0_ddr3_s_axi_bready(Conn6_BREADY),
        .c0_ddr3_s_axi_bresp(Conn6_BRESP),
        .c0_ddr3_s_axi_bvalid(Conn6_BVALID),
        .c0_ddr3_s_axi_ctrl_araddr(Conn8_ARADDR),
        .c0_ddr3_s_axi_ctrl_arready(Conn8_ARREADY),
        .c0_ddr3_s_axi_ctrl_arvalid(Conn8_ARVALID),
        .c0_ddr3_s_axi_ctrl_awaddr(Conn8_AWADDR),
        .c0_ddr3_s_axi_ctrl_awready(Conn8_AWREADY),
        .c0_ddr3_s_axi_ctrl_awvalid(Conn8_AWVALID),
        .c0_ddr3_s_axi_ctrl_bready(Conn8_BREADY),
        .c0_ddr3_s_axi_ctrl_bresp(Conn8_BRESP),
        .c0_ddr3_s_axi_ctrl_bvalid(Conn8_BVALID),
        .c0_ddr3_s_axi_ctrl_rdata(Conn8_RDATA),
        .c0_ddr3_s_axi_ctrl_rready(Conn8_RREADY),
        .c0_ddr3_s_axi_ctrl_rresp(Conn8_RRESP),
        .c0_ddr3_s_axi_ctrl_rvalid(Conn8_RVALID),
        .c0_ddr3_s_axi_ctrl_wdata(Conn8_WDATA),
        .c0_ddr3_s_axi_ctrl_wready(Conn8_WREADY),
        .c0_ddr3_s_axi_ctrl_wvalid(Conn8_WVALID),
        .c0_ddr3_s_axi_rdata(Conn6_RDATA),
        .c0_ddr3_s_axi_rlast(Conn6_RLAST),
        .c0_ddr3_s_axi_rready(Conn6_RREADY),
        .c0_ddr3_s_axi_rresp(Conn6_RRESP),
        .c0_ddr3_s_axi_rvalid(Conn6_RVALID),
        .c0_ddr3_s_axi_wdata(Conn6_WDATA),
        .c0_ddr3_s_axi_wlast(Conn6_WLAST),
        .c0_ddr3_s_axi_wready(Conn6_WREADY),
        .c0_ddr3_s_axi_wstrb(Conn6_WSTRB),
        .c0_ddr3_s_axi_wvalid(Conn6_WVALID),
        .c0_ddr3_ui_clk(ddrmem_2_c0_ddr3_ui_clk),
        .c0_ddr3_ui_clk_sync_rst(ddrmem_2_c0_ddr3_ui_clk_sync_rst),
        .c0_ddr3_we_n(Conn4_WE_N),
        .c0_init_calib_complete(ddrmem_2_c0_init_calib_complete),
        .c0_sys_clk_n(Conn3_CLK_N),
        .c0_sys_clk_p(Conn3_CLK_P),
        .sys_rst(sys_rst1_1));
  xcl_design_logic_ddrcalib_op_0 logic_ddrcalib_op
       (.Op1(ddrmem_c0_init_calib_complete),
        .Op2(ddrmem_2_c0_init_calib_complete),
        .Res(logic_ddrcalib_op_Res));
endmodule

module pr_isolation_limited_imp_FDL1GF
   (M_AXI1_araddr,
    M_AXI1_arburst,
    M_AXI1_arcache,
    M_AXI1_arid,
    M_AXI1_arlen,
    M_AXI1_arlock,
    M_AXI1_arprot,
    M_AXI1_arqos,
    M_AXI1_arready,
    M_AXI1_arsize,
    M_AXI1_arvalid,
    M_AXI1_awaddr,
    M_AXI1_awburst,
    M_AXI1_awcache,
    M_AXI1_awid,
    M_AXI1_awlen,
    M_AXI1_awlock,
    M_AXI1_awprot,
    M_AXI1_awqos,
    M_AXI1_awready,
    M_AXI1_awsize,
    M_AXI1_awvalid,
    M_AXI1_bid,
    M_AXI1_bready,
    M_AXI1_bresp,
    M_AXI1_bvalid,
    M_AXI1_rdata,
    M_AXI1_rid,
    M_AXI1_rlast,
    M_AXI1_rready,
    M_AXI1_rresp,
    M_AXI1_rvalid,
    M_AXI1_wdata,
    M_AXI1_wlast,
    M_AXI1_wready,
    M_AXI1_wstrb,
    M_AXI1_wvalid,
    M_AXI2_araddr,
    M_AXI2_arburst,
    M_AXI2_arcache,
    M_AXI2_arid,
    M_AXI2_arlen,
    M_AXI2_arlock,
    M_AXI2_arprot,
    M_AXI2_arqos,
    M_AXI2_arready,
    M_AXI2_arsize,
    M_AXI2_arvalid,
    M_AXI2_awaddr,
    M_AXI2_awburst,
    M_AXI2_awcache,
    M_AXI2_awid,
    M_AXI2_awlen,
    M_AXI2_awlock,
    M_AXI2_awprot,
    M_AXI2_awqos,
    M_AXI2_awready,
    M_AXI2_awsize,
    M_AXI2_awvalid,
    M_AXI2_bid,
    M_AXI2_bready,
    M_AXI2_bresp,
    M_AXI2_bvalid,
    M_AXI2_rdata,
    M_AXI2_rid,
    M_AXI2_rlast,
    M_AXI2_rready,
    M_AXI2_rresp,
    M_AXI2_rvalid,
    M_AXI2_wdata,
    M_AXI2_wlast,
    M_AXI2_wready,
    M_AXI2_wstrb,
    M_AXI2_wvalid,
    M_AXI_araddr,
    M_AXI_arprot,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awprot,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_AXI1_araddr,
    S_AXI1_arburst,
    S_AXI1_arcache,
    S_AXI1_arid,
    S_AXI1_arlen,
    S_AXI1_arlock,
    S_AXI1_arprot,
    S_AXI1_arqos,
    S_AXI1_arready,
    S_AXI1_arsize,
    S_AXI1_arvalid,
    S_AXI1_awaddr,
    S_AXI1_awburst,
    S_AXI1_awcache,
    S_AXI1_awid,
    S_AXI1_awlen,
    S_AXI1_awlock,
    S_AXI1_awprot,
    S_AXI1_awqos,
    S_AXI1_awready,
    S_AXI1_awsize,
    S_AXI1_awvalid,
    S_AXI1_bid,
    S_AXI1_bready,
    S_AXI1_bresp,
    S_AXI1_bvalid,
    S_AXI1_rdata,
    S_AXI1_rid,
    S_AXI1_rlast,
    S_AXI1_rready,
    S_AXI1_rresp,
    S_AXI1_rvalid,
    S_AXI1_wdata,
    S_AXI1_wlast,
    S_AXI1_wready,
    S_AXI1_wstrb,
    S_AXI1_wvalid,
    S_AXI2_araddr,
    S_AXI2_arprot,
    S_AXI2_arready,
    S_AXI2_arvalid,
    S_AXI2_awaddr,
    S_AXI2_awprot,
    S_AXI2_awready,
    S_AXI2_awvalid,
    S_AXI2_bready,
    S_AXI2_bresp,
    S_AXI2_bvalid,
    S_AXI2_rdata,
    S_AXI2_rready,
    S_AXI2_rresp,
    S_AXI2_rvalid,
    S_AXI2_wdata,
    S_AXI2_wready,
    S_AXI2_wstrb,
    S_AXI2_wvalid,
    S_AXI3_araddr,
    S_AXI3_arready,
    S_AXI3_arvalid,
    S_AXI3_awaddr,
    S_AXI3_awready,
    S_AXI3_awvalid,
    S_AXI3_bready,
    S_AXI3_bresp,
    S_AXI3_bvalid,
    S_AXI3_rdata,
    S_AXI3_rready,
    S_AXI3_rresp,
    S_AXI3_rvalid,
    S_AXI3_wdata,
    S_AXI3_wready,
    S_AXI3_wstrb,
    S_AXI3_wvalid,
    S_AXI4_araddr,
    S_AXI4_arready,
    S_AXI4_arvalid,
    S_AXI4_awaddr,
    S_AXI4_awready,
    S_AXI4_awvalid,
    S_AXI4_bready,
    S_AXI4_bresp,
    S_AXI4_bvalid,
    S_AXI4_rdata,
    S_AXI4_rready,
    S_AXI4_rresp,
    S_AXI4_rvalid,
    S_AXI4_wdata,
    S_AXI4_wready,
    S_AXI4_wstrb,
    S_AXI4_wvalid,
    S_AXI_araddr,
    S_AXI_arburst,
    S_AXI_arcache,
    S_AXI_arid,
    S_AXI_arlen,
    S_AXI_arlock,
    S_AXI_arprot,
    S_AXI_arqos,
    S_AXI_arready,
    S_AXI_arsize,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awburst,
    S_AXI_awcache,
    S_AXI_awid,
    S_AXI_awlen,
    S_AXI_awlock,
    S_AXI_awprot,
    S_AXI_awqos,
    S_AXI_awready,
    S_AXI_awsize,
    S_AXI_awvalid,
    S_AXI_bid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rid,
    S_AXI_rlast,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wlast,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid,
    dcm_locked,
    dcm_locked1,
    ext_reset_in,
    gpio_io_i,
    interconnect_aresetn,
    interconnect_aresetn1,
    slowest_sync_clk,
    slowest_sync_clk1);
  output [37:0]M_AXI1_araddr;
  output [1:0]M_AXI1_arburst;
  output [3:0]M_AXI1_arcache;
  output [3:0]M_AXI1_arid;
  output [7:0]M_AXI1_arlen;
  output [0:0]M_AXI1_arlock;
  output [2:0]M_AXI1_arprot;
  output [3:0]M_AXI1_arqos;
  input M_AXI1_arready;
  output [2:0]M_AXI1_arsize;
  output M_AXI1_arvalid;
  output [37:0]M_AXI1_awaddr;
  output [1:0]M_AXI1_awburst;
  output [3:0]M_AXI1_awcache;
  output [3:0]M_AXI1_awid;
  output [7:0]M_AXI1_awlen;
  output [0:0]M_AXI1_awlock;
  output [2:0]M_AXI1_awprot;
  output [3:0]M_AXI1_awqos;
  input M_AXI1_awready;
  output [2:0]M_AXI1_awsize;
  output M_AXI1_awvalid;
  input [3:0]M_AXI1_bid;
  output M_AXI1_bready;
  input [1:0]M_AXI1_bresp;
  input M_AXI1_bvalid;
  input [511:0]M_AXI1_rdata;
  input [3:0]M_AXI1_rid;
  input M_AXI1_rlast;
  output M_AXI1_rready;
  input [1:0]M_AXI1_rresp;
  input M_AXI1_rvalid;
  output [511:0]M_AXI1_wdata;
  output M_AXI1_wlast;
  input M_AXI1_wready;
  output [63:0]M_AXI1_wstrb;
  output M_AXI1_wvalid;
  output [37:0]M_AXI2_araddr;
  output [1:0]M_AXI2_arburst;
  output [3:0]M_AXI2_arcache;
  output [3:0]M_AXI2_arid;
  output [7:0]M_AXI2_arlen;
  output [0:0]M_AXI2_arlock;
  output [2:0]M_AXI2_arprot;
  output [3:0]M_AXI2_arqos;
  input M_AXI2_arready;
  output [2:0]M_AXI2_arsize;
  output M_AXI2_arvalid;
  output [37:0]M_AXI2_awaddr;
  output [1:0]M_AXI2_awburst;
  output [3:0]M_AXI2_awcache;
  output [3:0]M_AXI2_awid;
  output [7:0]M_AXI2_awlen;
  output [0:0]M_AXI2_awlock;
  output [2:0]M_AXI2_awprot;
  output [3:0]M_AXI2_awqos;
  input M_AXI2_awready;
  output [2:0]M_AXI2_awsize;
  output M_AXI2_awvalid;
  input [3:0]M_AXI2_bid;
  output M_AXI2_bready;
  input [1:0]M_AXI2_bresp;
  input M_AXI2_bvalid;
  input [511:0]M_AXI2_rdata;
  input [3:0]M_AXI2_rid;
  input M_AXI2_rlast;
  output M_AXI2_rready;
  input [1:0]M_AXI2_rresp;
  input M_AXI2_rvalid;
  output [511:0]M_AXI2_wdata;
  output M_AXI2_wlast;
  input M_AXI2_wready;
  output [63:0]M_AXI2_wstrb;
  output M_AXI2_wvalid;
  output [16:0]M_AXI_araddr;
  output [2:0]M_AXI_arprot;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [16:0]M_AXI_awaddr;
  output [2:0]M_AXI_awprot;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input [37:0]S_AXI1_araddr;
  input [1:0]S_AXI1_arburst;
  input [3:0]S_AXI1_arcache;
  input [3:0]S_AXI1_arid;
  input [7:0]S_AXI1_arlen;
  input [0:0]S_AXI1_arlock;
  input [2:0]S_AXI1_arprot;
  input [3:0]S_AXI1_arqos;
  output S_AXI1_arready;
  input [2:0]S_AXI1_arsize;
  input S_AXI1_arvalid;
  input [37:0]S_AXI1_awaddr;
  input [1:0]S_AXI1_awburst;
  input [3:0]S_AXI1_awcache;
  input [3:0]S_AXI1_awid;
  input [7:0]S_AXI1_awlen;
  input [0:0]S_AXI1_awlock;
  input [2:0]S_AXI1_awprot;
  input [3:0]S_AXI1_awqos;
  output S_AXI1_awready;
  input [2:0]S_AXI1_awsize;
  input S_AXI1_awvalid;
  output [3:0]S_AXI1_bid;
  input S_AXI1_bready;
  output [1:0]S_AXI1_bresp;
  output S_AXI1_bvalid;
  output [511:0]S_AXI1_rdata;
  output [3:0]S_AXI1_rid;
  output S_AXI1_rlast;
  input S_AXI1_rready;
  output [1:0]S_AXI1_rresp;
  output S_AXI1_rvalid;
  input [511:0]S_AXI1_wdata;
  input S_AXI1_wlast;
  output S_AXI1_wready;
  input [63:0]S_AXI1_wstrb;
  input S_AXI1_wvalid;
  input [16:0]S_AXI2_araddr;
  input [2:0]S_AXI2_arprot;
  output S_AXI2_arready;
  input S_AXI2_arvalid;
  input [16:0]S_AXI2_awaddr;
  input [2:0]S_AXI2_awprot;
  output S_AXI2_awready;
  input S_AXI2_awvalid;
  input S_AXI2_bready;
  output [1:0]S_AXI2_bresp;
  output S_AXI2_bvalid;
  output [31:0]S_AXI2_rdata;
  input S_AXI2_rready;
  output [1:0]S_AXI2_rresp;
  output S_AXI2_rvalid;
  input [31:0]S_AXI2_wdata;
  output S_AXI2_wready;
  input [3:0]S_AXI2_wstrb;
  input S_AXI2_wvalid;
  input [8:0]S_AXI3_araddr;
  output S_AXI3_arready;
  input S_AXI3_arvalid;
  input [8:0]S_AXI3_awaddr;
  output S_AXI3_awready;
  input S_AXI3_awvalid;
  input S_AXI3_bready;
  output [1:0]S_AXI3_bresp;
  output S_AXI3_bvalid;
  output [31:0]S_AXI3_rdata;
  input S_AXI3_rready;
  output [1:0]S_AXI3_rresp;
  output S_AXI3_rvalid;
  input [31:0]S_AXI3_wdata;
  output S_AXI3_wready;
  input [3:0]S_AXI3_wstrb;
  input S_AXI3_wvalid;
  input [8:0]S_AXI4_araddr;
  output S_AXI4_arready;
  input S_AXI4_arvalid;
  input [8:0]S_AXI4_awaddr;
  output S_AXI4_awready;
  input S_AXI4_awvalid;
  input S_AXI4_bready;
  output [1:0]S_AXI4_bresp;
  output S_AXI4_bvalid;
  output [31:0]S_AXI4_rdata;
  input S_AXI4_rready;
  output [1:0]S_AXI4_rresp;
  output S_AXI4_rvalid;
  input [31:0]S_AXI4_wdata;
  output S_AXI4_wready;
  input [3:0]S_AXI4_wstrb;
  input S_AXI4_wvalid;
  input [37:0]S_AXI_araddr;
  input [1:0]S_AXI_arburst;
  input [3:0]S_AXI_arcache;
  input [3:0]S_AXI_arid;
  input [7:0]S_AXI_arlen;
  input [0:0]S_AXI_arlock;
  input [2:0]S_AXI_arprot;
  input [3:0]S_AXI_arqos;
  output S_AXI_arready;
  input [2:0]S_AXI_arsize;
  input S_AXI_arvalid;
  input [37:0]S_AXI_awaddr;
  input [1:0]S_AXI_awburst;
  input [3:0]S_AXI_awcache;
  input [3:0]S_AXI_awid;
  input [7:0]S_AXI_awlen;
  input [0:0]S_AXI_awlock;
  input [2:0]S_AXI_awprot;
  input [3:0]S_AXI_awqos;
  output S_AXI_awready;
  input [2:0]S_AXI_awsize;
  input S_AXI_awvalid;
  output [3:0]S_AXI_bid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [511:0]S_AXI_rdata;
  output [3:0]S_AXI_rid;
  output S_AXI_rlast;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [511:0]S_AXI_wdata;
  input S_AXI_wlast;
  output S_AXI_wready;
  input [63:0]S_AXI_wstrb;
  input S_AXI_wvalid;
  input dcm_locked;
  input dcm_locked1;
  input [0:0]ext_reset_in;
  input [0:0]gpio_io_i;
  output [0:0]interconnect_aresetn;
  output [0:0]interconnect_aresetn1;
  input slowest_sync_clk;
  input slowest_sync_clk1;

  wire [37:0]Conn1_ARADDR;
  wire [1:0]Conn1_ARBURST;
  wire [3:0]Conn1_ARCACHE;
  wire [3:0]Conn1_ARID;
  wire [7:0]Conn1_ARLEN;
  wire [0:0]Conn1_ARLOCK;
  wire [2:0]Conn1_ARPROT;
  wire [3:0]Conn1_ARQOS;
  wire Conn1_ARREADY;
  wire [2:0]Conn1_ARSIZE;
  wire Conn1_ARVALID;
  wire [37:0]Conn1_AWADDR;
  wire [1:0]Conn1_AWBURST;
  wire [3:0]Conn1_AWCACHE;
  wire [3:0]Conn1_AWID;
  wire [7:0]Conn1_AWLEN;
  wire [0:0]Conn1_AWLOCK;
  wire [2:0]Conn1_AWPROT;
  wire [3:0]Conn1_AWQOS;
  wire Conn1_AWREADY;
  wire [2:0]Conn1_AWSIZE;
  wire Conn1_AWVALID;
  wire [3:0]Conn1_BID;
  wire Conn1_BREADY;
  wire [1:0]Conn1_BRESP;
  wire Conn1_BVALID;
  wire [511:0]Conn1_RDATA;
  wire [3:0]Conn1_RID;
  wire Conn1_RLAST;
  wire Conn1_RREADY;
  wire [1:0]Conn1_RRESP;
  wire Conn1_RVALID;
  wire [511:0]Conn1_WDATA;
  wire Conn1_WLAST;
  wire Conn1_WREADY;
  wire [63:0]Conn1_WSTRB;
  wire Conn1_WVALID;
  wire [37:0]Conn2_ARADDR;
  wire [1:0]Conn2_ARBURST;
  wire [3:0]Conn2_ARCACHE;
  wire [3:0]Conn2_ARID;
  wire [7:0]Conn2_ARLEN;
  wire [0:0]Conn2_ARLOCK;
  wire [2:0]Conn2_ARPROT;
  wire [3:0]Conn2_ARQOS;
  wire Conn2_ARREADY;
  wire [2:0]Conn2_ARSIZE;
  wire Conn2_ARVALID;
  wire [37:0]Conn2_AWADDR;
  wire [1:0]Conn2_AWBURST;
  wire [3:0]Conn2_AWCACHE;
  wire [3:0]Conn2_AWID;
  wire [7:0]Conn2_AWLEN;
  wire [0:0]Conn2_AWLOCK;
  wire [2:0]Conn2_AWPROT;
  wire [3:0]Conn2_AWQOS;
  wire Conn2_AWREADY;
  wire [2:0]Conn2_AWSIZE;
  wire Conn2_AWVALID;
  wire [3:0]Conn2_BID;
  wire Conn2_BREADY;
  wire [1:0]Conn2_BRESP;
  wire Conn2_BVALID;
  wire [511:0]Conn2_RDATA;
  wire [3:0]Conn2_RID;
  wire Conn2_RLAST;
  wire Conn2_RREADY;
  wire [1:0]Conn2_RRESP;
  wire Conn2_RVALID;
  wire [511:0]Conn2_WDATA;
  wire Conn2_WLAST;
  wire Conn2_WREADY;
  wire [63:0]Conn2_WSTRB;
  wire Conn2_WVALID;
  wire [16:0]Conn3_ARADDR;
  wire [2:0]Conn3_ARPROT;
  wire Conn3_ARREADY;
  wire Conn3_ARVALID;
  wire [16:0]Conn3_AWADDR;
  wire [2:0]Conn3_AWPROT;
  wire Conn3_AWREADY;
  wire Conn3_AWVALID;
  wire Conn3_BREADY;
  wire [1:0]Conn3_BRESP;
  wire Conn3_BVALID;
  wire [31:0]Conn3_RDATA;
  wire Conn3_RREADY;
  wire [1:0]Conn3_RRESP;
  wire Conn3_RVALID;
  wire [31:0]Conn3_WDATA;
  wire Conn3_WREADY;
  wire [3:0]Conn3_WSTRB;
  wire Conn3_WVALID;
  wire [37:0]Conn4_ARADDR;
  wire [1:0]Conn4_ARBURST;
  wire [3:0]Conn4_ARCACHE;
  wire [3:0]Conn4_ARID;
  wire [7:0]Conn4_ARLEN;
  wire [0:0]Conn4_ARLOCK;
  wire [2:0]Conn4_ARPROT;
  wire [3:0]Conn4_ARQOS;
  wire Conn4_ARREADY;
  wire [2:0]Conn4_ARSIZE;
  wire Conn4_ARVALID;
  wire [37:0]Conn4_AWADDR;
  wire [1:0]Conn4_AWBURST;
  wire [3:0]Conn4_AWCACHE;
  wire [3:0]Conn4_AWID;
  wire [7:0]Conn4_AWLEN;
  wire [0:0]Conn4_AWLOCK;
  wire [2:0]Conn4_AWPROT;
  wire [3:0]Conn4_AWQOS;
  wire Conn4_AWREADY;
  wire [2:0]Conn4_AWSIZE;
  wire Conn4_AWVALID;
  wire [3:0]Conn4_BID;
  wire Conn4_BREADY;
  wire [1:0]Conn4_BRESP;
  wire Conn4_BVALID;
  wire [511:0]Conn4_RDATA;
  wire [3:0]Conn4_RID;
  wire Conn4_RLAST;
  wire Conn4_RREADY;
  wire [1:0]Conn4_RRESP;
  wire Conn4_RVALID;
  wire [511:0]Conn4_WDATA;
  wire Conn4_WLAST;
  wire Conn4_WREADY;
  wire [63:0]Conn4_WSTRB;
  wire Conn4_WVALID;
  wire [37:0]Conn5_ARADDR;
  wire [1:0]Conn5_ARBURST;
  wire [3:0]Conn5_ARCACHE;
  wire [3:0]Conn5_ARID;
  wire [7:0]Conn5_ARLEN;
  wire [0:0]Conn5_ARLOCK;
  wire [2:0]Conn5_ARPROT;
  wire [3:0]Conn5_ARQOS;
  wire Conn5_ARREADY;
  wire [2:0]Conn5_ARSIZE;
  wire Conn5_ARVALID;
  wire [37:0]Conn5_AWADDR;
  wire [1:0]Conn5_AWBURST;
  wire [3:0]Conn5_AWCACHE;
  wire [3:0]Conn5_AWID;
  wire [7:0]Conn5_AWLEN;
  wire [0:0]Conn5_AWLOCK;
  wire [2:0]Conn5_AWPROT;
  wire [3:0]Conn5_AWQOS;
  wire Conn5_AWREADY;
  wire [2:0]Conn5_AWSIZE;
  wire Conn5_AWVALID;
  wire [3:0]Conn5_BID;
  wire Conn5_BREADY;
  wire [1:0]Conn5_BRESP;
  wire Conn5_BVALID;
  wire [511:0]Conn5_RDATA;
  wire [3:0]Conn5_RID;
  wire Conn5_RLAST;
  wire Conn5_RREADY;
  wire [1:0]Conn5_RRESP;
  wire Conn5_RVALID;
  wire [511:0]Conn5_WDATA;
  wire Conn5_WLAST;
  wire Conn5_WREADY;
  wire [63:0]Conn5_WSTRB;
  wire Conn5_WVALID;
  wire [16:0]Conn6_ARADDR;
  wire [2:0]Conn6_ARPROT;
  wire Conn6_ARREADY;
  wire Conn6_ARVALID;
  wire [16:0]Conn6_AWADDR;
  wire [2:0]Conn6_AWPROT;
  wire Conn6_AWREADY;
  wire Conn6_AWVALID;
  wire Conn6_BREADY;
  wire [1:0]Conn6_BRESP;
  wire Conn6_BVALID;
  wire [31:0]Conn6_RDATA;
  wire Conn6_RREADY;
  wire [1:0]Conn6_RRESP;
  wire Conn6_RVALID;
  wire [31:0]Conn6_WDATA;
  wire Conn6_WREADY;
  wire [3:0]Conn6_WSTRB;
  wire Conn6_WVALID;
  wire [8:0]Conn7_ARADDR;
  wire Conn7_ARREADY;
  wire Conn7_ARVALID;
  wire [8:0]Conn7_AWADDR;
  wire Conn7_AWREADY;
  wire Conn7_AWVALID;
  wire Conn7_BREADY;
  wire [1:0]Conn7_BRESP;
  wire Conn7_BVALID;
  wire [31:0]Conn7_RDATA;
  wire Conn7_RREADY;
  wire [1:0]Conn7_RRESP;
  wire Conn7_RVALID;
  wire [31:0]Conn7_WDATA;
  wire Conn7_WREADY;
  wire [3:0]Conn7_WSTRB;
  wire Conn7_WVALID;
  wire [8:0]Conn8_ARADDR;
  wire Conn8_ARREADY;
  wire Conn8_ARVALID;
  wire [8:0]Conn8_AWADDR;
  wire Conn8_AWREADY;
  wire Conn8_AWVALID;
  wire Conn8_BREADY;
  wire [1:0]Conn8_BRESP;
  wire Conn8_BVALID;
  wire [31:0]Conn8_RDATA;
  wire Conn8_RREADY;
  wire [1:0]Conn8_RRESP;
  wire Conn8_RVALID;
  wire [31:0]Conn8_WDATA;
  wire Conn8_WREADY;
  wire [3:0]Conn8_WSTRB;
  wire Conn8_WVALID;
  wire dcm_locked1_1;
  wire dcm_locked_1;
  wire [0:0]ext_reset_in_1;
  wire [1:0]gate_pr_gpio_io_o;
  wire [0:0]gpio_io_i_1;
  wire [0:0]psreset_kernel_pr_interconnect_aresetn;
  wire [0:0]psreset_regslice_pr_interconnect_aresetn;
  wire [0:0]psreset_system_pr_interconnect_aresetn;
  wire [0:0]slice_reset_kernel_pr_Dout;
  wire [0:0]slice_reset_system_pr_Dout;
  wire slowest_sync_clk1_1;
  wire slowest_sync_clk_1;

  assign Conn1_ARADDR = S_AXI_araddr[37:0];
  assign Conn1_ARBURST = S_AXI_arburst[1:0];
  assign Conn1_ARCACHE = S_AXI_arcache[3:0];
  assign Conn1_ARID = S_AXI_arid[3:0];
  assign Conn1_ARLEN = S_AXI_arlen[7:0];
  assign Conn1_ARLOCK = S_AXI_arlock[0];
  assign Conn1_ARPROT = S_AXI_arprot[2:0];
  assign Conn1_ARQOS = S_AXI_arqos[3:0];
  assign Conn1_ARSIZE = S_AXI_arsize[2:0];
  assign Conn1_ARVALID = S_AXI_arvalid;
  assign Conn1_AWADDR = S_AXI_awaddr[37:0];
  assign Conn1_AWBURST = S_AXI_awburst[1:0];
  assign Conn1_AWCACHE = S_AXI_awcache[3:0];
  assign Conn1_AWID = S_AXI_awid[3:0];
  assign Conn1_AWLEN = S_AXI_awlen[7:0];
  assign Conn1_AWLOCK = S_AXI_awlock[0];
  assign Conn1_AWPROT = S_AXI_awprot[2:0];
  assign Conn1_AWQOS = S_AXI_awqos[3:0];
  assign Conn1_AWSIZE = S_AXI_awsize[2:0];
  assign Conn1_AWVALID = S_AXI_awvalid;
  assign Conn1_BREADY = S_AXI_bready;
  assign Conn1_RREADY = S_AXI_rready;
  assign Conn1_WDATA = S_AXI_wdata[511:0];
  assign Conn1_WLAST = S_AXI_wlast;
  assign Conn1_WSTRB = S_AXI_wstrb[63:0];
  assign Conn1_WVALID = S_AXI_wvalid;
  assign Conn2_ARADDR = S_AXI1_araddr[37:0];
  assign Conn2_ARBURST = S_AXI1_arburst[1:0];
  assign Conn2_ARCACHE = S_AXI1_arcache[3:0];
  assign Conn2_ARID = S_AXI1_arid[3:0];
  assign Conn2_ARLEN = S_AXI1_arlen[7:0];
  assign Conn2_ARLOCK = S_AXI1_arlock[0];
  assign Conn2_ARPROT = S_AXI1_arprot[2:0];
  assign Conn2_ARQOS = S_AXI1_arqos[3:0];
  assign Conn2_ARSIZE = S_AXI1_arsize[2:0];
  assign Conn2_ARVALID = S_AXI1_arvalid;
  assign Conn2_AWADDR = S_AXI1_awaddr[37:0];
  assign Conn2_AWBURST = S_AXI1_awburst[1:0];
  assign Conn2_AWCACHE = S_AXI1_awcache[3:0];
  assign Conn2_AWID = S_AXI1_awid[3:0];
  assign Conn2_AWLEN = S_AXI1_awlen[7:0];
  assign Conn2_AWLOCK = S_AXI1_awlock[0];
  assign Conn2_AWPROT = S_AXI1_awprot[2:0];
  assign Conn2_AWQOS = S_AXI1_awqos[3:0];
  assign Conn2_AWSIZE = S_AXI1_awsize[2:0];
  assign Conn2_AWVALID = S_AXI1_awvalid;
  assign Conn2_BREADY = S_AXI1_bready;
  assign Conn2_RREADY = S_AXI1_rready;
  assign Conn2_WDATA = S_AXI1_wdata[511:0];
  assign Conn2_WLAST = S_AXI1_wlast;
  assign Conn2_WSTRB = S_AXI1_wstrb[63:0];
  assign Conn2_WVALID = S_AXI1_wvalid;
  assign Conn3_ARREADY = M_AXI_arready;
  assign Conn3_AWREADY = M_AXI_awready;
  assign Conn3_BRESP = M_AXI_bresp[1:0];
  assign Conn3_BVALID = M_AXI_bvalid;
  assign Conn3_RDATA = M_AXI_rdata[31:0];
  assign Conn3_RRESP = M_AXI_rresp[1:0];
  assign Conn3_RVALID = M_AXI_rvalid;
  assign Conn3_WREADY = M_AXI_wready;
  assign Conn4_ARREADY = M_AXI1_arready;
  assign Conn4_AWREADY = M_AXI1_awready;
  assign Conn4_BID = M_AXI1_bid[3:0];
  assign Conn4_BRESP = M_AXI1_bresp[1:0];
  assign Conn4_BVALID = M_AXI1_bvalid;
  assign Conn4_RDATA = M_AXI1_rdata[511:0];
  assign Conn4_RID = M_AXI1_rid[3:0];
  assign Conn4_RLAST = M_AXI1_rlast;
  assign Conn4_RRESP = M_AXI1_rresp[1:0];
  assign Conn4_RVALID = M_AXI1_rvalid;
  assign Conn4_WREADY = M_AXI1_wready;
  assign Conn5_ARREADY = M_AXI2_arready;
  assign Conn5_AWREADY = M_AXI2_awready;
  assign Conn5_BID = M_AXI2_bid[3:0];
  assign Conn5_BRESP = M_AXI2_bresp[1:0];
  assign Conn5_BVALID = M_AXI2_bvalid;
  assign Conn5_RDATA = M_AXI2_rdata[511:0];
  assign Conn5_RID = M_AXI2_rid[3:0];
  assign Conn5_RLAST = M_AXI2_rlast;
  assign Conn5_RRESP = M_AXI2_rresp[1:0];
  assign Conn5_RVALID = M_AXI2_rvalid;
  assign Conn5_WREADY = M_AXI2_wready;
  assign Conn6_ARADDR = S_AXI2_araddr[16:0];
  assign Conn6_ARPROT = S_AXI2_arprot[2:0];
  assign Conn6_ARVALID = S_AXI2_arvalid;
  assign Conn6_AWADDR = S_AXI2_awaddr[16:0];
  assign Conn6_AWPROT = S_AXI2_awprot[2:0];
  assign Conn6_AWVALID = S_AXI2_awvalid;
  assign Conn6_BREADY = S_AXI2_bready;
  assign Conn6_RREADY = S_AXI2_rready;
  assign Conn6_WDATA = S_AXI2_wdata[31:0];
  assign Conn6_WSTRB = S_AXI2_wstrb[3:0];
  assign Conn6_WVALID = S_AXI2_wvalid;
  assign Conn7_ARADDR = S_AXI3_araddr[8:0];
  assign Conn7_ARVALID = S_AXI3_arvalid;
  assign Conn7_AWADDR = S_AXI3_awaddr[8:0];
  assign Conn7_AWVALID = S_AXI3_awvalid;
  assign Conn7_BREADY = S_AXI3_bready;
  assign Conn7_RREADY = S_AXI3_rready;
  assign Conn7_WDATA = S_AXI3_wdata[31:0];
  assign Conn7_WSTRB = S_AXI3_wstrb[3:0];
  assign Conn7_WVALID = S_AXI3_wvalid;
  assign Conn8_ARADDR = S_AXI4_araddr[8:0];
  assign Conn8_ARVALID = S_AXI4_arvalid;
  assign Conn8_AWADDR = S_AXI4_awaddr[8:0];
  assign Conn8_AWVALID = S_AXI4_awvalid;
  assign Conn8_BREADY = S_AXI4_bready;
  assign Conn8_RREADY = S_AXI4_rready;
  assign Conn8_WDATA = S_AXI4_wdata[31:0];
  assign Conn8_WSTRB = S_AXI4_wstrb[3:0];
  assign Conn8_WVALID = S_AXI4_wvalid;
  assign M_AXI1_araddr[37:0] = Conn4_ARADDR;
  assign M_AXI1_arburst[1:0] = Conn4_ARBURST;
  assign M_AXI1_arcache[3:0] = Conn4_ARCACHE;
  assign M_AXI1_arid[3:0] = Conn4_ARID;
  assign M_AXI1_arlen[7:0] = Conn4_ARLEN;
  assign M_AXI1_arlock[0] = Conn4_ARLOCK;
  assign M_AXI1_arprot[2:0] = Conn4_ARPROT;
  assign M_AXI1_arqos[3:0] = Conn4_ARQOS;
  assign M_AXI1_arsize[2:0] = Conn4_ARSIZE;
  assign M_AXI1_arvalid = Conn4_ARVALID;
  assign M_AXI1_awaddr[37:0] = Conn4_AWADDR;
  assign M_AXI1_awburst[1:0] = Conn4_AWBURST;
  assign M_AXI1_awcache[3:0] = Conn4_AWCACHE;
  assign M_AXI1_awid[3:0] = Conn4_AWID;
  assign M_AXI1_awlen[7:0] = Conn4_AWLEN;
  assign M_AXI1_awlock[0] = Conn4_AWLOCK;
  assign M_AXI1_awprot[2:0] = Conn4_AWPROT;
  assign M_AXI1_awqos[3:0] = Conn4_AWQOS;
  assign M_AXI1_awsize[2:0] = Conn4_AWSIZE;
  assign M_AXI1_awvalid = Conn4_AWVALID;
  assign M_AXI1_bready = Conn4_BREADY;
  assign M_AXI1_rready = Conn4_RREADY;
  assign M_AXI1_wdata[511:0] = Conn4_WDATA;
  assign M_AXI1_wlast = Conn4_WLAST;
  assign M_AXI1_wstrb[63:0] = Conn4_WSTRB;
  assign M_AXI1_wvalid = Conn4_WVALID;
  assign M_AXI2_araddr[37:0] = Conn5_ARADDR;
  assign M_AXI2_arburst[1:0] = Conn5_ARBURST;
  assign M_AXI2_arcache[3:0] = Conn5_ARCACHE;
  assign M_AXI2_arid[3:0] = Conn5_ARID;
  assign M_AXI2_arlen[7:0] = Conn5_ARLEN;
  assign M_AXI2_arlock[0] = Conn5_ARLOCK;
  assign M_AXI2_arprot[2:0] = Conn5_ARPROT;
  assign M_AXI2_arqos[3:0] = Conn5_ARQOS;
  assign M_AXI2_arsize[2:0] = Conn5_ARSIZE;
  assign M_AXI2_arvalid = Conn5_ARVALID;
  assign M_AXI2_awaddr[37:0] = Conn5_AWADDR;
  assign M_AXI2_awburst[1:0] = Conn5_AWBURST;
  assign M_AXI2_awcache[3:0] = Conn5_AWCACHE;
  assign M_AXI2_awid[3:0] = Conn5_AWID;
  assign M_AXI2_awlen[7:0] = Conn5_AWLEN;
  assign M_AXI2_awlock[0] = Conn5_AWLOCK;
  assign M_AXI2_awprot[2:0] = Conn5_AWPROT;
  assign M_AXI2_awqos[3:0] = Conn5_AWQOS;
  assign M_AXI2_awsize[2:0] = Conn5_AWSIZE;
  assign M_AXI2_awvalid = Conn5_AWVALID;
  assign M_AXI2_bready = Conn5_BREADY;
  assign M_AXI2_rready = Conn5_RREADY;
  assign M_AXI2_wdata[511:0] = Conn5_WDATA;
  assign M_AXI2_wlast = Conn5_WLAST;
  assign M_AXI2_wstrb[63:0] = Conn5_WSTRB;
  assign M_AXI2_wvalid = Conn5_WVALID;
  assign M_AXI_araddr[16:0] = Conn3_ARADDR;
  assign M_AXI_arprot[2:0] = Conn3_ARPROT;
  assign M_AXI_arvalid = Conn3_ARVALID;
  assign M_AXI_awaddr[16:0] = Conn3_AWADDR;
  assign M_AXI_awprot[2:0] = Conn3_AWPROT;
  assign M_AXI_awvalid = Conn3_AWVALID;
  assign M_AXI_bready = Conn3_BREADY;
  assign M_AXI_rready = Conn3_RREADY;
  assign M_AXI_wdata[31:0] = Conn3_WDATA;
  assign M_AXI_wstrb[3:0] = Conn3_WSTRB;
  assign M_AXI_wvalid = Conn3_WVALID;
  assign S_AXI1_arready = Conn2_ARREADY;
  assign S_AXI1_awready = Conn2_AWREADY;
  assign S_AXI1_bid[3:0] = Conn2_BID;
  assign S_AXI1_bresp[1:0] = Conn2_BRESP;
  assign S_AXI1_bvalid = Conn2_BVALID;
  assign S_AXI1_rdata[511:0] = Conn2_RDATA;
  assign S_AXI1_rid[3:0] = Conn2_RID;
  assign S_AXI1_rlast = Conn2_RLAST;
  assign S_AXI1_rresp[1:0] = Conn2_RRESP;
  assign S_AXI1_rvalid = Conn2_RVALID;
  assign S_AXI1_wready = Conn2_WREADY;
  assign S_AXI2_arready = Conn6_ARREADY;
  assign S_AXI2_awready = Conn6_AWREADY;
  assign S_AXI2_bresp[1:0] = Conn6_BRESP;
  assign S_AXI2_bvalid = Conn6_BVALID;
  assign S_AXI2_rdata[31:0] = Conn6_RDATA;
  assign S_AXI2_rresp[1:0] = Conn6_RRESP;
  assign S_AXI2_rvalid = Conn6_RVALID;
  assign S_AXI2_wready = Conn6_WREADY;
  assign S_AXI3_arready = Conn7_ARREADY;
  assign S_AXI3_awready = Conn7_AWREADY;
  assign S_AXI3_bresp[1:0] = Conn7_BRESP;
  assign S_AXI3_bvalid = Conn7_BVALID;
  assign S_AXI3_rdata[31:0] = Conn7_RDATA;
  assign S_AXI3_rresp[1:0] = Conn7_RRESP;
  assign S_AXI3_rvalid = Conn7_RVALID;
  assign S_AXI3_wready = Conn7_WREADY;
  assign S_AXI4_arready = Conn8_ARREADY;
  assign S_AXI4_awready = Conn8_AWREADY;
  assign S_AXI4_bresp[1:0] = Conn8_BRESP;
  assign S_AXI4_bvalid = Conn8_BVALID;
  assign S_AXI4_rdata[31:0] = Conn8_RDATA;
  assign S_AXI4_rresp[1:0] = Conn8_RRESP;
  assign S_AXI4_rvalid = Conn8_RVALID;
  assign S_AXI4_wready = Conn8_WREADY;
  assign S_AXI_arready = Conn1_ARREADY;
  assign S_AXI_awready = Conn1_AWREADY;
  assign S_AXI_bid[3:0] = Conn1_BID;
  assign S_AXI_bresp[1:0] = Conn1_BRESP;
  assign S_AXI_bvalid = Conn1_BVALID;
  assign S_AXI_rdata[511:0] = Conn1_RDATA;
  assign S_AXI_rid[3:0] = Conn1_RID;
  assign S_AXI_rlast = Conn1_RLAST;
  assign S_AXI_rresp[1:0] = Conn1_RRESP;
  assign S_AXI_rvalid = Conn1_RVALID;
  assign S_AXI_wready = Conn1_WREADY;
  assign dcm_locked1_1 = dcm_locked1;
  assign dcm_locked_1 = dcm_locked;
  assign ext_reset_in_1 = ext_reset_in[0];
  assign gpio_io_i_1 = gpio_io_i[0];
  assign interconnect_aresetn[0] = psreset_kernel_pr_interconnect_aresetn;
  assign interconnect_aresetn1[0] = psreset_system_pr_interconnect_aresetn;
  assign slowest_sync_clk1_1 = slowest_sync_clk1;
  assign slowest_sync_clk_1 = slowest_sync_clk;
  xcl_design_ddr_calib_status_0 ddr_calib_status
       (.gpio_io_i(gpio_io_i_1),
        .s_axi_aclk(slowest_sync_clk1_1),
        .s_axi_araddr(Conn8_ARADDR),
        .s_axi_aresetn(ext_reset_in_1),
        .s_axi_arready(Conn8_ARREADY),
        .s_axi_arvalid(Conn8_ARVALID),
        .s_axi_awaddr(Conn8_AWADDR),
        .s_axi_awready(Conn8_AWREADY),
        .s_axi_awvalid(Conn8_AWVALID),
        .s_axi_bready(Conn8_BREADY),
        .s_axi_bresp(Conn8_BRESP),
        .s_axi_bvalid(Conn8_BVALID),
        .s_axi_rdata(Conn8_RDATA),
        .s_axi_rready(Conn8_RREADY),
        .s_axi_rresp(Conn8_RRESP),
        .s_axi_rvalid(Conn8_RVALID),
        .s_axi_wdata(Conn8_WDATA),
        .s_axi_wready(Conn8_WREADY),
        .s_axi_wstrb(Conn8_WSTRB),
        .s_axi_wvalid(Conn8_WVALID));
  xcl_design_gate_pr_0 gate_pr
       (.gpio2_io_i(gate_pr_gpio_io_o),
        .gpio_io_o(gate_pr_gpio_io_o),
        .s_axi_aclk(slowest_sync_clk1_1),
        .s_axi_araddr(Conn7_ARADDR),
        .s_axi_aresetn(ext_reset_in_1),
        .s_axi_arready(Conn7_ARREADY),
        .s_axi_arvalid(Conn7_ARVALID),
        .s_axi_awaddr(Conn7_AWADDR),
        .s_axi_awready(Conn7_AWREADY),
        .s_axi_awvalid(Conn7_AWVALID),
        .s_axi_bready(Conn7_BREADY),
        .s_axi_bresp(Conn7_BRESP),
        .s_axi_bvalid(Conn7_BVALID),
        .s_axi_rdata(Conn7_RDATA),
        .s_axi_rready(Conn7_RREADY),
        .s_axi_rresp(Conn7_RRESP),
        .s_axi_rvalid(Conn7_RVALID),
        .s_axi_wdata(Conn7_WDATA),
        .s_axi_wready(Conn7_WREADY),
        .s_axi_wstrb(Conn7_WSTRB),
        .s_axi_wvalid(Conn7_WVALID));
  xcl_design_psreset_kernel_pr_0 psreset_kernel_pr
       (.aux_reset_in(slice_reset_kernel_pr_Dout),
        .dcm_locked(dcm_locked_1),
        .ext_reset_in(ext_reset_in_1),
        .interconnect_aresetn(psreset_kernel_pr_interconnect_aresetn),
        .mb_debug_sys_rst(1'b0),
        .slowest_sync_clk(slowest_sync_clk_1));
  xcl_design_psreset_regslice_pr_0 psreset_regslice_pr
       (.aux_reset_in(slice_reset_system_pr_Dout),
        .dcm_locked(dcm_locked1_1),
        .ext_reset_in(ext_reset_in_1),
        .interconnect_aresetn(psreset_regslice_pr_interconnect_aresetn),
        .mb_debug_sys_rst(1'b0),
        .slowest_sync_clk(slowest_sync_clk1_1));
  xcl_design_psreset_system_pr_0 psreset_system_pr
       (.aux_reset_in(slice_reset_kernel_pr_Dout),
        .dcm_locked(dcm_locked1_1),
        .ext_reset_in(ext_reset_in_1),
        .interconnect_aresetn(psreset_system_pr_interconnect_aresetn),
        .mb_debug_sys_rst(1'b0),
        .slowest_sync_clk(slowest_sync_clk1_1));
  xcl_design_regslice_control_0 regslice_control
       (.aclk(slowest_sync_clk1_1),
        .aresetn(psreset_regslice_pr_interconnect_aresetn),
        .m_axi_araddr(Conn3_ARADDR),
        .m_axi_arprot(Conn3_ARPROT),
        .m_axi_arready(Conn3_ARREADY),
        .m_axi_arvalid(Conn3_ARVALID),
        .m_axi_awaddr(Conn3_AWADDR),
        .m_axi_awprot(Conn3_AWPROT),
        .m_axi_awready(Conn3_AWREADY),
        .m_axi_awvalid(Conn3_AWVALID),
        .m_axi_bready(Conn3_BREADY),
        .m_axi_bresp(Conn3_BRESP),
        .m_axi_bvalid(Conn3_BVALID),
        .m_axi_rdata(Conn3_RDATA),
        .m_axi_rready(Conn3_RREADY),
        .m_axi_rresp(Conn3_RRESP),
        .m_axi_rvalid(Conn3_RVALID),
        .m_axi_wdata(Conn3_WDATA),
        .m_axi_wready(Conn3_WREADY),
        .m_axi_wstrb(Conn3_WSTRB),
        .m_axi_wvalid(Conn3_WVALID),
        .s_axi_araddr(Conn6_ARADDR),
        .s_axi_arprot(Conn6_ARPROT),
        .s_axi_arready(Conn6_ARREADY),
        .s_axi_arvalid(Conn6_ARVALID),
        .s_axi_awaddr(Conn6_AWADDR),
        .s_axi_awprot(Conn6_AWPROT),
        .s_axi_awready(Conn6_AWREADY),
        .s_axi_awvalid(Conn6_AWVALID),
        .s_axi_bready(Conn6_BREADY),
        .s_axi_bresp(Conn6_BRESP),
        .s_axi_bvalid(Conn6_BVALID),
        .s_axi_rdata(Conn6_RDATA),
        .s_axi_rready(Conn6_RREADY),
        .s_axi_rresp(Conn6_RRESP),
        .s_axi_rvalid(Conn6_RVALID),
        .s_axi_wdata(Conn6_WDATA),
        .s_axi_wready(Conn6_WREADY),
        .s_axi_wstrb(Conn6_WSTRB),
        .s_axi_wvalid(Conn6_WVALID));
  xcl_design_regslice_data_0 regslice_data
       (.aclk(slowest_sync_clk1_1),
        .aresetn(psreset_regslice_pr_interconnect_aresetn),
        .m_axi_araddr(Conn4_ARADDR),
        .m_axi_arburst(Conn4_ARBURST),
        .m_axi_arcache(Conn4_ARCACHE),
        .m_axi_arid(Conn4_ARID),
        .m_axi_arlen(Conn4_ARLEN),
        .m_axi_arlock(Conn4_ARLOCK),
        .m_axi_arprot(Conn4_ARPROT),
        .m_axi_arqos(Conn4_ARQOS),
        .m_axi_arready(Conn4_ARREADY),
        .m_axi_arsize(Conn4_ARSIZE),
        .m_axi_arvalid(Conn4_ARVALID),
        .m_axi_awaddr(Conn4_AWADDR),
        .m_axi_awburst(Conn4_AWBURST),
        .m_axi_awcache(Conn4_AWCACHE),
        .m_axi_awid(Conn4_AWID),
        .m_axi_awlen(Conn4_AWLEN),
        .m_axi_awlock(Conn4_AWLOCK),
        .m_axi_awprot(Conn4_AWPROT),
        .m_axi_awqos(Conn4_AWQOS),
        .m_axi_awready(Conn4_AWREADY),
        .m_axi_awsize(Conn4_AWSIZE),
        .m_axi_awvalid(Conn4_AWVALID),
        .m_axi_bid(Conn4_BID),
        .m_axi_bready(Conn4_BREADY),
        .m_axi_bresp(Conn4_BRESP),
        .m_axi_bvalid(Conn4_BVALID),
        .m_axi_rdata(Conn4_RDATA),
        .m_axi_rid(Conn4_RID),
        .m_axi_rlast(Conn4_RLAST),
        .m_axi_rready(Conn4_RREADY),
        .m_axi_rresp(Conn4_RRESP),
        .m_axi_rvalid(Conn4_RVALID),
        .m_axi_wdata(Conn4_WDATA),
        .m_axi_wlast(Conn4_WLAST),
        .m_axi_wready(Conn4_WREADY),
        .m_axi_wstrb(Conn4_WSTRB),
        .m_axi_wvalid(Conn4_WVALID),
        .s_axi_araddr(Conn1_ARADDR),
        .s_axi_arburst(Conn1_ARBURST),
        .s_axi_arcache(Conn1_ARCACHE),
        .s_axi_arid(Conn1_ARID),
        .s_axi_arlen(Conn1_ARLEN),
        .s_axi_arlock(Conn1_ARLOCK),
        .s_axi_arprot(Conn1_ARPROT),
        .s_axi_arqos(Conn1_ARQOS),
        .s_axi_arready(Conn1_ARREADY),
        .s_axi_arregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arsize(Conn1_ARSIZE),
        .s_axi_arvalid(Conn1_ARVALID),
        .s_axi_awaddr(Conn1_AWADDR),
        .s_axi_awburst(Conn1_AWBURST),
        .s_axi_awcache(Conn1_AWCACHE),
        .s_axi_awid(Conn1_AWID),
        .s_axi_awlen(Conn1_AWLEN),
        .s_axi_awlock(Conn1_AWLOCK),
        .s_axi_awprot(Conn1_AWPROT),
        .s_axi_awqos(Conn1_AWQOS),
        .s_axi_awready(Conn1_AWREADY),
        .s_axi_awregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awsize(Conn1_AWSIZE),
        .s_axi_awvalid(Conn1_AWVALID),
        .s_axi_bid(Conn1_BID),
        .s_axi_bready(Conn1_BREADY),
        .s_axi_bresp(Conn1_BRESP),
        .s_axi_bvalid(Conn1_BVALID),
        .s_axi_rdata(Conn1_RDATA),
        .s_axi_rid(Conn1_RID),
        .s_axi_rlast(Conn1_RLAST),
        .s_axi_rready(Conn1_RREADY),
        .s_axi_rresp(Conn1_RRESP),
        .s_axi_rvalid(Conn1_RVALID),
        .s_axi_wdata(Conn1_WDATA),
        .s_axi_wlast(Conn1_WLAST),
        .s_axi_wready(Conn1_WREADY),
        .s_axi_wstrb(Conn1_WSTRB),
        .s_axi_wvalid(Conn1_WVALID));
  xcl_design_regslice_data_2_0 regslice_data_2
       (.aclk(slowest_sync_clk1_1),
        .aresetn(psreset_regslice_pr_interconnect_aresetn),
        .m_axi_araddr(Conn5_ARADDR),
        .m_axi_arburst(Conn5_ARBURST),
        .m_axi_arcache(Conn5_ARCACHE),
        .m_axi_arid(Conn5_ARID),
        .m_axi_arlen(Conn5_ARLEN),
        .m_axi_arlock(Conn5_ARLOCK),
        .m_axi_arprot(Conn5_ARPROT),
        .m_axi_arqos(Conn5_ARQOS),
        .m_axi_arready(Conn5_ARREADY),
        .m_axi_arsize(Conn5_ARSIZE),
        .m_axi_arvalid(Conn5_ARVALID),
        .m_axi_awaddr(Conn5_AWADDR),
        .m_axi_awburst(Conn5_AWBURST),
        .m_axi_awcache(Conn5_AWCACHE),
        .m_axi_awid(Conn5_AWID),
        .m_axi_awlen(Conn5_AWLEN),
        .m_axi_awlock(Conn5_AWLOCK),
        .m_axi_awprot(Conn5_AWPROT),
        .m_axi_awqos(Conn5_AWQOS),
        .m_axi_awready(Conn5_AWREADY),
        .m_axi_awsize(Conn5_AWSIZE),
        .m_axi_awvalid(Conn5_AWVALID),
        .m_axi_bid(Conn5_BID),
        .m_axi_bready(Conn5_BREADY),
        .m_axi_bresp(Conn5_BRESP),
        .m_axi_bvalid(Conn5_BVALID),
        .m_axi_rdata(Conn5_RDATA),
        .m_axi_rid(Conn5_RID),
        .m_axi_rlast(Conn5_RLAST),
        .m_axi_rready(Conn5_RREADY),
        .m_axi_rresp(Conn5_RRESP),
        .m_axi_rvalid(Conn5_RVALID),
        .m_axi_wdata(Conn5_WDATA),
        .m_axi_wlast(Conn5_WLAST),
        .m_axi_wready(Conn5_WREADY),
        .m_axi_wstrb(Conn5_WSTRB),
        .m_axi_wvalid(Conn5_WVALID),
        .s_axi_araddr(Conn2_ARADDR),
        .s_axi_arburst(Conn2_ARBURST),
        .s_axi_arcache(Conn2_ARCACHE),
        .s_axi_arid(Conn2_ARID),
        .s_axi_arlen(Conn2_ARLEN),
        .s_axi_arlock(Conn2_ARLOCK),
        .s_axi_arprot(Conn2_ARPROT),
        .s_axi_arqos(Conn2_ARQOS),
        .s_axi_arready(Conn2_ARREADY),
        .s_axi_arregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arsize(Conn2_ARSIZE),
        .s_axi_arvalid(Conn2_ARVALID),
        .s_axi_awaddr(Conn2_AWADDR),
        .s_axi_awburst(Conn2_AWBURST),
        .s_axi_awcache(Conn2_AWCACHE),
        .s_axi_awid(Conn2_AWID),
        .s_axi_awlen(Conn2_AWLEN),
        .s_axi_awlock(Conn2_AWLOCK),
        .s_axi_awprot(Conn2_AWPROT),
        .s_axi_awqos(Conn2_AWQOS),
        .s_axi_awready(Conn2_AWREADY),
        .s_axi_awregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awsize(Conn2_AWSIZE),
        .s_axi_awvalid(Conn2_AWVALID),
        .s_axi_bid(Conn2_BID),
        .s_axi_bready(Conn2_BREADY),
        .s_axi_bresp(Conn2_BRESP),
        .s_axi_bvalid(Conn2_BVALID),
        .s_axi_rdata(Conn2_RDATA),
        .s_axi_rid(Conn2_RID),
        .s_axi_rlast(Conn2_RLAST),
        .s_axi_rready(Conn2_RREADY),
        .s_axi_rresp(Conn2_RRESP),
        .s_axi_rvalid(Conn2_RVALID),
        .s_axi_wdata(Conn2_WDATA),
        .s_axi_wlast(Conn2_WLAST),
        .s_axi_wready(Conn2_WREADY),
        .s_axi_wstrb(Conn2_WSTRB),
        .s_axi_wvalid(Conn2_WVALID));
  xcl_design_slice_reset_kernel_pr_0 slice_reset_kernel_pr
       (.Din(gate_pr_gpio_io_o),
        .Dout(slice_reset_kernel_pr_Dout));
  xcl_design_slice_reset_system_pr_0 slice_reset_system_pr
       (.Din(gate_pr_gpio_io_o),
        .Dout(slice_reset_system_pr_Dout));
endmodule

module pr_support_limited_imp_9558ZS
   (S_AXI_ACLK,
    S_AXI_ARESETN,
    S_AXI_araddr,
    S_AXI_arprot,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awprot,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid,
    dout,
    flash_A,
    flash_ADV_N,
    flash_DQ,
    flash_OE_N,
    flash_WE_N,
    flash_clk,
    flash_rst);
  input S_AXI_ACLK;
  input [0:0]S_AXI_ARESETN;
  input [7:0]S_AXI_araddr;
  input [2:0]S_AXI_arprot;
  output S_AXI_arready;
  input S_AXI_arvalid;
  input [7:0]S_AXI_awaddr;
  input [2:0]S_AXI_awprot;
  output S_AXI_awready;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;
  output [8:0]dout;
  output [26:1]flash_A;
  output flash_ADV_N;
  inout [15:4]flash_DQ;
  output flash_OE_N;
  output flash_WE_N;
  input flash_clk;
  input [0:0]flash_rst;

  wire [7:0]Conn1_ARADDR;
  wire [2:0]Conn1_ARPROT;
  wire Conn1_ARREADY;
  wire Conn1_ARVALID;
  wire [7:0]Conn1_AWADDR;
  wire [2:0]Conn1_AWPROT;
  wire Conn1_AWREADY;
  wire Conn1_AWVALID;
  wire Conn1_BREADY;
  wire [1:0]Conn1_BRESP;
  wire Conn1_BVALID;
  wire [31:0]Conn1_RDATA;
  wire Conn1_RREADY;
  wire [1:0]Conn1_RRESP;
  wire Conn1_RVALID;
  wire [31:0]Conn1_WDATA;
  wire Conn1_WREADY;
  wire [3:0]Conn1_WSTRB;
  wire Conn1_WVALID;
  wire [15:4]Net;
  wire S_AXI_ACLK_1;
  wire [0:0]S_AXI_ARESETN_1;
  wire [8:0]const_gnd_mem_dm_dout;
  wire flash_clk_1;
  wire [26:1]flash_programmer_flash_A;
  wire flash_programmer_flash_ADV_N;
  wire flash_programmer_flash_OE_N;
  wire flash_programmer_flash_WE_N;
  wire [0:0]flash_rst_1;

  assign Conn1_ARADDR = S_AXI_araddr[7:0];
  assign Conn1_ARPROT = S_AXI_arprot[2:0];
  assign Conn1_ARVALID = S_AXI_arvalid;
  assign Conn1_AWADDR = S_AXI_awaddr[7:0];
  assign Conn1_AWPROT = S_AXI_awprot[2:0];
  assign Conn1_AWVALID = S_AXI_awvalid;
  assign Conn1_BREADY = S_AXI_bready;
  assign Conn1_RREADY = S_AXI_rready;
  assign Conn1_WDATA = S_AXI_wdata[31:0];
  assign Conn1_WSTRB = S_AXI_wstrb[3:0];
  assign Conn1_WVALID = S_AXI_wvalid;
  assign S_AXI_ACLK_1 = S_AXI_ACLK;
  assign S_AXI_ARESETN_1 = S_AXI_ARESETN[0];
  assign S_AXI_arready = Conn1_ARREADY;
  assign S_AXI_awready = Conn1_AWREADY;
  assign S_AXI_bresp[1:0] = Conn1_BRESP;
  assign S_AXI_bvalid = Conn1_BVALID;
  assign S_AXI_rdata[31:0] = Conn1_RDATA;
  assign S_AXI_rresp[1:0] = Conn1_RRESP;
  assign S_AXI_rvalid = Conn1_RVALID;
  assign S_AXI_wready = Conn1_WREADY;
  assign dout[8:0] = const_gnd_mem_dm_dout;
  assign flash_A[26:1] = flash_programmer_flash_A;
  assign flash_ADV_N = flash_programmer_flash_ADV_N;
  assign flash_OE_N = flash_programmer_flash_OE_N;
  assign flash_WE_N = flash_programmer_flash_WE_N;
  assign flash_clk_1 = flash_clk;
  assign flash_rst_1 = flash_rst[0];
  xcl_design_const_gnd_mem_dm_0 const_gnd_mem_dm
       (.dout(const_gnd_mem_dm_dout));
  xcl_design_flash_programmer_0 flash_programmer
       (.S_AXI_ACLK(S_AXI_ACLK_1),
        .S_AXI_ARADDR(Conn1_ARADDR),
        .S_AXI_ARESETN(S_AXI_ARESETN_1),
        .S_AXI_ARPROT(Conn1_ARPROT),
        .S_AXI_ARREADY(Conn1_ARREADY),
        .S_AXI_ARVALID(Conn1_ARVALID),
        .S_AXI_AWADDR(Conn1_AWADDR),
        .S_AXI_AWPROT(Conn1_AWPROT),
        .S_AXI_AWREADY(Conn1_AWREADY),
        .S_AXI_AWVALID(Conn1_AWVALID),
        .S_AXI_BREADY(Conn1_BREADY),
        .S_AXI_BRESP(Conn1_BRESP),
        .S_AXI_BVALID(Conn1_BVALID),
        .S_AXI_RDATA(Conn1_RDATA),
        .S_AXI_RREADY(Conn1_RREADY),
        .S_AXI_RRESP(Conn1_RRESP),
        .S_AXI_RVALID(Conn1_RVALID),
        .S_AXI_WDATA(Conn1_WDATA),
        .S_AXI_WREADY(Conn1_WREADY),
        .S_AXI_WSTRB(Conn1_WSTRB),
        .S_AXI_WVALID(Conn1_WVALID),
        .flash_A(flash_programmer_flash_A),
        .flash_ADV_N(flash_programmer_flash_ADV_N),
        .flash_DQ(flash_DQ[15:4]),
        .flash_OE_N(flash_programmer_flash_OE_N),
        .flash_WE_N(flash_programmer_flash_WE_N),
        .flash_clk(flash_clk_1),
        .flash_rst(flash_rst_1));
endmodule

module s00_couplers_imp_1241H5U
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arprot,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awprot,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arprot,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awprot,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_araddr;
  output [2:0]M_AXI_arprot;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  output [2:0]M_AXI_awprot;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  input [2:0]S_AXI_arprot;
  output S_AXI_arready;
  input S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  input [2:0]S_AXI_awprot;
  output S_AXI_awready;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire M_ACLK_1;
  wire M_ARESETN_1;
  wire S_ACLK_1;
  wire S_ARESETN_1;
  wire [31:0]auto_cc_to_s00_couplers_ARADDR;
  wire [2:0]auto_cc_to_s00_couplers_ARPROT;
  wire auto_cc_to_s00_couplers_ARREADY;
  wire auto_cc_to_s00_couplers_ARVALID;
  wire [31:0]auto_cc_to_s00_couplers_AWADDR;
  wire [2:0]auto_cc_to_s00_couplers_AWPROT;
  wire auto_cc_to_s00_couplers_AWREADY;
  wire auto_cc_to_s00_couplers_AWVALID;
  wire auto_cc_to_s00_couplers_BREADY;
  wire [1:0]auto_cc_to_s00_couplers_BRESP;
  wire auto_cc_to_s00_couplers_BVALID;
  wire [31:0]auto_cc_to_s00_couplers_RDATA;
  wire auto_cc_to_s00_couplers_RREADY;
  wire [1:0]auto_cc_to_s00_couplers_RRESP;
  wire auto_cc_to_s00_couplers_RVALID;
  wire [31:0]auto_cc_to_s00_couplers_WDATA;
  wire auto_cc_to_s00_couplers_WREADY;
  wire [3:0]auto_cc_to_s00_couplers_WSTRB;
  wire auto_cc_to_s00_couplers_WVALID;
  wire [31:0]s00_couplers_to_s00_regslice_ARADDR;
  wire [2:0]s00_couplers_to_s00_regslice_ARPROT;
  wire s00_couplers_to_s00_regslice_ARREADY;
  wire s00_couplers_to_s00_regslice_ARVALID;
  wire [31:0]s00_couplers_to_s00_regslice_AWADDR;
  wire [2:0]s00_couplers_to_s00_regslice_AWPROT;
  wire s00_couplers_to_s00_regslice_AWREADY;
  wire s00_couplers_to_s00_regslice_AWVALID;
  wire s00_couplers_to_s00_regslice_BREADY;
  wire [1:0]s00_couplers_to_s00_regslice_BRESP;
  wire s00_couplers_to_s00_regslice_BVALID;
  wire [31:0]s00_couplers_to_s00_regslice_RDATA;
  wire s00_couplers_to_s00_regslice_RREADY;
  wire [1:0]s00_couplers_to_s00_regslice_RRESP;
  wire s00_couplers_to_s00_regslice_RVALID;
  wire [31:0]s00_couplers_to_s00_regslice_WDATA;
  wire s00_couplers_to_s00_regslice_WREADY;
  wire [3:0]s00_couplers_to_s00_regslice_WSTRB;
  wire s00_couplers_to_s00_regslice_WVALID;
  wire [31:0]s00_regslice_to_auto_cc_ARADDR;
  wire [2:0]s00_regslice_to_auto_cc_ARPROT;
  wire s00_regslice_to_auto_cc_ARREADY;
  wire s00_regslice_to_auto_cc_ARVALID;
  wire [31:0]s00_regslice_to_auto_cc_AWADDR;
  wire [2:0]s00_regslice_to_auto_cc_AWPROT;
  wire s00_regslice_to_auto_cc_AWREADY;
  wire s00_regslice_to_auto_cc_AWVALID;
  wire s00_regslice_to_auto_cc_BREADY;
  wire [1:0]s00_regslice_to_auto_cc_BRESP;
  wire s00_regslice_to_auto_cc_BVALID;
  wire [31:0]s00_regslice_to_auto_cc_RDATA;
  wire s00_regslice_to_auto_cc_RREADY;
  wire [1:0]s00_regslice_to_auto_cc_RRESP;
  wire s00_regslice_to_auto_cc_RVALID;
  wire [31:0]s00_regslice_to_auto_cc_WDATA;
  wire s00_regslice_to_auto_cc_WREADY;
  wire [3:0]s00_regslice_to_auto_cc_WSTRB;
  wire s00_regslice_to_auto_cc_WVALID;

  assign M_ACLK_1 = M_ACLK;
  assign M_ARESETN_1 = M_ARESETN;
  assign M_AXI_araddr[31:0] = auto_cc_to_s00_couplers_ARADDR;
  assign M_AXI_arprot[2:0] = auto_cc_to_s00_couplers_ARPROT;
  assign M_AXI_arvalid = auto_cc_to_s00_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = auto_cc_to_s00_couplers_AWADDR;
  assign M_AXI_awprot[2:0] = auto_cc_to_s00_couplers_AWPROT;
  assign M_AXI_awvalid = auto_cc_to_s00_couplers_AWVALID;
  assign M_AXI_bready = auto_cc_to_s00_couplers_BREADY;
  assign M_AXI_rready = auto_cc_to_s00_couplers_RREADY;
  assign M_AXI_wdata[31:0] = auto_cc_to_s00_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = auto_cc_to_s00_couplers_WSTRB;
  assign M_AXI_wvalid = auto_cc_to_s00_couplers_WVALID;
  assign S_ACLK_1 = S_ACLK;
  assign S_ARESETN_1 = S_ARESETN;
  assign S_AXI_arready = s00_couplers_to_s00_regslice_ARREADY;
  assign S_AXI_awready = s00_couplers_to_s00_regslice_AWREADY;
  assign S_AXI_bresp[1:0] = s00_couplers_to_s00_regslice_BRESP;
  assign S_AXI_bvalid = s00_couplers_to_s00_regslice_BVALID;
  assign S_AXI_rdata[31:0] = s00_couplers_to_s00_regslice_RDATA;
  assign S_AXI_rresp[1:0] = s00_couplers_to_s00_regslice_RRESP;
  assign S_AXI_rvalid = s00_couplers_to_s00_regslice_RVALID;
  assign S_AXI_wready = s00_couplers_to_s00_regslice_WREADY;
  assign auto_cc_to_s00_couplers_ARREADY = M_AXI_arready;
  assign auto_cc_to_s00_couplers_AWREADY = M_AXI_awready;
  assign auto_cc_to_s00_couplers_BRESP = M_AXI_bresp[1:0];
  assign auto_cc_to_s00_couplers_BVALID = M_AXI_bvalid;
  assign auto_cc_to_s00_couplers_RDATA = M_AXI_rdata[31:0];
  assign auto_cc_to_s00_couplers_RRESP = M_AXI_rresp[1:0];
  assign auto_cc_to_s00_couplers_RVALID = M_AXI_rvalid;
  assign auto_cc_to_s00_couplers_WREADY = M_AXI_wready;
  assign s00_couplers_to_s00_regslice_ARADDR = S_AXI_araddr[31:0];
  assign s00_couplers_to_s00_regslice_ARPROT = S_AXI_arprot[2:0];
  assign s00_couplers_to_s00_regslice_ARVALID = S_AXI_arvalid;
  assign s00_couplers_to_s00_regslice_AWADDR = S_AXI_awaddr[31:0];
  assign s00_couplers_to_s00_regslice_AWPROT = S_AXI_awprot[2:0];
  assign s00_couplers_to_s00_regslice_AWVALID = S_AXI_awvalid;
  assign s00_couplers_to_s00_regslice_BREADY = S_AXI_bready;
  assign s00_couplers_to_s00_regslice_RREADY = S_AXI_rready;
  assign s00_couplers_to_s00_regslice_WDATA = S_AXI_wdata[31:0];
  assign s00_couplers_to_s00_regslice_WSTRB = S_AXI_wstrb[3:0];
  assign s00_couplers_to_s00_regslice_WVALID = S_AXI_wvalid;
  xcl_design_auto_cc_2 auto_cc
       (.m_axi_aclk(M_ACLK_1),
        .m_axi_araddr(auto_cc_to_s00_couplers_ARADDR),
        .m_axi_aresetn(M_ARESETN_1),
        .m_axi_arprot(auto_cc_to_s00_couplers_ARPROT),
        .m_axi_arready(auto_cc_to_s00_couplers_ARREADY),
        .m_axi_arvalid(auto_cc_to_s00_couplers_ARVALID),
        .m_axi_awaddr(auto_cc_to_s00_couplers_AWADDR),
        .m_axi_awprot(auto_cc_to_s00_couplers_AWPROT),
        .m_axi_awready(auto_cc_to_s00_couplers_AWREADY),
        .m_axi_awvalid(auto_cc_to_s00_couplers_AWVALID),
        .m_axi_bready(auto_cc_to_s00_couplers_BREADY),
        .m_axi_bresp(auto_cc_to_s00_couplers_BRESP),
        .m_axi_bvalid(auto_cc_to_s00_couplers_BVALID),
        .m_axi_rdata(auto_cc_to_s00_couplers_RDATA),
        .m_axi_rready(auto_cc_to_s00_couplers_RREADY),
        .m_axi_rresp(auto_cc_to_s00_couplers_RRESP),
        .m_axi_rvalid(auto_cc_to_s00_couplers_RVALID),
        .m_axi_wdata(auto_cc_to_s00_couplers_WDATA),
        .m_axi_wready(auto_cc_to_s00_couplers_WREADY),
        .m_axi_wstrb(auto_cc_to_s00_couplers_WSTRB),
        .m_axi_wvalid(auto_cc_to_s00_couplers_WVALID),
        .s_axi_aclk(S_ACLK_1),
        .s_axi_araddr(s00_regslice_to_auto_cc_ARADDR),
        .s_axi_aresetn(S_ARESETN_1),
        .s_axi_arprot(s00_regslice_to_auto_cc_ARPROT),
        .s_axi_arready(s00_regslice_to_auto_cc_ARREADY),
        .s_axi_arvalid(s00_regslice_to_auto_cc_ARVALID),
        .s_axi_awaddr(s00_regslice_to_auto_cc_AWADDR),
        .s_axi_awprot(s00_regslice_to_auto_cc_AWPROT),
        .s_axi_awready(s00_regslice_to_auto_cc_AWREADY),
        .s_axi_awvalid(s00_regslice_to_auto_cc_AWVALID),
        .s_axi_bready(s00_regslice_to_auto_cc_BREADY),
        .s_axi_bresp(s00_regslice_to_auto_cc_BRESP),
        .s_axi_bvalid(s00_regslice_to_auto_cc_BVALID),
        .s_axi_rdata(s00_regslice_to_auto_cc_RDATA),
        .s_axi_rready(s00_regslice_to_auto_cc_RREADY),
        .s_axi_rresp(s00_regslice_to_auto_cc_RRESP),
        .s_axi_rvalid(s00_regslice_to_auto_cc_RVALID),
        .s_axi_wdata(s00_regslice_to_auto_cc_WDATA),
        .s_axi_wready(s00_regslice_to_auto_cc_WREADY),
        .s_axi_wstrb(s00_regslice_to_auto_cc_WSTRB),
        .s_axi_wvalid(s00_regslice_to_auto_cc_WVALID));
  xcl_design_s00_regslice_0 s00_regslice
       (.aclk(S_ACLK_1),
        .aresetn(S_ARESETN_1),
        .m_axi_araddr(s00_regslice_to_auto_cc_ARADDR),
        .m_axi_arprot(s00_regslice_to_auto_cc_ARPROT),
        .m_axi_arready(s00_regslice_to_auto_cc_ARREADY),
        .m_axi_arvalid(s00_regslice_to_auto_cc_ARVALID),
        .m_axi_awaddr(s00_regslice_to_auto_cc_AWADDR),
        .m_axi_awprot(s00_regslice_to_auto_cc_AWPROT),
        .m_axi_awready(s00_regslice_to_auto_cc_AWREADY),
        .m_axi_awvalid(s00_regslice_to_auto_cc_AWVALID),
        .m_axi_bready(s00_regslice_to_auto_cc_BREADY),
        .m_axi_bresp(s00_regslice_to_auto_cc_BRESP),
        .m_axi_bvalid(s00_regslice_to_auto_cc_BVALID),
        .m_axi_rdata(s00_regslice_to_auto_cc_RDATA),
        .m_axi_rready(s00_regslice_to_auto_cc_RREADY),
        .m_axi_rresp(s00_regslice_to_auto_cc_RRESP),
        .m_axi_rvalid(s00_regslice_to_auto_cc_RVALID),
        .m_axi_wdata(s00_regslice_to_auto_cc_WDATA),
        .m_axi_wready(s00_regslice_to_auto_cc_WREADY),
        .m_axi_wstrb(s00_regslice_to_auto_cc_WSTRB),
        .m_axi_wvalid(s00_regslice_to_auto_cc_WVALID),
        .s_axi_araddr(s00_couplers_to_s00_regslice_ARADDR),
        .s_axi_arprot(s00_couplers_to_s00_regslice_ARPROT),
        .s_axi_arready(s00_couplers_to_s00_regslice_ARREADY),
        .s_axi_arvalid(s00_couplers_to_s00_regslice_ARVALID),
        .s_axi_awaddr(s00_couplers_to_s00_regslice_AWADDR),
        .s_axi_awprot(s00_couplers_to_s00_regslice_AWPROT),
        .s_axi_awready(s00_couplers_to_s00_regslice_AWREADY),
        .s_axi_awvalid(s00_couplers_to_s00_regslice_AWVALID),
        .s_axi_bready(s00_couplers_to_s00_regslice_BREADY),
        .s_axi_bresp(s00_couplers_to_s00_regslice_BRESP),
        .s_axi_bvalid(s00_couplers_to_s00_regslice_BVALID),
        .s_axi_rdata(s00_couplers_to_s00_regslice_RDATA),
        .s_axi_rready(s00_couplers_to_s00_regslice_RREADY),
        .s_axi_rresp(s00_couplers_to_s00_regslice_RRESP),
        .s_axi_rvalid(s00_couplers_to_s00_regslice_RVALID),
        .s_axi_wdata(s00_couplers_to_s00_regslice_WDATA),
        .s_axi_wready(s00_couplers_to_s00_regslice_WREADY),
        .s_axi_wstrb(s00_couplers_to_s00_regslice_WSTRB),
        .s_axi_wvalid(s00_couplers_to_s00_regslice_WVALID));
endmodule

(* CORE_GENERATION_INFO = "xcl_design,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=xcl_design,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=75,numReposBlks=53,numNonXlnxBlks=0,numHierBlks=22,maxHierDepth=2,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "xcl_design.hwdef" *) 
module xcl_design
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

  wire [15:4]Net;
  wire [16:0]base_region_M_AXI1_ARADDR;
  wire [2:0]base_region_M_AXI1_ARPROT;
  wire base_region_M_AXI1_ARREADY;
  wire base_region_M_AXI1_ARVALID;
  wire [16:0]base_region_M_AXI1_AWADDR;
  wire [2:0]base_region_M_AXI1_AWPROT;
  wire base_region_M_AXI1_AWREADY;
  wire base_region_M_AXI1_AWVALID;
  wire base_region_M_AXI1_BREADY;
  wire [1:0]base_region_M_AXI1_BRESP;
  wire base_region_M_AXI1_BVALID;
  wire [31:0]base_region_M_AXI1_RDATA;
  wire base_region_M_AXI1_RREADY;
  wire [1:0]base_region_M_AXI1_RRESP;
  wire base_region_M_AXI1_RVALID;
  wire [31:0]base_region_M_AXI1_WDATA;
  wire base_region_M_AXI1_WREADY;
  wire [3:0]base_region_M_AXI1_WSTRB;
  wire base_region_M_AXI1_WVALID;
  wire [37:0]base_region_M_AXI2_ARADDR;
  wire [1:0]base_region_M_AXI2_ARBURST;
  wire [3:0]base_region_M_AXI2_ARCACHE;
  wire [3:0]base_region_M_AXI2_ARID;
  wire [7:0]base_region_M_AXI2_ARLEN;
  wire [0:0]base_region_M_AXI2_ARLOCK;
  wire [2:0]base_region_M_AXI2_ARPROT;
  wire [3:0]base_region_M_AXI2_ARQOS;
  wire base_region_M_AXI2_ARREADY;
  wire [2:0]base_region_M_AXI2_ARSIZE;
  wire base_region_M_AXI2_ARVALID;
  wire [37:0]base_region_M_AXI2_AWADDR;
  wire [1:0]base_region_M_AXI2_AWBURST;
  wire [3:0]base_region_M_AXI2_AWCACHE;
  wire [3:0]base_region_M_AXI2_AWID;
  wire [7:0]base_region_M_AXI2_AWLEN;
  wire [0:0]base_region_M_AXI2_AWLOCK;
  wire [2:0]base_region_M_AXI2_AWPROT;
  wire [3:0]base_region_M_AXI2_AWQOS;
  wire base_region_M_AXI2_AWREADY;
  wire [2:0]base_region_M_AXI2_AWSIZE;
  wire base_region_M_AXI2_AWVALID;
  wire [3:0]base_region_M_AXI2_BID;
  wire base_region_M_AXI2_BREADY;
  wire [1:0]base_region_M_AXI2_BRESP;
  wire base_region_M_AXI2_BVALID;
  wire [511:0]base_region_M_AXI2_RDATA;
  wire [3:0]base_region_M_AXI2_RID;
  wire base_region_M_AXI2_RLAST;
  wire base_region_M_AXI2_RREADY;
  wire [1:0]base_region_M_AXI2_RRESP;
  wire base_region_M_AXI2_RVALID;
  wire [511:0]base_region_M_AXI2_WDATA;
  wire base_region_M_AXI2_WLAST;
  wire base_region_M_AXI2_WREADY;
  wire [63:0]base_region_M_AXI2_WSTRB;
  wire base_region_M_AXI2_WVALID;
  wire [37:0]base_region_M_AXI3_ARADDR;
  wire [1:0]base_region_M_AXI3_ARBURST;
  wire [3:0]base_region_M_AXI3_ARCACHE;
  wire [3:0]base_region_M_AXI3_ARID;
  wire [7:0]base_region_M_AXI3_ARLEN;
  wire [0:0]base_region_M_AXI3_ARLOCK;
  wire [2:0]base_region_M_AXI3_ARPROT;
  wire [3:0]base_region_M_AXI3_ARQOS;
  wire base_region_M_AXI3_ARREADY;
  wire [2:0]base_region_M_AXI3_ARSIZE;
  wire base_region_M_AXI3_ARVALID;
  wire [37:0]base_region_M_AXI3_AWADDR;
  wire [1:0]base_region_M_AXI3_AWBURST;
  wire [3:0]base_region_M_AXI3_AWCACHE;
  wire [3:0]base_region_M_AXI3_AWID;
  wire [7:0]base_region_M_AXI3_AWLEN;
  wire [0:0]base_region_M_AXI3_AWLOCK;
  wire [2:0]base_region_M_AXI3_AWPROT;
  wire [3:0]base_region_M_AXI3_AWQOS;
  wire base_region_M_AXI3_AWREADY;
  wire [2:0]base_region_M_AXI3_AWSIZE;
  wire base_region_M_AXI3_AWVALID;
  wire [3:0]base_region_M_AXI3_BID;
  wire base_region_M_AXI3_BREADY;
  wire [1:0]base_region_M_AXI3_BRESP;
  wire base_region_M_AXI3_BVALID;
  wire [511:0]base_region_M_AXI3_RDATA;
  wire [3:0]base_region_M_AXI3_RID;
  wire base_region_M_AXI3_RLAST;
  wire base_region_M_AXI3_RREADY;
  wire [1:0]base_region_M_AXI3_RRESP;
  wire base_region_M_AXI3_RVALID;
  wire [511:0]base_region_M_AXI3_WDATA;
  wire base_region_M_AXI3_WLAST;
  wire base_region_M_AXI3_WREADY;
  wire [63:0]base_region_M_AXI3_WSTRB;
  wire base_region_M_AXI3_WVALID;
  wire [63:0]base_region_M_AXI_ARADDR;
  wire [1:0]base_region_M_AXI_ARBURST;
  wire [3:0]base_region_M_AXI_ARCACHE;
  wire [3:0]base_region_M_AXI_ARID;
  wire [7:0]base_region_M_AXI_ARLEN;
  wire [0:0]base_region_M_AXI_ARLOCK;
  wire [2:0]base_region_M_AXI_ARPROT;
  wire base_region_M_AXI_ARREADY;
  wire [2:0]base_region_M_AXI_ARSIZE;
  wire base_region_M_AXI_ARVALID;
  wire [63:0]base_region_M_AXI_AWADDR;
  wire [1:0]base_region_M_AXI_AWBURST;
  wire [3:0]base_region_M_AXI_AWCACHE;
  wire [3:0]base_region_M_AXI_AWID;
  wire [7:0]base_region_M_AXI_AWLEN;
  wire [0:0]base_region_M_AXI_AWLOCK;
  wire [2:0]base_region_M_AXI_AWPROT;
  wire base_region_M_AXI_AWREADY;
  wire [2:0]base_region_M_AXI_AWSIZE;
  wire base_region_M_AXI_AWVALID;
  wire [3:0]base_region_M_AXI_BID;
  wire base_region_M_AXI_BREADY;
  wire [1:0]base_region_M_AXI_BRESP;
  wire base_region_M_AXI_BVALID;
  wire [31:0]base_region_M_AXI_LITE_ARADDR;
  wire [2:0]base_region_M_AXI_LITE_ARPROT;
  wire base_region_M_AXI_LITE_ARREADY;
  wire base_region_M_AXI_LITE_ARVALID;
  wire [31:0]base_region_M_AXI_LITE_AWADDR;
  wire [2:0]base_region_M_AXI_LITE_AWPROT;
  wire base_region_M_AXI_LITE_AWREADY;
  wire base_region_M_AXI_LITE_AWVALID;
  wire base_region_M_AXI_LITE_BREADY;
  wire [1:0]base_region_M_AXI_LITE_BRESP;
  wire base_region_M_AXI_LITE_BVALID;
  wire [31:0]base_region_M_AXI_LITE_RDATA;
  wire base_region_M_AXI_LITE_RREADY;
  wire [1:0]base_region_M_AXI_LITE_RRESP;
  wire base_region_M_AXI_LITE_RVALID;
  wire [31:0]base_region_M_AXI_LITE_WDATA;
  wire base_region_M_AXI_LITE_WREADY;
  wire [3:0]base_region_M_AXI_LITE_WSTRB;
  wire base_region_M_AXI_LITE_WVALID;
  wire [255:0]base_region_M_AXI_RDATA;
  wire [3:0]base_region_M_AXI_RID;
  wire base_region_M_AXI_RLAST;
  wire base_region_M_AXI_RREADY;
  wire [1:0]base_region_M_AXI_RRESP;
  wire base_region_M_AXI_RVALID;
  wire [255:0]base_region_M_AXI_WDATA;
  wire base_region_M_AXI_WLAST;
  wire base_region_M_AXI_WREADY;
  wire [31:0]base_region_M_AXI_WSTRB;
  wire base_region_M_AXI_WVALID;
  wire base_region_axi_aclk;
  wire base_region_axi_aresetn;
  wire base_region_clk_out1;
  wire base_region_clk_out2;
  wire base_region_clk_out3;
  wire [0:0]base_region_interconnect_aresetn;
  wire [0:0]base_region_interconnect_aresetn1;
  wire base_region_locked;
  wire [7:0]base_region_pcie_mgt_rxn;
  wire [7:0]base_region_pcie_mgt_rxp;
  wire [7:0]base_region_pcie_mgt_txn;
  wire [7:0]base_region_pcie_mgt_txp;
  wire base_region_user_lnk_up;
  wire c0_sys_1_CLK_N;
  wire c0_sys_1_CLK_P;
  wire c1_sys_1_CLK_N;
  wire c1_sys_1_CLK_P;
  wire [15:0]expanded_region_C0_DDR3_ADDR;
  wire [2:0]expanded_region_C0_DDR3_BA;
  wire expanded_region_C0_DDR3_CAS_N;
  wire [1:0]expanded_region_C0_DDR3_CKE;
  wire [1:0]expanded_region_C0_DDR3_CK_N;
  wire [1:0]expanded_region_C0_DDR3_CK_P;
  wire [1:0]expanded_region_C0_DDR3_CS_N;
  wire [71:0]expanded_region_C0_DDR3_DQ;
  wire [8:0]expanded_region_C0_DDR3_DQS_N;
  wire [8:0]expanded_region_C0_DDR3_DQS_P;
  wire [1:0]expanded_region_C0_DDR3_ODT;
  wire expanded_region_C0_DDR3_RAS_N;
  wire expanded_region_C0_DDR3_RESET_N;
  wire expanded_region_C0_DDR3_WE_N;
  wire [15:0]expanded_region_C0_DDR4_ADDR;
  wire [2:0]expanded_region_C0_DDR4_BA;
  wire expanded_region_C0_DDR4_CAS_N;
  wire [1:0]expanded_region_C0_DDR4_CKE;
  wire [1:0]expanded_region_C0_DDR4_CK_N;
  wire [1:0]expanded_region_C0_DDR4_CK_P;
  wire [1:0]expanded_region_C0_DDR4_CS_N;
  wire [71:0]expanded_region_C0_DDR4_DQ;
  wire [8:0]expanded_region_C0_DDR4_DQS_N;
  wire [8:0]expanded_region_C0_DDR4_DQS_P;
  wire [1:0]expanded_region_C0_DDR4_ODT;
  wire expanded_region_C0_DDR4_RAS_N;
  wire expanded_region_C0_DDR4_RESET_N;
  wire expanded_region_C0_DDR4_WE_N;
  wire [37:0]expanded_region_M00_AXI_ARADDR;
  wire [1:0]expanded_region_M00_AXI_ARBURST;
  wire [3:0]expanded_region_M00_AXI_ARCACHE;
  wire [3:0]expanded_region_M00_AXI_ARID;
  wire [7:0]expanded_region_M00_AXI_ARLEN;
  wire [0:0]expanded_region_M00_AXI_ARLOCK;
  wire [2:0]expanded_region_M00_AXI_ARPROT;
  wire [3:0]expanded_region_M00_AXI_ARQOS;
  wire expanded_region_M00_AXI_ARREADY;
  wire [2:0]expanded_region_M00_AXI_ARSIZE;
  wire expanded_region_M00_AXI_ARVALID;
  wire [37:0]expanded_region_M00_AXI_AWADDR;
  wire [1:0]expanded_region_M00_AXI_AWBURST;
  wire [3:0]expanded_region_M00_AXI_AWCACHE;
  wire [3:0]expanded_region_M00_AXI_AWID;
  wire [7:0]expanded_region_M00_AXI_AWLEN;
  wire [0:0]expanded_region_M00_AXI_AWLOCK;
  wire [2:0]expanded_region_M00_AXI_AWPROT;
  wire [3:0]expanded_region_M00_AXI_AWQOS;
  wire expanded_region_M00_AXI_AWREADY;
  wire [2:0]expanded_region_M00_AXI_AWSIZE;
  wire expanded_region_M00_AXI_AWVALID;
  wire [3:0]expanded_region_M00_AXI_BID;
  wire expanded_region_M00_AXI_BREADY;
  wire [1:0]expanded_region_M00_AXI_BRESP;
  wire expanded_region_M00_AXI_BVALID;
  wire [511:0]expanded_region_M00_AXI_RDATA;
  wire [3:0]expanded_region_M00_AXI_RID;
  wire expanded_region_M00_AXI_RLAST;
  wire expanded_region_M00_AXI_RREADY;
  wire [1:0]expanded_region_M00_AXI_RRESP;
  wire expanded_region_M00_AXI_RVALID;
  wire [511:0]expanded_region_M00_AXI_WDATA;
  wire expanded_region_M00_AXI_WLAST;
  wire expanded_region_M00_AXI_WREADY;
  wire [63:0]expanded_region_M00_AXI_WSTRB;
  wire expanded_region_M00_AXI_WVALID;
  wire [37:0]expanded_region_M01_AXI_ARADDR;
  wire [1:0]expanded_region_M01_AXI_ARBURST;
  wire [3:0]expanded_region_M01_AXI_ARCACHE;
  wire [3:0]expanded_region_M01_AXI_ARID;
  wire [7:0]expanded_region_M01_AXI_ARLEN;
  wire [0:0]expanded_region_M01_AXI_ARLOCK;
  wire [2:0]expanded_region_M01_AXI_ARPROT;
  wire [3:0]expanded_region_M01_AXI_ARQOS;
  wire expanded_region_M01_AXI_ARREADY;
  wire [2:0]expanded_region_M01_AXI_ARSIZE;
  wire expanded_region_M01_AXI_ARVALID;
  wire [37:0]expanded_region_M01_AXI_AWADDR;
  wire [1:0]expanded_region_M01_AXI_AWBURST;
  wire [3:0]expanded_region_M01_AXI_AWCACHE;
  wire [3:0]expanded_region_M01_AXI_AWID;
  wire [7:0]expanded_region_M01_AXI_AWLEN;
  wire [0:0]expanded_region_M01_AXI_AWLOCK;
  wire [2:0]expanded_region_M01_AXI_AWPROT;
  wire [3:0]expanded_region_M01_AXI_AWQOS;
  wire expanded_region_M01_AXI_AWREADY;
  wire [2:0]expanded_region_M01_AXI_AWSIZE;
  wire expanded_region_M01_AXI_AWVALID;
  wire [3:0]expanded_region_M01_AXI_BID;
  wire expanded_region_M01_AXI_BREADY;
  wire [1:0]expanded_region_M01_AXI_BRESP;
  wire expanded_region_M01_AXI_BVALID;
  wire [511:0]expanded_region_M01_AXI_RDATA;
  wire [3:0]expanded_region_M01_AXI_RID;
  wire expanded_region_M01_AXI_RLAST;
  wire expanded_region_M01_AXI_RREADY;
  wire [1:0]expanded_region_M01_AXI_RRESP;
  wire expanded_region_M01_AXI_RVALID;
  wire [511:0]expanded_region_M01_AXI_WDATA;
  wire expanded_region_M01_AXI_WLAST;
  wire expanded_region_M01_AXI_WREADY;
  wire [63:0]expanded_region_M01_AXI_WSTRB;
  wire expanded_region_M01_AXI_WVALID;
  wire [16:0]expanded_region_M05_AXI_ARADDR;
  wire [2:0]expanded_region_M05_AXI_ARPROT;
  wire expanded_region_M05_AXI_ARREADY;
  wire expanded_region_M05_AXI_ARVALID;
  wire [16:0]expanded_region_M05_AXI_AWADDR;
  wire [2:0]expanded_region_M05_AXI_AWPROT;
  wire expanded_region_M05_AXI_AWREADY;
  wire expanded_region_M05_AXI_AWVALID;
  wire expanded_region_M05_AXI_BREADY;
  wire [1:0]expanded_region_M05_AXI_BRESP;
  wire expanded_region_M05_AXI_BVALID;
  wire [31:0]expanded_region_M05_AXI_RDATA;
  wire expanded_region_M05_AXI_RREADY;
  wire [1:0]expanded_region_M05_AXI_RRESP;
  wire expanded_region_M05_AXI_RVALID;
  wire [31:0]expanded_region_M05_AXI_WDATA;
  wire expanded_region_M05_AXI_WREADY;
  wire [3:0]expanded_region_M05_AXI_WSTRB;
  wire expanded_region_M05_AXI_WVALID;
  wire [8:0]expanded_region_M06_AXI_ARADDR;
  wire expanded_region_M06_AXI_ARREADY;
  wire expanded_region_M06_AXI_ARVALID;
  wire [8:0]expanded_region_M06_AXI_AWADDR;
  wire expanded_region_M06_AXI_AWREADY;
  wire expanded_region_M06_AXI_AWVALID;
  wire expanded_region_M06_AXI_BREADY;
  wire [1:0]expanded_region_M06_AXI_BRESP;
  wire expanded_region_M06_AXI_BVALID;
  wire [31:0]expanded_region_M06_AXI_RDATA;
  wire expanded_region_M06_AXI_RREADY;
  wire [1:0]expanded_region_M06_AXI_RRESP;
  wire expanded_region_M06_AXI_RVALID;
  wire [31:0]expanded_region_M06_AXI_WDATA;
  wire expanded_region_M06_AXI_WREADY;
  wire [3:0]expanded_region_M06_AXI_WSTRB;
  wire expanded_region_M06_AXI_WVALID;
  wire [8:0]expanded_region_M07_AXI_ARADDR;
  wire expanded_region_M07_AXI_ARREADY;
  wire expanded_region_M07_AXI_ARVALID;
  wire [8:0]expanded_region_M07_AXI_AWADDR;
  wire expanded_region_M07_AXI_AWREADY;
  wire expanded_region_M07_AXI_AWVALID;
  wire expanded_region_M07_AXI_BREADY;
  wire [1:0]expanded_region_M07_AXI_BRESP;
  wire expanded_region_M07_AXI_BVALID;
  wire [31:0]expanded_region_M07_AXI_RDATA;
  wire expanded_region_M07_AXI_RREADY;
  wire [1:0]expanded_region_M07_AXI_RRESP;
  wire expanded_region_M07_AXI_RVALID;
  wire [31:0]expanded_region_M07_AXI_WDATA;
  wire expanded_region_M07_AXI_WREADY;
  wire [3:0]expanded_region_M07_AXI_WSTRB;
  wire expanded_region_M07_AXI_WVALID;
  wire [8:0]expanded_region_M08_AXI_ARADDR;
  wire expanded_region_M08_AXI_ARREADY;
  wire expanded_region_M08_AXI_ARVALID;
  wire [8:0]expanded_region_M08_AXI_AWADDR;
  wire expanded_region_M08_AXI_AWREADY;
  wire expanded_region_M08_AXI_AWVALID;
  wire expanded_region_M08_AXI_BREADY;
  wire [1:0]expanded_region_M08_AXI_BRESP;
  wire expanded_region_M08_AXI_BVALID;
  wire [31:0]expanded_region_M08_AXI_RDATA;
  wire expanded_region_M08_AXI_RREADY;
  wire [1:0]expanded_region_M08_AXI_RRESP;
  wire expanded_region_M08_AXI_RVALID;
  wire [31:0]expanded_region_M08_AXI_WDATA;
  wire expanded_region_M08_AXI_WREADY;
  wire [3:0]expanded_region_M08_AXI_WSTRB;
  wire expanded_region_M08_AXI_WVALID;
  wire [10:0]expanded_region_M09_AXI_ARADDR;
  wire [2:0]expanded_region_M09_AXI_ARPROT;
  wire expanded_region_M09_AXI_ARREADY;
  wire expanded_region_M09_AXI_ARVALID;
  wire [10:0]expanded_region_M09_AXI_AWADDR;
  wire [2:0]expanded_region_M09_AXI_AWPROT;
  wire expanded_region_M09_AXI_AWREADY;
  wire expanded_region_M09_AXI_AWVALID;
  wire expanded_region_M09_AXI_BREADY;
  wire [1:0]expanded_region_M09_AXI_BRESP;
  wire expanded_region_M09_AXI_BVALID;
  wire [31:0]expanded_region_M09_AXI_RDATA;
  wire expanded_region_M09_AXI_RREADY;
  wire [1:0]expanded_region_M09_AXI_RRESP;
  wire expanded_region_M09_AXI_RVALID;
  wire [31:0]expanded_region_M09_AXI_WDATA;
  wire expanded_region_M09_AXI_WREADY;
  wire [3:0]expanded_region_M09_AXI_WSTRB;
  wire expanded_region_M09_AXI_WVALID;
  wire [0:0]expanded_region_Res;
  wire [8:0]expanded_region_dout;
  wire [26:1]expanded_region_flash_A;
  wire expanded_region_flash_ADV_N;
  wire expanded_region_flash_OE_N;
  wire expanded_region_flash_WE_N;
  wire [0:0]expanded_region_interconnect_aresetn1;
  wire perst_n_1;
  wire [0:0]ref_clk_1_CLK_N;
  wire [0:0]ref_clk_1_CLK_P;

  assign base_region_pcie_mgt_rxn = pcie_7x_mgt_rxn[7:0];
  assign base_region_pcie_mgt_rxp = pcie_7x_mgt_rxp[7:0];
  assign c0_ddr3_addr[15:0] = expanded_region_C0_DDR4_ADDR;
  assign c0_ddr3_ba[2:0] = expanded_region_C0_DDR4_BA;
  assign c0_ddr3_cas_n = expanded_region_C0_DDR4_CAS_N;
  assign c0_ddr3_ck_n[1:0] = expanded_region_C0_DDR4_CK_N;
  assign c0_ddr3_ck_p[1:0] = expanded_region_C0_DDR4_CK_P;
  assign c0_ddr3_cke[1:0] = expanded_region_C0_DDR4_CKE;
  assign c0_ddr3_cs_n[1:0] = expanded_region_C0_DDR4_CS_N;
  assign c0_ddr3_dm[8:0] = expanded_region_dout;
  assign c0_ddr3_odt[1:0] = expanded_region_C0_DDR4_ODT;
  assign c0_ddr3_ras_n = expanded_region_C0_DDR4_RAS_N;
  assign c0_ddr3_reset_n = expanded_region_C0_DDR4_RESET_N;
  assign c0_ddr3_we_n = expanded_region_C0_DDR4_WE_N;
  assign c0_sys_1_CLK_N = c0_sys_clk_n;
  assign c0_sys_1_CLK_P = c0_sys_clk_p;
  assign c1_ddr3_addr[15:0] = expanded_region_C0_DDR3_ADDR;
  assign c1_ddr3_ba[2:0] = expanded_region_C0_DDR3_BA;
  assign c1_ddr3_cas_n = expanded_region_C0_DDR3_CAS_N;
  assign c1_ddr3_ck_n[1:0] = expanded_region_C0_DDR3_CK_N;
  assign c1_ddr3_ck_p[1:0] = expanded_region_C0_DDR3_CK_P;
  assign c1_ddr3_cke[1:0] = expanded_region_C0_DDR3_CKE;
  assign c1_ddr3_cs_n[1:0] = expanded_region_C0_DDR3_CS_N;
  assign c1_ddr3_dm[8:0] = expanded_region_dout;
  assign c1_ddr3_odt[1:0] = expanded_region_C0_DDR3_ODT;
  assign c1_ddr3_ras_n = expanded_region_C0_DDR3_RAS_N;
  assign c1_ddr3_reset_n = expanded_region_C0_DDR3_RESET_N;
  assign c1_ddr3_we_n = expanded_region_C0_DDR3_WE_N;
  assign c1_sys_1_CLK_N = c1_sys_clk_n;
  assign c1_sys_1_CLK_P = c1_sys_clk_p;
  assign flash_A[26:1] = expanded_region_flash_A;
  assign flash_ADV_N = expanded_region_flash_ADV_N;
  assign flash_OE_N = expanded_region_flash_OE_N;
  assign flash_WE_N = expanded_region_flash_WE_N;
  assign init_calib_complete[0] = expanded_region_Res;
  assign led_0 = base_region_user_lnk_up;
  assign pcie_7x_mgt_txn[7:0] = base_region_pcie_mgt_txn;
  assign pcie_7x_mgt_txp[7:0] = base_region_pcie_mgt_txp;
  assign perst_n_1 = perst_n;
  assign ref_clk_1_CLK_N = ref_clk_clk_n[0];
  assign ref_clk_1_CLK_P = ref_clk_clk_p[0];
  base_region_imp_1OPYDD2 base_region
       (.CLK_IN_D_clk_n(ref_clk_1_CLK_N),
        .CLK_IN_D_clk_p(ref_clk_1_CLK_P),
        .M_AXI1_araddr(base_region_M_AXI1_ARADDR),
        .M_AXI1_arprot(base_region_M_AXI1_ARPROT),
        .M_AXI1_arready(base_region_M_AXI1_ARREADY),
        .M_AXI1_arvalid(base_region_M_AXI1_ARVALID),
        .M_AXI1_awaddr(base_region_M_AXI1_AWADDR),
        .M_AXI1_awprot(base_region_M_AXI1_AWPROT),
        .M_AXI1_awready(base_region_M_AXI1_AWREADY),
        .M_AXI1_awvalid(base_region_M_AXI1_AWVALID),
        .M_AXI1_bready(base_region_M_AXI1_BREADY),
        .M_AXI1_bresp(base_region_M_AXI1_BRESP),
        .M_AXI1_bvalid(base_region_M_AXI1_BVALID),
        .M_AXI1_rdata(base_region_M_AXI1_RDATA),
        .M_AXI1_rready(base_region_M_AXI1_RREADY),
        .M_AXI1_rresp(base_region_M_AXI1_RRESP),
        .M_AXI1_rvalid(base_region_M_AXI1_RVALID),
        .M_AXI1_wdata(base_region_M_AXI1_WDATA),
        .M_AXI1_wready(base_region_M_AXI1_WREADY),
        .M_AXI1_wstrb(base_region_M_AXI1_WSTRB),
        .M_AXI1_wvalid(base_region_M_AXI1_WVALID),
        .M_AXI2_araddr(base_region_M_AXI2_ARADDR),
        .M_AXI2_arburst(base_region_M_AXI2_ARBURST),
        .M_AXI2_arcache(base_region_M_AXI2_ARCACHE),
        .M_AXI2_arid(base_region_M_AXI2_ARID),
        .M_AXI2_arlen(base_region_M_AXI2_ARLEN),
        .M_AXI2_arlock(base_region_M_AXI2_ARLOCK),
        .M_AXI2_arprot(base_region_M_AXI2_ARPROT),
        .M_AXI2_arqos(base_region_M_AXI2_ARQOS),
        .M_AXI2_arready(base_region_M_AXI2_ARREADY),
        .M_AXI2_arsize(base_region_M_AXI2_ARSIZE),
        .M_AXI2_arvalid(base_region_M_AXI2_ARVALID),
        .M_AXI2_awaddr(base_region_M_AXI2_AWADDR),
        .M_AXI2_awburst(base_region_M_AXI2_AWBURST),
        .M_AXI2_awcache(base_region_M_AXI2_AWCACHE),
        .M_AXI2_awid(base_region_M_AXI2_AWID),
        .M_AXI2_awlen(base_region_M_AXI2_AWLEN),
        .M_AXI2_awlock(base_region_M_AXI2_AWLOCK),
        .M_AXI2_awprot(base_region_M_AXI2_AWPROT),
        .M_AXI2_awqos(base_region_M_AXI2_AWQOS),
        .M_AXI2_awready(base_region_M_AXI2_AWREADY),
        .M_AXI2_awsize(base_region_M_AXI2_AWSIZE),
        .M_AXI2_awvalid(base_region_M_AXI2_AWVALID),
        .M_AXI2_bid(base_region_M_AXI2_BID),
        .M_AXI2_bready(base_region_M_AXI2_BREADY),
        .M_AXI2_bresp(base_region_M_AXI2_BRESP),
        .M_AXI2_bvalid(base_region_M_AXI2_BVALID),
        .M_AXI2_rdata(base_region_M_AXI2_RDATA),
        .M_AXI2_rid(base_region_M_AXI2_RID),
        .M_AXI2_rlast(base_region_M_AXI2_RLAST),
        .M_AXI2_rready(base_region_M_AXI2_RREADY),
        .M_AXI2_rresp(base_region_M_AXI2_RRESP),
        .M_AXI2_rvalid(base_region_M_AXI2_RVALID),
        .M_AXI2_wdata(base_region_M_AXI2_WDATA),
        .M_AXI2_wlast(base_region_M_AXI2_WLAST),
        .M_AXI2_wready(base_region_M_AXI2_WREADY),
        .M_AXI2_wstrb(base_region_M_AXI2_WSTRB),
        .M_AXI2_wvalid(base_region_M_AXI2_WVALID),
        .M_AXI3_araddr(base_region_M_AXI3_ARADDR),
        .M_AXI3_arburst(base_region_M_AXI3_ARBURST),
        .M_AXI3_arcache(base_region_M_AXI3_ARCACHE),
        .M_AXI3_arid(base_region_M_AXI3_ARID),
        .M_AXI3_arlen(base_region_M_AXI3_ARLEN),
        .M_AXI3_arlock(base_region_M_AXI3_ARLOCK),
        .M_AXI3_arprot(base_region_M_AXI3_ARPROT),
        .M_AXI3_arqos(base_region_M_AXI3_ARQOS),
        .M_AXI3_arready(base_region_M_AXI3_ARREADY),
        .M_AXI3_arsize(base_region_M_AXI3_ARSIZE),
        .M_AXI3_arvalid(base_region_M_AXI3_ARVALID),
        .M_AXI3_awaddr(base_region_M_AXI3_AWADDR),
        .M_AXI3_awburst(base_region_M_AXI3_AWBURST),
        .M_AXI3_awcache(base_region_M_AXI3_AWCACHE),
        .M_AXI3_awid(base_region_M_AXI3_AWID),
        .M_AXI3_awlen(base_region_M_AXI3_AWLEN),
        .M_AXI3_awlock(base_region_M_AXI3_AWLOCK),
        .M_AXI3_awprot(base_region_M_AXI3_AWPROT),
        .M_AXI3_awqos(base_region_M_AXI3_AWQOS),
        .M_AXI3_awready(base_region_M_AXI3_AWREADY),
        .M_AXI3_awsize(base_region_M_AXI3_AWSIZE),
        .M_AXI3_awvalid(base_region_M_AXI3_AWVALID),
        .M_AXI3_bid(base_region_M_AXI3_BID),
        .M_AXI3_bready(base_region_M_AXI3_BREADY),
        .M_AXI3_bresp(base_region_M_AXI3_BRESP),
        .M_AXI3_bvalid(base_region_M_AXI3_BVALID),
        .M_AXI3_rdata(base_region_M_AXI3_RDATA),
        .M_AXI3_rid(base_region_M_AXI3_RID),
        .M_AXI3_rlast(base_region_M_AXI3_RLAST),
        .M_AXI3_rready(base_region_M_AXI3_RREADY),
        .M_AXI3_rresp(base_region_M_AXI3_RRESP),
        .M_AXI3_rvalid(base_region_M_AXI3_RVALID),
        .M_AXI3_wdata(base_region_M_AXI3_WDATA),
        .M_AXI3_wlast(base_region_M_AXI3_WLAST),
        .M_AXI3_wready(base_region_M_AXI3_WREADY),
        .M_AXI3_wstrb(base_region_M_AXI3_WSTRB),
        .M_AXI3_wvalid(base_region_M_AXI3_WVALID),
        .M_AXI_LITE_araddr(base_region_M_AXI_LITE_ARADDR),
        .M_AXI_LITE_arprot(base_region_M_AXI_LITE_ARPROT),
        .M_AXI_LITE_arready(base_region_M_AXI_LITE_ARREADY),
        .M_AXI_LITE_arvalid(base_region_M_AXI_LITE_ARVALID),
        .M_AXI_LITE_awaddr(base_region_M_AXI_LITE_AWADDR),
        .M_AXI_LITE_awprot(base_region_M_AXI_LITE_AWPROT),
        .M_AXI_LITE_awready(base_region_M_AXI_LITE_AWREADY),
        .M_AXI_LITE_awvalid(base_region_M_AXI_LITE_AWVALID),
        .M_AXI_LITE_bready(base_region_M_AXI_LITE_BREADY),
        .M_AXI_LITE_bresp(base_region_M_AXI_LITE_BRESP),
        .M_AXI_LITE_bvalid(base_region_M_AXI_LITE_BVALID),
        .M_AXI_LITE_rdata(base_region_M_AXI_LITE_RDATA),
        .M_AXI_LITE_rready(base_region_M_AXI_LITE_RREADY),
        .M_AXI_LITE_rresp(base_region_M_AXI_LITE_RRESP),
        .M_AXI_LITE_rvalid(base_region_M_AXI_LITE_RVALID),
        .M_AXI_LITE_wdata(base_region_M_AXI_LITE_WDATA),
        .M_AXI_LITE_wready(base_region_M_AXI_LITE_WREADY),
        .M_AXI_LITE_wstrb(base_region_M_AXI_LITE_WSTRB),
        .M_AXI_LITE_wvalid(base_region_M_AXI_LITE_WVALID),
        .M_AXI_araddr(base_region_M_AXI_ARADDR),
        .M_AXI_arburst(base_region_M_AXI_ARBURST),
        .M_AXI_arcache(base_region_M_AXI_ARCACHE),
        .M_AXI_arid(base_region_M_AXI_ARID),
        .M_AXI_arlen(base_region_M_AXI_ARLEN),
        .M_AXI_arlock(base_region_M_AXI_ARLOCK),
        .M_AXI_arprot(base_region_M_AXI_ARPROT),
        .M_AXI_arready(base_region_M_AXI_ARREADY),
        .M_AXI_arsize(base_region_M_AXI_ARSIZE),
        .M_AXI_arvalid(base_region_M_AXI_ARVALID),
        .M_AXI_awaddr(base_region_M_AXI_AWADDR),
        .M_AXI_awburst(base_region_M_AXI_AWBURST),
        .M_AXI_awcache(base_region_M_AXI_AWCACHE),
        .M_AXI_awid(base_region_M_AXI_AWID),
        .M_AXI_awlen(base_region_M_AXI_AWLEN),
        .M_AXI_awlock(base_region_M_AXI_AWLOCK),
        .M_AXI_awprot(base_region_M_AXI_AWPROT),
        .M_AXI_awready(base_region_M_AXI_AWREADY),
        .M_AXI_awsize(base_region_M_AXI_AWSIZE),
        .M_AXI_awvalid(base_region_M_AXI_AWVALID),
        .M_AXI_bid(base_region_M_AXI_BID),
        .M_AXI_bready(base_region_M_AXI_BREADY),
        .M_AXI_bresp(base_region_M_AXI_BRESP),
        .M_AXI_bvalid(base_region_M_AXI_BVALID),
        .M_AXI_rdata(base_region_M_AXI_RDATA),
        .M_AXI_rid(base_region_M_AXI_RID),
        .M_AXI_rlast(base_region_M_AXI_RLAST),
        .M_AXI_rready(base_region_M_AXI_RREADY),
        .M_AXI_rresp(base_region_M_AXI_RRESP),
        .M_AXI_rvalid(base_region_M_AXI_RVALID),
        .M_AXI_wdata(base_region_M_AXI_WDATA),
        .M_AXI_wlast(base_region_M_AXI_WLAST),
        .M_AXI_wready(base_region_M_AXI_WREADY),
        .M_AXI_wstrb(base_region_M_AXI_WSTRB),
        .M_AXI_wvalid(base_region_M_AXI_WVALID),
        .S_AXI1_araddr(expanded_region_M01_AXI_ARADDR),
        .S_AXI1_arburst(expanded_region_M01_AXI_ARBURST),
        .S_AXI1_arcache(expanded_region_M01_AXI_ARCACHE),
        .S_AXI1_arid(expanded_region_M01_AXI_ARID),
        .S_AXI1_arlen(expanded_region_M01_AXI_ARLEN),
        .S_AXI1_arlock(expanded_region_M01_AXI_ARLOCK),
        .S_AXI1_arprot(expanded_region_M01_AXI_ARPROT),
        .S_AXI1_arqos(expanded_region_M01_AXI_ARQOS),
        .S_AXI1_arready(expanded_region_M01_AXI_ARREADY),
        .S_AXI1_arsize(expanded_region_M01_AXI_ARSIZE),
        .S_AXI1_arvalid(expanded_region_M01_AXI_ARVALID),
        .S_AXI1_awaddr(expanded_region_M01_AXI_AWADDR),
        .S_AXI1_awburst(expanded_region_M01_AXI_AWBURST),
        .S_AXI1_awcache(expanded_region_M01_AXI_AWCACHE),
        .S_AXI1_awid(expanded_region_M01_AXI_AWID),
        .S_AXI1_awlen(expanded_region_M01_AXI_AWLEN),
        .S_AXI1_awlock(expanded_region_M01_AXI_AWLOCK),
        .S_AXI1_awprot(expanded_region_M01_AXI_AWPROT),
        .S_AXI1_awqos(expanded_region_M01_AXI_AWQOS),
        .S_AXI1_awready(expanded_region_M01_AXI_AWREADY),
        .S_AXI1_awsize(expanded_region_M01_AXI_AWSIZE),
        .S_AXI1_awvalid(expanded_region_M01_AXI_AWVALID),
        .S_AXI1_bid(expanded_region_M01_AXI_BID),
        .S_AXI1_bready(expanded_region_M01_AXI_BREADY),
        .S_AXI1_bresp(expanded_region_M01_AXI_BRESP),
        .S_AXI1_bvalid(expanded_region_M01_AXI_BVALID),
        .S_AXI1_rdata(expanded_region_M01_AXI_RDATA),
        .S_AXI1_rid(expanded_region_M01_AXI_RID),
        .S_AXI1_rlast(expanded_region_M01_AXI_RLAST),
        .S_AXI1_rready(expanded_region_M01_AXI_RREADY),
        .S_AXI1_rresp(expanded_region_M01_AXI_RRESP),
        .S_AXI1_rvalid(expanded_region_M01_AXI_RVALID),
        .S_AXI1_wdata(expanded_region_M01_AXI_WDATA),
        .S_AXI1_wlast(expanded_region_M01_AXI_WLAST),
        .S_AXI1_wready(expanded_region_M01_AXI_WREADY),
        .S_AXI1_wstrb(expanded_region_M01_AXI_WSTRB),
        .S_AXI1_wvalid(expanded_region_M01_AXI_WVALID),
        .S_AXI2_araddr(expanded_region_M05_AXI_ARADDR),
        .S_AXI2_arprot(expanded_region_M05_AXI_ARPROT),
        .S_AXI2_arready(expanded_region_M05_AXI_ARREADY),
        .S_AXI2_arvalid(expanded_region_M05_AXI_ARVALID),
        .S_AXI2_awaddr(expanded_region_M05_AXI_AWADDR),
        .S_AXI2_awprot(expanded_region_M05_AXI_AWPROT),
        .S_AXI2_awready(expanded_region_M05_AXI_AWREADY),
        .S_AXI2_awvalid(expanded_region_M05_AXI_AWVALID),
        .S_AXI2_bready(expanded_region_M05_AXI_BREADY),
        .S_AXI2_bresp(expanded_region_M05_AXI_BRESP),
        .S_AXI2_bvalid(expanded_region_M05_AXI_BVALID),
        .S_AXI2_rdata(expanded_region_M05_AXI_RDATA),
        .S_AXI2_rready(expanded_region_M05_AXI_RREADY),
        .S_AXI2_rresp(expanded_region_M05_AXI_RRESP),
        .S_AXI2_rvalid(expanded_region_M05_AXI_RVALID),
        .S_AXI2_wdata(expanded_region_M05_AXI_WDATA),
        .S_AXI2_wready(expanded_region_M05_AXI_WREADY),
        .S_AXI2_wstrb(expanded_region_M05_AXI_WSTRB),
        .S_AXI2_wvalid(expanded_region_M05_AXI_WVALID),
        .S_AXI3_araddr(expanded_region_M06_AXI_ARADDR),
        .S_AXI3_arready(expanded_region_M06_AXI_ARREADY),
        .S_AXI3_arvalid(expanded_region_M06_AXI_ARVALID),
        .S_AXI3_awaddr(expanded_region_M06_AXI_AWADDR),
        .S_AXI3_awready(expanded_region_M06_AXI_AWREADY),
        .S_AXI3_awvalid(expanded_region_M06_AXI_AWVALID),
        .S_AXI3_bready(expanded_region_M06_AXI_BREADY),
        .S_AXI3_bresp(expanded_region_M06_AXI_BRESP),
        .S_AXI3_bvalid(expanded_region_M06_AXI_BVALID),
        .S_AXI3_rdata(expanded_region_M06_AXI_RDATA),
        .S_AXI3_rready(expanded_region_M06_AXI_RREADY),
        .S_AXI3_rresp(expanded_region_M06_AXI_RRESP),
        .S_AXI3_rvalid(expanded_region_M06_AXI_RVALID),
        .S_AXI3_wdata(expanded_region_M06_AXI_WDATA),
        .S_AXI3_wready(expanded_region_M06_AXI_WREADY),
        .S_AXI3_wstrb(expanded_region_M06_AXI_WSTRB),
        .S_AXI3_wvalid(expanded_region_M06_AXI_WVALID),
        .S_AXI4_araddr(expanded_region_M07_AXI_ARADDR),
        .S_AXI4_arready(expanded_region_M07_AXI_ARREADY),
        .S_AXI4_arvalid(expanded_region_M07_AXI_ARVALID),
        .S_AXI4_awaddr(expanded_region_M07_AXI_AWADDR),
        .S_AXI4_awready(expanded_region_M07_AXI_AWREADY),
        .S_AXI4_awvalid(expanded_region_M07_AXI_AWVALID),
        .S_AXI4_bready(expanded_region_M07_AXI_BREADY),
        .S_AXI4_bresp(expanded_region_M07_AXI_BRESP),
        .S_AXI4_bvalid(expanded_region_M07_AXI_BVALID),
        .S_AXI4_rdata(expanded_region_M07_AXI_RDATA),
        .S_AXI4_rready(expanded_region_M07_AXI_RREADY),
        .S_AXI4_rresp(expanded_region_M07_AXI_RRESP),
        .S_AXI4_rvalid(expanded_region_M07_AXI_RVALID),
        .S_AXI4_wdata(expanded_region_M07_AXI_WDATA),
        .S_AXI4_wready(expanded_region_M07_AXI_WREADY),
        .S_AXI4_wstrb(expanded_region_M07_AXI_WSTRB),
        .S_AXI4_wvalid(expanded_region_M07_AXI_WVALID),
        .S_AXI5_araddr(expanded_region_M08_AXI_ARADDR),
        .S_AXI5_arready(expanded_region_M08_AXI_ARREADY),
        .S_AXI5_arvalid(expanded_region_M08_AXI_ARVALID),
        .S_AXI5_awaddr(expanded_region_M08_AXI_AWADDR),
        .S_AXI5_awready(expanded_region_M08_AXI_AWREADY),
        .S_AXI5_awvalid(expanded_region_M08_AXI_AWVALID),
        .S_AXI5_bready(expanded_region_M08_AXI_BREADY),
        .S_AXI5_bresp(expanded_region_M08_AXI_BRESP),
        .S_AXI5_bvalid(expanded_region_M08_AXI_BVALID),
        .S_AXI5_rdata(expanded_region_M08_AXI_RDATA),
        .S_AXI5_rready(expanded_region_M08_AXI_RREADY),
        .S_AXI5_rresp(expanded_region_M08_AXI_RRESP),
        .S_AXI5_rvalid(expanded_region_M08_AXI_RVALID),
        .S_AXI5_wdata(expanded_region_M08_AXI_WDATA),
        .S_AXI5_wready(expanded_region_M08_AXI_WREADY),
        .S_AXI5_wstrb(expanded_region_M08_AXI_WSTRB),
        .S_AXI5_wvalid(expanded_region_M08_AXI_WVALID),
        .S_AXI6_araddr(expanded_region_M09_AXI_ARADDR),
        .S_AXI6_arprot(expanded_region_M09_AXI_ARPROT),
        .S_AXI6_arready(expanded_region_M09_AXI_ARREADY),
        .S_AXI6_arvalid(expanded_region_M09_AXI_ARVALID),
        .S_AXI6_awaddr(expanded_region_M09_AXI_AWADDR),
        .S_AXI6_awprot(expanded_region_M09_AXI_AWPROT),
        .S_AXI6_awready(expanded_region_M09_AXI_AWREADY),
        .S_AXI6_awvalid(expanded_region_M09_AXI_AWVALID),
        .S_AXI6_bready(expanded_region_M09_AXI_BREADY),
        .S_AXI6_bresp(expanded_region_M09_AXI_BRESP),
        .S_AXI6_bvalid(expanded_region_M09_AXI_BVALID),
        .S_AXI6_rdata(expanded_region_M09_AXI_RDATA),
        .S_AXI6_rready(expanded_region_M09_AXI_RREADY),
        .S_AXI6_rresp(expanded_region_M09_AXI_RRESP),
        .S_AXI6_rvalid(expanded_region_M09_AXI_RVALID),
        .S_AXI6_wdata(expanded_region_M09_AXI_WDATA),
        .S_AXI6_wready(expanded_region_M09_AXI_WREADY),
        .S_AXI6_wstrb(expanded_region_M09_AXI_WSTRB),
        .S_AXI6_wvalid(expanded_region_M09_AXI_WVALID),
        .S_AXI_araddr(expanded_region_M00_AXI_ARADDR),
        .S_AXI_arburst(expanded_region_M00_AXI_ARBURST),
        .S_AXI_arcache(expanded_region_M00_AXI_ARCACHE),
        .S_AXI_arid(expanded_region_M00_AXI_ARID),
        .S_AXI_arlen(expanded_region_M00_AXI_ARLEN),
        .S_AXI_arlock(expanded_region_M00_AXI_ARLOCK),
        .S_AXI_arprot(expanded_region_M00_AXI_ARPROT),
        .S_AXI_arqos(expanded_region_M00_AXI_ARQOS),
        .S_AXI_arready(expanded_region_M00_AXI_ARREADY),
        .S_AXI_arsize(expanded_region_M00_AXI_ARSIZE),
        .S_AXI_arvalid(expanded_region_M00_AXI_ARVALID),
        .S_AXI_awaddr(expanded_region_M00_AXI_AWADDR),
        .S_AXI_awburst(expanded_region_M00_AXI_AWBURST),
        .S_AXI_awcache(expanded_region_M00_AXI_AWCACHE),
        .S_AXI_awid(expanded_region_M00_AXI_AWID),
        .S_AXI_awlen(expanded_region_M00_AXI_AWLEN),
        .S_AXI_awlock(expanded_region_M00_AXI_AWLOCK),
        .S_AXI_awprot(expanded_region_M00_AXI_AWPROT),
        .S_AXI_awqos(expanded_region_M00_AXI_AWQOS),
        .S_AXI_awready(expanded_region_M00_AXI_AWREADY),
        .S_AXI_awsize(expanded_region_M00_AXI_AWSIZE),
        .S_AXI_awvalid(expanded_region_M00_AXI_AWVALID),
        .S_AXI_bid(expanded_region_M00_AXI_BID),
        .S_AXI_bready(expanded_region_M00_AXI_BREADY),
        .S_AXI_bresp(expanded_region_M00_AXI_BRESP),
        .S_AXI_bvalid(expanded_region_M00_AXI_BVALID),
        .S_AXI_rdata(expanded_region_M00_AXI_RDATA),
        .S_AXI_rid(expanded_region_M00_AXI_RID),
        .S_AXI_rlast(expanded_region_M00_AXI_RLAST),
        .S_AXI_rready(expanded_region_M00_AXI_RREADY),
        .S_AXI_rresp(expanded_region_M00_AXI_RRESP),
        .S_AXI_rvalid(expanded_region_M00_AXI_RVALID),
        .S_AXI_wdata(expanded_region_M00_AXI_WDATA),
        .S_AXI_wlast(expanded_region_M00_AXI_WLAST),
        .S_AXI_wready(expanded_region_M00_AXI_WREADY),
        .S_AXI_wstrb(expanded_region_M00_AXI_WSTRB),
        .S_AXI_wvalid(expanded_region_M00_AXI_WVALID),
        .axi_aclk(base_region_axi_aclk),
        .axi_aresetn(base_region_axi_aresetn),
        .clk_out1(base_region_clk_out1),
        .clk_out2(base_region_clk_out2),
        .clk_out3(base_region_clk_out3),
        .ext_reset_in(expanded_region_interconnect_aresetn1),
        .gpio_io_i(expanded_region_Res),
        .interconnect_aresetn(base_region_interconnect_aresetn),
        .interconnect_aresetn1(base_region_interconnect_aresetn1),
        .locked(base_region_locked),
        .pcie_mgt_rxn(base_region_pcie_mgt_rxn),
        .pcie_mgt_rxp(base_region_pcie_mgt_rxp),
        .pcie_mgt_txn(base_region_pcie_mgt_txn),
        .pcie_mgt_txp(base_region_pcie_mgt_txp),
        .sys_rst_n(perst_n_1),
        .user_lnk_up(base_region_user_lnk_up));
  expanded_region_imp_112GC7E expanded_region
       (.ACLK(base_region_clk_out2),
        .C0_DDR3_addr(expanded_region_C0_DDR3_ADDR),
        .C0_DDR3_ba(expanded_region_C0_DDR3_BA),
        .C0_DDR3_cas_n(expanded_region_C0_DDR3_CAS_N),
        .C0_DDR3_ck_n(expanded_region_C0_DDR3_CK_N),
        .C0_DDR3_ck_p(expanded_region_C0_DDR3_CK_P),
        .C0_DDR3_cke(expanded_region_C0_DDR3_CKE),
        .C0_DDR3_cs_n(expanded_region_C0_DDR3_CS_N),
        .C0_DDR3_dq(c1_ddr3_dq[71:0]),
        .C0_DDR3_dqs_n(c1_ddr3_dqs_n[8:0]),
        .C0_DDR3_dqs_p(c1_ddr3_dqs_p[8:0]),
        .C0_DDR3_odt(expanded_region_C0_DDR3_ODT),
        .C0_DDR3_ras_n(expanded_region_C0_DDR3_RAS_N),
        .C0_DDR3_reset_n(expanded_region_C0_DDR3_RESET_N),
        .C0_DDR3_we_n(expanded_region_C0_DDR3_WE_N),
        .C0_DDR4_addr(expanded_region_C0_DDR4_ADDR),
        .C0_DDR4_ba(expanded_region_C0_DDR4_BA),
        .C0_DDR4_cas_n(expanded_region_C0_DDR4_CAS_N),
        .C0_DDR4_ck_n(expanded_region_C0_DDR4_CK_N),
        .C0_DDR4_ck_p(expanded_region_C0_DDR4_CK_P),
        .C0_DDR4_cke(expanded_region_C0_DDR4_CKE),
        .C0_DDR4_cs_n(expanded_region_C0_DDR4_CS_N),
        .C0_DDR4_dq(c0_ddr3_dq[71:0]),
        .C0_DDR4_dqs_n(c0_ddr3_dqs_n[8:0]),
        .C0_DDR4_dqs_p(c0_ddr3_dqs_p[8:0]),
        .C0_DDR4_odt(expanded_region_C0_DDR4_ODT),
        .C0_DDR4_ras_n(expanded_region_C0_DDR4_RAS_N),
        .C0_DDR4_reset_n(expanded_region_C0_DDR4_RESET_N),
        .C0_DDR4_we_n(expanded_region_C0_DDR4_WE_N),
        .C0_SYS_CLK1_clk_n(c0_sys_1_CLK_N),
        .C0_SYS_CLK1_clk_p(c0_sys_1_CLK_P),
        .C0_SYS_CLK_clk_n(c1_sys_1_CLK_N),
        .C0_SYS_CLK_clk_p(c1_sys_1_CLK_P),
        .INTERCONNECT_RESET(base_region_interconnect_aresetn1),
        .KERNEL_CLK(base_region_clk_out1),
        .KERNEL_RESET(base_region_interconnect_aresetn),
        .M00_AXI_araddr(expanded_region_M00_AXI_ARADDR),
        .M00_AXI_arburst(expanded_region_M00_AXI_ARBURST),
        .M00_AXI_arcache(expanded_region_M00_AXI_ARCACHE),
        .M00_AXI_arid(expanded_region_M00_AXI_ARID),
        .M00_AXI_arlen(expanded_region_M00_AXI_ARLEN),
        .M00_AXI_arlock(expanded_region_M00_AXI_ARLOCK),
        .M00_AXI_arprot(expanded_region_M00_AXI_ARPROT),
        .M00_AXI_arqos(expanded_region_M00_AXI_ARQOS),
        .M00_AXI_arready(expanded_region_M00_AXI_ARREADY),
        .M00_AXI_arsize(expanded_region_M00_AXI_ARSIZE),
        .M00_AXI_arvalid(expanded_region_M00_AXI_ARVALID),
        .M00_AXI_awaddr(expanded_region_M00_AXI_AWADDR),
        .M00_AXI_awburst(expanded_region_M00_AXI_AWBURST),
        .M00_AXI_awcache(expanded_region_M00_AXI_AWCACHE),
        .M00_AXI_awid(expanded_region_M00_AXI_AWID),
        .M00_AXI_awlen(expanded_region_M00_AXI_AWLEN),
        .M00_AXI_awlock(expanded_region_M00_AXI_AWLOCK),
        .M00_AXI_awprot(expanded_region_M00_AXI_AWPROT),
        .M00_AXI_awqos(expanded_region_M00_AXI_AWQOS),
        .M00_AXI_awready(expanded_region_M00_AXI_AWREADY),
        .M00_AXI_awsize(expanded_region_M00_AXI_AWSIZE),
        .M00_AXI_awvalid(expanded_region_M00_AXI_AWVALID),
        .M00_AXI_bid(expanded_region_M00_AXI_BID),
        .M00_AXI_bready(expanded_region_M00_AXI_BREADY),
        .M00_AXI_bresp(expanded_region_M00_AXI_BRESP),
        .M00_AXI_bvalid(expanded_region_M00_AXI_BVALID),
        .M00_AXI_rdata(expanded_region_M00_AXI_RDATA),
        .M00_AXI_rid(expanded_region_M00_AXI_RID),
        .M00_AXI_rlast(expanded_region_M00_AXI_RLAST),
        .M00_AXI_rready(expanded_region_M00_AXI_RREADY),
        .M00_AXI_rresp(expanded_region_M00_AXI_RRESP),
        .M00_AXI_rvalid(expanded_region_M00_AXI_RVALID),
        .M00_AXI_wdata(expanded_region_M00_AXI_WDATA),
        .M00_AXI_wlast(expanded_region_M00_AXI_WLAST),
        .M00_AXI_wready(expanded_region_M00_AXI_WREADY),
        .M00_AXI_wstrb(expanded_region_M00_AXI_WSTRB),
        .M00_AXI_wvalid(expanded_region_M00_AXI_WVALID),
        .M01_AXI_araddr(expanded_region_M01_AXI_ARADDR),
        .M01_AXI_arburst(expanded_region_M01_AXI_ARBURST),
        .M01_AXI_arcache(expanded_region_M01_AXI_ARCACHE),
        .M01_AXI_arid(expanded_region_M01_AXI_ARID),
        .M01_AXI_arlen(expanded_region_M01_AXI_ARLEN),
        .M01_AXI_arlock(expanded_region_M01_AXI_ARLOCK),
        .M01_AXI_arprot(expanded_region_M01_AXI_ARPROT),
        .M01_AXI_arqos(expanded_region_M01_AXI_ARQOS),
        .M01_AXI_arready(expanded_region_M01_AXI_ARREADY),
        .M01_AXI_arsize(expanded_region_M01_AXI_ARSIZE),
        .M01_AXI_arvalid(expanded_region_M01_AXI_ARVALID),
        .M01_AXI_awaddr(expanded_region_M01_AXI_AWADDR),
        .M01_AXI_awburst(expanded_region_M01_AXI_AWBURST),
        .M01_AXI_awcache(expanded_region_M01_AXI_AWCACHE),
        .M01_AXI_awid(expanded_region_M01_AXI_AWID),
        .M01_AXI_awlen(expanded_region_M01_AXI_AWLEN),
        .M01_AXI_awlock(expanded_region_M01_AXI_AWLOCK),
        .M01_AXI_awprot(expanded_region_M01_AXI_AWPROT),
        .M01_AXI_awqos(expanded_region_M01_AXI_AWQOS),
        .M01_AXI_awready(expanded_region_M01_AXI_AWREADY),
        .M01_AXI_awsize(expanded_region_M01_AXI_AWSIZE),
        .M01_AXI_awvalid(expanded_region_M01_AXI_AWVALID),
        .M01_AXI_bid(expanded_region_M01_AXI_BID),
        .M01_AXI_bready(expanded_region_M01_AXI_BREADY),
        .M01_AXI_bresp(expanded_region_M01_AXI_BRESP),
        .M01_AXI_bvalid(expanded_region_M01_AXI_BVALID),
        .M01_AXI_rdata(expanded_region_M01_AXI_RDATA),
        .M01_AXI_rid(expanded_region_M01_AXI_RID),
        .M01_AXI_rlast(expanded_region_M01_AXI_RLAST),
        .M01_AXI_rready(expanded_region_M01_AXI_RREADY),
        .M01_AXI_rresp(expanded_region_M01_AXI_RRESP),
        .M01_AXI_rvalid(expanded_region_M01_AXI_RVALID),
        .M01_AXI_wdata(expanded_region_M01_AXI_WDATA),
        .M01_AXI_wlast(expanded_region_M01_AXI_WLAST),
        .M01_AXI_wready(expanded_region_M01_AXI_WREADY),
        .M01_AXI_wstrb(expanded_region_M01_AXI_WSTRB),
        .M01_AXI_wvalid(expanded_region_M01_AXI_WVALID),
        .M05_AXI_araddr(expanded_region_M05_AXI_ARADDR),
        .M05_AXI_arprot(expanded_region_M05_AXI_ARPROT),
        .M05_AXI_arready(expanded_region_M05_AXI_ARREADY),
        .M05_AXI_arvalid(expanded_region_M05_AXI_ARVALID),
        .M05_AXI_awaddr(expanded_region_M05_AXI_AWADDR),
        .M05_AXI_awprot(expanded_region_M05_AXI_AWPROT),
        .M05_AXI_awready(expanded_region_M05_AXI_AWREADY),
        .M05_AXI_awvalid(expanded_region_M05_AXI_AWVALID),
        .M05_AXI_bready(expanded_region_M05_AXI_BREADY),
        .M05_AXI_bresp(expanded_region_M05_AXI_BRESP),
        .M05_AXI_bvalid(expanded_region_M05_AXI_BVALID),
        .M05_AXI_rdata(expanded_region_M05_AXI_RDATA),
        .M05_AXI_rready(expanded_region_M05_AXI_RREADY),
        .M05_AXI_rresp(expanded_region_M05_AXI_RRESP),
        .M05_AXI_rvalid(expanded_region_M05_AXI_RVALID),
        .M05_AXI_wdata(expanded_region_M05_AXI_WDATA),
        .M05_AXI_wready(expanded_region_M05_AXI_WREADY),
        .M05_AXI_wstrb(expanded_region_M05_AXI_WSTRB),
        .M05_AXI_wvalid(expanded_region_M05_AXI_WVALID),
        .M06_AXI_araddr(expanded_region_M06_AXI_ARADDR),
        .M06_AXI_arready(expanded_region_M06_AXI_ARREADY),
        .M06_AXI_arvalid(expanded_region_M06_AXI_ARVALID),
        .M06_AXI_awaddr(expanded_region_M06_AXI_AWADDR),
        .M06_AXI_awready(expanded_region_M06_AXI_AWREADY),
        .M06_AXI_awvalid(expanded_region_M06_AXI_AWVALID),
        .M06_AXI_bready(expanded_region_M06_AXI_BREADY),
        .M06_AXI_bresp(expanded_region_M06_AXI_BRESP),
        .M06_AXI_bvalid(expanded_region_M06_AXI_BVALID),
        .M06_AXI_rdata(expanded_region_M06_AXI_RDATA),
        .M06_AXI_rready(expanded_region_M06_AXI_RREADY),
        .M06_AXI_rresp(expanded_region_M06_AXI_RRESP),
        .M06_AXI_rvalid(expanded_region_M06_AXI_RVALID),
        .M06_AXI_wdata(expanded_region_M06_AXI_WDATA),
        .M06_AXI_wready(expanded_region_M06_AXI_WREADY),
        .M06_AXI_wstrb(expanded_region_M06_AXI_WSTRB),
        .M06_AXI_wvalid(expanded_region_M06_AXI_WVALID),
        .M07_AXI_araddr(expanded_region_M07_AXI_ARADDR),
        .M07_AXI_arready(expanded_region_M07_AXI_ARREADY),
        .M07_AXI_arvalid(expanded_region_M07_AXI_ARVALID),
        .M07_AXI_awaddr(expanded_region_M07_AXI_AWADDR),
        .M07_AXI_awready(expanded_region_M07_AXI_AWREADY),
        .M07_AXI_awvalid(expanded_region_M07_AXI_AWVALID),
        .M07_AXI_bready(expanded_region_M07_AXI_BREADY),
        .M07_AXI_bresp(expanded_region_M07_AXI_BRESP),
        .M07_AXI_bvalid(expanded_region_M07_AXI_BVALID),
        .M07_AXI_rdata(expanded_region_M07_AXI_RDATA),
        .M07_AXI_rready(expanded_region_M07_AXI_RREADY),
        .M07_AXI_rresp(expanded_region_M07_AXI_RRESP),
        .M07_AXI_rvalid(expanded_region_M07_AXI_RVALID),
        .M07_AXI_wdata(expanded_region_M07_AXI_WDATA),
        .M07_AXI_wready(expanded_region_M07_AXI_WREADY),
        .M07_AXI_wstrb(expanded_region_M07_AXI_WSTRB),
        .M07_AXI_wvalid(expanded_region_M07_AXI_WVALID),
        .M08_AXI_araddr(expanded_region_M08_AXI_ARADDR),
        .M08_AXI_arready(expanded_region_M08_AXI_ARREADY),
        .M08_AXI_arvalid(expanded_region_M08_AXI_ARVALID),
        .M08_AXI_awaddr(expanded_region_M08_AXI_AWADDR),
        .M08_AXI_awready(expanded_region_M08_AXI_AWREADY),
        .M08_AXI_awvalid(expanded_region_M08_AXI_AWVALID),
        .M08_AXI_bready(expanded_region_M08_AXI_BREADY),
        .M08_AXI_bresp(expanded_region_M08_AXI_BRESP),
        .M08_AXI_bvalid(expanded_region_M08_AXI_BVALID),
        .M08_AXI_rdata(expanded_region_M08_AXI_RDATA),
        .M08_AXI_rready(expanded_region_M08_AXI_RREADY),
        .M08_AXI_rresp(expanded_region_M08_AXI_RRESP),
        .M08_AXI_rvalid(expanded_region_M08_AXI_RVALID),
        .M08_AXI_wdata(expanded_region_M08_AXI_WDATA),
        .M08_AXI_wready(expanded_region_M08_AXI_WREADY),
        .M08_AXI_wstrb(expanded_region_M08_AXI_WSTRB),
        .M08_AXI_wvalid(expanded_region_M08_AXI_WVALID),
        .M09_AXI_araddr(expanded_region_M09_AXI_ARADDR),
        .M09_AXI_arprot(expanded_region_M09_AXI_ARPROT),
        .M09_AXI_arready(expanded_region_M09_AXI_ARREADY),
        .M09_AXI_arvalid(expanded_region_M09_AXI_ARVALID),
        .M09_AXI_awaddr(expanded_region_M09_AXI_AWADDR),
        .M09_AXI_awprot(expanded_region_M09_AXI_AWPROT),
        .M09_AXI_awready(expanded_region_M09_AXI_AWREADY),
        .M09_AXI_awvalid(expanded_region_M09_AXI_AWVALID),
        .M09_AXI_bready(expanded_region_M09_AXI_BREADY),
        .M09_AXI_bresp(expanded_region_M09_AXI_BRESP),
        .M09_AXI_bvalid(expanded_region_M09_AXI_BVALID),
        .M09_AXI_rdata(expanded_region_M09_AXI_RDATA),
        .M09_AXI_rready(expanded_region_M09_AXI_RREADY),
        .M09_AXI_rresp(expanded_region_M09_AXI_RRESP),
        .M09_AXI_rvalid(expanded_region_M09_AXI_RVALID),
        .M09_AXI_wdata(expanded_region_M09_AXI_WDATA),
        .M09_AXI_wready(expanded_region_M09_AXI_WREADY),
        .M09_AXI_wstrb(expanded_region_M09_AXI_WSTRB),
        .M09_AXI_wvalid(expanded_region_M09_AXI_WVALID),
        .Op1(perst_n_1),
        .Res(expanded_region_Res),
        .S00_ACLK(base_region_axi_aclk),
        .S00_AXI1_araddr(base_region_M_AXI_ARADDR),
        .S00_AXI1_arburst(base_region_M_AXI_ARBURST),
        .S00_AXI1_arcache(base_region_M_AXI_ARCACHE),
        .S00_AXI1_arid(base_region_M_AXI_ARID),
        .S00_AXI1_arlen(base_region_M_AXI_ARLEN),
        .S00_AXI1_arlock(base_region_M_AXI_ARLOCK),
        .S00_AXI1_arprot(base_region_M_AXI_ARPROT),
        .S00_AXI1_arready(base_region_M_AXI_ARREADY),
        .S00_AXI1_arsize(base_region_M_AXI_ARSIZE),
        .S00_AXI1_arvalid(base_region_M_AXI_ARVALID),
        .S00_AXI1_awaddr(base_region_M_AXI_AWADDR),
        .S00_AXI1_awburst(base_region_M_AXI_AWBURST),
        .S00_AXI1_awcache(base_region_M_AXI_AWCACHE),
        .S00_AXI1_awid(base_region_M_AXI_AWID),
        .S00_AXI1_awlen(base_region_M_AXI_AWLEN),
        .S00_AXI1_awlock(base_region_M_AXI_AWLOCK),
        .S00_AXI1_awprot(base_region_M_AXI_AWPROT),
        .S00_AXI1_awready(base_region_M_AXI_AWREADY),
        .S00_AXI1_awsize(base_region_M_AXI_AWSIZE),
        .S00_AXI1_awvalid(base_region_M_AXI_AWVALID),
        .S00_AXI1_bid(base_region_M_AXI_BID),
        .S00_AXI1_bready(base_region_M_AXI_BREADY),
        .S00_AXI1_bresp(base_region_M_AXI_BRESP),
        .S00_AXI1_bvalid(base_region_M_AXI_BVALID),
        .S00_AXI1_rdata(base_region_M_AXI_RDATA),
        .S00_AXI1_rid(base_region_M_AXI_RID),
        .S00_AXI1_rlast(base_region_M_AXI_RLAST),
        .S00_AXI1_rready(base_region_M_AXI_RREADY),
        .S00_AXI1_rresp(base_region_M_AXI_RRESP),
        .S00_AXI1_rvalid(base_region_M_AXI_RVALID),
        .S00_AXI1_wdata(base_region_M_AXI_WDATA),
        .S00_AXI1_wlast(base_region_M_AXI_WLAST),
        .S00_AXI1_wready(base_region_M_AXI_WREADY),
        .S00_AXI1_wstrb(base_region_M_AXI_WSTRB),
        .S00_AXI1_wvalid(base_region_M_AXI_WVALID),
        .S00_AXI_araddr(base_region_M_AXI_LITE_ARADDR),
        .S00_AXI_arprot(base_region_M_AXI_LITE_ARPROT),
        .S00_AXI_arready(base_region_M_AXI_LITE_ARREADY),
        .S00_AXI_arvalid(base_region_M_AXI_LITE_ARVALID),
        .S00_AXI_awaddr(base_region_M_AXI_LITE_AWADDR),
        .S00_AXI_awprot(base_region_M_AXI_LITE_AWPROT),
        .S00_AXI_awready(base_region_M_AXI_LITE_AWREADY),
        .S00_AXI_awvalid(base_region_M_AXI_LITE_AWVALID),
        .S00_AXI_bready(base_region_M_AXI_LITE_BREADY),
        .S00_AXI_bresp(base_region_M_AXI_LITE_BRESP),
        .S00_AXI_bvalid(base_region_M_AXI_LITE_BVALID),
        .S00_AXI_rdata(base_region_M_AXI_LITE_RDATA),
        .S00_AXI_rready(base_region_M_AXI_LITE_RREADY),
        .S00_AXI_rresp(base_region_M_AXI_LITE_RRESP),
        .S00_AXI_rvalid(base_region_M_AXI_LITE_RVALID),
        .S00_AXI_wdata(base_region_M_AXI_LITE_WDATA),
        .S00_AXI_wready(base_region_M_AXI_LITE_WREADY),
        .S00_AXI_wstrb(base_region_M_AXI_LITE_WSTRB),
        .S00_AXI_wvalid(base_region_M_AXI_LITE_WVALID),
        .S01_AXI_araddr(base_region_M_AXI2_ARADDR),
        .S01_AXI_arburst(base_region_M_AXI2_ARBURST),
        .S01_AXI_arcache(base_region_M_AXI2_ARCACHE),
        .S01_AXI_arid(base_region_M_AXI2_ARID),
        .S01_AXI_arlen(base_region_M_AXI2_ARLEN),
        .S01_AXI_arlock(base_region_M_AXI2_ARLOCK),
        .S01_AXI_arprot(base_region_M_AXI2_ARPROT),
        .S01_AXI_arqos(base_region_M_AXI2_ARQOS),
        .S01_AXI_arready(base_region_M_AXI2_ARREADY),
        .S01_AXI_arsize(base_region_M_AXI2_ARSIZE),
        .S01_AXI_arvalid(base_region_M_AXI2_ARVALID),
        .S01_AXI_awaddr(base_region_M_AXI2_AWADDR),
        .S01_AXI_awburst(base_region_M_AXI2_AWBURST),
        .S01_AXI_awcache(base_region_M_AXI2_AWCACHE),
        .S01_AXI_awid(base_region_M_AXI2_AWID),
        .S01_AXI_awlen(base_region_M_AXI2_AWLEN),
        .S01_AXI_awlock(base_region_M_AXI2_AWLOCK),
        .S01_AXI_awprot(base_region_M_AXI2_AWPROT),
        .S01_AXI_awqos(base_region_M_AXI2_AWQOS),
        .S01_AXI_awready(base_region_M_AXI2_AWREADY),
        .S01_AXI_awsize(base_region_M_AXI2_AWSIZE),
        .S01_AXI_awvalid(base_region_M_AXI2_AWVALID),
        .S01_AXI_bid(base_region_M_AXI2_BID),
        .S01_AXI_bready(base_region_M_AXI2_BREADY),
        .S01_AXI_bresp(base_region_M_AXI2_BRESP),
        .S01_AXI_bvalid(base_region_M_AXI2_BVALID),
        .S01_AXI_rdata(base_region_M_AXI2_RDATA),
        .S01_AXI_rid(base_region_M_AXI2_RID),
        .S01_AXI_rlast(base_region_M_AXI2_RLAST),
        .S01_AXI_rready(base_region_M_AXI2_RREADY),
        .S01_AXI_rresp(base_region_M_AXI2_RRESP),
        .S01_AXI_rvalid(base_region_M_AXI2_RVALID),
        .S01_AXI_wdata(base_region_M_AXI2_WDATA),
        .S01_AXI_wlast(base_region_M_AXI2_WLAST),
        .S01_AXI_wready(base_region_M_AXI2_WREADY),
        .S01_AXI_wstrb(base_region_M_AXI2_WSTRB),
        .S01_AXI_wvalid(base_region_M_AXI2_WVALID),
        .S02_AXI_araddr(base_region_M_AXI3_ARADDR),
        .S02_AXI_arburst(base_region_M_AXI3_ARBURST),
        .S02_AXI_arcache(base_region_M_AXI3_ARCACHE),
        .S02_AXI_arid(base_region_M_AXI3_ARID),
        .S02_AXI_arlen(base_region_M_AXI3_ARLEN),
        .S02_AXI_arlock(base_region_M_AXI3_ARLOCK),
        .S02_AXI_arprot(base_region_M_AXI3_ARPROT),
        .S02_AXI_arqos(base_region_M_AXI3_ARQOS),
        .S02_AXI_arready(base_region_M_AXI3_ARREADY),
        .S02_AXI_arsize(base_region_M_AXI3_ARSIZE),
        .S02_AXI_arvalid(base_region_M_AXI3_ARVALID),
        .S02_AXI_awaddr(base_region_M_AXI3_AWADDR),
        .S02_AXI_awburst(base_region_M_AXI3_AWBURST),
        .S02_AXI_awcache(base_region_M_AXI3_AWCACHE),
        .S02_AXI_awid(base_region_M_AXI3_AWID),
        .S02_AXI_awlen(base_region_M_AXI3_AWLEN),
        .S02_AXI_awlock(base_region_M_AXI3_AWLOCK),
        .S02_AXI_awprot(base_region_M_AXI3_AWPROT),
        .S02_AXI_awqos(base_region_M_AXI3_AWQOS),
        .S02_AXI_awready(base_region_M_AXI3_AWREADY),
        .S02_AXI_awsize(base_region_M_AXI3_AWSIZE),
        .S02_AXI_awvalid(base_region_M_AXI3_AWVALID),
        .S02_AXI_bid(base_region_M_AXI3_BID),
        .S02_AXI_bready(base_region_M_AXI3_BREADY),
        .S02_AXI_bresp(base_region_M_AXI3_BRESP),
        .S02_AXI_bvalid(base_region_M_AXI3_BVALID),
        .S02_AXI_rdata(base_region_M_AXI3_RDATA),
        .S02_AXI_rid(base_region_M_AXI3_RID),
        .S02_AXI_rlast(base_region_M_AXI3_RLAST),
        .S02_AXI_rready(base_region_M_AXI3_RREADY),
        .S02_AXI_rresp(base_region_M_AXI3_RRESP),
        .S02_AXI_rvalid(base_region_M_AXI3_RVALID),
        .S02_AXI_wdata(base_region_M_AXI3_WDATA),
        .S02_AXI_wlast(base_region_M_AXI3_WLAST),
        .S02_AXI_wready(base_region_M_AXI3_WREADY),
        .S02_AXI_wstrb(base_region_M_AXI3_WSTRB),
        .S02_AXI_wvalid(base_region_M_AXI3_WVALID),
        .S_AXI_araddr(base_region_M_AXI1_ARADDR),
        .S_AXI_arprot(base_region_M_AXI1_ARPROT),
        .S_AXI_arready(base_region_M_AXI1_ARREADY),
        .S_AXI_arvalid(base_region_M_AXI1_ARVALID),
        .S_AXI_awaddr(base_region_M_AXI1_AWADDR),
        .S_AXI_awprot(base_region_M_AXI1_AWPROT),
        .S_AXI_awready(base_region_M_AXI1_AWREADY),
        .S_AXI_awvalid(base_region_M_AXI1_AWVALID),
        .S_AXI_bready(base_region_M_AXI1_BREADY),
        .S_AXI_bresp(base_region_M_AXI1_BRESP),
        .S_AXI_bvalid(base_region_M_AXI1_BVALID),
        .S_AXI_rdata(base_region_M_AXI1_RDATA),
        .S_AXI_rready(base_region_M_AXI1_RREADY),
        .S_AXI_rresp(base_region_M_AXI1_RRESP),
        .S_AXI_rvalid(base_region_M_AXI1_RVALID),
        .S_AXI_wdata(base_region_M_AXI1_WDATA),
        .S_AXI_wready(base_region_M_AXI1_WREADY),
        .S_AXI_wstrb(base_region_M_AXI1_WSTRB),
        .S_AXI_wvalid(base_region_M_AXI1_WVALID),
        .core_aresetn(base_region_axi_aresetn),
        .dcm_locked(base_region_locked),
        .dout(expanded_region_dout),
        .flash_A(expanded_region_flash_A),
        .flash_ADV_N(expanded_region_flash_ADV_N),
        .flash_DQ(flash_DQ[15:4]),
        .flash_OE_N(expanded_region_flash_OE_N),
        .flash_WE_N(expanded_region_flash_WE_N),
        .flash_clk(base_region_clk_out3),
        .interconnect_aresetn1(expanded_region_interconnect_aresetn1));
endmodule

module xcl_design_interconnect_axilite_0
   (ACLK,
    ARESETN,
    M00_ACLK,
    M00_ARESETN,
    M00_AXI_araddr,
    M00_AXI_arprot,
    M00_AXI_arready,
    M00_AXI_arvalid,
    M00_AXI_awaddr,
    M00_AXI_awprot,
    M00_AXI_awready,
    M00_AXI_awvalid,
    M00_AXI_bready,
    M00_AXI_bresp,
    M00_AXI_bvalid,
    M00_AXI_rdata,
    M00_AXI_rready,
    M00_AXI_rresp,
    M00_AXI_rvalid,
    M00_AXI_wdata,
    M00_AXI_wready,
    M00_AXI_wstrb,
    M00_AXI_wvalid,
    M01_ACLK,
    M01_ARESETN,
    M01_AXI_araddr,
    M01_AXI_arready,
    M01_AXI_arvalid,
    M01_AXI_awaddr,
    M01_AXI_awready,
    M01_AXI_awvalid,
    M01_AXI_bready,
    M01_AXI_bresp,
    M01_AXI_bvalid,
    M01_AXI_rdata,
    M01_AXI_rready,
    M01_AXI_rresp,
    M01_AXI_rvalid,
    M01_AXI_wdata,
    M01_AXI_wready,
    M01_AXI_wstrb,
    M01_AXI_wvalid,
    M02_ACLK,
    M02_ARESETN,
    M02_AXI_araddr,
    M02_AXI_arready,
    M02_AXI_arvalid,
    M02_AXI_awaddr,
    M02_AXI_awready,
    M02_AXI_awvalid,
    M02_AXI_bready,
    M02_AXI_bresp,
    M02_AXI_bvalid,
    M02_AXI_rdata,
    M02_AXI_rready,
    M02_AXI_rresp,
    M02_AXI_rvalid,
    M02_AXI_wdata,
    M02_AXI_wready,
    M02_AXI_wstrb,
    M02_AXI_wvalid,
    M03_ACLK,
    M03_ARESETN,
    M03_AXI_araddr,
    M03_AXI_arready,
    M03_AXI_arvalid,
    M03_AXI_awaddr,
    M03_AXI_awready,
    M03_AXI_awvalid,
    M03_AXI_bready,
    M03_AXI_bresp,
    M03_AXI_bvalid,
    M03_AXI_rdata,
    M03_AXI_rready,
    M03_AXI_rresp,
    M03_AXI_rvalid,
    M03_AXI_wdata,
    M03_AXI_wready,
    M03_AXI_wvalid,
    M04_ACLK,
    M04_ARESETN,
    M04_AXI_araddr,
    M04_AXI_arready,
    M04_AXI_arvalid,
    M04_AXI_awaddr,
    M04_AXI_awready,
    M04_AXI_awvalid,
    M04_AXI_bready,
    M04_AXI_bresp,
    M04_AXI_bvalid,
    M04_AXI_rdata,
    M04_AXI_rready,
    M04_AXI_rresp,
    M04_AXI_rvalid,
    M04_AXI_wdata,
    M04_AXI_wready,
    M04_AXI_wvalid,
    M05_ACLK,
    M05_ARESETN,
    M05_AXI_araddr,
    M05_AXI_arprot,
    M05_AXI_arready,
    M05_AXI_arvalid,
    M05_AXI_awaddr,
    M05_AXI_awprot,
    M05_AXI_awready,
    M05_AXI_awvalid,
    M05_AXI_bready,
    M05_AXI_bresp,
    M05_AXI_bvalid,
    M05_AXI_rdata,
    M05_AXI_rready,
    M05_AXI_rresp,
    M05_AXI_rvalid,
    M05_AXI_wdata,
    M05_AXI_wready,
    M05_AXI_wstrb,
    M05_AXI_wvalid,
    M06_ACLK,
    M06_ARESETN,
    M06_AXI_araddr,
    M06_AXI_arready,
    M06_AXI_arvalid,
    M06_AXI_awaddr,
    M06_AXI_awready,
    M06_AXI_awvalid,
    M06_AXI_bready,
    M06_AXI_bresp,
    M06_AXI_bvalid,
    M06_AXI_rdata,
    M06_AXI_rready,
    M06_AXI_rresp,
    M06_AXI_rvalid,
    M06_AXI_wdata,
    M06_AXI_wready,
    M06_AXI_wstrb,
    M06_AXI_wvalid,
    M07_ACLK,
    M07_ARESETN,
    M07_AXI_araddr,
    M07_AXI_arready,
    M07_AXI_arvalid,
    M07_AXI_awaddr,
    M07_AXI_awready,
    M07_AXI_awvalid,
    M07_AXI_bready,
    M07_AXI_bresp,
    M07_AXI_bvalid,
    M07_AXI_rdata,
    M07_AXI_rready,
    M07_AXI_rresp,
    M07_AXI_rvalid,
    M07_AXI_wdata,
    M07_AXI_wready,
    M07_AXI_wstrb,
    M07_AXI_wvalid,
    M08_ACLK,
    M08_ARESETN,
    M08_AXI_araddr,
    M08_AXI_arready,
    M08_AXI_arvalid,
    M08_AXI_awaddr,
    M08_AXI_awready,
    M08_AXI_awvalid,
    M08_AXI_bready,
    M08_AXI_bresp,
    M08_AXI_bvalid,
    M08_AXI_rdata,
    M08_AXI_rready,
    M08_AXI_rresp,
    M08_AXI_rvalid,
    M08_AXI_wdata,
    M08_AXI_wready,
    M08_AXI_wstrb,
    M08_AXI_wvalid,
    M09_ACLK,
    M09_ARESETN,
    M09_AXI_araddr,
    M09_AXI_arprot,
    M09_AXI_arready,
    M09_AXI_arvalid,
    M09_AXI_awaddr,
    M09_AXI_awprot,
    M09_AXI_awready,
    M09_AXI_awvalid,
    M09_AXI_bready,
    M09_AXI_bresp,
    M09_AXI_bvalid,
    M09_AXI_rdata,
    M09_AXI_rready,
    M09_AXI_rresp,
    M09_AXI_rvalid,
    M09_AXI_wdata,
    M09_AXI_wready,
    M09_AXI_wstrb,
    M09_AXI_wvalid,
    S00_ACLK,
    S00_ARESETN,
    S00_AXI_araddr,
    S00_AXI_arprot,
    S00_AXI_arready,
    S00_AXI_arvalid,
    S00_AXI_awaddr,
    S00_AXI_awprot,
    S00_AXI_awready,
    S00_AXI_awvalid,
    S00_AXI_bready,
    S00_AXI_bresp,
    S00_AXI_bvalid,
    S00_AXI_rdata,
    S00_AXI_rready,
    S00_AXI_rresp,
    S00_AXI_rvalid,
    S00_AXI_wdata,
    S00_AXI_wready,
    S00_AXI_wstrb,
    S00_AXI_wvalid);
  input ACLK;
  input ARESETN;
  input M00_ACLK;
  input M00_ARESETN;
  output [7:0]M00_AXI_araddr;
  output [2:0]M00_AXI_arprot;
  input M00_AXI_arready;
  output M00_AXI_arvalid;
  output [7:0]M00_AXI_awaddr;
  output [2:0]M00_AXI_awprot;
  input M00_AXI_awready;
  output M00_AXI_awvalid;
  output M00_AXI_bready;
  input [1:0]M00_AXI_bresp;
  input M00_AXI_bvalid;
  input [31:0]M00_AXI_rdata;
  output M00_AXI_rready;
  input [1:0]M00_AXI_rresp;
  input M00_AXI_rvalid;
  output [31:0]M00_AXI_wdata;
  input M00_AXI_wready;
  output [3:0]M00_AXI_wstrb;
  output M00_AXI_wvalid;
  input M01_ACLK;
  input M01_ARESETN;
  output [15:0]M01_AXI_araddr;
  input M01_AXI_arready;
  output M01_AXI_arvalid;
  output [15:0]M01_AXI_awaddr;
  input M01_AXI_awready;
  output M01_AXI_awvalid;
  output M01_AXI_bready;
  input [1:0]M01_AXI_bresp;
  input M01_AXI_bvalid;
  input [31:0]M01_AXI_rdata;
  output M01_AXI_rready;
  input [1:0]M01_AXI_rresp;
  input M01_AXI_rvalid;
  output [31:0]M01_AXI_wdata;
  input M01_AXI_wready;
  output [3:0]M01_AXI_wstrb;
  output M01_AXI_wvalid;
  input M02_ACLK;
  input M02_ARESETN;
  output [31:0]M02_AXI_araddr;
  input M02_AXI_arready;
  output M02_AXI_arvalid;
  output [31:0]M02_AXI_awaddr;
  input M02_AXI_awready;
  output M02_AXI_awvalid;
  output M02_AXI_bready;
  input [1:0]M02_AXI_bresp;
  input M02_AXI_bvalid;
  input [31:0]M02_AXI_rdata;
  output M02_AXI_rready;
  input [1:0]M02_AXI_rresp;
  input M02_AXI_rvalid;
  output [31:0]M02_AXI_wdata;
  input M02_AXI_wready;
  output [3:0]M02_AXI_wstrb;
  output M02_AXI_wvalid;
  input M03_ACLK;
  input M03_ARESETN;
  output [31:0]M03_AXI_araddr;
  input M03_AXI_arready;
  output M03_AXI_arvalid;
  output [31:0]M03_AXI_awaddr;
  input M03_AXI_awready;
  output M03_AXI_awvalid;
  output M03_AXI_bready;
  input [1:0]M03_AXI_bresp;
  input M03_AXI_bvalid;
  input [31:0]M03_AXI_rdata;
  output M03_AXI_rready;
  input [1:0]M03_AXI_rresp;
  input M03_AXI_rvalid;
  output [31:0]M03_AXI_wdata;
  input M03_AXI_wready;
  output M03_AXI_wvalid;
  input M04_ACLK;
  input M04_ARESETN;
  output [31:0]M04_AXI_araddr;
  input M04_AXI_arready;
  output M04_AXI_arvalid;
  output [31:0]M04_AXI_awaddr;
  input M04_AXI_awready;
  output M04_AXI_awvalid;
  output M04_AXI_bready;
  input [1:0]M04_AXI_bresp;
  input M04_AXI_bvalid;
  input [31:0]M04_AXI_rdata;
  output M04_AXI_rready;
  input [1:0]M04_AXI_rresp;
  input M04_AXI_rvalid;
  output [31:0]M04_AXI_wdata;
  input M04_AXI_wready;
  output M04_AXI_wvalid;
  input M05_ACLK;
  input M05_ARESETN;
  output [16:0]M05_AXI_araddr;
  output [2:0]M05_AXI_arprot;
  input M05_AXI_arready;
  output M05_AXI_arvalid;
  output [16:0]M05_AXI_awaddr;
  output [2:0]M05_AXI_awprot;
  input M05_AXI_awready;
  output M05_AXI_awvalid;
  output M05_AXI_bready;
  input [1:0]M05_AXI_bresp;
  input M05_AXI_bvalid;
  input [31:0]M05_AXI_rdata;
  output M05_AXI_rready;
  input [1:0]M05_AXI_rresp;
  input M05_AXI_rvalid;
  output [31:0]M05_AXI_wdata;
  input M05_AXI_wready;
  output [3:0]M05_AXI_wstrb;
  output M05_AXI_wvalid;
  input M06_ACLK;
  input M06_ARESETN;
  output [8:0]M06_AXI_araddr;
  input M06_AXI_arready;
  output M06_AXI_arvalid;
  output [8:0]M06_AXI_awaddr;
  input M06_AXI_awready;
  output M06_AXI_awvalid;
  output M06_AXI_bready;
  input [1:0]M06_AXI_bresp;
  input M06_AXI_bvalid;
  input [31:0]M06_AXI_rdata;
  output M06_AXI_rready;
  input [1:0]M06_AXI_rresp;
  input M06_AXI_rvalid;
  output [31:0]M06_AXI_wdata;
  input M06_AXI_wready;
  output [3:0]M06_AXI_wstrb;
  output M06_AXI_wvalid;
  input M07_ACLK;
  input M07_ARESETN;
  output [8:0]M07_AXI_araddr;
  input M07_AXI_arready;
  output M07_AXI_arvalid;
  output [8:0]M07_AXI_awaddr;
  input M07_AXI_awready;
  output M07_AXI_awvalid;
  output M07_AXI_bready;
  input [1:0]M07_AXI_bresp;
  input M07_AXI_bvalid;
  input [31:0]M07_AXI_rdata;
  output M07_AXI_rready;
  input [1:0]M07_AXI_rresp;
  input M07_AXI_rvalid;
  output [31:0]M07_AXI_wdata;
  input M07_AXI_wready;
  output [3:0]M07_AXI_wstrb;
  output M07_AXI_wvalid;
  input M08_ACLK;
  input M08_ARESETN;
  output [8:0]M08_AXI_araddr;
  input M08_AXI_arready;
  output M08_AXI_arvalid;
  output [8:0]M08_AXI_awaddr;
  input M08_AXI_awready;
  output M08_AXI_awvalid;
  output M08_AXI_bready;
  input [1:0]M08_AXI_bresp;
  input M08_AXI_bvalid;
  input [31:0]M08_AXI_rdata;
  output M08_AXI_rready;
  input [1:0]M08_AXI_rresp;
  input M08_AXI_rvalid;
  output [31:0]M08_AXI_wdata;
  input M08_AXI_wready;
  output [3:0]M08_AXI_wstrb;
  output M08_AXI_wvalid;
  input M09_ACLK;
  input M09_ARESETN;
  output [10:0]M09_AXI_araddr;
  output [2:0]M09_AXI_arprot;
  input M09_AXI_arready;
  output M09_AXI_arvalid;
  output [10:0]M09_AXI_awaddr;
  output [2:0]M09_AXI_awprot;
  input M09_AXI_awready;
  output M09_AXI_awvalid;
  output M09_AXI_bready;
  input [1:0]M09_AXI_bresp;
  input M09_AXI_bvalid;
  input [31:0]M09_AXI_rdata;
  output M09_AXI_rready;
  input [1:0]M09_AXI_rresp;
  input M09_AXI_rvalid;
  output [31:0]M09_AXI_wdata;
  input M09_AXI_wready;
  output [3:0]M09_AXI_wstrb;
  output M09_AXI_wvalid;
  input S00_ACLK;
  input S00_ARESETN;
  input [31:0]S00_AXI_araddr;
  input [2:0]S00_AXI_arprot;
  output S00_AXI_arready;
  input S00_AXI_arvalid;
  input [31:0]S00_AXI_awaddr;
  input [2:0]S00_AXI_awprot;
  output S00_AXI_awready;
  input S00_AXI_awvalid;
  input S00_AXI_bready;
  output [1:0]S00_AXI_bresp;
  output S00_AXI_bvalid;
  output [31:0]S00_AXI_rdata;
  input S00_AXI_rready;
  output [1:0]S00_AXI_rresp;
  output S00_AXI_rvalid;
  input [31:0]S00_AXI_wdata;
  output S00_AXI_wready;
  input [3:0]S00_AXI_wstrb;
  input S00_AXI_wvalid;

  wire M00_ACLK_1;
  wire M00_ARESETN_1;
  wire M01_ACLK_1;
  wire M01_ARESETN_1;
  wire M02_ACLK_1;
  wire M02_ARESETN_1;
  wire M03_ACLK_1;
  wire M03_ARESETN_1;
  wire M04_ACLK_1;
  wire M04_ARESETN_1;
  wire M05_ACLK_1;
  wire M05_ARESETN_1;
  wire M06_ACLK_1;
  wire M06_ARESETN_1;
  wire M07_ACLK_1;
  wire M07_ARESETN_1;
  wire M08_ACLK_1;
  wire M08_ARESETN_1;
  wire M09_ACLK_1;
  wire M09_ARESETN_1;
  wire S00_ACLK_1;
  wire S00_ARESETN_1;
  wire interconnect_axilite_ACLK_net;
  wire interconnect_axilite_ARESETN_net;
  wire [31:0]interconnect_axilite_to_s00_couplers_ARADDR;
  wire [2:0]interconnect_axilite_to_s00_couplers_ARPROT;
  wire interconnect_axilite_to_s00_couplers_ARREADY;
  wire interconnect_axilite_to_s00_couplers_ARVALID;
  wire [31:0]interconnect_axilite_to_s00_couplers_AWADDR;
  wire [2:0]interconnect_axilite_to_s00_couplers_AWPROT;
  wire interconnect_axilite_to_s00_couplers_AWREADY;
  wire interconnect_axilite_to_s00_couplers_AWVALID;
  wire interconnect_axilite_to_s00_couplers_BREADY;
  wire [1:0]interconnect_axilite_to_s00_couplers_BRESP;
  wire interconnect_axilite_to_s00_couplers_BVALID;
  wire [31:0]interconnect_axilite_to_s00_couplers_RDATA;
  wire interconnect_axilite_to_s00_couplers_RREADY;
  wire [1:0]interconnect_axilite_to_s00_couplers_RRESP;
  wire interconnect_axilite_to_s00_couplers_RVALID;
  wire [31:0]interconnect_axilite_to_s00_couplers_WDATA;
  wire interconnect_axilite_to_s00_couplers_WREADY;
  wire [3:0]interconnect_axilite_to_s00_couplers_WSTRB;
  wire interconnect_axilite_to_s00_couplers_WVALID;
  wire [7:0]m00_couplers_to_interconnect_axilite_ARADDR;
  wire [2:0]m00_couplers_to_interconnect_axilite_ARPROT;
  wire m00_couplers_to_interconnect_axilite_ARREADY;
  wire m00_couplers_to_interconnect_axilite_ARVALID;
  wire [7:0]m00_couplers_to_interconnect_axilite_AWADDR;
  wire [2:0]m00_couplers_to_interconnect_axilite_AWPROT;
  wire m00_couplers_to_interconnect_axilite_AWREADY;
  wire m00_couplers_to_interconnect_axilite_AWVALID;
  wire m00_couplers_to_interconnect_axilite_BREADY;
  wire [1:0]m00_couplers_to_interconnect_axilite_BRESP;
  wire m00_couplers_to_interconnect_axilite_BVALID;
  wire [31:0]m00_couplers_to_interconnect_axilite_RDATA;
  wire m00_couplers_to_interconnect_axilite_RREADY;
  wire [1:0]m00_couplers_to_interconnect_axilite_RRESP;
  wire m00_couplers_to_interconnect_axilite_RVALID;
  wire [31:0]m00_couplers_to_interconnect_axilite_WDATA;
  wire m00_couplers_to_interconnect_axilite_WREADY;
  wire [3:0]m00_couplers_to_interconnect_axilite_WSTRB;
  wire m00_couplers_to_interconnect_axilite_WVALID;
  wire [15:0]m01_couplers_to_interconnect_axilite_ARADDR;
  wire m01_couplers_to_interconnect_axilite_ARREADY;
  wire m01_couplers_to_interconnect_axilite_ARVALID;
  wire [15:0]m01_couplers_to_interconnect_axilite_AWADDR;
  wire m01_couplers_to_interconnect_axilite_AWREADY;
  wire m01_couplers_to_interconnect_axilite_AWVALID;
  wire m01_couplers_to_interconnect_axilite_BREADY;
  wire [1:0]m01_couplers_to_interconnect_axilite_BRESP;
  wire m01_couplers_to_interconnect_axilite_BVALID;
  wire [31:0]m01_couplers_to_interconnect_axilite_RDATA;
  wire m01_couplers_to_interconnect_axilite_RREADY;
  wire [1:0]m01_couplers_to_interconnect_axilite_RRESP;
  wire m01_couplers_to_interconnect_axilite_RVALID;
  wire [31:0]m01_couplers_to_interconnect_axilite_WDATA;
  wire m01_couplers_to_interconnect_axilite_WREADY;
  wire [3:0]m01_couplers_to_interconnect_axilite_WSTRB;
  wire m01_couplers_to_interconnect_axilite_WVALID;
  wire [31:0]m02_couplers_to_interconnect_axilite_ARADDR;
  wire m02_couplers_to_interconnect_axilite_ARREADY;
  wire m02_couplers_to_interconnect_axilite_ARVALID;
  wire [31:0]m02_couplers_to_interconnect_axilite_AWADDR;
  wire m02_couplers_to_interconnect_axilite_AWREADY;
  wire m02_couplers_to_interconnect_axilite_AWVALID;
  wire m02_couplers_to_interconnect_axilite_BREADY;
  wire [1:0]m02_couplers_to_interconnect_axilite_BRESP;
  wire m02_couplers_to_interconnect_axilite_BVALID;
  wire [31:0]m02_couplers_to_interconnect_axilite_RDATA;
  wire m02_couplers_to_interconnect_axilite_RREADY;
  wire [1:0]m02_couplers_to_interconnect_axilite_RRESP;
  wire m02_couplers_to_interconnect_axilite_RVALID;
  wire [31:0]m02_couplers_to_interconnect_axilite_WDATA;
  wire m02_couplers_to_interconnect_axilite_WREADY;
  wire [3:0]m02_couplers_to_interconnect_axilite_WSTRB;
  wire m02_couplers_to_interconnect_axilite_WVALID;
  wire [31:0]m03_couplers_to_interconnect_axilite_ARADDR;
  wire m03_couplers_to_interconnect_axilite_ARREADY;
  wire m03_couplers_to_interconnect_axilite_ARVALID;
  wire [31:0]m03_couplers_to_interconnect_axilite_AWADDR;
  wire m03_couplers_to_interconnect_axilite_AWREADY;
  wire m03_couplers_to_interconnect_axilite_AWVALID;
  wire m03_couplers_to_interconnect_axilite_BREADY;
  wire [1:0]m03_couplers_to_interconnect_axilite_BRESP;
  wire m03_couplers_to_interconnect_axilite_BVALID;
  wire [31:0]m03_couplers_to_interconnect_axilite_RDATA;
  wire m03_couplers_to_interconnect_axilite_RREADY;
  wire [1:0]m03_couplers_to_interconnect_axilite_RRESP;
  wire m03_couplers_to_interconnect_axilite_RVALID;
  wire [31:0]m03_couplers_to_interconnect_axilite_WDATA;
  wire m03_couplers_to_interconnect_axilite_WREADY;
  wire m03_couplers_to_interconnect_axilite_WVALID;
  wire [31:0]m04_couplers_to_interconnect_axilite_ARADDR;
  wire m04_couplers_to_interconnect_axilite_ARREADY;
  wire m04_couplers_to_interconnect_axilite_ARVALID;
  wire [31:0]m04_couplers_to_interconnect_axilite_AWADDR;
  wire m04_couplers_to_interconnect_axilite_AWREADY;
  wire m04_couplers_to_interconnect_axilite_AWVALID;
  wire m04_couplers_to_interconnect_axilite_BREADY;
  wire [1:0]m04_couplers_to_interconnect_axilite_BRESP;
  wire m04_couplers_to_interconnect_axilite_BVALID;
  wire [31:0]m04_couplers_to_interconnect_axilite_RDATA;
  wire m04_couplers_to_interconnect_axilite_RREADY;
  wire [1:0]m04_couplers_to_interconnect_axilite_RRESP;
  wire m04_couplers_to_interconnect_axilite_RVALID;
  wire [31:0]m04_couplers_to_interconnect_axilite_WDATA;
  wire m04_couplers_to_interconnect_axilite_WREADY;
  wire m04_couplers_to_interconnect_axilite_WVALID;
  wire [16:0]m05_couplers_to_interconnect_axilite_ARADDR;
  wire [2:0]m05_couplers_to_interconnect_axilite_ARPROT;
  wire m05_couplers_to_interconnect_axilite_ARREADY;
  wire m05_couplers_to_interconnect_axilite_ARVALID;
  wire [16:0]m05_couplers_to_interconnect_axilite_AWADDR;
  wire [2:0]m05_couplers_to_interconnect_axilite_AWPROT;
  wire m05_couplers_to_interconnect_axilite_AWREADY;
  wire m05_couplers_to_interconnect_axilite_AWVALID;
  wire m05_couplers_to_interconnect_axilite_BREADY;
  wire [1:0]m05_couplers_to_interconnect_axilite_BRESP;
  wire m05_couplers_to_interconnect_axilite_BVALID;
  wire [31:0]m05_couplers_to_interconnect_axilite_RDATA;
  wire m05_couplers_to_interconnect_axilite_RREADY;
  wire [1:0]m05_couplers_to_interconnect_axilite_RRESP;
  wire m05_couplers_to_interconnect_axilite_RVALID;
  wire [31:0]m05_couplers_to_interconnect_axilite_WDATA;
  wire m05_couplers_to_interconnect_axilite_WREADY;
  wire [3:0]m05_couplers_to_interconnect_axilite_WSTRB;
  wire m05_couplers_to_interconnect_axilite_WVALID;
  wire [8:0]m06_couplers_to_interconnect_axilite_ARADDR;
  wire m06_couplers_to_interconnect_axilite_ARREADY;
  wire m06_couplers_to_interconnect_axilite_ARVALID;
  wire [8:0]m06_couplers_to_interconnect_axilite_AWADDR;
  wire m06_couplers_to_interconnect_axilite_AWREADY;
  wire m06_couplers_to_interconnect_axilite_AWVALID;
  wire m06_couplers_to_interconnect_axilite_BREADY;
  wire [1:0]m06_couplers_to_interconnect_axilite_BRESP;
  wire m06_couplers_to_interconnect_axilite_BVALID;
  wire [31:0]m06_couplers_to_interconnect_axilite_RDATA;
  wire m06_couplers_to_interconnect_axilite_RREADY;
  wire [1:0]m06_couplers_to_interconnect_axilite_RRESP;
  wire m06_couplers_to_interconnect_axilite_RVALID;
  wire [31:0]m06_couplers_to_interconnect_axilite_WDATA;
  wire m06_couplers_to_interconnect_axilite_WREADY;
  wire [3:0]m06_couplers_to_interconnect_axilite_WSTRB;
  wire m06_couplers_to_interconnect_axilite_WVALID;
  wire [8:0]m07_couplers_to_interconnect_axilite_ARADDR;
  wire m07_couplers_to_interconnect_axilite_ARREADY;
  wire m07_couplers_to_interconnect_axilite_ARVALID;
  wire [8:0]m07_couplers_to_interconnect_axilite_AWADDR;
  wire m07_couplers_to_interconnect_axilite_AWREADY;
  wire m07_couplers_to_interconnect_axilite_AWVALID;
  wire m07_couplers_to_interconnect_axilite_BREADY;
  wire [1:0]m07_couplers_to_interconnect_axilite_BRESP;
  wire m07_couplers_to_interconnect_axilite_BVALID;
  wire [31:0]m07_couplers_to_interconnect_axilite_RDATA;
  wire m07_couplers_to_interconnect_axilite_RREADY;
  wire [1:0]m07_couplers_to_interconnect_axilite_RRESP;
  wire m07_couplers_to_interconnect_axilite_RVALID;
  wire [31:0]m07_couplers_to_interconnect_axilite_WDATA;
  wire m07_couplers_to_interconnect_axilite_WREADY;
  wire [3:0]m07_couplers_to_interconnect_axilite_WSTRB;
  wire m07_couplers_to_interconnect_axilite_WVALID;
  wire [8:0]m08_couplers_to_interconnect_axilite_ARADDR;
  wire m08_couplers_to_interconnect_axilite_ARREADY;
  wire m08_couplers_to_interconnect_axilite_ARVALID;
  wire [8:0]m08_couplers_to_interconnect_axilite_AWADDR;
  wire m08_couplers_to_interconnect_axilite_AWREADY;
  wire m08_couplers_to_interconnect_axilite_AWVALID;
  wire m08_couplers_to_interconnect_axilite_BREADY;
  wire [1:0]m08_couplers_to_interconnect_axilite_BRESP;
  wire m08_couplers_to_interconnect_axilite_BVALID;
  wire [31:0]m08_couplers_to_interconnect_axilite_RDATA;
  wire m08_couplers_to_interconnect_axilite_RREADY;
  wire [1:0]m08_couplers_to_interconnect_axilite_RRESP;
  wire m08_couplers_to_interconnect_axilite_RVALID;
  wire [31:0]m08_couplers_to_interconnect_axilite_WDATA;
  wire m08_couplers_to_interconnect_axilite_WREADY;
  wire [3:0]m08_couplers_to_interconnect_axilite_WSTRB;
  wire m08_couplers_to_interconnect_axilite_WVALID;
  wire [10:0]m09_couplers_to_interconnect_axilite_ARADDR;
  wire [2:0]m09_couplers_to_interconnect_axilite_ARPROT;
  wire m09_couplers_to_interconnect_axilite_ARREADY;
  wire m09_couplers_to_interconnect_axilite_ARVALID;
  wire [10:0]m09_couplers_to_interconnect_axilite_AWADDR;
  wire [2:0]m09_couplers_to_interconnect_axilite_AWPROT;
  wire m09_couplers_to_interconnect_axilite_AWREADY;
  wire m09_couplers_to_interconnect_axilite_AWVALID;
  wire m09_couplers_to_interconnect_axilite_BREADY;
  wire [1:0]m09_couplers_to_interconnect_axilite_BRESP;
  wire m09_couplers_to_interconnect_axilite_BVALID;
  wire [31:0]m09_couplers_to_interconnect_axilite_RDATA;
  wire m09_couplers_to_interconnect_axilite_RREADY;
  wire [1:0]m09_couplers_to_interconnect_axilite_RRESP;
  wire m09_couplers_to_interconnect_axilite_RVALID;
  wire [31:0]m09_couplers_to_interconnect_axilite_WDATA;
  wire m09_couplers_to_interconnect_axilite_WREADY;
  wire [3:0]m09_couplers_to_interconnect_axilite_WSTRB;
  wire m09_couplers_to_interconnect_axilite_WVALID;
  wire [31:0]s00_couplers_to_xbar_ARADDR;
  wire [2:0]s00_couplers_to_xbar_ARPROT;
  wire [0:0]s00_couplers_to_xbar_ARREADY;
  wire s00_couplers_to_xbar_ARVALID;
  wire [31:0]s00_couplers_to_xbar_AWADDR;
  wire [2:0]s00_couplers_to_xbar_AWPROT;
  wire [0:0]s00_couplers_to_xbar_AWREADY;
  wire s00_couplers_to_xbar_AWVALID;
  wire s00_couplers_to_xbar_BREADY;
  wire [1:0]s00_couplers_to_xbar_BRESP;
  wire [0:0]s00_couplers_to_xbar_BVALID;
  wire [31:0]s00_couplers_to_xbar_RDATA;
  wire s00_couplers_to_xbar_RREADY;
  wire [1:0]s00_couplers_to_xbar_RRESP;
  wire [0:0]s00_couplers_to_xbar_RVALID;
  wire [31:0]s00_couplers_to_xbar_WDATA;
  wire [0:0]s00_couplers_to_xbar_WREADY;
  wire [3:0]s00_couplers_to_xbar_WSTRB;
  wire s00_couplers_to_xbar_WVALID;
  wire [31:0]xbar_to_m00_couplers_ARADDR;
  wire [2:0]xbar_to_m00_couplers_ARPROT;
  wire xbar_to_m00_couplers_ARREADY;
  wire [0:0]xbar_to_m00_couplers_ARVALID;
  wire [31:0]xbar_to_m00_couplers_AWADDR;
  wire [2:0]xbar_to_m00_couplers_AWPROT;
  wire xbar_to_m00_couplers_AWREADY;
  wire [0:0]xbar_to_m00_couplers_AWVALID;
  wire [0:0]xbar_to_m00_couplers_BREADY;
  wire [1:0]xbar_to_m00_couplers_BRESP;
  wire xbar_to_m00_couplers_BVALID;
  wire [31:0]xbar_to_m00_couplers_RDATA;
  wire [0:0]xbar_to_m00_couplers_RREADY;
  wire [1:0]xbar_to_m00_couplers_RRESP;
  wire xbar_to_m00_couplers_RVALID;
  wire [31:0]xbar_to_m00_couplers_WDATA;
  wire xbar_to_m00_couplers_WREADY;
  wire [3:0]xbar_to_m00_couplers_WSTRB;
  wire [0:0]xbar_to_m00_couplers_WVALID;
  wire [63:32]xbar_to_m01_couplers_ARADDR;
  wire [5:3]xbar_to_m01_couplers_ARPROT;
  wire xbar_to_m01_couplers_ARREADY;
  wire [1:1]xbar_to_m01_couplers_ARVALID;
  wire [63:32]xbar_to_m01_couplers_AWADDR;
  wire [5:3]xbar_to_m01_couplers_AWPROT;
  wire xbar_to_m01_couplers_AWREADY;
  wire [1:1]xbar_to_m01_couplers_AWVALID;
  wire [1:1]xbar_to_m01_couplers_BREADY;
  wire [1:0]xbar_to_m01_couplers_BRESP;
  wire xbar_to_m01_couplers_BVALID;
  wire [31:0]xbar_to_m01_couplers_RDATA;
  wire [1:1]xbar_to_m01_couplers_RREADY;
  wire [1:0]xbar_to_m01_couplers_RRESP;
  wire xbar_to_m01_couplers_RVALID;
  wire [63:32]xbar_to_m01_couplers_WDATA;
  wire xbar_to_m01_couplers_WREADY;
  wire [7:4]xbar_to_m01_couplers_WSTRB;
  wire [1:1]xbar_to_m01_couplers_WVALID;
  wire [95:64]xbar_to_m02_couplers_ARADDR;
  wire [8:6]xbar_to_m02_couplers_ARPROT;
  wire xbar_to_m02_couplers_ARREADY;
  wire [2:2]xbar_to_m02_couplers_ARVALID;
  wire [95:64]xbar_to_m02_couplers_AWADDR;
  wire [8:6]xbar_to_m02_couplers_AWPROT;
  wire xbar_to_m02_couplers_AWREADY;
  wire [2:2]xbar_to_m02_couplers_AWVALID;
  wire [2:2]xbar_to_m02_couplers_BREADY;
  wire [1:0]xbar_to_m02_couplers_BRESP;
  wire xbar_to_m02_couplers_BVALID;
  wire [31:0]xbar_to_m02_couplers_RDATA;
  wire [2:2]xbar_to_m02_couplers_RREADY;
  wire [1:0]xbar_to_m02_couplers_RRESP;
  wire xbar_to_m02_couplers_RVALID;
  wire [95:64]xbar_to_m02_couplers_WDATA;
  wire xbar_to_m02_couplers_WREADY;
  wire [11:8]xbar_to_m02_couplers_WSTRB;
  wire [2:2]xbar_to_m02_couplers_WVALID;
  wire [127:96]xbar_to_m03_couplers_ARADDR;
  wire [11:9]xbar_to_m03_couplers_ARPROT;
  wire xbar_to_m03_couplers_ARREADY;
  wire [3:3]xbar_to_m03_couplers_ARVALID;
  wire [127:96]xbar_to_m03_couplers_AWADDR;
  wire [11:9]xbar_to_m03_couplers_AWPROT;
  wire xbar_to_m03_couplers_AWREADY;
  wire [3:3]xbar_to_m03_couplers_AWVALID;
  wire [3:3]xbar_to_m03_couplers_BREADY;
  wire [1:0]xbar_to_m03_couplers_BRESP;
  wire xbar_to_m03_couplers_BVALID;
  wire [31:0]xbar_to_m03_couplers_RDATA;
  wire [3:3]xbar_to_m03_couplers_RREADY;
  wire [1:0]xbar_to_m03_couplers_RRESP;
  wire xbar_to_m03_couplers_RVALID;
  wire [127:96]xbar_to_m03_couplers_WDATA;
  wire xbar_to_m03_couplers_WREADY;
  wire [15:12]xbar_to_m03_couplers_WSTRB;
  wire [3:3]xbar_to_m03_couplers_WVALID;
  wire [159:128]xbar_to_m04_couplers_ARADDR;
  wire [14:12]xbar_to_m04_couplers_ARPROT;
  wire xbar_to_m04_couplers_ARREADY;
  wire [4:4]xbar_to_m04_couplers_ARVALID;
  wire [159:128]xbar_to_m04_couplers_AWADDR;
  wire [14:12]xbar_to_m04_couplers_AWPROT;
  wire xbar_to_m04_couplers_AWREADY;
  wire [4:4]xbar_to_m04_couplers_AWVALID;
  wire [4:4]xbar_to_m04_couplers_BREADY;
  wire [1:0]xbar_to_m04_couplers_BRESP;
  wire xbar_to_m04_couplers_BVALID;
  wire [31:0]xbar_to_m04_couplers_RDATA;
  wire [4:4]xbar_to_m04_couplers_RREADY;
  wire [1:0]xbar_to_m04_couplers_RRESP;
  wire xbar_to_m04_couplers_RVALID;
  wire [159:128]xbar_to_m04_couplers_WDATA;
  wire xbar_to_m04_couplers_WREADY;
  wire [19:16]xbar_to_m04_couplers_WSTRB;
  wire [4:4]xbar_to_m04_couplers_WVALID;
  wire [191:160]xbar_to_m05_couplers_ARADDR;
  wire [17:15]xbar_to_m05_couplers_ARPROT;
  wire xbar_to_m05_couplers_ARREADY;
  wire [5:5]xbar_to_m05_couplers_ARVALID;
  wire [191:160]xbar_to_m05_couplers_AWADDR;
  wire [17:15]xbar_to_m05_couplers_AWPROT;
  wire xbar_to_m05_couplers_AWREADY;
  wire [5:5]xbar_to_m05_couplers_AWVALID;
  wire [5:5]xbar_to_m05_couplers_BREADY;
  wire [1:0]xbar_to_m05_couplers_BRESP;
  wire xbar_to_m05_couplers_BVALID;
  wire [31:0]xbar_to_m05_couplers_RDATA;
  wire [5:5]xbar_to_m05_couplers_RREADY;
  wire [1:0]xbar_to_m05_couplers_RRESP;
  wire xbar_to_m05_couplers_RVALID;
  wire [191:160]xbar_to_m05_couplers_WDATA;
  wire xbar_to_m05_couplers_WREADY;
  wire [23:20]xbar_to_m05_couplers_WSTRB;
  wire [5:5]xbar_to_m05_couplers_WVALID;
  wire [223:192]xbar_to_m06_couplers_ARADDR;
  wire [20:18]xbar_to_m06_couplers_ARPROT;
  wire xbar_to_m06_couplers_ARREADY;
  wire [6:6]xbar_to_m06_couplers_ARVALID;
  wire [223:192]xbar_to_m06_couplers_AWADDR;
  wire [20:18]xbar_to_m06_couplers_AWPROT;
  wire xbar_to_m06_couplers_AWREADY;
  wire [6:6]xbar_to_m06_couplers_AWVALID;
  wire [6:6]xbar_to_m06_couplers_BREADY;
  wire [1:0]xbar_to_m06_couplers_BRESP;
  wire xbar_to_m06_couplers_BVALID;
  wire [31:0]xbar_to_m06_couplers_RDATA;
  wire [6:6]xbar_to_m06_couplers_RREADY;
  wire [1:0]xbar_to_m06_couplers_RRESP;
  wire xbar_to_m06_couplers_RVALID;
  wire [223:192]xbar_to_m06_couplers_WDATA;
  wire xbar_to_m06_couplers_WREADY;
  wire [27:24]xbar_to_m06_couplers_WSTRB;
  wire [6:6]xbar_to_m06_couplers_WVALID;
  wire [255:224]xbar_to_m07_couplers_ARADDR;
  wire [23:21]xbar_to_m07_couplers_ARPROT;
  wire xbar_to_m07_couplers_ARREADY;
  wire [7:7]xbar_to_m07_couplers_ARVALID;
  wire [255:224]xbar_to_m07_couplers_AWADDR;
  wire [23:21]xbar_to_m07_couplers_AWPROT;
  wire xbar_to_m07_couplers_AWREADY;
  wire [7:7]xbar_to_m07_couplers_AWVALID;
  wire [7:7]xbar_to_m07_couplers_BREADY;
  wire [1:0]xbar_to_m07_couplers_BRESP;
  wire xbar_to_m07_couplers_BVALID;
  wire [31:0]xbar_to_m07_couplers_RDATA;
  wire [7:7]xbar_to_m07_couplers_RREADY;
  wire [1:0]xbar_to_m07_couplers_RRESP;
  wire xbar_to_m07_couplers_RVALID;
  wire [255:224]xbar_to_m07_couplers_WDATA;
  wire xbar_to_m07_couplers_WREADY;
  wire [31:28]xbar_to_m07_couplers_WSTRB;
  wire [7:7]xbar_to_m07_couplers_WVALID;
  wire [287:256]xbar_to_m08_couplers_ARADDR;
  wire [26:24]xbar_to_m08_couplers_ARPROT;
  wire xbar_to_m08_couplers_ARREADY;
  wire [8:8]xbar_to_m08_couplers_ARVALID;
  wire [287:256]xbar_to_m08_couplers_AWADDR;
  wire [26:24]xbar_to_m08_couplers_AWPROT;
  wire xbar_to_m08_couplers_AWREADY;
  wire [8:8]xbar_to_m08_couplers_AWVALID;
  wire [8:8]xbar_to_m08_couplers_BREADY;
  wire [1:0]xbar_to_m08_couplers_BRESP;
  wire xbar_to_m08_couplers_BVALID;
  wire [31:0]xbar_to_m08_couplers_RDATA;
  wire [8:8]xbar_to_m08_couplers_RREADY;
  wire [1:0]xbar_to_m08_couplers_RRESP;
  wire xbar_to_m08_couplers_RVALID;
  wire [287:256]xbar_to_m08_couplers_WDATA;
  wire xbar_to_m08_couplers_WREADY;
  wire [35:32]xbar_to_m08_couplers_WSTRB;
  wire [8:8]xbar_to_m08_couplers_WVALID;
  wire [319:288]xbar_to_m09_couplers_ARADDR;
  wire [29:27]xbar_to_m09_couplers_ARPROT;
  wire xbar_to_m09_couplers_ARREADY;
  wire [9:9]xbar_to_m09_couplers_ARVALID;
  wire [319:288]xbar_to_m09_couplers_AWADDR;
  wire [29:27]xbar_to_m09_couplers_AWPROT;
  wire xbar_to_m09_couplers_AWREADY;
  wire [9:9]xbar_to_m09_couplers_AWVALID;
  wire [9:9]xbar_to_m09_couplers_BREADY;
  wire [1:0]xbar_to_m09_couplers_BRESP;
  wire xbar_to_m09_couplers_BVALID;
  wire [31:0]xbar_to_m09_couplers_RDATA;
  wire [9:9]xbar_to_m09_couplers_RREADY;
  wire [1:0]xbar_to_m09_couplers_RRESP;
  wire xbar_to_m09_couplers_RVALID;
  wire [319:288]xbar_to_m09_couplers_WDATA;
  wire xbar_to_m09_couplers_WREADY;
  wire [39:36]xbar_to_m09_couplers_WSTRB;
  wire [9:9]xbar_to_m09_couplers_WVALID;

  assign M00_ACLK_1 = M00_ACLK;
  assign M00_ARESETN_1 = M00_ARESETN;
  assign M00_AXI_araddr[7:0] = m00_couplers_to_interconnect_axilite_ARADDR;
  assign M00_AXI_arprot[2:0] = m00_couplers_to_interconnect_axilite_ARPROT;
  assign M00_AXI_arvalid = m00_couplers_to_interconnect_axilite_ARVALID;
  assign M00_AXI_awaddr[7:0] = m00_couplers_to_interconnect_axilite_AWADDR;
  assign M00_AXI_awprot[2:0] = m00_couplers_to_interconnect_axilite_AWPROT;
  assign M00_AXI_awvalid = m00_couplers_to_interconnect_axilite_AWVALID;
  assign M00_AXI_bready = m00_couplers_to_interconnect_axilite_BREADY;
  assign M00_AXI_rready = m00_couplers_to_interconnect_axilite_RREADY;
  assign M00_AXI_wdata[31:0] = m00_couplers_to_interconnect_axilite_WDATA;
  assign M00_AXI_wstrb[3:0] = m00_couplers_to_interconnect_axilite_WSTRB;
  assign M00_AXI_wvalid = m00_couplers_to_interconnect_axilite_WVALID;
  assign M01_ACLK_1 = M01_ACLK;
  assign M01_ARESETN_1 = M01_ARESETN;
  assign M01_AXI_araddr[15:0] = m01_couplers_to_interconnect_axilite_ARADDR;
  assign M01_AXI_arvalid = m01_couplers_to_interconnect_axilite_ARVALID;
  assign M01_AXI_awaddr[15:0] = m01_couplers_to_interconnect_axilite_AWADDR;
  assign M01_AXI_awvalid = m01_couplers_to_interconnect_axilite_AWVALID;
  assign M01_AXI_bready = m01_couplers_to_interconnect_axilite_BREADY;
  assign M01_AXI_rready = m01_couplers_to_interconnect_axilite_RREADY;
  assign M01_AXI_wdata[31:0] = m01_couplers_to_interconnect_axilite_WDATA;
  assign M01_AXI_wstrb[3:0] = m01_couplers_to_interconnect_axilite_WSTRB;
  assign M01_AXI_wvalid = m01_couplers_to_interconnect_axilite_WVALID;
  assign M02_ACLK_1 = M02_ACLK;
  assign M02_ARESETN_1 = M02_ARESETN;
  assign M02_AXI_araddr[31:0] = m02_couplers_to_interconnect_axilite_ARADDR;
  assign M02_AXI_arvalid = m02_couplers_to_interconnect_axilite_ARVALID;
  assign M02_AXI_awaddr[31:0] = m02_couplers_to_interconnect_axilite_AWADDR;
  assign M02_AXI_awvalid = m02_couplers_to_interconnect_axilite_AWVALID;
  assign M02_AXI_bready = m02_couplers_to_interconnect_axilite_BREADY;
  assign M02_AXI_rready = m02_couplers_to_interconnect_axilite_RREADY;
  assign M02_AXI_wdata[31:0] = m02_couplers_to_interconnect_axilite_WDATA;
  assign M02_AXI_wstrb[3:0] = m02_couplers_to_interconnect_axilite_WSTRB;
  assign M02_AXI_wvalid = m02_couplers_to_interconnect_axilite_WVALID;
  assign M03_ACLK_1 = M03_ACLK;
  assign M03_ARESETN_1 = M03_ARESETN;
  assign M03_AXI_araddr[31:0] = m03_couplers_to_interconnect_axilite_ARADDR;
  assign M03_AXI_arvalid = m03_couplers_to_interconnect_axilite_ARVALID;
  assign M03_AXI_awaddr[31:0] = m03_couplers_to_interconnect_axilite_AWADDR;
  assign M03_AXI_awvalid = m03_couplers_to_interconnect_axilite_AWVALID;
  assign M03_AXI_bready = m03_couplers_to_interconnect_axilite_BREADY;
  assign M03_AXI_rready = m03_couplers_to_interconnect_axilite_RREADY;
  assign M03_AXI_wdata[31:0] = m03_couplers_to_interconnect_axilite_WDATA;
  assign M03_AXI_wvalid = m03_couplers_to_interconnect_axilite_WVALID;
  assign M04_ACLK_1 = M04_ACLK;
  assign M04_ARESETN_1 = M04_ARESETN;
  assign M04_AXI_araddr[31:0] = m04_couplers_to_interconnect_axilite_ARADDR;
  assign M04_AXI_arvalid = m04_couplers_to_interconnect_axilite_ARVALID;
  assign M04_AXI_awaddr[31:0] = m04_couplers_to_interconnect_axilite_AWADDR;
  assign M04_AXI_awvalid = m04_couplers_to_interconnect_axilite_AWVALID;
  assign M04_AXI_bready = m04_couplers_to_interconnect_axilite_BREADY;
  assign M04_AXI_rready = m04_couplers_to_interconnect_axilite_RREADY;
  assign M04_AXI_wdata[31:0] = m04_couplers_to_interconnect_axilite_WDATA;
  assign M04_AXI_wvalid = m04_couplers_to_interconnect_axilite_WVALID;
  assign M05_ACLK_1 = M05_ACLK;
  assign M05_ARESETN_1 = M05_ARESETN;
  assign M05_AXI_araddr[16:0] = m05_couplers_to_interconnect_axilite_ARADDR;
  assign M05_AXI_arprot[2:0] = m05_couplers_to_interconnect_axilite_ARPROT;
  assign M05_AXI_arvalid = m05_couplers_to_interconnect_axilite_ARVALID;
  assign M05_AXI_awaddr[16:0] = m05_couplers_to_interconnect_axilite_AWADDR;
  assign M05_AXI_awprot[2:0] = m05_couplers_to_interconnect_axilite_AWPROT;
  assign M05_AXI_awvalid = m05_couplers_to_interconnect_axilite_AWVALID;
  assign M05_AXI_bready = m05_couplers_to_interconnect_axilite_BREADY;
  assign M05_AXI_rready = m05_couplers_to_interconnect_axilite_RREADY;
  assign M05_AXI_wdata[31:0] = m05_couplers_to_interconnect_axilite_WDATA;
  assign M05_AXI_wstrb[3:0] = m05_couplers_to_interconnect_axilite_WSTRB;
  assign M05_AXI_wvalid = m05_couplers_to_interconnect_axilite_WVALID;
  assign M06_ACLK_1 = M06_ACLK;
  assign M06_ARESETN_1 = M06_ARESETN;
  assign M06_AXI_araddr[8:0] = m06_couplers_to_interconnect_axilite_ARADDR;
  assign M06_AXI_arvalid = m06_couplers_to_interconnect_axilite_ARVALID;
  assign M06_AXI_awaddr[8:0] = m06_couplers_to_interconnect_axilite_AWADDR;
  assign M06_AXI_awvalid = m06_couplers_to_interconnect_axilite_AWVALID;
  assign M06_AXI_bready = m06_couplers_to_interconnect_axilite_BREADY;
  assign M06_AXI_rready = m06_couplers_to_interconnect_axilite_RREADY;
  assign M06_AXI_wdata[31:0] = m06_couplers_to_interconnect_axilite_WDATA;
  assign M06_AXI_wstrb[3:0] = m06_couplers_to_interconnect_axilite_WSTRB;
  assign M06_AXI_wvalid = m06_couplers_to_interconnect_axilite_WVALID;
  assign M07_ACLK_1 = M07_ACLK;
  assign M07_ARESETN_1 = M07_ARESETN;
  assign M07_AXI_araddr[8:0] = m07_couplers_to_interconnect_axilite_ARADDR;
  assign M07_AXI_arvalid = m07_couplers_to_interconnect_axilite_ARVALID;
  assign M07_AXI_awaddr[8:0] = m07_couplers_to_interconnect_axilite_AWADDR;
  assign M07_AXI_awvalid = m07_couplers_to_interconnect_axilite_AWVALID;
  assign M07_AXI_bready = m07_couplers_to_interconnect_axilite_BREADY;
  assign M07_AXI_rready = m07_couplers_to_interconnect_axilite_RREADY;
  assign M07_AXI_wdata[31:0] = m07_couplers_to_interconnect_axilite_WDATA;
  assign M07_AXI_wstrb[3:0] = m07_couplers_to_interconnect_axilite_WSTRB;
  assign M07_AXI_wvalid = m07_couplers_to_interconnect_axilite_WVALID;
  assign M08_ACLK_1 = M08_ACLK;
  assign M08_ARESETN_1 = M08_ARESETN;
  assign M08_AXI_araddr[8:0] = m08_couplers_to_interconnect_axilite_ARADDR;
  assign M08_AXI_arvalid = m08_couplers_to_interconnect_axilite_ARVALID;
  assign M08_AXI_awaddr[8:0] = m08_couplers_to_interconnect_axilite_AWADDR;
  assign M08_AXI_awvalid = m08_couplers_to_interconnect_axilite_AWVALID;
  assign M08_AXI_bready = m08_couplers_to_interconnect_axilite_BREADY;
  assign M08_AXI_rready = m08_couplers_to_interconnect_axilite_RREADY;
  assign M08_AXI_wdata[31:0] = m08_couplers_to_interconnect_axilite_WDATA;
  assign M08_AXI_wstrb[3:0] = m08_couplers_to_interconnect_axilite_WSTRB;
  assign M08_AXI_wvalid = m08_couplers_to_interconnect_axilite_WVALID;
  assign M09_ACLK_1 = M09_ACLK;
  assign M09_ARESETN_1 = M09_ARESETN;
  assign M09_AXI_araddr[10:0] = m09_couplers_to_interconnect_axilite_ARADDR;
  assign M09_AXI_arprot[2:0] = m09_couplers_to_interconnect_axilite_ARPROT;
  assign M09_AXI_arvalid = m09_couplers_to_interconnect_axilite_ARVALID;
  assign M09_AXI_awaddr[10:0] = m09_couplers_to_interconnect_axilite_AWADDR;
  assign M09_AXI_awprot[2:0] = m09_couplers_to_interconnect_axilite_AWPROT;
  assign M09_AXI_awvalid = m09_couplers_to_interconnect_axilite_AWVALID;
  assign M09_AXI_bready = m09_couplers_to_interconnect_axilite_BREADY;
  assign M09_AXI_rready = m09_couplers_to_interconnect_axilite_RREADY;
  assign M09_AXI_wdata[31:0] = m09_couplers_to_interconnect_axilite_WDATA;
  assign M09_AXI_wstrb[3:0] = m09_couplers_to_interconnect_axilite_WSTRB;
  assign M09_AXI_wvalid = m09_couplers_to_interconnect_axilite_WVALID;
  assign S00_ACLK_1 = S00_ACLK;
  assign S00_ARESETN_1 = S00_ARESETN;
  assign S00_AXI_arready = interconnect_axilite_to_s00_couplers_ARREADY;
  assign S00_AXI_awready = interconnect_axilite_to_s00_couplers_AWREADY;
  assign S00_AXI_bresp[1:0] = interconnect_axilite_to_s00_couplers_BRESP;
  assign S00_AXI_bvalid = interconnect_axilite_to_s00_couplers_BVALID;
  assign S00_AXI_rdata[31:0] = interconnect_axilite_to_s00_couplers_RDATA;
  assign S00_AXI_rresp[1:0] = interconnect_axilite_to_s00_couplers_RRESP;
  assign S00_AXI_rvalid = interconnect_axilite_to_s00_couplers_RVALID;
  assign S00_AXI_wready = interconnect_axilite_to_s00_couplers_WREADY;
  assign interconnect_axilite_ACLK_net = ACLK;
  assign interconnect_axilite_ARESETN_net = ARESETN;
  assign interconnect_axilite_to_s00_couplers_ARADDR = S00_AXI_araddr[31:0];
  assign interconnect_axilite_to_s00_couplers_ARPROT = S00_AXI_arprot[2:0];
  assign interconnect_axilite_to_s00_couplers_ARVALID = S00_AXI_arvalid;
  assign interconnect_axilite_to_s00_couplers_AWADDR = S00_AXI_awaddr[31:0];
  assign interconnect_axilite_to_s00_couplers_AWPROT = S00_AXI_awprot[2:0];
  assign interconnect_axilite_to_s00_couplers_AWVALID = S00_AXI_awvalid;
  assign interconnect_axilite_to_s00_couplers_BREADY = S00_AXI_bready;
  assign interconnect_axilite_to_s00_couplers_RREADY = S00_AXI_rready;
  assign interconnect_axilite_to_s00_couplers_WDATA = S00_AXI_wdata[31:0];
  assign interconnect_axilite_to_s00_couplers_WSTRB = S00_AXI_wstrb[3:0];
  assign interconnect_axilite_to_s00_couplers_WVALID = S00_AXI_wvalid;
  assign m00_couplers_to_interconnect_axilite_ARREADY = M00_AXI_arready;
  assign m00_couplers_to_interconnect_axilite_AWREADY = M00_AXI_awready;
  assign m00_couplers_to_interconnect_axilite_BRESP = M00_AXI_bresp[1:0];
  assign m00_couplers_to_interconnect_axilite_BVALID = M00_AXI_bvalid;
  assign m00_couplers_to_interconnect_axilite_RDATA = M00_AXI_rdata[31:0];
  assign m00_couplers_to_interconnect_axilite_RRESP = M00_AXI_rresp[1:0];
  assign m00_couplers_to_interconnect_axilite_RVALID = M00_AXI_rvalid;
  assign m00_couplers_to_interconnect_axilite_WREADY = M00_AXI_wready;
  assign m01_couplers_to_interconnect_axilite_ARREADY = M01_AXI_arready;
  assign m01_couplers_to_interconnect_axilite_AWREADY = M01_AXI_awready;
  assign m01_couplers_to_interconnect_axilite_BRESP = M01_AXI_bresp[1:0];
  assign m01_couplers_to_interconnect_axilite_BVALID = M01_AXI_bvalid;
  assign m01_couplers_to_interconnect_axilite_RDATA = M01_AXI_rdata[31:0];
  assign m01_couplers_to_interconnect_axilite_RRESP = M01_AXI_rresp[1:0];
  assign m01_couplers_to_interconnect_axilite_RVALID = M01_AXI_rvalid;
  assign m01_couplers_to_interconnect_axilite_WREADY = M01_AXI_wready;
  assign m02_couplers_to_interconnect_axilite_ARREADY = M02_AXI_arready;
  assign m02_couplers_to_interconnect_axilite_AWREADY = M02_AXI_awready;
  assign m02_couplers_to_interconnect_axilite_BRESP = M02_AXI_bresp[1:0];
  assign m02_couplers_to_interconnect_axilite_BVALID = M02_AXI_bvalid;
  assign m02_couplers_to_interconnect_axilite_RDATA = M02_AXI_rdata[31:0];
  assign m02_couplers_to_interconnect_axilite_RRESP = M02_AXI_rresp[1:0];
  assign m02_couplers_to_interconnect_axilite_RVALID = M02_AXI_rvalid;
  assign m02_couplers_to_interconnect_axilite_WREADY = M02_AXI_wready;
  assign m03_couplers_to_interconnect_axilite_ARREADY = M03_AXI_arready;
  assign m03_couplers_to_interconnect_axilite_AWREADY = M03_AXI_awready;
  assign m03_couplers_to_interconnect_axilite_BRESP = M03_AXI_bresp[1:0];
  assign m03_couplers_to_interconnect_axilite_BVALID = M03_AXI_bvalid;
  assign m03_couplers_to_interconnect_axilite_RDATA = M03_AXI_rdata[31:0];
  assign m03_couplers_to_interconnect_axilite_RRESP = M03_AXI_rresp[1:0];
  assign m03_couplers_to_interconnect_axilite_RVALID = M03_AXI_rvalid;
  assign m03_couplers_to_interconnect_axilite_WREADY = M03_AXI_wready;
  assign m04_couplers_to_interconnect_axilite_ARREADY = M04_AXI_arready;
  assign m04_couplers_to_interconnect_axilite_AWREADY = M04_AXI_awready;
  assign m04_couplers_to_interconnect_axilite_BRESP = M04_AXI_bresp[1:0];
  assign m04_couplers_to_interconnect_axilite_BVALID = M04_AXI_bvalid;
  assign m04_couplers_to_interconnect_axilite_RDATA = M04_AXI_rdata[31:0];
  assign m04_couplers_to_interconnect_axilite_RRESP = M04_AXI_rresp[1:0];
  assign m04_couplers_to_interconnect_axilite_RVALID = M04_AXI_rvalid;
  assign m04_couplers_to_interconnect_axilite_WREADY = M04_AXI_wready;
  assign m05_couplers_to_interconnect_axilite_ARREADY = M05_AXI_arready;
  assign m05_couplers_to_interconnect_axilite_AWREADY = M05_AXI_awready;
  assign m05_couplers_to_interconnect_axilite_BRESP = M05_AXI_bresp[1:0];
  assign m05_couplers_to_interconnect_axilite_BVALID = M05_AXI_bvalid;
  assign m05_couplers_to_interconnect_axilite_RDATA = M05_AXI_rdata[31:0];
  assign m05_couplers_to_interconnect_axilite_RRESP = M05_AXI_rresp[1:0];
  assign m05_couplers_to_interconnect_axilite_RVALID = M05_AXI_rvalid;
  assign m05_couplers_to_interconnect_axilite_WREADY = M05_AXI_wready;
  assign m06_couplers_to_interconnect_axilite_ARREADY = M06_AXI_arready;
  assign m06_couplers_to_interconnect_axilite_AWREADY = M06_AXI_awready;
  assign m06_couplers_to_interconnect_axilite_BRESP = M06_AXI_bresp[1:0];
  assign m06_couplers_to_interconnect_axilite_BVALID = M06_AXI_bvalid;
  assign m06_couplers_to_interconnect_axilite_RDATA = M06_AXI_rdata[31:0];
  assign m06_couplers_to_interconnect_axilite_RRESP = M06_AXI_rresp[1:0];
  assign m06_couplers_to_interconnect_axilite_RVALID = M06_AXI_rvalid;
  assign m06_couplers_to_interconnect_axilite_WREADY = M06_AXI_wready;
  assign m07_couplers_to_interconnect_axilite_ARREADY = M07_AXI_arready;
  assign m07_couplers_to_interconnect_axilite_AWREADY = M07_AXI_awready;
  assign m07_couplers_to_interconnect_axilite_BRESP = M07_AXI_bresp[1:0];
  assign m07_couplers_to_interconnect_axilite_BVALID = M07_AXI_bvalid;
  assign m07_couplers_to_interconnect_axilite_RDATA = M07_AXI_rdata[31:0];
  assign m07_couplers_to_interconnect_axilite_RRESP = M07_AXI_rresp[1:0];
  assign m07_couplers_to_interconnect_axilite_RVALID = M07_AXI_rvalid;
  assign m07_couplers_to_interconnect_axilite_WREADY = M07_AXI_wready;
  assign m08_couplers_to_interconnect_axilite_ARREADY = M08_AXI_arready;
  assign m08_couplers_to_interconnect_axilite_AWREADY = M08_AXI_awready;
  assign m08_couplers_to_interconnect_axilite_BRESP = M08_AXI_bresp[1:0];
  assign m08_couplers_to_interconnect_axilite_BVALID = M08_AXI_bvalid;
  assign m08_couplers_to_interconnect_axilite_RDATA = M08_AXI_rdata[31:0];
  assign m08_couplers_to_interconnect_axilite_RRESP = M08_AXI_rresp[1:0];
  assign m08_couplers_to_interconnect_axilite_RVALID = M08_AXI_rvalid;
  assign m08_couplers_to_interconnect_axilite_WREADY = M08_AXI_wready;
  assign m09_couplers_to_interconnect_axilite_ARREADY = M09_AXI_arready;
  assign m09_couplers_to_interconnect_axilite_AWREADY = M09_AXI_awready;
  assign m09_couplers_to_interconnect_axilite_BRESP = M09_AXI_bresp[1:0];
  assign m09_couplers_to_interconnect_axilite_BVALID = M09_AXI_bvalid;
  assign m09_couplers_to_interconnect_axilite_RDATA = M09_AXI_rdata[31:0];
  assign m09_couplers_to_interconnect_axilite_RRESP = M09_AXI_rresp[1:0];
  assign m09_couplers_to_interconnect_axilite_RVALID = M09_AXI_rvalid;
  assign m09_couplers_to_interconnect_axilite_WREADY = M09_AXI_wready;
  m00_couplers_imp_1T8JY77 m00_couplers
       (.M_ACLK(M00_ACLK_1),
        .M_ARESETN(M00_ARESETN_1),
        .M_AXI_araddr(m00_couplers_to_interconnect_axilite_ARADDR),
        .M_AXI_arprot(m00_couplers_to_interconnect_axilite_ARPROT),
        .M_AXI_arready(m00_couplers_to_interconnect_axilite_ARREADY),
        .M_AXI_arvalid(m00_couplers_to_interconnect_axilite_ARVALID),
        .M_AXI_awaddr(m00_couplers_to_interconnect_axilite_AWADDR),
        .M_AXI_awprot(m00_couplers_to_interconnect_axilite_AWPROT),
        .M_AXI_awready(m00_couplers_to_interconnect_axilite_AWREADY),
        .M_AXI_awvalid(m00_couplers_to_interconnect_axilite_AWVALID),
        .M_AXI_bready(m00_couplers_to_interconnect_axilite_BREADY),
        .M_AXI_bresp(m00_couplers_to_interconnect_axilite_BRESP),
        .M_AXI_bvalid(m00_couplers_to_interconnect_axilite_BVALID),
        .M_AXI_rdata(m00_couplers_to_interconnect_axilite_RDATA),
        .M_AXI_rready(m00_couplers_to_interconnect_axilite_RREADY),
        .M_AXI_rresp(m00_couplers_to_interconnect_axilite_RRESP),
        .M_AXI_rvalid(m00_couplers_to_interconnect_axilite_RVALID),
        .M_AXI_wdata(m00_couplers_to_interconnect_axilite_WDATA),
        .M_AXI_wready(m00_couplers_to_interconnect_axilite_WREADY),
        .M_AXI_wstrb(m00_couplers_to_interconnect_axilite_WSTRB),
        .M_AXI_wvalid(m00_couplers_to_interconnect_axilite_WVALID),
        .S_ACLK(interconnect_axilite_ACLK_net),
        .S_ARESETN(interconnect_axilite_ARESETN_net),
        .S_AXI_araddr(xbar_to_m00_couplers_ARADDR),
        .S_AXI_arprot(xbar_to_m00_couplers_ARPROT),
        .S_AXI_arready(xbar_to_m00_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m00_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m00_couplers_AWADDR),
        .S_AXI_awprot(xbar_to_m00_couplers_AWPROT),
        .S_AXI_awready(xbar_to_m00_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_m00_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m00_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m00_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m00_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m00_couplers_RDATA),
        .S_AXI_rready(xbar_to_m00_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m00_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m00_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m00_couplers_WDATA),
        .S_AXI_wready(xbar_to_m00_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m00_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m00_couplers_WVALID));
  m01_couplers_imp_13J5K85 m01_couplers
       (.M_ACLK(M01_ACLK_1),
        .M_ARESETN(M01_ARESETN_1),
        .M_AXI_araddr(m01_couplers_to_interconnect_axilite_ARADDR),
        .M_AXI_arready(m01_couplers_to_interconnect_axilite_ARREADY),
        .M_AXI_arvalid(m01_couplers_to_interconnect_axilite_ARVALID),
        .M_AXI_awaddr(m01_couplers_to_interconnect_axilite_AWADDR),
        .M_AXI_awready(m01_couplers_to_interconnect_axilite_AWREADY),
        .M_AXI_awvalid(m01_couplers_to_interconnect_axilite_AWVALID),
        .M_AXI_bready(m01_couplers_to_interconnect_axilite_BREADY),
        .M_AXI_bresp(m01_couplers_to_interconnect_axilite_BRESP),
        .M_AXI_bvalid(m01_couplers_to_interconnect_axilite_BVALID),
        .M_AXI_rdata(m01_couplers_to_interconnect_axilite_RDATA),
        .M_AXI_rready(m01_couplers_to_interconnect_axilite_RREADY),
        .M_AXI_rresp(m01_couplers_to_interconnect_axilite_RRESP),
        .M_AXI_rvalid(m01_couplers_to_interconnect_axilite_RVALID),
        .M_AXI_wdata(m01_couplers_to_interconnect_axilite_WDATA),
        .M_AXI_wready(m01_couplers_to_interconnect_axilite_WREADY),
        .M_AXI_wstrb(m01_couplers_to_interconnect_axilite_WSTRB),
        .M_AXI_wvalid(m01_couplers_to_interconnect_axilite_WVALID),
        .S_ACLK(interconnect_axilite_ACLK_net),
        .S_ARESETN(interconnect_axilite_ARESETN_net),
        .S_AXI_araddr(xbar_to_m01_couplers_ARADDR),
        .S_AXI_arprot(xbar_to_m01_couplers_ARPROT),
        .S_AXI_arready(xbar_to_m01_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m01_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m01_couplers_AWADDR),
        .S_AXI_awprot(xbar_to_m01_couplers_AWPROT),
        .S_AXI_awready(xbar_to_m01_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_m01_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m01_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m01_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m01_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m01_couplers_RDATA),
        .S_AXI_rready(xbar_to_m01_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m01_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m01_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m01_couplers_WDATA),
        .S_AXI_wready(xbar_to_m01_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m01_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m01_couplers_WVALID));
  m02_couplers_imp_9DRP7Z m02_couplers
       (.M_ACLK(M02_ACLK_1),
        .M_ARESETN(M02_ARESETN_1),
        .M_AXI_araddr(m02_couplers_to_interconnect_axilite_ARADDR),
        .M_AXI_arready(m02_couplers_to_interconnect_axilite_ARREADY),
        .M_AXI_arvalid(m02_couplers_to_interconnect_axilite_ARVALID),
        .M_AXI_awaddr(m02_couplers_to_interconnect_axilite_AWADDR),
        .M_AXI_awready(m02_couplers_to_interconnect_axilite_AWREADY),
        .M_AXI_awvalid(m02_couplers_to_interconnect_axilite_AWVALID),
        .M_AXI_bready(m02_couplers_to_interconnect_axilite_BREADY),
        .M_AXI_bresp(m02_couplers_to_interconnect_axilite_BRESP),
        .M_AXI_bvalid(m02_couplers_to_interconnect_axilite_BVALID),
        .M_AXI_rdata(m02_couplers_to_interconnect_axilite_RDATA),
        .M_AXI_rready(m02_couplers_to_interconnect_axilite_RREADY),
        .M_AXI_rresp(m02_couplers_to_interconnect_axilite_RRESP),
        .M_AXI_rvalid(m02_couplers_to_interconnect_axilite_RVALID),
        .M_AXI_wdata(m02_couplers_to_interconnect_axilite_WDATA),
        .M_AXI_wready(m02_couplers_to_interconnect_axilite_WREADY),
        .M_AXI_wstrb(m02_couplers_to_interconnect_axilite_WSTRB),
        .M_AXI_wvalid(m02_couplers_to_interconnect_axilite_WVALID),
        .S_ACLK(interconnect_axilite_ACLK_net),
        .S_ARESETN(interconnect_axilite_ARESETN_net),
        .S_AXI_araddr(xbar_to_m02_couplers_ARADDR),
        .S_AXI_arprot(xbar_to_m02_couplers_ARPROT),
        .S_AXI_arready(xbar_to_m02_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m02_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m02_couplers_AWADDR),
        .S_AXI_awprot(xbar_to_m02_couplers_AWPROT),
        .S_AXI_awready(xbar_to_m02_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_m02_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m02_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m02_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m02_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m02_couplers_RDATA),
        .S_AXI_rready(xbar_to_m02_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m02_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m02_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m02_couplers_WDATA),
        .S_AXI_wready(xbar_to_m02_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m02_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m02_couplers_WVALID));
  m03_couplers_imp_J2E8TL m03_couplers
       (.M_ACLK(M03_ACLK_1),
        .M_ARESETN(M03_ARESETN_1),
        .M_AXI_araddr(m03_couplers_to_interconnect_axilite_ARADDR),
        .M_AXI_arready(m03_couplers_to_interconnect_axilite_ARREADY),
        .M_AXI_arvalid(m03_couplers_to_interconnect_axilite_ARVALID),
        .M_AXI_awaddr(m03_couplers_to_interconnect_axilite_AWADDR),
        .M_AXI_awready(m03_couplers_to_interconnect_axilite_AWREADY),
        .M_AXI_awvalid(m03_couplers_to_interconnect_axilite_AWVALID),
        .M_AXI_bready(m03_couplers_to_interconnect_axilite_BREADY),
        .M_AXI_bresp(m03_couplers_to_interconnect_axilite_BRESP),
        .M_AXI_bvalid(m03_couplers_to_interconnect_axilite_BVALID),
        .M_AXI_rdata(m03_couplers_to_interconnect_axilite_RDATA),
        .M_AXI_rready(m03_couplers_to_interconnect_axilite_RREADY),
        .M_AXI_rresp(m03_couplers_to_interconnect_axilite_RRESP),
        .M_AXI_rvalid(m03_couplers_to_interconnect_axilite_RVALID),
        .M_AXI_wdata(m03_couplers_to_interconnect_axilite_WDATA),
        .M_AXI_wready(m03_couplers_to_interconnect_axilite_WREADY),
        .M_AXI_wvalid(m03_couplers_to_interconnect_axilite_WVALID),
        .S_ACLK(interconnect_axilite_ACLK_net),
        .S_ARESETN(interconnect_axilite_ARESETN_net),
        .S_AXI_araddr(xbar_to_m03_couplers_ARADDR),
        .S_AXI_arprot(xbar_to_m03_couplers_ARPROT),
        .S_AXI_arready(xbar_to_m03_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m03_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m03_couplers_AWADDR),
        .S_AXI_awprot(xbar_to_m03_couplers_AWPROT),
        .S_AXI_awready(xbar_to_m03_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_m03_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m03_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m03_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m03_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m03_couplers_RDATA),
        .S_AXI_rready(xbar_to_m03_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m03_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m03_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m03_couplers_WDATA),
        .S_AXI_wready(xbar_to_m03_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m03_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m03_couplers_WVALID));
  m04_couplers_imp_1A1MMKA m04_couplers
       (.M_ACLK(M04_ACLK_1),
        .M_ARESETN(M04_ARESETN_1),
        .M_AXI_araddr(m04_couplers_to_interconnect_axilite_ARADDR),
        .M_AXI_arready(m04_couplers_to_interconnect_axilite_ARREADY),
        .M_AXI_arvalid(m04_couplers_to_interconnect_axilite_ARVALID),
        .M_AXI_awaddr(m04_couplers_to_interconnect_axilite_AWADDR),
        .M_AXI_awready(m04_couplers_to_interconnect_axilite_AWREADY),
        .M_AXI_awvalid(m04_couplers_to_interconnect_axilite_AWVALID),
        .M_AXI_bready(m04_couplers_to_interconnect_axilite_BREADY),
        .M_AXI_bresp(m04_couplers_to_interconnect_axilite_BRESP),
        .M_AXI_bvalid(m04_couplers_to_interconnect_axilite_BVALID),
        .M_AXI_rdata(m04_couplers_to_interconnect_axilite_RDATA),
        .M_AXI_rready(m04_couplers_to_interconnect_axilite_RREADY),
        .M_AXI_rresp(m04_couplers_to_interconnect_axilite_RRESP),
        .M_AXI_rvalid(m04_couplers_to_interconnect_axilite_RVALID),
        .M_AXI_wdata(m04_couplers_to_interconnect_axilite_WDATA),
        .M_AXI_wready(m04_couplers_to_interconnect_axilite_WREADY),
        .M_AXI_wvalid(m04_couplers_to_interconnect_axilite_WVALID),
        .S_ACLK(interconnect_axilite_ACLK_net),
        .S_ARESETN(interconnect_axilite_ARESETN_net),
        .S_AXI_araddr(xbar_to_m04_couplers_ARADDR),
        .S_AXI_arprot(xbar_to_m04_couplers_ARPROT),
        .S_AXI_arready(xbar_to_m04_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m04_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m04_couplers_AWADDR),
        .S_AXI_awprot(xbar_to_m04_couplers_AWPROT),
        .S_AXI_awready(xbar_to_m04_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_m04_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m04_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m04_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m04_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m04_couplers_RDATA),
        .S_AXI_rready(xbar_to_m04_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m04_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m04_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m04_couplers_WDATA),
        .S_AXI_wready(xbar_to_m04_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m04_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m04_couplers_WVALID));
  m05_couplers_imp_1HFM0OS m05_couplers
       (.M_ACLK(M05_ACLK_1),
        .M_ARESETN(M05_ARESETN_1),
        .M_AXI_araddr(m05_couplers_to_interconnect_axilite_ARADDR),
        .M_AXI_arprot(m05_couplers_to_interconnect_axilite_ARPROT),
        .M_AXI_arready(m05_couplers_to_interconnect_axilite_ARREADY),
        .M_AXI_arvalid(m05_couplers_to_interconnect_axilite_ARVALID),
        .M_AXI_awaddr(m05_couplers_to_interconnect_axilite_AWADDR),
        .M_AXI_awprot(m05_couplers_to_interconnect_axilite_AWPROT),
        .M_AXI_awready(m05_couplers_to_interconnect_axilite_AWREADY),
        .M_AXI_awvalid(m05_couplers_to_interconnect_axilite_AWVALID),
        .M_AXI_bready(m05_couplers_to_interconnect_axilite_BREADY),
        .M_AXI_bresp(m05_couplers_to_interconnect_axilite_BRESP),
        .M_AXI_bvalid(m05_couplers_to_interconnect_axilite_BVALID),
        .M_AXI_rdata(m05_couplers_to_interconnect_axilite_RDATA),
        .M_AXI_rready(m05_couplers_to_interconnect_axilite_RREADY),
        .M_AXI_rresp(m05_couplers_to_interconnect_axilite_RRESP),
        .M_AXI_rvalid(m05_couplers_to_interconnect_axilite_RVALID),
        .M_AXI_wdata(m05_couplers_to_interconnect_axilite_WDATA),
        .M_AXI_wready(m05_couplers_to_interconnect_axilite_WREADY),
        .M_AXI_wstrb(m05_couplers_to_interconnect_axilite_WSTRB),
        .M_AXI_wvalid(m05_couplers_to_interconnect_axilite_WVALID),
        .S_ACLK(interconnect_axilite_ACLK_net),
        .S_ARESETN(interconnect_axilite_ARESETN_net),
        .S_AXI_araddr(xbar_to_m05_couplers_ARADDR),
        .S_AXI_arprot(xbar_to_m05_couplers_ARPROT),
        .S_AXI_arready(xbar_to_m05_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m05_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m05_couplers_AWADDR),
        .S_AXI_awprot(xbar_to_m05_couplers_AWPROT),
        .S_AXI_awready(xbar_to_m05_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_m05_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m05_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m05_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m05_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m05_couplers_RDATA),
        .S_AXI_rready(xbar_to_m05_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m05_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m05_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m05_couplers_WDATA),
        .S_AXI_wready(xbar_to_m05_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m05_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m05_couplers_WVALID));
  m06_couplers_imp_UV4Z7A m06_couplers
       (.M_ACLK(M06_ACLK_1),
        .M_ARESETN(M06_ARESETN_1),
        .M_AXI_araddr(m06_couplers_to_interconnect_axilite_ARADDR),
        .M_AXI_arready(m06_couplers_to_interconnect_axilite_ARREADY),
        .M_AXI_arvalid(m06_couplers_to_interconnect_axilite_ARVALID),
        .M_AXI_awaddr(m06_couplers_to_interconnect_axilite_AWADDR),
        .M_AXI_awready(m06_couplers_to_interconnect_axilite_AWREADY),
        .M_AXI_awvalid(m06_couplers_to_interconnect_axilite_AWVALID),
        .M_AXI_bready(m06_couplers_to_interconnect_axilite_BREADY),
        .M_AXI_bresp(m06_couplers_to_interconnect_axilite_BRESP),
        .M_AXI_bvalid(m06_couplers_to_interconnect_axilite_BVALID),
        .M_AXI_rdata(m06_couplers_to_interconnect_axilite_RDATA),
        .M_AXI_rready(m06_couplers_to_interconnect_axilite_RREADY),
        .M_AXI_rresp(m06_couplers_to_interconnect_axilite_RRESP),
        .M_AXI_rvalid(m06_couplers_to_interconnect_axilite_RVALID),
        .M_AXI_wdata(m06_couplers_to_interconnect_axilite_WDATA),
        .M_AXI_wready(m06_couplers_to_interconnect_axilite_WREADY),
        .M_AXI_wstrb(m06_couplers_to_interconnect_axilite_WSTRB),
        .M_AXI_wvalid(m06_couplers_to_interconnect_axilite_WVALID),
        .S_ACLK(interconnect_axilite_ACLK_net),
        .S_ARESETN(interconnect_axilite_ARESETN_net),
        .S_AXI_araddr(xbar_to_m06_couplers_ARADDR),
        .S_AXI_arprot(xbar_to_m06_couplers_ARPROT),
        .S_AXI_arready(xbar_to_m06_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m06_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m06_couplers_AWADDR),
        .S_AXI_awprot(xbar_to_m06_couplers_AWPROT),
        .S_AXI_awready(xbar_to_m06_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_m06_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m06_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m06_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m06_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m06_couplers_RDATA),
        .S_AXI_rready(xbar_to_m06_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m06_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m06_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m06_couplers_WDATA),
        .S_AXI_wready(xbar_to_m06_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m06_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m06_couplers_WVALID));
  m07_couplers_imp_2VF0XC m07_couplers
       (.M_ACLK(M07_ACLK_1),
        .M_ARESETN(M07_ARESETN_1),
        .M_AXI_araddr(m07_couplers_to_interconnect_axilite_ARADDR),
        .M_AXI_arready(m07_couplers_to_interconnect_axilite_ARREADY),
        .M_AXI_arvalid(m07_couplers_to_interconnect_axilite_ARVALID),
        .M_AXI_awaddr(m07_couplers_to_interconnect_axilite_AWADDR),
        .M_AXI_awready(m07_couplers_to_interconnect_axilite_AWREADY),
        .M_AXI_awvalid(m07_couplers_to_interconnect_axilite_AWVALID),
        .M_AXI_bready(m07_couplers_to_interconnect_axilite_BREADY),
        .M_AXI_bresp(m07_couplers_to_interconnect_axilite_BRESP),
        .M_AXI_bvalid(m07_couplers_to_interconnect_axilite_BVALID),
        .M_AXI_rdata(m07_couplers_to_interconnect_axilite_RDATA),
        .M_AXI_rready(m07_couplers_to_interconnect_axilite_RREADY),
        .M_AXI_rresp(m07_couplers_to_interconnect_axilite_RRESP),
        .M_AXI_rvalid(m07_couplers_to_interconnect_axilite_RVALID),
        .M_AXI_wdata(m07_couplers_to_interconnect_axilite_WDATA),
        .M_AXI_wready(m07_couplers_to_interconnect_axilite_WREADY),
        .M_AXI_wstrb(m07_couplers_to_interconnect_axilite_WSTRB),
        .M_AXI_wvalid(m07_couplers_to_interconnect_axilite_WVALID),
        .S_ACLK(interconnect_axilite_ACLK_net),
        .S_ARESETN(interconnect_axilite_ARESETN_net),
        .S_AXI_araddr(xbar_to_m07_couplers_ARADDR),
        .S_AXI_arprot(xbar_to_m07_couplers_ARPROT),
        .S_AXI_arready(xbar_to_m07_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m07_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m07_couplers_AWADDR),
        .S_AXI_awprot(xbar_to_m07_couplers_AWPROT),
        .S_AXI_awready(xbar_to_m07_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_m07_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m07_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m07_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m07_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m07_couplers_RDATA),
        .S_AXI_rready(xbar_to_m07_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m07_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m07_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m07_couplers_WDATA),
        .S_AXI_wready(xbar_to_m07_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m07_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m07_couplers_WVALID));
  m08_couplers_imp_WYCUVL m08_couplers
       (.M_ACLK(M08_ACLK_1),
        .M_ARESETN(M08_ARESETN_1),
        .M_AXI_araddr(m08_couplers_to_interconnect_axilite_ARADDR),
        .M_AXI_arready(m08_couplers_to_interconnect_axilite_ARREADY),
        .M_AXI_arvalid(m08_couplers_to_interconnect_axilite_ARVALID),
        .M_AXI_awaddr(m08_couplers_to_interconnect_axilite_AWADDR),
        .M_AXI_awready(m08_couplers_to_interconnect_axilite_AWREADY),
        .M_AXI_awvalid(m08_couplers_to_interconnect_axilite_AWVALID),
        .M_AXI_bready(m08_couplers_to_interconnect_axilite_BREADY),
        .M_AXI_bresp(m08_couplers_to_interconnect_axilite_BRESP),
        .M_AXI_bvalid(m08_couplers_to_interconnect_axilite_BVALID),
        .M_AXI_rdata(m08_couplers_to_interconnect_axilite_RDATA),
        .M_AXI_rready(m08_couplers_to_interconnect_axilite_RREADY),
        .M_AXI_rresp(m08_couplers_to_interconnect_axilite_RRESP),
        .M_AXI_rvalid(m08_couplers_to_interconnect_axilite_RVALID),
        .M_AXI_wdata(m08_couplers_to_interconnect_axilite_WDATA),
        .M_AXI_wready(m08_couplers_to_interconnect_axilite_WREADY),
        .M_AXI_wstrb(m08_couplers_to_interconnect_axilite_WSTRB),
        .M_AXI_wvalid(m08_couplers_to_interconnect_axilite_WVALID),
        .S_ACLK(interconnect_axilite_ACLK_net),
        .S_ARESETN(interconnect_axilite_ARESETN_net),
        .S_AXI_araddr(xbar_to_m08_couplers_ARADDR),
        .S_AXI_arprot(xbar_to_m08_couplers_ARPROT),
        .S_AXI_arready(xbar_to_m08_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m08_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m08_couplers_AWADDR),
        .S_AXI_awprot(xbar_to_m08_couplers_AWPROT),
        .S_AXI_awready(xbar_to_m08_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_m08_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m08_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m08_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m08_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m08_couplers_RDATA),
        .S_AXI_rready(xbar_to_m08_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m08_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m08_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m08_couplers_WDATA),
        .S_AXI_wready(xbar_to_m08_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m08_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m08_couplers_WVALID));
  m09_couplers_imp_5G445Z m09_couplers
       (.M_ACLK(M09_ACLK_1),
        .M_ARESETN(M09_ARESETN_1),
        .M_AXI_araddr(m09_couplers_to_interconnect_axilite_ARADDR),
        .M_AXI_arprot(m09_couplers_to_interconnect_axilite_ARPROT),
        .M_AXI_arready(m09_couplers_to_interconnect_axilite_ARREADY),
        .M_AXI_arvalid(m09_couplers_to_interconnect_axilite_ARVALID),
        .M_AXI_awaddr(m09_couplers_to_interconnect_axilite_AWADDR),
        .M_AXI_awprot(m09_couplers_to_interconnect_axilite_AWPROT),
        .M_AXI_awready(m09_couplers_to_interconnect_axilite_AWREADY),
        .M_AXI_awvalid(m09_couplers_to_interconnect_axilite_AWVALID),
        .M_AXI_bready(m09_couplers_to_interconnect_axilite_BREADY),
        .M_AXI_bresp(m09_couplers_to_interconnect_axilite_BRESP),
        .M_AXI_bvalid(m09_couplers_to_interconnect_axilite_BVALID),
        .M_AXI_rdata(m09_couplers_to_interconnect_axilite_RDATA),
        .M_AXI_rready(m09_couplers_to_interconnect_axilite_RREADY),
        .M_AXI_rresp(m09_couplers_to_interconnect_axilite_RRESP),
        .M_AXI_rvalid(m09_couplers_to_interconnect_axilite_RVALID),
        .M_AXI_wdata(m09_couplers_to_interconnect_axilite_WDATA),
        .M_AXI_wready(m09_couplers_to_interconnect_axilite_WREADY),
        .M_AXI_wstrb(m09_couplers_to_interconnect_axilite_WSTRB),
        .M_AXI_wvalid(m09_couplers_to_interconnect_axilite_WVALID),
        .S_ACLK(interconnect_axilite_ACLK_net),
        .S_ARESETN(interconnect_axilite_ARESETN_net),
        .S_AXI_araddr(xbar_to_m09_couplers_ARADDR),
        .S_AXI_arprot(xbar_to_m09_couplers_ARPROT),
        .S_AXI_arready(xbar_to_m09_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m09_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m09_couplers_AWADDR),
        .S_AXI_awprot(xbar_to_m09_couplers_AWPROT),
        .S_AXI_awready(xbar_to_m09_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_m09_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m09_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m09_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m09_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m09_couplers_RDATA),
        .S_AXI_rready(xbar_to_m09_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m09_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m09_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m09_couplers_WDATA),
        .S_AXI_wready(xbar_to_m09_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m09_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m09_couplers_WVALID));
  s00_couplers_imp_1241H5U s00_couplers
       (.M_ACLK(interconnect_axilite_ACLK_net),
        .M_ARESETN(interconnect_axilite_ARESETN_net),
        .M_AXI_araddr(s00_couplers_to_xbar_ARADDR),
        .M_AXI_arprot(s00_couplers_to_xbar_ARPROT),
        .M_AXI_arready(s00_couplers_to_xbar_ARREADY),
        .M_AXI_arvalid(s00_couplers_to_xbar_ARVALID),
        .M_AXI_awaddr(s00_couplers_to_xbar_AWADDR),
        .M_AXI_awprot(s00_couplers_to_xbar_AWPROT),
        .M_AXI_awready(s00_couplers_to_xbar_AWREADY),
        .M_AXI_awvalid(s00_couplers_to_xbar_AWVALID),
        .M_AXI_bready(s00_couplers_to_xbar_BREADY),
        .M_AXI_bresp(s00_couplers_to_xbar_BRESP),
        .M_AXI_bvalid(s00_couplers_to_xbar_BVALID),
        .M_AXI_rdata(s00_couplers_to_xbar_RDATA),
        .M_AXI_rready(s00_couplers_to_xbar_RREADY),
        .M_AXI_rresp(s00_couplers_to_xbar_RRESP),
        .M_AXI_rvalid(s00_couplers_to_xbar_RVALID),
        .M_AXI_wdata(s00_couplers_to_xbar_WDATA),
        .M_AXI_wready(s00_couplers_to_xbar_WREADY),
        .M_AXI_wstrb(s00_couplers_to_xbar_WSTRB),
        .M_AXI_wvalid(s00_couplers_to_xbar_WVALID),
        .S_ACLK(S00_ACLK_1),
        .S_ARESETN(S00_ARESETN_1),
        .S_AXI_araddr(interconnect_axilite_to_s00_couplers_ARADDR),
        .S_AXI_arprot(interconnect_axilite_to_s00_couplers_ARPROT),
        .S_AXI_arready(interconnect_axilite_to_s00_couplers_ARREADY),
        .S_AXI_arvalid(interconnect_axilite_to_s00_couplers_ARVALID),
        .S_AXI_awaddr(interconnect_axilite_to_s00_couplers_AWADDR),
        .S_AXI_awprot(interconnect_axilite_to_s00_couplers_AWPROT),
        .S_AXI_awready(interconnect_axilite_to_s00_couplers_AWREADY),
        .S_AXI_awvalid(interconnect_axilite_to_s00_couplers_AWVALID),
        .S_AXI_bready(interconnect_axilite_to_s00_couplers_BREADY),
        .S_AXI_bresp(interconnect_axilite_to_s00_couplers_BRESP),
        .S_AXI_bvalid(interconnect_axilite_to_s00_couplers_BVALID),
        .S_AXI_rdata(interconnect_axilite_to_s00_couplers_RDATA),
        .S_AXI_rready(interconnect_axilite_to_s00_couplers_RREADY),
        .S_AXI_rresp(interconnect_axilite_to_s00_couplers_RRESP),
        .S_AXI_rvalid(interconnect_axilite_to_s00_couplers_RVALID),
        .S_AXI_wdata(interconnect_axilite_to_s00_couplers_WDATA),
        .S_AXI_wready(interconnect_axilite_to_s00_couplers_WREADY),
        .S_AXI_wstrb(interconnect_axilite_to_s00_couplers_WSTRB),
        .S_AXI_wvalid(interconnect_axilite_to_s00_couplers_WVALID));
  xcl_design_xbar_0 xbar
       (.aclk(interconnect_axilite_ACLK_net),
        .aresetn(interconnect_axilite_ARESETN_net),
        .m_axi_araddr({xbar_to_m09_couplers_ARADDR,xbar_to_m08_couplers_ARADDR,xbar_to_m07_couplers_ARADDR,xbar_to_m06_couplers_ARADDR,xbar_to_m05_couplers_ARADDR,xbar_to_m04_couplers_ARADDR,xbar_to_m03_couplers_ARADDR,xbar_to_m02_couplers_ARADDR,xbar_to_m01_couplers_ARADDR,xbar_to_m00_couplers_ARADDR}),
        .m_axi_arprot({xbar_to_m09_couplers_ARPROT,xbar_to_m08_couplers_ARPROT,xbar_to_m07_couplers_ARPROT,xbar_to_m06_couplers_ARPROT,xbar_to_m05_couplers_ARPROT,xbar_to_m04_couplers_ARPROT,xbar_to_m03_couplers_ARPROT,xbar_to_m02_couplers_ARPROT,xbar_to_m01_couplers_ARPROT,xbar_to_m00_couplers_ARPROT}),
        .m_axi_arready({xbar_to_m09_couplers_ARREADY,xbar_to_m08_couplers_ARREADY,xbar_to_m07_couplers_ARREADY,xbar_to_m06_couplers_ARREADY,xbar_to_m05_couplers_ARREADY,xbar_to_m04_couplers_ARREADY,xbar_to_m03_couplers_ARREADY,xbar_to_m02_couplers_ARREADY,xbar_to_m01_couplers_ARREADY,xbar_to_m00_couplers_ARREADY}),
        .m_axi_arvalid({xbar_to_m09_couplers_ARVALID,xbar_to_m08_couplers_ARVALID,xbar_to_m07_couplers_ARVALID,xbar_to_m06_couplers_ARVALID,xbar_to_m05_couplers_ARVALID,xbar_to_m04_couplers_ARVALID,xbar_to_m03_couplers_ARVALID,xbar_to_m02_couplers_ARVALID,xbar_to_m01_couplers_ARVALID,xbar_to_m00_couplers_ARVALID}),
        .m_axi_awaddr({xbar_to_m09_couplers_AWADDR,xbar_to_m08_couplers_AWADDR,xbar_to_m07_couplers_AWADDR,xbar_to_m06_couplers_AWADDR,xbar_to_m05_couplers_AWADDR,xbar_to_m04_couplers_AWADDR,xbar_to_m03_couplers_AWADDR,xbar_to_m02_couplers_AWADDR,xbar_to_m01_couplers_AWADDR,xbar_to_m00_couplers_AWADDR}),
        .m_axi_awprot({xbar_to_m09_couplers_AWPROT,xbar_to_m08_couplers_AWPROT,xbar_to_m07_couplers_AWPROT,xbar_to_m06_couplers_AWPROT,xbar_to_m05_couplers_AWPROT,xbar_to_m04_couplers_AWPROT,xbar_to_m03_couplers_AWPROT,xbar_to_m02_couplers_AWPROT,xbar_to_m01_couplers_AWPROT,xbar_to_m00_couplers_AWPROT}),
        .m_axi_awready({xbar_to_m09_couplers_AWREADY,xbar_to_m08_couplers_AWREADY,xbar_to_m07_couplers_AWREADY,xbar_to_m06_couplers_AWREADY,xbar_to_m05_couplers_AWREADY,xbar_to_m04_couplers_AWREADY,xbar_to_m03_couplers_AWREADY,xbar_to_m02_couplers_AWREADY,xbar_to_m01_couplers_AWREADY,xbar_to_m00_couplers_AWREADY}),
        .m_axi_awvalid({xbar_to_m09_couplers_AWVALID,xbar_to_m08_couplers_AWVALID,xbar_to_m07_couplers_AWVALID,xbar_to_m06_couplers_AWVALID,xbar_to_m05_couplers_AWVALID,xbar_to_m04_couplers_AWVALID,xbar_to_m03_couplers_AWVALID,xbar_to_m02_couplers_AWVALID,xbar_to_m01_couplers_AWVALID,xbar_to_m00_couplers_AWVALID}),
        .m_axi_bready({xbar_to_m09_couplers_BREADY,xbar_to_m08_couplers_BREADY,xbar_to_m07_couplers_BREADY,xbar_to_m06_couplers_BREADY,xbar_to_m05_couplers_BREADY,xbar_to_m04_couplers_BREADY,xbar_to_m03_couplers_BREADY,xbar_to_m02_couplers_BREADY,xbar_to_m01_couplers_BREADY,xbar_to_m00_couplers_BREADY}),
        .m_axi_bresp({xbar_to_m09_couplers_BRESP,xbar_to_m08_couplers_BRESP,xbar_to_m07_couplers_BRESP,xbar_to_m06_couplers_BRESP,xbar_to_m05_couplers_BRESP,xbar_to_m04_couplers_BRESP,xbar_to_m03_couplers_BRESP,xbar_to_m02_couplers_BRESP,xbar_to_m01_couplers_BRESP,xbar_to_m00_couplers_BRESP}),
        .m_axi_bvalid({xbar_to_m09_couplers_BVALID,xbar_to_m08_couplers_BVALID,xbar_to_m07_couplers_BVALID,xbar_to_m06_couplers_BVALID,xbar_to_m05_couplers_BVALID,xbar_to_m04_couplers_BVALID,xbar_to_m03_couplers_BVALID,xbar_to_m02_couplers_BVALID,xbar_to_m01_couplers_BVALID,xbar_to_m00_couplers_BVALID}),
        .m_axi_rdata({xbar_to_m09_couplers_RDATA,xbar_to_m08_couplers_RDATA,xbar_to_m07_couplers_RDATA,xbar_to_m06_couplers_RDATA,xbar_to_m05_couplers_RDATA,xbar_to_m04_couplers_RDATA,xbar_to_m03_couplers_RDATA,xbar_to_m02_couplers_RDATA,xbar_to_m01_couplers_RDATA,xbar_to_m00_couplers_RDATA}),
        .m_axi_rready({xbar_to_m09_couplers_RREADY,xbar_to_m08_couplers_RREADY,xbar_to_m07_couplers_RREADY,xbar_to_m06_couplers_RREADY,xbar_to_m05_couplers_RREADY,xbar_to_m04_couplers_RREADY,xbar_to_m03_couplers_RREADY,xbar_to_m02_couplers_RREADY,xbar_to_m01_couplers_RREADY,xbar_to_m00_couplers_RREADY}),
        .m_axi_rresp({xbar_to_m09_couplers_RRESP,xbar_to_m08_couplers_RRESP,xbar_to_m07_couplers_RRESP,xbar_to_m06_couplers_RRESP,xbar_to_m05_couplers_RRESP,xbar_to_m04_couplers_RRESP,xbar_to_m03_couplers_RRESP,xbar_to_m02_couplers_RRESP,xbar_to_m01_couplers_RRESP,xbar_to_m00_couplers_RRESP}),
        .m_axi_rvalid({xbar_to_m09_couplers_RVALID,xbar_to_m08_couplers_RVALID,xbar_to_m07_couplers_RVALID,xbar_to_m06_couplers_RVALID,xbar_to_m05_couplers_RVALID,xbar_to_m04_couplers_RVALID,xbar_to_m03_couplers_RVALID,xbar_to_m02_couplers_RVALID,xbar_to_m01_couplers_RVALID,xbar_to_m00_couplers_RVALID}),
        .m_axi_wdata({xbar_to_m09_couplers_WDATA,xbar_to_m08_couplers_WDATA,xbar_to_m07_couplers_WDATA,xbar_to_m06_couplers_WDATA,xbar_to_m05_couplers_WDATA,xbar_to_m04_couplers_WDATA,xbar_to_m03_couplers_WDATA,xbar_to_m02_couplers_WDATA,xbar_to_m01_couplers_WDATA,xbar_to_m00_couplers_WDATA}),
        .m_axi_wready({xbar_to_m09_couplers_WREADY,xbar_to_m08_couplers_WREADY,xbar_to_m07_couplers_WREADY,xbar_to_m06_couplers_WREADY,xbar_to_m05_couplers_WREADY,xbar_to_m04_couplers_WREADY,xbar_to_m03_couplers_WREADY,xbar_to_m02_couplers_WREADY,xbar_to_m01_couplers_WREADY,xbar_to_m00_couplers_WREADY}),
        .m_axi_wstrb({xbar_to_m09_couplers_WSTRB,xbar_to_m08_couplers_WSTRB,xbar_to_m07_couplers_WSTRB,xbar_to_m06_couplers_WSTRB,xbar_to_m05_couplers_WSTRB,xbar_to_m04_couplers_WSTRB,xbar_to_m03_couplers_WSTRB,xbar_to_m02_couplers_WSTRB,xbar_to_m01_couplers_WSTRB,xbar_to_m00_couplers_WSTRB}),
        .m_axi_wvalid({xbar_to_m09_couplers_WVALID,xbar_to_m08_couplers_WVALID,xbar_to_m07_couplers_WVALID,xbar_to_m06_couplers_WVALID,xbar_to_m05_couplers_WVALID,xbar_to_m04_couplers_WVALID,xbar_to_m03_couplers_WVALID,xbar_to_m02_couplers_WVALID,xbar_to_m01_couplers_WVALID,xbar_to_m00_couplers_WVALID}),
        .s_axi_araddr(s00_couplers_to_xbar_ARADDR),
        .s_axi_arprot(s00_couplers_to_xbar_ARPROT),
        .s_axi_arready(s00_couplers_to_xbar_ARREADY),
        .s_axi_arvalid(s00_couplers_to_xbar_ARVALID),
        .s_axi_awaddr(s00_couplers_to_xbar_AWADDR),
        .s_axi_awprot(s00_couplers_to_xbar_AWPROT),
        .s_axi_awready(s00_couplers_to_xbar_AWREADY),
        .s_axi_awvalid(s00_couplers_to_xbar_AWVALID),
        .s_axi_bready(s00_couplers_to_xbar_BREADY),
        .s_axi_bresp(s00_couplers_to_xbar_BRESP),
        .s_axi_bvalid(s00_couplers_to_xbar_BVALID),
        .s_axi_rdata(s00_couplers_to_xbar_RDATA),
        .s_axi_rready(s00_couplers_to_xbar_RREADY),
        .s_axi_rresp(s00_couplers_to_xbar_RRESP),
        .s_axi_rvalid(s00_couplers_to_xbar_RVALID),
        .s_axi_wdata(s00_couplers_to_xbar_WDATA),
        .s_axi_wready(s00_couplers_to_xbar_WREADY),
        .s_axi_wstrb(s00_couplers_to_xbar_WSTRB),
        .s_axi_wvalid(s00_couplers_to_xbar_WVALID));
endmodule
