//
// (c) 2016 ReconfigureIO
//
// <COPYRIGHT TERMS>
//

//
// Implementation of action entity reset handler with Donut reset request
// handshake. Supports a configurable initial reset duty cycle and subsequent 
// sequencing of a configurable number of reset domains.
//

`timescale 1ns/1ps

module actionResetHandler
  (donutRstReq, donutRstDone, domainRst, domainRdy, clk);
  
// Specifies the number of clocks for initial reset duty cycle.
parameter ResetDutyCycle = 15;

// Specifies the number of bits used for the duty cycle counter.
parameter ResetCounterSize = 4;

// Specifies the number of domain reset lines.
parameter ResetDomains = 1;

// Specifies the clock input. There is no system level reset.
input clk;

// Specifies the Donut reset handshake signals.
input  donutRstReq;
output donutRstDone;

// Specifies the reset domain reset and ready vectors. The reset domain 
// connected to the lines at index zero will be released from reset first.
output [ResetDomains-1:0] domainRst;
input  [ResetDomains-1:0] domainRdy;

// Specifies the down counter used for initial duty cycle timing.
reg [ResetCounterSize-1:0] resetCounter_d;
reg [ResetCounterSize-1:0] resetCounter_q;

// Specifies the current reset and domain ready states. Note that the reset
// state is assigned an explicit initialisation value, which will force the
// reset lines active immediately after loading the FPGA netlist. Only works 
// with devices that support bitstream initalisation.
reg [ResetDomains-1:0] resetState_d = {(ResetDomains){1'b1}};
reg [ResetDomains-1:0] resetState_q = {(ResetDomains){1'b1}};
reg [ResetDomains-1:0] readyState_d;
reg [ResetDomains-1:0] readyState_q;

// Specifies the Donut reset done output register.
reg donutResetDone_d;
reg donutResetDone_q;

// Implements a register with an explicit initialisation value, which will have
// the effect of holding the resets active immediately after loading the FPGA
// netlist. Only works with devices that support bitstream initalisation.
reg resetHandlerEnabled_q = 1'b0;

// Miscellaneous signals and variables.
integer i;

// Implement combinatorial logic.
always @(domainRdy, resetCounter_q, resetState_q, readyState_q, donutResetDone_q)
  begin
        
    // Hold current state by default.
    resetCounter_d = resetCounter_q;
    resetState_d = resetState_q;
    readyState_d = readyState_q;
    donutResetDone_d = donutResetDone_q;
        
    // Process reset sequencing after initial reset duty cycle.
    if (resetCounter_q == 0)
    begin
      readyState_d = readyState_q | domainRdy;
      resetState_d[0] = 1'b0;
      donutResetDone_d = readyState_q[0];
      for (i = 1; i < ResetDomains; i = i + 1)
      begin
        resetState_d[i] = ~readyState_q[i-1];
        donutResetDone_d = donutResetDone_d & readyState_q[i];
      end
    end     
    
    // Decrement the reset counter during initial reset duty cycle.
    else
      resetCounter_d = resetCounter_q - 1;
  end  
    
// Implement sequential logic using reset request from Donut to restart the
// reset sequencing.
always @(posedge clk)
  begin
    if (donutRstReq)
    begin
      resetCounter_q <= ResetDutyCycle;
      resetState_q <= {(ResetDomains){1'b1}};;
      readyState_q <= {(ResetDomains){1'b0}};;
      donutResetDone_q <= 1'b0;
      resetHandlerEnabled_q <= 1'b1;
    end
    else if (resetHandlerEnabled_q & ~donutResetDone_q)
    begin
      resetCounter_q <= resetCounter_d;
      resetState_q <= resetState_d;
      readyState_q <= readyState_d;
      donutResetDone_q <= donutResetDone_d;
      resetHandlerEnabled_q <= 1'b1;
    end
  end
  
assign donutRstDone = donutResetDone_q;
assign domainRst = resetState_q;
  
endmodule
