//
// (c) 2017 ReconfigureIO
//
// <COPYRIGHT TERMS>
//

//
// Implementation of SDAccel kernel reset handler. It provides support for
// managing kernel resets under control of the external 'go' and 'done' control
// signals.
//

`timescale 1ns/1ps

module sda_kernel_reset_handler
  (regGoValid, regGoHoldoff, regDoneValid, regDoneStop, kernelGoValid,
  kernelGoHoldoff, kernelDoneValid, kernelDoneStop, kernelReset, clk, srst);

// Specifies the reset counter size. The kernel reset line will be asserted for
// the time it takes the counter to wrap.
parameter ResetCountSize = 5;

// Derives the reset counter limit.
parameter ResetCountLimit = (1 << ResetCountSize) - 1;

// Specify the reset controller state space.
parameter [2:0]
  ResetIdle = 0,
  ResetTimeout = 1,
  KernelStarting = 2,
  KernelRunning = 3,
  KernelExited = 4;

// Upstream register interface signals.
input  regGoValid;
output regGoHoldoff;
output regDoneValid;
input  regDoneStop;

// Kernel control go output signals.
output kernelGoValid;
input  kernelGoHoldoff;
input  kernelDoneValid;
output kernelDoneStop;
output kernelReset;

// System level signals.
input clk;
input srst;

// Reset control state machine signals.
reg [2:0]                resetState_d;
reg [ResetCountSize-1:0] resetCount_d;
reg                      kernelReset_d;
reg                      regGoHoldoff_d;
reg                      regDoneValid_d;
reg                      kernelGoValid_d;
reg                      kernelDoneStop_d;

reg [2:0]                resetState_q;
reg [ResetCountSize-1:0] resetCount_q;
reg                      kernelReset_q;
reg                      regGoHoldoff_q;
reg                      regDoneValid_q;
reg                      kernelGoValid_q;
reg                      kernelDoneStop_q;

// Miscellaneous signals.
integer i;

// Implement combinatorial logic for reset control state machine.
always @(resetState_q, resetCount_q, kernelReset_q, regDoneValid_q,
  kernelGoValid_q, kernelDoneStop_q, regGoValid, regDoneStop, kernelGoHoldoff,
  kernelDoneValid)
begin

  // Hold current state by default.
  resetState_d = resetState_q;
  resetCount_d = resetCount_q;
  kernelReset_d = kernelReset_q;
  regGoHoldoff_d = 1'b1;
  regDoneValid_d = 1'b0;
  kernelGoValid_d = 1'b0;
  kernelDoneStop_d = 1'b1;

  // Implement state machine.
  case (resetState_q)

    // Hold the reset state for the required timeout.
    ResetTimeout :
    begin
      if (resetCount_q == ResetCountLimit [ResetCountSize-1:0])
      begin
        resetState_d = ResetIdle;
      end
      resetCount_d = resetCount_q + 1;
    end

    // Wait for the kernel to accept the go signal.
    KernelStarting :
    begin
      if (kernelGoValid_q & ~kernelGoHoldoff)
      begin
        resetState_d = KernelRunning;
        regGoHoldoff_d = 1'b0;
      end
      else
      begin
        kernelGoValid_d = 1'b1;
      end
    end

    // In the kernel runnning state, wait for the 'done' response.
    KernelRunning :
    begin
      if (kernelDoneValid & ~kernelDoneStop_q)
      begin
        resetState_d = KernelExited;
      end
      else
      begin
        kernelDoneStop_d = 1'b0;
      end
    end

    // In the kernel exited state, notify the control registers and place the
    // kernel in reset until the next go request is received.
    KernelExited :
    begin
      if (regDoneValid_q & ~regDoneStop)
      begin
        resetState_d = ResetTimeout;
        kernelReset_d = 1'b1;
      end
      else
      begin
        regDoneValid_d = 1'b1;
      end
    end

    // In the reset idle state, wait for a go request from the register block
    // before releasing the kernel reset.
    default :
    begin
      if (regGoValid)
      begin
        resetState_d = KernelStarting;
        kernelReset_d = 1'b0;
      end
    end
  endcase

end

// Implement sequential logic for reset control state machine.
always @(posedge clk)
begin
  if (srst)
  begin
    resetState_q <= ResetTimeout;
    for (i = 0; i < ResetCountSize; i = i + 1)
      resetCount_q [i] <= 1'b0;
    kernelReset_q <= 1'b1;
    regGoHoldoff_q <= 1'b1;
    regDoneValid_q <= 1'b0;
    kernelGoValid_q <= 1'b0;
    kernelDoneStop_q <= 1'b1;
  end
  else
  begin
    resetState_q <= resetState_d;
    resetCount_q <= resetCount_d;
    kernelReset_q <= kernelReset_d;
    regGoHoldoff_q <= regGoHoldoff_d;
    regDoneValid_q <= regDoneValid_d;
    kernelGoValid_q <= kernelGoValid_d;
    kernelDoneStop_q <= kernelDoneStop_d;
  end
end

assign kernelReset = kernelReset_q;
assign regGoHoldoff = regGoHoldoff_q;
assign regDoneValid = regDoneValid_q;
assign kernelGoValid = kernelGoValid_q;
assign kernelDoneStop = kernelDoneStop_q;

endmodule
