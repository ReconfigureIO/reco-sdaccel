`ifndef KERNEL_HAS_SMI_ADAPTOR
/* verilator lint_off DECLFILENAME */
module teak___x24_main_x2e_Top_x3a_public (args0_0Ready, args0_0Stop, retVal1_0Ready, retVal1_0Stop, memReadAddr2_0Ready, memReadAddr2_0Data, memReadAddr2_0Stop, memReadData3_0Ready, memReadData3_0Data, memReadData3_0Stop, memWriteAddr4_0Ready, memWriteAddr4_0Data, memWriteAddr4_0Stop, memWriteData5_0Ready, memWriteData5_0Data, memWriteData5_0Stop, memWriteResp6_0Ready, memWriteResp6_0Data, memWriteResp6_0Stop, clk, reset);
/* verilator lint_on DECLFILENAME */


  input args0_0Ready;
  output args0_0Stop;
  output retVal1_0Ready;
  input retVal1_0Stop;
  output memReadAddr2_0Ready;
  output [94:0] memReadAddr2_0Data;
  input memReadAddr2_0Stop;
  input memReadData3_0Ready;
  input [68:0] memReadData3_0Data;
  output memReadData3_0Stop;
  output memWriteAddr4_0Ready;
  output [94:0] memWriteAddr4_0Data;
  input memWriteAddr4_0Stop;
  output memWriteData5_0Ready;
  output [73:0] memWriteData5_0Data;
  input memWriteData5_0Stop;
  input memWriteResp6_0Ready;
  input [3:0] memWriteResp6_0Data;
  output memWriteResp6_0Stop;
  input clk;
  input reset;
  wire [73:0] l11_0Data;
  wire l11_0Ready;
  wire l11_0Stop;
  wire l12_0Ready;
  wire l12_0Stop;
  wire l14_0Ready;
  wire l14_0Stop;
  wire [3:0] l15_0Data;
  wire l15_0Ready;
  wire l15_0Stop;
  wire [94:0] l2_0Data;
  wire l2_0Ready;
  wire l2_0Stop;
  wire l3_0Ready;
  wire l3_0Stop;
  wire l5_0Ready;
  wire l5_0Stop;
  wire [68:0] l6_0Data;
  wire l6_0Ready;
  wire l6_0Stop;
  wire [94:0] l8_0Data;
  wire l8_0Ready;
  wire l8_0Stop;
  wire l9_0Ready;
  wire l9_0Stop;
endmodule
`endif
