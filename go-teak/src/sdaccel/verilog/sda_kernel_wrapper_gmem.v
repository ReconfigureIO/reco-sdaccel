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
`define AXI_MASTER_DATA_WIDTH 128

// Can be redefined on the synthesis command line.
`define AXI_MASTER_DATA_INDEX_WIDTH 4

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
input                              m_axi_gmem_RVALID;
output                             m_axi_gmem_RREADY;

// verilator lint_off UNUSED
input [`AXI_MASTER_USER_WIDTH-1:0] m_axi_gmem_BUSER;
input [`AXI_MASTER_USER_WIDTH-1:0] m_axi_gmem_RUSER;
// verilator lint_on UNUSED

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

// SMI to AXI conversion signals.
wire                              smi_axi_req_ready;
wire [7:0]                        smi_axi_req_eofc;
wire [`AXI_MASTER_DATA_WIDTH-1:0] smi_axi_req_data;
wire                              smi_axi_req_stop;

wire                              smi_axi_resp_ready;
wire [7:0]                        smi_axi_resp_eofc;
wire [`AXI_MASTER_DATA_WIDTH-1:0] smi_axi_resp_data;
wire                              smi_axi_resp_stop;

// SMI to Teak toplevel interconnect signals.
wire        smi_port_a_req_ready;
wire [7:0]  smi_port_a_req_eofc;
wire [63:0] smi_port_a_req_data;
wire        smi_port_a_req_stop;

wire        smi_port_a_resp_ready;
wire [7:0]  smi_port_a_resp_eofc;
wire [63:0] smi_port_a_resp_data;
wire        smi_port_a_resp_stop;

wire        smi_port_b_req_ready;
wire [7:0]  smi_port_b_req_eofc;
wire [63:0] smi_port_b_req_data;
wire        smi_port_b_req_stop;

wire        smi_port_b_resp_ready;
wire [7:0]  smi_port_b_resp_eofc;
wire [63:0] smi_port_b_resp_data;
wire        smi_port_b_resp_stop;

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

// Tie off unused or fixed value AXI memory master signals.
assign m_axi_gmem_AWBURST = 2'b01;
assign m_axi_gmem_AWLOCK = 2'b00;
assign m_axi_gmem_AWCACHE = 4'b0011;
assign m_axi_gmem_AWPROT = 3'b010;
assign m_axi_gmem_AWQOS = 4'b0000;
assign m_axi_gmem_AWREGION = 4'b0000;
assign m_axi_gmem_AWUSER = 0;
assign m_axi_gmem_WID = 0;
assign m_axi_gmem_WUSER = 0;
assign m_axi_gmem_ARBURST = 2'b01;
assign m_axi_gmem_ARLOCK = 2'b00;
assign m_axi_gmem_ARCACHE = 4'b0011;
assign m_axi_gmem_ARPROT = 3'b010;
assign m_axi_gmem_ARQOS = 4'b0000;
assign m_axi_gmem_ARREGION = 4'b0000;
assign m_axi_gmem_ARUSER = 0;

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

// Instantiate the SMI bus scaling and arbitration block.
smiScalingArbiterX2 #(`AXI_MASTER_DATA_WIDTH/16, 4) smiScalingArbiter
  (.smiReqAInReady(smi_port_a_req_ready), .smiReqAInEofc(smi_port_a_req_eofc),
  .smiReqAInData(smi_port_a_req_data), .smiReqAInStop(smi_port_a_req_stop),
  .smiRespAOutReady(smi_port_a_resp_ready), .smiRespAOutEofc(smi_port_a_resp_eofc),
  .smiRespAOutData(smi_port_a_resp_data), .smiRespAOutStop(smi_port_a_resp_stop),
  .smiReqBInReady(smi_port_b_req_ready), .smiReqBInEofc(smi_port_b_req_eofc),
  .smiReqBInData(smi_port_b_req_data), .smiReqBInStop(smi_port_b_req_stop),
  .smiRespBOutReady(smi_port_b_resp_ready), .smiRespBOutEofc(smi_port_b_resp_eofc),
  .smiRespBOutData(smi_port_b_resp_data), .smiRespBOutStop(smi_port_b_resp_stop),
  .smiReqOutReady(smi_axi_req_ready), .smiReqOutEofc(smi_axi_req_eofc),
  .smiReqOutData(smi_axi_req_data), .smiReqOutStop(smi_axi_req_stop),
  .smiRespInReady(smi_axi_resp_ready), .smiRespInEofc(smi_axi_resp_eofc),
  .smiRespInData(smi_axi_resp_data), .smiRespInStop(smi_axi_resp_stop),
  .clk(ap_clk), .srst(wrapper_reset));

// Instantiate the SMI to AXI conversion block.
smiAxiBusAdaptor #(`AXI_MASTER_DATA_INDEX_WIDTH, `AXI_MASTER_ID_WIDTH) smiAxiAdaptor
  (.smiReqReady(smi_axi_req_ready), .smiReqEofc(smi_axi_req_eofc),
  .smiReqData(smi_axi_req_data), .smiReqStop(smi_axi_req_stop),
  .smiRespReady(smi_axi_resp_ready), .smiRespEofc(smi_axi_resp_eofc),
  .smiRespData(smi_axi_resp_data), .smiRespStop(smi_axi_resp_stop),
  .axiARValid(m_axi_gmem_ARVALID), .axiARReady(m_axi_gmem_ARREADY),
  .axiARId(m_axi_gmem_ARID), .axiARAddr(m_axi_gmem_ARADDR),
  .axiARLen(m_axi_gmem_ARLEN), .axiARSize(m_axi_gmem_ARSIZE),
  .axiRValid(m_axi_gmem_RVALID), .axiRReady(m_axi_gmem_RREADY),
  .axiRId(m_axi_gmem_RID), .axiRData(m_axi_gmem_RDATA),
  .axiRResp(m_axi_gmem_RRESP), .axiRLast(m_axi_gmem_RLAST),
  .axiAWValid(m_axi_gmem_AWVALID), .axiAWReady(m_axi_gmem_AWREADY),
  .axiAWId(m_axi_gmem_AWID), .axiAWAddr(m_axi_gmem_AWADDR),
  .axiAWLen(m_axi_gmem_AWLEN), .axiAWSize(m_axi_gmem_AWSIZE),
  .axiWValid(m_axi_gmem_WVALID), .axiWReady(m_axi_gmem_WREADY),
  .axiWData(m_axi_gmem_WDATA), .axiWStrb(m_axi_gmem_WSTRB),
  .axiWLast(m_axi_gmem_WLAST), .axiBValid(m_axi_gmem_BVALID),
  .axiBReady(m_axi_gmem_BREADY), .axiBId(m_axi_gmem_BID),
  .axiBResp(m_axi_gmem_BRESP), .clk(ap_clk), .srst(wrapper_reset));

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
  .s_axi_bready(m_axi_control_BREADY), .smi_port_a_req_ready(smi_port_a_req_ready),
  .smi_port_a_req_eofc(smi_port_a_req_eofc), .smi_port_a_req_data(smi_port_a_req_data),
  .smi_port_a_req_stop(smi_port_a_req_stop), .smi_port_a_resp_ready(smi_port_a_resp_ready),
  .smi_port_a_resp_eofc(smi_port_a_resp_eofc), .smi_port_a_resp_data(smi_port_a_resp_data),
  .smi_port_a_resp_stop(smi_port_a_resp_stop), .smi_port_b_req_ready(smi_port_b_req_ready),
  .smi_port_b_req_eofc(smi_port_b_req_eofc), .smi_port_b_req_data(smi_port_b_req_data),
  .smi_port_b_req_stop(smi_port_b_req_stop), .smi_port_b_resp_ready(smi_port_b_resp_ready),
  .smi_port_b_resp_eofc(smi_port_b_resp_eofc), .smi_port_b_resp_data(smi_port_b_resp_data),
  .smi_port_b_resp_stop(smi_port_b_resp_stop), .paramaddr_0Ready(param_addr_valid),
  .paramaddr_0Data(param_addr), .paramaddr_0Stop(param_addr_stop),
  .paramdata_0Ready(param_data_valid), .paramdata_0Data(param_data),
  .paramdata_0Stop(param_data_stop), .clk(ap_clk), .reset(kernel_reset));

endmodule
