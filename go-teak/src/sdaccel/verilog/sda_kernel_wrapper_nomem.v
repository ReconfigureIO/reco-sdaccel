//
// (c) 2017 ReconfigureIO
//
// <COPYRIGHT TERMS>
//

//
// Provides the common wrapper code around an existing 'action' block so that it
// can be used in the context of an SDAccel 'kernel' block. The initial variant
// supports a single wrapper control register at AXI slave offset zero which is
// used to map the SDAccel run/status programming interface to the action block
// run/done SELF handshake lines. This wrapper provides a stub for the single
// AXI master interface which can access the shared global memory area on the
// FPGA card, since this capability is not used by simple kernel instances.
//

`timescale 1ns/1ps

// Can be redefined on the synthesis command line.
`define AXI_SLAVE_ADDR_WIDTH 6

// Can be redefined on the synthesis command line.
`define AXI_MASTER_ADDR_WIDTH 64

// Can be redefined on the synthesis command line.
`define AXI_MASTER_DATA_WIDTH 32

// Module name to be substituted in post-synthesis netlist.
module sda_kernel_wrapper_nomem
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

// The AXI master interface is not used for the nomem wrapper.
// verilator lint_off UNUSED
// Specifies the AXI master write address signals.
output [`AXI_MASTER_ADDR_WIDTH-1:0] m_axi_gmem_AWADDR;
output [7:0]                        m_axi_gmem_AWLEN;
output [2:0]                        m_axi_gmem_AWSIZE;
output [1:0]                        m_axi_gmem_AWBURST;
output [1:0]                        m_axi_gmem_AWLOCK;
output [3:0]                        m_axi_gmem_AWREGION;
output [3:0]                        m_axi_gmem_AWCACHE;
output [2:0]                        m_axi_gmem_AWPROT;
output [3:0]                        m_axi_gmem_AWQOS;
output [0:0]                        m_axi_gmem_AWID;
output [0:0]                        m_axi_gmem_AWUSER;
output                              m_axi_gmem_AWVALID;
input                               m_axi_gmem_AWREADY;

// Specifies the AXI master write data signals.
output [`AXI_MASTER_DATA_WIDTH-1:0]   m_axi_gmem_WDATA;
output [`AXI_MASTER_DATA_WIDTH/8-1:0] m_axi_gmem_WSTRB;
output                                m_axi_gmem_WLAST;
output [0:0]                          m_axi_gmem_WID;
output [0:0]                          m_axi_gmem_WUSER;
output                                m_axi_gmem_WVALID;
input                                 m_axi_gmem_WREADY;

// Specifies the AXI master write response signals.
input [1:0] m_axi_gmem_BRESP;
input [0:0] m_axi_gmem_BID;
input [0:0] m_axi_gmem_BUSER;
input       m_axi_gmem_BVALID;
output      m_axi_gmem_BREADY;

// Specifies the AXI master read address signals.
output [`AXI_MASTER_ADDR_WIDTH-1:0] m_axi_gmem_ARADDR;
output [7:0]                        m_axi_gmem_ARLEN;
output [2:0]                        m_axi_gmem_ARSIZE;
output [1:0]                        m_axi_gmem_ARBURST;
output [1:0]                        m_axi_gmem_ARLOCK;
output [3:0]                        m_axi_gmem_ARREGION;
output [3:0]                        m_axi_gmem_ARCACHE;
output [2:0]                        m_axi_gmem_ARPROT;
output [3:0]                        m_axi_gmem_ARQOS;
output [0:0]                        m_axi_gmem_ARID;
output [0:0]                        m_axi_gmem_ARUSER;
output                              m_axi_gmem_ARVALID;
input                               m_axi_gmem_ARREADY;

// Specifies the AXI master read data signals.
input [`AXI_MASTER_DATA_WIDTH-1:0] m_axi_gmem_RDATA;
input [1:0]                        m_axi_gmem_RRESP;
input                              m_axi_gmem_RLAST;
input [0:0]                        m_axi_gmem_RID;
input [0:0]                        m_axi_gmem_RUSER;
input                              m_axi_gmem_RVALID;
output                             m_axi_gmem_RREADY;
// verilator lint_on UNUSED

// Specifies the system level I/O signals.
input  ap_clk;
input  ap_rst_n;

// verilator lint_off SYMRSVDWORD
output interrupt;
// verilator lint_on SYMRSVDWORD

// Reset management signals.
wire [1:0] domain_reset;
reg  [1:0] domain_ready;
wire       action_reset;
wire       axi_reg_reset;

// AXI control interface master write address signals.
wire [`AXI_SLAVE_ADDR_WIDTH-1:0] m_axi_control_AWADDR;
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
wire                             m_axi_control_ARVALID;
wire                             m_axi_control_ARREADY;

// AXI control interface master read data signals.
wire [31:0] m_axi_control_RDATA;
wire [1:0]  m_axi_control_RRESP;
wire        m_axi_control_RVALID;
wire        m_axi_control_RREADY;

// Wrapper control register interface signals.
wire        reg_req;
wire        reg_ack;
wire        reg_write_en;
wire [3:0]  reg_addr;
wire [31:0] reg_wdata;
wire [31:0] reg_rdata;

// Action control signals.
wire go_0r;
wire go_0a;
wire done_0r;
wire done_0a;

// Miscellaneous signals.
wire [`AXI_MASTER_ADDR_WIDTH-1:0] zeros = `AXI_MASTER_ADDR_WIDTH'b0;
wire [31:0] m_axi_control_ext_AWADDR;
wire [31:0] m_axi_control_ext_ARADDR;

// Tie off the unused memory interface signals.
assign m_axi_gmem_AWADDR = zeros [`AXI_MASTER_ADDR_WIDTH-1:0];
assign m_axi_gmem_AWLEN = zeros [7:0];
assign m_axi_gmem_AWSIZE = zeros [2:0];
assign m_axi_gmem_AWBURST = zeros [1:0];
assign m_axi_gmem_AWLOCK = zeros [1:0];
assign m_axi_gmem_AWREGION = zeros [3:0];
assign m_axi_gmem_AWCACHE = zeros [3:0];
assign m_axi_gmem_AWPROT = zeros [2:0];
assign m_axi_gmem_AWQOS = zeros [3:0];
assign m_axi_gmem_AWID = zeros [0:0];
assign m_axi_gmem_AWUSER = zeros [0:0];
assign m_axi_gmem_AWVALID = 1'b0;
assign m_axi_gmem_WDATA = zeros [`AXI_MASTER_DATA_WIDTH-1:0];
assign m_axi_gmem_WSTRB = zeros [`AXI_MASTER_DATA_WIDTH/8-1:0];
assign m_axi_gmem_WLAST = 1'b0;
assign m_axi_gmem_WID = zeros [0:0];
assign m_axi_gmem_WUSER = zeros [0:0];
assign m_axi_gmem_WVALID = 1'b0;
assign m_axi_gmem_BREADY = 1'b1;
assign m_axi_gmem_ARADDR = zeros [`AXI_MASTER_ADDR_WIDTH-1:0];
assign m_axi_gmem_ARLEN = zeros [7:0];
assign m_axi_gmem_ARSIZE = zeros [2:0];
assign m_axi_gmem_ARBURST = zeros [1:0];
assign m_axi_gmem_ARLOCK = zeros [1:0];
assign m_axi_gmem_ARREGION = zeros [3:0];
assign m_axi_gmem_ARCACHE = zeros [3:0];
assign m_axi_gmem_ARPROT = zeros [2:0];
assign m_axi_gmem_ARQOS = zeros [3:0];
assign m_axi_gmem_ARID = zeros [0:0];
assign m_axi_gmem_ARUSER = zeros [0:0];
assign m_axi_gmem_ARVALID = 1'b0;
assign m_axi_gmem_RREADY = 1'b1;

// Instantiate the reset controller. Performs complete reset on the action
// core before releasing the reset on the AXI slave interface.
action_reset_handler #(15, 4, 2) resetHandler
  (~ap_rst_n, domain_reset, domain_ready, ap_clk);

// Automatically generate the reset domain ready signals.
always @(posedge ap_clk)
begin
  if (~ap_rst_n)
    domain_ready <= 2'b0;
  else
    domain_ready <= ~domain_reset;
end

assign action_reset = domain_reset [0];
assign axi_reg_reset = domain_reset [1];

// Instantiate the AXI slave register selection component.
sda_kernel_ctrl_reg_sel #(`AXI_SLAVE_ADDR_WIDTH, 4, 15) kernelCtrlRegSel_u
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
  reg_rdata, ap_clk, axi_reg_reset);

// Instantiate the kernel control register at slave address offset 0.
sda_kernel_ctrl_reg #(4) kernelCtrlReg_u
  (reg_req, reg_ack, reg_write_en, reg_addr, reg_wdata, reg_rdata,
  go_0r, go_0a, done_0r, done_0a, interrupt, ap_clk, axi_reg_reset);

// Extend the slave address bus widths to the standard 32 bit value for the
// action logic core.
assign m_axi_control_ext_AWADDR =
  {zeros [31:`AXI_SLAVE_ADDR_WIDTH], m_axi_control_AWADDR};
assign m_axi_control_ext_ARADDR =
  {zeros [31:`AXI_SLAVE_ADDR_WIDTH], m_axi_control_ARADDR};

/* verilator lint_off PINMISSING */

// Instantiate the simple generated action logic core.
teak_action_top kernelActionTop_u
  (.go_0r(go_0r), .go_0a(go_0a),
  .done_0r(done_0r), .done_0a(done_0a),
  .s_axi_araddr(m_axi_control_ext_ARADDR), .s_axi_arvalid(m_axi_control_ARVALID),
  .s_axi_arready(m_axi_control_ARREADY), .s_axi_rdata(m_axi_control_RDATA),
  .s_axi_rresp(m_axi_control_RRESP), .s_axi_rvalid(m_axi_control_RVALID),
  .s_axi_rready(m_axi_control_RREADY), .s_axi_awaddr(m_axi_control_ext_AWADDR),
  .s_axi_awvalid(m_axi_control_AWVALID), .s_axi_awready(m_axi_control_AWREADY),
  .s_axi_wdata(m_axi_control_WDATA), .s_axi_wstrb(m_axi_control_WSTRB),
  .s_axi_wvalid(m_axi_control_WVALID), .s_axi_wready(m_axi_control_WREADY),
  .s_axi_bresp(m_axi_control_BRESP), .s_axi_bvalid(m_axi_control_BVALID),
  .s_axi_bready(m_axi_control_BREADY), .clk(ap_clk), .reset(action_reset));

/* verilator lint_on PINMISSING */

endmodule
