`ifdef KERNEL_HAS_SMI_ADAPTOR
module teak___x24_main_x2e_Top_x3a_public
  (args0_0Ready, args0_0Data, args0_0Stop, retVal1_0Ready, retVal1_0Stop,
  request2_0Ready, request2_0Data, request2_0Stop, response3_0Ready,
  response3_0Data, response3_0Stop, request4_0Ready, request4_0Data,
  request4_0Stop, response5_0Ready, response5_0Data, response5_0Stop,
  clk, reset);

input         args0_0Ready;
input  [31:0] args0_0Data;
output        args0_0Stop;
output        retVal1_0Ready;
input         retVal1_0Stop;
output        request2_0Ready;
output [71:0] request2_0Data;
input         request2_0Stop;
input         response3_0Ready;
input  [71:0] response3_0Data;
output        response3_0Stop;
output        request4_0Ready;
output [71:0] request4_0Data;
input         request4_0Stop;
input         response5_0Ready;
input  [71:0] response5_0Data;
output        response5_0Stop;
input         clk;
input         reset;

assign args0_0Stop = 1'b0;
assign retVal1_0Ready = 1'b0;
assign request2_0Ready = 1'b0;
assign request2_0Data = 72'd0;
assign response3_0Stop = 1'b0;
assign request4_0Ready = 1'b0;
assign request4_0Data = 72'd0;
assign response5_0Stop = 1'b0;

endmodule
`endif
