//
// (c) 2017 ReconfigureIO
//
// <COPYRIGHT TERMS>
//

//
// Provides support for SMI flit width scaling. This variant supports doubling
// of the input flit data width.
//

`timescale 1ns/1ps

module smiFlitScaleX2
  (smiInReady, smiInEofc, smiInData, smiInStop, smiOutReady, smiOutEofc,
  smiOutData, smiOutStop, clk, srst);

// Specifies the width of the flit data input port as an integer power of two
// number of bytes.
parameter FlitWidth = 4;

// Specifies the internal FIFO depths (more than 3 entries).
parameter FifoSize = 16;

// Specifies the internal FIFO index size, which should be capable of holding
// the binary representation of FifoSize-1.
parameter FifoIndexSize = 4;

// Derives the mask for unused end of frame control bits.
parameter EofcMask = 2 * FlitWidth - 1;

// Specifies the clock and active high synchronous reset signals.
input clk;
input srst;

// Specifies the SMI input signals.
input                   smiInReady;
input [7:0]             smiInEofc;
input [FlitWidth*8-1:0] smiInData;
output                  smiInStop;

// Specifies the SMI output signals.
output                    smiOutReady;
output [7:0]              smiOutEofc;
output [FlitWidth*16-1:0] smiOutData;
input                     smiOutStop;

// Specifies the SMI input register signals.
reg                   smiInReady_q;
reg [7:0]             smiInEofc_q;
reg [FlitWidth*8-1:0] smiInData_q;
reg                   smiInLast_q;
wire                  smiInHalt;

// Specifies the SMI bus width expansion signals.
reg                   expDataReady_d;
reg                   expDataPhase_d;
reg [FlitWidth*8-1:0] expDataLow_d;
reg [FlitWidth*8-1:0] expDataHigh_d;
reg [7:0]             expDataEofc_d;

reg                   expDataReady_q;
reg                   expDataPhase_q;
reg [FlitWidth*8-1:0] expDataLow_q;
reg [FlitWidth*8-1:0] expDataHigh_q;
reg [7:0]             expDataEofc_q;

wire                    expDataHalt;
wire [FlitWidth*16+7:0] smiOutVec;

// Implement the resettable input control registers.
always @(posedge clk)
begin
  if (srst)
  begin
    smiInReady_q <= 1'd0;
    smiInLast_q <= 1'd0;
  end
  else if (~(smiInReady_q & smiInHalt))
  begin
    smiInReady_q <= smiInReady;
    if (smiInReady)
      smiInLast_q <= (smiInEofc == 8'd0) ? 1'b0 : 1'b1;
  end
end

// Implement the non-resettable input datapath registers.
always @(posedge clk)
begin
  if (~(smiInReady_q & smiInHalt))
  begin
    smiInEofc_q <= smiInEofc & EofcMask[7:0];
    smiInData_q <= smiInData;
  end
end

assign smiInStop = smiInReady_q & smiInHalt;

// Combinatorial logic for carrying out bus width expansion.
always @(expDataPhase_q, expDataLow_q, expDataHigh_q, expDataEofc_q,
  smiInReady_q, smiInEofc_q, smiInData_q, smiInLast_q)
begin

  // Hold current state by default.
  expDataReady_d = 1'd0;
  expDataPhase_d = expDataPhase_q;
  expDataLow_d = expDataLow_q;
  expDataHigh_d = expDataHigh_q;
  expDataEofc_d = expDataEofc_q;

  // Update on new input.
  if (smiInReady_q)
  begin
    expDataPhase_d = ~expDataPhase_q;
    expDataHigh_d = smiInData_q;
    expDataEofc_d = smiInEofc_q;

    // Process 'low' data phase.
    if (~expDataPhase_q)
    begin
      expDataLow_d = smiInData_q;
      if (smiInLast_q)
      begin
        expDataReady_d = 1'b1;
        expDataPhase_d = 1'b0;
      end
    end

    // Process 'high' data phase.
    else
    begin
      expDataReady_d = 1'b1;
      if (smiInLast_q)
      begin
        expDataEofc_d = smiInEofc_q + FlitWidth[7:0];
      end
    end
  end
end

// Resettable control logic for carrying out bus width expansion.
always @(posedge clk)
begin
  if (srst)
  begin
    expDataReady_q <= 1'b0;
    expDataPhase_q <= 1'b0;
  end
  else if (~(expDataReady_q & expDataHalt))
  begin
    expDataReady_q <= expDataReady_d;
    expDataPhase_q <= expDataPhase_d;
  end
end

// Non-resettable datapath logic for carrying out bus width expansion.
always @(posedge clk)
begin
  if (~(expDataReady_q & expDataHalt))
  begin
    expDataLow_q <= expDataLow_d;
    expDataHigh_q <= expDataHigh_d;
    expDataEofc_q <= expDataEofc_d;
  end
end

assign smiInHalt = expDataReady_q & expDataHalt;

// Instantiate the data output FIFO.
selfLinkBufferFifoS #(FlitWidth*16+8, FifoSize, FifoIndexSize) smiBufOut
  (expDataReady_q, {expDataEofc_q, expDataHigh_q, expDataLow_q}, expDataHalt,
  smiOutReady, smiOutVec, smiOutStop, clk, srst);

assign smiOutEofc = smiOutVec[FlitWidth*16+7:FlitWidth*16];
assign smiOutData = smiOutVec[FlitWidth*16-1:0];

endmodule
