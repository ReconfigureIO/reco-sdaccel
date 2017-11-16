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

// The module name is common for different kernel action toplevel entities.
// verilator lint_off DECLFILENAME
module teak__action__top__gmem
  (go_0Ready, go_0Stop, done_0Ready, done_0Stop, s_axi_araddr, s_axi_arcache, s_axi_arprot,
  s_axi_arvalid, s_axi_arready, s_axi_rdata, s_axi_rresp, s_axi_rvalid,
  s_axi_rready, s_axi_awaddr, s_axi_awcache, s_axi_awprot, s_axi_awvalid,
  s_axi_awready, s_axi_wdata, s_axi_wstrb, s_axi_wvalid, s_axi_wready,
  s_axi_bresp, s_axi_bvalid, s_axi_bready, smi_port_a_req_ready,
  smi_port_a_req_eofc, smi_port_a_req_data, smi_port_a_req_stop,
  smi_port_a_resp_ready, smi_port_a_resp_eofc, smi_port_a_resp_data,
  smi_port_a_resp_stop, smi_port_b_req_ready, smi_port_b_req_eofc,
  smi_port_b_req_data, smi_port_b_req_stop, smi_port_b_resp_ready,
  smi_port_b_resp_eofc, smi_port_b_resp_data, smi_port_b_resp_stop,
  paramaddr_0Ready, paramaddr_0Data, paramaddr_0Stop, paramdata_0Ready,
  paramdata_0Data, paramdata_0Stop, clk, reset);
// verilator lint_on DECLFILENAME

// Action control signals.
input  go_0Ready;
output go_0Stop;
output done_0Ready;
input  done_0Stop;

// Parameter data access signals. Provides a SELF channel output for address
// values and a SELF channel input for the corresponding data items read from
// the parameter register file.
// verilator lint_off UNUSED
output        paramaddr_0Ready;
output [31:0] paramaddr_0Data;
input         paramaddr_0Stop;

input         paramdata_0Ready;
input [31:0]  paramdata_0Data;
output        paramdata_0Stop;
// verilator lint_on UNUSED

// AXI interface signals are not used in the stub implementation.
// verilator lint_off UNUSED

// Specifies the AXI slave bus signals.
input [31:0]  s_axi_araddr;
input [3:0]   s_axi_arcache;
input [2:0]   s_axi_arprot;
input         s_axi_arvalid;
output        s_axi_arready;
output [31:0] s_axi_rdata;
output [1:0]  s_axi_rresp;
output        s_axi_rvalid;
input         s_axi_rready;
input [31:0]  s_axi_awaddr;
input [3:0]   s_axi_awcache;
input [2:0]   s_axi_awprot;
input         s_axi_awvalid;
output        s_axi_awready;
input [31:0]  s_axi_wdata;
input [3:0]   s_axi_wstrb;
input         s_axi_wvalid;
output        s_axi_wready;
output [1:0]  s_axi_bresp;
output        s_axi_bvalid;
input         s_axi_bready;

// SMI to Teak toplevel interconnect signals.
output        smi_port_a_req_ready;
output [7:0]  smi_port_a_req_eofc;
output [63:0] smi_port_a_req_data;
input         smi_port_a_req_stop;

input         smi_port_a_resp_ready;
input [7:0]   smi_port_a_resp_eofc;
input [63:0]  smi_port_a_resp_data;
output        smi_port_a_resp_stop;

output        smi_port_b_req_ready;
output [7:0]  smi_port_b_req_eofc;
output [63:0] smi_port_b_req_data;
input         smi_port_b_req_stop;

input         smi_port_b_resp_ready;
input  [7:0]  smi_port_b_resp_eofc;
input  [63:0] smi_port_b_resp_data;
output        smi_port_b_resp_stop;
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
    action_done_q <= done_0Stop;
  end
  else if (go_0Ready)
  begin
    action_done_q <= 1'b1;
  end
end

assign go_0Stop = action_done_q;
assign done_0Ready = action_done_q;

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

// Tie off unused SMI output signals.
assign smi_port_a_req_ready = 1'b0;
assign smi_port_a_req_eofc = 8'd0;
assign smi_port_a_req_data = 64'd0;
assign smi_port_a_resp_stop = 1'b0;

assign smi_port_b_req_ready = 1'b0;
assign smi_port_b_req_eofc = 8'd0;
assign smi_port_b_req_data = 64'd0;
assign smi_port_b_resp_stop = 1'b0;

// Tie off unused parameter access signals.
assign paramaddr_0Ready = 1'b0;
assign paramaddr_0Data = 32'b0;
assign paramdata_0Stop = 1'b0;

endmodule
