//
// (c) 2017 ReconfigureIO
//
// <COPYRIGHT TERMS>
//

//
// Implements two way scaled transaction arbitration on SMI based memory
// accesses. This combines bus width doubling with two way arbitration to
// provide a 1:1 bandwidth contention ratio at the inputs.
//

`timescale 1ns/1ps

module smiScalingArbiterX2
  (smiReqAInReady, smiReqAInEofc, smiReqAInData, smiReqAInStop, smiRespAOutReady,
  smiRespAOutEofc, smiRespAOutData, smiRespAOutStop, smiReqBInReady,
  smiReqBInEofc, smiReqBInData, smiReqBInStop, smiRespBOutReady, smiRespBOutEofc,
  smiRespBOutData, smiRespBOutStop, smiReqOutReady, smiReqOutEofc, smiReqOutData,
  smiReqOutStop, smiRespInReady, smiRespInEofc, smiRespInData, smiRespInStop,
  clk, srst);

// Specifes the width of the upstream data ports. Must be at least 4. The
// downstream ports will be scaled to twice this width.
parameter FlitWidth = 4;

// Specifies the width of the ID part of the tag. This also determines the
// number of transactions which may be 'in flight' through each upstream
// interface at any given time. Maximum value of 10.
parameter TagIdWidth = 2;

// Specifies the internal FIFO depths (more than 3 entries).
parameter FifoSize = 16;

// Specifies the internal FIFO index size, which should be capable of holding
// the binary representation of FifoSize-1.
parameter FifoIndexSize = 4;

// Derives the width of the upstream data ports.
parameter DataWidthUS = FlitWidth * 8;

// Derives the width of the downstream data ports.
parameter DataWidthDS = FlitWidth * 16;

// Specifies the clock and active high synchronous reset signals.
input clk;
input srst;

// Specifies the upstream memory interface A ports.
input                   smiReqAInReady;
input [7:0]             smiReqAInEofc;
input [DataWidthUS-1:0] smiReqAInData;
output                  smiReqAInStop;

output                   smiRespAOutReady;
output [7:0]             smiRespAOutEofc;
output [DataWidthUS-1:0] smiRespAOutData;
input                    smiRespAOutStop;

// Specifies the upstream memory interface B ports.
input                   smiReqBInReady;
input [7:0]             smiReqBInEofc;
input [DataWidthUS-1:0] smiReqBInData;
output                  smiReqBInStop;

output                   smiRespBOutReady;
output [7:0]             smiRespBOutEofc;
output [DataWidthUS-1:0] smiRespBOutData;
input                    smiRespBOutStop;

// Specifies the downstream memory interface ports.
output                   smiReqOutReady;
output [7:0]             smiReqOutEofc;
output [DataWidthDS-1:0] smiReqOutData;
input                    smiReqOutStop;

input                   smiRespInReady;
input [7:0]             smiRespInEofc;
input [DataWidthDS-1:0] smiRespInData;
output                  smiRespInStop;

// Specifies the internal bus A signals.
wire                   smiReqAIntReady;
wire [7:0]             smiReqAIntEofc;
wire [DataWidthUS-1:0] smiReqAIntData;
wire                   smiReqAIntStop;

wire                   smiReqASclReady;
wire [7:0]             smiReqASclEofc;
wire [DataWidthDS-1:0] smiReqASclData;
wire                   smiReqASclStop;

wire                   smiRespAIntReady;
wire [7:0]             smiRespAIntEofc;
wire [DataWidthUS-1:0] smiRespAIntData;
wire                   smiRespAIntStop;

wire                   smiRespASclReady;
wire [7:0]             smiRespASclEofc;
wire [DataWidthDS-1:0] smiRespASclData;
wire                   smiRespASclStop;

// Specifies the internal bus B signals.
wire                   smiReqBIntReady;
wire [7:0]             smiReqBIntEofc;
wire [DataWidthUS-1:0] smiReqBIntData;
wire                   smiReqBIntStop;

wire                   smiReqBSclReady;
wire [7:0]             smiReqBSclEofc;
wire [DataWidthDS-1:0] smiReqBSclData;
wire                   smiReqBSclStop;

wire                   smiRespBIntReady;
wire [7:0]             smiRespBIntEofc;
wire [DataWidthUS-1:0] smiRespBIntData;
wire                   smiRespBIntStop;

wire                   smiRespBSclReady;
wire [7:0]             smiRespBSclEofc;
wire [DataWidthDS-1:0] smiRespBSclData;
wire                   smiRespBSclStop;

// Instantiate transaction matcher on upstream bus A.
smiTransactionMatcher #(FlitWidth, 0, TagIdWidth, FifoSize, FifoIndexSize) busAMatcher
  (smiReqAInReady, smiReqAInEofc, smiReqAInData, smiReqAInStop, smiReqAIntReady,
  smiReqAIntEofc, smiReqAIntData, smiReqAIntStop, smiRespAIntReady, smiRespAIntEofc,
  smiRespAIntData, smiRespAIntStop, smiRespAOutReady, smiRespAOutEofc, smiRespAOutData,
  smiRespAOutStop, clk, srst);

// Instantiate transaction matcher on upstream bus B.
smiTransactionMatcher #(FlitWidth, 1, TagIdWidth, FifoSize, FifoIndexSize) busBMatcher
  (smiReqBInReady, smiReqBInEofc, smiReqBInData, smiReqBInStop, smiReqBIntReady,
  smiReqBIntEofc, smiReqBIntData, smiReqBIntStop, smiRespBIntReady, smiRespBIntEofc,
  smiRespBIntData, smiRespBIntStop, smiRespBOutReady, smiRespBOutEofc, smiRespBOutData,
  smiRespBOutStop, clk, srst);

// Instantiate bus width scalers for upstream bus A.
smiFlitScaleX2 #(FlitWidth, FifoSize, FifoIndexSize) busAReqScale
  (smiReqAIntReady, smiReqAIntEofc, smiReqAIntData, smiReqAIntStop, smiReqASclReady,
  smiReqASclEofc, smiReqASclData, smiReqASclStop, clk, srst);

smiFlitScaleD2 #(FlitWidth*2, FifoSize, FifoIndexSize) busARespScale
  (smiRespASclReady, smiRespASclEofc, smiRespASclData, smiRespASclStop,
  smiRespAIntReady, smiRespAIntEofc, smiRespAIntData, smiRespAIntStop, clk, srst);

// Instantiate bus width scalers for upstream bus B.
smiFlitScaleX2 #(FlitWidth, FifoSize, FifoIndexSize) busBReqScale
  (smiReqBIntReady, smiReqBIntEofc, smiReqBIntData, smiReqBIntStop, smiReqBSclReady,
  smiReqBSclEofc, smiReqBSclData, smiReqBSclStop, clk, srst);

smiFlitScaleD2 #(FlitWidth*2, FifoSize, FifoIndexSize) busBRespScale
  (smiRespBSclReady, smiRespBSclEofc, smiRespBSclData, smiRespBSclStop,
  smiRespBIntReady, smiRespBIntEofc, smiRespBIntData, smiRespBIntStop, clk, srst);

// Instantiate frame arbitration between upstream requests.
smiFrameArbiterX2 #(FlitWidth*2, FifoSize, FifoIndexSize) reqArbiter
  (smiReqASclReady, smiReqASclEofc, smiReqASclData, smiReqASclStop, smiReqBSclReady,
  smiReqBSclEofc, smiReqBSclData, smiReqBSclStop, smiReqOutReady, smiReqOutEofc,
  smiReqOutData, smiReqOutStop, clk, srst);

// Instantiate frame steering to upstream responses.
smiFrameSteerX2 #(FlitWidth*2, 0, (1 << 26), (63 << 26), FifoSize, FifoIndexSize) respSteer
  (smiRespInReady, smiRespInEofc, smiRespInData, smiRespInStop, smiRespASclReady,
  smiRespASclEofc, smiRespASclData, smiRespASclStop, smiRespBSclReady, smiRespBSclEofc,
  smiRespBSclData, smiRespBSclStop, clk, srst);

endmodule
