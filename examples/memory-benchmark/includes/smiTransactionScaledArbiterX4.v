//
// Copyright 2017 ReconfigureIO
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//     http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.
//
//
// Implements four way scaled transaction arbitration on SMI based memory
// accesses. This combines bus width doubling with four way arbitration to
// provide a 2:1 bandwidth contention ratio at the inputs.
//

`timescale 1ns/1ps

module smiTransactionScaledArbiterX4
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

// Specifies the maximum number of assembled frames that can be buffered.
parameter MaxAssembledFrames = 15;

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

wire                   smiReqABufReady;
wire [7:0]             smiReqABufEofc;
wire [DataWidthDS-1:0] smiReqABufData;
wire                   smiReqABufStop;

wire                   smiRespAIntReady;
wire [7:0]             smiRespAIntEofc;
wire [DataWidthUS-1:0] smiRespAIntData;
wire                   smiRespAIntStop;

wire                   smiRespASclReady;
wire [7:0]             smiRespASclEofc;
wire [DataWidthDS-1:0] smiRespASclData;
wire                   smiRespASclStop;

wire                   smiRespABufReady;
wire [7:0]             smiRespABufEofc;
wire [DataWidthDS-1:0] smiRespABufData;
wire                   smiRespABufStop;

// Specifies the internal bus B signals.
wire                   smiReqBIntReady;
wire [7:0]             smiReqBIntEofc;
wire [DataWidthUS-1:0] smiReqBIntData;
wire                   smiReqBIntStop;

wire                   smiReqBSclReady;
wire [7:0]             smiReqBSclEofc;
wire [DataWidthDS-1:0] smiReqBSclData;
wire                   smiReqBSclStop;

wire                   smiReqBBufReady;
wire [7:0]             smiReqBBufEofc;
wire [DataWidthDS-1:0] smiReqBBufData;
wire                   smiReqBBufStop;

wire                   smiRespBIntReady;
wire [7:0]             smiRespBIntEofc;
wire [DataWidthUS-1:0] smiRespBIntData;
wire                   smiRespBIntStop;

wire                   smiRespBSclReady;
wire [7:0]             smiRespBSclEofc;
wire [DataWidthDS-1:0] smiRespBSclData;
wire                   smiRespBSclStop;

wire                   smiRespBBufReady;
wire [7:0]             smiRespBBufEofc;
wire [DataWidthDS-1:0] smiRespBBufData;
wire                   smiRespBBufStop;

// Specifies the internal bus C signals.
wire                   smiReqCIntReady;
wire [7:0]             smiReqCIntEofc;
wire [DataWidthUS-1:0] smiReqCIntData;
wire                   smiReqCIntStop;

wire                   smiReqCSclReady;
wire [7:0]             smiReqCSclEofc;
wire [DataWidthDS-1:0] smiReqCSclData;
wire                   smiReqCSclStop;

wire                   smiReqCBufReady;
wire [7:0]             smiReqCBufEofc;
wire [DataWidthDS-1:0] smiReqCBufData;
wire                   smiReqCBufStop;

wire                   smiRespCIntReady;
wire [7:0]             smiRespCIntEofc;
wire [DataWidthUS-1:0] smiRespCIntData;
wire                   smiRespCIntStop;

wire                   smiRespCSclReady;
wire [7:0]             smiRespCSclEofc;
wire [DataWidthDS-1:0] smiRespCSclData;
wire                   smiRespCSclStop;

wire                   smiRespCBufReady;
wire [7:0]             smiRespCBufEofc;
wire [DataWidthDS-1:0] smiRespCBufData;
wire                   smiRespCBufStop;

// Specifies the internal bus D signals.
wire                   smiReqDIntReady;
wire [7:0]             smiReqDIntEofc;
wire [DataWidthUS-1:0] smiReqDIntData;
wire                   smiReqDIntStop;

wire                   smiReqDSclReady;
wire [7:0]             smiReqDSclEofc;
wire [DataWidthDS-1:0] smiReqDSclData;
wire                   smiReqDSclStop;

wire                   smiReqDBufReady;
wire [7:0]             smiReqDBufEofc;
wire [DataWidthDS-1:0] smiReqDBufData;
wire                   smiReqDBufStop;

wire                   smiRespDIntReady;
wire [7:0]             smiRespDIntEofc;
wire [DataWidthUS-1:0] smiRespDIntData;
wire                   smiRespDIntStop;

wire                   smiRespDSclReady;
wire [7:0]             smiRespDSclEofc;
wire [DataWidthDS-1:0] smiRespDSclData;
wire                   smiRespDSclStop;

wire                   smiRespDBufReady;
wire [7:0]             smiRespDBufEofc;
wire [DataWidthDS-1:0] smiRespDBufData;
wire                   smiRespDBufStop;

// Instantiate transaction matcher on upstream bus A.
smiTransactionMatcher #(FlitWidth, 0, TagIdWidth) busAMatcher
  (smiReqAInReady, smiReqAInEofc, smiReqAInData, smiReqAInStop, smiReqAIntReady,
  smiReqAIntEofc, smiReqAIntData, smiReqAIntStop, smiRespAIntReady, smiRespAIntEofc,
  smiRespAIntData, smiRespAIntStop, smiRespAOutReady, smiRespAOutEofc, smiRespAOutData,
  smiRespAOutStop, clk, srst);

// Instantiate transaction matcher on upstream bus B.
smiTransactionMatcher #(FlitWidth, 1, TagIdWidth) busBMatcher
  (smiReqBInReady, smiReqBInEofc, smiReqBInData, smiReqBInStop, smiReqBIntReady,
  smiReqBIntEofc, smiReqBIntData, smiReqBIntStop, smiRespBIntReady, smiRespBIntEofc,
  smiRespBIntData, smiRespBIntStop, smiRespBOutReady, smiRespBOutEofc, smiRespBOutData,
  smiRespBOutStop, clk, srst);

// Instantiate transaction matcher on upstream bus C.
smiTransactionMatcher #(FlitWidth, 2, TagIdWidth) busCMatcher
  (smiReqCInReady, smiReqCInEofc, smiReqCInData, smiReqCInStop, smiReqCIntReady,
  smiReqCIntEofc, smiReqCIntData, smiReqCIntStop, smiRespCIntReady, smiRespCIntEofc,
  smiRespCIntData, smiRespCIntStop, smiRespCOutReady, smiRespCOutEofc, smiRespCOutData,
  smiRespCOutStop, clk, srst);

// Instantiate transaction matcher on upstream bus D.
smiTransactionMatcher #(FlitWidth, 3, TagIdWidth) busDMatcher
  (smiReqDInReady, smiReqDInEofc, smiReqDInData, smiReqDInStop, smiReqDIntReady,
  smiReqDIntEofc, smiReqDIntData, smiReqDIntStop, smiRespDIntReady, smiRespDIntEofc,
  smiRespDIntData, smiRespDIntStop, smiRespDOutReady, smiRespDOutEofc, smiRespDOutData,
  smiRespDOutStop, clk, srst);

// Instantiate bus width scalers for upstream bus A.
smiFlitScaleX2 #(FlitWidth) busAReqScale
  (smiReqAIntReady, smiReqAIntEofc, smiReqAIntData, smiReqAIntStop, smiReqASclReady,
  smiReqASclEofc, smiReqASclData, smiReqASclStop, clk, srst);

smiFlitScaleD2 #(FlitWidth*2) busARespScale
  (smiRespASclReady, smiRespASclEofc, smiRespASclData, smiRespASclStop,
  smiRespAIntReady, smiRespAIntEofc, smiRespAIntData, smiRespAIntStop, clk, srst);

// Instantiate bus width scalers for upstream bus B.
smiFlitScaleX2 #(FlitWidth) busBReqScale
  (smiReqBIntReady, smiReqBIntEofc, smiReqBIntData, smiReqBIntStop, smiReqBSclReady,
  smiReqBSclEofc, smiReqBSclData, smiReqBSclStop, clk, srst);

smiFlitScaleD2 #(FlitWidth*2) busBRespScale
  (smiRespBSclReady, smiRespBSclEofc, smiRespBSclData, smiRespBSclStop,
  smiRespBIntReady, smiRespBIntEofc, smiRespBIntData, smiRespBIntStop, clk, srst);

// Instantiate bus width scalers for upstream bus C.
smiFlitScaleX2 #(FlitWidth) busCReqScale
  (smiReqCIntReady, smiReqCIntEofc, smiReqCIntData, smiReqCIntStop, smiReqCSclReady,
  smiReqCSclEofc, smiReqCSclData, smiReqCSclStop, clk, srst);

smiFlitScaleD2 #(FlitWidth*2) busCRespScale
  (smiRespCSclReady, smiRespCSclEofc, smiRespCSclData, smiRespCSclStop,
  smiRespCIntReady, smiRespCIntEofc, smiRespCIntData, smiRespCIntStop, clk, srst);

// Instantiate bus width scalers for upstream bus D.
smiFlitScaleX2 #(FlitWidth) busDReqScale
  (smiReqDIntReady, smiReqDIntEofc, smiReqDIntData, smiReqDIntStop, smiReqDSclReady,
  smiReqDSclEofc, smiReqDSclData, smiReqDSclStop, clk, srst);

smiFlitScaleD2 #(FlitWidth*2) busDRespScale
  (smiRespDSclReady, smiRespDSclEofc, smiRespDSclData, smiRespDSclStop,
  smiRespDIntReady, smiRespDIntEofc, smiRespDIntData, smiRespDIntStop, clk, srst);

// Instantiate frame buffers for upstream bus A.
smiFrameAssembler #(FlitWidth*2, FifoSize, MaxAssembledFrames) busAReqAssembler
  (smiReqASclReady, smiReqASclEofc, smiReqASclData, smiReqASclStop,
  smiReqABufReady, smiReqABufEofc, smiReqABufData, smiReqABufStop, clk, srst);

smiFrameBuffer #(FlitWidth*2, FifoSize) busARespBuffer
  (smiRespABufReady, smiRespABufEofc, smiRespABufData, smiRespABufStop,
  smiRespASclReady, smiRespASclEofc, smiRespASclData, smiRespASclStop, clk, srst);

// Instantiate frame buffers for upstream bus B.
smiFrameAssembler #(FlitWidth*2, FifoSize, MaxAssembledFrames) busBReqAssembler
  (smiReqBSclReady, smiReqBSclEofc, smiReqBSclData, smiReqBSclStop,
  smiReqBBufReady, smiReqBBufEofc, smiReqBBufData, smiReqBBufStop, clk, srst);

smiFrameBuffer #(FlitWidth*2, FifoSize) busBRespBuffer
  (smiRespBBufReady, smiRespBBufEofc, smiRespBBufData, smiRespBBufStop,
  smiRespBSclReady, smiRespBSclEofc, smiRespBSclData, smiRespBSclStop, clk, srst);

// Instantiate frame buffers for upstream bus C.
smiFrameAssembler #(FlitWidth*2, FifoSize, MaxAssembledFrames) busCReqAssembler
  (smiReqCSclReady, smiReqCSclEofc, smiReqCSclData, smiReqCSclStop,
  smiReqCBufReady, smiReqCBufEofc, smiReqCBufData, smiReqCBufStop, clk, srst);

smiFrameBuffer #(FlitWidth*2, FifoSize) busCRespBuffer
  (smiRespCBufReady, smiRespCBufEofc, smiRespCBufData, smiRespCBufStop,
  smiRespCSclReady, smiRespCSclEofc, smiRespCSclData, smiRespCSclStop, clk, srst);

// Instantiate frame buffers for upstream bus D.
smiFrameAssembler #(FlitWidth*2, FifoSize, MaxAssembledFrames) busDReqAssembler
  (smiReqDSclReady, smiReqDSclEofc, smiReqDSclData, smiReqDSclStop,
  smiReqDBufReady, smiReqDBufEofc, smiReqDBufData, smiReqDBufStop, clk, srst);

smiFrameBuffer #(FlitWidth*2, FifoSize) busDRespBuffer
  (smiRespDBufReady, smiRespDBufEofc, smiRespDBufData, smiRespDBufStop,
  smiRespDSclReady, smiRespDSclEofc, smiRespDSclData, smiRespDSclStop, clk, srst);

// Instantiate frame arbitration between upstream requests.
smiFrameArbiterX4 #(FlitWidth*2) reqArbiter
  (smiReqABufReady, smiReqABufEofc, smiReqABufData, smiReqABufStop, smiReqBBufReady,
  smiReqBBufEofc, smiReqBBufData, smiReqBBufStop, smiReqCBufReady, smiReqCBufEofc,
  smiReqCBufData, smiReqCBufStop, smiReqDBufReady, smiReqDBufEofc, smiReqDBufData,
  smiReqDBufStop, smiReqOutReady, smiReqOutEofc, smiReqOutData, smiReqOutStop,
  clk, srst);

// Instantiate frame steering to upstream responses.
smiFrameSteerX4 #(FlitWidth*2, 0, (1 << 26), (2 << 26), (3 << 26), (63 << 26)) respSteer
  (smiRespInReady, smiRespInEofc, smiRespInData, smiRespInStop, smiRespABufReady,
  smiRespABufEofc, smiRespABufData, smiRespABufStop, smiRespBBufReady, smiRespBBufEofc,
  smiRespBBufData, smiRespBBufStop, smiRespCBufReady, smiRespCBufEofc, smiRespCBufData,
  smiRespCBufStop, smiRespDBufReady, smiRespDBufEofc, smiRespDBufData, smiRespDBufStop,
  clk, srst);

endmodule
