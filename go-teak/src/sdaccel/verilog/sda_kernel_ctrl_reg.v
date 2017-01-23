//
// (c) 2017 ReconfigureIO
//
// <COPYRIGHT TERMS>
//

//
// Implementation of SDAccel kernel entity control register. This is a single
// register which is located at address offset 0 in the SDAccel kernel control
// register space.
//
// The control unit uses the standard register layout for the SDAccel control 
// register. This is as follows:
//   Bit 0: start signal (R/W) - Start processing data when this bit is set.
//     The state of bit 0 will be cleared on start of processing.
//   Bit 1: done signal (RO) - Asserted when the processing is done.
//     The state of bit 1 will be cleared on reads.
//   Bit 2: idle signal (RO) - Asserted when not processing any data.
//     The state of bit 2 will be cleared on starting a new processing cycle.
//   Bit 3: ready signal (RO) - Asserted when ready to start processing.
//     The state of bit 3 will be cleared on starting a new processing cycle.
//

`timescale 1ns/1ps

module sda_kernel_ctrl_reg
  (regReq, regAck, regWriteEn, regAddr, regWData, regRData, goValid, goHoldoff, 
  doneValid, doneStop, clk, srst);
        
// Specifies the width of the register address bus.
parameter RegAddrWidth = 8;

// Slave side simple register interface signals. Note that all outputs are 
// driven low when inactive so that they can be ORed together with other 
// register block implementations. The full register interface is implemented
// even though some of the register write bus is not used.
// verilator lint_off UNUSED
input                    regReq;
output                   regAck;
input                    regWriteEn;
input [RegAddrWidth-1:0] regAddr;
input [31:0]             regWData;
output [31:0]            regRData;
// verilator lint_on UNUSED

// Specify action go SELF control handshake signals.
output goValid;
input  goHoldoff;

// Specify action done SELF control handshake signals.
input  doneValid;
output doneStop;

// System level signals.
input          clk;
input          srst;

// Specify the register layout.
parameter [31:0]
  REG_ADDR_CTRL = 'h00,
  REG_ADDR_GIE = 'h04,
  REG_ADDR_IER = 'h08,
  REG_ADDR_ISR = 'h0C;

// Pipeline the register interface input signals.
reg                    regReq_q;
reg                    regWriteEn_q;
reg                    regWData0_q;
reg [RegAddrWidth-1:0] regAddr_q;

// Specify the register bit signals.
reg regBitStart_d;
reg regBitDone_d;
reg regBitIdle_d;
reg regBitReady_d;
reg goValid_d;

reg regBitStart_q;
reg regBitDone_q;
reg regBitIdle_q;
reg regBitReady_q;
reg goValid_q;

// Specify the read pipeline signals.
reg       regAck_d;
reg [3:0] regRData_d;

reg       regAck_q;
reg [3:0] regRData_q;

// Miscellaneous signals.
wire [31:3] zeros = 29'b0;
integer i;

// Pipeline the register interface input signals.
always @(posedge clk)
begin
  if (srst)
  begin   
    regReq_q <= 1'b0;
    regWriteEn_q <= 1'b0;
    regWData0_q <= 1'b0;
    for (i = 0; i < RegAddrWidth; i = i + 1)
      regAddr_q[i] <= 1'b0;
  end
  else
  begin
    regReq_q <= regReq & ~regAck_q & ~regAck_d;
    regWriteEn_q <= regWriteEn;
    regWData0_q <= regWData[0];
    regAddr_q <= regAddr;
  end
end

// Implement combinatorial logic for controlling register bit state.
always @(regBitStart_q, regBitDone_q, regBitIdle_q, regBitReady_q, goValid_q, 
  regReq_q, regWriteEn_q, regAddr_q, regWData0_q, goHoldoff, doneValid)
begin

  // Hold current state by default.
  regBitStart_d = regBitStart_q;
  regBitDone_d = regBitDone_q;
  regBitIdle_d = regBitIdle_q;
  regBitReady_d = regBitIdle_q & ~goHoldoff;
  goValid_d = goValid_q;        
  
  // Clear the 'done' bit on reads.
  if (regReq_q & ~regWriteEn_q & 
    (regAddr_q == REG_ADDR_CTRL[RegAddrWidth-1:0]))
  begin
      regBitDone_d = 1'b0;
  end     
  
  // Assert the 'start' bit on register write requests.
  if (regReq_q & regWriteEn_q & regWData0_q & 
    (regAddr_q == REG_ADDR_CTRL[RegAddrWidth-1:0]))
  begin   
    regBitStart_d = 1'b1;        
  end  

  // Attempt to initiate the SDAccel kernel operation.
  if (regBitStart_q & regBitReady_q)
  begin   
    if (goValid_q & ~goHoldoff)
    begin
      regBitStart_d = 1'b0;
      regBitIdle_d = 1'b0;
      regBitReady_d = 1'b0;
      goValid_d = 1'b0;
    end
    else
    begin
      goValid_d = 1'b1;     
    end
  end;

  // Detect completion of the SDAccel kernel operation.
  if (~regBitIdle_q & doneValid)
  begin
    regBitDone_d = 1'b1;
    regBitIdle_d = 1'b1;
  end
  
end     

// Implement sequential logic for register bit values.
always @(posedge clk)
begin
  if (srst)
  begin
    regBitStart_q <= 1'b0;
    regBitDone_q <= 1'b0;
    regBitIdle_q <= 1'b1;
    regBitReady_q <= 1'b0;
    goValid_q <= 1'b0;
  end
  else
  begin   
    regBitStart_q <= regBitStart_d;       
    regBitDone_q <= regBitDone_d;
    regBitIdle_q <= regBitIdle_d;
    regBitReady_q <= regBitReady_d;
    goValid_q <= goValid_d;
  end
end

assign goValid = goValid_q;
assign doneStop = regBitIdle_q;

// Implement combinatorial read register.
always @(regReq_q, regAddr_q, regBitIdle_q, regBitDone_q, regBitStart_q,
  regBitReady_q)
begin
  if (regReq_q & 
    (regAddr_q == REG_ADDR_CTRL[RegAddrWidth-1:0]))
  begin
    regAck_d = 1'b1;
    regRData_d = {regBitReady_q, regBitIdle_q, regBitDone_q, regBitStart_q};
  end
  else
  begin
    regAck_d = 1'b0;
    regRData_d = 3'b0;
  end  
end

// Implement sequential read register.
always @(posedge clk)
begin
  if (srst)
  begin
    regAck_q <= 1'b0;
    regRData_q <= 3'b0;
  end
  else
  begin
    regAck_q <= regAck_d;
    regRData_q <= regRData_d;
  end  
end     

assign regAck = regAck_q;
assign regRData = {zeros[31:4], regRData_q};

endmodule
