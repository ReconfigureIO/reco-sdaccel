// Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2016.3_sdx (lin64) Build 1721784 Tue Nov 29 22:12:24 MST 2016
// Date        : Fri Dec 30 09:06:30 2016
// Host        : hms-beatdown running 64-bit Ubuntu 15.10
// Command     : write_verilog -force -mode synth_stub
//               /home/joshbohde/code/nerabus/refdesign_test/adm-pcie-ku3_2ddr_3.1/adm-pcie-ku3_2ddr_3.1.srcs/sources_1/bd/xcl_design/ip/xcl_design_xilmonitor_apm_0/xcl_design_xilmonitor_apm_0_stub.v
// Design      : xcl_design_xilmonitor_apm_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xcku060-ffva1156-2-e
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "axi_perf_mon_v5_0_12_top,Vivado 2016.3_sdx" *)
module xcl_design_xilmonitor_apm_0(s_axi_aclk, s_axi_aresetn, s_axi_awaddr, 
  s_axi_awvalid, s_axi_awready, s_axi_wdata, s_axi_wstrb, s_axi_wvalid, s_axi_wready, 
  s_axi_bresp, s_axi_bvalid, s_axi_bready, s_axi_araddr, s_axi_arvalid, s_axi_arready, 
  s_axi_rdata, s_axi_rresp, s_axi_rvalid, s_axi_rready, slot_0_axi_aclk, slot_0_axi_aresetn, 
  slot_0_axi_awid, slot_0_axi_awaddr, slot_0_axi_awprot, slot_0_axi_awlen, 
  slot_0_axi_awsize, slot_0_axi_awburst, slot_0_axi_awcache, slot_0_axi_awlock, 
  slot_0_axi_awvalid, slot_0_axi_awready, slot_0_axi_wdata, slot_0_axi_wstrb, 
  slot_0_axi_wlast, slot_0_axi_wvalid, slot_0_axi_wready, slot_0_axi_bid, slot_0_axi_bresp, 
  slot_0_axi_bvalid, slot_0_axi_bready, slot_0_axi_arid, slot_0_axi_araddr, 
  slot_0_axi_arlen, slot_0_axi_arsize, slot_0_axi_arburst, slot_0_axi_arcache, 
  slot_0_axi_arprot, slot_0_axi_arlock, slot_0_axi_arvalid, slot_0_axi_arready, 
  slot_0_axi_rid, slot_0_axi_rdata, slot_0_axi_rresp, slot_0_axi_rlast, slot_0_axi_rvalid, 
  slot_0_axi_rready, slot_0_ext_trig, slot_0_ext_trig_stop, slot_1_axi_aclk, 
  slot_1_axi_aresetn, slot_1_axi_awid, slot_1_axi_awaddr, slot_1_axi_awprot, 
  slot_1_axi_awlen, slot_1_axi_awsize, slot_1_axi_awburst, slot_1_axi_awcache, 
  slot_1_axi_awlock, slot_1_axi_awvalid, slot_1_axi_awready, slot_1_axi_wdata, 
  slot_1_axi_wstrb, slot_1_axi_wlast, slot_1_axi_wvalid, slot_1_axi_wready, slot_1_axi_bid, 
  slot_1_axi_bresp, slot_1_axi_bvalid, slot_1_axi_bready, slot_1_axi_arid, 
  slot_1_axi_araddr, slot_1_axi_arlen, slot_1_axi_arsize, slot_1_axi_arburst, 
  slot_1_axi_arcache, slot_1_axi_arprot, slot_1_axi_arlock, slot_1_axi_arvalid, 
  slot_1_axi_arready, slot_1_axi_rid, slot_1_axi_rdata, slot_1_axi_rresp, slot_1_axi_rlast, 
  slot_1_axi_rvalid, slot_1_axi_rready, slot_1_ext_trig, slot_1_ext_trig_stop, 
  slot_2_axi_aclk, slot_2_axi_aresetn, slot_2_axi_awid, slot_2_axi_awaddr, 
  slot_2_axi_awprot, slot_2_axi_awlen, slot_2_axi_awsize, slot_2_axi_awburst, 
  slot_2_axi_awcache, slot_2_axi_awlock, slot_2_axi_awvalid, slot_2_axi_awready, 
  slot_2_axi_wdata, slot_2_axi_wstrb, slot_2_axi_wlast, slot_2_axi_wvalid, 
  slot_2_axi_wready, slot_2_axi_bid, slot_2_axi_bresp, slot_2_axi_bvalid, 
  slot_2_axi_bready, slot_2_axi_arid, slot_2_axi_araddr, slot_2_axi_arlen, 
  slot_2_axi_arsize, slot_2_axi_arburst, slot_2_axi_arcache, slot_2_axi_arprot, 
  slot_2_axi_arlock, slot_2_axi_arvalid, slot_2_axi_arready, slot_2_axi_rid, 
  slot_2_axi_rdata, slot_2_axi_rresp, slot_2_axi_rlast, slot_2_axi_rvalid, 
  slot_2_axi_rready, slot_2_ext_trig, slot_2_ext_trig_stop, ext_clk_0, ext_rstn_0, 
  ext_event_0_cnt_start, ext_event_0_cnt_stop, ext_event_0, ext_clk_1, ext_rstn_1, 
  ext_event_1_cnt_start, ext_event_1_cnt_stop, ext_event_1, ext_clk_2, ext_rstn_2, 
  ext_event_2_cnt_start, ext_event_2_cnt_stop, ext_event_2, capture_event, reset_event, 
  core_aclk, core_aresetn, m_axis_aclk, m_axis_aresetn, m_axis_tdata, m_axis_tstrb, 
  m_axis_tvalid, m_axis_tid, m_axis_tready, interrupt)
/* synthesis syn_black_box black_box_pad_pin="s_axi_aclk,s_axi_aresetn,s_axi_awaddr[15:0],s_axi_awvalid,s_axi_awready,s_axi_wdata[31:0],s_axi_wstrb[3:0],s_axi_wvalid,s_axi_wready,s_axi_bresp[1:0],s_axi_bvalid,s_axi_bready,s_axi_araddr[15:0],s_axi_arvalid,s_axi_arready,s_axi_rdata[31:0],s_axi_rresp[1:0],s_axi_rvalid,s_axi_rready,slot_0_axi_aclk,slot_0_axi_aresetn,slot_0_axi_awid[3:0],slot_0_axi_awaddr[37:0],slot_0_axi_awprot[2:0],slot_0_axi_awlen[7:0],slot_0_axi_awsize[2:0],slot_0_axi_awburst[1:0],slot_0_axi_awcache[3:0],slot_0_axi_awlock[0:0],slot_0_axi_awvalid,slot_0_axi_awready,slot_0_axi_wdata[511:0],slot_0_axi_wstrb[63:0],slot_0_axi_wlast,slot_0_axi_wvalid,slot_0_axi_wready,slot_0_axi_bid[3:0],slot_0_axi_bresp[1:0],slot_0_axi_bvalid,slot_0_axi_bready,slot_0_axi_arid[3:0],slot_0_axi_araddr[37:0],slot_0_axi_arlen[7:0],slot_0_axi_arsize[2:0],slot_0_axi_arburst[1:0],slot_0_axi_arcache[3:0],slot_0_axi_arprot[2:0],slot_0_axi_arlock[0:0],slot_0_axi_arvalid,slot_0_axi_arready,slot_0_axi_rid[3:0],slot_0_axi_rdata[511:0],slot_0_axi_rresp[1:0],slot_0_axi_rlast,slot_0_axi_rvalid,slot_0_axi_rready,slot_0_ext_trig,slot_0_ext_trig_stop,slot_1_axi_aclk,slot_1_axi_aresetn,slot_1_axi_awid[4:0],slot_1_axi_awaddr[63:0],slot_1_axi_awprot[2:0],slot_1_axi_awlen[7:0],slot_1_axi_awsize[2:0],slot_1_axi_awburst[1:0],slot_1_axi_awcache[3:0],slot_1_axi_awlock[0:0],slot_1_axi_awvalid,slot_1_axi_awready,slot_1_axi_wdata[255:0],slot_1_axi_wstrb[31:0],slot_1_axi_wlast,slot_1_axi_wvalid,slot_1_axi_wready,slot_1_axi_bid[4:0],slot_1_axi_bresp[1:0],slot_1_axi_bvalid,slot_1_axi_bready,slot_1_axi_arid[4:0],slot_1_axi_araddr[63:0],slot_1_axi_arlen[7:0],slot_1_axi_arsize[2:0],slot_1_axi_arburst[1:0],slot_1_axi_arcache[3:0],slot_1_axi_arprot[2:0],slot_1_axi_arlock[0:0],slot_1_axi_arvalid,slot_1_axi_arready,slot_1_axi_rid[4:0],slot_1_axi_rdata[255:0],slot_1_axi_rresp[1:0],slot_1_axi_rlast,slot_1_axi_rvalid,slot_1_axi_rready,slot_1_ext_trig,slot_1_ext_trig_stop,slot_2_axi_aclk,slot_2_axi_aresetn,slot_2_axi_awid[3:0],slot_2_axi_awaddr[37:0],slot_2_axi_awprot[2:0],slot_2_axi_awlen[7:0],slot_2_axi_awsize[2:0],slot_2_axi_awburst[1:0],slot_2_axi_awcache[3:0],slot_2_axi_awlock[0:0],slot_2_axi_awvalid,slot_2_axi_awready,slot_2_axi_wdata[511:0],slot_2_axi_wstrb[63:0],slot_2_axi_wlast,slot_2_axi_wvalid,slot_2_axi_wready,slot_2_axi_bid[3:0],slot_2_axi_bresp[1:0],slot_2_axi_bvalid,slot_2_axi_bready,slot_2_axi_arid[3:0],slot_2_axi_araddr[37:0],slot_2_axi_arlen[7:0],slot_2_axi_arsize[2:0],slot_2_axi_arburst[1:0],slot_2_axi_arcache[3:0],slot_2_axi_arprot[2:0],slot_2_axi_arlock[0:0],slot_2_axi_arvalid,slot_2_axi_arready,slot_2_axi_rid[3:0],slot_2_axi_rdata[511:0],slot_2_axi_rresp[1:0],slot_2_axi_rlast,slot_2_axi_rvalid,slot_2_axi_rready,slot_2_ext_trig,slot_2_ext_trig_stop,ext_clk_0,ext_rstn_0,ext_event_0_cnt_start,ext_event_0_cnt_stop,ext_event_0,ext_clk_1,ext_rstn_1,ext_event_1_cnt_start,ext_event_1_cnt_stop,ext_event_1,ext_clk_2,ext_rstn_2,ext_event_2_cnt_start,ext_event_2_cnt_stop,ext_event_2,capture_event,reset_event,core_aclk,core_aresetn,m_axis_aclk,m_axis_aresetn,m_axis_tdata[95:0],m_axis_tstrb[11:0],m_axis_tvalid,m_axis_tid[0:0],m_axis_tready,interrupt" */;
  input s_axi_aclk;
  input s_axi_aresetn;
  input [15:0]s_axi_awaddr;
  input s_axi_awvalid;
  output s_axi_awready;
  input [31:0]s_axi_wdata;
  input [3:0]s_axi_wstrb;
  input s_axi_wvalid;
  output s_axi_wready;
  output [1:0]s_axi_bresp;
  output s_axi_bvalid;
  input s_axi_bready;
  input [15:0]s_axi_araddr;
  input s_axi_arvalid;
  output s_axi_arready;
  output [31:0]s_axi_rdata;
  output [1:0]s_axi_rresp;
  output s_axi_rvalid;
  input s_axi_rready;
  input slot_0_axi_aclk;
  input slot_0_axi_aresetn;
  input [3:0]slot_0_axi_awid;
  input [37:0]slot_0_axi_awaddr;
  input [2:0]slot_0_axi_awprot;
  input [7:0]slot_0_axi_awlen;
  input [2:0]slot_0_axi_awsize;
  input [1:0]slot_0_axi_awburst;
  input [3:0]slot_0_axi_awcache;
  input [0:0]slot_0_axi_awlock;
  input slot_0_axi_awvalid;
  input slot_0_axi_awready;
  input [511:0]slot_0_axi_wdata;
  input [63:0]slot_0_axi_wstrb;
  input slot_0_axi_wlast;
  input slot_0_axi_wvalid;
  input slot_0_axi_wready;
  input [3:0]slot_0_axi_bid;
  input [1:0]slot_0_axi_bresp;
  input slot_0_axi_bvalid;
  input slot_0_axi_bready;
  input [3:0]slot_0_axi_arid;
  input [37:0]slot_0_axi_araddr;
  input [7:0]slot_0_axi_arlen;
  input [2:0]slot_0_axi_arsize;
  input [1:0]slot_0_axi_arburst;
  input [3:0]slot_0_axi_arcache;
  input [2:0]slot_0_axi_arprot;
  input [0:0]slot_0_axi_arlock;
  input slot_0_axi_arvalid;
  input slot_0_axi_arready;
  input [3:0]slot_0_axi_rid;
  input [511:0]slot_0_axi_rdata;
  input [1:0]slot_0_axi_rresp;
  input slot_0_axi_rlast;
  input slot_0_axi_rvalid;
  input slot_0_axi_rready;
  input slot_0_ext_trig;
  input slot_0_ext_trig_stop;
  input slot_1_axi_aclk;
  input slot_1_axi_aresetn;
  input [4:0]slot_1_axi_awid;
  input [63:0]slot_1_axi_awaddr;
  input [2:0]slot_1_axi_awprot;
  input [7:0]slot_1_axi_awlen;
  input [2:0]slot_1_axi_awsize;
  input [1:0]slot_1_axi_awburst;
  input [3:0]slot_1_axi_awcache;
  input [0:0]slot_1_axi_awlock;
  input slot_1_axi_awvalid;
  input slot_1_axi_awready;
  input [255:0]slot_1_axi_wdata;
  input [31:0]slot_1_axi_wstrb;
  input slot_1_axi_wlast;
  input slot_1_axi_wvalid;
  input slot_1_axi_wready;
  input [4:0]slot_1_axi_bid;
  input [1:0]slot_1_axi_bresp;
  input slot_1_axi_bvalid;
  input slot_1_axi_bready;
  input [4:0]slot_1_axi_arid;
  input [63:0]slot_1_axi_araddr;
  input [7:0]slot_1_axi_arlen;
  input [2:0]slot_1_axi_arsize;
  input [1:0]slot_1_axi_arburst;
  input [3:0]slot_1_axi_arcache;
  input [2:0]slot_1_axi_arprot;
  input [0:0]slot_1_axi_arlock;
  input slot_1_axi_arvalid;
  input slot_1_axi_arready;
  input [4:0]slot_1_axi_rid;
  input [255:0]slot_1_axi_rdata;
  input [1:0]slot_1_axi_rresp;
  input slot_1_axi_rlast;
  input slot_1_axi_rvalid;
  input slot_1_axi_rready;
  input slot_1_ext_trig;
  input slot_1_ext_trig_stop;
  input slot_2_axi_aclk;
  input slot_2_axi_aresetn;
  input [3:0]slot_2_axi_awid;
  input [37:0]slot_2_axi_awaddr;
  input [2:0]slot_2_axi_awprot;
  input [7:0]slot_2_axi_awlen;
  input [2:0]slot_2_axi_awsize;
  input [1:0]slot_2_axi_awburst;
  input [3:0]slot_2_axi_awcache;
  input [0:0]slot_2_axi_awlock;
  input slot_2_axi_awvalid;
  input slot_2_axi_awready;
  input [511:0]slot_2_axi_wdata;
  input [63:0]slot_2_axi_wstrb;
  input slot_2_axi_wlast;
  input slot_2_axi_wvalid;
  input slot_2_axi_wready;
  input [3:0]slot_2_axi_bid;
  input [1:0]slot_2_axi_bresp;
  input slot_2_axi_bvalid;
  input slot_2_axi_bready;
  input [3:0]slot_2_axi_arid;
  input [37:0]slot_2_axi_araddr;
  input [7:0]slot_2_axi_arlen;
  input [2:0]slot_2_axi_arsize;
  input [1:0]slot_2_axi_arburst;
  input [3:0]slot_2_axi_arcache;
  input [2:0]slot_2_axi_arprot;
  input [0:0]slot_2_axi_arlock;
  input slot_2_axi_arvalid;
  input slot_2_axi_arready;
  input [3:0]slot_2_axi_rid;
  input [511:0]slot_2_axi_rdata;
  input [1:0]slot_2_axi_rresp;
  input slot_2_axi_rlast;
  input slot_2_axi_rvalid;
  input slot_2_axi_rready;
  input slot_2_ext_trig;
  input slot_2_ext_trig_stop;
  input ext_clk_0;
  input ext_rstn_0;
  input ext_event_0_cnt_start;
  input ext_event_0_cnt_stop;
  input ext_event_0;
  input ext_clk_1;
  input ext_rstn_1;
  input ext_event_1_cnt_start;
  input ext_event_1_cnt_stop;
  input ext_event_1;
  input ext_clk_2;
  input ext_rstn_2;
  input ext_event_2_cnt_start;
  input ext_event_2_cnt_stop;
  input ext_event_2;
  input capture_event;
  input reset_event;
  input core_aclk;
  input core_aresetn;
  input m_axis_aclk;
  input m_axis_aresetn;
  output [95:0]m_axis_tdata;
  output [11:0]m_axis_tstrb;
  output m_axis_tvalid;
  output [0:0]m_axis_tid;
  input m_axis_tready;
  output interrupt;
endmodule
