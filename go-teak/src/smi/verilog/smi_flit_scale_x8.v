//
// (c) 2017 ReconfigureIO
//
// <COPYRIGHT TERMS>
//

//
// Provides support for SMI flit width scaling. This variant supports an
// increase of the input flit data width by a factor of 8.
//

`timescale 1ns/1ps

module smiFlitScaleX8
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
output [FlitWidth*64-1:0] smiOutData;
input                     smiOutStop;

// Specifies the SMI buffered input signals.
wire                   smiInBufReady;
wire [7:0]             smiInBufEofc;
wire [FlitWidth*8-1:0] smiInBufData;
wire                   smiInBufStop;
wire [FlitWidth*8+7:0] smiInBufVec;

// Specifies the internal connections.
wire                    smiSc1Ready;
wire [7:0]              smiSc1Eofc;
wire [FlitWidth*16-1:0] smiSc1Data;
wire                    smiSc1Stop;

wire                    smiSc2Ready;
wire [7:0]              smiSc2Eofc;
wire [FlitWidth*32-1:0] smiSc2Data;
wire                    smiSc2Stop;

// Specifies the SMI bus width expansion signals.
wire                    smiSc3Ready;
wire [7:0]              smiSc3Eofc;
wire [FlitWidth*64-1:0] smiSc3Data;
wire                    smiSc3Stop;
wire [FlitWidth*64+7:0] smiOutVec;

// Instantiate the data input FIFO.
selfLinkBufferFifoS #(FlitWidth*8+8, FifoSize, FifoIndexSize) smiBufIn
  (smiInReady, {smiInEofc, smiInData}, smiInStop, smiInBufReady, smiInBufVec,
  smiInBufStop, clk, srst);

assign smiInBufEofc = smiInBufVec [FlitWidth*8+7:FlitWidth*8];
assign smiInBufData = smiInBufVec [FlitWidth*8-1:0];

// Instantiate the first stage scaling.
smiFlitScaleStageX2 #(FlitWidth, FifoSize, FifoIndexSize) scaleStage1
  (smiInBufReady, smiInBufEofc, smiInBufData, smiInBufStop, smiSc1Ready,
  smiSc1Eofc, smiSc1Data, smiSc1Stop, clk, srst);

// Instantiate the second stage scaling.
smiFlitScaleStageX2 #(FlitWidth*2, FifoSize, FifoIndexSize) scaleStage2
  (smiSc1Ready, smiSc1Eofc, smiSc1Data, smiSc1Stop, smiSc2Ready, smiSc2Eofc,
  smiSc2Data, smiSc2Stop, clk, srst);

// Instantiate the third stage scaling.
smiFlitScaleStageX2 #(FlitWidth*4, FifoSize, FifoIndexSize) scaleStage3
  (smiSc2Ready, smiSc2Eofc, smiSc2Data, smiSc2Stop, smiSc3Ready, smiSc3Eofc,
  smiSc3Data, smiSc3Stop, clk, srst);

// Instantiate the data output buffer.
selfLinkToggleBuffer #(FlitWidth*64+8) smiBufOut
  (smiSc3Ready, {smiSc3Eofc, smiSc3Data}, smiSc3Stop, smiOutReady, smiOutVec,
  smiOutStop, clk, srst);

assign smiOutEofc = smiOutVec[FlitWidth*64+7:FlitWidth*64];
assign smiOutData = smiOutVec[FlitWidth*64-1:0];

endmodule