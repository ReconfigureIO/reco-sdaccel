//
// (c) 2017 ReconfigureIO
//
// <COPYRIGHT TERMS>
//

//
// Implements message steering to two SMI outputs from one SMI input based on
// message type field matching. Matching message types are steered to output A
// or output B and non-matching message types are discarded.
//

`timescale 1ns/1ps

module smiFrameSteerX2
  (smiInReady, smiInEofc, smiInData, smiInStop, smiOutAReady, smiOutAEofc,
  smiOutAData, smiOutAStop, smiOutBReady, smiOutBEofc, smiOutBData, smiOutBStop,
  clk, srst);

// Specifies the flit width of the SMI interfaces. Must be at least 4.
parameter FlitWidth = 16;

// Specifies the message type matching word value for output A.
parameter TypeMatchA = 0;

// Specifies the message type matching word value for output B.
parameter TypeMatchB = 1;

// Specifies the message type matching mask. Mask bits which are set to zero
// denote don't care bits.
parameter TypeMask = 1;

// Specifies the output FIFO depth (more than 3 entries).
parameter FifoSize = 16;

// Specifies the output FIFO index size, which should be capable of holding
// the binary representation of FifoSize-1.
parameter FifoIndexSize = 4;

// Derives the mask for unused end of frame control bits.
parameter EofcMask = 2 * FlitWidth - 1;

// Specifies the clock and active high synchronous reset signals.
input clk;
input srst;

// Specifies the input combined interface ports.
input                   smiInReady;
input [7:0]             smiInEofc;
input [FlitWidth*8-1:0] smiInData;
output                  smiInStop;

// Specifies the output steered data interface ports.
output                   smiOutAReady;
output [7:0]             smiOutAEofc;
output [FlitWidth*8-1:0] smiOutAData;
input                    smiOutAStop;

output                   smiOutBReady;
output [7:0]             smiOutBEofc;
output [FlitWidth*8-1:0] smiOutBData;
input                    smiOutBStop;

// Specifies the SMI input port registers.
reg                   smiInReady_q;
reg [7:0]             smiInEofc_q;
reg [FlitWidth*8-1:0] smiInData_q;
reg                   smiInLast_q;
reg                   smiInSteerA_q;
reg                   smiInSteerB_q;
wire                  smiInHalt;

// Specifies the SMI output buffer signals.
wire                   smiBufAReady;
wire                   smiBufAStop;
wire [FlitWidth*8+7:0] smiOutAVec;

wire                   smiBufBReady;
wire                   smiBufBStop;
wire [FlitWidth*8+7:0] smiOutBVec;

// Implement resettable SMI input control registers with integrated end of
// frame detection logic.
always @(posedge clk)
begin
  if (srst)
  begin
    smiInReady_q <= 1'b0;
    smiInLast_q <= 1'b1;
  end
  else if (~(smiInReady_q & smiInHalt))
  begin
    smiInReady_q <= smiInReady;
    if (smiInReady)
      smiInLast_q <= (smiInEofc == 8'd0) ? 1'b0 : 1'b1;
  end
end

assign smiInStop = smiInReady_q & smiInHalt;

// Implement non-resettable SMI input data registers with integrated steer
// selection logic.
always @(posedge clk)
begin
  if (~(smiInReady_q & smiInHalt))
  begin
    smiInEofc_q <= smiInEofc & EofcMask[7:0];
    smiInData_q <= smiInData;
    if (smiInLast_q)
    begin
      smiInSteerA_q <=
        ((TypeMask[31:0] & (TypeMatchA[31:0] ^ smiInData[31:0])) == 32'd0) ? 1'b1 : 1'b0;
      smiInSteerB_q <=
        ((TypeMask[31:0] & (TypeMatchB[31:0] ^ smiInData[31:0])) == 32'd0) ? 1'b1 : 1'b0;
    end
  end
end

// Implement SMI signal mux into output buffers.
assign smiBufAReady = smiInReady_q & smiInSteerA_q;
assign smiBufBReady = smiInReady_q & smiInSteerB_q;

assign smiInHalt = (smiInSteerA_q & smiBufAStop) |
                   (smiInSteerB_q & smiBufBStop);

// Instantiate FIFO output buffers.
selfLinkBufferFifoS #((FlitWidth+1)*8, FifoSize, FifoIndexSize) smiBufA
  (smiBufAReady, {smiInEofc_q, smiInData_q}, smiBufAStop,
  smiOutAReady, smiOutAVec, smiOutAStop, clk, srst);

assign smiOutAEofc = smiOutAVec [FlitWidth*8+7:FlitWidth*8];
assign smiOutAData = smiOutAVec [FlitWidth*8-1:0];

selfLinkBufferFifoS #((FlitWidth+1)*8, FifoSize, FifoIndexSize) smiBufB
  (smiBufBReady, {smiInEofc_q, smiInData_q}, smiBufBStop,
  smiOutBReady, smiOutBVec, smiOutBStop, clk, srst);

assign smiOutBEofc = smiOutBVec [FlitWidth*8+7:FlitWidth*8];
assign smiOutBData = smiOutBVec [FlitWidth*8-1:0];

endmodule
