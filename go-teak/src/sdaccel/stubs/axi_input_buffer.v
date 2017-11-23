//
// (c) 2017 ReconfigureIO
//
// <COPYRIGHT TERMS>
//

//
// Stub for an AXI to SELF input buffer for linting purposes only.
//

`timescale 1ns/1ps

module axiInputBuffer
  (axiValid, axiDataIn, axiReady, dataOutValid, dataOut, dataOutStop, clk, srst);

// Specifes the width of the axiDataIn and dataOut ports.
parameter DataWidth = 16;

// Specifies the clock and active high synchronous reset signals.
// verilator lint_off UNUSED
input clk;
input srst;

// Specifies the 'upstream' AXI data input ports.
input  [DataWidth-1:0] axiDataIn;
input                  axiValid;
output                 axiReady;

// Specifies the 'downstream' data output ports.
output [DataWidth-1:0] dataOut;
output                 dataOutValid;
input                  dataOutStop;
// verilator lint_on UNUSED

assign axiReady = 1'b0;
assign dataOut = 0;
assign dataOutValid = 1'b0;

endmodule
