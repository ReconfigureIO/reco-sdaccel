//
// (c) 2017 ReconfigureIO
//
// <COPYRIGHT TERMS>
//

//
// Stub for a SELF based single stage elastic buffer. This is included for
// Verilator linting purposes only.
//

`timescale 1ns/1ps

module selfLinkToggleBuffer
  (dataInValid, dataIn, dataInStop, dataOutValid, dataOut, dataOutStop, clk, srst);

// Specifes the width of the dataIn and dataOut ports.
parameter DataWidth = 16;

// Specifies the clock and active high synchronous reset signals.
// verilator lint_off UNUSED
input clk;
input srst;

// Specifies the 'upstream' data input ports.
input  [DataWidth-1:0] dataIn;
input                  dataInValid;
output                 dataInStop;

// Specifies the 'downstream' data output ports.
output [DataWidth-1:0] dataOut;
output                 dataOutValid;
input                  dataOutStop;
// verilator lint_on UNUSED

assign dataInStop = 1'b1;
assign dataOut = 0;
assign dataOutValid = 1'b0;

endmodule
