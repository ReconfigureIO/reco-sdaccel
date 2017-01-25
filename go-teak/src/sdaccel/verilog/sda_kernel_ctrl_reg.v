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
  doneValid, doneStop, kernelIntr, clk, srst);
        
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
output         kernelIntr;
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
reg                    regWData1_q;
reg [RegAddrWidth-1:0] regAddr_q;

// Specify the control register bit signals.
reg ctrlBitStart_d;
reg ctrlBitDone_d;
reg ctrlBitIdle_d;
reg ctrlBitReady_d;
reg goValid_d;

reg ctrlBitStart_q;
reg ctrlBitDone_q;
reg ctrlBitIdle_q;
reg ctrlBitReady_q;
reg goValid_q;

// Specify the interrupt enable register bit signals.
reg gieBitEnable_d;
reg ierBitDoneEn_d;
reg ierBitReadyEn_d;

reg gieBitEnable_q;
reg ierBitDoneEn_q;
reg ierBitReadyEn_q;

// Specify the interrupt status register bit signals.
reg isrBitDone_d;
reg isrBitReady_d;

reg isrBitDone_q;
reg isrBitReady_q;

// Specify the read pipeline signals.
reg        regAck_d;
reg [31:0] regRData_d;

reg        regAck_q;
reg [31:0] regRData_q;

// Miscellaneous signals.
wire [31:0] zeros = 32'b0;
integer i;

// Pipeline the register interface input signals.
always @(posedge clk)
begin
  if (srst)
  begin   
    regReq_q <= 1'b0;
    regWriteEn_q <= 1'b0;
    regWData0_q <= 1'b0;
    regWData1_q <= 1'b0;
    for (i = 0; i < RegAddrWidth; i = i + 1)
      regAddr_q[i] <= 1'b0;
  end
  else
  begin
    regReq_q <= regReq & ~regAck_q & ~regAck_d;
    regWriteEn_q <= regWriteEn;
    regWData0_q <= regWData[0];
    regWData1_q <= regWData[1];
    regAddr_q <= regAddr;
  end
end

// Implement combinatorial logic for controlling register bit state.
always @(ctrlBitStart_q, ctrlBitDone_q, ctrlBitIdle_q, ctrlBitReady_q, goValid_q, 
  regReq_q, regWriteEn_q, regAddr_q, regWData0_q, goHoldoff, doneValid)
begin

  // Hold current state by default.
  ctrlBitStart_d = ctrlBitStart_q;
  ctrlBitDone_d = ctrlBitDone_q;
  ctrlBitIdle_d = ctrlBitIdle_q;
  ctrlBitReady_d = ctrlBitIdle_q & ~goHoldoff;
  goValid_d = goValid_q;        
  
  // Clear the 'done' bit on reads.
  if (regReq_q & ~regWriteEn_q & 
    (regAddr_q == REG_ADDR_CTRL[RegAddrWidth-1:0]))
  begin
      ctrlBitDone_d = 1'b0;
  end     
  
  // Assert the 'start' bit on register write requests.
  if (regReq_q & regWriteEn_q & regWData0_q & 
    (regAddr_q == REG_ADDR_CTRL[RegAddrWidth-1:0]))
  begin   
    ctrlBitStart_d = 1'b1;        
  end  

  // Attempt to initiate the SDAccel kernel operation.
  if (ctrlBitStart_q & ctrlBitReady_q)
  begin   
    if (goValid_q & ~goHoldoff)
    begin
      ctrlBitStart_d = 1'b0;
      ctrlBitIdle_d = 1'b0;
      ctrlBitReady_d = 1'b0;
      goValid_d = 1'b0;
    end
    else
    begin
      goValid_d = 1'b1;     
    end
  end;

  // Detect completion of the SDAccel kernel operation.
  if (~ctrlBitIdle_q & doneValid)
  begin
    ctrlBitDone_d = 1'b1;
    ctrlBitIdle_d = 1'b1;
  end
  
end     

// Implement sequential logic for register bit values.
always @(posedge clk)
begin
  if (srst)
  begin
    ctrlBitStart_q <= 1'b0;
    ctrlBitDone_q <= 1'b0;
    ctrlBitIdle_q <= 1'b1;
    ctrlBitReady_q <= 1'b0;
    goValid_q <= 1'b0;
  end
  else
  begin   
    ctrlBitStart_q <= ctrlBitStart_d;       
    ctrlBitDone_q <= ctrlBitDone_d;
    ctrlBitIdle_q <= ctrlBitIdle_d;
    ctrlBitReady_q <= ctrlBitReady_d;
    goValid_q <= goValid_d;
  end
end

assign goValid = goValid_q;
assign doneStop = ctrlBitIdle_q;

// Implement combinatorial logic for interrupt enable registers.
always @(gieBitEnable_q, ierBitDoneEn_q, ierBitReadyEn_q, regReq_q, 
  regWriteEn_q, regAddr_q, regWData0_q, regWData1_q)
begin
        
  // Hold current state by default.
  gieBitEnable_d = gieBitEnable_q;
  ierBitDoneEn_d = ierBitDoneEn_q;
  ierBitReadyEn_d = ierBitReadyEn_q;

  // Set the global interrupt enable register.
  if (regReq_q & regWriteEn_q & 
    (regAddr_q == REG_ADDR_GIE[RegAddrWidth-1:0]))
  begin   
    gieBitEnable_d = regWData0_q;        
  end  

  // Set the IP core interrupt enable register.
  if (regReq_q & regWriteEn_q & 
    (regAddr_q == REG_ADDR_IER[RegAddrWidth-1:0]))
  begin   
    ierBitDoneEn_d = regWData0_q;
    ierBitReadyEn_d = regWData1_q;
  end    
end

// Implement combinatorial logic for interrupt status register. This is a bit 
// unconventional in that it allows the software to set interrupt status bits
// by toggling them. However this matches the Xilinx implementation since it
// may be a requirement for their closed source OpenCL software.
always @(isrBitDone_q, isrBitReady_q, ierBitDoneEn_q, ierBitReadyEn_q,
  regReq_q, regWriteEn_q, regAddr_q, regWData0_q, regWData1_q, ctrlBitDone_q, 
  ctrlBitReady_q)
begin

  // Hold current state by default.
  isrBitDone_d = isrBitDone_q;
  isrBitReady_d = isrBitReady_q;
  
  // Toggle the ISR bits under software control.
  if (regReq_q & regWriteEn_q & 
    (regAddr_q == REG_ADDR_ISR[RegAddrWidth-1:0]))
  begin
    isrBitDone_d = isrBitDone_d ^ regWData0_q;
    isrBitReady_d = isrBitReady_d ^ regWData1_q;
  end

  // Assert the ISR bits on the 'done' and 'ready' signals.
  isrBitDone_d = isrBitDone_d | ctrlBitDone_q;
  isrBitReady_d = isrBitReady_d | ctrlBitReady_q;
  
  // Force ISR bits low if not enabled.
  isrBitDone_d = isrBitDone_d & ierBitDoneEn_q;
  isrBitReady_d = isrBitReady_d & ierBitReadyEn_q;
  
end     

// Implement sequential logic for all interrupt registers.
always @(posedge clk)
begin
  if (srst)
  begin   
    gieBitEnable_q <= 1'b0;
    ierBitDoneEn_q <= 1'b0;
    ierBitReadyEn_q <= 1'b0;
    isrBitDone_q <= 1'b0;
    isrBitReady_q <= 1'b0;
  end
  else
  begin
    gieBitEnable_q <= gieBitEnable_d;
    ierBitDoneEn_q <= ierBitDoneEn_d;
    ierBitReadyEn_q <= ierBitReadyEn_d;
    isrBitDone_q <= isrBitDone_d;
    isrBitReady_q <= isrBitReady_d;
  end  
end     

// Implement combinatorial read register.
always @(regReq_q, regAddr_q, ctrlBitIdle_q, ctrlBitDone_q, ctrlBitStart_q,
  ctrlBitReady_q, gieBitEnable_q, ierBitDoneEn_q, ierBitReadyEn_q,
  isrBitDone_q, isrBitReady_q, zeros)
begin
  if (regReq_q)
  begin  
    regAck_d = 1'b1;  
    if (regAddr_q == REG_ADDR_CTRL[RegAddrWidth-1:0])
      regRData_d = {zeros[31:4], ctrlBitReady_q, 
        ctrlBitIdle_q, ctrlBitDone_q, ctrlBitStart_q};
    else if (regAddr_q == REG_ADDR_GIE[RegAddrWidth-1:0])
      regRData_d = {zeros[31:1], gieBitEnable_q};
    else if (regAddr_q == REG_ADDR_IER[RegAddrWidth-1:0])  
      regRData_d = {zeros[31:2], ierBitReadyEn_q, ierBitDoneEn_q};
    else if (regAddr_q == REG_ADDR_ISR[RegAddrWidth-1:0])  
      regRData_d = {zeros[31:2], isrBitReady_q, isrBitDone_q};
    else
      regRData_d = zeros[31:0];     
  end
  else
  begin
    regAck_d = 1'b0;
    regRData_d = zeros[31:0];
  end  
end

// Implement sequential read register.
always @(posedge clk)
begin
  if (srst)
  begin
    regAck_q <= 1'b0;
    regRData_q <= zeros[31:0];
  end
  else
  begin
    regAck_q <= regAck_d;
    regRData_q <= regRData_d;
  end  
end     

assign regAck = regAck_q;
assign regRData = regRData_q;
assign kernelIntr = gieBitEnable_q & (isrBitDone_q | isrBitReady_q); 

endmodule
