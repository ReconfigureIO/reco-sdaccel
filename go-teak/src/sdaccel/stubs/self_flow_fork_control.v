//
// (c) 2017 ReconfigureIO
//
// <COPYRIGHT TERMS>
//

//
// Stub for a SELF based dataflow 'fork' controller. This is included for
// Verilator linting purposes only.
//

`timescale 1ns/1ps

module selfFlowForkControl
  (ctrlInReady, ctrlInStop, ctrlOutReady, ctrlOutStop, clk, srst);

// Specifies the number of fork output branches.
parameter NumPorts = 2;

// Specifies the clock and active high synchronous reset signals.
// verilator lint_off UNUSED
input clk;
input srst;

// Specifies the 'upstream' control input ports.
input  ctrlInReady;
output ctrlInStop;

// Specifies the 'downstream' control output ports.
output [NumPorts-1:0] ctrlOutReady;
input  [NumPorts-1:0] ctrlOutStop;
// verilator lint_on UNUSED

assign ctrlInStop = 1'b1;
assign ctrlOutReady = 0;

endmodule
