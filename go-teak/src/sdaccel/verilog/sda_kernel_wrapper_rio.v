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

/* verilator lint_off DECLFILENAME */

`timescale 1ns/1ps

// Can be redefined on the synthesis command line.
`ifndef AXI_SLAVE_ADDR_WIDTH
`define AXI_SLAVE_ADDR_WIDTH 16
`endif

// Can be redefined on the synthesis command line.
`ifndef AXI_MASTER_ADDR_WIDTH
`define AXI_MASTER_ADDR_WIDTH 64
`endif

// Can be redefined on the synthesis command line.
`ifndef AXI_MASTER_DATA_WIDTH
`define AXI_MASTER_DATA_WIDTH 64
`endif

// Can be redefined on the synthesis command line.
`ifndef AXI_MASTER_ID_WIDTH
`define AXI_MASTER_ID_WIDTH 1
`endif

// Can be redefined on the synthesis command line.
`ifndef AXI_MASTER_USER_WIDTH
`define AXI_MASTER_USER_WIDTH 1
`endif

// Can be redefined on the synthesis command line.
`ifndef AXI_MASTER_CACHE_MASK
`define AXI_MASTER_CACHE_MASK 4'b0011
`endif

// Can be redefined on the synthesis command line.
`ifndef KERNEL_ARGUMENT_WIDTH
`define KERNEL_ARGUMENT_WIDTH 1
`endif

// Module name to be substituted in post-synthesis netlist.
module sda_kernel_wrapper_rio
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

// Derives a valid kernel argument width parameter.
parameter KernelArgsWidth =
  (`KERNEL_ARGUMENT_WIDTH > 0) ? `KERNEL_ARGUMENT_WIDTH : 1;

// Derives the address bus width required to access the kernel arguments.
parameter KernelArgsAddrWidth = (KernelArgsWidth <= 16) ? 7 :
  (KernelArgsWidth <= 48) ? 8 : (KernelArgsWidth <= 112) ? 9 : -1;

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
wire reg_retVal_valid;
wire reg_retVal_stop;
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

// AXI master interface intermediate signals.
wire [3:0] m_axi_gmem_local_ARCACHE;
wire [3:0] m_axi_gmem_local_AWCACHE;

// Wrapper control register interface signals.
wire                           reg_req;
wire                           reg_ack;
wire                           reg_ack_0;
wire                           reg_ack_1;
wire                           reg_write_en;
wire [KernelArgsAddrWidth-1:0] reg_addr;
wire [31:0]                    reg_wdata;
wire [3:0]                     reg_wstrb;
wire [31:0]                    reg_rdata;
wire [31:0]                    reg_rdata_0;
wire [31:0]                    reg_rdata_1;

// Action control signals.
wire                          argsValid;
wire [KernelArgsWidth*32-1:0] argsData;
wire                          argsStop;
wire                          retValValid;
wire                          retValStop;

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

assign m_axi_control_AWREADY = 1'b0;
assign m_axi_control_WREADY = 1'b0;
assign m_axi_control_BRESP = 2'b0;
assign m_axi_control_BVALID = 1'b0;
assign m_axi_control_ARREADY = 1'b0;
assign m_axi_control_RDATA = 32'b0;
assign m_axi_control_RRESP = 2'b0;
assign m_axi_control_RVALID = 1'b0;

// Tie off unused WID signal
`ifndef AXI_MASTER_HAS_WID
assign m_axi_gmem_WID = `AXI_MASTER_ID_WIDTH'd0;
`endif

// Apply cache mask to restrict memory access modes if required. The default
// is to restrict accesses to device mode only, as required by the AWS shell.
assign m_axi_gmem_ARCACHE = m_axi_gmem_local_ARCACHE & `AXI_MASTER_CACHE_MASK;
assign m_axi_gmem_AWCACHE = m_axi_gmem_local_AWCACHE & `AXI_MASTER_CACHE_MASK;

// Instantiate the reset controller.
sda_kernel_reset_handler resetHandler_u
  (reg_go_valid, reg_go_holdoff, reg_retVal_valid, reg_retVal_stop, argsValid,
  argsStop, retValValid, retValStop, ~ap_rst_n, wrapper_reset, kernel_reset,
  ap_clk);

// Instantiate the AXI slave register selection component.
sda_kernel_ctrl_reg_sel #(`AXI_SLAVE_ADDR_WIDTH, KernelArgsAddrWidth,
  (1 << KernelArgsAddrWidth)-1) kernelCtrlRegSel_u
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
sda_kernel_ctrl_reg #(KernelArgsAddrWidth, 63) kernelCtrlReg_u
  (reg_req, reg_ack_0, reg_write_en, reg_addr, reg_wdata, reg_wstrb, reg_rdata_0,
  reg_go_valid, reg_go_holdoff, reg_retVal_valid, reg_retVal_stop, interrupt, ap_clk,
  wrapper_reset);

// Instantiate the kernel parameter memory.
sda_kernel_args #(KernelArgsAddrWidth, 64, (1 << KernelArgsAddrWidth) - 1,
  KernelArgsWidth) kernelCtrlParam_u
  (reg_req, reg_ack_1, reg_write_en, reg_addr, reg_wdata, reg_wstrb, reg_rdata_1,
  argsData, ap_clk, wrapper_reset);

assign reg_ack = reg_ack_0 | reg_ack_1;
assign reg_rdata = reg_rdata_0 | reg_rdata_1 | zeros;

// Extend the slave address bus widths to the standard 32 bit value for the
// action logic core.
assign m_axi_control_ext_AWADDR =
  {zeros [31:`AXI_SLAVE_ADDR_WIDTH], m_axi_control_AWADDR};
assign m_axi_control_ext_ARADDR =
  {zeros [31:`AXI_SLAVE_ADDR_WIDTH], m_axi_control_ARADDR};

// Directly instantiate the SMI wrapper toplevel which exposes auto-generated
// native AXI signalling at the interface. The AXI bus parameters are hard
// coded in the generated SMI wrapper and must match the parameters defined
// for this wrapper.
`ifdef KERNEL_HAS_SMI_ADAPTOR
llvm_kernel_smi_adaptor kernel_smi_adaptor_u
(
  argsValid,
  argsData,
  argsStop,
  retValValid,
  retValStop,

  m_axi_gmem_AWADDR,
  m_axi_gmem_AWLEN,
  m_axi_gmem_AWSIZE,
  m_axi_gmem_AWBURST,
  m_axi_gmem_AWLOCK[0],
  m_axi_gmem_local_AWCACHE,
  m_axi_gmem_AWPROT,
  m_axi_gmem_AWQOS,
  m_axi_gmem_AWREGION,
  m_axi_gmem_AWUSER,
  m_axi_gmem_AWID,
  m_axi_gmem_AWVALID,
  m_axi_gmem_AWREADY,

  m_axi_gmem_WDATA,
  m_axi_gmem_WSTRB,
  m_axi_gmem_WLAST,
  m_axi_gmem_WUSER,
`ifdef AXI_MASTER_HAS_WID
  m_axi_gmem_WID,
`endif
  m_axi_gmem_WVALID,
  m_axi_gmem_WREADY,

  m_axi_gmem_BRESP,
  m_axi_gmem_BUSER,
  m_axi_gmem_BID,
  m_axi_gmem_BVALID,
  m_axi_gmem_BREADY,

  m_axi_gmem_ARADDR,
  m_axi_gmem_ARLEN,
  m_axi_gmem_ARSIZE,
  m_axi_gmem_ARBURST,
  m_axi_gmem_ARLOCK[0],
  m_axi_gmem_local_ARCACHE,
  m_axi_gmem_ARPROT,
  m_axi_gmem_ARQOS,
  m_axi_gmem_ARREGION,
  m_axi_gmem_ARUSER,
  m_axi_gmem_ARID,
  m_axi_gmem_ARVALID,
  m_axi_gmem_ARREADY,

  m_axi_gmem_RDATA,
  m_axi_gmem_RRESP,
  m_axi_gmem_RLAST,
  m_axi_gmem_RUSER,
  m_axi_gmem_RID,
  m_axi_gmem_RVALID,
  m_axi_gmem_RREADY,

  ap_clk,
  kernel_reset
);
`endif

// Instantiate the AXI wrapper if the kernel does not use native AXI signalling.
`ifndef KERNEL_HAS_SMI_ADAPTOR
sda_kernel_axi_adaptor #(
  `AXI_MASTER_ADDR_WIDTH,
  `AXI_MASTER_DATA_WIDTH,
  `AXI_MASTER_USER_WIDTH,
  `AXI_MASTER_ID_WIDTH,
  KernelArgsWidth) kernel_axi_adaptor_u
(
  argsValid,
  argsData,
  argsStop,
  retValValid,
  retValStop,

  m_axi_gmem_AWADDR,
  m_axi_gmem_AWLEN,
  m_axi_gmem_AWSIZE,
  m_axi_gmem_AWBURST,
  m_axi_gmem_AWLOCK[0],
  m_axi_gmem_local_AWCACHE,
  m_axi_gmem_AWPROT,
  m_axi_gmem_AWQOS,
  m_axi_gmem_AWREGION,
  m_axi_gmem_AWUSER,
  m_axi_gmem_AWID,
  m_axi_gmem_AWVALID,
  m_axi_gmem_AWREADY,

  m_axi_gmem_WDATA,
  m_axi_gmem_WSTRB,
  m_axi_gmem_WLAST,
  m_axi_gmem_WUSER,
  m_axi_gmem_WVALID,
  m_axi_gmem_WREADY,

  m_axi_gmem_BRESP,
  m_axi_gmem_BUSER,
  m_axi_gmem_BID,
  m_axi_gmem_BVALID,
  m_axi_gmem_BREADY,

  m_axi_gmem_ARADDR,
  m_axi_gmem_ARLEN,
  m_axi_gmem_ARSIZE,
  m_axi_gmem_ARBURST,
  m_axi_gmem_ARLOCK[0],
  m_axi_gmem_local_ARCACHE,
  m_axi_gmem_ARPROT,
  m_axi_gmem_ARQOS,
  m_axi_gmem_ARREGION,
  m_axi_gmem_ARUSER,
  m_axi_gmem_ARID,
  m_axi_gmem_ARVALID,
  m_axi_gmem_ARREADY,

  m_axi_gmem_RDATA,
  m_axi_gmem_RRESP,
  m_axi_gmem_RLAST,
  m_axi_gmem_RUSER,
  m_axi_gmem_RID,
  m_axi_gmem_RVALID,
  m_axi_gmem_RREADY,

  ap_clk,
  kernel_reset
);
`endif

endmodule

/* verilator lint_on DECLFILENAME */
