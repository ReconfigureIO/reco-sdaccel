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
// limitations under the License.//
//

//
// Provides support for packing byte lane aligned data generated by AXI read
// data transactions into flit data transfers. The output consists of the newly
// packed data words. Note that only the lower bits of the length field are
// required in order to calculate the size of the final flit.
//

`timescale 1ns/1ps

module smiFlitDataPack
  (setupReady, byteOffset, byteLength, setupStop, alignedInReady, alignedInData,
  alignedInLast, alignedInStop, smiOutReady, smiOutEofc, smiOutData, smiOutStop,
  clk, srst);

// Specifies the width of the flit data input and output ports as an integer
// power of two number of bytes.
parameter FlitWidth = 16;

// Specifies the clock and active high synchronous reset signals.
input clk;
input srst;

// Specifies the address offet input signals.
input       setupReady;
input [7:0] byteOffset;
input [7:0] byteLength;
output      setupStop;

// Specifies the aligned data input signals.
input                   alignedInReady;
input [FlitWidth*8-1:0] alignedInData;
input                   alignedInLast;
output                  alignedInStop;

// Specifies the packed flit output signals.
output                   smiOutReady;
output [7:0]             smiOutEofc;
output [FlitWidth*8-1:0] smiOutData;
input                    smiOutStop;

// Specifies the address offset and aligned input register signals.
reg       setupReady_q;
reg [7:0] byteOffset_q;
reg [7:0] byteLength_q;
reg       setupHalt;

reg                   alignedInReady_q;
reg [FlitWidth*8-1:0] alignedInData_q;
reg                   alignedInLast_q;
reg                   alignedInHalt;

// Specifies the state space for the flit packing state machine.
parameter [1:0]
  PackIdle = 0,
  PackCopyFrame = 1,
  PackAddTail = 2;

// Specifies the header injection state machine signals.
reg [1:0]             packState_d;
reg [FlitWidth*8-1:0] lastAlignedData_d;
reg [7:0]             shiftOffset_d;
reg [7:0]             lastFlitLength_d;

reg [1:0]             packState_q;
reg [FlitWidth*8-1:0] lastAlignedData_q;
reg [7:0]             shiftOffset_q;
reg [7:0]             lastFlitLength_q;

// Specifies the barrel shifter input signals.
reg       shiftInValid_d;
reg [7:0] shiftInEofc_d;
wire      barrelShiftStop;

reg                         shiftInValid_q;
reg [7:0]                   shiftInEofc_q;
reg [7:0]                   shiftInAmount_q;
reg [(2*FlitWidth-1)*8-1:0] shiftInData_q;

// Specifies the barrel shifter pipeline signals.
reg [(2*FlitWidth-1)*8-1:0] shiftP1Data_d;

reg                         shiftP1Valid_q;
reg [7:0]                   shiftP1Eofc_q;
reg [(2*FlitWidth-1)*8-1:0] shiftP1Data_q;
reg [7:0]                   shiftP1Amount_q;

reg [(2*FlitWidth-1)*8-1:0] shiftP2Data_d;

reg                         shiftP2Valid_q;
reg [7:0]                   shiftP2Eofc_q;
reg [(2*FlitWidth-1)*8-1:0] shiftP2Data_q;
reg [7:0]                   shiftP2Amount_q;

reg [(2*FlitWidth-1)*8-1:0] shiftP3Data_d;

reg                   shiftP3Valid_q;
reg [7:0]             shiftP3Eofc_q;
reg [FlitWidth*8-1:0] shiftP3Data_q;

// Combined output vector.
wire [FlitWidth*8+7:0] smiOutVec;

// Miscellaneous signals.
integer i;

// Implement resettable input control registers.
always @(posedge clk)
begin
  if (srst)
  begin
    setupReady_q <= 1'b0;
    alignedInReady_q  <= 1'b0;
  end
  else
  begin
    if (~(setupReady_q & setupHalt))
      setupReady_q <= setupReady;
    if (~(alignedInReady_q & alignedInHalt))
      alignedInReady_q <= alignedInReady;
  end
end

// Implement non-resettable input data registers.
always @(posedge clk)
begin
  if (~(setupReady_q & setupHalt))
  begin
    byteOffset_q <= byteOffset & (FlitWidth [7:0] - 8'b1);
    byteLength_q <= byteLength & (FlitWidth [7:0] - 8'b1);
  end
  if (~(alignedInReady_q & alignedInHalt))
  begin
    alignedInData_q <= alignedInData;
    alignedInLast_q <= alignedInLast;
  end
end

assign setupStop = setupReady_q & setupHalt;
assign alignedInStop = alignedInReady_q & alignedInHalt;

// Implement combinatorial logic for flit packing.
always @(packState_q, lastAlignedData_q, shiftOffset_q, lastFlitLength_q,
  setupReady_q, byteOffset_q, byteLength_q, alignedInReady_q, alignedInData_q,
  alignedInLast_q, barrelShiftStop)
begin

  // Hold current state by default.
  packState_d = packState_q;
  lastAlignedData_d = lastAlignedData_q;
  shiftOffset_d = shiftOffset_q;
  lastFlitLength_d = lastFlitLength_q;
  shiftInValid_d = 1'b0;
  shiftInEofc_d = 8'd0;

  setupHalt = 1'b1;
  alignedInHalt = 1'b1;

  // Implement state machine.
  case (packState_q)

    // Copy over the body of the frame, carrying the upper set of bytes over to
    // the next flit if required.
    PackCopyFrame :
    begin
      shiftInValid_d = alignedInReady_q;
      alignedInHalt = barrelShiftStop;
      if (alignedInReady_q & ~barrelShiftStop)
      begin
        lastAlignedData_d = alignedInData_q;
        if (alignedInLast_q)
        begin

          // At the end of the input frame, ensure that at least one byte of the
          // final aligned data word is used in the final flit.
          if ({1'b0, shiftOffset_q} + {1'b0, lastFlitLength_q} > FlitWidth [8:0])
          begin
            packState_d = PackIdle;
            shiftInEofc_d = lastFlitLength_q;
          end

          // Alternatively, add an extra tail flit to include data from the
          // final aligned data word.
          else
          begin
            packState_d = PackAddTail;
          end
        end
      end
    end

    // Add an extra flit to the end of the frame.
    PackAddTail :
    begin
      shiftInValid_d = 1'b1;
      shiftInEofc_d = lastFlitLength_q;
      if (~barrelShiftStop)
        packState_d = PackIdle;
    end

    // From the idle state, wait for the setup fields and first block of
    // aligned data to become available.
    default :
    begin
      lastAlignedData_d = alignedInData_q;
      shiftOffset_d = byteOffset_q;
      lastFlitLength_d = (byteLength_q == 8'd0) ? FlitWidth [7:0] : byteLength_q;
      setupHalt = ~alignedInReady_q;
      alignedInHalt = ~setupReady_q;
      if (setupReady_q & alignedInReady_q)
      begin
        if (alignedInLast_q)
          packState_d = PackAddTail;
        else
          packState_d = PackCopyFrame;
      end
    end
  endcase

end

// Implement resettable sequential logic for state machine control signals.
always @(posedge clk)
begin
  if (srst)
    packState_q <= PackIdle;
  else
    packState_q <= packState_d;
end

// Implement non-resettable sequential logic for state machine data signals.
always @(posedge clk)
begin
  lastAlignedData_q <= lastAlignedData_d;
  shiftOffset_q     <= shiftOffset_d;
  lastFlitLength_q  <= lastFlitLength_d;
end

// Implement resettable barrel shifter input control registers.
always @(posedge clk)
begin
  if (srst)
  begin
    shiftInValid_q <= 1'b0;
    shiftP1Valid_q <= 1'b0;
    shiftP2Valid_q <= 1'b0;
    shiftP3Valid_q <= 1'b0;
  end
  else if (~barrelShiftStop)
  begin
    shiftInValid_q <= shiftInValid_d;
    shiftP1Valid_q <= shiftInValid_q;
    shiftP2Valid_q <= shiftP1Valid_q;
    shiftP3Valid_q <= shiftP2Valid_q;
  end
end

// Implement non-resettable barrel shifter input data registers.
always @(posedge clk)
begin
  if (~barrelShiftStop)
  begin
    shiftInEofc_q   <= shiftInEofc_d;
    shiftInAmount_q <= shiftOffset_q;
    shiftInData_q   <= { alignedInData_q [(FlitWidth-1)*8-1:0], lastAlignedData_q };
  end
end

// Implement first barrel shifter stage logic.
always @(shiftInData_q, shiftInAmount_q)
begin
  shiftP1Data_d = shiftInData_q;

  // Shift on bit 0.
  if ((shiftInAmount_q & 8'd1) != 8'd0)
  begin
    for (i = 8; i < (2*FlitWidth-1)*8; i = i + 1)
      shiftP1Data_d [i-8] = shiftP1Data_d [i];
  end

  // Shift on bit 3.
  if ((shiftInAmount_q & 8'd8) != 8'd0)
  begin
    for (i = 64; i < (2*FlitWidth-1)*8; i = i + 1)
      shiftP1Data_d [i-64] = shiftP1Data_d [i];
  end

end

// Implement first barrel shifter stage registers.
always @(posedge clk)
begin
  if (~barrelShiftStop)
  begin
    shiftP1Eofc_q   <= shiftInEofc_q;
    shiftP1Amount_q <= shiftInAmount_q;
    shiftP1Data_q   <= shiftP1Data_d;
  end
end

// Implement second barrel shifter stage logic.
always @(shiftP1Data_q, shiftP1Amount_q)
begin
  shiftP2Data_d = shiftP1Data_q;

  // Shift on bit 1.
  if ((shiftP1Amount_q & 8'd2) != 8'd0)
  begin
    for (i = 16; i < (2*FlitWidth-1)*8; i = i + 1)
      shiftP2Data_d [i-16] = shiftP2Data_d [i];
  end

  // Shift on bit 4.
  if ((shiftP1Amount_q & 8'd16) != 8'd0)
  begin
    for (i = 128; i < (2*FlitWidth-1)*8; i = i + 1)
      shiftP2Data_d [i-128] = shiftP2Data_d [i];
  end

end

// Implement second barrel shifter stage registers.
always @(posedge clk)
begin
  if (~barrelShiftStop)
  begin
    shiftP2Eofc_q   <= shiftP1Eofc_q;
    shiftP2Amount_q <= shiftP1Amount_q;
    shiftP2Data_q   <= shiftP2Data_d;
  end
end

// Implement third barrel shifter stage logic.
always @(shiftP2Data_q, shiftP2Amount_q)
begin
  shiftP3Data_d = shiftP2Data_q;

  // Shift on bit 2.
  if ((shiftP2Amount_q & 8'd4) != 8'd0)
  begin
    for (i = 32; i < (2*FlitWidth-1)*8; i = i + 1)
      shiftP3Data_d [i-32] = shiftP3Data_d [i];
  end

  // Shift on bit 5.
  if ((shiftP2Amount_q & 8'd32) != 8'd0)
  begin
    for (i = 256; i < (2*FlitWidth-1)*8; i = i + 1)
      shiftP3Data_d [i-256] = shiftP3Data_d [i];
  end

  // Shift on bit 6.
  if ((shiftP2Amount_q & 8'd64) != 8'd0)
  begin
    for (i = 512; i < (2*FlitWidth-1)*8; i = i + 1)
      shiftP3Data_d [i-512] = shiftP3Data_d [i];
  end

end

// Implement third barrel shifter stage registers.
always @(posedge clk)
begin
  if (~barrelShiftStop)
  begin
    shiftP3Eofc_q <= shiftP2Eofc_q;
    shiftP3Data_q <= shiftP3Data_d [FlitWidth*8-1:0];
  end
end

// Implement double buffering on the output flits.
smiSelfLinkDoubleBuffer #(FlitWidth*8+8) smiOutBuf
  (shiftP3Valid_q, { shiftP3Eofc_q, shiftP3Data_q }, barrelShiftStop,
  smiOutReady, smiOutVec, smiOutStop, clk, srst);

assign smiOutEofc = smiOutVec [FlitWidth*8+7:FlitWidth*8];
assign smiOutData = smiOutVec [FlitWidth*8-1:0];

endmodule