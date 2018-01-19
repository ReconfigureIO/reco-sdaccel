//
// (c) 2018 ReconfigureIO
//
// <COPYRIGHT TERMS>
//

//
// Provides the kernel action logic for a single 64-bit wide SMI/AXI test.
//


`include "smiAxiInputBuffer.v"
`include "smiAxiMemBusAdaptor.v"
`include "smiAxiMemReadAdaptor.v"
`include "smiAxiMemWriteAdaptor.v"
`include "smiAxiOutputBuffer.v"
`include "smiByteDataAlign.v"
`include "smiFlitDataPack.v"
`include "smiFlitScaleD2.v"
`include "smiFlitScaleD4.v"
`include "smiFlitScaleD8.v"
`include "smiFlitScaleStageD2.v"
`include "smiFlitScaleStageX2.v"
`include "smiFlitScaleX2.v"
`include "smiFlitScaleX4.v"
`include "smiFlitScaleX8.v"
`include "smiFrameArbiterX2.v"
`include "smiFrameArbiterX4.v"
`include "smiFrameAssembler.v"
`include "smiFrameBuffer.v"
`include "smiFrameSteerX2.v"
`include "smiFrameSteerX4.v"
`include "smiHeaderExtractPf1.v"
`include "smiHeaderExtractPf2.v"
`include "smiHeaderInjectPf1.v"
`include "smiHeaderInjectPf2.v"
`include "smiMemLibFuzzTestBurst64.v"
`include "smiMemLibFuzzTestParamGen.v"
`include "smiMemLibReadBurstCore.v"
`include "smiMemLibReadBurstSegmented64.v"
`include "smiMemLibReadBurstSingle64.v"
`include "smiMemLibReadBurstTestCheck64.v"
`include "smiMemLibWriteBurstCore.v"
`include "smiMemLibWriteBurstSegmented64.v"
`include "smiMemLibWriteBurstSingle64.v"
`include "smiMemLibWriteBurstTestSource64.v"
`include "smiSelfFlowForkControl.v"
`include "smiSelfLinkBufferFifoL.v"
`include "smiSelfLinkBufferFifoS.v"
`include "smiSelfLinkDoubleBuffer.v"
`include "smiSelfLinkToggleBuffer.v"
`include "smiSelfRandSource.v"
`include "smiTransactionArbiterX2.v"
`include "smiTransactionArbiterX4.v"
`include "smiTransactionMatcher.v"
`include "smiTransactionScaledArbiterX2.v"
`include "smiTransactionScaledArbiterX4.v"
`include "smiMemLibWriteWord32.v"
`include "smiMemLibWriteWord64.v"

`timescale 1ns/1ps



// Can be redefined on the synthesis command line.
`define AXI_MASTER_ADDR_WIDTH 64

// Can be redefined on the synthesis command line.
`define AXI_MASTER_DATA_WIDTH 64

// Can be redefined on the synthesis command line.
`define AXI_MASTER_ID_WIDTH 1

// Can be redefined on the synthesis command line.
`define AXI_MASTER_USER_WIDTH 1

// Specify the control register offsets.
`define AXI_CONTROL_OFFSET_MEM_BASE_ADDR_L      32'h40
`define AXI_CONTROL_OFFSET_MEM_BASE_ADDR_H      32'h44
`define AXI_CONTROL_OFFSET_MEM_BLOCK_SIZE       32'h48
`define AXI_CONTROL_OFFSET_TEST_COUNT           32'h4C
`define AXI_CONTROL_OFFSET_ERR_RESULT_ADDR_L    32'h50
`define AXI_CONTROL_OFFSET_ERR_RESULT_ADDR_H    32'h54
`define AXI_CONTROL_OFFSET_DCOUNT_RESULT_ADDR_L 32'h58
`define AXI_CONTROL_OFFSET_DCOUNT_RESULT_ADDR_H 32'h5C

// The module name is common for different kernel action toplevel entities.
module teak__action__top__gmem
  (go_0Ready, go_0Stop, done_0Ready, done_0Stop, s_axi_araddr, s_axi_arcache, s_axi_arprot,
  s_axi_arvalid, s_axi_arready, s_axi_rdata, s_axi_rresp, s_axi_rvalid,
  s_axi_rready, s_axi_awaddr, s_axi_awcache, s_axi_awprot, s_axi_awvalid,
  s_axi_awready, s_axi_wdata, s_axi_wstrb, s_axi_wvalid, s_axi_wready,
  s_axi_bresp, s_axi_bvalid, s_axi_bready, m_axi_gmem_awaddr, m_axi_gmem_awlen,
  m_axi_gmem_awsize, m_axi_gmem_awburst, m_axi_gmem_awlock, m_axi_gmem_awcache,
  m_axi_gmem_awprot, m_axi_gmem_awqos, m_axi_gmem_awregion, m_axi_gmem_awuser,
  m_axi_gmem_awid, m_axi_gmem_awvalid, m_axi_gmem_awready, m_axi_gmem_wdata,
  m_axi_gmem_wstrb, m_axi_gmem_wlast, m_axi_gmem_wuser,
  m_axi_gmem_wvalid, m_axi_gmem_wready, m_axi_gmem_bresp, m_axi_gmem_buser,
  m_axi_gmem_bid, m_axi_gmem_bvalid, m_axi_gmem_bready, m_axi_gmem_araddr,
  m_axi_gmem_arlen, m_axi_gmem_arsize, m_axi_gmem_arburst, m_axi_gmem_arlock,
  m_axi_gmem_arcache, m_axi_gmem_arprot, m_axi_gmem_arqos, m_axi_gmem_arregion,
  m_axi_gmem_aruser, m_axi_gmem_arid, m_axi_gmem_arvalid, m_axi_gmem_arready,
  m_axi_gmem_rdata, m_axi_gmem_rresp, m_axi_gmem_rlast, m_axi_gmem_ruser,
  m_axi_gmem_rid, m_axi_gmem_rvalid, m_axi_gmem_rready, paramaddr_0Ready,
  paramaddr_0Data, paramaddr_0Stop, paramdata_0Ready, paramdata_0Data, paramdata_0Stop,
  clk, reset);

// Action control signals.
input  go_0Ready;
output go_0Stop;
output done_0Ready;
input  done_0Stop;

// Parameter data access signals. Provides a SELF channel output for address
// values and a SELF channel input for the corresponding data items read from
// the parameter register file.
output        paramaddr_0Ready;
output [31:0] paramaddr_0Data;
input         paramaddr_0Stop;

input         paramdata_0Ready;
input [31:0]  paramdata_0Data;
output        paramdata_0Stop;

// Specifies the AXI slave bus signals.
input [31:0]  s_axi_araddr;
input [3:0]   s_axi_arcache;
input [2:0]   s_axi_arprot;
input         s_axi_arvalid;
output        s_axi_arready;
output [31:0] s_axi_rdata;
output [1:0]  s_axi_rresp;
output        s_axi_rvalid;
input         s_axi_rready;
input [31:0]  s_axi_awaddr;
input [3:0]   s_axi_awcache;
input [2:0]   s_axi_awprot;
input         s_axi_awvalid;
output        s_axi_awready;
input [31:0]  s_axi_wdata;
input [3:0]   s_axi_wstrb;
input         s_axi_wvalid;
output        s_axi_wready;
output [1:0]  s_axi_bresp;
output        s_axi_bvalid;
input         s_axi_bready;

// Specifies the AXI master write address signals.
output [`AXI_MASTER_ADDR_WIDTH-1:0] m_axi_gmem_awaddr;
output [7:0]                        m_axi_gmem_awlen;
output [2:0]                        m_axi_gmem_awsize;
output [1:0]                        m_axi_gmem_awburst;
output                              m_axi_gmem_awlock;
output [3:0]                        m_axi_gmem_awcache;
output [2:0]                        m_axi_gmem_awprot;
output [3:0]                        m_axi_gmem_awqos;
output [3:0]                        m_axi_gmem_awregion;
output [`AXI_MASTER_USER_WIDTH-1:0] m_axi_gmem_awuser;
output [`AXI_MASTER_ID_WIDTH-1:0]   m_axi_gmem_awid;
output                              m_axi_gmem_awvalid;
input                               m_axi_gmem_awready;

// Specifies the AXI master write data signals.
output [`AXI_MASTER_DATA_WIDTH-1:0]   m_axi_gmem_wdata;
output [`AXI_MASTER_DATA_WIDTH/8-1:0] m_axi_gmem_wstrb;
output                                m_axi_gmem_wlast;
output [`AXI_MASTER_USER_WIDTH-1:0]   m_axi_gmem_wuser;
output                                m_axi_gmem_wvalid;
input                                 m_axi_gmem_wready;

// Specifies the AXI master write response signals.
input [1:0]                        m_axi_gmem_bresp;
input [`AXI_MASTER_USER_WIDTH-1:0] m_axi_gmem_buser;
input [`AXI_MASTER_ID_WIDTH-1:0]   m_axi_gmem_bid;
input                              m_axi_gmem_bvalid;
output                             m_axi_gmem_bready;

// Specifies the AXI master read address signals.
output [`AXI_MASTER_ADDR_WIDTH-1:0] m_axi_gmem_araddr;
output [7:0]                        m_axi_gmem_arlen;
output [2:0]                        m_axi_gmem_arsize;
output [1:0]                        m_axi_gmem_arburst;
output                              m_axi_gmem_arlock;
output [3:0]                        m_axi_gmem_arcache;
output [2:0]                        m_axi_gmem_arprot;
output [3:0]                        m_axi_gmem_arqos;
output [3:0]                        m_axi_gmem_arregion;
output [`AXI_MASTER_USER_WIDTH-1:0] m_axi_gmem_aruser;
output [`AXI_MASTER_ID_WIDTH-1:0]   m_axi_gmem_arid;
output                              m_axi_gmem_arvalid;
input                               m_axi_gmem_arready;

// Specifies the AXI master read data signals.
input [`AXI_MASTER_DATA_WIDTH-1:0] m_axi_gmem_rdata;
input [1:0]                        m_axi_gmem_rresp;
input                              m_axi_gmem_rlast;
input [`AXI_MASTER_USER_WIDTH-1:0] m_axi_gmem_ruser;
input [`AXI_MASTER_ID_WIDTH-1:0]   m_axi_gmem_rid;
input                              m_axi_gmem_rvalid;
output                             m_axi_gmem_rready;

// System level signals.
input clk;
input reset;

// Specify state space for test runner state machine.
parameter [4:0]
  TestStateReset = 0,
  TestStateIdle = 1,
  TestStateGetParam1l = 2,
  TestStateGetParam1h = 3,
  TestStateGetParam2 = 4,
  TestStateGetParam3 = 5,
  TestStateGetParam4l = 6,
  TestStateGetParam4h = 7,
  TestStateGetParam5l = 8,
  TestStateGetParam5h = 9,
  TestStateSetConfig = 10,
  TestStateGetStatus = 11,
  TestStateWriteErrCountReq = 12,
  TestStateWriteErrCountDone = 13,
  TestStateWriteDataCountReq = 14,
  TestStateWriteDataCountDone = 15,
  TestStateReportResult = 16;

// Parameter request state machine signals.
reg [3:0] paramReqCount_d;
reg [3:0] paramReqCount_q;

// Action execution state machine signals.
reg [4:0]  testState_d;
reg [63:0] memBaseAddr_d;
reg [31:0] memBlockLength_d;
reg [31:0] fuzzTestCount_d;
reg [63:0] errResultAddr_d;
reg [63:0] dcountResultAddr_d;
reg [31:0] errorCount_d;
reg [63:0] dataCount_d;

reg [4:0]  testState_q;
reg [63:0] memBaseAddr_q;
reg [31:0] memBlockLength_q;
reg [31:0] fuzzTestCount_q;
reg [63:0] errResultAddr_q;
reg [63:0] dcountResultAddr_q;
reg [31:0] errorCount_q;
reg [63:0] dataCount_q;

reg        paramReq;
reg        goHalt;
reg        doneReady;
reg        paramAddrReady;
reg [31:0] paramAddrData;
reg        paramReadHalt;

// Specifies internal SMI memory bus signals.
wire        smiStatReqReady;
wire [7:0]  smiStatReqEofc;
wire [63:0] smiStatReqData;
wire        smiStatReqStop;
wire        smiStatRespReady;
wire [7:0]  smiStatRespEofc;
wire [63:0] smiStatRespData;
wire        smiStatRespStop;

wire        smiTestReqReady;
wire [7:0]  smiTestReqEofc;
wire [63:0] smiTestReqData;
wire        smiTestReqStop;
wire        smiTestRespReady;
wire [7:0]  smiTestRespEofc;
wire [63:0] smiTestRespData;
wire        smiTestRespStop;

wire        smiReqReady;
wire [7:0]  smiReqEofc;
wire [63:0] smiReqData;
wire        smiReqStop;
wire        smiRespReady;
wire [7:0]  smiRespEofc;
wire [63:0] smiRespData;
wire        smiRespStop;

// Specifies fuzz tester configuration and status signals.
reg  configValid;
wire configStop;

reg        statusWriteValid;
reg [63:0] statusWriteData;
reg [63:0] statusWriteAddr;
wire       statusWriteStop;
wire       statusWriteDoneValid;
wire       statusWriteDoneStatusOk;
reg        statusWriteDoneStop;

wire        statusValid;
wire [31:0] statusErrorCount;
wire [63:0] statusDataCount;
reg         statusStop;

// AXI slave loopback signals. Initialised to zero to avoid locking the slave
// AXI bus on reset.
reg s_axi_read_ready_q = 1'b0;
reg s_axi_read_complete_q = 1'b0;
reg s_axi_write_ready_q = 1'b0;
reg s_axi_write_complete_q = 1'b0;

// Implement combinatorial logic for parameter request state machine.
always @(paramReqCount_q, paramReq, paramaddr_0Stop)
begin

  // Hold current state by default.
  paramReqCount_d = paramReqCount_q;
  paramAddrReady = 1'b0;
  paramAddrData = 32'd0;

  // From the idle state, wait for parameter request to be initiated.
  if (paramReqCount_q == 4'd0)
  begin
    if (paramReq)
      paramReqCount_d = 4'd1;
  end

  // Issue parameter requests.
  else if (paramReqCount_q <= 4'd8)
  begin
    paramAddrReady = 1'b1;
    case (paramReqCount_q)
      4'd1 : paramAddrData = `AXI_CONTROL_OFFSET_MEM_BASE_ADDR_L;
      4'd2 : paramAddrData = `AXI_CONTROL_OFFSET_MEM_BASE_ADDR_H;
      4'd3 : paramAddrData = `AXI_CONTROL_OFFSET_MEM_BLOCK_SIZE;
      4'd4 : paramAddrData = `AXI_CONTROL_OFFSET_TEST_COUNT;
      4'd5 : paramAddrData = `AXI_CONTROL_OFFSET_ERR_RESULT_ADDR_L;
      4'd6 : paramAddrData = `AXI_CONTROL_OFFSET_ERR_RESULT_ADDR_H;
      4'd7 : paramAddrData = `AXI_CONTROL_OFFSET_DCOUNT_RESULT_ADDR_L;
      4'd8 : paramAddrData = `AXI_CONTROL_OFFSET_DCOUNT_RESULT_ADDR_H;
    endcase
    if (~paramaddr_0Stop)
      paramReqCount_d = paramReqCount_q + 4'd1;
  end

  // Revert to idle state.
  else
  begin
    paramReqCount_d = 4'd0;
  end

end

// Implement combinatorial logic for action execution state machine.
always @(testState_q, memBaseAddr_q, memBlockLength_q, fuzzTestCount_q,
  errResultAddr_q, dcountResultAddr_q, errorCount_q, dataCount_q, go_0Ready,
  done_0Stop, paramdata_0Ready, paramdata_0Data, configStop, statusValid,
  statusErrorCount, statusDataCount, statusWriteStop, statusWriteDoneValid)
begin

  // Hold current state by default.
  testState_d = testState_q;
  memBaseAddr_d = memBaseAddr_q;
  memBlockLength_d = memBlockLength_q;
  fuzzTestCount_d = fuzzTestCount_q;
  errResultAddr_d = errResultAddr_q;
  dcountResultAddr_d = dcountResultAddr_q;
  errorCount_d = errorCount_q;
  dataCount_d = dataCount_q;

  goHalt = 1'b1;
  doneReady = 1'b0;
  paramReq = 1'b0;
  paramReadHalt = 1'b1;
  configValid = 1'b0;
  statusWriteValid = 1'b0;
  statusWriteData = 64'd0;
  statusWriteAddr = 64'd0;
  statusWriteDoneStop = 1'b1;
  statusStop = 1'b1;

  // Implement state machine.
  case (testState_q)

    // In the idle state, wait for the 'go' request.
    TestStateIdle :
    begin
      goHalt = 1'b0;
      if (go_0Ready)
      begin
        testState_d = TestStateGetParam1l;
        errorCount_d = 32'd0;
        paramReq = 1'b1;
      end
    end

    // Get parameter 1 (64-bit test memory block base address).
    TestStateGetParam1l :
    begin
      paramReadHalt = 1'b0;
      memBaseAddr_d [31:0] = paramdata_0Data;
      if (paramdata_0Ready)
        testState_d = TestStateGetParam1h;
    end

    TestStateGetParam1h :
    begin
      paramReadHalt = 1'b0;
      memBaseAddr_d [63:32] = paramdata_0Data;
      if (paramdata_0Ready)
        testState_d = TestStateGetParam2;
    end

    // Get parameter 2 (32-bit test memory block length).
    TestStateGetParam2 :
    begin
      paramReadHalt = 1'b0;
      memBlockLength_d = paramdata_0Data;
      if (paramdata_0Ready)
        testState_d = TestStateGetParam3;
    end

    // Get parameter 3 (32-bit test count).
    TestStateGetParam3 :
    begin
      paramReadHalt = 1'b0;
      fuzzTestCount_d = paramdata_0Data;
      if (paramdata_0Ready)
        testState_d = TestStateGetParam4l;
    end

    // Get parameter 4 (64-bit error count result base address).
    TestStateGetParam4l :
    begin
      paramReadHalt = 1'b0;
      errResultAddr_d [31:0] = paramdata_0Data;
      if (paramdata_0Ready)
        testState_d = TestStateGetParam4h;
    end

    TestStateGetParam4h :
    begin
      paramReadHalt = 1'b0;
      errResultAddr_d [63:32] = paramdata_0Data;
      if (paramdata_0Ready)
        testState_d = TestStateGetParam5l;
    end

    // Get parameter 5 (64-bit data count result base address).
    TestStateGetParam5l :
    begin
      paramReadHalt = 1'b0;
      dcountResultAddr_d [31:0] = paramdata_0Data;
      if (paramdata_0Ready)
        testState_d = TestStateGetParam5h;
    end

    TestStateGetParam5h :
    begin
      paramReadHalt = 1'b0;
      dcountResultAddr_d [63:32] = paramdata_0Data;
      if (paramdata_0Ready)
        testState_d = TestStateSetConfig;
    end

    // Set the configuration parameters, initiating the fuzz testing.
    TestStateSetConfig :
    begin
      configValid = 1'b1;
      if (~configStop)
        testState_d = TestStateGetStatus;
    end

    // Get the fuzz testing status value.
    TestStateGetStatus :
    begin
      statusStop = 1'b0;
      errorCount_d = statusErrorCount;
      dataCount_d = statusDataCount;
      if (statusValid)
        testState_d = TestStateWriteErrCountReq;
    end

    // Write the status error count value to the return location in shared memory.
    TestStateWriteErrCountReq :
    begin
      statusWriteValid = 1'b1;
      statusWriteAddr = errResultAddr_q;
      statusWriteData = { 32'd0, errorCount_q };
      if (~statusWriteStop)
        testState_d = TestStateWriteErrCountDone;
    end

    TestStateWriteErrCountDone :
    begin
      statusWriteDoneStop = 1'b0;
      if (statusWriteDoneValid)
        testState_d = TestStateWriteDataCountReq;
    end

    // Write the status data count value to the return location in shared memory.
    TestStateWriteDataCountReq :
    begin
      statusWriteValid = 1'b1;
      statusWriteAddr = dcountResultAddr_q;
      statusWriteData = dataCount_q;
      if (~statusWriteStop)
        testState_d = TestStateWriteDataCountDone;
    end

    TestStateWriteDataCountDone :
    begin
      statusWriteDoneStop = 1'b0;
      if (statusWriteDoneValid)
        testState_d = TestStateReportResult;
    end

    // Indicate completion to the SDAccel framework.
    TestStateReportResult :
    begin
      doneReady = 1'b1;
      if (~done_0Stop)
        testState_d = TestStateIdle;
    end

    // From the reset state, transition to the idle state.
    default :
    begin
      testState_d = TestStateIdle;
    end
  endcase

end

// Implement resettable state registers for test control state machine.
always @(posedge clk)
begin
  if (reset)
  begin
    testState_q <= TestStateReset;
    paramReqCount_q <= 4'd0;
  end
  else
  begin
    testState_q <= testState_d;
    paramReqCount_q <= paramReqCount_d;
  end
end

// Implement non-resettable data registers for test control state machine.
always @(posedge clk)
begin
  memBaseAddr_q <= memBaseAddr_d;
  memBlockLength_q <= memBlockLength_d;
  fuzzTestCount_q <= fuzzTestCount_d;
  errResultAddr_q <= errResultAddr_d;
  dcountResultAddr_q <= dcountResultAddr_d;
  errorCount_q <= errorCount_d;
  dataCount_q <= dataCount_d;
end

// Connect external handshake signals.
assign go_0Stop = goHalt;
assign done_0Ready = doneReady;

assign paramaddr_0Ready = paramAddrReady;
assign paramaddr_0Data = paramAddrData;
assign paramdata_0Stop = paramReadHalt;

// Implement AXI read control loopback.
always @(posedge clk)
begin
  if (s_axi_read_complete_q)
  begin
    s_axi_read_complete_q <= ~s_axi_rready;
  end
  else if (s_axi_read_ready_q)
  begin
    s_axi_read_ready_q <= 1'b0;
    s_axi_read_complete_q <= 1'b1;
  end
  else
  begin
    s_axi_read_ready_q <= s_axi_arvalid;
  end
end

assign s_axi_arready = s_axi_read_ready_q;
assign s_axi_rdata = errorCount_q;
assign s_axi_rresp = 2'b0;
assign s_axi_rvalid = s_axi_read_complete_q;

// Implement AXI write control loopback.
always @(posedge clk)
begin
  if (s_axi_write_complete_q)
  begin
    s_axi_write_complete_q <= ~s_axi_bready;
  end
  else if (s_axi_write_ready_q)
  begin
    s_axi_write_ready_q <= 1'b0;
    s_axi_write_complete_q <= 1'b1;
  end
  else
  begin
    s_axi_write_ready_q <= s_axi_awvalid & s_axi_wvalid;
  end
end

assign s_axi_awready = s_axi_write_ready_q;
assign s_axi_wready = s_axi_write_ready_q;
assign s_axi_bresp = 2'b0;
assign s_axi_bvalid = s_axi_write_complete_q;

// Instantiate the SMI memory fuzz test module.
smiMemLibFuzzTestBurst64 smiMemLibFuzzTestBurst64
  (configValid, memBaseAddr_q, memBlockLength_q, fuzzTestCount_q, configStop,
  statusValid, statusErrorCount, statusDataCount, statusStop, smiTestReqReady,
  smiTestReqEofc, smiTestReqData, smiTestReqStop, smiTestRespReady,
  smiTestRespEofc, smiTestRespData, smiTestRespStop, clk, reset);

// Instantiate the status memory write module.
smiMemLibWriteWord64 statusWriter
  (statusWriteValid, statusWriteAddr, 8'h01, statusWriteData, statusWriteStop,
  statusWriteDoneValid, statusWriteDoneStatusOk, statusWriteDoneStop,
  smiStatReqReady, smiStatReqEofc, smiStatReqData, smiStatReqStop,
  smiStatRespReady, smiStatRespEofc, smiStatRespData, smiStatRespStop,
  clk, reset);

// Instantiate two-way SMI transaction arbiter.
smiTransactionArbiterX2 #(8, 2, 64, 4) transactionArbiter
  (smiTestReqReady, smiTestReqEofc, smiTestReqData, smiTestReqStop,
  smiTestRespReady, smiTestRespEofc, smiTestRespData, smiTestRespStop,
  smiStatReqReady, smiStatReqEofc, smiStatReqData, smiStatReqStop,
  smiStatRespReady, smiStatRespEofc, smiStatRespData, smiStatRespStop,
  smiReqReady, smiReqEofc, smiReqData, smiReqStop, smiRespReady, smiRespEofc,
  smiRespData, smiRespStop, clk, reset);

// Instantiate the SMI/AXI bus adapter.
smiAxiMemBusAdaptor #(3, `AXI_MASTER_ID_WIDTH) smiAxiMemBusAdaptor
  (smiReqReady, smiReqEofc, smiReqData, smiReqStop, smiRespReady, smiRespEofc,
  smiRespData, smiRespStop, m_axi_gmem_arvalid, m_axi_gmem_arready,
  m_axi_gmem_arid, m_axi_gmem_araddr, m_axi_gmem_arlen, m_axi_gmem_arsize,
  m_axi_gmem_arcache, m_axi_gmem_rvalid, m_axi_gmem_rready, m_axi_gmem_rid,
  m_axi_gmem_rdata, m_axi_gmem_rresp, m_axi_gmem_rlast, m_axi_gmem_awvalid,
  m_axi_gmem_awready, m_axi_gmem_awid, m_axi_gmem_awaddr, m_axi_gmem_awlen,
  m_axi_gmem_awsize, m_axi_gmem_awcache, m_axi_gmem_wvalid, m_axi_gmem_wready,
  m_axi_gmem_wdata, m_axi_gmem_wstrb, m_axi_gmem_wlast, m_axi_gmem_bvalid,
  m_axi_gmem_bready, m_axi_gmem_bid, m_axi_gmem_bresp, reset, clk, reset);

// Tie off unused AXI memory access signals.
assign m_axi_gmem_awburst = 2'b1;
assign m_axi_gmem_awlock = 1'b0;
assign m_axi_gmem_awprot = 3'b0;
assign m_axi_gmem_awqos = 4'b0;
assign m_axi_gmem_awregion = 4'b0;
assign m_axi_gmem_awuser = `AXI_MASTER_USER_WIDTH'b0;
assign m_axi_gmem_wuser = `AXI_MASTER_USER_WIDTH'b0;

assign m_axi_gmem_arburst = 2'b1;
assign m_axi_gmem_arlock = 1'b0;
assign m_axi_gmem_arprot = 3'b0;
assign m_axi_gmem_arqos = 4'b0;
assign m_axi_gmem_arregion = 4'b0;
assign m_axi_gmem_aruser = `AXI_MASTER_USER_WIDTH'b0;

endmodule

`timescale 1ns/1ps

module sda_kernel_ctrl_param
  (regReq, regAck, regWriteEn, regAddr, regWData, regWStrb, regRData,
  paramAddrValid, paramAddr, paramAddrStop, paramDataValid, paramData,
  paramDataStop, clk, srst);

// Specifies the width of the register address bus.
parameter RegAddrWidth = 12;

// Specifies the base address of the parameter block.
// The default is to reserve space for 16 32-bit Verilog wrapper registers.
parameter ParamAddrBase = 64;

// Specifies the upper address of the parameter block.
parameter ParamAddrTop = 4095;

// Slave side simple register interface signals. Note that all outputs are
// driven low when inactive so that they can be ORed together with other
// register block implementations.
input                    regReq;
output                   regAck;
input                    regWriteEn;
input [RegAddrWidth-1:0] regAddr;
input [31:0]             regWData;
input [3:0]              regWStrb;
output [31:0]            regRData;

// Kernel interface parameter access signals.
input         paramAddrValid;
input [31:0]  paramAddr;
output        paramAddrStop;
output        paramDataValid;
output [31:0] paramData;
input         paramDataStop;

// System level signals.
input clk;
input srst;

// Inferred RAM.
reg [31:0] ramArray [(ParamAddrTop-ParamAddrBase+1)/4-1:0];

// Pipelined register interface input inputs.
reg                    regReq_q;
reg                    regReadReq_q;
reg                    regWriteReq_q;
reg [31:0]             regWData_q;
reg [3:0]              regWStrb_q;
reg [RegAddrWidth-3:0] regAddr_q;

// Pipelined register interface output inputs.
reg                    regAck_q;
reg                    regReadDone_q;
reg                    regReadValid_q;
reg [31:0]             regRData_q;
reg [31:0]             regReadData_q;
reg [31:0]             regPipeData_q;

// Pipelined parameter RAM access signals.
reg        paramAddrValid_q;
reg [31:0] paramAddr_q;
reg        paramDataValid_q;
reg [31:0] paramData_q;

// Parameter RAM access backpressure signals.
wire        pmAddrStop;
wire        pmReadStop;
wire        pmPipeStop;

// Parameter RAM access pipeline.
reg [RegAddrWidth-3:0] pmAddr_q;
reg [1:0]              pmAddrAlign_q;
reg                    pmAddrValid_q;
reg [31:0]             pmReadData_q;
reg [1:0]              pmReadAlign_q;
reg                    pmReadValid_q;
reg [31:0]             pmPipeData_q;
reg [1:0]              pmPipeAlign_q;
reg                    pmPipeValid_q;
reg [31:0]             pmDataAligned;

// Miscellaneous signals.
wire [RegAddrWidth-1:0] regParamAddrBase = ParamAddrBase [RegAddrWidth-1:0];
wire [RegAddrWidth-1:0] regParamAddrTop = ParamAddrTop [RegAddrWidth-1:0];
integer i;

// Implement pipelined register input signals. Assumes that there are no back
// to back transactions, so we can use rising edge detection on the request line.
// verilator lint_off CMPCONST
always @(posedge clk)
begin
  if (srst)
  begin
    regReq_q <= 1'b0;
    regReadReq_q <= 1'b0;
    regWriteReq_q <= 1'b0;
    regWData_q <= 32'b0;
    regWStrb_q <= 4'b0;
    for (i = 0; i < RegAddrWidth-2; i = i + 1)
      regAddr_q[i] <= 1'b0;
  end
  else
  begin
    regReq_q <= regReq;
    regWData_q <= regWData;
    regWStrb_q <= regWStrb;
    if ((regAddr < regParamAddrBase) || (regAddr > regParamAddrTop))
    begin
      regReadReq_q <= 1'b0;
      regWriteReq_q <= 1'b0;
      for (i = 0; i < RegAddrWidth-2; i = i + 1)
        regAddr_q[i] <= 1'b0;
    end
    else
    begin
      regReadReq_q <= regReq & ~regReq_q & ~regWriteEn;
      regWriteReq_q <= regReq & ~regReq_q & regWriteEn;
      regAddr_q <= regAddr[RegAddrWidth-1:2] - (ParamAddrBase/4);
    end
  end
end
// verilator lint_on CMPCONST

// Implement pipelined register output signals.
always @(posedge clk)
begin
  if (srst)
  begin
    regAck_q <= 1'b0;
    regReadDone_q <= 1'b0;
    regReadValid_q <= 1'b0;
    regRData_q <= 32'b0;
  end
  else
  begin
    regAck_q <= regReadValid_q | regWriteReq_q;
    regReadDone_q <= regReadReq_q;
    regReadValid_q <= regReadDone_q;
    regRData_q <= regReadValid_q ? regPipeData_q : 32'b0;
  end
end

assign regAck = regAck_q;
assign regRData = regRData_q;

// Implement pipelined parameter address inputs.
always @(posedge clk)
begin
  if (srst)
  begin
    paramAddrValid_q <= 1'b0;
    paramAddr_q <= 32'b0;
  end
  else if (paramAddrValid_q)
  begin
    paramAddrValid_q <= pmAddrStop;
  end
  else
  begin
    paramAddrValid_q <= paramAddrValid;
    paramAddr_q <= paramAddr;
  end
end

assign paramAddrStop = paramAddrValid_q;

// Implement the parameter data RAM access backpressure signals.
assign pmAddrStop = pmReadStop & pmAddrValid_q;
assign pmReadStop = pmPipeStop & pmReadValid_q;
assign pmPipeStop = paramDataValid_q & pmPipeValid_q;

// Implement parameter access input pipeline.
always @(posedge clk)
begin
  if (srst)
  begin
    for (i = 0; i < RegAddrWidth-2; i = i + 1)
      pmAddr_q[i] <= 1'b0;
    pmAddrValid_q <= 1'b0;
    pmReadValid_q <= 1'b0;
    pmPipeValid_q <= 1'b0;
  end
  else
  begin
    if (~pmAddrStop)
    begin
      pmAddrValid_q <= paramAddrValid_q;
      if ((paramAddr_q < ParamAddrBase) || (paramAddr_q > ParamAddrTop))
      begin
        for (i = 0; i < RegAddrWidth-2; i = i + 1)
          pmAddr_q[i] <= 1'b0;
        pmAddrAlign_q <= 2'b0;
      end
      else
      begin
        pmAddr_q <= paramAddr_q[RegAddrWidth-1:2] - (ParamAddrBase/4);
        pmAddrAlign_q <= paramAddr_q[1:0];
      end
    end
    if (~pmReadStop)
    begin
      pmReadValid_q <= pmAddrValid_q;
      pmReadAlign_q <= pmAddrAlign_q;
    end
    if (~pmPipeStop)
    begin
      pmPipeValid_q <= pmReadValid_q;
      pmPipeAlign_q <= pmReadAlign_q;
    end
  end
end

// Perform data alignment on read data. Uses the least significant bits of the
// parameter address to rotate the addressed byte into the LSB position. When
// combined with a suitable type cast in the kernel code, this allows byte and
// half word parameter values to be addressed on byte and half word boundaries.
always @(pmPipeAlign_q, pmPipeData_q)
begin
  case (pmPipeAlign_q)
    2'b11 : pmDataAligned = {pmPipeData_q [23:0], pmPipeData_q [31:24]};
    2'b10 : pmDataAligned = {pmPipeData_q [15:0], pmPipeData_q [31:16]};
    2'b01 : pmDataAligned = {pmPipeData_q [7:0], pmPipeData_q [31:8]};
    default: pmDataAligned = pmPipeData_q;
  endcase
end

// Provide output pipeline register for read data.
always @(posedge clk)
begin
  if (srst)
  begin
    paramDataValid_q <= 1'b0;
    paramData_q <= 32'b0;
  end
  else if (paramDataValid_q)
  begin
    paramDataValid_q <= paramDataStop;
  end
  else
  begin
    paramDataValid_q <= pmPipeValid_q;
    paramData_q <= pmDataAligned;
  end
end

assign paramDataValid = paramDataValid_q;
assign paramData = paramData_q;

// Implement parameter RAM.
always @(posedge clk)
begin

  // SELF parameter pipeline is gated for backpressure.
  if (~pmReadStop)
  begin
    pmReadData_q <= ramArray [pmAddr_q];
  end

  // Register read pipeline is a single cycle delay.
  regReadData_q <= ramArray [regAddr_q];

  // Apply write enable strobes.
  if (regWriteReq_q)
  begin
    if (regWStrb_q[0])
      ramArray [regAddr_q][7:0] <= regWData_q [7:0];
    if (regWStrb_q[1])
      ramArray [regAddr_q][15:8] <= regWData_q [15:8];
    if (regWStrb_q[2])
      ramArray [regAddr_q][23:16] <= regWData_q [23:16];
    if (regWStrb_q[3])
      ramArray [regAddr_q][31:24] <= regWData_q [31:24];
  end
end

// Pipeline read data for improved timing.
always @(posedge clk)
begin

  // SELF parameter pipeline is gated for backpressure.
  if (~pmPipeStop)
  begin
    pmPipeData_q <= pmReadData_q;
  end

  // Register read pipeline is a single cycle delay.
  regPipeData_q <= regReadData_q;

end

endmodule

//
// (c) 2017 ReconfigureIO
//
// <COPYRIGHT TERMS>
//

//
// Implementation of SDAccel kernel entity control registers. This is a set of
// four registers which are located at address offset 0 in the SDAccel kernel
// control register space.
//
// The control unit uses the standard register layout for the SDAccel control
// register. For the basic control register this is as follows:
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
  (regReq, regAck, regWriteEn, regAddr, regWData, regWStrb, regRData, goValid,
  goHoldoff, doneValid, doneStop, kernelIntr, clk, srst);

// Specifies the width of the register address bus.
parameter RegAddrWidth = 8;

// Specifies the upper address of the reserved address block.
// The default is to reserve space for 16 32-bit Verilog wrapper registers.
parameter RegAddrTop = 63;

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
input [3:0]              regWStrb;
output [31:0]            regRData;
// verilator lint_on UNUSED

// Specify action go SELF control handshake signals.
output goValid;
input  goHoldoff;

// Specify action done SELF control handshake signals.
input  doneValid;
output doneStop;

// System level signals.
output kernelIntr;
input  clk;
input  srst;

// Specify the register layout using byte offsets. Note that valid accesses
// must be aligned to 32-bit word boundaries.
parameter [31:0]
  REG_ADDR_CTRL = 'h00,
  REG_ADDR_GIE = 'h04,
  REG_ADDR_IER = 'h08,
  REG_ADDR_ISR = 'h0C;

// Pipeline the register interface input signals.
reg                    regReq_q;
reg                    regReadReq_q;
reg                    regWriteReq_q;
reg                    regWData0_q;
reg                    regWData1_q;
reg                    regWStrb0_q;
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
wire [RegAddrWidth-1:0] regAddrTop = RegAddrTop [RegAddrWidth-1:0];
integer i;

// Implement pipeined register read interface signals. Assumes that there are
// no back to back transactions, so we can use rising edge detection on the
// request line.
always @(posedge clk)
begin
  if (srst)
  begin
    regReq_q <= 1'b0;
    regReadReq_q <= 1'b0;
    regWriteReq_q <= 1'b0;
    regWData0_q <= 1'b0;
    regWData1_q <= 1'b0;
    regWStrb0_q <= 1'b0;
    for (i = 0; i < RegAddrWidth; i = i + 1)
      regAddr_q[i] <= 1'b0;
  end
  else
  begin
    regReq_q <= regReq;
    regReadReq_q <= regReq & ~regReq_q & ~regWriteEn;
    regWriteReq_q <= regReq & ~regReq_q & regWriteEn;
    regWData0_q <= regWData[0];
    regWData1_q <= regWData[1];
    regWStrb0_q <= regWStrb[0];
    regAddr_q <= regAddr;
  end
end

// Implement combinatorial logic for controlling register bit state.
always @(ctrlBitStart_q, ctrlBitDone_q, ctrlBitIdle_q, ctrlBitReady_q,
  goValid_q, regReadReq_q, regWriteReq_q, regAddr_q, regWData0_q, regWStrb0_q,
  goHoldoff, doneValid)
begin

  // Hold current state by default.
  ctrlBitStart_d = ctrlBitStart_q;
  ctrlBitDone_d = ctrlBitDone_q;
  ctrlBitIdle_d = ctrlBitIdle_q;
  ctrlBitReady_d = ctrlBitIdle_q & ~goHoldoff;
  goValid_d = goValid_q;

  // Clear the 'done' bit on reads.
  if (regReadReq_q &
    (regAddr_q == REG_ADDR_CTRL[RegAddrWidth-1:0]))
  begin
      ctrlBitDone_d = 1'b0;
  end

  // Assert the 'start' bit on register write requests.
  if (regWriteReq_q & regWStrb0_q & regWData0_q &
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
always @(gieBitEnable_q, ierBitDoneEn_q, ierBitReadyEn_q, regWriteReq_q,
  regAddr_q, regWData0_q, regWData1_q, regWStrb0_q)
begin

  // Hold current state by default.
  gieBitEnable_d = gieBitEnable_q;
  ierBitDoneEn_d = ierBitDoneEn_q;
  ierBitReadyEn_d = ierBitReadyEn_q;

  // Set the global interrupt enable register.
  if (regWriteReq_q & regWStrb0_q &
    (regAddr_q == REG_ADDR_GIE[RegAddrWidth-1:0]))
  begin
    gieBitEnable_d = regWData0_q;
  end

  // Set the IP core interrupt enable register.
  if (regWriteReq_q & regWStrb0_q &
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
  regWriteReq_q, regAddr_q, regWData0_q, regWData1_q, regWStrb0_q,
  ctrlBitDone_q, ctrlBitReady_q)
begin

  // Hold current state by default.
  isrBitDone_d = isrBitDone_q;
  isrBitReady_d = isrBitReady_q;

  // Toggle the ISR bits under software control.
  if (regWriteReq_q & regWStrb0_q &
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
always @(regReadReq_q, regWriteReq_q, regAddr_q, ctrlBitIdle_q, ctrlBitDone_q,
  ctrlBitStart_q, ctrlBitReady_q, gieBitEnable_q, ierBitDoneEn_q,
  ierBitReadyEn_q, isrBitDone_q, isrBitReady_q, zeros, regAddrTop)
begin

  // Implement the read mux.
  if (regReadReq_q)
  begin
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
    regRData_d = zeros[31:0];
  end

  // Acknowledge all accesses to the reserved register set.
  if (regAddr_q <= regAddrTop)
    regAck_d = regReadReq_q | regWriteReq_q;
  else
    regAck_d = 1'b0;

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

//
// (c) 2017 ReconfigureIO
//
// <COPYRIGHT TERMS>
//

//
// Implementation of SDAccel kernel entity control register selection unit. It
// maps the specified number of AXI slave interface registers at the start of
// the AXI address space to simple wrapper control registers and then maps the
// remaining locations to the AXI interface handler in the generated code.
//

`timescale 1ns/1ps

module sda_kernel_ctrl_reg_sel
  (sAxiAWValid, sAxiAWReady, sAxiAWAddr, sAxiWValid, sAxiWReady, sAxiWData,
  sAxiWStrb, sAxiBValid, sAxiBReady, sAxiBResp, sAxiARValid, sAxiARReady,
  sAxiARAddr, sAxiRValid, sAxiRReady, sAxiRData, sAxiRResp, mAxiAWValid,
  mAxiAWReady, mAxiAWAddr, mAxiWValid, mAxiWReady, mAxiWData, mAxiWStrb,
  mAxiBValid, mAxiBReady, mAxiBResp, mAxiARValid, mAxiARReady, mAxiARAddr,
  mAxiRValid, mAxiRReady, mAxiRData, mAxiRResp, regReq, regAck, regWriteEn,
  regAddr, regWData, regWStrb, regRData, clk, srst);

// Specifies the width of the AXI address bus.
parameter AddrWidth = 16;

// Specifies the width of the local register set address bus.
parameter RegAddrWidth = 8;

// Specify the upper address location which is mapped to the local register set.
parameter RegAddrTop = 255;

// Slave side AXI write address channel signals.
input                 sAxiAWValid;
output                sAxiAWReady;
input [AddrWidth-1:0] sAxiAWAddr;

// Slave side AXI write data channel signals.
input        sAxiWValid;
output       sAxiWReady;
input [31:0] sAxiWData;
input [3:0]  sAxiWStrb;

// Slave side AXI write acknowledgement channel signals.
output       sAxiBValid;
input        sAxiBReady;
output [1:0] sAxiBResp;

// Slave side AXI read address channel signals.
input                 sAxiARValid;
output                sAxiARReady;
input [AddrWidth-1:0] sAxiARAddr;

// Slave side AXI read data channel signals.
output        sAxiRValid;
input         sAxiRReady;
output [31:0] sAxiRData;
output [1:0]  sAxiRResp;

// Master side AXI write address channel signals.
output                 mAxiAWValid;
input                  mAxiAWReady;
output [AddrWidth-1:0] mAxiAWAddr;

// Master side AXI write data channel signals.
output        mAxiWValid;
input         mAxiWReady;
output [31:0] mAxiWData;
output [3:0]  mAxiWStrb;

// Master side AXI write acknowledgement channel signals.
input       mAxiBValid;
output      mAxiBReady;
input [1:0] mAxiBResp;

// Master side AXI read address channel signals.
output                 mAxiARValid;
input                  mAxiARReady;
output [AddrWidth-1:0] mAxiARAddr;

// Slave side AXI read data channel signals.
input        mAxiRValid;
output       mAxiRReady;
input [31:0] mAxiRData;
input [1:0]  mAxiRResp;

// Master side simple register interface signals.
output                    regReq;
input                     regAck;
output                    regWriteEn;
output [RegAddrWidth-1:0] regAddr;
output [31:0]             regWData;
output [3:0]              regWStrb;
input  [31:0]             regRData;

// System level signals.
input          clk;
input          srst;

// AXI write address channel register signals.
wire                 sAxiAWPending;
reg                  sAxiAWClear;
wire [AddrWidth-1:0] sAxiAWAddrReg;
reg                  mAxiAWPush;
wire                 mAxiAWBlocked;
wire [AddrWidth-1:0] mAxiAWAddrReg;

// AXI write data channel register signals.
wire        sAxiWPending;
reg         sAxiWClear;
wire [31:0] sAxiWDataReg;
wire [3:0]  sAxiWStrbReg;
reg         mAxiWPush;
wire        mAxiWBlocked;
wire [31:0] mAxiWDataReg;
wire [3:0]  mAxiWStrbReg;

// AXI read address channel register signals.
wire                 sAxiARPending;
reg                  sAxiARClear;
wire [AddrWidth-1:0] sAxiARAddrReg;
reg                  mAxiARPush;
wire                 mAxiARBlocked;
wire [AddrWidth-1:0] mAxiARAddrReg;

// AXI write response channel register signals.
wire       mAxiBPending;
reg        mAxiBClear;
wire [1:0] mAxiBRespReg;
reg        sAxiBPush;
wire       sAxiBBlocked;
reg  [1:0] sAxiBRespReg;

// AXI read response channel register signals.
wire        mAxiRPending;
reg         mAxiRClear;
wire [31:0] mAxiRDataReg;
wire [1:0]  mAxiRRespReg;
reg         sAxiRPush;
wire        sAxiRBlocked;
reg  [31:0] sAxiRDataReg;
reg  [1:0]  sAxiRRespReg;

// Specify the state space used to select the AXI transaction mode.
parameter [3:0]
  Idle = 0,
  RegReadStart = 1,
  RegReadActive = 2,
  RegWriteStart = 3,
  RegWriteActive = 4,
  AxiReadStart = 5,
  AxiReadActive = 6,
  AxiWriteStart = 7,
  AxiWriteData = 8,
  AxiWriteActive = 9;

// Specify AXI state machine registers.
reg [3:0]              axiState_d;
reg                    regReq_d;
reg                    regWriteEn_d;
reg [RegAddrWidth-1:0] regAddr_d;
reg [31:0]             regWData_d;
reg [3:0]              regWStrb_d;

reg [3:0]              axiState_q;
reg                    regReq_q;
reg                    regWriteEn_q;
reg [RegAddrWidth-1:0] regAddr_q;
reg [31:0]             regWData_q;
reg [3:0]              regWStrb_q;

// Miscellaneous signals.
wire [AddrWidth-1:0] regAddrTop = RegAddrTop [AddrWidth-1:0];
integer i;

// Instantiate input registers for slave side AXI write address channel.
sda_kernel_ctrl_reg_sel_axi_inreg_x1 #(AddrWidth) sAxiAWReg_u
  (sAxiAWValid, sAxiAWReady, sAxiAWAddr, sAxiAWPending, sAxiAWClear,
  sAxiAWAddrReg, clk, srst);

// Instantiate input registers for slave side AXI data channel.
sda_kernel_ctrl_reg_sel_axi_inreg_x2 #(32, 4) sAxiWReg_u
  (sAxiWValid, sAxiWReady, sAxiWData, sAxiWStrb, sAxiWPending,
  sAxiWClear, sAxiWDataReg, sAxiWStrbReg, clk, srst);

// Instantiate input registers for slave side AXI read address channel.
sda_kernel_ctrl_reg_sel_axi_inreg_x1 #(AddrWidth) sAxiARReg_u
  (sAxiARValid, sAxiARReady, sAxiARAddr, sAxiARPending, sAxiARClear,
  sAxiARAddrReg, clk, srst);

// Instantiate input register for master side AXI write acknowledgement.
sda_kernel_ctrl_reg_sel_axi_inreg_x1 #(2) mAxiBReg_u
  (mAxiBValid, mAxiBReady, mAxiBResp, mAxiBPending, mAxiBClear, mAxiBRespReg,
  clk, srst);

// Instantiate input register for master side AXI read data channel.
sda_kernel_ctrl_reg_sel_axi_inreg_x2 #(32, 2) mAxiRReg_u
  (mAxiRValid, mAxiRReady, mAxiRData, mAxiRResp, mAxiRPending,
  mAxiRClear, mAxiRDataReg, mAxiRRespReg, clk, srst);

// Instantate output register for master side AXI write address channel.
sda_kernel_ctrl_reg_sel_axi_outreg_x1 #(AddrWidth) mAxiAWReg_u
  (mAxiAWPush, mAxiAWBlocked, mAxiAWAddrReg, mAxiAWValid, mAxiAWReady,
  mAxiAWAddr, clk, srst);

// Instantiate output register for master side AXI write data channel.
sda_kernel_ctrl_reg_sel_axi_outreg_x2 #(32, 4) mAxiWReg_u
  (mAxiWPush, mAxiWBlocked, mAxiWDataReg, mAxiWStrbReg, mAxiWValid,
  mAxiWReady, mAxiWData, mAxiWStrb, clk, srst);

// Instantiate output register for master side AXI read address channel.
sda_kernel_ctrl_reg_sel_axi_outreg_x1 #(AddrWidth) mAxiARReg_u
  (mAxiARPush, mAxiARBlocked, mAxiARAddrReg, mAxiARValid, mAxiARReady,
  mAxiARAddr, clk, srst);

// Instantiate output register for slave side AXI write acknowledgement.
sda_kernel_ctrl_reg_sel_axi_outreg_x1 #(2) sAxiBReg_u
  (sAxiBPush, sAxiBBlocked, sAxiBRespReg, sAxiBValid, sAxiBReady, sAxiBResp,
  clk, srst);

// Instantiate output register for slave side AXI read data channel.
sda_kernel_ctrl_reg_sel_axi_outreg_x2 #(32, 2) sAxiRReg_u
  (sAxiRPush, sAxiRBlocked, sAxiRDataReg, sAxiRRespReg, sAxiRValid,
  sAxiRReady, sAxiRData, sAxiRResp, clk, srst);

// Pass through AXI signals where possible.
assign mAxiAWAddrReg = sAxiAWAddrReg;
assign mAxiWDataReg = sAxiWDataReg;
assign mAxiWStrbReg = sAxiWStrbReg;
assign mAxiARAddrReg = sAxiARAddrReg;

// Implement combinatorial logic for selecting AXI transaction mode.
always @(axiState_q, regReq_q, regWriteEn_q, regAddr_q, regWData_q, regWStrb_q,
  sAxiAWPending, sAxiAWAddrReg, sAxiWPending, sAxiWDataReg, sAxiWStrbReg,
  sAxiBBlocked, sAxiARPending, sAxiARAddrReg, sAxiRBlocked, mAxiRPending,
  mAxiRDataReg, mAxiRRespReg, mAxiAWBlocked, mAxiWBlocked, mAxiBPending,
  mAxiARBlocked, mAxiBRespReg, regAck, regRData, regAddrTop)
begin

  // Preserve current state by default.
  axiState_d = axiState_q;
  regReq_d = regReq_q;
  regWriteEn_d = regWriteEn_q;
  regAddr_d = regAddr_q;
  regWData_d = regWData_q;
  regWStrb_d = regWStrb_q;

  // Set default read assignment to register inputs with AXI 'OKAY' response.
  sAxiRPush = 1'b0;
  sAxiRDataReg = regRData;
  sAxiRRespReg = 2'b0;

  // Set default write status assigment to AXI 'OKAY' response.
  sAxiBPush = 1'b0;
  sAxiBRespReg = 2'b0;

  // Disable AXI register clear strobes by default.
  sAxiAWClear = 1'b0;
  sAxiWClear = 1'b0;
  sAxiARClear = 1'b0;
  mAxiBClear = 1'b0;
  mAxiRClear = 1'b0;

  // Disable AXI master push strobes by default.
  mAxiAWPush = 1'b0;
  mAxiWPush = 1'b0;
  mAxiARPush = 1'b0;

  // Implement state machine.
  case (axiState_q)

    // In the idle state, wait until the AXI write or read address inputs are
    // ready. Writes are prioritised over reads.
    // verilator lint_off CMPCONST
    Idle :
    begin
      if (sAxiAWPending)
      begin
        if (sAxiAWAddrReg <= regAddrTop)
          axiState_d = RegWriteStart;
        else
          axiState_d = AxiWriteStart;
      end
      else if (sAxiARPending)
      begin
        if (sAxiARAddrReg <= regAddrTop)
          axiState_d = RegReadStart;
        else
          axiState_d = AxiReadStart;
      end
    end
    // verilator lint_on CMPCONST

    // Initiate read transactions on the local register interface.
    RegReadStart :
    begin
      if (~sAxiRBlocked)
      begin
        axiState_d = RegReadActive;
        regReq_d = 1'b1;
        regWriteEn_d = 1'b0;
        regAddr_d = sAxiARAddrReg [RegAddrWidth-1:0];
      end
    end

    // Process active read requests.
    RegReadActive :
    begin
      if (regAck)
      begin
        axiState_d = Idle;
        regReq_d = 1'b0;
        regWriteEn_d = 1'b0;
        sAxiRPush = 1'b1;
        sAxiARClear = 1'b1;
      end
    end

    // Initiate write transactions to the local register interface.
    RegWriteStart :
    begin
      if (sAxiWPending & ~sAxiBBlocked)
      begin
        axiState_d = RegWriteActive;
        regReq_d = 1'b1;
        regWriteEn_d = 1'b1;
        regAddr_d = sAxiAWAddrReg [RegAddrWidth-1:0];
        regWData_d = sAxiWDataReg;
        regWStrb_d = sAxiWStrbReg;
      end
    end

    // Process active write requests.
    RegWriteActive :
    begin
      if (regAck)
      begin
        axiState_d = Idle;
        regReq_d = 1'b0;
        regWriteEn_d = 1'b0;
        sAxiBPush = 1'b1;
        sAxiAWClear = 1'b1;
        sAxiWClear = 1'b1;
      end
    end

    // Initiate read transaction on the AXI master side.
    AxiReadStart :
    begin
      if (~mAxiARBlocked)
      begin
        axiState_d = AxiReadActive;
        mAxiARPush = 1'b1;
        sAxiARClear = 1'b1;
      end
    end

    // Complete read transaction from the AXI master side.
    AxiReadActive :
    begin
      sAxiRDataReg = mAxiRDataReg;
      sAxiRRespReg = mAxiRRespReg;
      if (mAxiRPending & ~sAxiRBlocked)
      begin
        axiState_d = Idle;
        sAxiRPush = 1'b1;
        mAxiRClear = 1'b1;
      end
    end

    // Initiate write transaction on the AXI master side.
    AxiWriteStart :
    begin
      if (~mAxiAWBlocked)
      begin
        axiState_d = AxiWriteData;
        mAxiAWPush = 1'b1;
        sAxiAWClear = 1'b1;
      end
    end

    // Forward write data to the AXI master side.
    AxiWriteData :
    begin
      if (sAxiWPending & ~mAxiWBlocked)
      begin
        axiState_d = AxiWriteActive;
        mAxiWPush = 1'b1;
        sAxiWClear = 1'b1;
      end
    end

    // Complete write transaction from the AXI master side.
    AxiWriteActive :
    begin
      sAxiBRespReg = mAxiBRespReg;
      if (mAxiBPending & ~sAxiBBlocked)
      begin
        axiState_d = Idle;
        sAxiBPush = 1'b1;
        mAxiBClear = 1'b1;
      end
    end

    // Map unknown states to Idle.
    default :
    begin
      axiState_d = Idle;
    end
  endcase
end

// Implement sequential logic for AXI transaction state machine.
always @(posedge clk)
begin
  if (srst)
  begin
    axiState_q <= Idle;
    regReq_q <= 1'b0;
    regWriteEn_q <= 1'b0;
    for (i = 0; i < RegAddrWidth; i = i + 1)
      regAddr_q [i] <= 1'b0;
    regWData_q <= 32'b0;
    regWStrb_q <= 4'b0;
  end
  else
  begin
    axiState_q <= axiState_d;
    regReq_q <= regReq_d;
    regWriteEn_q <= regWriteEn_d;
    regAddr_q <= regAddr_d;
    regWData_q <= regWData_d;
    regWStrb_q <= regWStrb_d;
  end
end

assign regReq = regReq_q;
assign regWriteEn = regWriteEn_q;
assign regAddr = regAddr_q;
assign regWData = regWData_q;
assign regWStrb = regWStrb_q;

endmodule

//
// Provides common implementation of single AXI data input register.
//
// verilator lint_off DECLFILENAME
module sda_kernel_ctrl_reg_sel_axi_inreg_x1
  (axiValid, axiReady, axiDataIn, dataPending, dataClear, dataOut, clk, srst);
// verilator lint_on DECLFILENAME

// Specify the register data width.
parameter DataWidth = 16;

// Specifies the AXI bus input signals.
input                 axiValid;
output                axiReady;
input [DataWidth-1:0] axiDataIn;

// Specifies the data register output signals.
output                 dataPending;
input                  dataClear;
output [DataWidth-1:0] dataOut;

// Specifies the system level signals.
input clk;
input srst;

// Specifies internal registers.
reg                 dataClear_q;
reg                 axiReady_q;
reg [DataWidth-1:0] axiDataIn_q;

integer i;

// Implements a single AXI input register.
always @(posedge clk)
begin
  if (srst | dataClear)
  begin
    dataClear_q <= 1'b1;
    axiReady_q <= 1'b0;
    for (i = 0; i < DataWidth; i = i + 1)
      axiDataIn_q [i] <= 1'b0;
  end
  else if (dataClear_q)
  begin
    dataClear_q <= 1'b0;
    axiReady_q <= 1'b1;
  end
  else if (axiReady_q & axiValid)
  begin
    dataClear_q <= 1'b0;
    axiReady_q <= 1'b0;
    axiDataIn_q <= axiDataIn;
  end
end

assign axiReady = axiReady_q;
assign dataPending = ~(dataClear_q | axiReady_q);
assign dataOut = axiDataIn_q;

endmodule

//
// Provides common implementation of dual AXI data input register.
//
// verilator lint_off DECLFILENAME
module sda_kernel_ctrl_reg_sel_axi_inreg_x2
  (axiValid, axiReady, axiDataIn1, axiDataIn2, dataPending, dataClear,
  dataOut1, dataOut2, clk, srst);
// verilator lint_on DECLFILENAME

// Specify the first register data width.
parameter DataWidth1 = 16;

// Specify the second register data width.
parameter DataWidth2 = 16;

// Specifies the AXI bus input signals.
input                  axiValid;
output                 axiReady;
input [DataWidth1-1:0] axiDataIn1;
input [DataWidth2-1:0] axiDataIn2;

// Specifies the data register output signals.
output                  dataPending;
input                   dataClear;
output [DataWidth1-1:0] dataOut1;
output [DataWidth2-1:0] dataOut2;

// Specifies the system level signals.
input clk;
input srst;

// Specifies the concatenated data vectors.
wire [DataWidth1+DataWidth2-1:0] dataOut;

// Instantiate the single input register module.
sda_kernel_ctrl_reg_sel_axi_inreg_x1 #(DataWidth1+DataWidth2) axiDataReg_u
  (axiValid, axiReady, {axiDataIn2, axiDataIn1}, dataPending, dataClear,
  dataOut, clk, srst);

assign dataOut1 = dataOut [DataWidth1-1:0];
assign dataOut2 = dataOut [DataWidth1+DataWidth2-1:DataWidth1];

endmodule

//
// Provides common implementation of single AXI data output register.
//
// verilator lint_off DECLFILENAME
module sda_kernel_ctrl_reg_sel_axi_outreg_x1
  (dataPush, dataBlocked, dataIn, axiValid, axiReady, axiDataOut, clk, srst);
// verilator lint_on DECLFILENAME

// Specify the register data width.
parameter DataWidth = 16;

// Specifies the data register interface signals.
input                 dataPush;
output                dataBlocked;
input [DataWidth-1:0] dataIn;

// Specifies the AXI bus output signals.
output                 axiValid;
input                  axiReady;
output [DataWidth-1:0] axiDataOut;

// Specifies the system level signals.
input clk;
input srst;

// Specifies internal registers.
reg                 dataReady_q;
reg [DataWidth-1:0] dataReg_q;

integer i;

// Implements a single AXI output register.
always @(posedge clk)
begin
  if (srst)
  begin
    dataReady_q <= 1'b0;
    for (i = 0; i < DataWidth; i = i + 1)
      dataReg_q [i] <= 1'b0;
  end
  else if (dataReady_q & axiReady)
  begin
    dataReady_q <= 1'b0;
  end
  else if (dataPush)
  begin
    dataReady_q <= 1'b1;
    dataReg_q <= dataIn;
  end
end

assign dataBlocked = dataReady_q;
assign axiValid = dataReady_q;
assign axiDataOut = dataReg_q;

endmodule

//
// Provides common implementation of dual AXI data output register.
//
// verilator lint_off DECLFILENAME
module sda_kernel_ctrl_reg_sel_axi_outreg_x2
  (dataPush, dataBlocked, dataIn1, dataIn2, axiValid, axiReady, axiDataOut1,
  axiDataOut2, clk, srst);
// verilator lint_on DECLFILENAME

// Specify the first register data width.
parameter DataWidth1 = 16;

// Specify the second register data width.
parameter DataWidth2 = 16;

// Specifies the data register interface signals.
input                  dataPush;
output                 dataBlocked;
input [DataWidth1-1:0] dataIn1;
input [DataWidth2-1:0] dataIn2;

// Specifies the AXI bus output signals.
output                  axiValid;
input                   axiReady;
output [DataWidth1-1:0] axiDataOut1;
output [DataWidth2-1:0] axiDataOut2;

// Specifies the system level signals.
input clk;
input srst;

// Specifies the concatenated data vectors.
wire [DataWidth1+DataWidth2-1:0] axiDataOut;

// Instantiate the single output register module.
sda_kernel_ctrl_reg_sel_axi_outreg_x1 #(DataWidth1+DataWidth2) axiDataReg_u
  (dataPush, dataBlocked, {dataIn2, dataIn1}, axiValid, axiReady,
  axiDataOut, clk, srst);

assign axiDataOut1 = axiDataOut [DataWidth1-1:0];
assign axiDataOut2 = axiDataOut [DataWidth1+DataWidth2-1:DataWidth1];

endmodule


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
  kernelGoHoldoff, kernelDoneValid, kernelDoneStop, sysRstReq, wrapperReset,
  kernelReset, clk);

// Specifies the reset counter size. The kernel reset line will be asserted for
// the time it takes the counter to wrap.
parameter ResetCountSize = 5;

// Specifies the length of the reset pipeline, which allows the synthesis tools
// to build a reset tree if required by using register duplication.
parameter ResetPipeLength = 8;

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

// Specifies the system reset request signal and generated resets.
input  sysRstReq;
output wrapperReset;
output kernelReset;

// Specifies the clock input. There is no standard synchronous reset.
input clk;

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

// Implements a register with an explicit initialisation value, which will have
// the effect of forcing a reset cycle immediately after loading the FPGA
// netlist. Only works with devices that support bitstream initalisation.
reg resetHandlerEnabled_q = 1'b0;
reg wrapperReset_q;

// Specifies the reset pipeline signals.
reg [ResetPipeLength-1:0] wrapperResetPipe_q;
reg [ResetPipeLength-1:0] kernelResetPipe_q;

// Miscellaneous signals.
integer i;

// Initiate automatic reset on FPGA bitstream load.
always @(posedge clk)
begin
  if (sysRstReq | ~resetHandlerEnabled_q)
  begin
    resetHandlerEnabled_q <= 1'b1;
    wrapperReset_q <= 1'b1;
  end
  else
  begin
    resetHandlerEnabled_q <= 1'b1;
    wrapperReset_q <= 1'b0;
  end
end

// Implement combinatorial logic for reset control state machine.
always @(resetState_q, resetCount_q, kernelReset_q, regGoHoldoff_q, regDoneValid_q,
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
    ResetIdle :
    begin
      if (regGoValid & ~regGoHoldoff_q)
      begin
        resetState_d = KernelStarting;
        kernelReset_d = 1'b0;
      end
      else
      begin
        regGoHoldoff_d = 1'b0;
      end
    end

    // Treat the unreachable default state as a hard reset. This prevents the
    // Xilinx tools from generating dangling nets if the state encoding is
    // automatically converted to one-hot.
    default:
    begin
      resetState_d = ResetTimeout;
      for (i = 0; i < ResetCountSize; i = i + 1)
        resetCount_d [i] = 1'b0;
      kernelReset_d = 1'b1;
      regGoHoldoff_d = 1'b1;
      regDoneValid_d = 1'b0;
      kernelGoValid_d = 1'b0;
      kernelDoneStop_d = 1'b1;
    end
  endcase

end

// Implement sequential logic for reset control state machine.
always @(posedge clk)
begin
  if (wrapperReset_q)
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

assign regGoHoldoff = regGoHoldoff_q;
assign regDoneValid = regDoneValid_q;
assign kernelGoValid = kernelGoValid_q;
assign kernelDoneStop = kernelDoneStop_q;

// Implement reset output pipelines.
always @(posedge clk)
begin
  if (wrapperReset_q)
    for (i = 0; i < ResetPipeLength; i = i + 1)
       wrapperResetPipe_q [i] <= 1'b1;
  else
    wrapperResetPipe_q <= { 1'b0, wrapperResetPipe_q [ResetPipeLength-1:1] };
end

always @(posedge clk)
begin
  if (kernelReset_q)
    for (i = 0; i < ResetPipeLength; i = i + 1)
       kernelResetPipe_q [i] <= 1'b1;
  else
    kernelResetPipe_q <= { 1'b0, kernelResetPipe_q [ResetPipeLength-1:1] };
end

assign wrapperReset = wrapperResetPipe_q [0];
assign kernelReset = kernelResetPipe_q [0];

endmodule

//
// (c) 2017 ReconfigureIO
//
// <COPYRIGHT TERMS>
//

//
// Provides the common wrapper code around an existing 'action' block so that it
// can be used in the context of an SDAccel 'kernel' block. This variant
// supports the complete set of control registers at AXI slave offset zero which
// are used to map the SDAccel run/status programming interface to the action
// block run/done SELF handshake lines. This wrapper implements a single AXI
// master interface which can access the shared global memory area on the FPGA
// card.
//

`timescale 1ns/1ps

// Can be redefined on the synthesis command line.
`define AXI_SLAVE_ADDR_WIDTH 16

// Can be redefined on the synthesis command line.
`define AXI_MASTER_ADDR_WIDTH 64

// Can be redefined on the synthesis command line.
`define AXI_MASTER_DATA_WIDTH 64

// Can be redefined on the synthesis command line.
`define AXI_MASTER_ID_WIDTH 1

// Can be redefined on the synthesis command line.
`define AXI_MASTER_USER_WIDTH 1

// Can be redefined on the synthesis command line.
`define AXI_PARAM_MEM_ADDR_WIDTH 12

// Module name to be substituted in post-synthesis netlist.
module sda_kernel_wrapper_gmem
  (s_axi_control_AWADDR, s_axi_control_AWVALID, s_axi_control_AWREADY,
  s_axi_control_WDATA, s_axi_control_WSTRB, s_axi_control_WVALID,
  s_axi_control_WREADY, s_axi_control_BRESP, s_axi_control_BVALID,
  s_axi_control_BREADY, s_axi_control_ARADDR, s_axi_control_ARVALID,
  s_axi_control_ARREADY, s_axi_control_RDATA, s_axi_control_RRESP,
  s_axi_control_RVALID, s_axi_control_RREADY, m_axi_gmem_AWADDR,
  m_axi_gmem_AWLEN, m_axi_gmem_AWSIZE, m_axi_gmem_AWBURST, m_axi_gmem_AWLOCK,
  m_axi_gmem_AWREGION, m_axi_gmem_AWCACHE, m_axi_gmem_AWPROT, m_axi_gmem_AWQOS,
  m_axi_gmem_AWID, m_axi_gmem_AWUSER, m_axi_gmem_AWVALID, m_axi_gmem_AWREADY,
  m_axi_gmem_WDATA, m_axi_gmem_WSTRB, m_axi_gmem_WLAST, m_axi_gmem_WID,
  m_axi_gmem_WUSER, m_axi_gmem_WVALID, m_axi_gmem_WREADY, m_axi_gmem_BRESP,
  m_axi_gmem_BID, m_axi_gmem_BUSER, m_axi_gmem_BVALID, m_axi_gmem_BREADY,
  m_axi_gmem_ARADDR, m_axi_gmem_ARLEN, m_axi_gmem_ARSIZE, m_axi_gmem_ARBURST,
  m_axi_gmem_ARLOCK, m_axi_gmem_ARREGION, m_axi_gmem_ARCACHE, m_axi_gmem_ARPROT,
  m_axi_gmem_ARQOS, m_axi_gmem_ARID, m_axi_gmem_ARUSER, m_axi_gmem_ARVALID,
  m_axi_gmem_ARREADY, m_axi_gmem_RDATA, m_axi_gmem_RRESP, m_axi_gmem_RLAST,
  m_axi_gmem_RID, m_axi_gmem_RUSER, m_axi_gmem_RVALID, m_axi_gmem_RREADY,
  ap_clk, ap_rst_n, interrupt);

// Specifies the AXI slave write address signals.
input [`AXI_SLAVE_ADDR_WIDTH-1:0] s_axi_control_AWADDR;
input                             s_axi_control_AWVALID;
output                            s_axi_control_AWREADY;

// Specifies the AXI slave write data signals.
input [31:0] s_axi_control_WDATA;
input [3:0]  s_axi_control_WSTRB;
input        s_axi_control_WVALID;
output       s_axi_control_WREADY;

// Specifies the AXI slave write response signals.
output [1:0] s_axi_control_BRESP;
output       s_axi_control_BVALID;
input        s_axi_control_BREADY;

// Specifies the AXI slave read address signals.
input [`AXI_SLAVE_ADDR_WIDTH-1:0] s_axi_control_ARADDR;
input                             s_axi_control_ARVALID;
output                            s_axi_control_ARREADY;

// Specifies the AXI slave read data signals.
output [31:0] s_axi_control_RDATA;
output [1:0]  s_axi_control_RRESP;
output        s_axi_control_RVALID;
input         s_axi_control_RREADY;

// Specifies the AXI master write address signals.
output [`AXI_MASTER_ADDR_WIDTH-1:0] m_axi_gmem_AWADDR;
output [7:0]                        m_axi_gmem_AWLEN;
output [2:0]                        m_axi_gmem_AWSIZE;
output [1:0]                        m_axi_gmem_AWBURST;
output [1:0]                        m_axi_gmem_AWLOCK;
output [3:0]                        m_axi_gmem_AWCACHE;
output [2:0]                        m_axi_gmem_AWPROT;
output [3:0]                        m_axi_gmem_AWQOS;
output [3:0]                        m_axi_gmem_AWREGION;
output [`AXI_MASTER_ID_WIDTH-1:0]   m_axi_gmem_AWID;
output [`AXI_MASTER_USER_WIDTH-1:0] m_axi_gmem_AWUSER;
output                              m_axi_gmem_AWVALID;
input                               m_axi_gmem_AWREADY;

// Specifies the AXI master write data signals.
output [`AXI_MASTER_DATA_WIDTH-1:0]   m_axi_gmem_WDATA;
output [`AXI_MASTER_DATA_WIDTH/8-1:0] m_axi_gmem_WSTRB;
output                                m_axi_gmem_WLAST;
output [`AXI_MASTER_ID_WIDTH-1:0]     m_axi_gmem_WID;
output [`AXI_MASTER_USER_WIDTH-1:0]   m_axi_gmem_WUSER;
output                                m_axi_gmem_WVALID;
input                                 m_axi_gmem_WREADY;

// Specifies the AXI master write response signals.
input [1:0]                        m_axi_gmem_BRESP;
input [`AXI_MASTER_ID_WIDTH-1:0]   m_axi_gmem_BID;
input [`AXI_MASTER_USER_WIDTH-1:0] m_axi_gmem_BUSER;
input                              m_axi_gmem_BVALID;
output                             m_axi_gmem_BREADY;

// Specifies the AXI master read address signals.
output [`AXI_MASTER_ADDR_WIDTH-1:0] m_axi_gmem_ARADDR;
output [7:0]                        m_axi_gmem_ARLEN;
output [2:0]                        m_axi_gmem_ARSIZE;
output [1:0]                        m_axi_gmem_ARBURST;
output [1:0]                        m_axi_gmem_ARLOCK;
output [3:0]                        m_axi_gmem_ARCACHE;
output [2:0]                        m_axi_gmem_ARPROT;
output [3:0]                        m_axi_gmem_ARQOS;
output [3:0]                        m_axi_gmem_ARREGION;
output [`AXI_MASTER_ID_WIDTH-1:0]   m_axi_gmem_ARID;
output [`AXI_MASTER_USER_WIDTH-1:0] m_axi_gmem_ARUSER;
output                              m_axi_gmem_ARVALID;
input                               m_axi_gmem_ARREADY;

// Specifies the AXI master read data signals.
input [`AXI_MASTER_DATA_WIDTH-1:0] m_axi_gmem_RDATA;
input [1:0]                        m_axi_gmem_RRESP;
input                              m_axi_gmem_RLAST;
input [`AXI_MASTER_ID_WIDTH-1:0]   m_axi_gmem_RID;
input [`AXI_MASTER_USER_WIDTH-1:0] m_axi_gmem_RUSER;
input                              m_axi_gmem_RVALID;
output                             m_axi_gmem_RREADY;

// Specifies the system level I/O signals.
input  ap_clk;
input  ap_rst_n;

// verilator lint_off SYMRSVDWORD
output interrupt;
// verilator lint_on SYMRSVDWORD

// Reset management signals.
wire reg_go_valid;
wire reg_go_holdoff;
wire reg_done_valid;
wire reg_done_stop;
wire kernel_reset;
wire wrapper_reset;

// AXI control interface master write address signals.
wire [`AXI_SLAVE_ADDR_WIDTH-1:0] m_axi_control_AWADDR;
wire [3:0]                       m_axi_control_AWCACHE;
wire [2:0]                       m_axi_control_AWPROT;
wire                             m_axi_control_AWVALID;
wire                             m_axi_control_AWREADY;

// AXI control interface master write data signals.
wire [31:0] m_axi_control_WDATA;
wire [3:0]  m_axi_control_WSTRB;
wire        m_axi_control_WVALID;
wire        m_axi_control_WREADY;

// AXI control interface master write response signals.
wire [1:0] m_axi_control_BRESP;
wire       m_axi_control_BVALID;
wire       m_axi_control_BREADY;

// AXI control interface master read address signals.
wire [`AXI_SLAVE_ADDR_WIDTH-1:0] m_axi_control_ARADDR;
wire [3:0]                       m_axi_control_ARCACHE;
wire [2:0]                       m_axi_control_ARPROT;
wire                             m_axi_control_ARVALID;
wire                             m_axi_control_ARREADY;

// AXI control interface master read data signals.
wire [31:0] m_axi_control_RDATA;
wire [1:0]  m_axi_control_RRESP;
wire        m_axi_control_RVALID;
wire        m_axi_control_RREADY;

// Wrapper control register interface signals.
wire                                 reg_req;
wire                                 reg_ack;
wire                                 reg_ack_0;
wire                                 reg_ack_1;
wire                                 reg_write_en;
wire [`AXI_PARAM_MEM_ADDR_WIDTH-1:0] reg_addr;
wire [31:0]                          reg_wdata;
wire [3:0]                           reg_wstrb;
wire [31:0]                          reg_rdata;
wire [31:0]                          reg_rdata_0;
wire [31:0]                          reg_rdata_1;

// Kernel interface parameter access signals.
wire        param_addr_valid;
wire [31:0] param_addr;
wire        param_addr_stop;
wire        param_data_valid;
wire [31:0] param_data;
wire        param_data_stop;

// Action control signals.
wire go_0Ready;
wire go_0Stop;
wire done_0Ready;
wire done_0Stop;

// Miscellaneous signals.
wire [31:0] zeros = 32'b0;
wire [31:0] m_axi_control_ext_AWADDR;
wire [31:0] m_axi_control_ext_ARADDR;

// Tie off unused control interface signals.
assign m_axi_control_AWCACHE = 4'b0000;
assign m_axi_control_AWPROT = 3'b010;
assign m_axi_control_ARCACHE = 4'b0000;
assign m_axi_control_ARPROT = 3'b010;

// Tie off upper bit of the lock signals for AXI3 backward compatibility.
assign m_axi_gmem_AWLOCK[1] = 1'b0;
assign m_axi_gmem_ARLOCK[1] = 1'b0;

// Tie off unused WID signal
assign m_axi_gmem_WID = 1'b0;

// Instantiate the reset controller.
sda_kernel_reset_handler resetHandler_u
  (reg_go_valid, reg_go_holdoff, reg_done_valid, reg_done_stop, go_0Ready,
  go_0Stop, done_0Ready, done_0Stop, ~ap_rst_n, wrapper_reset, kernel_reset,
  ap_clk);

// Instantiate the AXI slave register selection component.
sda_kernel_ctrl_reg_sel #(`AXI_SLAVE_ADDR_WIDTH, `AXI_PARAM_MEM_ADDR_WIDTH,
  (1 << `AXI_PARAM_MEM_ADDR_WIDTH)-1) kernelCtrlRegSel_u
  (s_axi_control_AWVALID, s_axi_control_AWREADY, s_axi_control_AWADDR,
  s_axi_control_WVALID, s_axi_control_WREADY, s_axi_control_WDATA,
  s_axi_control_WSTRB, s_axi_control_BVALID, s_axi_control_BREADY,
  s_axi_control_BRESP, s_axi_control_ARVALID, s_axi_control_ARREADY,
  s_axi_control_ARADDR, s_axi_control_RVALID, s_axi_control_RREADY,
  s_axi_control_RDATA, s_axi_control_RRESP, m_axi_control_AWVALID,
  m_axi_control_AWREADY, m_axi_control_AWADDR, m_axi_control_WVALID,
  m_axi_control_WREADY, m_axi_control_WDATA, m_axi_control_WSTRB,
  m_axi_control_BVALID, m_axi_control_BREADY, m_axi_control_BRESP,
  m_axi_control_ARVALID, m_axi_control_ARREADY, m_axi_control_ARADDR,
  m_axi_control_RVALID, m_axi_control_RREADY, m_axi_control_RDATA,
  m_axi_control_RRESP, reg_req, reg_ack, reg_write_en, reg_addr, reg_wdata,
  reg_wstrb, reg_rdata, ap_clk, wrapper_reset);

// Instantiate the kernel control registers at slave address offset 0.
sda_kernel_ctrl_reg #(`AXI_PARAM_MEM_ADDR_WIDTH, 63) kernelCtrlReg_u
  (reg_req, reg_ack_0, reg_write_en, reg_addr, reg_wdata, reg_wstrb, reg_rdata_0,
  reg_go_valid, reg_go_holdoff, reg_done_valid, reg_done_stop, interrupt, ap_clk,
  wrapper_reset);

// Instantiate the kernel parameter memory.
sda_kernel_ctrl_param #(`AXI_PARAM_MEM_ADDR_WIDTH, 64,
  (1 << `AXI_PARAM_MEM_ADDR_WIDTH)-1) kernelCtrlParam_u
  (reg_req, reg_ack_1, reg_write_en, reg_addr, reg_wdata, reg_wstrb, reg_rdata_1,
  param_addr_valid, param_addr, param_addr_stop, param_data_valid, param_data,
  param_data_stop, ap_clk, wrapper_reset);

assign reg_ack = reg_ack_0 | reg_ack_1;
assign reg_rdata = reg_rdata_0 | reg_rdata_1 | zeros;

// Extend the slave address bus widths to the standard 32 bit value for the
// action logic core.
assign m_axi_control_ext_AWADDR =
  {zeros [31:`AXI_SLAVE_ADDR_WIDTH], m_axi_control_AWADDR};
assign m_axi_control_ext_ARADDR =
  {zeros [31:`AXI_SLAVE_ADDR_WIDTH], m_axi_control_ARADDR};

// Instantiate the simple generated action logic core.
teak__action__top__gmem kernelActionTop_u
  (.go_0Ready(go_0Ready), .go_0Stop(go_0Stop), .done_0Ready(done_0Ready), .done_0Stop(done_0Stop),
  .s_axi_araddr(m_axi_control_ext_ARADDR), .s_axi_arcache(m_axi_control_ARCACHE),
  .s_axi_arprot(m_axi_control_ARPROT), .s_axi_arvalid(m_axi_control_ARVALID),
  .s_axi_arready(m_axi_control_ARREADY), .s_axi_rdata(m_axi_control_RDATA),
  .s_axi_rresp(m_axi_control_RRESP), .s_axi_rvalid(m_axi_control_RVALID),
  .s_axi_rready(m_axi_control_RREADY), .s_axi_awaddr(m_axi_control_ext_AWADDR),
  .s_axi_awcache(m_axi_control_AWCACHE), .s_axi_awprot(m_axi_control_AWPROT),
  .s_axi_awvalid(m_axi_control_AWVALID), .s_axi_awready(m_axi_control_AWREADY),
  .s_axi_wdata(m_axi_control_WDATA), .s_axi_wstrb(m_axi_control_WSTRB),
  .s_axi_wvalid(m_axi_control_WVALID), .s_axi_wready(m_axi_control_WREADY),
  .s_axi_bresp(m_axi_control_BRESP), .s_axi_bvalid(m_axi_control_BVALID),
  .s_axi_bready(m_axi_control_BREADY), .m_axi_gmem_awaddr(m_axi_gmem_AWADDR),
  .m_axi_gmem_awlen(m_axi_gmem_AWLEN), .m_axi_gmem_awsize(m_axi_gmem_AWSIZE),
  .m_axi_gmem_awburst(m_axi_gmem_AWBURST), .m_axi_gmem_awlock(m_axi_gmem_AWLOCK[0]),
  .m_axi_gmem_awcache(m_axi_gmem_AWCACHE), .m_axi_gmem_awprot(m_axi_gmem_AWPROT),
  .m_axi_gmem_awqos(m_axi_gmem_AWQOS), .m_axi_gmem_awregion(m_axi_gmem_AWREGION),
  .m_axi_gmem_awid(m_axi_gmem_AWID), .m_axi_gmem_awuser(m_axi_gmem_AWUSER),
  .m_axi_gmem_awvalid(m_axi_gmem_AWVALID), .m_axi_gmem_awready(m_axi_gmem_AWREADY),
  .m_axi_gmem_wdata(m_axi_gmem_WDATA), .m_axi_gmem_wstrb(m_axi_gmem_WSTRB),
  .m_axi_gmem_wlast(m_axi_gmem_WLAST), /* wid isn't in axi4 .m_axi_gmem_wid(m_axi_gmem_WID) , */
  .m_axi_gmem_wuser(m_axi_gmem_WUSER), .m_axi_gmem_wvalid(m_axi_gmem_WVALID),
  .m_axi_gmem_wready(m_axi_gmem_WREADY), .m_axi_gmem_bresp(m_axi_gmem_BRESP),
  .m_axi_gmem_bid(m_axi_gmem_BID), .m_axi_gmem_buser(m_axi_gmem_BUSER),
  .m_axi_gmem_bvalid(m_axi_gmem_BVALID), .m_axi_gmem_bready(m_axi_gmem_BREADY),
  .m_axi_gmem_araddr(m_axi_gmem_ARADDR), .m_axi_gmem_arlen(m_axi_gmem_ARLEN),
  .m_axi_gmem_arsize(m_axi_gmem_ARSIZE), .m_axi_gmem_arburst(m_axi_gmem_ARBURST),
  .m_axi_gmem_arlock(m_axi_gmem_ARLOCK[0]), .m_axi_gmem_arcache(m_axi_gmem_ARCACHE),
  .m_axi_gmem_arprot(m_axi_gmem_ARPROT), .m_axi_gmem_arqos(m_axi_gmem_ARQOS),
  .m_axi_gmem_arregion(m_axi_gmem_ARREGION), .m_axi_gmem_arid(m_axi_gmem_ARID),
  .m_axi_gmem_aruser(m_axi_gmem_ARUSER), .m_axi_gmem_arvalid(m_axi_gmem_ARVALID),
  .m_axi_gmem_arready(m_axi_gmem_ARREADY), .m_axi_gmem_rdata(m_axi_gmem_RDATA),
  .m_axi_gmem_rresp(m_axi_gmem_RRESP), .m_axi_gmem_rlast(m_axi_gmem_RLAST),
  .m_axi_gmem_rid(m_axi_gmem_RID), .m_axi_gmem_ruser(m_axi_gmem_RUSER),
  .m_axi_gmem_rvalid(m_axi_gmem_RVALID), .m_axi_gmem_rready(m_axi_gmem_RREADY),
  .paramaddr_0Ready(param_addr_valid), .paramaddr_0Data(param_addr),
  .paramaddr_0Stop(param_addr_stop), .paramdata_0Ready(param_data_valid),
  .paramdata_0Data(param_data), .paramdata_0Stop(param_data_stop),
  .clk(ap_clk), .reset(kernel_reset));

endmodule
