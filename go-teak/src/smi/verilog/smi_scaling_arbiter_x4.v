//
// (c) 2017 ReconfigureIO
//
// <COPYRIGHT TERMS>
//

//
// Implements four way scaled transaction arbitration on SMI based memory
// accesses. This combines bus width doubling with four way arbitration to
// provide a 2:1 bandwidth contention ratio at the inputs.
//

`timescale 1ns/1ps

module smiScalingArbiterX4
  (smiReqAInReady, smiReqAInEofc, smiReqAInData, smiReqAInStop, smiRespAOutReady,
  smiRespAOutEofc, smiRespAOutData, smiRespAOutStop, smiReqBInReady,
  smiReqBInEofc, smiReqBInData, smiReqBInStop, smiRespBOutReady, smiRespBOutEofc,
  smiRespBOutData, smiRespBOutStop, smiReqCInReady, smiReqCInEofc, smiReqCInData,
  smiReqCInStop, smiRespCOutReady, smiRespCOutEofc, smiRespCOutData,
  smiRespCOutStop, smiReqDInReady, smiReqDInEofc, smiReqDInData, smiReqDInStop,
  smiRespDOutReady, smiRespDOutEofc, smiRespDOutData, smiRespDOutStop,
  smiReqOutReady, smiReqOutEofc, smiReqOutData, smiReqOutStop, smiRespInReady,
  smiRespInEofc, smiRespInData, smiRespInStop, clk, srst);

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

// Specifies the upstream memory interface C ports.
input                   smiReqCInReady;
input [7:0]             smiReqCInEofc;
input [DataWidthUS-1:0] smiReqCInData;
output                  smiReqCInStop;

output                   smiRespCOutReady;
output [7:0]             smiRespCOutEofc;
output [DataWidthUS-1:0] smiRespCOutData;
input                    smiRespCOutStop;

// Specifies the upstream memory interface D ports.
input                   smiReqDInReady;
input [7:0]             smiReqDInEofc;
input [DataWidthUS-1:0] smiReqDInData;
output                  smiReqDInStop;

output                   smiRespDOutReady;
output [7:0]             smiRespDOutEofc;
output [DataWidthUS-1:0] smiRespDOutData;
input                    smiRespDOutStop;

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

// Specifies the internal bus C signals.
wire                   smiReqCIntReady;
wire [7:0]             smiReqCIntEofc;
wire [DataWidthUS-1:0] smiReqCIntData;
wire                   smiReqCIntStop;

wire                   smiReqCSclReady;
wire [7:0]             smiReqCSclEofc;
wire [DataWidthDS-1:0] smiReqCSclData;
wire                   smiReqCSclStop;

wire                   smiRespCIntReady;
wire [7:0]             smiRespCIntEofc;
wire [DataWidthUS-1:0] smiRespCIntData;
wire                   smiRespCIntStop;

wire                   smiRespCSclReady;
wire [7:0]             smiRespCSclEofc;
wire [DataWidthDS-1:0] smiRespCSclData;
wire                   smiRespCSclStop;

// Specifies the internal bus D signals.
wire                   smiReqDIntReady;
wire [7:0]             smiReqDIntEofc;
wire [DataWidthUS-1:0] smiReqDIntData;
wire                   smiReqDIntStop;

wire                   smiReqDSclReady;
wire [7:0]             smiReqDSclEofc;
wire [DataWidthDS-1:0] smiReqDSclData;
wire                   smiReqDSclStop;

wire                   smiRespDIntReady;
wire [7:0]             smiRespDIntEofc;
wire [DataWidthUS-1:0] smiRespDIntData;
wire                   smiRespDIntStop;

wire                   smiRespDSclReady;
wire [7:0]             smiRespDSclEofc;
wire [DataWidthDS-1:0] smiRespDSclData;
wire                   smiRespDSclStop;

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

// Instantiate transaction matcher on upstream bus C.
smiTransactionMatcher #(FlitWidth, 2, TagIdWidth, FifoSize, FifoIndexSize) busCMatcher
  (smiReqCInReady, smiReqCInEofc, smiReqCInData, smiReqCInStop, smiReqCIntReady,
  smiReqCIntEofc, smiReqCIntData, smiReqCIntStop, smiRespCIntReady, smiRespCIntEofc,
  smiRespCIntData, smiRespCIntStop, smiRespCOutReady, smiRespCOutEofc, smiRespCOutData,
  smiRespCOutStop, clk, srst);

// Instantiate transaction matcher on upstream bus D.
smiTransactionMatcher #(FlitWidth, 3, TagIdWidth, FifoSize, FifoIndexSize) busDMatcher
  (smiReqDInReady, smiReqDInEofc, smiReqDInData, smiReqDInStop, smiReqDIntReady,
  smiReqDIntEofc, smiReqDIntData, smiReqDIntStop, smiRespDIntReady, smiRespDIntEofc,
  smiRespDIntData, smiRespDIntStop, smiRespDOutReady, smiRespDOutEofc, smiRespDOutData,
  smiRespDOutStop, clk, srst);

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

// Instantiate bus width scalers for upstream bus C.
smiFlitScaleX2 #(FlitWidth, FifoSize, FifoIndexSize) busCReqScale
  (smiReqCIntReady, smiReqCIntEofc, smiReqCIntData, smiReqCIntStop, smiReqCSclReady,
  smiReqCSclEofc, smiReqCSclData, smiReqCSclStop, clk, srst);

smiFlitScaleD2 #(FlitWidth*2, FifoSize, FifoIndexSize) busCRespScale
  (smiRespCSclReady, smiRespCSclEofc, smiRespCSclData, smiRespCSclStop,
  smiRespCIntReady, smiRespCIntEofc, smiRespCIntData, smiRespCIntStop, clk, srst);

// Instantiate bus width scalers for upstream bus D.
smiFlitScaleX2 #(FlitWidth, FifoSize, FifoIndexSize) busDReqScale
  (smiReqDIntReady, smiReqDIntEofc, smiReqDIntData, smiReqDIntStop, smiReqDSclReady,
  smiReqDSclEofc, smiReqDSclData, smiReqDSclStop, clk, srst);

smiFlitScaleD2 #(FlitWidth*2, FifoSize, FifoIndexSize) busDRespScale
  (smiRespDSclReady, smiRespDSclEofc, smiRespDSclData, smiRespDSclStop,
  smiRespDIntReady, smiRespDIntEofc, smiRespDIntData, smiRespDIntStop, clk, srst);

// Instantiate frame arbitration between upstream requests.
smiFrameArbiterX4 #(FlitWidth*2, FifoSize, FifoIndexSize) reqArbiter
  (smiReqASclReady, smiReqASclEofc, smiReqASclData, smiReqASclStop, smiReqBSclReady,
  smiReqBSclEofc, smiReqBSclData, smiReqBSclStop, smiReqCSclReady, smiReqCSclEofc,
  smiReqCSclData, smiReqCSclStop, smiReqDSclReady, smiReqDSclEofc, smiReqDSclData,
  smiReqDSclStop, smiReqOutReady, smiReqOutEofc, smiReqOutData, smiReqOutStop,
  clk, srst);

// Instantiate frame steering to upstream responses.
smiFrameSteerX4 #(FlitWidth*2, 0, (1 << 26), (2 << 26), (3 << 26), (63 << 26),
    FifoSize, FifoIndexSize) respSteer
  (smiRespInReady, smiRespInEofc, smiRespInData, smiRespInStop, smiRespASclReady,
  smiRespASclEofc, smiRespASclData, smiRespASclStop, smiRespBSclReady, smiRespBSclEofc,
  smiRespBSclData, smiRespBSclStop, smiRespCSclReady, smiRespCSclEofc, smiRespCSclData,
  smiRespCSclStop, smiRespDSclReady, smiRespDSclEofc, smiRespDSclData, smiRespDSclStop,
  clk, srst);

endmodule
