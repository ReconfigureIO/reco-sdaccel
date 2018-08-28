//
// (c) 2018 ReconfigureIO
//
// <COPYRIGHT TERMS>
//

//
// Implements the parameter register block which is provided on the AXI control bus
// for assigning kernel parameters prior to running kernel code.
//
// This is suitable for a small number of function args (<16)

`timescale 1ns/1ps

module sda_kernel_args
  (regReq, regAck, regWriteEn, regAddr, regWData, regWStrb, regRData,
   argData, clk, srst);

// Specifies the width of the register address bus.
parameter RegAddrWidth = 7;

// Specifies the base address of the parameter block.
// The default is to reserve space for 16 32-bit Verilog wrapper registers.
parameter ParamAddrBase = 64;

// Specifies the upper address of the parameter block.
parameter ParamAddrTop = 127;

// Number of 4 byte blocks to allocate
parameter DataWidth = 4;

// Slave side simple register interface signals. Note that all outputs are
// driven low when inactive so that they can be ORed together with other
// register block implementations.
input                     regReq;
output                    regAck;
input                     regWriteEn;
input [RegAddrWidth-1:0]  regAddr;
input [31:0]              regWData;
input [3:0]               regWStrb;
output [31:0]             regRData;
output [DataWidth*32-1:0] argData;

// System level signals.
input clk;
input srst;

// Specify the state space used to implement argument accesses.
parameter [1:0]
  Idle = 0,
  ArgsRead = 1,
  ArgsWrite = 2,
  SendAck = 3;

// Arguments access control signals.
reg [1:0]              argsAccessState_d;
reg [RegAddrWidth-1:0] regAddr_d;
reg [31:0]             regWData_d;
reg [32*DataWidth-1:0] argsArray_d;
reg [31:0]             readData_d;
reg                    regAck_c;

reg [1:0]              argsAccessState_q;
reg [RegAddrWidth-3:0] regAddr_q;
reg [31:0]             regWData_q;
reg [32*DataWidth-1:0] argsArray_q;
reg [31:0]             readData_q;

// Miscellanous signals.
integer i, j;

// Implement combinatorial logic for argument access state machine.
always @(argsAccessState_q, regAddr_q, regWData_q, argsArray_q, regReq,
  regWriteEn, regAddr, regWData)
begin

  // Hold current state by default.
  argsAccessState_d = argsAccessState_q;
  regAddr_d = {regAddr_q, 2'b00};
  regWData_d = regWData_q;
  argsArray_d = argsArray_q;
  readData_d = 32'd0;
  regAck_c = 1'b0;

  // Implement state machine.
  case (argsAccessState_q)

    // Implement writes.
    ArgsWrite :
    begin
      argsAccessState_d = SendAck;
      for (i = 0; i < DataWidth; i = i + 1)
        if (regAddr_q == i [RegAddrWidth-3:0])
          for (j = 0; j < 32; j = j + 1)
            argsArray_d [32*i+j] = regWData_q [j];
    end

    // Initiate reads.
    ArgsRead :
    begin
      argsAccessState_d = SendAck;
      for (i = 0; i < DataWidth; i = i + 1)
        if (regAddr_q == i [RegAddrWidth-3:0])
          for (j = 0; j < 32; j = j + 1)
            readData_d [j] = argsArray_q [32*i+j];
    end

    // Complete transaction.
    SendAck :
    begin
      argsAccessState_d = Idle;
      regAck_c = 1'b1;
    end

    // From the idle state, wait for a transaction request. This checks for
    // addresses within range and subtracts the parameter base address if
    // required. Note that the two least significant address bits will be
    // discarded, forcing 32-bit alignment.
    default :
    begin
      if (regReq && (regAddr >= ParamAddrBase [RegAddrWidth-1:0]) &&
        (regAddr <= ParamAddrTop [RegAddrWidth-1:0]))
      begin
        if (regWriteEn)
          argsAccessState_d = ArgsWrite;
        else
          argsAccessState_d = ArgsRead;
      end
      regAddr_d = regAddr - ParamAddrBase [RegAddrWidth-1:0];
      regWData_d = regWData;
    end
  endcase
end

// Implement resettable registers for state machine control signals.
always @(posedge clk)
begin
  if (srst)
  begin
    argsAccessState_q <= Idle;
    readData_q <= 32'd0;
    for (i = 0; i < DataWidth*32; i = i + 1)
      argsArray_q [i] <= 1'b0;
  end
  else
  begin
    argsAccessState_q <= argsAccessState_d;
    readData_q <= readData_d;
    argsArray_q <= argsArray_d;
  end
end

// Implement non-resettable registers for state machine datapath signals.
always @(posedge clk)
begin
  regAddr_q <= regAddr_d [RegAddrWidth-1:2];
  regWData_q <= regWData_d;
end

assign regAck = regAck_c;
assign regRData = readData_q;
assign argData = argsArray_q;

endmodule
