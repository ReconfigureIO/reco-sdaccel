//
// (c) 2017 ReconfigureIO
//
// <COPYRIGHT TERMS>
//

//
// Stub for an AXI to SELF output buffer for linting purposes only.
//

`timescale 1ns/1ps

module axiOutputBuffer
  (dataInValid, dataIn, dataInStop, axiValid, axiDataOut, axiReady, clk, srst);

// Specifes the width of the dataIn and dataOut ports.
parameter DataWidth = 16;

// Specifies the clock and active high asynchronous reset signals.
// verilator lint_off UNUSED
input clk;
input srst;

// Specifies the 'upstream' data input ports.
input  [DataWidth-1:0] dataIn;
input                  dataInValid;
output                 dataInStop;

// Specifies the 'downstream' AXI output ports.
output [DataWidth-1:0] axiDataOut;
output                 axiValid;
input                  axiReady;
// verilator lint_on UNUSED

assign dataInStop = 1'b1;
assign axiDataOut = 0;
assign axiValid = 1'b0;

endmodule
