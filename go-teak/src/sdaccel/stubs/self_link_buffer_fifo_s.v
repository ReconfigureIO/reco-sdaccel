//
// (c) 2017 ReconfigureIO
//
// <COPYRIGHT TERMS>
//

//
// Stub for a buffered SELF link with short FIFO. This is included for
// linting purposes only.
//

`timescale 1ns/1ps

module selfLinkBufferFifoS
  (dataInValid, dataIn, dataInStop, dataOutValid, dataOut, dataOutStop,
  clk, srst);

// Specifes the width of the data channel.
parameter DataWidth = 8;

// Specifies the link buffer FIFO size.
parameter FifoSize = 16;

// Specifies the link buffer FIFO index size, which should be capable of holding
// the binary representation of FifoSize-2.
parameter FifoIndexSize = 4;

// Specifies the 'upstream' data input ports.
// verilator lint_off UNUSED
input  [DataWidth-1:0] dataIn;
input                  dataInValid;
output                 dataInStop;

// Specifies the 'downstream' data output ports.
output [DataWidth-1:0] dataOut;
output                 dataOutValid;
input                  dataOutStop;

// Specify system level signals.
input clk;
input srst;
// verilator lint_on UNUSED

assign dataInStop = 1'b1;
assign dataOut = 0;
assign dataOutValid = 1'b0;

endmodule
