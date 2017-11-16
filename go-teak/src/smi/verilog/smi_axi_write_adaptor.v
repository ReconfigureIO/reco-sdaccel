//
// (c) 2017 ReconfigureIO
//
// <COPYRIGHT TERMS>
//

//
// Implementation of the scalable memory interface (SMI) to ARM AXI write bus
// adaptor. This assumes that the SMI request frames have already been filtered
// on the frame type identifier field and are known to be write requests.
//
// The following signals are not included on the AXI-4 interfaces. If connecting
// to a fabric or component that supports these signals, these constant values
// should be used:
//      Signal          Value
//      AxBURST[1:0]    0b01 (Incremental Bursts Only)
//      AxLOCK[1:0]     0b00
//      AxCACHE[3:0]    0bXXXX (Implementation Specific)
//      AxPROT[2:0]     0b000
//      AxQOS[3:0]      0b0000
//      AxREGION[3:0]   0b0000
//

`timescale 1ns/1ps

// Frame type identifiers - should probably move to a common package.
`define WRITE_RESP_ID_BYTE 8'hFE

module smiAxiWriteAdaptor
  (smiReqReady, smiReqEofc, smiReqData, smiReqStop, smiRespReady, smiRespEofc,
  smiRespData, smiRespStop, axiAWValid, axiAWReady, axiAWId, axiAWAddr,
  axiAWLen, axiAWSize, axiWValid, axiWReady, axiWData, axiWStrb, axiWLast,
  axiBValid, axiBReady, axiBId, axiBResp, clk, srst);

// Specifies the number of bits required to address individual bytes within the
// AXI data signal. This also determines the width of the data signal.
parameter DataIndexSize = 4;

// Specifies the width of the AXI ID signal. This also determines the number
// of transactions which may be 'in flight' through the adaptor at any given
// time.
parameter AxiIdWidth = 4;

// Specifies the internal FIFO depths (more than 3 entries).
parameter FifoSize = 16;

// Specifies the internal FIFO index size, which should be capable of holding
// the binary representation of FifoSize-1.
parameter FifoIndexSize = 4;

// Derives the width of the data input and output ports. Minimum of 128 bits.
parameter DataWidth = (1 << DataIndexSize) * 8;

// Derives the maximum number of 'in flight' write transactions.
parameter MaxWriteIds = (1 << AxiIdWidth);

// Specifies the state space for the write request dispatch state machine.
parameter [1:0]
  RequestIdle = 0,
  RequestDispatch = 1,
  RequestDataAlign = 2;

// Specifies the state space for the write response handler state machine.
parameter [1:0]
  ResponseReset = 0,
  ResponseIdle = 1,
  ResponseSend = 2;

// Specifies the clock and active high synchronous reset signals.
input clk;
input srst;

// Specifies the 'upstream' scalable memory interface ports.
input                 smiReqReady;
input [7:0]           smiReqEofc;
input [DataWidth-1:0] smiReqData;
output                smiReqStop;

output                 smiRespReady;
output [7:0]           smiRespEofc;
output [DataWidth-1:0] smiRespData;
input                  smiRespStop;

// Specifies the 'downstream' AXI memory bus ports.
output                  axiAWValid;
input                   axiAWReady;
output [AxiIdWidth-1:0] axiAWId;
output [63:0]           axiAWAddr;
output [7:0]            axiAWLen;
output [2:0]            axiAWSize;

output                   axiWValid;
input                    axiWReady;
output [DataWidth-1:0]   axiWData;
output [DataWidth/8-1:0] axiWStrb;
output                   axiWLast;

input                  axiBValid;
output                 axiBReady;
input [AxiIdWidth-1:0] axiBId;
input [1:0]            axiBResp;

// Specifies the AXI write response input registers.
reg                  axiBValid_q;
reg [AxiIdWidth-1:0] axiBId_q;
reg [1:0]            axiBResp_q;
reg                  axiBHalt;

// Specifies the buffered AXI address signals.
reg         axiAWBufValid;
wire        axiAWBufStop;

// verilator lint_off UNUSED
wire [15:0] axiAWLenBuf;
// verilator lint_on UNUSED

reg                  axiAWValid_q;
reg [AxiIdWidth-1:0] axiAWId_q;
reg [63:0]           axiAWAddr_q;
reg [7:0]            axiAWLen_q;

// Specifies the signals used for write transaction ID tracking FIFO.
reg                  writeIdFifoPop;
reg [AxiIdWidth-1:0] writeIdFifoOutput;
reg [AxiIdWidth-1:0] writeIdFifoData [MaxWriteIds-1:0];

reg                  writeIdFifoPush_d;
reg [AxiIdWidth-1:0] writeIdFifoInput_d;
reg                  writeIdFifoEmpty_d;
reg [AxiIdWidth-1:0] writeIdFifoIndex_d;

reg                  writeIdFifoPush_q;
reg [AxiIdWidth-1:0] writeIdFifoInput_q;
reg                  writeIdFifoEmpty_q;
reg [AxiIdWidth-1:0] writeIdFifoIndex_q;

// Specifies the signals used for the parameter cache RAM.
reg        pCacheWrite;
reg        pCacheRead;
reg [15:0] pCacheSmiTags [MaxWriteIds-1:0];
reg [15:0] paramSmiTag;

// Specifies the signals used for the write request dispatch state machine.
reg [1:0] dispatchState_d;
reg [7:0] byteOffset_d;
reg [1:0] dispatchState_q;
reg [7:0] byteOffset_q;

// Specifies the signals used for the read response processing state machine.
reg [1:0]            responseState_d;
reg [1:0]            responseStatus_d;
reg [AxiIdWidth-1:0] axiIdInit_d;
reg [1:0]            responseState_q;
reg [1:0]            responseStatus_q;
reg [AxiIdWidth-1:0] axiIdInit_q;

// Specifies the signals used for the packed frame datapath.
wire                 dataFrameReady;
wire [7:0]           dataFrameEofc;
wire [DataWidth-1:0] dataFrameData;
wire                 dataFrameStop;

// Specifies the signals used for the extracted header information.
wire         headerReady;
wire [111:0] headerData;
reg          headerStop;
reg          byteOffsetReady;
wire         byteOffsetStop;

// Specifies the signals used for the response buffer.
reg                   smiBufRespReady;
wire                  smiBufRespStop;
wire [DataWidth-1:32] smiRespZeros;

reg        smiRespReady_q;
reg [15:0] smiRespTag_q;
reg [1:0]  smiRespStatus_q;

// Miscellaneous signals.
integer i;

// Implement resettable AXI response control registers.
always @(posedge clk)
begin
  if (srst)
    axiBValid_q <= 1'b0;
  else if (~(axiBValid_q & axiBHalt))
    axiBValid_q <= axiBValid;
end

// Implement non-resettable AXI response registers.
always @(posedge clk)
begin
  if (~(axiBValid_q & axiBHalt))
  begin
    axiBId_q <= axiBId;
    axiBResp_q <= axiBResp;
  end
end

// Assign AXI response ready output.
assign axiBReady = ~(axiBValid_q & axiBHalt);

// Implement combinatorial logic for write ID tracking FIFO.
always @(writeIdFifoEmpty_q, writeIdFifoIndex_q, writeIdFifoPush_q, writeIdFifoPop)
begin

  // Hold current state by default.
  writeIdFifoEmpty_d = writeIdFifoEmpty_q;
  writeIdFifoIndex_d = writeIdFifoIndex_q;

  // Update the FIFO empty and index state on push only.
  if (writeIdFifoPush_q & ~writeIdFifoPop)
  begin
    if (writeIdFifoEmpty_q)
      writeIdFifoEmpty_d = 1'b0;
    else
      writeIdFifoIndex_d = writeIdFifoIndex_q + 1;
  end

  // Update the FIFO empty and index state on pop only.
  if (writeIdFifoPop & ~writeIdFifoPush_q)
  begin
    if (writeIdFifoIndex_q == 0)
      writeIdFifoEmpty_d = 1'b1;
    else
      writeIdFifoIndex_d = writeIdFifoIndex_q - 1;
  end
end

// Implement resettable control logic for write ID tracking FIFO.
always @(posedge clk)
begin
  if (srst)
  begin
    writeIdFifoEmpty_q <= 1'b1;
    for (i = 0; i < AxiIdWidth; i = i + 1)
      writeIdFifoIndex_q [i] <= 1'b0;
  end
  else
  begin
    writeIdFifoEmpty_q <= writeIdFifoEmpty_d;
    writeIdFifoIndex_q <= writeIdFifoIndex_d;
  end
end

// Implement non-resettable datapath registers for write ID tracking FIFO.
always @(posedge clk)
begin
  if (writeIdFifoPush_q)
  begin
    writeIdFifoData [0] <= writeIdFifoInput_q;
    for (i = 1; i < MaxWriteIds; i = i + 1)
      writeIdFifoData [i] <= writeIdFifoData [i-1];
  end
  if (writeIdFifoPop)
  begin
    writeIdFifoOutput <= writeIdFifoData [writeIdFifoIndex_q];
  end
end

// Implement parameter cache RAM.
always @(posedge clk)
begin
  if (pCacheWrite)
  begin
    pCacheSmiTags [writeIdFifoOutput] <= headerData [31:16];
  end
  if (pCacheRead)
  begin
    paramSmiTag <= pCacheSmiTags [axiBId_q];
  end
end

// Combinatorial logic for write request dispatch state machine.
always @(dispatchState_q, byteOffset_q, headerReady, headerData,
  writeIdFifoEmpty_q, axiAWBufStop, byteOffsetStop)
begin

  // Hold current state by default.
  dispatchState_d = dispatchState_q;
  byteOffset_d = byteOffset_q;
  writeIdFifoPop = 1'b0;
  axiAWBufValid = 1'b0;
  headerStop = 1'b1;
  pCacheWrite = 1'b0;
  byteOffsetReady = 1'b0;

  // Implement state machine.
  case (dispatchState_q)

    // Dispatch the write address request.
    RequestDispatch :
    begin
      axiAWBufValid = 1'b1;
      pCacheWrite = 1'b1;
      byteOffset_d = headerData [39:32];
      if (~axiAWBufStop)
      begin
        dispatchState_d = RequestDataAlign;
        headerStop = 1'b0;
      end
    end

    // Set byte alignment offset.
    RequestDataAlign :
    begin
      byteOffsetReady = 1'b1;
      if (~byteOffsetStop)
        dispatchState_d = RequestIdle;
    end

    // From the idle state, wait for a valid write request.
    default :
    begin
      if (headerReady & ~writeIdFifoEmpty_q)
      begin
        dispatchState_d = RequestDispatch;
        writeIdFifoPop = 1'b1;
      end
    end
  endcase

end

// Sequential logic for write request dispatch state machine.
always @(posedge clk)
begin
  if (srst)
    dispatchState_q <= RequestIdle;
  else
    dispatchState_q <= dispatchState_d;
end

always @(posedge clk)
begin
  byteOffset_q <= byteOffset_d;
end

// To calculate the AXI burst length we need to take into account the number
// of bytes in the burst and the address offset within the first word. This
// yields a 16-bit value which we slice down to 8 bits later.
assign axiAWLenBuf = (headerData [111:96] - 16'd1 +
    (headerData [47:32] & ((16'd1 << DataIndexSize) - 16'd1))) >> DataIndexSize;

// Buffer the AXI write address output using a toggle buffer.
always @(posedge clk)
begin
  if (srst)
  begin
    axiAWValid_q <= 1'b0;
    axiAWLen_q <= 8'd0;
    axiAWAddr_q <= 64'd0;
    for (i = 0; i < AxiIdWidth; i = i + 1)
      axiAWId_q [i] <= 1'b0;
  end
  else if (axiAWValid_q)
  begin
    axiAWValid_q <= ~axiAWReady;
  end
  else if (axiAWBufValid)
  begin
    axiAWValid_q <= 1'b1;
    axiAWLen_q <= axiAWLenBuf[7:0];
    axiAWAddr_q <= headerData [95:32];
    axiAWId_q <= writeIdFifoOutput;
  end
end

assign axiAWBufStop = axiAWValid_q;
assign axiAWValid = axiAWValid_q;
assign axiAWId = axiAWId_q;
assign axiAWLen = axiAWLen_q;
assign axiAWAddr = axiAWAddr_q;
assign axiAWSize = DataIndexSize [2:0];

// Combinatorial logic for write response processing state machine.
always @(responseState_q, responseStatus_q, axiIdInit_q, writeIdFifoInput_q,
  axiBValid_q,
  axiBId_q, axiBResp_q, smiBufRespStop)
begin

  // Hold current state by default.
  responseState_d = responseState_q;
  responseStatus_d = responseStatus_q;
  axiIdInit_d = axiIdInit_q;
  writeIdFifoPush_d = 1'b0;
  writeIdFifoInput_d = writeIdFifoInput_q;
  pCacheRead = 1'b0;
  axiBHalt = 1'b1;
  smiBufRespReady = 1'b0;

  // Implement state machine.
  case (responseState_q)

    // In the reset state, push the initial AXI transaction ID values into the
    // write ID tracking FIFO.
    ResponseReset :
    begin
      writeIdFifoPush_d = 1'b1;
      writeIdFifoInput_d = axiIdInit_q;
      axiIdInit_d = axiIdInit_q + 1;
      if ({1'b0, axiIdInit_q} == MaxWriteIds [AxiIdWidth:0] - 1)
        responseState_d = ResponseIdle;
    end

    // Send the response when ready.
    ResponseSend :
    begin
      smiBufRespReady = 1'b1;
      if (~smiBufRespStop)
        responseState_d = ResponseIdle;
    end

    // From the idle state, wait for a valid read response.
    default :
    begin
      pCacheRead = 1'b1;
      axiBHalt = 1'b0;
      responseStatus_d = axiBResp_q;
      writeIdFifoInput_d = axiBId_q;
      if (axiBValid_q)
      begin
        responseState_d = ResponseSend;
        writeIdFifoPush_d = 1'b1;
      end
    end
  endcase
end

// Resettable control registers for read response state machine.
always @(posedge clk)
begin
  if (srst)
  begin
    responseState_q <= ResponseReset;
    writeIdFifoPush_q <= 1'b0;
    for (i = 0; i < AxiIdWidth; i = i + 1)
      axiIdInit_q[i] <= 1'b0;
  end
  else
  begin
    responseState_q <= responseState_d;
    writeIdFifoPush_q <= writeIdFifoPush_d;
    axiIdInit_q <= axiIdInit_d;
  end
end

// Non-resettable datapath registers for read response state machine.
always @(posedge clk)
begin
  responseStatus_q <= responseStatus_d;
  writeIdFifoInput_q <= writeIdFifoInput_d;
end

// Buffer the SMI response output using a toggle buffer.
always @(posedge clk)
begin
  if (srst)
    smiRespReady_q <= 1'b0;
  else if (smiRespReady_q)
    smiRespReady_q <= smiRespStop;
  else
    smiRespReady_q <= smiBufRespReady;
end

always @(posedge clk)
begin
  if (~smiRespReady_q)
  begin
    smiRespTag_q <= paramSmiTag;
    smiRespStatus_q <= responseStatus_q;
  end
end

assign smiBufRespStop = smiRespReady_q;
assign smiRespReady = smiRespReady_q;
assign smiRespEofc = 8'd4;
assign smiRespZeros = 0;
assign smiRespData =
  { smiRespZeros, smiRespTag_q, 6'd0, smiRespStatus_q, `WRITE_RESP_ID_BYTE };

// Extract the header from the SMI write input.
smiHeaderExtractSf #(DataWidth/8, 14, FifoSize, FifoIndexSize) headerExtraction
  (smiReqReady, smiReqEofc, smiReqData, smiReqStop, headerReady, headerData,
  headerStop, dataFrameReady, dataFrameEofc, dataFrameData, dataFrameStop,
  clk, srst);

// Perform byte lane alignment on the data frame.
smiByteDataAlign #(DataWidth/8, FifoSize, FifoIndexSize) byteAlignment
  (byteOffsetReady, byteOffset_q, byteOffsetStop, dataFrameReady, dataFrameEofc,
  dataFrameData, dataFrameStop, axiWValid, axiWData, axiWStrb, axiWLast,
  ~axiWReady, clk, srst);

endmodule
