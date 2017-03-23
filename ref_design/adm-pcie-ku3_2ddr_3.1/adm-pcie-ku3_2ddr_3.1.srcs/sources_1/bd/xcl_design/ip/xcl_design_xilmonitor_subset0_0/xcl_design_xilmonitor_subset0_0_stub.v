// Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2016.3_sdx (lin64) Build 1721784 Tue Nov 29 22:12:24 MST 2016
// Date        : Fri Dec 30 09:08:49 2016
// Host        : hms-beatdown running 64-bit Ubuntu 15.10
// Command     : write_verilog -force -mode synth_stub
//               /home/joshbohde/code/nerabus/refdesign_test/adm-pcie-ku3_2ddr_3.1/adm-pcie-ku3_2ddr_3.1.srcs/sources_1/bd/xcl_design/ip/xcl_design_xilmonitor_subset0_0/xcl_design_xilmonitor_subset0_0_stub.v
// Design      : xcl_design_xilmonitor_subset0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xcku060-ffva1156-2-e
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "top_xcl_design_xilmonitor_subset0_0,Vivado 2016.3_sdx" *)
module xcl_design_xilmonitor_subset0_0(aclk, aresetn, s_axis_tvalid, s_axis_tready, 
  s_axis_tdata, s_axis_tstrb, s_axis_tid, m_axis_tvalid, m_axis_tready, m_axis_tdata, 
  m_axis_tstrb, m_axis_tid)
/* synthesis syn_black_box black_box_pad_pin="aclk,aresetn,s_axis_tvalid,s_axis_tready,s_axis_tdata[95:0],s_axis_tstrb[11:0],s_axis_tid[0:0],m_axis_tvalid,m_axis_tready,m_axis_tdata[127:0],m_axis_tstrb[15:0],m_axis_tid[0:0]" */;
  input aclk;
  input aresetn;
  input s_axis_tvalid;
  output s_axis_tready;
  input [95:0]s_axis_tdata;
  input [11:0]s_axis_tstrb;
  input [0:0]s_axis_tid;
  output m_axis_tvalid;
  input m_axis_tready;
  output [127:0]m_axis_tdata;
  output [15:0]m_axis_tstrb;
  output [0:0]m_axis_tid;
endmodule
