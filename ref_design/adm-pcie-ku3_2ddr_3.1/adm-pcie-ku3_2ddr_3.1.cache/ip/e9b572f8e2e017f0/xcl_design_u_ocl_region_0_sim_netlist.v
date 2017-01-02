// Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2016.3_sdx (lin64) Build 1721784 Tue Nov 29 22:12:24 MST 2016
// Date        : Fri Dec 30 08:41:21 2016
// Host        : hms-beatdown running 64-bit Ubuntu 15.10
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ xcl_design_u_ocl_region_0_sim_netlist.v
// Design      : xcl_design_u_ocl_region_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xcku060-ffva1156-2-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* HW_HANDOFF = "xcl_design_u_ocl_region_0.hwdef" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_2fd7
   (INTERCONNECT_CLK,
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
    S_AXI_araddr,
    S_AXI_arprot,
    S_AXI_arqos,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awprot,
    S_AXI_awqos,
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
  input INTERCONNECT_CLK;
  input INTERCONNECT_RESET;
  input KERNEL_CLK;
  input KERNEL_RESET;
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
  input [16:0]S_AXI_araddr;
  input [2:0]S_AXI_arprot;
  input [3:0]S_AXI_arqos;
  output S_AXI_arready;
  input S_AXI_arvalid;
  input [16:0]S_AXI_awaddr;
  input [2:0]S_AXI_awprot;
  input [3:0]S_AXI_awqos;
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

  wire INTERCONNECT_CLK;
  wire INTERCONNECT_RESET;
  wire INTERCONNECT_RESET_sync;
  wire KERNEL_CLK;
  wire KERNEL_RESET;
  wire KERNEL_RESET_sync;
  wire [37:0]M00_AXI_araddr;
  wire [1:0]M00_AXI_arburst;
  wire [3:0]M00_AXI_arcache;
  wire [3:0]M00_AXI_arid;
  wire [7:0]M00_AXI_arlen;
  wire [0:0]M00_AXI_arlock;
  wire [2:0]M00_AXI_arprot;
  wire [3:0]M00_AXI_arqos;
  wire M00_AXI_arready;
  wire [2:0]M00_AXI_arsize;
  wire M00_AXI_arvalid;
  wire [37:0]M00_AXI_awaddr;
  wire [1:0]M00_AXI_awburst;
  wire [3:0]M00_AXI_awcache;
  wire [3:0]M00_AXI_awid;
  wire [7:0]M00_AXI_awlen;
  wire [0:0]M00_AXI_awlock;
  wire [2:0]M00_AXI_awprot;
  wire [3:0]M00_AXI_awqos;
  wire M00_AXI_awready;
  wire [2:0]M00_AXI_awsize;
  wire M00_AXI_awvalid;
  wire [3:0]M00_AXI_bid;
  wire M00_AXI_bready;
  wire [1:0]M00_AXI_bresp;
  wire M00_AXI_bvalid;
  wire [511:0]M00_AXI_rdata;
  wire [3:0]M00_AXI_rid;
  wire M00_AXI_rlast;
  wire M00_AXI_rready;
  wire [1:0]M00_AXI_rresp;
  wire M00_AXI_rvalid;
  wire [511:0]M00_AXI_wdata;
  wire M00_AXI_wlast;
  wire M00_AXI_wready;
  wire [63:0]M00_AXI_wstrb;
  wire M00_AXI_wvalid;
  wire [37:0]M01_AXI_araddr;
  wire [1:0]M01_AXI_arburst;
  wire [3:0]M01_AXI_arcache;
  wire [3:0]M01_AXI_arid;
  wire [7:0]M01_AXI_arlen;
  wire [0:0]M01_AXI_arlock;
  wire [2:0]M01_AXI_arprot;
  wire [3:0]M01_AXI_arqos;
  wire M01_AXI_arready;
  wire [2:0]M01_AXI_arsize;
  wire M01_AXI_arvalid;
  wire [37:0]M01_AXI_awaddr;
  wire [1:0]M01_AXI_awburst;
  wire [3:0]M01_AXI_awcache;
  wire [3:0]M01_AXI_awid;
  wire [7:0]M01_AXI_awlen;
  wire [0:0]M01_AXI_awlock;
  wire [2:0]M01_AXI_awprot;
  wire [3:0]M01_AXI_awqos;
  wire M01_AXI_awready;
  wire [2:0]M01_AXI_awsize;
  wire M01_AXI_awvalid;
  wire [3:0]M01_AXI_bid;
  wire M01_AXI_bready;
  wire [1:0]M01_AXI_bresp;
  wire M01_AXI_bvalid;
  wire [511:0]M01_AXI_rdata;
  wire [3:0]M01_AXI_rid;
  wire M01_AXI_rlast;
  wire M01_AXI_rready;
  wire [1:0]M01_AXI_rresp;
  wire M01_AXI_rvalid;
  wire [511:0]M01_AXI_wdata;
  wire M01_AXI_wlast;
  wire M01_AXI_wready;
  wire [63:0]M01_AXI_wstrb;
  wire M01_AXI_wvalid;
  wire [16:0]S_AXI_araddr;
  wire [2:0]S_AXI_arprot;
  wire [3:0]S_AXI_arqos;
  wire S_AXI_arready;
  wire S_AXI_arvalid;
  wire [16:0]S_AXI_awaddr;
  wire [2:0]S_AXI_awprot;
  wire [3:0]S_AXI_awqos;
  wire S_AXI_awready;
  wire S_AXI_awvalid;
  wire S_AXI_bready;
  wire [1:0]S_AXI_bresp;
  wire S_AXI_bvalid;
  wire [31:0]S_AXI_rdata;
  wire S_AXI_rready;
  wire [1:0]S_AXI_rresp;
  wire S_AXI_rvalid;
  wire [31:0]S_AXI_wdata;
  wire S_AXI_wready;
  wire [3:0]S_AXI_wstrb;
  wire S_AXI_wvalid;
  wire [37:0]kernel_0_m_axi_gmem_ARADDR;
  wire [1:0]kernel_0_m_axi_gmem_ARBURST;
  wire [3:0]kernel_0_m_axi_gmem_ARCACHE;
  wire [7:0]kernel_0_m_axi_gmem_ARLEN;
  wire [1:0]kernel_0_m_axi_gmem_ARLOCK;
  wire [2:0]kernel_0_m_axi_gmem_ARPROT;
  wire [3:0]kernel_0_m_axi_gmem_ARQOS;
  wire kernel_0_m_axi_gmem_ARREADY;
  wire [3:0]kernel_0_m_axi_gmem_ARREGION;
  wire [2:0]kernel_0_m_axi_gmem_ARSIZE;
  wire kernel_0_m_axi_gmem_ARVALID;
  wire [37:0]kernel_0_m_axi_gmem_AWADDR;
  wire [1:0]kernel_0_m_axi_gmem_AWBURST;
  wire [3:0]kernel_0_m_axi_gmem_AWCACHE;
  wire [7:0]kernel_0_m_axi_gmem_AWLEN;
  wire [1:0]kernel_0_m_axi_gmem_AWLOCK;
  wire [2:0]kernel_0_m_axi_gmem_AWPROT;
  wire [3:0]kernel_0_m_axi_gmem_AWQOS;
  wire kernel_0_m_axi_gmem_AWREADY;
  wire [3:0]kernel_0_m_axi_gmem_AWREGION;
  wire [2:0]kernel_0_m_axi_gmem_AWSIZE;
  wire kernel_0_m_axi_gmem_AWVALID;
  wire kernel_0_m_axi_gmem_BREADY;
  wire [1:0]kernel_0_m_axi_gmem_BRESP;
  wire kernel_0_m_axi_gmem_BVALID;
  wire [511:0]kernel_0_m_axi_gmem_RDATA;
  wire kernel_0_m_axi_gmem_RLAST;
  wire kernel_0_m_axi_gmem_RREADY;
  wire [1:0]kernel_0_m_axi_gmem_RRESP;
  wire kernel_0_m_axi_gmem_RVALID;
  wire [511:0]kernel_0_m_axi_gmem_WDATA;
  wire kernel_0_m_axi_gmem_WLAST;
  wire kernel_0_m_axi_gmem_WREADY;
  wire [63:0]kernel_0_m_axi_gmem_WSTRB;
  wire kernel_0_m_axi_gmem_WVALID;
  wire [37:0]kernel_1_m_axi_gmem_ARADDR;
  wire [1:0]kernel_1_m_axi_gmem_ARBURST;
  wire [3:0]kernel_1_m_axi_gmem_ARCACHE;
  wire [7:0]kernel_1_m_axi_gmem_ARLEN;
  wire [1:0]kernel_1_m_axi_gmem_ARLOCK;
  wire [2:0]kernel_1_m_axi_gmem_ARPROT;
  wire [3:0]kernel_1_m_axi_gmem_ARQOS;
  wire kernel_1_m_axi_gmem_ARREADY;
  wire [3:0]kernel_1_m_axi_gmem_ARREGION;
  wire [2:0]kernel_1_m_axi_gmem_ARSIZE;
  wire kernel_1_m_axi_gmem_ARVALID;
  wire [37:0]kernel_1_m_axi_gmem_AWADDR;
  wire [1:0]kernel_1_m_axi_gmem_AWBURST;
  wire [3:0]kernel_1_m_axi_gmem_AWCACHE;
  wire [7:0]kernel_1_m_axi_gmem_AWLEN;
  wire [1:0]kernel_1_m_axi_gmem_AWLOCK;
  wire [2:0]kernel_1_m_axi_gmem_AWPROT;
  wire [3:0]kernel_1_m_axi_gmem_AWQOS;
  wire kernel_1_m_axi_gmem_AWREADY;
  wire [3:0]kernel_1_m_axi_gmem_AWREGION;
  wire [2:0]kernel_1_m_axi_gmem_AWSIZE;
  wire kernel_1_m_axi_gmem_AWVALID;
  wire kernel_1_m_axi_gmem_BREADY;
  wire [1:0]kernel_1_m_axi_gmem_BRESP;
  wire kernel_1_m_axi_gmem_BVALID;
  wire [511:0]kernel_1_m_axi_gmem_RDATA;
  wire kernel_1_m_axi_gmem_RLAST;
  wire kernel_1_m_axi_gmem_RREADY;
  wire [1:0]kernel_1_m_axi_gmem_RRESP;
  wire kernel_1_m_axi_gmem_RVALID;
  wire [511:0]kernel_1_m_axi_gmem_WDATA;
  wire kernel_1_m_axi_gmem_WLAST;
  wire kernel_1_m_axi_gmem_WREADY;
  wire [63:0]kernel_1_m_axi_gmem_WSTRB;
  wire kernel_1_m_axi_gmem_WVALID;
  wire [37:0]m_axi_interconnect_M00_AXI_M00_AXI_ARADDR;
  wire [1:0]m_axi_interconnect_M00_AXI_M00_AXI_ARBURST;
  wire [3:0]m_axi_interconnect_M00_AXI_M00_AXI_ARCACHE;
  wire [7:0]m_axi_interconnect_M00_AXI_M00_AXI_ARLEN;
  wire m_axi_interconnect_M00_AXI_M00_AXI_ARLOCK;
  wire [2:0]m_axi_interconnect_M00_AXI_M00_AXI_ARPROT;
  wire [3:0]m_axi_interconnect_M00_AXI_M00_AXI_ARQOS;
  wire m_axi_interconnect_M00_AXI_M00_AXI_ARREADY;
  wire [2:0]m_axi_interconnect_M00_AXI_M00_AXI_ARSIZE;
  wire m_axi_interconnect_M00_AXI_M00_AXI_ARVALID;
  wire [37:0]m_axi_interconnect_M00_AXI_M00_AXI_AWADDR;
  wire [1:0]m_axi_interconnect_M00_AXI_M00_AXI_AWBURST;
  wire [3:0]m_axi_interconnect_M00_AXI_M00_AXI_AWCACHE;
  wire [7:0]m_axi_interconnect_M00_AXI_M00_AXI_AWLEN;
  wire m_axi_interconnect_M00_AXI_M00_AXI_AWLOCK;
  wire [2:0]m_axi_interconnect_M00_AXI_M00_AXI_AWPROT;
  wire [3:0]m_axi_interconnect_M00_AXI_M00_AXI_AWQOS;
  wire m_axi_interconnect_M00_AXI_M00_AXI_AWREADY;
  wire [2:0]m_axi_interconnect_M00_AXI_M00_AXI_AWSIZE;
  wire m_axi_interconnect_M00_AXI_M00_AXI_AWVALID;
  wire m_axi_interconnect_M00_AXI_M00_AXI_BREADY;
  wire [1:0]m_axi_interconnect_M00_AXI_M00_AXI_BRESP;
  wire m_axi_interconnect_M00_AXI_M00_AXI_BVALID;
  wire [511:0]m_axi_interconnect_M00_AXI_M00_AXI_RDATA;
  wire m_axi_interconnect_M00_AXI_M00_AXI_RLAST;
  wire m_axi_interconnect_M00_AXI_M00_AXI_RREADY;
  wire [1:0]m_axi_interconnect_M00_AXI_M00_AXI_RRESP;
  wire m_axi_interconnect_M00_AXI_M00_AXI_RVALID;
  wire [511:0]m_axi_interconnect_M00_AXI_M00_AXI_WDATA;
  wire m_axi_interconnect_M00_AXI_M00_AXI_WLAST;
  wire m_axi_interconnect_M00_AXI_M00_AXI_WREADY;
  wire [63:0]m_axi_interconnect_M00_AXI_M00_AXI_WSTRB;
  wire m_axi_interconnect_M00_AXI_M00_AXI_WVALID;
  wire [37:0]m_axi_interconnect_M01_AXI_M00_AXI_ARADDR;
  wire [1:0]m_axi_interconnect_M01_AXI_M00_AXI_ARBURST;
  wire [3:0]m_axi_interconnect_M01_AXI_M00_AXI_ARCACHE;
  wire [7:0]m_axi_interconnect_M01_AXI_M00_AXI_ARLEN;
  wire m_axi_interconnect_M01_AXI_M00_AXI_ARLOCK;
  wire [2:0]m_axi_interconnect_M01_AXI_M00_AXI_ARPROT;
  wire [3:0]m_axi_interconnect_M01_AXI_M00_AXI_ARQOS;
  wire m_axi_interconnect_M01_AXI_M00_AXI_ARREADY;
  wire [2:0]m_axi_interconnect_M01_AXI_M00_AXI_ARSIZE;
  wire m_axi_interconnect_M01_AXI_M00_AXI_ARVALID;
  wire [37:0]m_axi_interconnect_M01_AXI_M00_AXI_AWADDR;
  wire [1:0]m_axi_interconnect_M01_AXI_M00_AXI_AWBURST;
  wire [3:0]m_axi_interconnect_M01_AXI_M00_AXI_AWCACHE;
  wire [7:0]m_axi_interconnect_M01_AXI_M00_AXI_AWLEN;
  wire m_axi_interconnect_M01_AXI_M00_AXI_AWLOCK;
  wire [2:0]m_axi_interconnect_M01_AXI_M00_AXI_AWPROT;
  wire [3:0]m_axi_interconnect_M01_AXI_M00_AXI_AWQOS;
  wire m_axi_interconnect_M01_AXI_M00_AXI_AWREADY;
  wire [2:0]m_axi_interconnect_M01_AXI_M00_AXI_AWSIZE;
  wire m_axi_interconnect_M01_AXI_M00_AXI_AWVALID;
  wire m_axi_interconnect_M01_AXI_M00_AXI_BREADY;
  wire [1:0]m_axi_interconnect_M01_AXI_M00_AXI_BRESP;
  wire m_axi_interconnect_M01_AXI_M00_AXI_BVALID;
  wire [511:0]m_axi_interconnect_M01_AXI_M00_AXI_RDATA;
  wire m_axi_interconnect_M01_AXI_M00_AXI_RLAST;
  wire m_axi_interconnect_M01_AXI_M00_AXI_RREADY;
  wire [1:0]m_axi_interconnect_M01_AXI_M00_AXI_RRESP;
  wire m_axi_interconnect_M01_AXI_M00_AXI_RVALID;
  wire [511:0]m_axi_interconnect_M01_AXI_M00_AXI_WDATA;
  wire m_axi_interconnect_M01_AXI_M00_AXI_WLAST;
  wire m_axi_interconnect_M01_AXI_M00_AXI_WREADY;
  wire [63:0]m_axi_interconnect_M01_AXI_M00_AXI_WSTRB;
  wire m_axi_interconnect_M01_AXI_M00_AXI_WVALID;
  wire [5:0]s_axi_interconnect_0_M00_AXI_ARADDR;
  wire s_axi_interconnect_0_M00_AXI_ARREADY;
  wire s_axi_interconnect_0_M00_AXI_ARVALID;
  wire [5:0]s_axi_interconnect_0_M00_AXI_AWADDR;
  wire s_axi_interconnect_0_M00_AXI_AWREADY;
  wire s_axi_interconnect_0_M00_AXI_AWVALID;
  wire s_axi_interconnect_0_M00_AXI_BREADY;
  wire [1:0]s_axi_interconnect_0_M00_AXI_BRESP;
  wire s_axi_interconnect_0_M00_AXI_BVALID;
  wire [31:0]s_axi_interconnect_0_M00_AXI_RDATA;
  wire s_axi_interconnect_0_M00_AXI_RREADY;
  wire [1:0]s_axi_interconnect_0_M00_AXI_RRESP;
  wire s_axi_interconnect_0_M00_AXI_RVALID;
  wire [31:0]s_axi_interconnect_0_M00_AXI_WDATA;
  wire s_axi_interconnect_0_M00_AXI_WREADY;
  wire [3:0]s_axi_interconnect_0_M00_AXI_WSTRB;
  wire s_axi_interconnect_0_M00_AXI_WVALID;
  wire [5:0]s_axi_interconnect_0_M01_AXI_ARADDR;
  wire s_axi_interconnect_0_M01_AXI_ARREADY;
  wire s_axi_interconnect_0_M01_AXI_ARVALID;
  wire [5:0]s_axi_interconnect_0_M01_AXI_AWADDR;
  wire s_axi_interconnect_0_M01_AXI_AWREADY;
  wire s_axi_interconnect_0_M01_AXI_AWVALID;
  wire s_axi_interconnect_0_M01_AXI_BREADY;
  wire [1:0]s_axi_interconnect_0_M01_AXI_BRESP;
  wire s_axi_interconnect_0_M01_AXI_BVALID;
  wire [31:0]s_axi_interconnect_0_M01_AXI_RDATA;
  wire s_axi_interconnect_0_M01_AXI_RREADY;
  wire [1:0]s_axi_interconnect_0_M01_AXI_RRESP;
  wire s_axi_interconnect_0_M01_AXI_RVALID;
  wire [31:0]s_axi_interconnect_0_M01_AXI_WDATA;
  wire s_axi_interconnect_0_M01_AXI_WREADY;
  wire [3:0]s_axi_interconnect_0_M01_AXI_WSTRB;
  wire s_axi_interconnect_0_M01_AXI_WVALID;
  wire [16:0]slave_bridge_m_axi_ARADDR;
  wire [2:0]slave_bridge_m_axi_ARPROT;
  wire slave_bridge_m_axi_ARREADY;
  wire slave_bridge_m_axi_ARVALID;
  wire [16:0]slave_bridge_m_axi_AWADDR;
  wire [2:0]slave_bridge_m_axi_AWPROT;
  wire slave_bridge_m_axi_AWREADY;
  wire slave_bridge_m_axi_AWVALID;
  wire slave_bridge_m_axi_BREADY;
  wire [1:0]slave_bridge_m_axi_BRESP;
  wire slave_bridge_m_axi_BVALID;
  wire [31:0]slave_bridge_m_axi_RDATA;
  wire slave_bridge_m_axi_RREADY;
  wire [1:0]slave_bridge_m_axi_RRESP;
  wire slave_bridge_m_axi_RVALID;
  wire [31:0]slave_bridge_m_axi_WDATA;
  wire slave_bridge_m_axi_WREADY;
  wire [3:0]slave_bridge_m_axi_WSTRB;
  wire slave_bridge_m_axi_WVALID;
  wire NLW_interconnect_sys_reset_mb_reset_UNCONNECTED;
  wire [0:0]NLW_interconnect_sys_reset_bus_struct_reset_UNCONNECTED;
  wire [0:0]NLW_interconnect_sys_reset_peripheral_aresetn_UNCONNECTED;
  wire [0:0]NLW_interconnect_sys_reset_peripheral_reset_UNCONNECTED;
  wire NLW_kernel_0_interrupt_UNCONNECTED;
  wire NLW_kernel_1_interrupt_UNCONNECTED;
  wire NLW_kernel_sys_reset_mb_reset_UNCONNECTED;
  wire [0:0]NLW_kernel_sys_reset_bus_struct_reset_UNCONNECTED;
  wire [0:0]NLW_kernel_sys_reset_peripheral_aresetn_UNCONNECTED;
  wire [0:0]NLW_kernel_sys_reset_peripheral_reset_UNCONNECTED;
  wire [0:0]NLW_master_bridge_0_s_axi_bid_UNCONNECTED;
  wire [0:0]NLW_master_bridge_0_s_axi_rid_UNCONNECTED;
  wire [0:0]NLW_master_bridge_1_s_axi_bid_UNCONNECTED;
  wire [0:0]NLW_master_bridge_1_s_axi_rid_UNCONNECTED;
  wire [3:0]NLW_slave_bridge_m_axi_arqos_UNCONNECTED;
  wire [3:0]NLW_slave_bridge_m_axi_awqos_UNCONNECTED;

  (* x_core_info = "proc_sys_reset,Vivado 2016.3_sdx" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_2fd7_interconnect_sys_reset_0 interconnect_sys_reset
       (.aux_reset_in(1'b1),
        .bus_struct_reset(NLW_interconnect_sys_reset_bus_struct_reset_UNCONNECTED[0]),
        .dcm_locked(1'b1),
        .ext_reset_in(INTERCONNECT_RESET),
        .interconnect_aresetn(INTERCONNECT_RESET_sync),
        .mb_debug_sys_rst(1'b0),
        .mb_reset(NLW_interconnect_sys_reset_mb_reset_UNCONNECTED),
        .peripheral_aresetn(NLW_interconnect_sys_reset_peripheral_aresetn_UNCONNECTED[0]),
        .peripheral_reset(NLW_interconnect_sys_reset_peripheral_reset_UNCONNECTED[0]),
        .slowest_sync_clk(INTERCONNECT_CLK));
  (* x_core_info = "addone,Vivado 2016.3_sdx" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_2fd7_kernel_0_0 kernel_0
       (.ap_clk(KERNEL_CLK),
        .ap_rst_n(KERNEL_RESET_sync),
        .interrupt(NLW_kernel_0_interrupt_UNCONNECTED),
        .m_axi_gmem_ARADDR(kernel_0_m_axi_gmem_ARADDR),
        .m_axi_gmem_ARBURST(kernel_0_m_axi_gmem_ARBURST),
        .m_axi_gmem_ARCACHE(kernel_0_m_axi_gmem_ARCACHE),
        .m_axi_gmem_ARLEN(kernel_0_m_axi_gmem_ARLEN),
        .m_axi_gmem_ARLOCK(kernel_0_m_axi_gmem_ARLOCK),
        .m_axi_gmem_ARPROT(kernel_0_m_axi_gmem_ARPROT),
        .m_axi_gmem_ARQOS(kernel_0_m_axi_gmem_ARQOS),
        .m_axi_gmem_ARREADY(kernel_0_m_axi_gmem_ARREADY),
        .m_axi_gmem_ARREGION(kernel_0_m_axi_gmem_ARREGION),
        .m_axi_gmem_ARSIZE(kernel_0_m_axi_gmem_ARSIZE),
        .m_axi_gmem_ARVALID(kernel_0_m_axi_gmem_ARVALID),
        .m_axi_gmem_AWADDR(kernel_0_m_axi_gmem_AWADDR),
        .m_axi_gmem_AWBURST(kernel_0_m_axi_gmem_AWBURST),
        .m_axi_gmem_AWCACHE(kernel_0_m_axi_gmem_AWCACHE),
        .m_axi_gmem_AWLEN(kernel_0_m_axi_gmem_AWLEN),
        .m_axi_gmem_AWLOCK(kernel_0_m_axi_gmem_AWLOCK),
        .m_axi_gmem_AWPROT(kernel_0_m_axi_gmem_AWPROT),
        .m_axi_gmem_AWQOS(kernel_0_m_axi_gmem_AWQOS),
        .m_axi_gmem_AWREADY(kernel_0_m_axi_gmem_AWREADY),
        .m_axi_gmem_AWREGION(kernel_0_m_axi_gmem_AWREGION),
        .m_axi_gmem_AWSIZE(kernel_0_m_axi_gmem_AWSIZE),
        .m_axi_gmem_AWVALID(kernel_0_m_axi_gmem_AWVALID),
        .m_axi_gmem_BREADY(kernel_0_m_axi_gmem_BREADY),
        .m_axi_gmem_BRESP(kernel_0_m_axi_gmem_BRESP),
        .m_axi_gmem_BVALID(kernel_0_m_axi_gmem_BVALID),
        .m_axi_gmem_RDATA(kernel_0_m_axi_gmem_RDATA),
        .m_axi_gmem_RLAST(kernel_0_m_axi_gmem_RLAST),
        .m_axi_gmem_RREADY(kernel_0_m_axi_gmem_RREADY),
        .m_axi_gmem_RRESP(kernel_0_m_axi_gmem_RRESP),
        .m_axi_gmem_RVALID(kernel_0_m_axi_gmem_RVALID),
        .m_axi_gmem_WDATA(kernel_0_m_axi_gmem_WDATA),
        .m_axi_gmem_WLAST(kernel_0_m_axi_gmem_WLAST),
        .m_axi_gmem_WREADY(kernel_0_m_axi_gmem_WREADY),
        .m_axi_gmem_WSTRB(kernel_0_m_axi_gmem_WSTRB),
        .m_axi_gmem_WVALID(kernel_0_m_axi_gmem_WVALID),
        .s_axi_control_ARADDR(s_axi_interconnect_0_M00_AXI_ARADDR),
        .s_axi_control_ARREADY(s_axi_interconnect_0_M00_AXI_ARREADY),
        .s_axi_control_ARVALID(s_axi_interconnect_0_M00_AXI_ARVALID),
        .s_axi_control_AWADDR(s_axi_interconnect_0_M00_AXI_AWADDR),
        .s_axi_control_AWREADY(s_axi_interconnect_0_M00_AXI_AWREADY),
        .s_axi_control_AWVALID(s_axi_interconnect_0_M00_AXI_AWVALID),
        .s_axi_control_BREADY(s_axi_interconnect_0_M00_AXI_BREADY),
        .s_axi_control_BRESP(s_axi_interconnect_0_M00_AXI_BRESP),
        .s_axi_control_BVALID(s_axi_interconnect_0_M00_AXI_BVALID),
        .s_axi_control_RDATA(s_axi_interconnect_0_M00_AXI_RDATA),
        .s_axi_control_RREADY(s_axi_interconnect_0_M00_AXI_RREADY),
        .s_axi_control_RRESP(s_axi_interconnect_0_M00_AXI_RRESP),
        .s_axi_control_RVALID(s_axi_interconnect_0_M00_AXI_RVALID),
        .s_axi_control_WDATA(s_axi_interconnect_0_M00_AXI_WDATA),
        .s_axi_control_WREADY(s_axi_interconnect_0_M00_AXI_WREADY),
        .s_axi_control_WSTRB(s_axi_interconnect_0_M00_AXI_WSTRB),
        .s_axi_control_WVALID(s_axi_interconnect_0_M00_AXI_WVALID));
  (* x_core_info = "addone,Vivado 2016.3_sdx" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_2fd7_kernel_1_0 kernel_1
       (.ap_clk(KERNEL_CLK),
        .ap_rst_n(KERNEL_RESET_sync),
        .interrupt(NLW_kernel_1_interrupt_UNCONNECTED),
        .m_axi_gmem_ARADDR(kernel_1_m_axi_gmem_ARADDR),
        .m_axi_gmem_ARBURST(kernel_1_m_axi_gmem_ARBURST),
        .m_axi_gmem_ARCACHE(kernel_1_m_axi_gmem_ARCACHE),
        .m_axi_gmem_ARLEN(kernel_1_m_axi_gmem_ARLEN),
        .m_axi_gmem_ARLOCK(kernel_1_m_axi_gmem_ARLOCK),
        .m_axi_gmem_ARPROT(kernel_1_m_axi_gmem_ARPROT),
        .m_axi_gmem_ARQOS(kernel_1_m_axi_gmem_ARQOS),
        .m_axi_gmem_ARREADY(kernel_1_m_axi_gmem_ARREADY),
        .m_axi_gmem_ARREGION(kernel_1_m_axi_gmem_ARREGION),
        .m_axi_gmem_ARSIZE(kernel_1_m_axi_gmem_ARSIZE),
        .m_axi_gmem_ARVALID(kernel_1_m_axi_gmem_ARVALID),
        .m_axi_gmem_AWADDR(kernel_1_m_axi_gmem_AWADDR),
        .m_axi_gmem_AWBURST(kernel_1_m_axi_gmem_AWBURST),
        .m_axi_gmem_AWCACHE(kernel_1_m_axi_gmem_AWCACHE),
        .m_axi_gmem_AWLEN(kernel_1_m_axi_gmem_AWLEN),
        .m_axi_gmem_AWLOCK(kernel_1_m_axi_gmem_AWLOCK),
        .m_axi_gmem_AWPROT(kernel_1_m_axi_gmem_AWPROT),
        .m_axi_gmem_AWQOS(kernel_1_m_axi_gmem_AWQOS),
        .m_axi_gmem_AWREADY(kernel_1_m_axi_gmem_AWREADY),
        .m_axi_gmem_AWREGION(kernel_1_m_axi_gmem_AWREGION),
        .m_axi_gmem_AWSIZE(kernel_1_m_axi_gmem_AWSIZE),
        .m_axi_gmem_AWVALID(kernel_1_m_axi_gmem_AWVALID),
        .m_axi_gmem_BREADY(kernel_1_m_axi_gmem_BREADY),
        .m_axi_gmem_BRESP(kernel_1_m_axi_gmem_BRESP),
        .m_axi_gmem_BVALID(kernel_1_m_axi_gmem_BVALID),
        .m_axi_gmem_RDATA(kernel_1_m_axi_gmem_RDATA),
        .m_axi_gmem_RLAST(kernel_1_m_axi_gmem_RLAST),
        .m_axi_gmem_RREADY(kernel_1_m_axi_gmem_RREADY),
        .m_axi_gmem_RRESP(kernel_1_m_axi_gmem_RRESP),
        .m_axi_gmem_RVALID(kernel_1_m_axi_gmem_RVALID),
        .m_axi_gmem_WDATA(kernel_1_m_axi_gmem_WDATA),
        .m_axi_gmem_WLAST(kernel_1_m_axi_gmem_WLAST),
        .m_axi_gmem_WREADY(kernel_1_m_axi_gmem_WREADY),
        .m_axi_gmem_WSTRB(kernel_1_m_axi_gmem_WSTRB),
        .m_axi_gmem_WVALID(kernel_1_m_axi_gmem_WVALID),
        .s_axi_control_ARADDR(s_axi_interconnect_0_M01_AXI_ARADDR),
        .s_axi_control_ARREADY(s_axi_interconnect_0_M01_AXI_ARREADY),
        .s_axi_control_ARVALID(s_axi_interconnect_0_M01_AXI_ARVALID),
        .s_axi_control_AWADDR(s_axi_interconnect_0_M01_AXI_AWADDR),
        .s_axi_control_AWREADY(s_axi_interconnect_0_M01_AXI_AWREADY),
        .s_axi_control_AWVALID(s_axi_interconnect_0_M01_AXI_AWVALID),
        .s_axi_control_BREADY(s_axi_interconnect_0_M01_AXI_BREADY),
        .s_axi_control_BRESP(s_axi_interconnect_0_M01_AXI_BRESP),
        .s_axi_control_BVALID(s_axi_interconnect_0_M01_AXI_BVALID),
        .s_axi_control_RDATA(s_axi_interconnect_0_M01_AXI_RDATA),
        .s_axi_control_RREADY(s_axi_interconnect_0_M01_AXI_RREADY),
        .s_axi_control_RRESP(s_axi_interconnect_0_M01_AXI_RRESP),
        .s_axi_control_RVALID(s_axi_interconnect_0_M01_AXI_RVALID),
        .s_axi_control_WDATA(s_axi_interconnect_0_M01_AXI_WDATA),
        .s_axi_control_WREADY(s_axi_interconnect_0_M01_AXI_WREADY),
        .s_axi_control_WSTRB(s_axi_interconnect_0_M01_AXI_WSTRB),
        .s_axi_control_WVALID(s_axi_interconnect_0_M01_AXI_WVALID));
  (* x_core_info = "proc_sys_reset,Vivado 2016.3_sdx" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_2fd7_kernel_sys_reset_0 kernel_sys_reset
       (.aux_reset_in(1'b1),
        .bus_struct_reset(NLW_kernel_sys_reset_bus_struct_reset_UNCONNECTED[0]),
        .dcm_locked(1'b1),
        .ext_reset_in(KERNEL_RESET),
        .interconnect_aresetn(KERNEL_RESET_sync),
        .mb_debug_sys_rst(1'b0),
        .mb_reset(NLW_kernel_sys_reset_mb_reset_UNCONNECTED),
        .peripheral_aresetn(NLW_kernel_sys_reset_peripheral_aresetn_UNCONNECTED[0]),
        .peripheral_reset(NLW_kernel_sys_reset_peripheral_reset_UNCONNECTED[0]),
        .slowest_sync_clk(KERNEL_CLK));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_2fd7_m_axi_interconnect_M00_AXI_0 m_axi_interconnect_M00_AXI
       (.ACLK(KERNEL_CLK),
        .ARESETN(KERNEL_RESET_sync),
        .M00_ACLK(INTERCONNECT_CLK),
        .M00_ARESETN(INTERCONNECT_RESET_sync),
        .M00_AXI_araddr(m_axi_interconnect_M00_AXI_M00_AXI_ARADDR),
        .M00_AXI_arburst(m_axi_interconnect_M00_AXI_M00_AXI_ARBURST),
        .M00_AXI_arcache(m_axi_interconnect_M00_AXI_M00_AXI_ARCACHE),
        .M00_AXI_arlen(m_axi_interconnect_M00_AXI_M00_AXI_ARLEN),
        .M00_AXI_arlock(m_axi_interconnect_M00_AXI_M00_AXI_ARLOCK),
        .M00_AXI_arprot(m_axi_interconnect_M00_AXI_M00_AXI_ARPROT),
        .M00_AXI_arqos(m_axi_interconnect_M00_AXI_M00_AXI_ARQOS),
        .M00_AXI_arready(m_axi_interconnect_M00_AXI_M00_AXI_ARREADY),
        .M00_AXI_arsize(m_axi_interconnect_M00_AXI_M00_AXI_ARSIZE),
        .M00_AXI_arvalid(m_axi_interconnect_M00_AXI_M00_AXI_ARVALID),
        .M00_AXI_awaddr(m_axi_interconnect_M00_AXI_M00_AXI_AWADDR),
        .M00_AXI_awburst(m_axi_interconnect_M00_AXI_M00_AXI_AWBURST),
        .M00_AXI_awcache(m_axi_interconnect_M00_AXI_M00_AXI_AWCACHE),
        .M00_AXI_awlen(m_axi_interconnect_M00_AXI_M00_AXI_AWLEN),
        .M00_AXI_awlock(m_axi_interconnect_M00_AXI_M00_AXI_AWLOCK),
        .M00_AXI_awprot(m_axi_interconnect_M00_AXI_M00_AXI_AWPROT),
        .M00_AXI_awqos(m_axi_interconnect_M00_AXI_M00_AXI_AWQOS),
        .M00_AXI_awready(m_axi_interconnect_M00_AXI_M00_AXI_AWREADY),
        .M00_AXI_awsize(m_axi_interconnect_M00_AXI_M00_AXI_AWSIZE),
        .M00_AXI_awvalid(m_axi_interconnect_M00_AXI_M00_AXI_AWVALID),
        .M00_AXI_bready(m_axi_interconnect_M00_AXI_M00_AXI_BREADY),
        .M00_AXI_bresp(m_axi_interconnect_M00_AXI_M00_AXI_BRESP),
        .M00_AXI_bvalid(m_axi_interconnect_M00_AXI_M00_AXI_BVALID),
        .M00_AXI_rdata(m_axi_interconnect_M00_AXI_M00_AXI_RDATA),
        .M00_AXI_rlast(m_axi_interconnect_M00_AXI_M00_AXI_RLAST),
        .M00_AXI_rready(m_axi_interconnect_M00_AXI_M00_AXI_RREADY),
        .M00_AXI_rresp(m_axi_interconnect_M00_AXI_M00_AXI_RRESP),
        .M00_AXI_rvalid(m_axi_interconnect_M00_AXI_M00_AXI_RVALID),
        .M00_AXI_wdata(m_axi_interconnect_M00_AXI_M00_AXI_WDATA),
        .M00_AXI_wlast(m_axi_interconnect_M00_AXI_M00_AXI_WLAST),
        .M00_AXI_wready(m_axi_interconnect_M00_AXI_M00_AXI_WREADY),
        .M00_AXI_wstrb(m_axi_interconnect_M00_AXI_M00_AXI_WSTRB),
        .M00_AXI_wvalid(m_axi_interconnect_M00_AXI_M00_AXI_WVALID),
        .S00_ACLK(KERNEL_CLK),
        .S00_ARESETN(KERNEL_RESET_sync),
        .S00_AXI_araddr(kernel_0_m_axi_gmem_ARADDR),
        .S00_AXI_arburst(kernel_0_m_axi_gmem_ARBURST),
        .S00_AXI_arcache(kernel_0_m_axi_gmem_ARCACHE),
        .S00_AXI_arlen(kernel_0_m_axi_gmem_ARLEN),
        .S00_AXI_arlock(kernel_0_m_axi_gmem_ARLOCK),
        .S00_AXI_arprot(kernel_0_m_axi_gmem_ARPROT),
        .S00_AXI_arqos(kernel_0_m_axi_gmem_ARQOS),
        .S00_AXI_arready(kernel_0_m_axi_gmem_ARREADY),
        .S00_AXI_arregion(kernel_0_m_axi_gmem_ARREGION),
        .S00_AXI_arsize(kernel_0_m_axi_gmem_ARSIZE),
        .S00_AXI_arvalid(kernel_0_m_axi_gmem_ARVALID),
        .S00_AXI_awaddr(kernel_0_m_axi_gmem_AWADDR),
        .S00_AXI_awburst(kernel_0_m_axi_gmem_AWBURST),
        .S00_AXI_awcache(kernel_0_m_axi_gmem_AWCACHE),
        .S00_AXI_awlen(kernel_0_m_axi_gmem_AWLEN),
        .S00_AXI_awlock(kernel_0_m_axi_gmem_AWLOCK),
        .S00_AXI_awprot(kernel_0_m_axi_gmem_AWPROT),
        .S00_AXI_awqos(kernel_0_m_axi_gmem_AWQOS),
        .S00_AXI_awready(kernel_0_m_axi_gmem_AWREADY),
        .S00_AXI_awregion(kernel_0_m_axi_gmem_AWREGION),
        .S00_AXI_awsize(kernel_0_m_axi_gmem_AWSIZE),
        .S00_AXI_awvalid(kernel_0_m_axi_gmem_AWVALID),
        .S00_AXI_bready(kernel_0_m_axi_gmem_BREADY),
        .S00_AXI_bresp(kernel_0_m_axi_gmem_BRESP),
        .S00_AXI_bvalid(kernel_0_m_axi_gmem_BVALID),
        .S00_AXI_rdata(kernel_0_m_axi_gmem_RDATA),
        .S00_AXI_rlast(kernel_0_m_axi_gmem_RLAST),
        .S00_AXI_rready(kernel_0_m_axi_gmem_RREADY),
        .S00_AXI_rresp(kernel_0_m_axi_gmem_RRESP),
        .S00_AXI_rvalid(kernel_0_m_axi_gmem_RVALID),
        .S00_AXI_wdata(kernel_0_m_axi_gmem_WDATA),
        .S00_AXI_wlast(kernel_0_m_axi_gmem_WLAST),
        .S00_AXI_wready(kernel_0_m_axi_gmem_WREADY),
        .S00_AXI_wstrb(kernel_0_m_axi_gmem_WSTRB),
        .S00_AXI_wvalid(kernel_0_m_axi_gmem_WVALID));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_2fd7_m_axi_interconnect_M01_AXI_0 m_axi_interconnect_M01_AXI
       (.ACLK(KERNEL_CLK),
        .ARESETN(KERNEL_RESET_sync),
        .M00_ACLK(INTERCONNECT_CLK),
        .M00_ARESETN(INTERCONNECT_RESET_sync),
        .M00_AXI_araddr(m_axi_interconnect_M01_AXI_M00_AXI_ARADDR),
        .M00_AXI_arburst(m_axi_interconnect_M01_AXI_M00_AXI_ARBURST),
        .M00_AXI_arcache(m_axi_interconnect_M01_AXI_M00_AXI_ARCACHE),
        .M00_AXI_arlen(m_axi_interconnect_M01_AXI_M00_AXI_ARLEN),
        .M00_AXI_arlock(m_axi_interconnect_M01_AXI_M00_AXI_ARLOCK),
        .M00_AXI_arprot(m_axi_interconnect_M01_AXI_M00_AXI_ARPROT),
        .M00_AXI_arqos(m_axi_interconnect_M01_AXI_M00_AXI_ARQOS),
        .M00_AXI_arready(m_axi_interconnect_M01_AXI_M00_AXI_ARREADY),
        .M00_AXI_arsize(m_axi_interconnect_M01_AXI_M00_AXI_ARSIZE),
        .M00_AXI_arvalid(m_axi_interconnect_M01_AXI_M00_AXI_ARVALID),
        .M00_AXI_awaddr(m_axi_interconnect_M01_AXI_M00_AXI_AWADDR),
        .M00_AXI_awburst(m_axi_interconnect_M01_AXI_M00_AXI_AWBURST),
        .M00_AXI_awcache(m_axi_interconnect_M01_AXI_M00_AXI_AWCACHE),
        .M00_AXI_awlen(m_axi_interconnect_M01_AXI_M00_AXI_AWLEN),
        .M00_AXI_awlock(m_axi_interconnect_M01_AXI_M00_AXI_AWLOCK),
        .M00_AXI_awprot(m_axi_interconnect_M01_AXI_M00_AXI_AWPROT),
        .M00_AXI_awqos(m_axi_interconnect_M01_AXI_M00_AXI_AWQOS),
        .M00_AXI_awready(m_axi_interconnect_M01_AXI_M00_AXI_AWREADY),
        .M00_AXI_awsize(m_axi_interconnect_M01_AXI_M00_AXI_AWSIZE),
        .M00_AXI_awvalid(m_axi_interconnect_M01_AXI_M00_AXI_AWVALID),
        .M00_AXI_bready(m_axi_interconnect_M01_AXI_M00_AXI_BREADY),
        .M00_AXI_bresp(m_axi_interconnect_M01_AXI_M00_AXI_BRESP),
        .M00_AXI_bvalid(m_axi_interconnect_M01_AXI_M00_AXI_BVALID),
        .M00_AXI_rdata(m_axi_interconnect_M01_AXI_M00_AXI_RDATA),
        .M00_AXI_rlast(m_axi_interconnect_M01_AXI_M00_AXI_RLAST),
        .M00_AXI_rready(m_axi_interconnect_M01_AXI_M00_AXI_RREADY),
        .M00_AXI_rresp(m_axi_interconnect_M01_AXI_M00_AXI_RRESP),
        .M00_AXI_rvalid(m_axi_interconnect_M01_AXI_M00_AXI_RVALID),
        .M00_AXI_wdata(m_axi_interconnect_M01_AXI_M00_AXI_WDATA),
        .M00_AXI_wlast(m_axi_interconnect_M01_AXI_M00_AXI_WLAST),
        .M00_AXI_wready(m_axi_interconnect_M01_AXI_M00_AXI_WREADY),
        .M00_AXI_wstrb(m_axi_interconnect_M01_AXI_M00_AXI_WSTRB),
        .M00_AXI_wvalid(m_axi_interconnect_M01_AXI_M00_AXI_WVALID),
        .S00_ACLK(KERNEL_CLK),
        .S00_ARESETN(KERNEL_RESET_sync),
        .S00_AXI_araddr(kernel_1_m_axi_gmem_ARADDR),
        .S00_AXI_arburst(kernel_1_m_axi_gmem_ARBURST),
        .S00_AXI_arcache(kernel_1_m_axi_gmem_ARCACHE),
        .S00_AXI_arlen(kernel_1_m_axi_gmem_ARLEN),
        .S00_AXI_arlock(kernel_1_m_axi_gmem_ARLOCK),
        .S00_AXI_arprot(kernel_1_m_axi_gmem_ARPROT),
        .S00_AXI_arqos(kernel_1_m_axi_gmem_ARQOS),
        .S00_AXI_arready(kernel_1_m_axi_gmem_ARREADY),
        .S00_AXI_arregion(kernel_1_m_axi_gmem_ARREGION),
        .S00_AXI_arsize(kernel_1_m_axi_gmem_ARSIZE),
        .S00_AXI_arvalid(kernel_1_m_axi_gmem_ARVALID),
        .S00_AXI_awaddr(kernel_1_m_axi_gmem_AWADDR),
        .S00_AXI_awburst(kernel_1_m_axi_gmem_AWBURST),
        .S00_AXI_awcache(kernel_1_m_axi_gmem_AWCACHE),
        .S00_AXI_awlen(kernel_1_m_axi_gmem_AWLEN),
        .S00_AXI_awlock(kernel_1_m_axi_gmem_AWLOCK),
        .S00_AXI_awprot(kernel_1_m_axi_gmem_AWPROT),
        .S00_AXI_awqos(kernel_1_m_axi_gmem_AWQOS),
        .S00_AXI_awready(kernel_1_m_axi_gmem_AWREADY),
        .S00_AXI_awregion(kernel_1_m_axi_gmem_AWREGION),
        .S00_AXI_awsize(kernel_1_m_axi_gmem_AWSIZE),
        .S00_AXI_awvalid(kernel_1_m_axi_gmem_AWVALID),
        .S00_AXI_bready(kernel_1_m_axi_gmem_BREADY),
        .S00_AXI_bresp(kernel_1_m_axi_gmem_BRESP),
        .S00_AXI_bvalid(kernel_1_m_axi_gmem_BVALID),
        .S00_AXI_rdata(kernel_1_m_axi_gmem_RDATA),
        .S00_AXI_rlast(kernel_1_m_axi_gmem_RLAST),
        .S00_AXI_rready(kernel_1_m_axi_gmem_RREADY),
        .S00_AXI_rresp(kernel_1_m_axi_gmem_RRESP),
        .S00_AXI_rvalid(kernel_1_m_axi_gmem_RVALID),
        .S00_AXI_wdata(kernel_1_m_axi_gmem_WDATA),
        .S00_AXI_wlast(kernel_1_m_axi_gmem_WLAST),
        .S00_AXI_wready(kernel_1_m_axi_gmem_WREADY),
        .S00_AXI_wstrb(kernel_1_m_axi_gmem_WSTRB),
        .S00_AXI_wvalid(kernel_1_m_axi_gmem_WVALID));
  (* x_core_info = "axifull_bridge,Vivado 2016.3_sdx" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_2fd7_master_bridge_0_0 master_bridge_0
       (.aclk(INTERCONNECT_CLK),
        .aresetn(INTERCONNECT_RESET_sync),
        .m_axi_araddr(M00_AXI_araddr),
        .m_axi_arburst(M00_AXI_arburst),
        .m_axi_arcache(M00_AXI_arcache),
        .m_axi_arid(M00_AXI_arid),
        .m_axi_arlen(M00_AXI_arlen),
        .m_axi_arlock(M00_AXI_arlock),
        .m_axi_arprot(M00_AXI_arprot),
        .m_axi_arqos(M00_AXI_arqos),
        .m_axi_arready(M00_AXI_arready),
        .m_axi_arsize(M00_AXI_arsize),
        .m_axi_arvalid(M00_AXI_arvalid),
        .m_axi_awaddr(M00_AXI_awaddr),
        .m_axi_awburst(M00_AXI_awburst),
        .m_axi_awcache(M00_AXI_awcache),
        .m_axi_awid(M00_AXI_awid),
        .m_axi_awlen(M00_AXI_awlen),
        .m_axi_awlock(M00_AXI_awlock),
        .m_axi_awprot(M00_AXI_awprot),
        .m_axi_awqos(M00_AXI_awqos),
        .m_axi_awready(M00_AXI_awready),
        .m_axi_awsize(M00_AXI_awsize),
        .m_axi_awvalid(M00_AXI_awvalid),
        .m_axi_bid(M00_AXI_bid),
        .m_axi_bready(M00_AXI_bready),
        .m_axi_bresp(M00_AXI_bresp),
        .m_axi_bvalid(M00_AXI_bvalid),
        .m_axi_rdata(M00_AXI_rdata),
        .m_axi_rid(M00_AXI_rid),
        .m_axi_rlast(M00_AXI_rlast),
        .m_axi_rready(M00_AXI_rready),
        .m_axi_rresp(M00_AXI_rresp),
        .m_axi_rvalid(M00_AXI_rvalid),
        .m_axi_wdata(M00_AXI_wdata),
        .m_axi_wlast(M00_AXI_wlast),
        .m_axi_wready(M00_AXI_wready),
        .m_axi_wstrb(M00_AXI_wstrb),
        .m_axi_wvalid(M00_AXI_wvalid),
        .s_axi_araddr(m_axi_interconnect_M00_AXI_M00_AXI_ARADDR),
        .s_axi_arburst(m_axi_interconnect_M00_AXI_M00_AXI_ARBURST),
        .s_axi_arcache(m_axi_interconnect_M00_AXI_M00_AXI_ARCACHE),
        .s_axi_arid(1'b0),
        .s_axi_arlen(m_axi_interconnect_M00_AXI_M00_AXI_ARLEN),
        .s_axi_arlock(m_axi_interconnect_M00_AXI_M00_AXI_ARLOCK),
        .s_axi_arprot(m_axi_interconnect_M00_AXI_M00_AXI_ARPROT),
        .s_axi_arqos(m_axi_interconnect_M00_AXI_M00_AXI_ARQOS),
        .s_axi_arready(m_axi_interconnect_M00_AXI_M00_AXI_ARREADY),
        .s_axi_arsize(m_axi_interconnect_M00_AXI_M00_AXI_ARSIZE),
        .s_axi_arvalid(m_axi_interconnect_M00_AXI_M00_AXI_ARVALID),
        .s_axi_awaddr(m_axi_interconnect_M00_AXI_M00_AXI_AWADDR),
        .s_axi_awburst(m_axi_interconnect_M00_AXI_M00_AXI_AWBURST),
        .s_axi_awcache(m_axi_interconnect_M00_AXI_M00_AXI_AWCACHE),
        .s_axi_awid(1'b0),
        .s_axi_awlen(m_axi_interconnect_M00_AXI_M00_AXI_AWLEN),
        .s_axi_awlock(m_axi_interconnect_M00_AXI_M00_AXI_AWLOCK),
        .s_axi_awprot(m_axi_interconnect_M00_AXI_M00_AXI_AWPROT),
        .s_axi_awqos(m_axi_interconnect_M00_AXI_M00_AXI_AWQOS),
        .s_axi_awready(m_axi_interconnect_M00_AXI_M00_AXI_AWREADY),
        .s_axi_awsize(m_axi_interconnect_M00_AXI_M00_AXI_AWSIZE),
        .s_axi_awvalid(m_axi_interconnect_M00_AXI_M00_AXI_AWVALID),
        .s_axi_bid(NLW_master_bridge_0_s_axi_bid_UNCONNECTED[0]),
        .s_axi_bready(m_axi_interconnect_M00_AXI_M00_AXI_BREADY),
        .s_axi_bresp(m_axi_interconnect_M00_AXI_M00_AXI_BRESP),
        .s_axi_bvalid(m_axi_interconnect_M00_AXI_M00_AXI_BVALID),
        .s_axi_rdata(m_axi_interconnect_M00_AXI_M00_AXI_RDATA),
        .s_axi_rid(NLW_master_bridge_0_s_axi_rid_UNCONNECTED[0]),
        .s_axi_rlast(m_axi_interconnect_M00_AXI_M00_AXI_RLAST),
        .s_axi_rready(m_axi_interconnect_M00_AXI_M00_AXI_RREADY),
        .s_axi_rresp(m_axi_interconnect_M00_AXI_M00_AXI_RRESP),
        .s_axi_rvalid(m_axi_interconnect_M00_AXI_M00_AXI_RVALID),
        .s_axi_wdata(m_axi_interconnect_M00_AXI_M00_AXI_WDATA),
        .s_axi_wlast(m_axi_interconnect_M00_AXI_M00_AXI_WLAST),
        .s_axi_wready(m_axi_interconnect_M00_AXI_M00_AXI_WREADY),
        .s_axi_wstrb(m_axi_interconnect_M00_AXI_M00_AXI_WSTRB),
        .s_axi_wvalid(m_axi_interconnect_M00_AXI_M00_AXI_WVALID));
  (* x_core_info = "axifull_bridge,Vivado 2016.3_sdx" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_2fd7_master_bridge_1_0 master_bridge_1
       (.aclk(INTERCONNECT_CLK),
        .aresetn(INTERCONNECT_RESET_sync),
        .m_axi_araddr(M01_AXI_araddr),
        .m_axi_arburst(M01_AXI_arburst),
        .m_axi_arcache(M01_AXI_arcache),
        .m_axi_arid(M01_AXI_arid),
        .m_axi_arlen(M01_AXI_arlen),
        .m_axi_arlock(M01_AXI_arlock),
        .m_axi_arprot(M01_AXI_arprot),
        .m_axi_arqos(M01_AXI_arqos),
        .m_axi_arready(M01_AXI_arready),
        .m_axi_arsize(M01_AXI_arsize),
        .m_axi_arvalid(M01_AXI_arvalid),
        .m_axi_awaddr(M01_AXI_awaddr),
        .m_axi_awburst(M01_AXI_awburst),
        .m_axi_awcache(M01_AXI_awcache),
        .m_axi_awid(M01_AXI_awid),
        .m_axi_awlen(M01_AXI_awlen),
        .m_axi_awlock(M01_AXI_awlock),
        .m_axi_awprot(M01_AXI_awprot),
        .m_axi_awqos(M01_AXI_awqos),
        .m_axi_awready(M01_AXI_awready),
        .m_axi_awsize(M01_AXI_awsize),
        .m_axi_awvalid(M01_AXI_awvalid),
        .m_axi_bid(M01_AXI_bid),
        .m_axi_bready(M01_AXI_bready),
        .m_axi_bresp(M01_AXI_bresp),
        .m_axi_bvalid(M01_AXI_bvalid),
        .m_axi_rdata(M01_AXI_rdata),
        .m_axi_rid(M01_AXI_rid),
        .m_axi_rlast(M01_AXI_rlast),
        .m_axi_rready(M01_AXI_rready),
        .m_axi_rresp(M01_AXI_rresp),
        .m_axi_rvalid(M01_AXI_rvalid),
        .m_axi_wdata(M01_AXI_wdata),
        .m_axi_wlast(M01_AXI_wlast),
        .m_axi_wready(M01_AXI_wready),
        .m_axi_wstrb(M01_AXI_wstrb),
        .m_axi_wvalid(M01_AXI_wvalid),
        .s_axi_araddr(m_axi_interconnect_M01_AXI_M00_AXI_ARADDR),
        .s_axi_arburst(m_axi_interconnect_M01_AXI_M00_AXI_ARBURST),
        .s_axi_arcache(m_axi_interconnect_M01_AXI_M00_AXI_ARCACHE),
        .s_axi_arid(1'b0),
        .s_axi_arlen(m_axi_interconnect_M01_AXI_M00_AXI_ARLEN),
        .s_axi_arlock(m_axi_interconnect_M01_AXI_M00_AXI_ARLOCK),
        .s_axi_arprot(m_axi_interconnect_M01_AXI_M00_AXI_ARPROT),
        .s_axi_arqos(m_axi_interconnect_M01_AXI_M00_AXI_ARQOS),
        .s_axi_arready(m_axi_interconnect_M01_AXI_M00_AXI_ARREADY),
        .s_axi_arsize(m_axi_interconnect_M01_AXI_M00_AXI_ARSIZE),
        .s_axi_arvalid(m_axi_interconnect_M01_AXI_M00_AXI_ARVALID),
        .s_axi_awaddr(m_axi_interconnect_M01_AXI_M00_AXI_AWADDR),
        .s_axi_awburst(m_axi_interconnect_M01_AXI_M00_AXI_AWBURST),
        .s_axi_awcache(m_axi_interconnect_M01_AXI_M00_AXI_AWCACHE),
        .s_axi_awid(1'b0),
        .s_axi_awlen(m_axi_interconnect_M01_AXI_M00_AXI_AWLEN),
        .s_axi_awlock(m_axi_interconnect_M01_AXI_M00_AXI_AWLOCK),
        .s_axi_awprot(m_axi_interconnect_M01_AXI_M00_AXI_AWPROT),
        .s_axi_awqos(m_axi_interconnect_M01_AXI_M00_AXI_AWQOS),
        .s_axi_awready(m_axi_interconnect_M01_AXI_M00_AXI_AWREADY),
        .s_axi_awsize(m_axi_interconnect_M01_AXI_M00_AXI_AWSIZE),
        .s_axi_awvalid(m_axi_interconnect_M01_AXI_M00_AXI_AWVALID),
        .s_axi_bid(NLW_master_bridge_1_s_axi_bid_UNCONNECTED[0]),
        .s_axi_bready(m_axi_interconnect_M01_AXI_M00_AXI_BREADY),
        .s_axi_bresp(m_axi_interconnect_M01_AXI_M00_AXI_BRESP),
        .s_axi_bvalid(m_axi_interconnect_M01_AXI_M00_AXI_BVALID),
        .s_axi_rdata(m_axi_interconnect_M01_AXI_M00_AXI_RDATA),
        .s_axi_rid(NLW_master_bridge_1_s_axi_rid_UNCONNECTED[0]),
        .s_axi_rlast(m_axi_interconnect_M01_AXI_M00_AXI_RLAST),
        .s_axi_rready(m_axi_interconnect_M01_AXI_M00_AXI_RREADY),
        .s_axi_rresp(m_axi_interconnect_M01_AXI_M00_AXI_RRESP),
        .s_axi_rvalid(m_axi_interconnect_M01_AXI_M00_AXI_RVALID),
        .s_axi_wdata(m_axi_interconnect_M01_AXI_M00_AXI_WDATA),
        .s_axi_wlast(m_axi_interconnect_M01_AXI_M00_AXI_WLAST),
        .s_axi_wready(m_axi_interconnect_M01_AXI_M00_AXI_WREADY),
        .s_axi_wstrb(m_axi_interconnect_M01_AXI_M00_AXI_WSTRB),
        .s_axi_wvalid(m_axi_interconnect_M01_AXI_M00_AXI_WVALID));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_2fd7_s_axi_interconnect_0_0 s_axi_interconnect_0
       (.ACLK(KERNEL_CLK),
        .ARESETN(KERNEL_RESET_sync),
        .M00_ACLK(KERNEL_CLK),
        .M00_ARESETN(KERNEL_RESET_sync),
        .M00_AXI_araddr(s_axi_interconnect_0_M00_AXI_ARADDR),
        .M00_AXI_arready(s_axi_interconnect_0_M00_AXI_ARREADY),
        .M00_AXI_arvalid(s_axi_interconnect_0_M00_AXI_ARVALID),
        .M00_AXI_awaddr(s_axi_interconnect_0_M00_AXI_AWADDR),
        .M00_AXI_awready(s_axi_interconnect_0_M00_AXI_AWREADY),
        .M00_AXI_awvalid(s_axi_interconnect_0_M00_AXI_AWVALID),
        .M00_AXI_bready(s_axi_interconnect_0_M00_AXI_BREADY),
        .M00_AXI_bresp(s_axi_interconnect_0_M00_AXI_BRESP),
        .M00_AXI_bvalid(s_axi_interconnect_0_M00_AXI_BVALID),
        .M00_AXI_rdata(s_axi_interconnect_0_M00_AXI_RDATA),
        .M00_AXI_rready(s_axi_interconnect_0_M00_AXI_RREADY),
        .M00_AXI_rresp(s_axi_interconnect_0_M00_AXI_RRESP),
        .M00_AXI_rvalid(s_axi_interconnect_0_M00_AXI_RVALID),
        .M00_AXI_wdata(s_axi_interconnect_0_M00_AXI_WDATA),
        .M00_AXI_wready(s_axi_interconnect_0_M00_AXI_WREADY),
        .M00_AXI_wstrb(s_axi_interconnect_0_M00_AXI_WSTRB),
        .M00_AXI_wvalid(s_axi_interconnect_0_M00_AXI_WVALID),
        .M01_ACLK(KERNEL_CLK),
        .M01_ARESETN(KERNEL_RESET_sync),
        .M01_AXI_araddr(s_axi_interconnect_0_M01_AXI_ARADDR),
        .M01_AXI_arready(s_axi_interconnect_0_M01_AXI_ARREADY),
        .M01_AXI_arvalid(s_axi_interconnect_0_M01_AXI_ARVALID),
        .M01_AXI_awaddr(s_axi_interconnect_0_M01_AXI_AWADDR),
        .M01_AXI_awready(s_axi_interconnect_0_M01_AXI_AWREADY),
        .M01_AXI_awvalid(s_axi_interconnect_0_M01_AXI_AWVALID),
        .M01_AXI_bready(s_axi_interconnect_0_M01_AXI_BREADY),
        .M01_AXI_bresp(s_axi_interconnect_0_M01_AXI_BRESP),
        .M01_AXI_bvalid(s_axi_interconnect_0_M01_AXI_BVALID),
        .M01_AXI_rdata(s_axi_interconnect_0_M01_AXI_RDATA),
        .M01_AXI_rready(s_axi_interconnect_0_M01_AXI_RREADY),
        .M01_AXI_rresp(s_axi_interconnect_0_M01_AXI_RRESP),
        .M01_AXI_rvalid(s_axi_interconnect_0_M01_AXI_RVALID),
        .M01_AXI_wdata(s_axi_interconnect_0_M01_AXI_WDATA),
        .M01_AXI_wready(s_axi_interconnect_0_M01_AXI_WREADY),
        .M01_AXI_wstrb(s_axi_interconnect_0_M01_AXI_WSTRB),
        .M01_AXI_wvalid(s_axi_interconnect_0_M01_AXI_WVALID),
        .S00_ACLK(INTERCONNECT_CLK),
        .S00_ARESETN(INTERCONNECT_RESET_sync),
        .S00_AXI_araddr(slave_bridge_m_axi_ARADDR),
        .S00_AXI_arprot(slave_bridge_m_axi_ARPROT),
        .S00_AXI_arready(slave_bridge_m_axi_ARREADY),
        .S00_AXI_arvalid(slave_bridge_m_axi_ARVALID),
        .S00_AXI_awaddr(slave_bridge_m_axi_AWADDR),
        .S00_AXI_awprot(slave_bridge_m_axi_AWPROT),
        .S00_AXI_awready(slave_bridge_m_axi_AWREADY),
        .S00_AXI_awvalid(slave_bridge_m_axi_AWVALID),
        .S00_AXI_bready(slave_bridge_m_axi_BREADY),
        .S00_AXI_bresp(slave_bridge_m_axi_BRESP),
        .S00_AXI_bvalid(slave_bridge_m_axi_BVALID),
        .S00_AXI_rdata(slave_bridge_m_axi_RDATA),
        .S00_AXI_rready(slave_bridge_m_axi_RREADY),
        .S00_AXI_rresp(slave_bridge_m_axi_RRESP),
        .S00_AXI_rvalid(slave_bridge_m_axi_RVALID),
        .S00_AXI_wdata(slave_bridge_m_axi_WDATA),
        .S00_AXI_wready(slave_bridge_m_axi_WREADY),
        .S00_AXI_wstrb(slave_bridge_m_axi_WSTRB),
        .S00_AXI_wvalid(slave_bridge_m_axi_WVALID));
  (* x_core_info = "axilite_bridge,Vivado 2016.3_sdx" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_2fd7_slave_bridge_0 slave_bridge
       (.aclk(INTERCONNECT_CLK),
        .aresetn(INTERCONNECT_RESET_sync),
        .m_axi_araddr(slave_bridge_m_axi_ARADDR),
        .m_axi_arprot(slave_bridge_m_axi_ARPROT),
        .m_axi_arqos(NLW_slave_bridge_m_axi_arqos_UNCONNECTED[3:0]),
        .m_axi_arready(slave_bridge_m_axi_ARREADY),
        .m_axi_arvalid(slave_bridge_m_axi_ARVALID),
        .m_axi_awaddr(slave_bridge_m_axi_AWADDR),
        .m_axi_awprot(slave_bridge_m_axi_AWPROT),
        .m_axi_awqos(NLW_slave_bridge_m_axi_awqos_UNCONNECTED[3:0]),
        .m_axi_awready(slave_bridge_m_axi_AWREADY),
        .m_axi_awvalid(slave_bridge_m_axi_AWVALID),
        .m_axi_bready(slave_bridge_m_axi_BREADY),
        .m_axi_bresp(slave_bridge_m_axi_BRESP),
        .m_axi_bvalid(slave_bridge_m_axi_BVALID),
        .m_axi_rdata(slave_bridge_m_axi_RDATA),
        .m_axi_rready(slave_bridge_m_axi_RREADY),
        .m_axi_rresp(slave_bridge_m_axi_RRESP),
        .m_axi_rvalid(slave_bridge_m_axi_RVALID),
        .m_axi_wdata(slave_bridge_m_axi_WDATA),
        .m_axi_wready(slave_bridge_m_axi_WREADY),
        .m_axi_wstrb(slave_bridge_m_axi_WSTRB),
        .m_axi_wvalid(slave_bridge_m_axi_WVALID),
        .s_axi_araddr(S_AXI_araddr),
        .s_axi_arprot(S_AXI_arprot),
        .s_axi_arqos(S_AXI_arqos),
        .s_axi_arready(S_AXI_arready),
        .s_axi_arvalid(S_AXI_arvalid),
        .s_axi_awaddr(S_AXI_awaddr),
        .s_axi_awprot(S_AXI_awprot),
        .s_axi_awqos(S_AXI_awqos),
        .s_axi_awready(S_AXI_awready),
        .s_axi_awvalid(S_AXI_awvalid),
        .s_axi_bready(S_AXI_bready),
        .s_axi_bresp(S_AXI_bresp),
        .s_axi_bvalid(S_AXI_bvalid),
        .s_axi_rdata(S_AXI_rdata),
        .s_axi_rready(S_AXI_rready),
        .s_axi_rresp(S_AXI_rresp),
        .s_axi_rvalid(S_AXI_rvalid),
        .s_axi_wdata(S_AXI_wdata),
        .s_axi_wready(S_AXI_wready),
        .s_axi_wstrb(S_AXI_wstrb),
        .s_axi_wvalid(S_AXI_wvalid));
endmodule

(* X_CORE_INFO = "axi_clock_converter_v2_1_9_axi_clock_converter,Vivado 2016.3_sdx" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_2fd7_auto_cc_0
   (s_axi_aclk,
    s_axi_aresetn,
    s_axi_awaddr,
    s_axi_awlen,
    s_axi_awsize,
    s_axi_awburst,
    s_axi_awlock,
    s_axi_awcache,
    s_axi_awprot,
    s_axi_awregion,
    s_axi_awqos,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wlast,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bresp,
    s_axi_bvalid,
    s_axi_bready,
    s_axi_araddr,
    s_axi_arlen,
    s_axi_arsize,
    s_axi_arburst,
    s_axi_arlock,
    s_axi_arcache,
    s_axi_arprot,
    s_axi_arregion,
    s_axi_arqos,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rlast,
    s_axi_rvalid,
    s_axi_rready,
    m_axi_aclk,
    m_axi_aresetn,
    m_axi_awaddr,
    m_axi_awlen,
    m_axi_awsize,
    m_axi_awburst,
    m_axi_awlock,
    m_axi_awcache,
    m_axi_awprot,
    m_axi_awregion,
    m_axi_awqos,
    m_axi_awvalid,
    m_axi_awready,
    m_axi_wdata,
    m_axi_wstrb,
    m_axi_wlast,
    m_axi_wvalid,
    m_axi_wready,
    m_axi_bresp,
    m_axi_bvalid,
    m_axi_bready,
    m_axi_araddr,
    m_axi_arlen,
    m_axi_arsize,
    m_axi_arburst,
    m_axi_arlock,
    m_axi_arcache,
    m_axi_arprot,
    m_axi_arregion,
    m_axi_arqos,
    m_axi_arvalid,
    m_axi_arready,
    m_axi_rdata,
    m_axi_rresp,
    m_axi_rlast,
    m_axi_rvalid,
    m_axi_rready);
  input s_axi_aclk;
  input s_axi_aresetn;
  input [37:0]s_axi_awaddr;
  input [7:0]s_axi_awlen;
  input [2:0]s_axi_awsize;
  input [1:0]s_axi_awburst;
  input [0:0]s_axi_awlock;
  input [3:0]s_axi_awcache;
  input [2:0]s_axi_awprot;
  input [3:0]s_axi_awregion;
  input [3:0]s_axi_awqos;
  input s_axi_awvalid;
  output s_axi_awready;
  input [511:0]s_axi_wdata;
  input [63:0]s_axi_wstrb;
  input s_axi_wlast;
  input s_axi_wvalid;
  output s_axi_wready;
  output [1:0]s_axi_bresp;
  output s_axi_bvalid;
  input s_axi_bready;
  input [37:0]s_axi_araddr;
  input [7:0]s_axi_arlen;
  input [2:0]s_axi_arsize;
  input [1:0]s_axi_arburst;
  input [0:0]s_axi_arlock;
  input [3:0]s_axi_arcache;
  input [2:0]s_axi_arprot;
  input [3:0]s_axi_arregion;
  input [3:0]s_axi_arqos;
  input s_axi_arvalid;
  output s_axi_arready;
  output [511:0]s_axi_rdata;
  output [1:0]s_axi_rresp;
  output s_axi_rlast;
  output s_axi_rvalid;
  input s_axi_rready;
  input m_axi_aclk;
  input m_axi_aresetn;
  output [37:0]m_axi_awaddr;
  output [7:0]m_axi_awlen;
  output [2:0]m_axi_awsize;
  output [1:0]m_axi_awburst;
  output [0:0]m_axi_awlock;
  output [3:0]m_axi_awcache;
  output [2:0]m_axi_awprot;
  output [3:0]m_axi_awregion;
  output [3:0]m_axi_awqos;
  output m_axi_awvalid;
  input m_axi_awready;
  output [511:0]m_axi_wdata;
  output [63:0]m_axi_wstrb;
  output m_axi_wlast;
  output m_axi_wvalid;
  input m_axi_wready;
  input [1:0]m_axi_bresp;
  input m_axi_bvalid;
  output m_axi_bready;
  output [37:0]m_axi_araddr;
  output [7:0]m_axi_arlen;
  output [2:0]m_axi_arsize;
  output [1:0]m_axi_arburst;
  output [0:0]m_axi_arlock;
  output [3:0]m_axi_arcache;
  output [2:0]m_axi_arprot;
  output [3:0]m_axi_arregion;
  output [3:0]m_axi_arqos;
  output m_axi_arvalid;
  input m_axi_arready;
  input [511:0]m_axi_rdata;
  input [1:0]m_axi_rresp;
  input m_axi_rlast;
  input m_axi_rvalid;
  output m_axi_rready;


endmodule

(* X_CORE_INFO = "axi_clock_converter_v2_1_9_axi_clock_converter,Vivado 2016.3_sdx" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_2fd7_auto_cc_1
   (s_axi_aclk,
    s_axi_aresetn,
    s_axi_awaddr,
    s_axi_awlen,
    s_axi_awsize,
    s_axi_awburst,
    s_axi_awlock,
    s_axi_awcache,
    s_axi_awprot,
    s_axi_awregion,
    s_axi_awqos,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wlast,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bresp,
    s_axi_bvalid,
    s_axi_bready,
    s_axi_araddr,
    s_axi_arlen,
    s_axi_arsize,
    s_axi_arburst,
    s_axi_arlock,
    s_axi_arcache,
    s_axi_arprot,
    s_axi_arregion,
    s_axi_arqos,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rlast,
    s_axi_rvalid,
    s_axi_rready,
    m_axi_aclk,
    m_axi_aresetn,
    m_axi_awaddr,
    m_axi_awlen,
    m_axi_awsize,
    m_axi_awburst,
    m_axi_awlock,
    m_axi_awcache,
    m_axi_awprot,
    m_axi_awregion,
    m_axi_awqos,
    m_axi_awvalid,
    m_axi_awready,
    m_axi_wdata,
    m_axi_wstrb,
    m_axi_wlast,
    m_axi_wvalid,
    m_axi_wready,
    m_axi_bresp,
    m_axi_bvalid,
    m_axi_bready,
    m_axi_araddr,
    m_axi_arlen,
    m_axi_arsize,
    m_axi_arburst,
    m_axi_arlock,
    m_axi_arcache,
    m_axi_arprot,
    m_axi_arregion,
    m_axi_arqos,
    m_axi_arvalid,
    m_axi_arready,
    m_axi_rdata,
    m_axi_rresp,
    m_axi_rlast,
    m_axi_rvalid,
    m_axi_rready);
  input s_axi_aclk;
  input s_axi_aresetn;
  input [37:0]s_axi_awaddr;
  input [7:0]s_axi_awlen;
  input [2:0]s_axi_awsize;
  input [1:0]s_axi_awburst;
  input [0:0]s_axi_awlock;
  input [3:0]s_axi_awcache;
  input [2:0]s_axi_awprot;
  input [3:0]s_axi_awregion;
  input [3:0]s_axi_awqos;
  input s_axi_awvalid;
  output s_axi_awready;
  input [511:0]s_axi_wdata;
  input [63:0]s_axi_wstrb;
  input s_axi_wlast;
  input s_axi_wvalid;
  output s_axi_wready;
  output [1:0]s_axi_bresp;
  output s_axi_bvalid;
  input s_axi_bready;
  input [37:0]s_axi_araddr;
  input [7:0]s_axi_arlen;
  input [2:0]s_axi_arsize;
  input [1:0]s_axi_arburst;
  input [0:0]s_axi_arlock;
  input [3:0]s_axi_arcache;
  input [2:0]s_axi_arprot;
  input [3:0]s_axi_arregion;
  input [3:0]s_axi_arqos;
  input s_axi_arvalid;
  output s_axi_arready;
  output [511:0]s_axi_rdata;
  output [1:0]s_axi_rresp;
  output s_axi_rlast;
  output s_axi_rvalid;
  input s_axi_rready;
  input m_axi_aclk;
  input m_axi_aresetn;
  output [37:0]m_axi_awaddr;
  output [7:0]m_axi_awlen;
  output [2:0]m_axi_awsize;
  output [1:0]m_axi_awburst;
  output [0:0]m_axi_awlock;
  output [3:0]m_axi_awcache;
  output [2:0]m_axi_awprot;
  output [3:0]m_axi_awregion;
  output [3:0]m_axi_awqos;
  output m_axi_awvalid;
  input m_axi_awready;
  output [511:0]m_axi_wdata;
  output [63:0]m_axi_wstrb;
  output m_axi_wlast;
  output m_axi_wvalid;
  input m_axi_wready;
  input [1:0]m_axi_bresp;
  input m_axi_bvalid;
  output m_axi_bready;
  output [37:0]m_axi_araddr;
  output [7:0]m_axi_arlen;
  output [2:0]m_axi_arsize;
  output [1:0]m_axi_arburst;
  output [0:0]m_axi_arlock;
  output [3:0]m_axi_arcache;
  output [2:0]m_axi_arprot;
  output [3:0]m_axi_arregion;
  output [3:0]m_axi_arqos;
  output m_axi_arvalid;
  input m_axi_arready;
  input [511:0]m_axi_rdata;
  input [1:0]m_axi_rresp;
  input m_axi_rlast;
  input m_axi_rvalid;
  output m_axi_rready;


endmodule

(* X_CORE_INFO = "axi_clock_converter_v2_1_9_axi_clock_converter,Vivado 2016.3_sdx" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_2fd7_auto_cc_2
   (s_axi_aclk,
    s_axi_aresetn,
    s_axi_awaddr,
    s_axi_awprot,
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
    s_axi_arprot,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rvalid,
    s_axi_rready,
    m_axi_aclk,
    m_axi_aresetn,
    m_axi_awaddr,
    m_axi_awprot,
    m_axi_awvalid,
    m_axi_awready,
    m_axi_wdata,
    m_axi_wstrb,
    m_axi_wvalid,
    m_axi_wready,
    m_axi_bresp,
    m_axi_bvalid,
    m_axi_bready,
    m_axi_araddr,
    m_axi_arprot,
    m_axi_arvalid,
    m_axi_arready,
    m_axi_rdata,
    m_axi_rresp,
    m_axi_rvalid,
    m_axi_rready);
  input s_axi_aclk;
  input s_axi_aresetn;
  input [16:0]s_axi_awaddr;
  input [2:0]s_axi_awprot;
  input s_axi_awvalid;
  output s_axi_awready;
  input [31:0]s_axi_wdata;
  input [3:0]s_axi_wstrb;
  input s_axi_wvalid;
  output s_axi_wready;
  output [1:0]s_axi_bresp;
  output s_axi_bvalid;
  input s_axi_bready;
  input [16:0]s_axi_araddr;
  input [2:0]s_axi_arprot;
  input s_axi_arvalid;
  output s_axi_arready;
  output [31:0]s_axi_rdata;
  output [1:0]s_axi_rresp;
  output s_axi_rvalid;
  input s_axi_rready;
  input m_axi_aclk;
  input m_axi_aresetn;
  output [16:0]m_axi_awaddr;
  output [2:0]m_axi_awprot;
  output m_axi_awvalid;
  input m_axi_awready;
  output [31:0]m_axi_wdata;
  output [3:0]m_axi_wstrb;
  output m_axi_wvalid;
  input m_axi_wready;
  input [1:0]m_axi_bresp;
  input m_axi_bvalid;
  output m_axi_bready;
  output [16:0]m_axi_araddr;
  output [2:0]m_axi_arprot;
  output m_axi_arvalid;
  input m_axi_arready;
  input [31:0]m_axi_rdata;
  input [1:0]m_axi_rresp;
  input m_axi_rvalid;
  output m_axi_rready;


endmodule

(* X_CORE_INFO = "proc_sys_reset,Vivado 2016.3_sdx" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_2fd7_interconnect_sys_reset_0
   (slowest_sync_clk,
    ext_reset_in,
    aux_reset_in,
    mb_debug_sys_rst,
    dcm_locked,
    mb_reset,
    bus_struct_reset,
    peripheral_reset,
    interconnect_aresetn,
    peripheral_aresetn);
  input slowest_sync_clk;
  input ext_reset_in;
  input aux_reset_in;
  input mb_debug_sys_rst;
  input dcm_locked;
  output mb_reset;
  output [0:0]bus_struct_reset;
  output [0:0]peripheral_reset;
  output [0:0]interconnect_aresetn;
  output [0:0]peripheral_aresetn;


endmodule

(* X_CORE_INFO = "addone,Vivado 2016.3_sdx" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_2fd7_kernel_0_0
   (s_axi_control_AWADDR,
    s_axi_control_AWVALID,
    s_axi_control_AWREADY,
    s_axi_control_WDATA,
    s_axi_control_WSTRB,
    s_axi_control_WVALID,
    s_axi_control_WREADY,
    s_axi_control_BRESP,
    s_axi_control_BVALID,
    s_axi_control_BREADY,
    s_axi_control_ARADDR,
    s_axi_control_ARVALID,
    s_axi_control_ARREADY,
    s_axi_control_RDATA,
    s_axi_control_RRESP,
    s_axi_control_RVALID,
    s_axi_control_RREADY,
    ap_clk,
    ap_rst_n,
    interrupt,
    m_axi_gmem_AWADDR,
    m_axi_gmem_AWLEN,
    m_axi_gmem_AWSIZE,
    m_axi_gmem_AWBURST,
    m_axi_gmem_AWLOCK,
    m_axi_gmem_AWREGION,
    m_axi_gmem_AWCACHE,
    m_axi_gmem_AWPROT,
    m_axi_gmem_AWQOS,
    m_axi_gmem_AWVALID,
    m_axi_gmem_AWREADY,
    m_axi_gmem_WDATA,
    m_axi_gmem_WSTRB,
    m_axi_gmem_WLAST,
    m_axi_gmem_WVALID,
    m_axi_gmem_WREADY,
    m_axi_gmem_BRESP,
    m_axi_gmem_BVALID,
    m_axi_gmem_BREADY,
    m_axi_gmem_ARADDR,
    m_axi_gmem_ARLEN,
    m_axi_gmem_ARSIZE,
    m_axi_gmem_ARBURST,
    m_axi_gmem_ARLOCK,
    m_axi_gmem_ARREGION,
    m_axi_gmem_ARCACHE,
    m_axi_gmem_ARPROT,
    m_axi_gmem_ARQOS,
    m_axi_gmem_ARVALID,
    m_axi_gmem_ARREADY,
    m_axi_gmem_RDATA,
    m_axi_gmem_RRESP,
    m_axi_gmem_RLAST,
    m_axi_gmem_RVALID,
    m_axi_gmem_RREADY);
  input [5:0]s_axi_control_AWADDR;
  input s_axi_control_AWVALID;
  output s_axi_control_AWREADY;
  input [31:0]s_axi_control_WDATA;
  input [3:0]s_axi_control_WSTRB;
  input s_axi_control_WVALID;
  output s_axi_control_WREADY;
  output [1:0]s_axi_control_BRESP;
  output s_axi_control_BVALID;
  input s_axi_control_BREADY;
  input [5:0]s_axi_control_ARADDR;
  input s_axi_control_ARVALID;
  output s_axi_control_ARREADY;
  output [31:0]s_axi_control_RDATA;
  output [1:0]s_axi_control_RRESP;
  output s_axi_control_RVALID;
  input s_axi_control_RREADY;
  input ap_clk;
  input ap_rst_n;
  output interrupt;
  output [37:0]m_axi_gmem_AWADDR;
  output [7:0]m_axi_gmem_AWLEN;
  output [2:0]m_axi_gmem_AWSIZE;
  output [1:0]m_axi_gmem_AWBURST;
  output [1:0]m_axi_gmem_AWLOCK;
  output [3:0]m_axi_gmem_AWREGION;
  output [3:0]m_axi_gmem_AWCACHE;
  output [2:0]m_axi_gmem_AWPROT;
  output [3:0]m_axi_gmem_AWQOS;
  output m_axi_gmem_AWVALID;
  input m_axi_gmem_AWREADY;
  output [511:0]m_axi_gmem_WDATA;
  output [63:0]m_axi_gmem_WSTRB;
  output m_axi_gmem_WLAST;
  output m_axi_gmem_WVALID;
  input m_axi_gmem_WREADY;
  input [1:0]m_axi_gmem_BRESP;
  input m_axi_gmem_BVALID;
  output m_axi_gmem_BREADY;
  output [37:0]m_axi_gmem_ARADDR;
  output [7:0]m_axi_gmem_ARLEN;
  output [2:0]m_axi_gmem_ARSIZE;
  output [1:0]m_axi_gmem_ARBURST;
  output [1:0]m_axi_gmem_ARLOCK;
  output [3:0]m_axi_gmem_ARREGION;
  output [3:0]m_axi_gmem_ARCACHE;
  output [2:0]m_axi_gmem_ARPROT;
  output [3:0]m_axi_gmem_ARQOS;
  output m_axi_gmem_ARVALID;
  input m_axi_gmem_ARREADY;
  input [511:0]m_axi_gmem_RDATA;
  input [1:0]m_axi_gmem_RRESP;
  input m_axi_gmem_RLAST;
  input m_axi_gmem_RVALID;
  output m_axi_gmem_RREADY;


endmodule

(* X_CORE_INFO = "addone,Vivado 2016.3_sdx" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_2fd7_kernel_1_0
   (s_axi_control_AWADDR,
    s_axi_control_AWVALID,
    s_axi_control_AWREADY,
    s_axi_control_WDATA,
    s_axi_control_WSTRB,
    s_axi_control_WVALID,
    s_axi_control_WREADY,
    s_axi_control_BRESP,
    s_axi_control_BVALID,
    s_axi_control_BREADY,
    s_axi_control_ARADDR,
    s_axi_control_ARVALID,
    s_axi_control_ARREADY,
    s_axi_control_RDATA,
    s_axi_control_RRESP,
    s_axi_control_RVALID,
    s_axi_control_RREADY,
    ap_clk,
    ap_rst_n,
    interrupt,
    m_axi_gmem_AWADDR,
    m_axi_gmem_AWLEN,
    m_axi_gmem_AWSIZE,
    m_axi_gmem_AWBURST,
    m_axi_gmem_AWLOCK,
    m_axi_gmem_AWREGION,
    m_axi_gmem_AWCACHE,
    m_axi_gmem_AWPROT,
    m_axi_gmem_AWQOS,
    m_axi_gmem_AWVALID,
    m_axi_gmem_AWREADY,
    m_axi_gmem_WDATA,
    m_axi_gmem_WSTRB,
    m_axi_gmem_WLAST,
    m_axi_gmem_WVALID,
    m_axi_gmem_WREADY,
    m_axi_gmem_BRESP,
    m_axi_gmem_BVALID,
    m_axi_gmem_BREADY,
    m_axi_gmem_ARADDR,
    m_axi_gmem_ARLEN,
    m_axi_gmem_ARSIZE,
    m_axi_gmem_ARBURST,
    m_axi_gmem_ARLOCK,
    m_axi_gmem_ARREGION,
    m_axi_gmem_ARCACHE,
    m_axi_gmem_ARPROT,
    m_axi_gmem_ARQOS,
    m_axi_gmem_ARVALID,
    m_axi_gmem_ARREADY,
    m_axi_gmem_RDATA,
    m_axi_gmem_RRESP,
    m_axi_gmem_RLAST,
    m_axi_gmem_RVALID,
    m_axi_gmem_RREADY);
  input [5:0]s_axi_control_AWADDR;
  input s_axi_control_AWVALID;
  output s_axi_control_AWREADY;
  input [31:0]s_axi_control_WDATA;
  input [3:0]s_axi_control_WSTRB;
  input s_axi_control_WVALID;
  output s_axi_control_WREADY;
  output [1:0]s_axi_control_BRESP;
  output s_axi_control_BVALID;
  input s_axi_control_BREADY;
  input [5:0]s_axi_control_ARADDR;
  input s_axi_control_ARVALID;
  output s_axi_control_ARREADY;
  output [31:0]s_axi_control_RDATA;
  output [1:0]s_axi_control_RRESP;
  output s_axi_control_RVALID;
  input s_axi_control_RREADY;
  input ap_clk;
  input ap_rst_n;
  output interrupt;
  output [37:0]m_axi_gmem_AWADDR;
  output [7:0]m_axi_gmem_AWLEN;
  output [2:0]m_axi_gmem_AWSIZE;
  output [1:0]m_axi_gmem_AWBURST;
  output [1:0]m_axi_gmem_AWLOCK;
  output [3:0]m_axi_gmem_AWREGION;
  output [3:0]m_axi_gmem_AWCACHE;
  output [2:0]m_axi_gmem_AWPROT;
  output [3:0]m_axi_gmem_AWQOS;
  output m_axi_gmem_AWVALID;
  input m_axi_gmem_AWREADY;
  output [511:0]m_axi_gmem_WDATA;
  output [63:0]m_axi_gmem_WSTRB;
  output m_axi_gmem_WLAST;
  output m_axi_gmem_WVALID;
  input m_axi_gmem_WREADY;
  input [1:0]m_axi_gmem_BRESP;
  input m_axi_gmem_BVALID;
  output m_axi_gmem_BREADY;
  output [37:0]m_axi_gmem_ARADDR;
  output [7:0]m_axi_gmem_ARLEN;
  output [2:0]m_axi_gmem_ARSIZE;
  output [1:0]m_axi_gmem_ARBURST;
  output [1:0]m_axi_gmem_ARLOCK;
  output [3:0]m_axi_gmem_ARREGION;
  output [3:0]m_axi_gmem_ARCACHE;
  output [2:0]m_axi_gmem_ARPROT;
  output [3:0]m_axi_gmem_ARQOS;
  output m_axi_gmem_ARVALID;
  input m_axi_gmem_ARREADY;
  input [511:0]m_axi_gmem_RDATA;
  input [1:0]m_axi_gmem_RRESP;
  input m_axi_gmem_RLAST;
  input m_axi_gmem_RVALID;
  output m_axi_gmem_RREADY;


endmodule

(* X_CORE_INFO = "proc_sys_reset,Vivado 2016.3_sdx" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_2fd7_kernel_sys_reset_0
   (slowest_sync_clk,
    ext_reset_in,
    aux_reset_in,
    mb_debug_sys_rst,
    dcm_locked,
    mb_reset,
    bus_struct_reset,
    peripheral_reset,
    interconnect_aresetn,
    peripheral_aresetn);
  input slowest_sync_clk;
  input ext_reset_in;
  input aux_reset_in;
  input mb_debug_sys_rst;
  input dcm_locked;
  output mb_reset;
  output [0:0]bus_struct_reset;
  output [0:0]peripheral_reset;
  output [0:0]interconnect_aresetn;
  output [0:0]peripheral_aresetn;


endmodule

(* X_CORE_INFO = "axi_register_slice_v2_1_10_axi_register_slice,Vivado 2016.3_sdx" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_2fd7_m00_regslice_0
   (aclk,
    aresetn,
    s_axi_awaddr,
    s_axi_awprot,
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
    s_axi_arprot,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rvalid,
    s_axi_rready,
    m_axi_awaddr,
    m_axi_awprot,
    m_axi_awvalid,
    m_axi_awready,
    m_axi_wdata,
    m_axi_wstrb,
    m_axi_wvalid,
    m_axi_wready,
    m_axi_bresp,
    m_axi_bvalid,
    m_axi_bready,
    m_axi_araddr,
    m_axi_arprot,
    m_axi_arvalid,
    m_axi_arready,
    m_axi_rdata,
    m_axi_rresp,
    m_axi_rvalid,
    m_axi_rready);
  input aclk;
  input aresetn;
  input [5:0]s_axi_awaddr;
  input [2:0]s_axi_awprot;
  input s_axi_awvalid;
  output s_axi_awready;
  input [31:0]s_axi_wdata;
  input [3:0]s_axi_wstrb;
  input s_axi_wvalid;
  output s_axi_wready;
  output [1:0]s_axi_bresp;
  output s_axi_bvalid;
  input s_axi_bready;
  input [5:0]s_axi_araddr;
  input [2:0]s_axi_arprot;
  input s_axi_arvalid;
  output s_axi_arready;
  output [31:0]s_axi_rdata;
  output [1:0]s_axi_rresp;
  output s_axi_rvalid;
  input s_axi_rready;
  output [5:0]m_axi_awaddr;
  output [2:0]m_axi_awprot;
  output m_axi_awvalid;
  input m_axi_awready;
  output [31:0]m_axi_wdata;
  output [3:0]m_axi_wstrb;
  output m_axi_wvalid;
  input m_axi_wready;
  input [1:0]m_axi_bresp;
  input m_axi_bvalid;
  output m_axi_bready;
  output [5:0]m_axi_araddr;
  output [2:0]m_axi_arprot;
  output m_axi_arvalid;
  input m_axi_arready;
  input [31:0]m_axi_rdata;
  input [1:0]m_axi_rresp;
  input m_axi_rvalid;
  output m_axi_rready;


endmodule

(* X_CORE_INFO = "axi_register_slice_v2_1_10_axi_register_slice,Vivado 2016.3_sdx" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_2fd7_m01_regslice_0
   (aclk,
    aresetn,
    s_axi_awaddr,
    s_axi_awprot,
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
    s_axi_arprot,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rvalid,
    s_axi_rready,
    m_axi_awaddr,
    m_axi_awprot,
    m_axi_awvalid,
    m_axi_awready,
    m_axi_wdata,
    m_axi_wstrb,
    m_axi_wvalid,
    m_axi_wready,
    m_axi_bresp,
    m_axi_bvalid,
    m_axi_bready,
    m_axi_araddr,
    m_axi_arprot,
    m_axi_arvalid,
    m_axi_arready,
    m_axi_rdata,
    m_axi_rresp,
    m_axi_rvalid,
    m_axi_rready);
  input aclk;
  input aresetn;
  input [5:0]s_axi_awaddr;
  input [2:0]s_axi_awprot;
  input s_axi_awvalid;
  output s_axi_awready;
  input [31:0]s_axi_wdata;
  input [3:0]s_axi_wstrb;
  input s_axi_wvalid;
  output s_axi_wready;
  output [1:0]s_axi_bresp;
  output s_axi_bvalid;
  input s_axi_bready;
  input [5:0]s_axi_araddr;
  input [2:0]s_axi_arprot;
  input s_axi_arvalid;
  output s_axi_arready;
  output [31:0]s_axi_rdata;
  output [1:0]s_axi_rresp;
  output s_axi_rvalid;
  input s_axi_rready;
  output [5:0]m_axi_awaddr;
  output [2:0]m_axi_awprot;
  output m_axi_awvalid;
  input m_axi_awready;
  output [31:0]m_axi_wdata;
  output [3:0]m_axi_wstrb;
  output m_axi_wvalid;
  input m_axi_wready;
  input [1:0]m_axi_bresp;
  input m_axi_bvalid;
  output m_axi_bready;
  output [5:0]m_axi_araddr;
  output [2:0]m_axi_arprot;
  output m_axi_arvalid;
  input m_axi_arready;
  input [31:0]m_axi_rdata;
  input [1:0]m_axi_rresp;
  input m_axi_rvalid;
  output m_axi_rready;


endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_2fd7_m_axi_interconnect_M00_AXI_0
   (ACLK,
    ARESETN,
    M00_ACLK,
    M00_ARESETN,
    M00_AXI_araddr,
    M00_AXI_arburst,
    M00_AXI_arcache,
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
    M00_AXI_awlen,
    M00_AXI_awlock,
    M00_AXI_awprot,
    M00_AXI_awqos,
    M00_AXI_awready,
    M00_AXI_awsize,
    M00_AXI_awvalid,
    M00_AXI_bready,
    M00_AXI_bresp,
    M00_AXI_bvalid,
    M00_AXI_rdata,
    M00_AXI_rlast,
    M00_AXI_rready,
    M00_AXI_rresp,
    M00_AXI_rvalid,
    M00_AXI_wdata,
    M00_AXI_wlast,
    M00_AXI_wready,
    M00_AXI_wstrb,
    M00_AXI_wvalid,
    S00_ACLK,
    S00_ARESETN,
    S00_AXI_araddr,
    S00_AXI_arburst,
    S00_AXI_arcache,
    S00_AXI_arlen,
    S00_AXI_arlock,
    S00_AXI_arprot,
    S00_AXI_arqos,
    S00_AXI_arready,
    S00_AXI_arregion,
    S00_AXI_arsize,
    S00_AXI_arvalid,
    S00_AXI_awaddr,
    S00_AXI_awburst,
    S00_AXI_awcache,
    S00_AXI_awlen,
    S00_AXI_awlock,
    S00_AXI_awprot,
    S00_AXI_awqos,
    S00_AXI_awready,
    S00_AXI_awregion,
    S00_AXI_awsize,
    S00_AXI_awvalid,
    S00_AXI_bready,
    S00_AXI_bresp,
    S00_AXI_bvalid,
    S00_AXI_rdata,
    S00_AXI_rlast,
    S00_AXI_rready,
    S00_AXI_rresp,
    S00_AXI_rvalid,
    S00_AXI_wdata,
    S00_AXI_wlast,
    S00_AXI_wready,
    S00_AXI_wstrb,
    S00_AXI_wvalid);
  input ACLK;
  input ARESETN;
  input M00_ACLK;
  input M00_ARESETN;
  output [37:0]M00_AXI_araddr;
  output [1:0]M00_AXI_arburst;
  output [3:0]M00_AXI_arcache;
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
  output [7:0]M00_AXI_awlen;
  output [0:0]M00_AXI_awlock;
  output [2:0]M00_AXI_awprot;
  output [3:0]M00_AXI_awqos;
  input M00_AXI_awready;
  output [2:0]M00_AXI_awsize;
  output M00_AXI_awvalid;
  output M00_AXI_bready;
  input [1:0]M00_AXI_bresp;
  input M00_AXI_bvalid;
  input [511:0]M00_AXI_rdata;
  input M00_AXI_rlast;
  output M00_AXI_rready;
  input [1:0]M00_AXI_rresp;
  input M00_AXI_rvalid;
  output [511:0]M00_AXI_wdata;
  output M00_AXI_wlast;
  input M00_AXI_wready;
  output [63:0]M00_AXI_wstrb;
  output M00_AXI_wvalid;
  input S00_ACLK;
  input S00_ARESETN;
  input [37:0]S00_AXI_araddr;
  input [1:0]S00_AXI_arburst;
  input [3:0]S00_AXI_arcache;
  input [7:0]S00_AXI_arlen;
  input [1:0]S00_AXI_arlock;
  input [2:0]S00_AXI_arprot;
  input [3:0]S00_AXI_arqos;
  output S00_AXI_arready;
  input [3:0]S00_AXI_arregion;
  input [2:0]S00_AXI_arsize;
  input S00_AXI_arvalid;
  input [37:0]S00_AXI_awaddr;
  input [1:0]S00_AXI_awburst;
  input [3:0]S00_AXI_awcache;
  input [7:0]S00_AXI_awlen;
  input [1:0]S00_AXI_awlock;
  input [2:0]S00_AXI_awprot;
  input [3:0]S00_AXI_awqos;
  output S00_AXI_awready;
  input [3:0]S00_AXI_awregion;
  input [2:0]S00_AXI_awsize;
  input S00_AXI_awvalid;
  input S00_AXI_bready;
  output [1:0]S00_AXI_bresp;
  output S00_AXI_bvalid;
  output [511:0]S00_AXI_rdata;
  output S00_AXI_rlast;
  input S00_AXI_rready;
  output [1:0]S00_AXI_rresp;
  output S00_AXI_rvalid;
  input [511:0]S00_AXI_wdata;
  input S00_AXI_wlast;
  output S00_AXI_wready;
  input [63:0]S00_AXI_wstrb;
  input S00_AXI_wvalid;

  wire M00_ACLK;
  wire M00_ARESETN;
  wire [37:0]M00_AXI_araddr;
  wire [1:0]M00_AXI_arburst;
  wire [3:0]M00_AXI_arcache;
  wire [7:0]M00_AXI_arlen;
  wire [0:0]M00_AXI_arlock;
  wire [2:0]M00_AXI_arprot;
  wire [3:0]M00_AXI_arqos;
  wire M00_AXI_arready;
  wire [2:0]M00_AXI_arsize;
  wire M00_AXI_arvalid;
  wire [37:0]M00_AXI_awaddr;
  wire [1:0]M00_AXI_awburst;
  wire [3:0]M00_AXI_awcache;
  wire [7:0]M00_AXI_awlen;
  wire [0:0]M00_AXI_awlock;
  wire [2:0]M00_AXI_awprot;
  wire [3:0]M00_AXI_awqos;
  wire M00_AXI_awready;
  wire [2:0]M00_AXI_awsize;
  wire M00_AXI_awvalid;
  wire M00_AXI_bready;
  wire [1:0]M00_AXI_bresp;
  wire M00_AXI_bvalid;
  wire [511:0]M00_AXI_rdata;
  wire M00_AXI_rlast;
  wire M00_AXI_rready;
  wire [1:0]M00_AXI_rresp;
  wire M00_AXI_rvalid;
  wire [511:0]M00_AXI_wdata;
  wire M00_AXI_wlast;
  wire M00_AXI_wready;
  wire [63:0]M00_AXI_wstrb;
  wire M00_AXI_wvalid;
  wire S00_ACLK;
  wire S00_ARESETN;
  wire [37:0]S00_AXI_araddr;
  wire [1:0]S00_AXI_arburst;
  wire [3:0]S00_AXI_arcache;
  wire [7:0]S00_AXI_arlen;
  wire [1:0]S00_AXI_arlock;
  wire [2:0]S00_AXI_arprot;
  wire [3:0]S00_AXI_arqos;
  wire S00_AXI_arready;
  wire [3:0]S00_AXI_arregion;
  wire [2:0]S00_AXI_arsize;
  wire S00_AXI_arvalid;
  wire [37:0]S00_AXI_awaddr;
  wire [1:0]S00_AXI_awburst;
  wire [3:0]S00_AXI_awcache;
  wire [7:0]S00_AXI_awlen;
  wire [1:0]S00_AXI_awlock;
  wire [2:0]S00_AXI_awprot;
  wire [3:0]S00_AXI_awqos;
  wire S00_AXI_awready;
  wire [3:0]S00_AXI_awregion;
  wire [2:0]S00_AXI_awsize;
  wire S00_AXI_awvalid;
  wire S00_AXI_bready;
  wire [1:0]S00_AXI_bresp;
  wire S00_AXI_bvalid;
  wire [511:0]S00_AXI_rdata;
  wire S00_AXI_rlast;
  wire S00_AXI_rready;
  wire [1:0]S00_AXI_rresp;
  wire S00_AXI_rvalid;
  wire [511:0]S00_AXI_wdata;
  wire S00_AXI_wlast;
  wire S00_AXI_wready;
  wire [63:0]S00_AXI_wstrb;
  wire S00_AXI_wvalid;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_s00_couplers_imp_1328SXF s00_couplers
       (.M00_ACLK(M00_ACLK),
        .M00_ARESETN(M00_ARESETN),
        .M00_AXI_araddr(M00_AXI_araddr),
        .M00_AXI_arburst(M00_AXI_arburst),
        .M00_AXI_arcache(M00_AXI_arcache),
        .M00_AXI_arlen(M00_AXI_arlen),
        .M00_AXI_arlock(M00_AXI_arlock),
        .M00_AXI_arprot(M00_AXI_arprot),
        .M00_AXI_arqos(M00_AXI_arqos),
        .M00_AXI_arready(M00_AXI_arready),
        .M00_AXI_arsize(M00_AXI_arsize),
        .M00_AXI_arvalid(M00_AXI_arvalid),
        .M00_AXI_awaddr(M00_AXI_awaddr),
        .M00_AXI_awburst(M00_AXI_awburst),
        .M00_AXI_awcache(M00_AXI_awcache),
        .M00_AXI_awlen(M00_AXI_awlen),
        .M00_AXI_awlock(M00_AXI_awlock),
        .M00_AXI_awprot(M00_AXI_awprot),
        .M00_AXI_awqos(M00_AXI_awqos),
        .M00_AXI_awready(M00_AXI_awready),
        .M00_AXI_awsize(M00_AXI_awsize),
        .M00_AXI_awvalid(M00_AXI_awvalid),
        .M00_AXI_bready(M00_AXI_bready),
        .M00_AXI_bresp(M00_AXI_bresp),
        .M00_AXI_bvalid(M00_AXI_bvalid),
        .M00_AXI_rdata(M00_AXI_rdata),
        .M00_AXI_rlast(M00_AXI_rlast),
        .M00_AXI_rready(M00_AXI_rready),
        .M00_AXI_rresp(M00_AXI_rresp),
        .M00_AXI_rvalid(M00_AXI_rvalid),
        .M00_AXI_wdata(M00_AXI_wdata),
        .M00_AXI_wlast(M00_AXI_wlast),
        .M00_AXI_wready(M00_AXI_wready),
        .M00_AXI_wstrb(M00_AXI_wstrb),
        .M00_AXI_wvalid(M00_AXI_wvalid),
        .S00_ACLK(S00_ACLK),
        .S00_ARESETN(S00_ARESETN),
        .S00_AXI_araddr(S00_AXI_araddr),
        .S00_AXI_arburst(S00_AXI_arburst),
        .S00_AXI_arcache(S00_AXI_arcache),
        .S00_AXI_arlen(S00_AXI_arlen),
        .S00_AXI_arlock(S00_AXI_arlock[0]),
        .S00_AXI_arprot(S00_AXI_arprot),
        .S00_AXI_arqos(S00_AXI_arqos),
        .S00_AXI_arready(S00_AXI_arready),
        .S00_AXI_arregion(S00_AXI_arregion),
        .S00_AXI_arsize(S00_AXI_arsize),
        .S00_AXI_arvalid(S00_AXI_arvalid),
        .S00_AXI_awaddr(S00_AXI_awaddr),
        .S00_AXI_awburst(S00_AXI_awburst),
        .S00_AXI_awcache(S00_AXI_awcache),
        .S00_AXI_awlen(S00_AXI_awlen),
        .S00_AXI_awlock(S00_AXI_awlock[0]),
        .S00_AXI_awprot(S00_AXI_awprot),
        .S00_AXI_awqos(S00_AXI_awqos),
        .S00_AXI_awready(S00_AXI_awready),
        .S00_AXI_awregion(S00_AXI_awregion),
        .S00_AXI_awsize(S00_AXI_awsize),
        .S00_AXI_awvalid(S00_AXI_awvalid),
        .S00_AXI_bready(S00_AXI_bready),
        .S00_AXI_bresp(S00_AXI_bresp),
        .S00_AXI_bvalid(S00_AXI_bvalid),
        .S00_AXI_rdata(S00_AXI_rdata),
        .S00_AXI_rlast(S00_AXI_rlast),
        .S00_AXI_rready(S00_AXI_rready),
        .S00_AXI_rresp(S00_AXI_rresp),
        .S00_AXI_rvalid(S00_AXI_rvalid),
        .S00_AXI_wdata(S00_AXI_wdata),
        .S00_AXI_wlast(S00_AXI_wlast),
        .S00_AXI_wready(S00_AXI_wready),
        .S00_AXI_wstrb(S00_AXI_wstrb),
        .S00_AXI_wvalid(S00_AXI_wvalid));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_2fd7_m_axi_interconnect_M01_AXI_0
   (ACLK,
    ARESETN,
    M00_ACLK,
    M00_ARESETN,
    M00_AXI_araddr,
    M00_AXI_arburst,
    M00_AXI_arcache,
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
    M00_AXI_awlen,
    M00_AXI_awlock,
    M00_AXI_awprot,
    M00_AXI_awqos,
    M00_AXI_awready,
    M00_AXI_awsize,
    M00_AXI_awvalid,
    M00_AXI_bready,
    M00_AXI_bresp,
    M00_AXI_bvalid,
    M00_AXI_rdata,
    M00_AXI_rlast,
    M00_AXI_rready,
    M00_AXI_rresp,
    M00_AXI_rvalid,
    M00_AXI_wdata,
    M00_AXI_wlast,
    M00_AXI_wready,
    M00_AXI_wstrb,
    M00_AXI_wvalid,
    S00_ACLK,
    S00_ARESETN,
    S00_AXI_araddr,
    S00_AXI_arburst,
    S00_AXI_arcache,
    S00_AXI_arlen,
    S00_AXI_arlock,
    S00_AXI_arprot,
    S00_AXI_arqos,
    S00_AXI_arready,
    S00_AXI_arregion,
    S00_AXI_arsize,
    S00_AXI_arvalid,
    S00_AXI_awaddr,
    S00_AXI_awburst,
    S00_AXI_awcache,
    S00_AXI_awlen,
    S00_AXI_awlock,
    S00_AXI_awprot,
    S00_AXI_awqos,
    S00_AXI_awready,
    S00_AXI_awregion,
    S00_AXI_awsize,
    S00_AXI_awvalid,
    S00_AXI_bready,
    S00_AXI_bresp,
    S00_AXI_bvalid,
    S00_AXI_rdata,
    S00_AXI_rlast,
    S00_AXI_rready,
    S00_AXI_rresp,
    S00_AXI_rvalid,
    S00_AXI_wdata,
    S00_AXI_wlast,
    S00_AXI_wready,
    S00_AXI_wstrb,
    S00_AXI_wvalid);
  input ACLK;
  input ARESETN;
  input M00_ACLK;
  input M00_ARESETN;
  output [37:0]M00_AXI_araddr;
  output [1:0]M00_AXI_arburst;
  output [3:0]M00_AXI_arcache;
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
  output [7:0]M00_AXI_awlen;
  output [0:0]M00_AXI_awlock;
  output [2:0]M00_AXI_awprot;
  output [3:0]M00_AXI_awqos;
  input M00_AXI_awready;
  output [2:0]M00_AXI_awsize;
  output M00_AXI_awvalid;
  output M00_AXI_bready;
  input [1:0]M00_AXI_bresp;
  input M00_AXI_bvalid;
  input [511:0]M00_AXI_rdata;
  input M00_AXI_rlast;
  output M00_AXI_rready;
  input [1:0]M00_AXI_rresp;
  input M00_AXI_rvalid;
  output [511:0]M00_AXI_wdata;
  output M00_AXI_wlast;
  input M00_AXI_wready;
  output [63:0]M00_AXI_wstrb;
  output M00_AXI_wvalid;
  input S00_ACLK;
  input S00_ARESETN;
  input [37:0]S00_AXI_araddr;
  input [1:0]S00_AXI_arburst;
  input [3:0]S00_AXI_arcache;
  input [7:0]S00_AXI_arlen;
  input [1:0]S00_AXI_arlock;
  input [2:0]S00_AXI_arprot;
  input [3:0]S00_AXI_arqos;
  output S00_AXI_arready;
  input [3:0]S00_AXI_arregion;
  input [2:0]S00_AXI_arsize;
  input S00_AXI_arvalid;
  input [37:0]S00_AXI_awaddr;
  input [1:0]S00_AXI_awburst;
  input [3:0]S00_AXI_awcache;
  input [7:0]S00_AXI_awlen;
  input [1:0]S00_AXI_awlock;
  input [2:0]S00_AXI_awprot;
  input [3:0]S00_AXI_awqos;
  output S00_AXI_awready;
  input [3:0]S00_AXI_awregion;
  input [2:0]S00_AXI_awsize;
  input S00_AXI_awvalid;
  input S00_AXI_bready;
  output [1:0]S00_AXI_bresp;
  output S00_AXI_bvalid;
  output [511:0]S00_AXI_rdata;
  output S00_AXI_rlast;
  input S00_AXI_rready;
  output [1:0]S00_AXI_rresp;
  output S00_AXI_rvalid;
  input [511:0]S00_AXI_wdata;
  input S00_AXI_wlast;
  output S00_AXI_wready;
  input [63:0]S00_AXI_wstrb;
  input S00_AXI_wvalid;

  wire M00_ACLK;
  wire M00_ARESETN;
  wire [37:0]M00_AXI_araddr;
  wire [1:0]M00_AXI_arburst;
  wire [3:0]M00_AXI_arcache;
  wire [7:0]M00_AXI_arlen;
  wire [0:0]M00_AXI_arlock;
  wire [2:0]M00_AXI_arprot;
  wire [3:0]M00_AXI_arqos;
  wire M00_AXI_arready;
  wire [2:0]M00_AXI_arsize;
  wire M00_AXI_arvalid;
  wire [37:0]M00_AXI_awaddr;
  wire [1:0]M00_AXI_awburst;
  wire [3:0]M00_AXI_awcache;
  wire [7:0]M00_AXI_awlen;
  wire [0:0]M00_AXI_awlock;
  wire [2:0]M00_AXI_awprot;
  wire [3:0]M00_AXI_awqos;
  wire M00_AXI_awready;
  wire [2:0]M00_AXI_awsize;
  wire M00_AXI_awvalid;
  wire M00_AXI_bready;
  wire [1:0]M00_AXI_bresp;
  wire M00_AXI_bvalid;
  wire [511:0]M00_AXI_rdata;
  wire M00_AXI_rlast;
  wire M00_AXI_rready;
  wire [1:0]M00_AXI_rresp;
  wire M00_AXI_rvalid;
  wire [511:0]M00_AXI_wdata;
  wire M00_AXI_wlast;
  wire M00_AXI_wready;
  wire [63:0]M00_AXI_wstrb;
  wire M00_AXI_wvalid;
  wire S00_ACLK;
  wire S00_ARESETN;
  wire [37:0]S00_AXI_araddr;
  wire [1:0]S00_AXI_arburst;
  wire [3:0]S00_AXI_arcache;
  wire [7:0]S00_AXI_arlen;
  wire [1:0]S00_AXI_arlock;
  wire [2:0]S00_AXI_arprot;
  wire [3:0]S00_AXI_arqos;
  wire S00_AXI_arready;
  wire [3:0]S00_AXI_arregion;
  wire [2:0]S00_AXI_arsize;
  wire S00_AXI_arvalid;
  wire [37:0]S00_AXI_awaddr;
  wire [1:0]S00_AXI_awburst;
  wire [3:0]S00_AXI_awcache;
  wire [7:0]S00_AXI_awlen;
  wire [1:0]S00_AXI_awlock;
  wire [2:0]S00_AXI_awprot;
  wire [3:0]S00_AXI_awqos;
  wire S00_AXI_awready;
  wire [3:0]S00_AXI_awregion;
  wire [2:0]S00_AXI_awsize;
  wire S00_AXI_awvalid;
  wire S00_AXI_bready;
  wire [1:0]S00_AXI_bresp;
  wire S00_AXI_bvalid;
  wire [511:0]S00_AXI_rdata;
  wire S00_AXI_rlast;
  wire S00_AXI_rready;
  wire [1:0]S00_AXI_rresp;
  wire S00_AXI_rvalid;
  wire [511:0]S00_AXI_wdata;
  wire S00_AXI_wlast;
  wire S00_AXI_wready;
  wire [63:0]S00_AXI_wstrb;
  wire S00_AXI_wvalid;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_s00_couplers_imp_BG5KE5 s00_couplers
       (.M00_ACLK(M00_ACLK),
        .M00_ARESETN(M00_ARESETN),
        .M00_AXI_araddr(M00_AXI_araddr),
        .M00_AXI_arburst(M00_AXI_arburst),
        .M00_AXI_arcache(M00_AXI_arcache),
        .M00_AXI_arlen(M00_AXI_arlen),
        .M00_AXI_arlock(M00_AXI_arlock),
        .M00_AXI_arprot(M00_AXI_arprot),
        .M00_AXI_arqos(M00_AXI_arqos),
        .M00_AXI_arready(M00_AXI_arready),
        .M00_AXI_arsize(M00_AXI_arsize),
        .M00_AXI_arvalid(M00_AXI_arvalid),
        .M00_AXI_awaddr(M00_AXI_awaddr),
        .M00_AXI_awburst(M00_AXI_awburst),
        .M00_AXI_awcache(M00_AXI_awcache),
        .M00_AXI_awlen(M00_AXI_awlen),
        .M00_AXI_awlock(M00_AXI_awlock),
        .M00_AXI_awprot(M00_AXI_awprot),
        .M00_AXI_awqos(M00_AXI_awqos),
        .M00_AXI_awready(M00_AXI_awready),
        .M00_AXI_awsize(M00_AXI_awsize),
        .M00_AXI_awvalid(M00_AXI_awvalid),
        .M00_AXI_bready(M00_AXI_bready),
        .M00_AXI_bresp(M00_AXI_bresp),
        .M00_AXI_bvalid(M00_AXI_bvalid),
        .M00_AXI_rdata(M00_AXI_rdata),
        .M00_AXI_rlast(M00_AXI_rlast),
        .M00_AXI_rready(M00_AXI_rready),
        .M00_AXI_rresp(M00_AXI_rresp),
        .M00_AXI_rvalid(M00_AXI_rvalid),
        .M00_AXI_wdata(M00_AXI_wdata),
        .M00_AXI_wlast(M00_AXI_wlast),
        .M00_AXI_wready(M00_AXI_wready),
        .M00_AXI_wstrb(M00_AXI_wstrb),
        .M00_AXI_wvalid(M00_AXI_wvalid),
        .S00_ACLK(S00_ACLK),
        .S00_ARESETN(S00_ARESETN),
        .S00_AXI_araddr(S00_AXI_araddr),
        .S00_AXI_arburst(S00_AXI_arburst),
        .S00_AXI_arcache(S00_AXI_arcache),
        .S00_AXI_arlen(S00_AXI_arlen),
        .S00_AXI_arlock(S00_AXI_arlock[0]),
        .S00_AXI_arprot(S00_AXI_arprot),
        .S00_AXI_arqos(S00_AXI_arqos),
        .S00_AXI_arready(S00_AXI_arready),
        .S00_AXI_arregion(S00_AXI_arregion),
        .S00_AXI_arsize(S00_AXI_arsize),
        .S00_AXI_arvalid(S00_AXI_arvalid),
        .S00_AXI_awaddr(S00_AXI_awaddr),
        .S00_AXI_awburst(S00_AXI_awburst),
        .S00_AXI_awcache(S00_AXI_awcache),
        .S00_AXI_awlen(S00_AXI_awlen),
        .S00_AXI_awlock(S00_AXI_awlock[0]),
        .S00_AXI_awprot(S00_AXI_awprot),
        .S00_AXI_awqos(S00_AXI_awqos),
        .S00_AXI_awready(S00_AXI_awready),
        .S00_AXI_awregion(S00_AXI_awregion),
        .S00_AXI_awsize(S00_AXI_awsize),
        .S00_AXI_awvalid(S00_AXI_awvalid),
        .S00_AXI_bready(S00_AXI_bready),
        .S00_AXI_bresp(S00_AXI_bresp),
        .S00_AXI_bvalid(S00_AXI_bvalid),
        .S00_AXI_rdata(S00_AXI_rdata),
        .S00_AXI_rlast(S00_AXI_rlast),
        .S00_AXI_rready(S00_AXI_rready),
        .S00_AXI_rresp(S00_AXI_rresp),
        .S00_AXI_rvalid(S00_AXI_rvalid),
        .S00_AXI_wdata(S00_AXI_wdata),
        .S00_AXI_wlast(S00_AXI_wlast),
        .S00_AXI_wready(S00_AXI_wready),
        .S00_AXI_wstrb(S00_AXI_wstrb),
        .S00_AXI_wvalid(S00_AXI_wvalid));
endmodule

(* X_CORE_INFO = "axifull_bridge,Vivado 2016.3_sdx" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_2fd7_master_bridge_0_0
   (aclk,
    aresetn,
    m_axi_awid,
    m_axi_awaddr,
    m_axi_awlen,
    m_axi_awsize,
    m_axi_awburst,
    m_axi_awlock,
    m_axi_awprot,
    m_axi_awqos,
    m_axi_awcache,
    m_axi_awvalid,
    m_axi_awready,
    m_axi_wdata,
    m_axi_wstrb,
    m_axi_wlast,
    m_axi_wvalid,
    m_axi_wready,
    m_axi_bid,
    m_axi_bresp,
    m_axi_bvalid,
    m_axi_bready,
    m_axi_arid,
    m_axi_araddr,
    m_axi_arlen,
    m_axi_arsize,
    m_axi_arburst,
    m_axi_arlock,
    m_axi_arprot,
    m_axi_arqos,
    m_axi_arcache,
    m_axi_arvalid,
    m_axi_arready,
    m_axi_rid,
    m_axi_rdata,
    m_axi_rresp,
    m_axi_rlast,
    m_axi_rvalid,
    m_axi_rready,
    s_axi_awid,
    s_axi_awaddr,
    s_axi_awlen,
    s_axi_awsize,
    s_axi_awburst,
    s_axi_awlock,
    s_axi_awprot,
    s_axi_awqos,
    s_axi_awcache,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wlast,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bid,
    s_axi_bresp,
    s_axi_bvalid,
    s_axi_bready,
    s_axi_arid,
    s_axi_araddr,
    s_axi_arlen,
    s_axi_arsize,
    s_axi_arburst,
    s_axi_arlock,
    s_axi_arprot,
    s_axi_arqos,
    s_axi_arcache,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rid,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rlast,
    s_axi_rvalid,
    s_axi_rready);
  input aclk;
  input aresetn;
  output [3:0]m_axi_awid;
  output [37:0]m_axi_awaddr;
  output [7:0]m_axi_awlen;
  output [2:0]m_axi_awsize;
  output [1:0]m_axi_awburst;
  output [0:0]m_axi_awlock;
  output [2:0]m_axi_awprot;
  output [3:0]m_axi_awqos;
  output [3:0]m_axi_awcache;
  output m_axi_awvalid;
  input m_axi_awready;
  output [511:0]m_axi_wdata;
  output [63:0]m_axi_wstrb;
  output m_axi_wlast;
  output m_axi_wvalid;
  input m_axi_wready;
  input [3:0]m_axi_bid;
  input [1:0]m_axi_bresp;
  input m_axi_bvalid;
  output m_axi_bready;
  output [3:0]m_axi_arid;
  output [37:0]m_axi_araddr;
  output [7:0]m_axi_arlen;
  output [2:0]m_axi_arsize;
  output [1:0]m_axi_arburst;
  output [0:0]m_axi_arlock;
  output [2:0]m_axi_arprot;
  output [3:0]m_axi_arqos;
  output [3:0]m_axi_arcache;
  output m_axi_arvalid;
  input m_axi_arready;
  input [3:0]m_axi_rid;
  input [511:0]m_axi_rdata;
  input [1:0]m_axi_rresp;
  input m_axi_rlast;
  input m_axi_rvalid;
  output m_axi_rready;
  input [0:0]s_axi_awid;
  input [37:0]s_axi_awaddr;
  input [7:0]s_axi_awlen;
  input [2:0]s_axi_awsize;
  input [1:0]s_axi_awburst;
  input [0:0]s_axi_awlock;
  input [2:0]s_axi_awprot;
  input [3:0]s_axi_awqos;
  input [3:0]s_axi_awcache;
  input s_axi_awvalid;
  output s_axi_awready;
  input [511:0]s_axi_wdata;
  input [63:0]s_axi_wstrb;
  input s_axi_wlast;
  input s_axi_wvalid;
  output s_axi_wready;
  output [0:0]s_axi_bid;
  output [1:0]s_axi_bresp;
  output s_axi_bvalid;
  input s_axi_bready;
  input [0:0]s_axi_arid;
  input [37:0]s_axi_araddr;
  input [7:0]s_axi_arlen;
  input [2:0]s_axi_arsize;
  input [1:0]s_axi_arburst;
  input [0:0]s_axi_arlock;
  input [2:0]s_axi_arprot;
  input [3:0]s_axi_arqos;
  input [3:0]s_axi_arcache;
  input s_axi_arvalid;
  output s_axi_arready;
  output [0:0]s_axi_rid;
  output [511:0]s_axi_rdata;
  output [1:0]s_axi_rresp;
  output s_axi_rlast;
  output s_axi_rvalid;
  input s_axi_rready;


endmodule

(* X_CORE_INFO = "axifull_bridge,Vivado 2016.3_sdx" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_2fd7_master_bridge_1_0
   (aclk,
    aresetn,
    m_axi_awid,
    m_axi_awaddr,
    m_axi_awlen,
    m_axi_awsize,
    m_axi_awburst,
    m_axi_awlock,
    m_axi_awprot,
    m_axi_awqos,
    m_axi_awcache,
    m_axi_awvalid,
    m_axi_awready,
    m_axi_wdata,
    m_axi_wstrb,
    m_axi_wlast,
    m_axi_wvalid,
    m_axi_wready,
    m_axi_bid,
    m_axi_bresp,
    m_axi_bvalid,
    m_axi_bready,
    m_axi_arid,
    m_axi_araddr,
    m_axi_arlen,
    m_axi_arsize,
    m_axi_arburst,
    m_axi_arlock,
    m_axi_arprot,
    m_axi_arqos,
    m_axi_arcache,
    m_axi_arvalid,
    m_axi_arready,
    m_axi_rid,
    m_axi_rdata,
    m_axi_rresp,
    m_axi_rlast,
    m_axi_rvalid,
    m_axi_rready,
    s_axi_awid,
    s_axi_awaddr,
    s_axi_awlen,
    s_axi_awsize,
    s_axi_awburst,
    s_axi_awlock,
    s_axi_awprot,
    s_axi_awqos,
    s_axi_awcache,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wlast,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bid,
    s_axi_bresp,
    s_axi_bvalid,
    s_axi_bready,
    s_axi_arid,
    s_axi_araddr,
    s_axi_arlen,
    s_axi_arsize,
    s_axi_arburst,
    s_axi_arlock,
    s_axi_arprot,
    s_axi_arqos,
    s_axi_arcache,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rid,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rlast,
    s_axi_rvalid,
    s_axi_rready);
  input aclk;
  input aresetn;
  output [3:0]m_axi_awid;
  output [37:0]m_axi_awaddr;
  output [7:0]m_axi_awlen;
  output [2:0]m_axi_awsize;
  output [1:0]m_axi_awburst;
  output [0:0]m_axi_awlock;
  output [2:0]m_axi_awprot;
  output [3:0]m_axi_awqos;
  output [3:0]m_axi_awcache;
  output m_axi_awvalid;
  input m_axi_awready;
  output [511:0]m_axi_wdata;
  output [63:0]m_axi_wstrb;
  output m_axi_wlast;
  output m_axi_wvalid;
  input m_axi_wready;
  input [3:0]m_axi_bid;
  input [1:0]m_axi_bresp;
  input m_axi_bvalid;
  output m_axi_bready;
  output [3:0]m_axi_arid;
  output [37:0]m_axi_araddr;
  output [7:0]m_axi_arlen;
  output [2:0]m_axi_arsize;
  output [1:0]m_axi_arburst;
  output [0:0]m_axi_arlock;
  output [2:0]m_axi_arprot;
  output [3:0]m_axi_arqos;
  output [3:0]m_axi_arcache;
  output m_axi_arvalid;
  input m_axi_arready;
  input [3:0]m_axi_rid;
  input [511:0]m_axi_rdata;
  input [1:0]m_axi_rresp;
  input m_axi_rlast;
  input m_axi_rvalid;
  output m_axi_rready;
  input [0:0]s_axi_awid;
  input [37:0]s_axi_awaddr;
  input [7:0]s_axi_awlen;
  input [2:0]s_axi_awsize;
  input [1:0]s_axi_awburst;
  input [0:0]s_axi_awlock;
  input [2:0]s_axi_awprot;
  input [3:0]s_axi_awqos;
  input [3:0]s_axi_awcache;
  input s_axi_awvalid;
  output s_axi_awready;
  input [511:0]s_axi_wdata;
  input [63:0]s_axi_wstrb;
  input s_axi_wlast;
  input s_axi_wvalid;
  output s_axi_wready;
  output [0:0]s_axi_bid;
  output [1:0]s_axi_bresp;
  output s_axi_bvalid;
  input s_axi_bready;
  input [0:0]s_axi_arid;
  input [37:0]s_axi_araddr;
  input [7:0]s_axi_arlen;
  input [2:0]s_axi_arsize;
  input [1:0]s_axi_arburst;
  input [0:0]s_axi_arlock;
  input [2:0]s_axi_arprot;
  input [3:0]s_axi_arqos;
  input [3:0]s_axi_arcache;
  input s_axi_arvalid;
  output s_axi_arready;
  output [0:0]s_axi_rid;
  output [511:0]s_axi_rdata;
  output [1:0]s_axi_rresp;
  output s_axi_rlast;
  output s_axi_rvalid;
  input s_axi_rready;


endmodule

(* X_CORE_INFO = "axi_register_slice_v2_1_10_axi_register_slice,Vivado 2016.3_sdx" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_2fd7_s00_regslice_0
   (aclk,
    aresetn,
    s_axi_awaddr,
    s_axi_awlen,
    s_axi_awsize,
    s_axi_awburst,
    s_axi_awlock,
    s_axi_awcache,
    s_axi_awprot,
    s_axi_awregion,
    s_axi_awqos,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wlast,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bresp,
    s_axi_bvalid,
    s_axi_bready,
    s_axi_araddr,
    s_axi_arlen,
    s_axi_arsize,
    s_axi_arburst,
    s_axi_arlock,
    s_axi_arcache,
    s_axi_arprot,
    s_axi_arregion,
    s_axi_arqos,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rlast,
    s_axi_rvalid,
    s_axi_rready,
    m_axi_awaddr,
    m_axi_awlen,
    m_axi_awsize,
    m_axi_awburst,
    m_axi_awlock,
    m_axi_awcache,
    m_axi_awprot,
    m_axi_awregion,
    m_axi_awqos,
    m_axi_awvalid,
    m_axi_awready,
    m_axi_wdata,
    m_axi_wstrb,
    m_axi_wlast,
    m_axi_wvalid,
    m_axi_wready,
    m_axi_bresp,
    m_axi_bvalid,
    m_axi_bready,
    m_axi_araddr,
    m_axi_arlen,
    m_axi_arsize,
    m_axi_arburst,
    m_axi_arlock,
    m_axi_arcache,
    m_axi_arprot,
    m_axi_arregion,
    m_axi_arqos,
    m_axi_arvalid,
    m_axi_arready,
    m_axi_rdata,
    m_axi_rresp,
    m_axi_rlast,
    m_axi_rvalid,
    m_axi_rready);
  input aclk;
  input aresetn;
  input [37:0]s_axi_awaddr;
  input [7:0]s_axi_awlen;
  input [2:0]s_axi_awsize;
  input [1:0]s_axi_awburst;
  input [0:0]s_axi_awlock;
  input [3:0]s_axi_awcache;
  input [2:0]s_axi_awprot;
  input [3:0]s_axi_awregion;
  input [3:0]s_axi_awqos;
  input s_axi_awvalid;
  output s_axi_awready;
  input [511:0]s_axi_wdata;
  input [63:0]s_axi_wstrb;
  input s_axi_wlast;
  input s_axi_wvalid;
  output s_axi_wready;
  output [1:0]s_axi_bresp;
  output s_axi_bvalid;
  input s_axi_bready;
  input [37:0]s_axi_araddr;
  input [7:0]s_axi_arlen;
  input [2:0]s_axi_arsize;
  input [1:0]s_axi_arburst;
  input [0:0]s_axi_arlock;
  input [3:0]s_axi_arcache;
  input [2:0]s_axi_arprot;
  input [3:0]s_axi_arregion;
  input [3:0]s_axi_arqos;
  input s_axi_arvalid;
  output s_axi_arready;
  output [511:0]s_axi_rdata;
  output [1:0]s_axi_rresp;
  output s_axi_rlast;
  output s_axi_rvalid;
  input s_axi_rready;
  output [37:0]m_axi_awaddr;
  output [7:0]m_axi_awlen;
  output [2:0]m_axi_awsize;
  output [1:0]m_axi_awburst;
  output [0:0]m_axi_awlock;
  output [3:0]m_axi_awcache;
  output [2:0]m_axi_awprot;
  output [3:0]m_axi_awregion;
  output [3:0]m_axi_awqos;
  output m_axi_awvalid;
  input m_axi_awready;
  output [511:0]m_axi_wdata;
  output [63:0]m_axi_wstrb;
  output m_axi_wlast;
  output m_axi_wvalid;
  input m_axi_wready;
  input [1:0]m_axi_bresp;
  input m_axi_bvalid;
  output m_axi_bready;
  output [37:0]m_axi_araddr;
  output [7:0]m_axi_arlen;
  output [2:0]m_axi_arsize;
  output [1:0]m_axi_arburst;
  output [0:0]m_axi_arlock;
  output [3:0]m_axi_arcache;
  output [2:0]m_axi_arprot;
  output [3:0]m_axi_arregion;
  output [3:0]m_axi_arqos;
  output m_axi_arvalid;
  input m_axi_arready;
  input [511:0]m_axi_rdata;
  input [1:0]m_axi_rresp;
  input m_axi_rlast;
  input m_axi_rvalid;
  output m_axi_rready;


endmodule

(* X_CORE_INFO = "axi_register_slice_v2_1_10_axi_register_slice,Vivado 2016.3_sdx" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_2fd7_s00_regslice_1
   (aclk,
    aresetn,
    s_axi_awaddr,
    s_axi_awlen,
    s_axi_awsize,
    s_axi_awburst,
    s_axi_awlock,
    s_axi_awcache,
    s_axi_awprot,
    s_axi_awregion,
    s_axi_awqos,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wlast,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bresp,
    s_axi_bvalid,
    s_axi_bready,
    s_axi_araddr,
    s_axi_arlen,
    s_axi_arsize,
    s_axi_arburst,
    s_axi_arlock,
    s_axi_arcache,
    s_axi_arprot,
    s_axi_arregion,
    s_axi_arqos,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rlast,
    s_axi_rvalid,
    s_axi_rready,
    m_axi_awaddr,
    m_axi_awlen,
    m_axi_awsize,
    m_axi_awburst,
    m_axi_awlock,
    m_axi_awcache,
    m_axi_awprot,
    m_axi_awregion,
    m_axi_awqos,
    m_axi_awvalid,
    m_axi_awready,
    m_axi_wdata,
    m_axi_wstrb,
    m_axi_wlast,
    m_axi_wvalid,
    m_axi_wready,
    m_axi_bresp,
    m_axi_bvalid,
    m_axi_bready,
    m_axi_araddr,
    m_axi_arlen,
    m_axi_arsize,
    m_axi_arburst,
    m_axi_arlock,
    m_axi_arcache,
    m_axi_arprot,
    m_axi_arregion,
    m_axi_arqos,
    m_axi_arvalid,
    m_axi_arready,
    m_axi_rdata,
    m_axi_rresp,
    m_axi_rlast,
    m_axi_rvalid,
    m_axi_rready);
  input aclk;
  input aresetn;
  input [37:0]s_axi_awaddr;
  input [7:0]s_axi_awlen;
  input [2:0]s_axi_awsize;
  input [1:0]s_axi_awburst;
  input [0:0]s_axi_awlock;
  input [3:0]s_axi_awcache;
  input [2:0]s_axi_awprot;
  input [3:0]s_axi_awregion;
  input [3:0]s_axi_awqos;
  input s_axi_awvalid;
  output s_axi_awready;
  input [511:0]s_axi_wdata;
  input [63:0]s_axi_wstrb;
  input s_axi_wlast;
  input s_axi_wvalid;
  output s_axi_wready;
  output [1:0]s_axi_bresp;
  output s_axi_bvalid;
  input s_axi_bready;
  input [37:0]s_axi_araddr;
  input [7:0]s_axi_arlen;
  input [2:0]s_axi_arsize;
  input [1:0]s_axi_arburst;
  input [0:0]s_axi_arlock;
  input [3:0]s_axi_arcache;
  input [2:0]s_axi_arprot;
  input [3:0]s_axi_arregion;
  input [3:0]s_axi_arqos;
  input s_axi_arvalid;
  output s_axi_arready;
  output [511:0]s_axi_rdata;
  output [1:0]s_axi_rresp;
  output s_axi_rlast;
  output s_axi_rvalid;
  input s_axi_rready;
  output [37:0]m_axi_awaddr;
  output [7:0]m_axi_awlen;
  output [2:0]m_axi_awsize;
  output [1:0]m_axi_awburst;
  output [0:0]m_axi_awlock;
  output [3:0]m_axi_awcache;
  output [2:0]m_axi_awprot;
  output [3:0]m_axi_awregion;
  output [3:0]m_axi_awqos;
  output m_axi_awvalid;
  input m_axi_awready;
  output [511:0]m_axi_wdata;
  output [63:0]m_axi_wstrb;
  output m_axi_wlast;
  output m_axi_wvalid;
  input m_axi_wready;
  input [1:0]m_axi_bresp;
  input m_axi_bvalid;
  output m_axi_bready;
  output [37:0]m_axi_araddr;
  output [7:0]m_axi_arlen;
  output [2:0]m_axi_arsize;
  output [1:0]m_axi_arburst;
  output [0:0]m_axi_arlock;
  output [3:0]m_axi_arcache;
  output [2:0]m_axi_arprot;
  output [3:0]m_axi_arregion;
  output [3:0]m_axi_arqos;
  output m_axi_arvalid;
  input m_axi_arready;
  input [511:0]m_axi_rdata;
  input [1:0]m_axi_rresp;
  input m_axi_rlast;
  input m_axi_rvalid;
  output m_axi_rready;


endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_2fd7_s_axi_interconnect_0_0
   (ACLK,
    ARESETN,
    M00_ACLK,
    M00_ARESETN,
    M00_AXI_araddr,
    M00_AXI_arready,
    M00_AXI_arvalid,
    M00_AXI_awaddr,
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
  output [5:0]M00_AXI_araddr;
  input M00_AXI_arready;
  output M00_AXI_arvalid;
  output [5:0]M00_AXI_awaddr;
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
  output [5:0]M01_AXI_araddr;
  input M01_AXI_arready;
  output M01_AXI_arvalid;
  output [5:0]M01_AXI_awaddr;
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
  input S00_ACLK;
  input S00_ARESETN;
  input [16:0]S00_AXI_araddr;
  input [2:0]S00_AXI_arprot;
  output S00_AXI_arready;
  input S00_AXI_arvalid;
  input [16:0]S00_AXI_awaddr;
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

  wire ACLK;
  wire ARESETN;
  wire M00_ACLK;
  wire M00_ARESETN;
  wire [5:0]M00_AXI_araddr;
  wire M00_AXI_arready;
  wire M00_AXI_arvalid;
  wire [5:0]M00_AXI_awaddr;
  wire M00_AXI_awready;
  wire M00_AXI_awvalid;
  wire M00_AXI_bready;
  wire [1:0]M00_AXI_bresp;
  wire M00_AXI_bvalid;
  wire [31:0]M00_AXI_rdata;
  wire M00_AXI_rready;
  wire [1:0]M00_AXI_rresp;
  wire M00_AXI_rvalid;
  wire [31:0]M00_AXI_wdata;
  wire M00_AXI_wready;
  wire [3:0]M00_AXI_wstrb;
  wire M00_AXI_wvalid;
  wire M01_ACLK;
  wire M01_ARESETN;
  wire [5:0]M01_AXI_araddr;
  wire M01_AXI_arready;
  wire M01_AXI_arvalid;
  wire [5:0]M01_AXI_awaddr;
  wire M01_AXI_awready;
  wire M01_AXI_awvalid;
  wire M01_AXI_bready;
  wire [1:0]M01_AXI_bresp;
  wire M01_AXI_bvalid;
  wire [31:0]M01_AXI_rdata;
  wire M01_AXI_rready;
  wire [1:0]M01_AXI_rresp;
  wire M01_AXI_rvalid;
  wire [31:0]M01_AXI_wdata;
  wire M01_AXI_wready;
  wire [3:0]M01_AXI_wstrb;
  wire M01_AXI_wvalid;
  wire S00_ACLK;
  wire S00_ARESETN;
  wire [16:0]S00_AXI_araddr;
  wire [2:0]S00_AXI_arprot;
  wire S00_AXI_arready;
  wire S00_AXI_arvalid;
  wire [16:0]S00_AXI_awaddr;
  wire [2:0]S00_AXI_awprot;
  wire S00_AXI_awready;
  wire S00_AXI_awvalid;
  wire S00_AXI_bready;
  wire [1:0]S00_AXI_bresp;
  wire S00_AXI_bvalid;
  wire [31:0]S00_AXI_rdata;
  wire S00_AXI_rready;
  wire [1:0]S00_AXI_rresp;
  wire S00_AXI_rvalid;
  wire [31:0]S00_AXI_wdata;
  wire S00_AXI_wready;
  wire [3:0]S00_AXI_wstrb;
  wire S00_AXI_wvalid;
  wire [16:0]s00_couplers_to_xbar_ARADDR;
  wire [2:0]s00_couplers_to_xbar_ARPROT;
  wire s00_couplers_to_xbar_ARREADY;
  wire s00_couplers_to_xbar_ARVALID;
  wire [16:0]s00_couplers_to_xbar_AWADDR;
  wire [2:0]s00_couplers_to_xbar_AWPROT;
  wire s00_couplers_to_xbar_AWREADY;
  wire s00_couplers_to_xbar_AWVALID;
  wire s00_couplers_to_xbar_BREADY;
  wire [1:0]s00_couplers_to_xbar_BRESP;
  wire s00_couplers_to_xbar_BVALID;
  wire [31:0]s00_couplers_to_xbar_RDATA;
  wire s00_couplers_to_xbar_RREADY;
  wire [1:0]s00_couplers_to_xbar_RRESP;
  wire s00_couplers_to_xbar_RVALID;
  wire [31:0]s00_couplers_to_xbar_WDATA;
  wire s00_couplers_to_xbar_WREADY;
  wire [3:0]s00_couplers_to_xbar_WSTRB;
  wire s00_couplers_to_xbar_WVALID;
  wire [16:0]xbar_to_m00_couplers_ARADDR;
  wire [2:0]xbar_to_m00_couplers_ARPROT;
  wire xbar_to_m00_couplers_ARREADY;
  wire xbar_to_m00_couplers_ARVALID;
  wire [16:0]xbar_to_m00_couplers_AWADDR;
  wire [2:0]xbar_to_m00_couplers_AWPROT;
  wire xbar_to_m00_couplers_AWREADY;
  wire xbar_to_m00_couplers_AWVALID;
  wire xbar_to_m00_couplers_BREADY;
  wire [1:0]xbar_to_m00_couplers_BRESP;
  wire xbar_to_m00_couplers_BVALID;
  wire [31:0]xbar_to_m00_couplers_RDATA;
  wire xbar_to_m00_couplers_RREADY;
  wire [1:0]xbar_to_m00_couplers_RRESP;
  wire xbar_to_m00_couplers_RVALID;
  wire [31:0]xbar_to_m00_couplers_WDATA;
  wire xbar_to_m00_couplers_WREADY;
  wire [3:0]xbar_to_m00_couplers_WSTRB;
  wire xbar_to_m00_couplers_WVALID;
  wire [33:17]xbar_to_m01_couplers_ARADDR;
  wire [5:3]xbar_to_m01_couplers_ARPROT;
  wire xbar_to_m01_couplers_ARREADY;
  wire xbar_to_m01_couplers_ARVALID;
  wire [33:17]xbar_to_m01_couplers_AWADDR;
  wire [5:3]xbar_to_m01_couplers_AWPROT;
  wire xbar_to_m01_couplers_AWREADY;
  wire xbar_to_m01_couplers_AWVALID;
  wire xbar_to_m01_couplers_BREADY;
  wire [1:0]xbar_to_m01_couplers_BRESP;
  wire xbar_to_m01_couplers_BVALID;
  wire [31:0]xbar_to_m01_couplers_RDATA;
  wire xbar_to_m01_couplers_RREADY;
  wire [1:0]xbar_to_m01_couplers_RRESP;
  wire xbar_to_m01_couplers_RVALID;
  wire [63:32]xbar_to_m01_couplers_WDATA;
  wire xbar_to_m01_couplers_WREADY;
  wire [7:4]xbar_to_m01_couplers_WSTRB;
  wire xbar_to_m01_couplers_WVALID;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_m00_couplers_imp_J7A2MO m00_couplers
       (.M00_ACLK(M00_ACLK),
        .M00_ARESETN(M00_ARESETN),
        .M00_AXI_araddr(M00_AXI_araddr),
        .M00_AXI_arready(M00_AXI_arready),
        .M00_AXI_arvalid(M00_AXI_arvalid),
        .M00_AXI_awaddr(M00_AXI_awaddr),
        .M00_AXI_awready(M00_AXI_awready),
        .M00_AXI_awvalid(M00_AXI_awvalid),
        .M00_AXI_bready(M00_AXI_bready),
        .M00_AXI_bresp(M00_AXI_bresp),
        .M00_AXI_bvalid(M00_AXI_bvalid),
        .M00_AXI_rdata(M00_AXI_rdata),
        .M00_AXI_rready(M00_AXI_rready),
        .M00_AXI_rresp(M00_AXI_rresp),
        .M00_AXI_rvalid(M00_AXI_rvalid),
        .M00_AXI_wdata(M00_AXI_wdata),
        .M00_AXI_wready(M00_AXI_wready),
        .M00_AXI_wstrb(M00_AXI_wstrb),
        .M00_AXI_wvalid(M00_AXI_wvalid),
        .m_axi_araddr(xbar_to_m00_couplers_ARADDR[5:0]),
        .m_axi_arprot(xbar_to_m00_couplers_ARPROT),
        .m_axi_arvalid(xbar_to_m00_couplers_ARVALID),
        .m_axi_awaddr(xbar_to_m00_couplers_AWADDR[5:0]),
        .m_axi_awprot(xbar_to_m00_couplers_AWPROT),
        .m_axi_awvalid(xbar_to_m00_couplers_AWVALID),
        .m_axi_bready(xbar_to_m00_couplers_BREADY),
        .m_axi_rready(xbar_to_m00_couplers_RREADY),
        .m_axi_wdata(xbar_to_m00_couplers_WDATA),
        .m_axi_wstrb(xbar_to_m00_couplers_WSTRB),
        .m_axi_wvalid(xbar_to_m00_couplers_WVALID),
        .s_axi_arready(xbar_to_m00_couplers_ARREADY),
        .s_axi_awready(xbar_to_m00_couplers_AWREADY),
        .s_axi_bresp(xbar_to_m00_couplers_BRESP),
        .s_axi_bvalid(xbar_to_m00_couplers_BVALID),
        .s_axi_rdata(xbar_to_m00_couplers_RDATA),
        .s_axi_rresp(xbar_to_m00_couplers_RRESP),
        .s_axi_rvalid(xbar_to_m00_couplers_RVALID),
        .s_axi_wready(xbar_to_m00_couplers_WREADY));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_m01_couplers_imp_1HZIYDV m01_couplers
       (.M01_ACLK(M01_ACLK),
        .M01_ARESETN(M01_ARESETN),
        .M01_AXI_araddr(M01_AXI_araddr),
        .M01_AXI_arready(M01_AXI_arready),
        .M01_AXI_arvalid(M01_AXI_arvalid),
        .M01_AXI_awaddr(M01_AXI_awaddr),
        .M01_AXI_awready(M01_AXI_awready),
        .M01_AXI_awvalid(M01_AXI_awvalid),
        .M01_AXI_bready(M01_AXI_bready),
        .M01_AXI_bresp(M01_AXI_bresp),
        .M01_AXI_bvalid(M01_AXI_bvalid),
        .M01_AXI_rdata(M01_AXI_rdata),
        .M01_AXI_rready(M01_AXI_rready),
        .M01_AXI_rresp(M01_AXI_rresp),
        .M01_AXI_rvalid(M01_AXI_rvalid),
        .M01_AXI_wdata(M01_AXI_wdata),
        .M01_AXI_wready(M01_AXI_wready),
        .M01_AXI_wstrb(M01_AXI_wstrb),
        .M01_AXI_wvalid(M01_AXI_wvalid),
        .m_axi_araddr(xbar_to_m01_couplers_ARADDR[22:17]),
        .m_axi_arprot(xbar_to_m01_couplers_ARPROT),
        .m_axi_arvalid(xbar_to_m01_couplers_ARVALID),
        .m_axi_awaddr(xbar_to_m01_couplers_AWADDR[22:17]),
        .m_axi_awprot(xbar_to_m01_couplers_AWPROT),
        .m_axi_awvalid(xbar_to_m01_couplers_AWVALID),
        .m_axi_bready(xbar_to_m01_couplers_BREADY),
        .m_axi_rready(xbar_to_m01_couplers_RREADY),
        .m_axi_wdata(xbar_to_m01_couplers_WDATA),
        .m_axi_wstrb(xbar_to_m01_couplers_WSTRB),
        .m_axi_wvalid(xbar_to_m01_couplers_WVALID),
        .s_axi_arready(xbar_to_m01_couplers_ARREADY),
        .s_axi_awready(xbar_to_m01_couplers_AWREADY),
        .s_axi_bresp(xbar_to_m01_couplers_BRESP),
        .s_axi_bvalid(xbar_to_m01_couplers_BVALID),
        .s_axi_rdata(xbar_to_m01_couplers_RDATA),
        .s_axi_rresp(xbar_to_m01_couplers_RRESP),
        .s_axi_rvalid(xbar_to_m01_couplers_RVALID),
        .s_axi_wready(xbar_to_m01_couplers_WREADY));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_s00_couplers_imp_1HU9HL8 s00_couplers
       (.ACLK(ACLK),
        .ARESETN(ARESETN),
        .S00_ACLK(S00_ACLK),
        .S00_ARESETN(S00_ARESETN),
        .S00_AXI_araddr(S00_AXI_araddr),
        .S00_AXI_arprot(S00_AXI_arprot),
        .S00_AXI_arready(S00_AXI_arready),
        .S00_AXI_arvalid(S00_AXI_arvalid),
        .S00_AXI_awaddr(S00_AXI_awaddr),
        .S00_AXI_awprot(S00_AXI_awprot),
        .S00_AXI_awready(S00_AXI_awready),
        .S00_AXI_awvalid(S00_AXI_awvalid),
        .S00_AXI_bready(S00_AXI_bready),
        .S00_AXI_bresp(S00_AXI_bresp),
        .S00_AXI_bvalid(S00_AXI_bvalid),
        .S00_AXI_rdata(S00_AXI_rdata),
        .S00_AXI_rready(S00_AXI_rready),
        .S00_AXI_rresp(S00_AXI_rresp),
        .S00_AXI_rvalid(S00_AXI_rvalid),
        .S00_AXI_wdata(S00_AXI_wdata),
        .S00_AXI_wready(S00_AXI_wready),
        .S00_AXI_wstrb(S00_AXI_wstrb),
        .S00_AXI_wvalid(S00_AXI_wvalid),
        .m_axi_araddr(s00_couplers_to_xbar_ARADDR),
        .m_axi_arprot(s00_couplers_to_xbar_ARPROT),
        .m_axi_arvalid(s00_couplers_to_xbar_ARVALID),
        .m_axi_awaddr(s00_couplers_to_xbar_AWADDR),
        .m_axi_awprot(s00_couplers_to_xbar_AWPROT),
        .m_axi_awvalid(s00_couplers_to_xbar_AWVALID),
        .m_axi_bready(s00_couplers_to_xbar_BREADY),
        .m_axi_rready(s00_couplers_to_xbar_RREADY),
        .m_axi_wdata(s00_couplers_to_xbar_WDATA),
        .m_axi_wstrb(s00_couplers_to_xbar_WSTRB),
        .m_axi_wvalid(s00_couplers_to_xbar_WVALID),
        .s_axi_arready(s00_couplers_to_xbar_ARREADY),
        .s_axi_awready(s00_couplers_to_xbar_AWREADY),
        .s_axi_bresp(s00_couplers_to_xbar_BRESP),
        .s_axi_bvalid(s00_couplers_to_xbar_BVALID),
        .s_axi_rdata(s00_couplers_to_xbar_RDATA),
        .s_axi_rresp(s00_couplers_to_xbar_RRESP),
        .s_axi_rvalid(s00_couplers_to_xbar_RVALID),
        .s_axi_wready(s00_couplers_to_xbar_WREADY));
  (* x_core_info = "axi_crossbar_v2_1_11_axi_crossbar,Vivado 2016.3_sdx" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_2fd7_xbar_0 xbar
       (.aclk(ACLK),
        .aresetn(ARESETN),
        .m_axi_araddr({xbar_to_m01_couplers_ARADDR,xbar_to_m00_couplers_ARADDR}),
        .m_axi_arprot({xbar_to_m01_couplers_ARPROT,xbar_to_m00_couplers_ARPROT}),
        .m_axi_arready({xbar_to_m01_couplers_ARREADY,xbar_to_m00_couplers_ARREADY}),
        .m_axi_arvalid({xbar_to_m01_couplers_ARVALID,xbar_to_m00_couplers_ARVALID}),
        .m_axi_awaddr({xbar_to_m01_couplers_AWADDR,xbar_to_m00_couplers_AWADDR}),
        .m_axi_awprot({xbar_to_m01_couplers_AWPROT,xbar_to_m00_couplers_AWPROT}),
        .m_axi_awready({xbar_to_m01_couplers_AWREADY,xbar_to_m00_couplers_AWREADY}),
        .m_axi_awvalid({xbar_to_m01_couplers_AWVALID,xbar_to_m00_couplers_AWVALID}),
        .m_axi_bready({xbar_to_m01_couplers_BREADY,xbar_to_m00_couplers_BREADY}),
        .m_axi_bresp({xbar_to_m01_couplers_BRESP,xbar_to_m00_couplers_BRESP}),
        .m_axi_bvalid({xbar_to_m01_couplers_BVALID,xbar_to_m00_couplers_BVALID}),
        .m_axi_rdata({xbar_to_m01_couplers_RDATA,xbar_to_m00_couplers_RDATA}),
        .m_axi_rready({xbar_to_m01_couplers_RREADY,xbar_to_m00_couplers_RREADY}),
        .m_axi_rresp({xbar_to_m01_couplers_RRESP,xbar_to_m00_couplers_RRESP}),
        .m_axi_rvalid({xbar_to_m01_couplers_RVALID,xbar_to_m00_couplers_RVALID}),
        .m_axi_wdata({xbar_to_m01_couplers_WDATA,xbar_to_m00_couplers_WDATA}),
        .m_axi_wready({xbar_to_m01_couplers_WREADY,xbar_to_m00_couplers_WREADY}),
        .m_axi_wstrb({xbar_to_m01_couplers_WSTRB,xbar_to_m00_couplers_WSTRB}),
        .m_axi_wvalid({xbar_to_m01_couplers_WVALID,xbar_to_m00_couplers_WVALID}),
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

(* X_CORE_INFO = "axilite_bridge,Vivado 2016.3_sdx" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_2fd7_slave_bridge_0
   (aclk,
    aresetn,
    m_axi_awaddr,
    m_axi_awprot,
    m_axi_awqos,
    m_axi_awvalid,
    m_axi_awready,
    m_axi_wdata,
    m_axi_wstrb,
    m_axi_wvalid,
    m_axi_wready,
    m_axi_bresp,
    m_axi_bvalid,
    m_axi_bready,
    m_axi_araddr,
    m_axi_arprot,
    m_axi_arqos,
    m_axi_arvalid,
    m_axi_arready,
    m_axi_rdata,
    m_axi_rresp,
    m_axi_rvalid,
    m_axi_rready,
    s_axi_awaddr,
    s_axi_awprot,
    s_axi_awqos,
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
    s_axi_arprot,
    s_axi_arqos,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rvalid,
    s_axi_rready);
  input aclk;
  input aresetn;
  output [16:0]m_axi_awaddr;
  output [2:0]m_axi_awprot;
  output [3:0]m_axi_awqos;
  output m_axi_awvalid;
  input m_axi_awready;
  output [31:0]m_axi_wdata;
  output [3:0]m_axi_wstrb;
  output m_axi_wvalid;
  input m_axi_wready;
  input [1:0]m_axi_bresp;
  input m_axi_bvalid;
  output m_axi_bready;
  output [16:0]m_axi_araddr;
  output [2:0]m_axi_arprot;
  output [3:0]m_axi_arqos;
  output m_axi_arvalid;
  input m_axi_arready;
  input [31:0]m_axi_rdata;
  input [1:0]m_axi_rresp;
  input m_axi_rvalid;
  output m_axi_rready;
  input [16:0]s_axi_awaddr;
  input [2:0]s_axi_awprot;
  input [3:0]s_axi_awqos;
  input s_axi_awvalid;
  output s_axi_awready;
  input [31:0]s_axi_wdata;
  input [3:0]s_axi_wstrb;
  input s_axi_wvalid;
  output s_axi_wready;
  output [1:0]s_axi_bresp;
  output s_axi_bvalid;
  input s_axi_bready;
  input [16:0]s_axi_araddr;
  input [2:0]s_axi_arprot;
  input [3:0]s_axi_arqos;
  input s_axi_arvalid;
  output s_axi_arready;
  output [31:0]s_axi_rdata;
  output [1:0]s_axi_rresp;
  output s_axi_rvalid;
  input s_axi_rready;


endmodule

(* X_CORE_INFO = "axi_crossbar_v2_1_11_axi_crossbar,Vivado 2016.3_sdx" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_2fd7_xbar_0
   (aclk,
    aresetn,
    s_axi_awaddr,
    s_axi_awprot,
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
    s_axi_arprot,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rvalid,
    s_axi_rready,
    m_axi_awaddr,
    m_axi_awprot,
    m_axi_awvalid,
    m_axi_awready,
    m_axi_wdata,
    m_axi_wstrb,
    m_axi_wvalid,
    m_axi_wready,
    m_axi_bresp,
    m_axi_bvalid,
    m_axi_bready,
    m_axi_araddr,
    m_axi_arprot,
    m_axi_arvalid,
    m_axi_arready,
    m_axi_rdata,
    m_axi_rresp,
    m_axi_rvalid,
    m_axi_rready);
  input aclk;
  input aresetn;
  input [16:0]s_axi_awaddr;
  input [2:0]s_axi_awprot;
  input [0:0]s_axi_awvalid;
  output [0:0]s_axi_awready;
  input [31:0]s_axi_wdata;
  input [3:0]s_axi_wstrb;
  input [0:0]s_axi_wvalid;
  output [0:0]s_axi_wready;
  output [1:0]s_axi_bresp;
  output [0:0]s_axi_bvalid;
  input [0:0]s_axi_bready;
  input [16:0]s_axi_araddr;
  input [2:0]s_axi_arprot;
  input [0:0]s_axi_arvalid;
  output [0:0]s_axi_arready;
  output [31:0]s_axi_rdata;
  output [1:0]s_axi_rresp;
  output [0:0]s_axi_rvalid;
  input [0:0]s_axi_rready;
  output [33:0]m_axi_awaddr;
  output [5:0]m_axi_awprot;
  output [1:0]m_axi_awvalid;
  input [1:0]m_axi_awready;
  output [63:0]m_axi_wdata;
  output [7:0]m_axi_wstrb;
  output [1:0]m_axi_wvalid;
  input [1:0]m_axi_wready;
  input [3:0]m_axi_bresp;
  input [1:0]m_axi_bvalid;
  output [1:0]m_axi_bready;
  output [33:0]m_axi_araddr;
  output [5:0]m_axi_arprot;
  output [1:0]m_axi_arvalid;
  input [1:0]m_axi_arready;
  input [63:0]m_axi_rdata;
  input [3:0]m_axi_rresp;
  input [1:0]m_axi_rvalid;
  output [1:0]m_axi_rready;


endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_m00_couplers_imp_J7A2MO
   (s_axi_awready,
    s_axi_wready,
    s_axi_bresp,
    s_axi_bvalid,
    s_axi_arready,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rvalid,
    M00_AXI_awaddr,
    M00_AXI_awvalid,
    M00_AXI_wdata,
    M00_AXI_wstrb,
    M00_AXI_wvalid,
    M00_AXI_bready,
    M00_AXI_araddr,
    M00_AXI_arvalid,
    M00_AXI_rready,
    M00_ACLK,
    M00_ARESETN,
    m_axi_awaddr,
    m_axi_awprot,
    m_axi_awvalid,
    m_axi_wdata,
    m_axi_wstrb,
    m_axi_wvalid,
    m_axi_bready,
    m_axi_araddr,
    m_axi_arprot,
    m_axi_arvalid,
    m_axi_rready,
    M00_AXI_awready,
    M00_AXI_wready,
    M00_AXI_bresp,
    M00_AXI_bvalid,
    M00_AXI_arready,
    M00_AXI_rdata,
    M00_AXI_rresp,
    M00_AXI_rvalid);
  output s_axi_awready;
  output s_axi_wready;
  output [1:0]s_axi_bresp;
  output s_axi_bvalid;
  output s_axi_arready;
  output [31:0]s_axi_rdata;
  output [1:0]s_axi_rresp;
  output s_axi_rvalid;
  output [5:0]M00_AXI_awaddr;
  output M00_AXI_awvalid;
  output [31:0]M00_AXI_wdata;
  output [3:0]M00_AXI_wstrb;
  output M00_AXI_wvalid;
  output M00_AXI_bready;
  output [5:0]M00_AXI_araddr;
  output M00_AXI_arvalid;
  output M00_AXI_rready;
  input M00_ACLK;
  input M00_ARESETN;
  input [5:0]m_axi_awaddr;
  input [2:0]m_axi_awprot;
  input [0:0]m_axi_awvalid;
  input [31:0]m_axi_wdata;
  input [3:0]m_axi_wstrb;
  input [0:0]m_axi_wvalid;
  input [0:0]m_axi_bready;
  input [5:0]m_axi_araddr;
  input [2:0]m_axi_arprot;
  input [0:0]m_axi_arvalid;
  input [0:0]m_axi_rready;
  input M00_AXI_awready;
  input M00_AXI_wready;
  input [1:0]M00_AXI_bresp;
  input M00_AXI_bvalid;
  input M00_AXI_arready;
  input [31:0]M00_AXI_rdata;
  input [1:0]M00_AXI_rresp;
  input M00_AXI_rvalid;

  wire M00_ACLK;
  wire M00_ARESETN;
  wire [5:0]M00_AXI_araddr;
  wire M00_AXI_arready;
  wire M00_AXI_arvalid;
  wire [5:0]M00_AXI_awaddr;
  wire M00_AXI_awready;
  wire M00_AXI_awvalid;
  wire M00_AXI_bready;
  wire [1:0]M00_AXI_bresp;
  wire M00_AXI_bvalid;
  wire [31:0]M00_AXI_rdata;
  wire M00_AXI_rready;
  wire [1:0]M00_AXI_rresp;
  wire M00_AXI_rvalid;
  wire [31:0]M00_AXI_wdata;
  wire M00_AXI_wready;
  wire [3:0]M00_AXI_wstrb;
  wire M00_AXI_wvalid;
  wire [5:0]m_axi_araddr;
  wire [2:0]m_axi_arprot;
  wire [0:0]m_axi_arvalid;
  wire [5:0]m_axi_awaddr;
  wire [2:0]m_axi_awprot;
  wire [0:0]m_axi_awvalid;
  wire [0:0]m_axi_bready;
  wire [0:0]m_axi_rready;
  wire [31:0]m_axi_wdata;
  wire [3:0]m_axi_wstrb;
  wire [0:0]m_axi_wvalid;
  wire s_axi_arready;
  wire s_axi_awready;
  wire [1:0]s_axi_bresp;
  wire s_axi_bvalid;
  wire [31:0]s_axi_rdata;
  wire [1:0]s_axi_rresp;
  wire s_axi_rvalid;
  wire s_axi_wready;
  wire [2:0]NLW_m00_regslice_m_axi_arprot_UNCONNECTED;
  wire [2:0]NLW_m00_regslice_m_axi_awprot_UNCONNECTED;

  (* x_core_info = "axi_register_slice_v2_1_10_axi_register_slice,Vivado 2016.3_sdx" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_2fd7_m00_regslice_0 m00_regslice
       (.aclk(M00_ACLK),
        .aresetn(M00_ARESETN),
        .m_axi_araddr(M00_AXI_araddr),
        .m_axi_arprot(NLW_m00_regslice_m_axi_arprot_UNCONNECTED[2:0]),
        .m_axi_arready(M00_AXI_arready),
        .m_axi_arvalid(M00_AXI_arvalid),
        .m_axi_awaddr(M00_AXI_awaddr),
        .m_axi_awprot(NLW_m00_regslice_m_axi_awprot_UNCONNECTED[2:0]),
        .m_axi_awready(M00_AXI_awready),
        .m_axi_awvalid(M00_AXI_awvalid),
        .m_axi_bready(M00_AXI_bready),
        .m_axi_bresp(M00_AXI_bresp),
        .m_axi_bvalid(M00_AXI_bvalid),
        .m_axi_rdata(M00_AXI_rdata),
        .m_axi_rready(M00_AXI_rready),
        .m_axi_rresp(M00_AXI_rresp),
        .m_axi_rvalid(M00_AXI_rvalid),
        .m_axi_wdata(M00_AXI_wdata),
        .m_axi_wready(M00_AXI_wready),
        .m_axi_wstrb(M00_AXI_wstrb),
        .m_axi_wvalid(M00_AXI_wvalid),
        .s_axi_araddr(m_axi_araddr),
        .s_axi_arprot(m_axi_arprot),
        .s_axi_arready(s_axi_arready),
        .s_axi_arvalid(m_axi_arvalid),
        .s_axi_awaddr(m_axi_awaddr),
        .s_axi_awprot(m_axi_awprot),
        .s_axi_awready(s_axi_awready),
        .s_axi_awvalid(m_axi_awvalid),
        .s_axi_bready(m_axi_bready),
        .s_axi_bresp(s_axi_bresp),
        .s_axi_bvalid(s_axi_bvalid),
        .s_axi_rdata(s_axi_rdata),
        .s_axi_rready(m_axi_rready),
        .s_axi_rresp(s_axi_rresp),
        .s_axi_rvalid(s_axi_rvalid),
        .s_axi_wdata(m_axi_wdata),
        .s_axi_wready(s_axi_wready),
        .s_axi_wstrb(m_axi_wstrb),
        .s_axi_wvalid(m_axi_wvalid));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_m01_couplers_imp_1HZIYDV
   (s_axi_awready,
    s_axi_wready,
    s_axi_bresp,
    s_axi_bvalid,
    s_axi_arready,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rvalid,
    M01_AXI_awaddr,
    M01_AXI_awvalid,
    M01_AXI_wdata,
    M01_AXI_wstrb,
    M01_AXI_wvalid,
    M01_AXI_bready,
    M01_AXI_araddr,
    M01_AXI_arvalid,
    M01_AXI_rready,
    M01_ACLK,
    M01_ARESETN,
    m_axi_awaddr,
    m_axi_awprot,
    m_axi_awvalid,
    m_axi_wdata,
    m_axi_wstrb,
    m_axi_wvalid,
    m_axi_bready,
    m_axi_araddr,
    m_axi_arprot,
    m_axi_arvalid,
    m_axi_rready,
    M01_AXI_awready,
    M01_AXI_wready,
    M01_AXI_bresp,
    M01_AXI_bvalid,
    M01_AXI_arready,
    M01_AXI_rdata,
    M01_AXI_rresp,
    M01_AXI_rvalid);
  output s_axi_awready;
  output s_axi_wready;
  output [1:0]s_axi_bresp;
  output s_axi_bvalid;
  output s_axi_arready;
  output [31:0]s_axi_rdata;
  output [1:0]s_axi_rresp;
  output s_axi_rvalid;
  output [5:0]M01_AXI_awaddr;
  output M01_AXI_awvalid;
  output [31:0]M01_AXI_wdata;
  output [3:0]M01_AXI_wstrb;
  output M01_AXI_wvalid;
  output M01_AXI_bready;
  output [5:0]M01_AXI_araddr;
  output M01_AXI_arvalid;
  output M01_AXI_rready;
  input M01_ACLK;
  input M01_ARESETN;
  input [5:0]m_axi_awaddr;
  input [2:0]m_axi_awprot;
  input [0:0]m_axi_awvalid;
  input [31:0]m_axi_wdata;
  input [3:0]m_axi_wstrb;
  input [0:0]m_axi_wvalid;
  input [0:0]m_axi_bready;
  input [5:0]m_axi_araddr;
  input [2:0]m_axi_arprot;
  input [0:0]m_axi_arvalid;
  input [0:0]m_axi_rready;
  input M01_AXI_awready;
  input M01_AXI_wready;
  input [1:0]M01_AXI_bresp;
  input M01_AXI_bvalid;
  input M01_AXI_arready;
  input [31:0]M01_AXI_rdata;
  input [1:0]M01_AXI_rresp;
  input M01_AXI_rvalid;

  wire M01_ACLK;
  wire M01_ARESETN;
  wire [5:0]M01_AXI_araddr;
  wire M01_AXI_arready;
  wire M01_AXI_arvalid;
  wire [5:0]M01_AXI_awaddr;
  wire M01_AXI_awready;
  wire M01_AXI_awvalid;
  wire M01_AXI_bready;
  wire [1:0]M01_AXI_bresp;
  wire M01_AXI_bvalid;
  wire [31:0]M01_AXI_rdata;
  wire M01_AXI_rready;
  wire [1:0]M01_AXI_rresp;
  wire M01_AXI_rvalid;
  wire [31:0]M01_AXI_wdata;
  wire M01_AXI_wready;
  wire [3:0]M01_AXI_wstrb;
  wire M01_AXI_wvalid;
  wire [5:0]m_axi_araddr;
  wire [2:0]m_axi_arprot;
  wire [0:0]m_axi_arvalid;
  wire [5:0]m_axi_awaddr;
  wire [2:0]m_axi_awprot;
  wire [0:0]m_axi_awvalid;
  wire [0:0]m_axi_bready;
  wire [0:0]m_axi_rready;
  wire [31:0]m_axi_wdata;
  wire [3:0]m_axi_wstrb;
  wire [0:0]m_axi_wvalid;
  wire s_axi_arready;
  wire s_axi_awready;
  wire [1:0]s_axi_bresp;
  wire s_axi_bvalid;
  wire [31:0]s_axi_rdata;
  wire [1:0]s_axi_rresp;
  wire s_axi_rvalid;
  wire s_axi_wready;
  wire [2:0]NLW_m01_regslice_m_axi_arprot_UNCONNECTED;
  wire [2:0]NLW_m01_regslice_m_axi_awprot_UNCONNECTED;

  (* x_core_info = "axi_register_slice_v2_1_10_axi_register_slice,Vivado 2016.3_sdx" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_2fd7_m01_regslice_0 m01_regslice
       (.aclk(M01_ACLK),
        .aresetn(M01_ARESETN),
        .m_axi_araddr(M01_AXI_araddr),
        .m_axi_arprot(NLW_m01_regslice_m_axi_arprot_UNCONNECTED[2:0]),
        .m_axi_arready(M01_AXI_arready),
        .m_axi_arvalid(M01_AXI_arvalid),
        .m_axi_awaddr(M01_AXI_awaddr),
        .m_axi_awprot(NLW_m01_regslice_m_axi_awprot_UNCONNECTED[2:0]),
        .m_axi_awready(M01_AXI_awready),
        .m_axi_awvalid(M01_AXI_awvalid),
        .m_axi_bready(M01_AXI_bready),
        .m_axi_bresp(M01_AXI_bresp),
        .m_axi_bvalid(M01_AXI_bvalid),
        .m_axi_rdata(M01_AXI_rdata),
        .m_axi_rready(M01_AXI_rready),
        .m_axi_rresp(M01_AXI_rresp),
        .m_axi_rvalid(M01_AXI_rvalid),
        .m_axi_wdata(M01_AXI_wdata),
        .m_axi_wready(M01_AXI_wready),
        .m_axi_wstrb(M01_AXI_wstrb),
        .m_axi_wvalid(M01_AXI_wvalid),
        .s_axi_araddr(m_axi_araddr),
        .s_axi_arprot(m_axi_arprot),
        .s_axi_arready(s_axi_arready),
        .s_axi_arvalid(m_axi_arvalid),
        .s_axi_awaddr(m_axi_awaddr),
        .s_axi_awprot(m_axi_awprot),
        .s_axi_awready(s_axi_awready),
        .s_axi_awvalid(m_axi_awvalid),
        .s_axi_bready(m_axi_bready),
        .s_axi_bresp(s_axi_bresp),
        .s_axi_bvalid(s_axi_bvalid),
        .s_axi_rdata(s_axi_rdata),
        .s_axi_rready(m_axi_rready),
        .s_axi_rresp(s_axi_rresp),
        .s_axi_rvalid(s_axi_rvalid),
        .s_axi_wdata(m_axi_wdata),
        .s_axi_wready(s_axi_wready),
        .s_axi_wstrb(m_axi_wstrb),
        .s_axi_wvalid(m_axi_wvalid));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_s00_couplers_imp_1328SXF
   (M00_AXI_awaddr,
    M00_AXI_awlen,
    M00_AXI_awsize,
    M00_AXI_awburst,
    M00_AXI_awlock,
    M00_AXI_awcache,
    M00_AXI_awprot,
    M00_AXI_awqos,
    M00_AXI_awvalid,
    M00_AXI_wdata,
    M00_AXI_wstrb,
    M00_AXI_wlast,
    M00_AXI_wvalid,
    M00_AXI_bready,
    M00_AXI_araddr,
    M00_AXI_arlen,
    M00_AXI_arsize,
    M00_AXI_arburst,
    M00_AXI_arlock,
    M00_AXI_arcache,
    M00_AXI_arprot,
    M00_AXI_arqos,
    M00_AXI_arvalid,
    M00_AXI_rready,
    S00_AXI_awready,
    S00_AXI_wready,
    S00_AXI_bresp,
    S00_AXI_bvalid,
    S00_AXI_arready,
    S00_AXI_rdata,
    S00_AXI_rresp,
    S00_AXI_rlast,
    S00_AXI_rvalid,
    S00_ACLK,
    S00_ARESETN,
    M00_ACLK,
    M00_ARESETN,
    M00_AXI_awready,
    M00_AXI_wready,
    M00_AXI_bresp,
    M00_AXI_bvalid,
    M00_AXI_arready,
    M00_AXI_rdata,
    M00_AXI_rresp,
    M00_AXI_rlast,
    M00_AXI_rvalid,
    S00_AXI_awaddr,
    S00_AXI_awlen,
    S00_AXI_awsize,
    S00_AXI_awburst,
    S00_AXI_awlock,
    S00_AXI_awcache,
    S00_AXI_awprot,
    S00_AXI_awregion,
    S00_AXI_awqos,
    S00_AXI_awvalid,
    S00_AXI_wdata,
    S00_AXI_wstrb,
    S00_AXI_wlast,
    S00_AXI_wvalid,
    S00_AXI_bready,
    S00_AXI_araddr,
    S00_AXI_arlen,
    S00_AXI_arsize,
    S00_AXI_arburst,
    S00_AXI_arlock,
    S00_AXI_arcache,
    S00_AXI_arprot,
    S00_AXI_arregion,
    S00_AXI_arqos,
    S00_AXI_arvalid,
    S00_AXI_rready);
  output [37:0]M00_AXI_awaddr;
  output [7:0]M00_AXI_awlen;
  output [2:0]M00_AXI_awsize;
  output [1:0]M00_AXI_awburst;
  output [0:0]M00_AXI_awlock;
  output [3:0]M00_AXI_awcache;
  output [2:0]M00_AXI_awprot;
  output [3:0]M00_AXI_awqos;
  output M00_AXI_awvalid;
  output [511:0]M00_AXI_wdata;
  output [63:0]M00_AXI_wstrb;
  output M00_AXI_wlast;
  output M00_AXI_wvalid;
  output M00_AXI_bready;
  output [37:0]M00_AXI_araddr;
  output [7:0]M00_AXI_arlen;
  output [2:0]M00_AXI_arsize;
  output [1:0]M00_AXI_arburst;
  output [0:0]M00_AXI_arlock;
  output [3:0]M00_AXI_arcache;
  output [2:0]M00_AXI_arprot;
  output [3:0]M00_AXI_arqos;
  output M00_AXI_arvalid;
  output M00_AXI_rready;
  output S00_AXI_awready;
  output S00_AXI_wready;
  output [1:0]S00_AXI_bresp;
  output S00_AXI_bvalid;
  output S00_AXI_arready;
  output [511:0]S00_AXI_rdata;
  output [1:0]S00_AXI_rresp;
  output S00_AXI_rlast;
  output S00_AXI_rvalid;
  input S00_ACLK;
  input S00_ARESETN;
  input M00_ACLK;
  input M00_ARESETN;
  input M00_AXI_awready;
  input M00_AXI_wready;
  input [1:0]M00_AXI_bresp;
  input M00_AXI_bvalid;
  input M00_AXI_arready;
  input [511:0]M00_AXI_rdata;
  input [1:0]M00_AXI_rresp;
  input M00_AXI_rlast;
  input M00_AXI_rvalid;
  input [37:0]S00_AXI_awaddr;
  input [7:0]S00_AXI_awlen;
  input [2:0]S00_AXI_awsize;
  input [1:0]S00_AXI_awburst;
  input [0:0]S00_AXI_awlock;
  input [3:0]S00_AXI_awcache;
  input [2:0]S00_AXI_awprot;
  input [3:0]S00_AXI_awregion;
  input [3:0]S00_AXI_awqos;
  input S00_AXI_awvalid;
  input [511:0]S00_AXI_wdata;
  input [63:0]S00_AXI_wstrb;
  input S00_AXI_wlast;
  input S00_AXI_wvalid;
  input S00_AXI_bready;
  input [37:0]S00_AXI_araddr;
  input [7:0]S00_AXI_arlen;
  input [2:0]S00_AXI_arsize;
  input [1:0]S00_AXI_arburst;
  input [0:0]S00_AXI_arlock;
  input [3:0]S00_AXI_arcache;
  input [2:0]S00_AXI_arprot;
  input [3:0]S00_AXI_arregion;
  input [3:0]S00_AXI_arqos;
  input S00_AXI_arvalid;
  input S00_AXI_rready;

  wire M00_ACLK;
  wire M00_ARESETN;
  wire [37:0]M00_AXI_araddr;
  wire [1:0]M00_AXI_arburst;
  wire [3:0]M00_AXI_arcache;
  wire [7:0]M00_AXI_arlen;
  wire [0:0]M00_AXI_arlock;
  wire [2:0]M00_AXI_arprot;
  wire [3:0]M00_AXI_arqos;
  wire M00_AXI_arready;
  wire [2:0]M00_AXI_arsize;
  wire M00_AXI_arvalid;
  wire [37:0]M00_AXI_awaddr;
  wire [1:0]M00_AXI_awburst;
  wire [3:0]M00_AXI_awcache;
  wire [7:0]M00_AXI_awlen;
  wire [0:0]M00_AXI_awlock;
  wire [2:0]M00_AXI_awprot;
  wire [3:0]M00_AXI_awqos;
  wire M00_AXI_awready;
  wire [2:0]M00_AXI_awsize;
  wire M00_AXI_awvalid;
  wire M00_AXI_bready;
  wire [1:0]M00_AXI_bresp;
  wire M00_AXI_bvalid;
  wire [511:0]M00_AXI_rdata;
  wire M00_AXI_rlast;
  wire M00_AXI_rready;
  wire [1:0]M00_AXI_rresp;
  wire M00_AXI_rvalid;
  wire [511:0]M00_AXI_wdata;
  wire M00_AXI_wlast;
  wire M00_AXI_wready;
  wire [63:0]M00_AXI_wstrb;
  wire M00_AXI_wvalid;
  wire S00_ACLK;
  wire S00_ARESETN;
  wire [37:0]S00_AXI_araddr;
  wire [1:0]S00_AXI_arburst;
  wire [3:0]S00_AXI_arcache;
  wire [7:0]S00_AXI_arlen;
  wire [0:0]S00_AXI_arlock;
  wire [2:0]S00_AXI_arprot;
  wire [3:0]S00_AXI_arqos;
  wire S00_AXI_arready;
  wire [3:0]S00_AXI_arregion;
  wire [2:0]S00_AXI_arsize;
  wire S00_AXI_arvalid;
  wire [37:0]S00_AXI_awaddr;
  wire [1:0]S00_AXI_awburst;
  wire [3:0]S00_AXI_awcache;
  wire [7:0]S00_AXI_awlen;
  wire [0:0]S00_AXI_awlock;
  wire [2:0]S00_AXI_awprot;
  wire [3:0]S00_AXI_awqos;
  wire S00_AXI_awready;
  wire [3:0]S00_AXI_awregion;
  wire [2:0]S00_AXI_awsize;
  wire S00_AXI_awvalid;
  wire S00_AXI_bready;
  wire [1:0]S00_AXI_bresp;
  wire S00_AXI_bvalid;
  wire [511:0]S00_AXI_rdata;
  wire S00_AXI_rlast;
  wire S00_AXI_rready;
  wire [1:0]S00_AXI_rresp;
  wire S00_AXI_rvalid;
  wire [511:0]S00_AXI_wdata;
  wire S00_AXI_wlast;
  wire S00_AXI_wready;
  wire [63:0]S00_AXI_wstrb;
  wire S00_AXI_wvalid;
  wire [37:0]s00_regslice_to_auto_cc_ARADDR;
  wire [1:0]s00_regslice_to_auto_cc_ARBURST;
  wire [3:0]s00_regslice_to_auto_cc_ARCACHE;
  wire [7:0]s00_regslice_to_auto_cc_ARLEN;
  wire s00_regslice_to_auto_cc_ARLOCK;
  wire [2:0]s00_regslice_to_auto_cc_ARPROT;
  wire [3:0]s00_regslice_to_auto_cc_ARQOS;
  wire s00_regslice_to_auto_cc_ARREADY;
  wire [3:0]s00_regslice_to_auto_cc_ARREGION;
  wire [2:0]s00_regslice_to_auto_cc_ARSIZE;
  wire s00_regslice_to_auto_cc_ARVALID;
  wire [37:0]s00_regslice_to_auto_cc_AWADDR;
  wire [1:0]s00_regslice_to_auto_cc_AWBURST;
  wire [3:0]s00_regslice_to_auto_cc_AWCACHE;
  wire [7:0]s00_regslice_to_auto_cc_AWLEN;
  wire s00_regslice_to_auto_cc_AWLOCK;
  wire [2:0]s00_regslice_to_auto_cc_AWPROT;
  wire [3:0]s00_regslice_to_auto_cc_AWQOS;
  wire s00_regslice_to_auto_cc_AWREADY;
  wire [3:0]s00_regslice_to_auto_cc_AWREGION;
  wire [2:0]s00_regslice_to_auto_cc_AWSIZE;
  wire s00_regslice_to_auto_cc_AWVALID;
  wire s00_regslice_to_auto_cc_BREADY;
  wire [1:0]s00_regslice_to_auto_cc_BRESP;
  wire s00_regslice_to_auto_cc_BVALID;
  wire [511:0]s00_regslice_to_auto_cc_RDATA;
  wire s00_regslice_to_auto_cc_RLAST;
  wire s00_regslice_to_auto_cc_RREADY;
  wire [1:0]s00_regslice_to_auto_cc_RRESP;
  wire s00_regslice_to_auto_cc_RVALID;
  wire [511:0]s00_regslice_to_auto_cc_WDATA;
  wire s00_regslice_to_auto_cc_WLAST;
  wire s00_regslice_to_auto_cc_WREADY;
  wire [63:0]s00_regslice_to_auto_cc_WSTRB;
  wire s00_regslice_to_auto_cc_WVALID;
  wire [3:0]NLW_auto_cc_m_axi_arregion_UNCONNECTED;
  wire [3:0]NLW_auto_cc_m_axi_awregion_UNCONNECTED;

  (* x_core_info = "axi_clock_converter_v2_1_9_axi_clock_converter,Vivado 2016.3_sdx" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_2fd7_auto_cc_0 auto_cc
       (.m_axi_aclk(M00_ACLK),
        .m_axi_araddr(M00_AXI_araddr),
        .m_axi_arburst(M00_AXI_arburst),
        .m_axi_arcache(M00_AXI_arcache),
        .m_axi_aresetn(M00_ARESETN),
        .m_axi_arlen(M00_AXI_arlen),
        .m_axi_arlock(M00_AXI_arlock),
        .m_axi_arprot(M00_AXI_arprot),
        .m_axi_arqos(M00_AXI_arqos),
        .m_axi_arready(M00_AXI_arready),
        .m_axi_arregion(NLW_auto_cc_m_axi_arregion_UNCONNECTED[3:0]),
        .m_axi_arsize(M00_AXI_arsize),
        .m_axi_arvalid(M00_AXI_arvalid),
        .m_axi_awaddr(M00_AXI_awaddr),
        .m_axi_awburst(M00_AXI_awburst),
        .m_axi_awcache(M00_AXI_awcache),
        .m_axi_awlen(M00_AXI_awlen),
        .m_axi_awlock(M00_AXI_awlock),
        .m_axi_awprot(M00_AXI_awprot),
        .m_axi_awqos(M00_AXI_awqos),
        .m_axi_awready(M00_AXI_awready),
        .m_axi_awregion(NLW_auto_cc_m_axi_awregion_UNCONNECTED[3:0]),
        .m_axi_awsize(M00_AXI_awsize),
        .m_axi_awvalid(M00_AXI_awvalid),
        .m_axi_bready(M00_AXI_bready),
        .m_axi_bresp(M00_AXI_bresp),
        .m_axi_bvalid(M00_AXI_bvalid),
        .m_axi_rdata(M00_AXI_rdata),
        .m_axi_rlast(M00_AXI_rlast),
        .m_axi_rready(M00_AXI_rready),
        .m_axi_rresp(M00_AXI_rresp),
        .m_axi_rvalid(M00_AXI_rvalid),
        .m_axi_wdata(M00_AXI_wdata),
        .m_axi_wlast(M00_AXI_wlast),
        .m_axi_wready(M00_AXI_wready),
        .m_axi_wstrb(M00_AXI_wstrb),
        .m_axi_wvalid(M00_AXI_wvalid),
        .s_axi_aclk(S00_ACLK),
        .s_axi_araddr(s00_regslice_to_auto_cc_ARADDR),
        .s_axi_arburst(s00_regslice_to_auto_cc_ARBURST),
        .s_axi_arcache(s00_regslice_to_auto_cc_ARCACHE),
        .s_axi_aresetn(S00_ARESETN),
        .s_axi_arlen(s00_regslice_to_auto_cc_ARLEN),
        .s_axi_arlock(s00_regslice_to_auto_cc_ARLOCK),
        .s_axi_arprot(s00_regslice_to_auto_cc_ARPROT),
        .s_axi_arqos(s00_regslice_to_auto_cc_ARQOS),
        .s_axi_arready(s00_regslice_to_auto_cc_ARREADY),
        .s_axi_arregion(s00_regslice_to_auto_cc_ARREGION),
        .s_axi_arsize(s00_regslice_to_auto_cc_ARSIZE),
        .s_axi_arvalid(s00_regslice_to_auto_cc_ARVALID),
        .s_axi_awaddr(s00_regslice_to_auto_cc_AWADDR),
        .s_axi_awburst(s00_regslice_to_auto_cc_AWBURST),
        .s_axi_awcache(s00_regslice_to_auto_cc_AWCACHE),
        .s_axi_awlen(s00_regslice_to_auto_cc_AWLEN),
        .s_axi_awlock(s00_regslice_to_auto_cc_AWLOCK),
        .s_axi_awprot(s00_regslice_to_auto_cc_AWPROT),
        .s_axi_awqos(s00_regslice_to_auto_cc_AWQOS),
        .s_axi_awready(s00_regslice_to_auto_cc_AWREADY),
        .s_axi_awregion(s00_regslice_to_auto_cc_AWREGION),
        .s_axi_awsize(s00_regslice_to_auto_cc_AWSIZE),
        .s_axi_awvalid(s00_regslice_to_auto_cc_AWVALID),
        .s_axi_bready(s00_regslice_to_auto_cc_BREADY),
        .s_axi_bresp(s00_regslice_to_auto_cc_BRESP),
        .s_axi_bvalid(s00_regslice_to_auto_cc_BVALID),
        .s_axi_rdata(s00_regslice_to_auto_cc_RDATA),
        .s_axi_rlast(s00_regslice_to_auto_cc_RLAST),
        .s_axi_rready(s00_regslice_to_auto_cc_RREADY),
        .s_axi_rresp(s00_regslice_to_auto_cc_RRESP),
        .s_axi_rvalid(s00_regslice_to_auto_cc_RVALID),
        .s_axi_wdata(s00_regslice_to_auto_cc_WDATA),
        .s_axi_wlast(s00_regslice_to_auto_cc_WLAST),
        .s_axi_wready(s00_regslice_to_auto_cc_WREADY),
        .s_axi_wstrb(s00_regslice_to_auto_cc_WSTRB),
        .s_axi_wvalid(s00_regslice_to_auto_cc_WVALID));
  (* x_core_info = "axi_register_slice_v2_1_10_axi_register_slice,Vivado 2016.3_sdx" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_2fd7_s00_regslice_0 s00_regslice
       (.aclk(S00_ACLK),
        .aresetn(S00_ARESETN),
        .m_axi_araddr(s00_regslice_to_auto_cc_ARADDR),
        .m_axi_arburst(s00_regslice_to_auto_cc_ARBURST),
        .m_axi_arcache(s00_regslice_to_auto_cc_ARCACHE),
        .m_axi_arlen(s00_regslice_to_auto_cc_ARLEN),
        .m_axi_arlock(s00_regslice_to_auto_cc_ARLOCK),
        .m_axi_arprot(s00_regslice_to_auto_cc_ARPROT),
        .m_axi_arqos(s00_regslice_to_auto_cc_ARQOS),
        .m_axi_arready(s00_regslice_to_auto_cc_ARREADY),
        .m_axi_arregion(s00_regslice_to_auto_cc_ARREGION),
        .m_axi_arsize(s00_regslice_to_auto_cc_ARSIZE),
        .m_axi_arvalid(s00_regslice_to_auto_cc_ARVALID),
        .m_axi_awaddr(s00_regslice_to_auto_cc_AWADDR),
        .m_axi_awburst(s00_regslice_to_auto_cc_AWBURST),
        .m_axi_awcache(s00_regslice_to_auto_cc_AWCACHE),
        .m_axi_awlen(s00_regslice_to_auto_cc_AWLEN),
        .m_axi_awlock(s00_regslice_to_auto_cc_AWLOCK),
        .m_axi_awprot(s00_regslice_to_auto_cc_AWPROT),
        .m_axi_awqos(s00_regslice_to_auto_cc_AWQOS),
        .m_axi_awready(s00_regslice_to_auto_cc_AWREADY),
        .m_axi_awregion(s00_regslice_to_auto_cc_AWREGION),
        .m_axi_awsize(s00_regslice_to_auto_cc_AWSIZE),
        .m_axi_awvalid(s00_regslice_to_auto_cc_AWVALID),
        .m_axi_bready(s00_regslice_to_auto_cc_BREADY),
        .m_axi_bresp(s00_regslice_to_auto_cc_BRESP),
        .m_axi_bvalid(s00_regslice_to_auto_cc_BVALID),
        .m_axi_rdata(s00_regslice_to_auto_cc_RDATA),
        .m_axi_rlast(s00_regslice_to_auto_cc_RLAST),
        .m_axi_rready(s00_regslice_to_auto_cc_RREADY),
        .m_axi_rresp(s00_regslice_to_auto_cc_RRESP),
        .m_axi_rvalid(s00_regslice_to_auto_cc_RVALID),
        .m_axi_wdata(s00_regslice_to_auto_cc_WDATA),
        .m_axi_wlast(s00_regslice_to_auto_cc_WLAST),
        .m_axi_wready(s00_regslice_to_auto_cc_WREADY),
        .m_axi_wstrb(s00_regslice_to_auto_cc_WSTRB),
        .m_axi_wvalid(s00_regslice_to_auto_cc_WVALID),
        .s_axi_araddr(S00_AXI_araddr),
        .s_axi_arburst(S00_AXI_arburst),
        .s_axi_arcache(S00_AXI_arcache),
        .s_axi_arlen(S00_AXI_arlen),
        .s_axi_arlock(S00_AXI_arlock),
        .s_axi_arprot(S00_AXI_arprot),
        .s_axi_arqos(S00_AXI_arqos),
        .s_axi_arready(S00_AXI_arready),
        .s_axi_arregion(S00_AXI_arregion),
        .s_axi_arsize(S00_AXI_arsize),
        .s_axi_arvalid(S00_AXI_arvalid),
        .s_axi_awaddr(S00_AXI_awaddr),
        .s_axi_awburst(S00_AXI_awburst),
        .s_axi_awcache(S00_AXI_awcache),
        .s_axi_awlen(S00_AXI_awlen),
        .s_axi_awlock(S00_AXI_awlock),
        .s_axi_awprot(S00_AXI_awprot),
        .s_axi_awqos(S00_AXI_awqos),
        .s_axi_awready(S00_AXI_awready),
        .s_axi_awregion(S00_AXI_awregion),
        .s_axi_awsize(S00_AXI_awsize),
        .s_axi_awvalid(S00_AXI_awvalid),
        .s_axi_bready(S00_AXI_bready),
        .s_axi_bresp(S00_AXI_bresp),
        .s_axi_bvalid(S00_AXI_bvalid),
        .s_axi_rdata(S00_AXI_rdata),
        .s_axi_rlast(S00_AXI_rlast),
        .s_axi_rready(S00_AXI_rready),
        .s_axi_rresp(S00_AXI_rresp),
        .s_axi_rvalid(S00_AXI_rvalid),
        .s_axi_wdata(S00_AXI_wdata),
        .s_axi_wlast(S00_AXI_wlast),
        .s_axi_wready(S00_AXI_wready),
        .s_axi_wstrb(S00_AXI_wstrb),
        .s_axi_wvalid(S00_AXI_wvalid));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_s00_couplers_imp_1HU9HL8
   (S00_AXI_awready,
    S00_AXI_wready,
    S00_AXI_bresp,
    S00_AXI_bvalid,
    S00_AXI_arready,
    S00_AXI_rdata,
    S00_AXI_rresp,
    S00_AXI_rvalid,
    m_axi_awaddr,
    m_axi_awprot,
    m_axi_awvalid,
    m_axi_wdata,
    m_axi_wstrb,
    m_axi_wvalid,
    m_axi_bready,
    m_axi_araddr,
    m_axi_arprot,
    m_axi_arvalid,
    m_axi_rready,
    S00_ACLK,
    S00_ARESETN,
    S00_AXI_awaddr,
    S00_AXI_awprot,
    S00_AXI_awvalid,
    S00_AXI_wdata,
    S00_AXI_wstrb,
    S00_AXI_wvalid,
    S00_AXI_bready,
    S00_AXI_araddr,
    S00_AXI_arprot,
    S00_AXI_arvalid,
    S00_AXI_rready,
    ACLK,
    ARESETN,
    s_axi_awready,
    s_axi_wready,
    s_axi_bresp,
    s_axi_bvalid,
    s_axi_arready,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rvalid);
  output S00_AXI_awready;
  output S00_AXI_wready;
  output [1:0]S00_AXI_bresp;
  output S00_AXI_bvalid;
  output S00_AXI_arready;
  output [31:0]S00_AXI_rdata;
  output [1:0]S00_AXI_rresp;
  output S00_AXI_rvalid;
  output [16:0]m_axi_awaddr;
  output [2:0]m_axi_awprot;
  output m_axi_awvalid;
  output [31:0]m_axi_wdata;
  output [3:0]m_axi_wstrb;
  output m_axi_wvalid;
  output m_axi_bready;
  output [16:0]m_axi_araddr;
  output [2:0]m_axi_arprot;
  output m_axi_arvalid;
  output m_axi_rready;
  input S00_ACLK;
  input S00_ARESETN;
  input [16:0]S00_AXI_awaddr;
  input [2:0]S00_AXI_awprot;
  input S00_AXI_awvalid;
  input [31:0]S00_AXI_wdata;
  input [3:0]S00_AXI_wstrb;
  input S00_AXI_wvalid;
  input S00_AXI_bready;
  input [16:0]S00_AXI_araddr;
  input [2:0]S00_AXI_arprot;
  input S00_AXI_arvalid;
  input S00_AXI_rready;
  input ACLK;
  input ARESETN;
  input [0:0]s_axi_awready;
  input [0:0]s_axi_wready;
  input [1:0]s_axi_bresp;
  input [0:0]s_axi_bvalid;
  input [0:0]s_axi_arready;
  input [31:0]s_axi_rdata;
  input [1:0]s_axi_rresp;
  input [0:0]s_axi_rvalid;

  wire ACLK;
  wire ARESETN;
  wire S00_ACLK;
  wire S00_ARESETN;
  wire [16:0]S00_AXI_araddr;
  wire [2:0]S00_AXI_arprot;
  wire S00_AXI_arready;
  wire S00_AXI_arvalid;
  wire [16:0]S00_AXI_awaddr;
  wire [2:0]S00_AXI_awprot;
  wire S00_AXI_awready;
  wire S00_AXI_awvalid;
  wire S00_AXI_bready;
  wire [1:0]S00_AXI_bresp;
  wire S00_AXI_bvalid;
  wire [31:0]S00_AXI_rdata;
  wire S00_AXI_rready;
  wire [1:0]S00_AXI_rresp;
  wire S00_AXI_rvalid;
  wire [31:0]S00_AXI_wdata;
  wire S00_AXI_wready;
  wire [3:0]S00_AXI_wstrb;
  wire S00_AXI_wvalid;
  wire [16:0]m_axi_araddr;
  wire [2:0]m_axi_arprot;
  wire m_axi_arvalid;
  wire [16:0]m_axi_awaddr;
  wire [2:0]m_axi_awprot;
  wire m_axi_awvalid;
  wire m_axi_bready;
  wire m_axi_rready;
  wire [31:0]m_axi_wdata;
  wire [3:0]m_axi_wstrb;
  wire m_axi_wvalid;
  wire [0:0]s_axi_arready;
  wire [0:0]s_axi_awready;
  wire [1:0]s_axi_bresp;
  wire [0:0]s_axi_bvalid;
  wire [31:0]s_axi_rdata;
  wire [1:0]s_axi_rresp;
  wire [0:0]s_axi_rvalid;
  wire [0:0]s_axi_wready;

  (* x_core_info = "axi_clock_converter_v2_1_9_axi_clock_converter,Vivado 2016.3_sdx" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_2fd7_auto_cc_2 auto_cc
       (.m_axi_aclk(ACLK),
        .m_axi_araddr(m_axi_araddr),
        .m_axi_aresetn(ARESETN),
        .m_axi_arprot(m_axi_arprot),
        .m_axi_arready(s_axi_arready),
        .m_axi_arvalid(m_axi_arvalid),
        .m_axi_awaddr(m_axi_awaddr),
        .m_axi_awprot(m_axi_awprot),
        .m_axi_awready(s_axi_awready),
        .m_axi_awvalid(m_axi_awvalid),
        .m_axi_bready(m_axi_bready),
        .m_axi_bresp(s_axi_bresp),
        .m_axi_bvalid(s_axi_bvalid),
        .m_axi_rdata(s_axi_rdata),
        .m_axi_rready(m_axi_rready),
        .m_axi_rresp(s_axi_rresp),
        .m_axi_rvalid(s_axi_rvalid),
        .m_axi_wdata(m_axi_wdata),
        .m_axi_wready(s_axi_wready),
        .m_axi_wstrb(m_axi_wstrb),
        .m_axi_wvalid(m_axi_wvalid),
        .s_axi_aclk(S00_ACLK),
        .s_axi_araddr(S00_AXI_araddr),
        .s_axi_aresetn(S00_ARESETN),
        .s_axi_arprot(S00_AXI_arprot),
        .s_axi_arready(S00_AXI_arready),
        .s_axi_arvalid(S00_AXI_arvalid),
        .s_axi_awaddr(S00_AXI_awaddr),
        .s_axi_awprot(S00_AXI_awprot),
        .s_axi_awready(S00_AXI_awready),
        .s_axi_awvalid(S00_AXI_awvalid),
        .s_axi_bready(S00_AXI_bready),
        .s_axi_bresp(S00_AXI_bresp),
        .s_axi_bvalid(S00_AXI_bvalid),
        .s_axi_rdata(S00_AXI_rdata),
        .s_axi_rready(S00_AXI_rready),
        .s_axi_rresp(S00_AXI_rresp),
        .s_axi_rvalid(S00_AXI_rvalid),
        .s_axi_wdata(S00_AXI_wdata),
        .s_axi_wready(S00_AXI_wready),
        .s_axi_wstrb(S00_AXI_wstrb),
        .s_axi_wvalid(S00_AXI_wvalid));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_s00_couplers_imp_BG5KE5
   (M00_AXI_awaddr,
    M00_AXI_awlen,
    M00_AXI_awsize,
    M00_AXI_awburst,
    M00_AXI_awlock,
    M00_AXI_awcache,
    M00_AXI_awprot,
    M00_AXI_awqos,
    M00_AXI_awvalid,
    M00_AXI_wdata,
    M00_AXI_wstrb,
    M00_AXI_wlast,
    M00_AXI_wvalid,
    M00_AXI_bready,
    M00_AXI_araddr,
    M00_AXI_arlen,
    M00_AXI_arsize,
    M00_AXI_arburst,
    M00_AXI_arlock,
    M00_AXI_arcache,
    M00_AXI_arprot,
    M00_AXI_arqos,
    M00_AXI_arvalid,
    M00_AXI_rready,
    S00_AXI_awready,
    S00_AXI_wready,
    S00_AXI_bresp,
    S00_AXI_bvalid,
    S00_AXI_arready,
    S00_AXI_rdata,
    S00_AXI_rresp,
    S00_AXI_rlast,
    S00_AXI_rvalid,
    S00_ACLK,
    S00_ARESETN,
    M00_ACLK,
    M00_ARESETN,
    M00_AXI_awready,
    M00_AXI_wready,
    M00_AXI_bresp,
    M00_AXI_bvalid,
    M00_AXI_arready,
    M00_AXI_rdata,
    M00_AXI_rresp,
    M00_AXI_rlast,
    M00_AXI_rvalid,
    S00_AXI_awaddr,
    S00_AXI_awlen,
    S00_AXI_awsize,
    S00_AXI_awburst,
    S00_AXI_awlock,
    S00_AXI_awcache,
    S00_AXI_awprot,
    S00_AXI_awregion,
    S00_AXI_awqos,
    S00_AXI_awvalid,
    S00_AXI_wdata,
    S00_AXI_wstrb,
    S00_AXI_wlast,
    S00_AXI_wvalid,
    S00_AXI_bready,
    S00_AXI_araddr,
    S00_AXI_arlen,
    S00_AXI_arsize,
    S00_AXI_arburst,
    S00_AXI_arlock,
    S00_AXI_arcache,
    S00_AXI_arprot,
    S00_AXI_arregion,
    S00_AXI_arqos,
    S00_AXI_arvalid,
    S00_AXI_rready);
  output [37:0]M00_AXI_awaddr;
  output [7:0]M00_AXI_awlen;
  output [2:0]M00_AXI_awsize;
  output [1:0]M00_AXI_awburst;
  output [0:0]M00_AXI_awlock;
  output [3:0]M00_AXI_awcache;
  output [2:0]M00_AXI_awprot;
  output [3:0]M00_AXI_awqos;
  output M00_AXI_awvalid;
  output [511:0]M00_AXI_wdata;
  output [63:0]M00_AXI_wstrb;
  output M00_AXI_wlast;
  output M00_AXI_wvalid;
  output M00_AXI_bready;
  output [37:0]M00_AXI_araddr;
  output [7:0]M00_AXI_arlen;
  output [2:0]M00_AXI_arsize;
  output [1:0]M00_AXI_arburst;
  output [0:0]M00_AXI_arlock;
  output [3:0]M00_AXI_arcache;
  output [2:0]M00_AXI_arprot;
  output [3:0]M00_AXI_arqos;
  output M00_AXI_arvalid;
  output M00_AXI_rready;
  output S00_AXI_awready;
  output S00_AXI_wready;
  output [1:0]S00_AXI_bresp;
  output S00_AXI_bvalid;
  output S00_AXI_arready;
  output [511:0]S00_AXI_rdata;
  output [1:0]S00_AXI_rresp;
  output S00_AXI_rlast;
  output S00_AXI_rvalid;
  input S00_ACLK;
  input S00_ARESETN;
  input M00_ACLK;
  input M00_ARESETN;
  input M00_AXI_awready;
  input M00_AXI_wready;
  input [1:0]M00_AXI_bresp;
  input M00_AXI_bvalid;
  input M00_AXI_arready;
  input [511:0]M00_AXI_rdata;
  input [1:0]M00_AXI_rresp;
  input M00_AXI_rlast;
  input M00_AXI_rvalid;
  input [37:0]S00_AXI_awaddr;
  input [7:0]S00_AXI_awlen;
  input [2:0]S00_AXI_awsize;
  input [1:0]S00_AXI_awburst;
  input [0:0]S00_AXI_awlock;
  input [3:0]S00_AXI_awcache;
  input [2:0]S00_AXI_awprot;
  input [3:0]S00_AXI_awregion;
  input [3:0]S00_AXI_awqos;
  input S00_AXI_awvalid;
  input [511:0]S00_AXI_wdata;
  input [63:0]S00_AXI_wstrb;
  input S00_AXI_wlast;
  input S00_AXI_wvalid;
  input S00_AXI_bready;
  input [37:0]S00_AXI_araddr;
  input [7:0]S00_AXI_arlen;
  input [2:0]S00_AXI_arsize;
  input [1:0]S00_AXI_arburst;
  input [0:0]S00_AXI_arlock;
  input [3:0]S00_AXI_arcache;
  input [2:0]S00_AXI_arprot;
  input [3:0]S00_AXI_arregion;
  input [3:0]S00_AXI_arqos;
  input S00_AXI_arvalid;
  input S00_AXI_rready;

  wire M00_ACLK;
  wire M00_ARESETN;
  wire [37:0]M00_AXI_araddr;
  wire [1:0]M00_AXI_arburst;
  wire [3:0]M00_AXI_arcache;
  wire [7:0]M00_AXI_arlen;
  wire [0:0]M00_AXI_arlock;
  wire [2:0]M00_AXI_arprot;
  wire [3:0]M00_AXI_arqos;
  wire M00_AXI_arready;
  wire [2:0]M00_AXI_arsize;
  wire M00_AXI_arvalid;
  wire [37:0]M00_AXI_awaddr;
  wire [1:0]M00_AXI_awburst;
  wire [3:0]M00_AXI_awcache;
  wire [7:0]M00_AXI_awlen;
  wire [0:0]M00_AXI_awlock;
  wire [2:0]M00_AXI_awprot;
  wire [3:0]M00_AXI_awqos;
  wire M00_AXI_awready;
  wire [2:0]M00_AXI_awsize;
  wire M00_AXI_awvalid;
  wire M00_AXI_bready;
  wire [1:0]M00_AXI_bresp;
  wire M00_AXI_bvalid;
  wire [511:0]M00_AXI_rdata;
  wire M00_AXI_rlast;
  wire M00_AXI_rready;
  wire [1:0]M00_AXI_rresp;
  wire M00_AXI_rvalid;
  wire [511:0]M00_AXI_wdata;
  wire M00_AXI_wlast;
  wire M00_AXI_wready;
  wire [63:0]M00_AXI_wstrb;
  wire M00_AXI_wvalid;
  wire S00_ACLK;
  wire S00_ARESETN;
  wire [37:0]S00_AXI_araddr;
  wire [1:0]S00_AXI_arburst;
  wire [3:0]S00_AXI_arcache;
  wire [7:0]S00_AXI_arlen;
  wire [0:0]S00_AXI_arlock;
  wire [2:0]S00_AXI_arprot;
  wire [3:0]S00_AXI_arqos;
  wire S00_AXI_arready;
  wire [3:0]S00_AXI_arregion;
  wire [2:0]S00_AXI_arsize;
  wire S00_AXI_arvalid;
  wire [37:0]S00_AXI_awaddr;
  wire [1:0]S00_AXI_awburst;
  wire [3:0]S00_AXI_awcache;
  wire [7:0]S00_AXI_awlen;
  wire [0:0]S00_AXI_awlock;
  wire [2:0]S00_AXI_awprot;
  wire [3:0]S00_AXI_awqos;
  wire S00_AXI_awready;
  wire [3:0]S00_AXI_awregion;
  wire [2:0]S00_AXI_awsize;
  wire S00_AXI_awvalid;
  wire S00_AXI_bready;
  wire [1:0]S00_AXI_bresp;
  wire S00_AXI_bvalid;
  wire [511:0]S00_AXI_rdata;
  wire S00_AXI_rlast;
  wire S00_AXI_rready;
  wire [1:0]S00_AXI_rresp;
  wire S00_AXI_rvalid;
  wire [511:0]S00_AXI_wdata;
  wire S00_AXI_wlast;
  wire S00_AXI_wready;
  wire [63:0]S00_AXI_wstrb;
  wire S00_AXI_wvalid;
  wire [37:0]s00_regslice_to_auto_cc_ARADDR;
  wire [1:0]s00_regslice_to_auto_cc_ARBURST;
  wire [3:0]s00_regslice_to_auto_cc_ARCACHE;
  wire [7:0]s00_regslice_to_auto_cc_ARLEN;
  wire s00_regslice_to_auto_cc_ARLOCK;
  wire [2:0]s00_regslice_to_auto_cc_ARPROT;
  wire [3:0]s00_regslice_to_auto_cc_ARQOS;
  wire s00_regslice_to_auto_cc_ARREADY;
  wire [3:0]s00_regslice_to_auto_cc_ARREGION;
  wire [2:0]s00_regslice_to_auto_cc_ARSIZE;
  wire s00_regslice_to_auto_cc_ARVALID;
  wire [37:0]s00_regslice_to_auto_cc_AWADDR;
  wire [1:0]s00_regslice_to_auto_cc_AWBURST;
  wire [3:0]s00_regslice_to_auto_cc_AWCACHE;
  wire [7:0]s00_regslice_to_auto_cc_AWLEN;
  wire s00_regslice_to_auto_cc_AWLOCK;
  wire [2:0]s00_regslice_to_auto_cc_AWPROT;
  wire [3:0]s00_regslice_to_auto_cc_AWQOS;
  wire s00_regslice_to_auto_cc_AWREADY;
  wire [3:0]s00_regslice_to_auto_cc_AWREGION;
  wire [2:0]s00_regslice_to_auto_cc_AWSIZE;
  wire s00_regslice_to_auto_cc_AWVALID;
  wire s00_regslice_to_auto_cc_BREADY;
  wire [1:0]s00_regslice_to_auto_cc_BRESP;
  wire s00_regslice_to_auto_cc_BVALID;
  wire [511:0]s00_regslice_to_auto_cc_RDATA;
  wire s00_regslice_to_auto_cc_RLAST;
  wire s00_regslice_to_auto_cc_RREADY;
  wire [1:0]s00_regslice_to_auto_cc_RRESP;
  wire s00_regslice_to_auto_cc_RVALID;
  wire [511:0]s00_regslice_to_auto_cc_WDATA;
  wire s00_regslice_to_auto_cc_WLAST;
  wire s00_regslice_to_auto_cc_WREADY;
  wire [63:0]s00_regslice_to_auto_cc_WSTRB;
  wire s00_regslice_to_auto_cc_WVALID;
  wire [3:0]NLW_auto_cc_m_axi_arregion_UNCONNECTED;
  wire [3:0]NLW_auto_cc_m_axi_awregion_UNCONNECTED;

  (* x_core_info = "axi_clock_converter_v2_1_9_axi_clock_converter,Vivado 2016.3_sdx" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_2fd7_auto_cc_1 auto_cc
       (.m_axi_aclk(M00_ACLK),
        .m_axi_araddr(M00_AXI_araddr),
        .m_axi_arburst(M00_AXI_arburst),
        .m_axi_arcache(M00_AXI_arcache),
        .m_axi_aresetn(M00_ARESETN),
        .m_axi_arlen(M00_AXI_arlen),
        .m_axi_arlock(M00_AXI_arlock),
        .m_axi_arprot(M00_AXI_arprot),
        .m_axi_arqos(M00_AXI_arqos),
        .m_axi_arready(M00_AXI_arready),
        .m_axi_arregion(NLW_auto_cc_m_axi_arregion_UNCONNECTED[3:0]),
        .m_axi_arsize(M00_AXI_arsize),
        .m_axi_arvalid(M00_AXI_arvalid),
        .m_axi_awaddr(M00_AXI_awaddr),
        .m_axi_awburst(M00_AXI_awburst),
        .m_axi_awcache(M00_AXI_awcache),
        .m_axi_awlen(M00_AXI_awlen),
        .m_axi_awlock(M00_AXI_awlock),
        .m_axi_awprot(M00_AXI_awprot),
        .m_axi_awqos(M00_AXI_awqos),
        .m_axi_awready(M00_AXI_awready),
        .m_axi_awregion(NLW_auto_cc_m_axi_awregion_UNCONNECTED[3:0]),
        .m_axi_awsize(M00_AXI_awsize),
        .m_axi_awvalid(M00_AXI_awvalid),
        .m_axi_bready(M00_AXI_bready),
        .m_axi_bresp(M00_AXI_bresp),
        .m_axi_bvalid(M00_AXI_bvalid),
        .m_axi_rdata(M00_AXI_rdata),
        .m_axi_rlast(M00_AXI_rlast),
        .m_axi_rready(M00_AXI_rready),
        .m_axi_rresp(M00_AXI_rresp),
        .m_axi_rvalid(M00_AXI_rvalid),
        .m_axi_wdata(M00_AXI_wdata),
        .m_axi_wlast(M00_AXI_wlast),
        .m_axi_wready(M00_AXI_wready),
        .m_axi_wstrb(M00_AXI_wstrb),
        .m_axi_wvalid(M00_AXI_wvalid),
        .s_axi_aclk(S00_ACLK),
        .s_axi_araddr(s00_regslice_to_auto_cc_ARADDR),
        .s_axi_arburst(s00_regslice_to_auto_cc_ARBURST),
        .s_axi_arcache(s00_regslice_to_auto_cc_ARCACHE),
        .s_axi_aresetn(S00_ARESETN),
        .s_axi_arlen(s00_regslice_to_auto_cc_ARLEN),
        .s_axi_arlock(s00_regslice_to_auto_cc_ARLOCK),
        .s_axi_arprot(s00_regslice_to_auto_cc_ARPROT),
        .s_axi_arqos(s00_regslice_to_auto_cc_ARQOS),
        .s_axi_arready(s00_regslice_to_auto_cc_ARREADY),
        .s_axi_arregion(s00_regslice_to_auto_cc_ARREGION),
        .s_axi_arsize(s00_regslice_to_auto_cc_ARSIZE),
        .s_axi_arvalid(s00_regslice_to_auto_cc_ARVALID),
        .s_axi_awaddr(s00_regslice_to_auto_cc_AWADDR),
        .s_axi_awburst(s00_regslice_to_auto_cc_AWBURST),
        .s_axi_awcache(s00_regslice_to_auto_cc_AWCACHE),
        .s_axi_awlen(s00_regslice_to_auto_cc_AWLEN),
        .s_axi_awlock(s00_regslice_to_auto_cc_AWLOCK),
        .s_axi_awprot(s00_regslice_to_auto_cc_AWPROT),
        .s_axi_awqos(s00_regslice_to_auto_cc_AWQOS),
        .s_axi_awready(s00_regslice_to_auto_cc_AWREADY),
        .s_axi_awregion(s00_regslice_to_auto_cc_AWREGION),
        .s_axi_awsize(s00_regslice_to_auto_cc_AWSIZE),
        .s_axi_awvalid(s00_regslice_to_auto_cc_AWVALID),
        .s_axi_bready(s00_regslice_to_auto_cc_BREADY),
        .s_axi_bresp(s00_regslice_to_auto_cc_BRESP),
        .s_axi_bvalid(s00_regslice_to_auto_cc_BVALID),
        .s_axi_rdata(s00_regslice_to_auto_cc_RDATA),
        .s_axi_rlast(s00_regslice_to_auto_cc_RLAST),
        .s_axi_rready(s00_regslice_to_auto_cc_RREADY),
        .s_axi_rresp(s00_regslice_to_auto_cc_RRESP),
        .s_axi_rvalid(s00_regslice_to_auto_cc_RVALID),
        .s_axi_wdata(s00_regslice_to_auto_cc_WDATA),
        .s_axi_wlast(s00_regslice_to_auto_cc_WLAST),
        .s_axi_wready(s00_regslice_to_auto_cc_WREADY),
        .s_axi_wstrb(s00_regslice_to_auto_cc_WSTRB),
        .s_axi_wvalid(s00_regslice_to_auto_cc_WVALID));
  (* x_core_info = "axi_register_slice_v2_1_10_axi_register_slice,Vivado 2016.3_sdx" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_2fd7_s00_regslice_1 s00_regslice
       (.aclk(S00_ACLK),
        .aresetn(S00_ARESETN),
        .m_axi_araddr(s00_regslice_to_auto_cc_ARADDR),
        .m_axi_arburst(s00_regslice_to_auto_cc_ARBURST),
        .m_axi_arcache(s00_regslice_to_auto_cc_ARCACHE),
        .m_axi_arlen(s00_regslice_to_auto_cc_ARLEN),
        .m_axi_arlock(s00_regslice_to_auto_cc_ARLOCK),
        .m_axi_arprot(s00_regslice_to_auto_cc_ARPROT),
        .m_axi_arqos(s00_regslice_to_auto_cc_ARQOS),
        .m_axi_arready(s00_regslice_to_auto_cc_ARREADY),
        .m_axi_arregion(s00_regslice_to_auto_cc_ARREGION),
        .m_axi_arsize(s00_regslice_to_auto_cc_ARSIZE),
        .m_axi_arvalid(s00_regslice_to_auto_cc_ARVALID),
        .m_axi_awaddr(s00_regslice_to_auto_cc_AWADDR),
        .m_axi_awburst(s00_regslice_to_auto_cc_AWBURST),
        .m_axi_awcache(s00_regslice_to_auto_cc_AWCACHE),
        .m_axi_awlen(s00_regslice_to_auto_cc_AWLEN),
        .m_axi_awlock(s00_regslice_to_auto_cc_AWLOCK),
        .m_axi_awprot(s00_regslice_to_auto_cc_AWPROT),
        .m_axi_awqos(s00_regslice_to_auto_cc_AWQOS),
        .m_axi_awready(s00_regslice_to_auto_cc_AWREADY),
        .m_axi_awregion(s00_regslice_to_auto_cc_AWREGION),
        .m_axi_awsize(s00_regslice_to_auto_cc_AWSIZE),
        .m_axi_awvalid(s00_regslice_to_auto_cc_AWVALID),
        .m_axi_bready(s00_regslice_to_auto_cc_BREADY),
        .m_axi_bresp(s00_regslice_to_auto_cc_BRESP),
        .m_axi_bvalid(s00_regslice_to_auto_cc_BVALID),
        .m_axi_rdata(s00_regslice_to_auto_cc_RDATA),
        .m_axi_rlast(s00_regslice_to_auto_cc_RLAST),
        .m_axi_rready(s00_regslice_to_auto_cc_RREADY),
        .m_axi_rresp(s00_regslice_to_auto_cc_RRESP),
        .m_axi_rvalid(s00_regslice_to_auto_cc_RVALID),
        .m_axi_wdata(s00_regslice_to_auto_cc_WDATA),
        .m_axi_wlast(s00_regslice_to_auto_cc_WLAST),
        .m_axi_wready(s00_regslice_to_auto_cc_WREADY),
        .m_axi_wstrb(s00_regslice_to_auto_cc_WSTRB),
        .m_axi_wvalid(s00_regslice_to_auto_cc_WVALID),
        .s_axi_araddr(S00_AXI_araddr),
        .s_axi_arburst(S00_AXI_arburst),
        .s_axi_arcache(S00_AXI_arcache),
        .s_axi_arlen(S00_AXI_arlen),
        .s_axi_arlock(S00_AXI_arlock),
        .s_axi_arprot(S00_AXI_arprot),
        .s_axi_arqos(S00_AXI_arqos),
        .s_axi_arready(S00_AXI_arready),
        .s_axi_arregion(S00_AXI_arregion),
        .s_axi_arsize(S00_AXI_arsize),
        .s_axi_arvalid(S00_AXI_arvalid),
        .s_axi_awaddr(S00_AXI_awaddr),
        .s_axi_awburst(S00_AXI_awburst),
        .s_axi_awcache(S00_AXI_awcache),
        .s_axi_awlen(S00_AXI_awlen),
        .s_axi_awlock(S00_AXI_awlock),
        .s_axi_awprot(S00_AXI_awprot),
        .s_axi_awqos(S00_AXI_awqos),
        .s_axi_awready(S00_AXI_awready),
        .s_axi_awregion(S00_AXI_awregion),
        .s_axi_awsize(S00_AXI_awsize),
        .s_axi_awvalid(S00_AXI_awvalid),
        .s_axi_bready(S00_AXI_bready),
        .s_axi_bresp(S00_AXI_bresp),
        .s_axi_bvalid(S00_AXI_bvalid),
        .s_axi_rdata(S00_AXI_rdata),
        .s_axi_rlast(S00_AXI_rlast),
        .s_axi_rready(S00_AXI_rready),
        .s_axi_rresp(S00_AXI_rresp),
        .s_axi_rvalid(S00_AXI_rvalid),
        .s_axi_wdata(S00_AXI_wdata),
        .s_axi_wlast(S00_AXI_wlast),
        .s_axi_wready(S00_AXI_wready),
        .s_axi_wstrb(S00_AXI_wstrb),
        .s_axi_wvalid(S00_AXI_wvalid));
endmodule

(* CHECK_LICENSE_TYPE = "xcl_design_u_ocl_region_0,bd_2fd7,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "bd_2fd7,Vivado 2016.3_sdx" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (INTERCONNECT_CLK,
    INTERCONNECT_RESET,
    KERNEL_CLK,
    KERNEL_RESET,
    S_AXI_awaddr,
    S_AXI_awprot,
    S_AXI_awqos,
    S_AXI_awvalid,
    S_AXI_awready,
    S_AXI_wdata,
    S_AXI_wstrb,
    S_AXI_wvalid,
    S_AXI_wready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_bready,
    S_AXI_araddr,
    S_AXI_arprot,
    S_AXI_arqos,
    S_AXI_arvalid,
    S_AXI_arready,
    S_AXI_rdata,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_rready,
    M00_AXI_awid,
    M00_AXI_awaddr,
    M00_AXI_awlen,
    M00_AXI_awsize,
    M00_AXI_awburst,
    M00_AXI_awlock,
    M00_AXI_awcache,
    M00_AXI_awprot,
    M00_AXI_awqos,
    M00_AXI_awvalid,
    M00_AXI_awready,
    M00_AXI_wdata,
    M00_AXI_wstrb,
    M00_AXI_wlast,
    M00_AXI_wvalid,
    M00_AXI_wready,
    M00_AXI_bid,
    M00_AXI_bresp,
    M00_AXI_bvalid,
    M00_AXI_bready,
    M00_AXI_arid,
    M00_AXI_araddr,
    M00_AXI_arlen,
    M00_AXI_arsize,
    M00_AXI_arburst,
    M00_AXI_arlock,
    M00_AXI_arcache,
    M00_AXI_arprot,
    M00_AXI_arqos,
    M00_AXI_arvalid,
    M00_AXI_arready,
    M00_AXI_rid,
    M00_AXI_rdata,
    M00_AXI_rresp,
    M00_AXI_rlast,
    M00_AXI_rvalid,
    M00_AXI_rready,
    M01_AXI_awid,
    M01_AXI_awaddr,
    M01_AXI_awlen,
    M01_AXI_awsize,
    M01_AXI_awburst,
    M01_AXI_awlock,
    M01_AXI_awcache,
    M01_AXI_awprot,
    M01_AXI_awqos,
    M01_AXI_awvalid,
    M01_AXI_awready,
    M01_AXI_wdata,
    M01_AXI_wstrb,
    M01_AXI_wlast,
    M01_AXI_wvalid,
    M01_AXI_wready,
    M01_AXI_bid,
    M01_AXI_bresp,
    M01_AXI_bvalid,
    M01_AXI_bready,
    M01_AXI_arid,
    M01_AXI_araddr,
    M01_AXI_arlen,
    M01_AXI_arsize,
    M01_AXI_arburst,
    M01_AXI_arlock,
    M01_AXI_arcache,
    M01_AXI_arprot,
    M01_AXI_arqos,
    M01_AXI_arvalid,
    M01_AXI_arready,
    M01_AXI_rid,
    M01_AXI_rdata,
    M01_AXI_rresp,
    M01_AXI_rlast,
    M01_AXI_rvalid,
    M01_AXI_rready);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.INTERCONNECT_CLK CLK" *) input INTERCONNECT_CLK;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.INTERCONNECT_RESET RST" *) input INTERCONNECT_RESET;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.KERNEL_CLK CLK" *) input KERNEL_CLK;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.KERNEL_RESET RST" *) input KERNEL_RESET;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWADDR" *) input [16:0]S_AXI_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWPROT" *) input [2:0]S_AXI_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWQOS" *) input [3:0]S_AXI_awqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWVALID" *) input S_AXI_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWREADY" *) output S_AXI_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WDATA" *) input [31:0]S_AXI_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WSTRB" *) input [3:0]S_AXI_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WVALID" *) input S_AXI_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WREADY" *) output S_AXI_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI BRESP" *) output [1:0]S_AXI_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI BVALID" *) output S_AXI_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI BREADY" *) input S_AXI_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARADDR" *) input [16:0]S_AXI_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARPROT" *) input [2:0]S_AXI_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARQOS" *) input [3:0]S_AXI_arqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARVALID" *) input S_AXI_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARREADY" *) output S_AXI_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RDATA" *) output [31:0]S_AXI_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RRESP" *) output [1:0]S_AXI_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RVALID" *) output S_AXI_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RREADY" *) input S_AXI_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI AWID" *) output [3:0]M00_AXI_awid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI AWADDR" *) output [37:0]M00_AXI_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI AWLEN" *) output [7:0]M00_AXI_awlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI AWSIZE" *) output [2:0]M00_AXI_awsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI AWBURST" *) output [1:0]M00_AXI_awburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI AWLOCK" *) output [0:0]M00_AXI_awlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI AWCACHE" *) output [3:0]M00_AXI_awcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI AWPROT" *) output [2:0]M00_AXI_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI AWQOS" *) output [3:0]M00_AXI_awqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI AWVALID" *) output M00_AXI_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI AWREADY" *) input M00_AXI_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI WDATA" *) output [511:0]M00_AXI_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI WSTRB" *) output [63:0]M00_AXI_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI WLAST" *) output M00_AXI_wlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI WVALID" *) output M00_AXI_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI WREADY" *) input M00_AXI_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI BID" *) input [3:0]M00_AXI_bid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI BRESP" *) input [1:0]M00_AXI_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI BVALID" *) input M00_AXI_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI BREADY" *) output M00_AXI_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI ARID" *) output [3:0]M00_AXI_arid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI ARADDR" *) output [37:0]M00_AXI_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI ARLEN" *) output [7:0]M00_AXI_arlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI ARSIZE" *) output [2:0]M00_AXI_arsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI ARBURST" *) output [1:0]M00_AXI_arburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI ARLOCK" *) output [0:0]M00_AXI_arlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI ARCACHE" *) output [3:0]M00_AXI_arcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI ARPROT" *) output [2:0]M00_AXI_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI ARQOS" *) output [3:0]M00_AXI_arqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI ARVALID" *) output M00_AXI_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI ARREADY" *) input M00_AXI_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI RID" *) input [3:0]M00_AXI_rid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI RDATA" *) input [511:0]M00_AXI_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI RRESP" *) input [1:0]M00_AXI_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI RLAST" *) input M00_AXI_rlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI RVALID" *) input M00_AXI_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI RREADY" *) output M00_AXI_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M01_AXI AWID" *) output [3:0]M01_AXI_awid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M01_AXI AWADDR" *) output [37:0]M01_AXI_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M01_AXI AWLEN" *) output [7:0]M01_AXI_awlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M01_AXI AWSIZE" *) output [2:0]M01_AXI_awsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M01_AXI AWBURST" *) output [1:0]M01_AXI_awburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M01_AXI AWLOCK" *) output [0:0]M01_AXI_awlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M01_AXI AWCACHE" *) output [3:0]M01_AXI_awcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M01_AXI AWPROT" *) output [2:0]M01_AXI_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M01_AXI AWQOS" *) output [3:0]M01_AXI_awqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M01_AXI AWVALID" *) output M01_AXI_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M01_AXI AWREADY" *) input M01_AXI_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M01_AXI WDATA" *) output [511:0]M01_AXI_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M01_AXI WSTRB" *) output [63:0]M01_AXI_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M01_AXI WLAST" *) output M01_AXI_wlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M01_AXI WVALID" *) output M01_AXI_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M01_AXI WREADY" *) input M01_AXI_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M01_AXI BID" *) input [3:0]M01_AXI_bid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M01_AXI BRESP" *) input [1:0]M01_AXI_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M01_AXI BVALID" *) input M01_AXI_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M01_AXI BREADY" *) output M01_AXI_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M01_AXI ARID" *) output [3:0]M01_AXI_arid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M01_AXI ARADDR" *) output [37:0]M01_AXI_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M01_AXI ARLEN" *) output [7:0]M01_AXI_arlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M01_AXI ARSIZE" *) output [2:0]M01_AXI_arsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M01_AXI ARBURST" *) output [1:0]M01_AXI_arburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M01_AXI ARLOCK" *) output [0:0]M01_AXI_arlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M01_AXI ARCACHE" *) output [3:0]M01_AXI_arcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M01_AXI ARPROT" *) output [2:0]M01_AXI_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M01_AXI ARQOS" *) output [3:0]M01_AXI_arqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M01_AXI ARVALID" *) output M01_AXI_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M01_AXI ARREADY" *) input M01_AXI_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M01_AXI RID" *) input [3:0]M01_AXI_rid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M01_AXI RDATA" *) input [511:0]M01_AXI_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M01_AXI RRESP" *) input [1:0]M01_AXI_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M01_AXI RLAST" *) input M01_AXI_rlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M01_AXI RVALID" *) input M01_AXI_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M01_AXI RREADY" *) output M01_AXI_rready;

  wire INTERCONNECT_CLK;
  wire INTERCONNECT_RESET;
  wire KERNEL_CLK;
  wire KERNEL_RESET;
  wire [37:0]M00_AXI_araddr;
  wire [1:0]M00_AXI_arburst;
  wire [3:0]M00_AXI_arcache;
  wire [3:0]M00_AXI_arid;
  wire [7:0]M00_AXI_arlen;
  wire [0:0]M00_AXI_arlock;
  wire [2:0]M00_AXI_arprot;
  wire [3:0]M00_AXI_arqos;
  wire M00_AXI_arready;
  wire [2:0]M00_AXI_arsize;
  wire M00_AXI_arvalid;
  wire [37:0]M00_AXI_awaddr;
  wire [1:0]M00_AXI_awburst;
  wire [3:0]M00_AXI_awcache;
  wire [3:0]M00_AXI_awid;
  wire [7:0]M00_AXI_awlen;
  wire [0:0]M00_AXI_awlock;
  wire [2:0]M00_AXI_awprot;
  wire [3:0]M00_AXI_awqos;
  wire M00_AXI_awready;
  wire [2:0]M00_AXI_awsize;
  wire M00_AXI_awvalid;
  wire [3:0]M00_AXI_bid;
  wire M00_AXI_bready;
  wire [1:0]M00_AXI_bresp;
  wire M00_AXI_bvalid;
  wire [511:0]M00_AXI_rdata;
  wire [3:0]M00_AXI_rid;
  wire M00_AXI_rlast;
  wire M00_AXI_rready;
  wire [1:0]M00_AXI_rresp;
  wire M00_AXI_rvalid;
  wire [511:0]M00_AXI_wdata;
  wire M00_AXI_wlast;
  wire M00_AXI_wready;
  wire [63:0]M00_AXI_wstrb;
  wire M00_AXI_wvalid;
  wire [37:0]M01_AXI_araddr;
  wire [1:0]M01_AXI_arburst;
  wire [3:0]M01_AXI_arcache;
  wire [3:0]M01_AXI_arid;
  wire [7:0]M01_AXI_arlen;
  wire [0:0]M01_AXI_arlock;
  wire [2:0]M01_AXI_arprot;
  wire [3:0]M01_AXI_arqos;
  wire M01_AXI_arready;
  wire [2:0]M01_AXI_arsize;
  wire M01_AXI_arvalid;
  wire [37:0]M01_AXI_awaddr;
  wire [1:0]M01_AXI_awburst;
  wire [3:0]M01_AXI_awcache;
  wire [3:0]M01_AXI_awid;
  wire [7:0]M01_AXI_awlen;
  wire [0:0]M01_AXI_awlock;
  wire [2:0]M01_AXI_awprot;
  wire [3:0]M01_AXI_awqos;
  wire M01_AXI_awready;
  wire [2:0]M01_AXI_awsize;
  wire M01_AXI_awvalid;
  wire [3:0]M01_AXI_bid;
  wire M01_AXI_bready;
  wire [1:0]M01_AXI_bresp;
  wire M01_AXI_bvalid;
  wire [511:0]M01_AXI_rdata;
  wire [3:0]M01_AXI_rid;
  wire M01_AXI_rlast;
  wire M01_AXI_rready;
  wire [1:0]M01_AXI_rresp;
  wire M01_AXI_rvalid;
  wire [511:0]M01_AXI_wdata;
  wire M01_AXI_wlast;
  wire M01_AXI_wready;
  wire [63:0]M01_AXI_wstrb;
  wire M01_AXI_wvalid;
  wire [16:0]S_AXI_araddr;
  wire [2:0]S_AXI_arprot;
  wire [3:0]S_AXI_arqos;
  wire S_AXI_arready;
  wire S_AXI_arvalid;
  wire [16:0]S_AXI_awaddr;
  wire [2:0]S_AXI_awprot;
  wire [3:0]S_AXI_awqos;
  wire S_AXI_awready;
  wire S_AXI_awvalid;
  wire S_AXI_bready;
  wire [1:0]S_AXI_bresp;
  wire S_AXI_bvalid;
  wire [31:0]S_AXI_rdata;
  wire S_AXI_rready;
  wire [1:0]S_AXI_rresp;
  wire S_AXI_rvalid;
  wire [31:0]S_AXI_wdata;
  wire S_AXI_wready;
  wire [3:0]S_AXI_wstrb;
  wire S_AXI_wvalid;

  (* HW_HANDOFF = "xcl_design_u_ocl_region_0.hwdef" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_2fd7 inst
       (.INTERCONNECT_CLK(INTERCONNECT_CLK),
        .INTERCONNECT_RESET(INTERCONNECT_RESET),
        .KERNEL_CLK(KERNEL_CLK),
        .KERNEL_RESET(KERNEL_RESET),
        .M00_AXI_araddr(M00_AXI_araddr),
        .M00_AXI_arburst(M00_AXI_arburst),
        .M00_AXI_arcache(M00_AXI_arcache),
        .M00_AXI_arid(M00_AXI_arid),
        .M00_AXI_arlen(M00_AXI_arlen),
        .M00_AXI_arlock(M00_AXI_arlock),
        .M00_AXI_arprot(M00_AXI_arprot),
        .M00_AXI_arqos(M00_AXI_arqos),
        .M00_AXI_arready(M00_AXI_arready),
        .M00_AXI_arsize(M00_AXI_arsize),
        .M00_AXI_arvalid(M00_AXI_arvalid),
        .M00_AXI_awaddr(M00_AXI_awaddr),
        .M00_AXI_awburst(M00_AXI_awburst),
        .M00_AXI_awcache(M00_AXI_awcache),
        .M00_AXI_awid(M00_AXI_awid),
        .M00_AXI_awlen(M00_AXI_awlen),
        .M00_AXI_awlock(M00_AXI_awlock),
        .M00_AXI_awprot(M00_AXI_awprot),
        .M00_AXI_awqos(M00_AXI_awqos),
        .M00_AXI_awready(M00_AXI_awready),
        .M00_AXI_awsize(M00_AXI_awsize),
        .M00_AXI_awvalid(M00_AXI_awvalid),
        .M00_AXI_bid(M00_AXI_bid),
        .M00_AXI_bready(M00_AXI_bready),
        .M00_AXI_bresp(M00_AXI_bresp),
        .M00_AXI_bvalid(M00_AXI_bvalid),
        .M00_AXI_rdata(M00_AXI_rdata),
        .M00_AXI_rid(M00_AXI_rid),
        .M00_AXI_rlast(M00_AXI_rlast),
        .M00_AXI_rready(M00_AXI_rready),
        .M00_AXI_rresp(M00_AXI_rresp),
        .M00_AXI_rvalid(M00_AXI_rvalid),
        .M00_AXI_wdata(M00_AXI_wdata),
        .M00_AXI_wlast(M00_AXI_wlast),
        .M00_AXI_wready(M00_AXI_wready),
        .M00_AXI_wstrb(M00_AXI_wstrb),
        .M00_AXI_wvalid(M00_AXI_wvalid),
        .M01_AXI_araddr(M01_AXI_araddr),
        .M01_AXI_arburst(M01_AXI_arburst),
        .M01_AXI_arcache(M01_AXI_arcache),
        .M01_AXI_arid(M01_AXI_arid),
        .M01_AXI_arlen(M01_AXI_arlen),
        .M01_AXI_arlock(M01_AXI_arlock),
        .M01_AXI_arprot(M01_AXI_arprot),
        .M01_AXI_arqos(M01_AXI_arqos),
        .M01_AXI_arready(M01_AXI_arready),
        .M01_AXI_arsize(M01_AXI_arsize),
        .M01_AXI_arvalid(M01_AXI_arvalid),
        .M01_AXI_awaddr(M01_AXI_awaddr),
        .M01_AXI_awburst(M01_AXI_awburst),
        .M01_AXI_awcache(M01_AXI_awcache),
        .M01_AXI_awid(M01_AXI_awid),
        .M01_AXI_awlen(M01_AXI_awlen),
        .M01_AXI_awlock(M01_AXI_awlock),
        .M01_AXI_awprot(M01_AXI_awprot),
        .M01_AXI_awqos(M01_AXI_awqos),
        .M01_AXI_awready(M01_AXI_awready),
        .M01_AXI_awsize(M01_AXI_awsize),
        .M01_AXI_awvalid(M01_AXI_awvalid),
        .M01_AXI_bid(M01_AXI_bid),
        .M01_AXI_bready(M01_AXI_bready),
        .M01_AXI_bresp(M01_AXI_bresp),
        .M01_AXI_bvalid(M01_AXI_bvalid),
        .M01_AXI_rdata(M01_AXI_rdata),
        .M01_AXI_rid(M01_AXI_rid),
        .M01_AXI_rlast(M01_AXI_rlast),
        .M01_AXI_rready(M01_AXI_rready),
        .M01_AXI_rresp(M01_AXI_rresp),
        .M01_AXI_rvalid(M01_AXI_rvalid),
        .M01_AXI_wdata(M01_AXI_wdata),
        .M01_AXI_wlast(M01_AXI_wlast),
        .M01_AXI_wready(M01_AXI_wready),
        .M01_AXI_wstrb(M01_AXI_wstrb),
        .M01_AXI_wvalid(M01_AXI_wvalid),
        .S_AXI_araddr(S_AXI_araddr),
        .S_AXI_arprot(S_AXI_arprot),
        .S_AXI_arqos(S_AXI_arqos),
        .S_AXI_arready(S_AXI_arready),
        .S_AXI_arvalid(S_AXI_arvalid),
        .S_AXI_awaddr(S_AXI_awaddr),
        .S_AXI_awprot(S_AXI_awprot),
        .S_AXI_awqos(S_AXI_awqos),
        .S_AXI_awready(S_AXI_awready),
        .S_AXI_awvalid(S_AXI_awvalid),
        .S_AXI_bready(S_AXI_bready),
        .S_AXI_bresp(S_AXI_bresp),
        .S_AXI_bvalid(S_AXI_bvalid),
        .S_AXI_rdata(S_AXI_rdata),
        .S_AXI_rready(S_AXI_rready),
        .S_AXI_rresp(S_AXI_rresp),
        .S_AXI_rvalid(S_AXI_rvalid),
        .S_AXI_wdata(S_AXI_wdata),
        .S_AXI_wready(S_AXI_wready),
        .S_AXI_wstrb(S_AXI_wstrb),
        .S_AXI_wvalid(S_AXI_wvalid));
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
