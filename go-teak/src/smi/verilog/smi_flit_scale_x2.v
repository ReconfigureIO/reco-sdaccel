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

// Specifies the SMI buffered input signals.
wire                   smiInBufReady;
wire [7:0]             smiInBufEofc;
wire [FlitWidth*8-1:0] smiInBufData;
wire                   smiInBufStop;
wire [FlitWidth*8+7:0] smiInBufVec;

// Specifies the SMI bus width expansion signals.
wire                    smiScReady;
wire [7:0]              smiScEofc;
wire [FlitWidth*16-1:0] smiScData;
wire                    smiScStop;
wire [FlitWidth*16+7:0] smiOutVec;

// Instantiate the data input FIFO.
selfLinkBufferFifoS #(FlitWidth*8+8, FifoSize, FifoIndexSize) smiBufIn
  (smiInReady, {smiInEofc, smiInData}, smiInStop, smiInBufReady, smiInBufVec,
  smiInBufStop, clk, srst);

assign smiInBufEofc = smiInBufVec [FlitWidth*8+7:FlitWidth*8];
assign smiInBufData = smiInBufVec [FlitWidth*8-1:0];

// Instantiate the flit scaling stage.
smiFlitScaleStageX2 #(FlitWidth) scaleStage
  (smiInBufReady, smiInBufEofc, smiInBufData, smiInBufStop, smiScReady,
  smiScEofc, smiScData, smiScStop, clk, srst);

// Instantiate the data output buffer.
selfLinkToggleBuffer #(FlitWidth*16+8) smiBufOut
  (smiScReady, {smiScEofc, smiScData}, smiScStop, smiOutReady, smiOutVec,
  smiOutStop, clk, srst);

assign smiOutEofc = smiOutVec[FlitWidth*16+7:FlitWidth*16];
assign smiOutData = smiOutVec[FlitWidth*16-1:0];

endmodule
