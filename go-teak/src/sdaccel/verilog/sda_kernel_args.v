//
// (c) 2018 ReconfigureIO
//
// <COPYRIGHT TERMS>
//

//
// Implements the parameter register block which is provided on the AXI control bus
// for assigning kernel parameters prior to running kernel code.
//
// This is suitable for a small number of function args (<16)

`timescale 1ns/1ps

module sda_kernel_args
  (regReq, regAck, regWriteEn, regAddr, regWData, regWStrb, regRData,
   argData, clk, srst);

// Specifies the width of the register address bus.
parameter RegAddrWidth = 12;

// Specifies the base address of the parameter block.
// The default is to reserve space for 16 32-bit Verilog wrapper registers.
parameter ParamAddrBase = 64;

// Number of 4 byte blocks to allocate
parameter DataWidth = 16;

// Slave side simple register interface signals. Note that all outputs are
// driven low when inactive so that they can be ORed together with other
// register block implementations.
input                    regReq;
output                   regAck;
input                    regWriteEn;
input [RegAddrWidth-1:0] regAddr;
input [31:0]             regWData;
input [3:0]              regWStrb;
output [31:0]            regRData;
output                [(DataWidth*32)-1:0] argData;


// System level signals.
input clk;
input srst;

// Args register.
reg [(DataWidth*32)-1:0] array;
reg [31:0]               outData;

assign regRData = outData;
assign argData = array;
assign regAck = ~regReq;

integer i;
integer j;

// Implement pipelined register input signals. Assumes that there are no back
// to back transactions, so we can use rising edge detection on the request line.
// verilator lint_off CMPCONST
always @(posedge clk)
begin
  if (srst)
  begin
     outData <= 32'b0;
     for (i = 0; i < DataWidth*32; i = i + 1)
       array[i] <= 1'b0;
  end
  else
  begin
    if (regReq) begin
       for (i = 0; i < DataWidth; i = i + 1) begin
          /* verilator lint_off WIDTH */
         if (regAddr == (ParamAddrBase + i)) begin
          /* verilator lint_on WIDTH */
           outData <= argData[(32*i)+:32];
           if (regWriteEn)
              for (j = 0; j < 4; j = j + 1) begin
                if (regWStrb[j]) begin
                  array[(32*i) + (8*j)+:8] <= regWData[(8*j)+:8];
                end
              end
         end
       end
    end
  end
end


endmodule
