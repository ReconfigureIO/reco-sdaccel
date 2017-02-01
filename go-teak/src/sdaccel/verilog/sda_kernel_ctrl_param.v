//
// (c) 2017 ReconfigureIO
//
// <COPYRIGHT TERMS>
//

//
// Implements the parameter RAM block which is provided on the AXI control bus
// for assigning kernel parameters prior to running kernel code.
//

`timescale 1ns/1ps

module sda_kernel_ctrl_param
  (regReq, regAck, regWriteEn, regAddr, regWData, regWStrb, regRData,
  paramAddrValid, paramAddr, paramAddrStop, paramDataValid, paramData,
  paramDataStop, clk, srst);

// Specifies the width of the register address bus.
parameter RegAddrWidth = 12;

// Specifies the base address of the parameter block.
// The default is to reserve space for 16 32-bit Verilog wrapper registers.
parameter ParamAddrBase = 64;

// Specifies the upper address of the parameter block.
parameter ParamAddrTop = 4095;

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

// Kernel interface parameter access signals.
input         paramAddrValid;
input [31:0]  paramAddr;
output        paramAddrStop;
output        paramDataValid;
output [31:0] paramData;
input         paramDataStop;

// System level signals.
input clk;
input srst;

// Inferred RAM.
reg [31:0] ramArray [(ParamAddrTop-ParamAddrBase+1)/4-1:0];

// Pipelined register interface input inputs.
reg                    regReq_q;
reg                    regReadReq_q;
reg                    regWriteReq_q;
reg [31:0]             regWData_q;
reg [3:0]              regWStrb_q;
reg [RegAddrWidth-3:0] regAddr_q;

// Pipelined register interface output inputs.
reg                    regAck_q;
reg                    regReadDone_q;
reg                    regReadValid_q;
reg [31:0]             regRData_q;
reg [31:0]             regReadData_q;
reg [31:0]             regPipeData_q;

// Pipelined parameter RAM access signals.
wire        pramAddrValid;
wire [31:0] pramAddr;
wire        pramAddrStop;
wire        pramDataValid;
reg  [31:0] pramData;
wire        pramDataStop;
wire        pramReadStop;
wire        pramPipeStop;

// Parameter RAM access pipeline.
reg [RegAddrWidth-3:0] pramAddr_q;
reg [1:0]              pramAddrAlign_q;
reg                    pramAddrValid_q;
reg [31:0]             pramReadData_q;
reg [1:0]              pramReadAlign_q;
reg                    pramReadValid_q;
reg [31:0]             pramPipeData_q;
reg [1:0]              pramPipeAlign_q;
reg                    pramPipeValid_q;

integer i;

// Implement pipelined register input signals. Assumes that there are no back
// to back transactions, so we can use rising edge detection on the request line.
always @(posedge clk)
begin
  if (srst)
  begin
    regReq_q <= 1'b0;
    regReadReq_q <= 1'b0;
    regWriteReq_q <= 1'b0;
    regWData_q <= 32'b0;
    regWStrb_q <= 4'b0;
    for (i = 0; i < RegAddrWidth-2; i = i + 1)
      regAddr_q[i] <= 1'b0;
  end
  else
  begin
    regReq_q <= regReq;
    regWData_q <= regWData;
    regWStrb_q <= regWStrb;
    if ((regAddr < ParamAddrBase) || (regAddr > ParamAddrTop))
    begin
      regReadReq_q <= 1'b0;
      regWriteReq_q <= 1'b0;
      for (i = 0; i < RegAddrWidth-2; i = i + 1)
        regAddr_q[i] <= 1'b0;
    end
    else
    begin
      regReadReq_q <= regReq & ~regReq_q & ~regWriteEn;
      regWriteReq_q <= regReq & ~regReq_q & regWriteEn;
      regAddr_q <= regAddr[RegAddrWidth-1:2] - (ParamAddrBase/4);
    end
  end
end

// Implement pipelined register output signals.
always @(posedge clk)
begin
  if (srst)
  begin
    regAck_q <= 1'b0;
    regReadDone_q <= 1'b0;
    regReadValid_q <= 1'b0;
    regRData_q <= 32'b0;
  end
  else
  begin
    regAck_q <= regReadValid_q | regWriteReq_q;
    regReadDone_q <= regReadReq_q;
    regReadValid_q <= regReadDone_q;
    regRData_q <= regReadValid_q ? regPipeData_q : 32'b0;
  end
end

assign regAck = regAck_q;
assign regRData = regRData_q;

// Implement SELF input buffer for parameter address.
selfW2R1Buffer #(32) paramAddrBuffer
  (paramAddrValid, paramAddr, paramAddrStop, pramAddrValid, pramAddr,
  pramAddrStop, clk, srst);

// Implement SELF output buffer for parameter data.
selfW2R1Buffer #(32) paramDataBuffer
  (pramDataValid, pramData, pramDataStop, paramDataValid, paramData,
  paramDataStop, clk, srst);

// Implement the parameter data RAM access backpressure signals.
assign pramAddrStop = pramReadStop & pramAddrValid_q;
assign pramReadStop = pramPipeStop & pramReadValid_q;
assign pramPipeStop = pramDataStop & pramPipeValid_q;
assign pramDataValid = pramPipeValid_q;

// Implement parameter access input pipeline.
always @(posedge clk)
begin
  if (srst)
  begin
    pramAddr_q <= 30'b0;
    pramAddrValid_q <= 1'b0;
    pramReadValid_q <= 1'b0;
    pramPipeValid_q <= 1'b0;
  end
  else
  begin
    if (~pramAddrStop)
    begin
      pramAddrValid_q <= pramAddrValid;
      if ((pramAddr < ParamAddrBase) || (pramAddr > ParamAddrTop))
      begin
        pramAddr_q <= 30'b0;
        pramAddrAlign_q <= 2'b0;
      end
      else
      begin
        pramAddr_q <= pramAddr[RegAddrWidth-1:2] - (ParamAddrBase/4);
        pramAddrAlign_q <= pramAddr[1:0];
      end
    end
    if (~pramReadStop)
    begin
      pramReadValid_q <= pramAddrValid_q;
      pramReadAlign_q <= pramAddrAlign_q;
    end
    if (~pramPipeStop)
    begin
      pramPipeValid_q <= pramReadValid_q;
      pramPipeAlign_q <= pramReadAlign_q;
    end
  end
end

// Perform data alignment on read data. Uses the least significant bits of the
// parameter address to rotate the addressed byte into the LSB position. When
// combined with a suitable type cast in the kernel code, this allows byte and
// half word parameter values to be addressed on byte and half word boundaries.
always @(pramPipeAlign_q, pramPipeData_q)
begin
  case (pramPipeAlign_q)
    2'b11 : pramData = {pramPipeData_q [23:0], pramPipeData_q [31:24]};
    2'b10 : pramData = {pramPipeData_q [15:0], pramPipeData_q [31:16]};
    2'b01 : pramData = {pramPipeData_q [7:0], pramPipeData_q [31:8]};
    default: pramData = pramPipeData_q;
  endcase
end

// Implement parameter RAM.
always @(posedge clk)
begin

  // SELF parameter pipeline is gated for backpressure.
  if (~pramReadStop)
  begin
    pramReadData_q <= ramArray [pramAddr_q];
  end

  // Register read pipeline is a single cycle delay.
  regReadData_q <= ramArray [regAddr_q];

  // Apply write enable strobes.
  if (regWriteReq_q)
  begin
    if (regWStrb_q[0])
      ramArray [regAddr_q][7:0] <= regWData_q [7:0];
    if (regWStrb_q[1])
      ramArray [regAddr_q][15:8] <= regWData_q [15:8];
    if (regWStrb_q[2])
      ramArray [regAddr_q][23:16] <= regWData_q [23:16];
    if (regWStrb_q[3])
      ramArray [regAddr_q][31:24] <= regWData_q [31:24];
  end
end

// Pipeline read data for improved timing.
always @(posedge clk)
begin

  // SELF parameter pipeline is gated for backpressure.
  if (~pramPipeStop)
  begin
    pramPipeData_q <= pramReadData_q;
  end

  // Register read pipeline is a single cycle delay.
  regPipeData_q <= regReadData_q;

end

endmodule
