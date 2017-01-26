//
// (c) 2017 ReconfigureIO
//
// <COPYRIGHT TERMS>
//

//
// Provides a 'stub' implementation of the kernel action logic with single AXI
// shared memory interface.
//

`timescale 1ns/1ps

// Can be redefined on the synthesis command line.
`define AXI_MASTER_ADDR_WIDTH 64

// Can be redefined on the synthesis command line.
`define AXI_MASTER_DATA_WIDTH 32

// The module name is common for different kernel action toplevel entities.
// verilator lint_off DECLFILENAME
module teak_action_top_gmem
  (go_0r, go_0a, done_0r, done_0a, s_axi_araddr, s_axi_arvalid, s_axi_arready,
  s_axi_rdata, s_axi_rresp, s_axi_rvalid, s_axi_rready, s_axi_awaddr,
  s_axi_awvalid, s_axi_awready, s_axi_wdata, s_axi_wstrb, s_axi_wvalid,
  s_axi_wready, s_axi_bresp, s_axi_bvalid, s_axi_bready, m_axi_gmem_awaddr,
  m_axi_gmem_awlen, m_axi_gmem_awsize, m_axi_gmem_awburst, m_axi_gmem_awmtype,
  m_axi_gmem_awvalid, m_axi_gmem_awready, m_axi_gmem_wdata, m_axi_gmem_wstrb,
  m_axi_gmem_wlast, m_axi_gmem_wvalid, m_axi_gmem_wready, m_axi_gmem_bresp,
  m_axi_gmem_bvalid, m_axi_gmem_bready, m_axi_gmem_araddr, m_axi_gmem_arlen,
  m_axi_gmem_arsize, m_axi_gmem_arburst, m_axi_gmem_armtype, m_axi_gmem_arvalid,
  m_axi_gmem_arready, m_axi_gmem_rdata, m_axi_gmem_rresp, m_axi_gmem_rlast,
  m_axi_gmem_rvalid, m_axi_gmem_rready, param_buf_base, clk, reset);
// verilator lint_on DECLFILENAME

// Action control signals.
input  go_0r;
output go_0a;
output done_0r;
input  done_0a;

// AXI interface signals are not used in the stub implementation.
// verilator lint_off UNUSED
input [63:0]  param_buf_base;

// Specifies the AXI slave bus signals.
input [31:0]  s_axi_araddr;
input         s_axi_arvalid;
output        s_axi_arready;
output [31:0] s_axi_rdata;
output [1:0]  s_axi_rresp;
output        s_axi_rvalid;
input         s_axi_rready;
input [31:0]  s_axi_awaddr;
input         s_axi_awvalid;
output        s_axi_awready;
input [31:0]  s_axi_wdata;
input [3:0]   s_axi_wstrb;
input         s_axi_wvalid;
output        s_axi_wready;
output [1:0]  s_axi_bresp;
output        s_axi_bvalid;
input         s_axi_bready;

// Specifies the AXI master write address signals.
output [`AXI_MASTER_ADDR_WIDTH-1:0] m_axi_gmem_awaddr;
output [7:0]                        m_axi_gmem_awlen;
output [2:0]                        m_axi_gmem_awsize;
output [1:0]                        m_axi_gmem_awburst;
output [1:0]                        m_axi_gmem_awmtype;
output                              m_axi_gmem_awvalid;
input                               m_axi_gmem_awready;

// Specifies the AXI master write data signals.
output [`AXI_MASTER_DATA_WIDTH-1:0]   m_axi_gmem_wdata;
output [`AXI_MASTER_DATA_WIDTH/8-1:0] m_axi_gmem_wstrb;
output                                m_axi_gmem_wlast;
output                                m_axi_gmem_wvalid;
input                                 m_axi_gmem_wready;

// Specifies the AXI master write response signals.
input [1:0] m_axi_gmem_bresp;
input       m_axi_gmem_bvalid;
output      m_axi_gmem_bready;

// Specifies the AXI master read address signals.
output [`AXI_MASTER_ADDR_WIDTH-1:0] m_axi_gmem_araddr;
output [7:0]                        m_axi_gmem_arlen;
output [2:0]                        m_axi_gmem_arsize;
output [1:0]                        m_axi_gmem_arburst;
output [1:0]                        m_axi_gmem_armtype;
output                              m_axi_gmem_arvalid;
input                               m_axi_gmem_arready;

// Specifies the AXI master read data signals.
input [`AXI_MASTER_DATA_WIDTH-1:0] m_axi_gmem_rdata;
input [1:0]                        m_axi_gmem_rresp;
input                              m_axi_gmem_rlast;
input                              m_axi_gmem_rvalid;
output                             m_axi_gmem_rready;
// verilator lint_on UNUSED

// System level signals.
input clk;
input reset;

// Action start loopback signals.
reg action_done_q;

// AXI slave loopback signals.
reg s_axi_read_ready_q;
reg s_axi_read_complete_q;
reg s_axi_write_ready_q;
reg s_axi_write_complete_q;

// Implement action start loopback signals.
always @(posedge clk)
begin
  if (reset)
  begin
    action_done_q <= 1'b0;
  end
  else if (action_done_q)
  begin
    action_done_q <= done_0a;
  end
  else if (go_0r)
  begin
    action_done_q <= 1'b1;
  end
end

assign go_0a = action_done_q;
assign done_0r = action_done_q;

// Implement AXI read control loopback.
always @(posedge clk)
begin
  if (reset)
  begin
    s_axi_read_ready_q <= 1'b0;
    s_axi_read_complete_q <= 1'b0;
  end
  else if (s_axi_read_complete_q)
  begin
    s_axi_read_complete_q <= ~s_axi_rready;
  end
  else if (s_axi_read_ready_q)
  begin
    s_axi_read_ready_q <= 1'b0;
    s_axi_read_complete_q <= 1'b1;
  end
  else
  begin
    s_axi_read_ready_q <= s_axi_arvalid;
  end
end

assign s_axi_arready = s_axi_read_ready_q;
assign s_axi_rdata = 32'b0;
assign s_axi_rresp = 2'b0;
assign s_axi_rvalid = s_axi_read_complete_q;

// Implement AXI write control loopback.
always @(posedge clk)
begin
  if (reset)
  begin
    s_axi_write_ready_q <= 1'b0;
    s_axi_write_complete_q <= 1'b0;
  end
  else if (s_axi_write_complete_q)
  begin
    s_axi_write_complete_q <= ~s_axi_bready;
  end
  else if (s_axi_write_ready_q)
  begin
    s_axi_write_ready_q <= 1'b0;
    s_axi_write_complete_q <= 1'b1;
  end
  else
  begin
    s_axi_write_ready_q <= s_axi_awvalid & s_axi_wvalid;
  end
end

assign s_axi_awready = s_axi_write_ready_q;
assign s_axi_wready = s_axi_write_ready_q;
assign s_axi_bresp = 2'b0;
assign s_axi_bvalid = s_axi_write_complete_q;

endmodule
