//
// (c) 2017 ReconfigureIO
//
// <COPYRIGHT TERMS>
//

//
// Provides a 'stub' implementation of the simple kernel action logic. This 
// variant does not support access to the shared mamory area.
//

`timescale 1ns/1ps

module kernel_action_top_nomem
  (action_go_valid, action_go_holdoff, action_done_valid, action_done_stop, 
  s_axi_araddr, s_axi_arvalid, s_axi_arready, s_axi_rdata, s_axi_rresp, 
  s_axi_rvalid, s_axi_rready, s_axi_awaddr, s_axi_awvalid, s_axi_awready, 
  s_axi_wdata, s_axi_wstrb, s_axi_wvalid, s_axi_wready, s_axi_bresp, 
  s_axi_bvalid, s_axi_bready, clk, reset);

// Action control signals.  
input  action_go_valid;
output action_go_holdoff;
output action_done_valid;
input  action_done_stop;

// AXI slave interface signals.
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
    action_done_q <= action_done_stop;
  end
  else if (action_go_valid)
  begin
    action_done_q <= 1'b1;
  end  
end     

assign action_go_holdoff = action_done_q;
assign action_done_valid = action_done_q;

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
