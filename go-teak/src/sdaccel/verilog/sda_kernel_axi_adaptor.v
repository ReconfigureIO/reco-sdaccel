//
// (c) 2018 ReconfigureIO
//
// <COPYRIGHT TERMS>
//

//
// Provides a wrapper for kernel logic which is generated using LLVM and the
// AXI library. It provides SELF to AXI input/output protocol conversion so
// that the generated logic can be inserted into the standard AXI based wrapper.
// Note that the AXI library does not include the WID line, so this component
// assumes that the AXI_MASTER_HAS_WID directive is not enabled.
//

`timescale 1ns/1ps
`ifndef KERNEL_HAS_SMI_ADAPTOR

module sda_kernel_axi_adaptor
  (argsValid, argsData, argsStop, retValValid, retValStop, m_axi_gmem_awaddr,
  m_axi_gmem_awlen, m_axi_gmem_awsize, m_axi_gmem_awburst, m_axi_gmem_awlock,
  m_axi_gmem_awcache, m_axi_gmem_awprot, m_axi_gmem_awqos, m_axi_gmem_awregion,
  m_axi_gmem_awuser, m_axi_gmem_awid, m_axi_gmem_awvalid, m_axi_gmem_awready,
  m_axi_gmem_wdata, m_axi_gmem_wstrb, m_axi_gmem_wlast, m_axi_gmem_wuser,
  m_axi_gmem_wvalid, m_axi_gmem_wready, m_axi_gmem_bresp, m_axi_gmem_buser,
  m_axi_gmem_bid, m_axi_gmem_bvalid, m_axi_gmem_bready, m_axi_gmem_araddr,
  m_axi_gmem_arlen, m_axi_gmem_arsize, m_axi_gmem_arburst, m_axi_gmem_arlock,
  m_axi_gmem_arcache, m_axi_gmem_arprot, m_axi_gmem_arqos, m_axi_gmem_arregion,
  m_axi_gmem_aruser, m_axi_gmem_arid, m_axi_gmem_arvalid, m_axi_gmem_arready,
  m_axi_gmem_rdata, m_axi_gmem_rresp, m_axi_gmem_rlast, m_axi_gmem_ruser,
  m_axi_gmem_rid, m_axi_gmem_rvalid, m_axi_gmem_rready, ap_clk, kernel_reset);

// Specify the AXI master address bus width.
parameter AxiMasterAddrWidth = 64;

// Specify the AXI master data bus width.
parameter AxiMasterDataWidth = 64;

// Specify the AXI master user data width.
parameter AxiMasterUserWidth = 1;

// Specify the AXI master ID width.
parameter AxiMasterIdWidth = 1;

// Specify the required kernel arguments width parameter.
parameter KernelArgsWidth = 1;

// Specifies the arguments input and return value cohntrol signals.
input                          argsValid;
input [32*KernelArgsWidth-1:0] argsData;
output                         argsStop;
output                         retValValid;
input                          retValStop;

// Specifies the AXI master write address signals.
output [AxiMasterAddrWidth-1:0] m_axi_gmem_awaddr;
output [7:0]                    m_axi_gmem_awlen;
output [2:0]                    m_axi_gmem_awsize;
output [1:0]                    m_axi_gmem_awburst;
output                          m_axi_gmem_awlock;
output [3:0]                    m_axi_gmem_awcache;
output [2:0]                    m_axi_gmem_awprot;
output [3:0]                    m_axi_gmem_awqos;
output [3:0]                    m_axi_gmem_awregion;
output [AxiMasterUserWidth-1:0] m_axi_gmem_awuser;
output [AxiMasterIdWidth-1:0]   m_axi_gmem_awid;
output                          m_axi_gmem_awvalid;
input                           m_axi_gmem_awready;

// Specifies the AXI master write data signals.
output [AxiMasterDataWidth-1:0]   m_axi_gmem_wdata;
output [AxiMasterDataWidth/8-1:0] m_axi_gmem_wstrb;
output                            m_axi_gmem_wlast;
output [AxiMasterUserWidth-1:0]   m_axi_gmem_wuser;
output                            m_axi_gmem_wvalid;
input                             m_axi_gmem_wready;

// Specifies the AXI master write response signals.
input [1:0]                    m_axi_gmem_bresp;
input [AxiMasterUserWidth-1:0] m_axi_gmem_buser;
input [AxiMasterIdWidth-1:0]   m_axi_gmem_bid;
input                          m_axi_gmem_bvalid;
output                         m_axi_gmem_bready;

// Specifies the AXI master read address signals.
output [AxiMasterAddrWidth-1:0] m_axi_gmem_araddr;
output [7:0]                    m_axi_gmem_arlen;
output [2:0]                    m_axi_gmem_arsize;
output [1:0]                    m_axi_gmem_arburst;
output                          m_axi_gmem_arlock;
output [3:0]                    m_axi_gmem_arcache;
output [2:0]                    m_axi_gmem_arprot;
output [3:0]                    m_axi_gmem_arqos;
output [3:0]                    m_axi_gmem_arregion;
output [AxiMasterUserWidth-1:0] m_axi_gmem_aruser;
output [AxiMasterIdWidth-1:0]   m_axi_gmem_arid;
output                          m_axi_gmem_arvalid;
input                           m_axi_gmem_arready;

// Specifies the AXI master read data signals.
input [AxiMasterDataWidth-1:0] m_axi_gmem_rdata;
input [1:0]                    m_axi_gmem_rresp;
input                          m_axi_gmem_rlast;
input [AxiMasterUserWidth-1:0] m_axi_gmem_ruser;
input [AxiMasterIdWidth-1:0]   m_axi_gmem_rid;
input                          m_axi_gmem_rvalid;
output                         m_axi_gmem_rready;

// Specify clock and reset signals.
input ap_clk;
input kernel_reset;

// Evaluate width of concatenated SELF bus signals.
parameter ReadAddrWidth = 29 + AxiMasterAddrWidth + AxiMasterIdWidth + AxiMasterUserWidth;
parameter ReadDataWidth = 3 + AxiMasterDataWidth + AxiMasterIdWidth + AxiMasterUserWidth;
parameter WriteAddrWidth = 29 + AxiMasterAddrWidth + AxiMasterIdWidth + AxiMasterUserWidth;
parameter WriteRespWidth = 2 + AxiMasterIdWidth + AxiMasterUserWidth;
parameter WriteDataWidth = 1 + 9*AxiMasterDataWidth/8 + AxiMasterUserWidth;

// Specify the concatenated SELF bus signals.
wire                     axiReadAddrValid;
wire [ReadAddrWidth-1:0] axiReadAddrBus;
wire                     axiReadAddrStop;

wire                     axiReadDataValid;
wire [ReadDataWidth-1:0] axiReadDataBus;
wire                     axiReadDataStop;

wire                      axiWriteAddrValid;
wire [WriteAddrWidth-1:0] axiWriteAddrBus;
wire                      axiWriteAddrStop;

wire                      axiWriteDataValid;
wire [WriteDataWidth-1:0] axiWriteDataBus;
wire                      axiWriteDataStop;

wire                      axiWriteRespValid;
wire [WriteRespWidth-1:0] axiWriteRespBus;
wire                      axiWriteRespStop;

// Insert SMI/AXI conversion buffers. Note that the order of signals in the
// concatenated vectors must correspond to the order used in the corresponding
// Go library AXI protocol data structures.
axiOutputBuffer #(ReadAddrWidth) axiReadAddrBuffer (
  axiReadAddrValid,
  axiReadAddrBus,
  axiReadAddrStop,
  m_axi_gmem_arvalid,
  { m_axi_gmem_aruser,
    m_axi_gmem_arqos,
    m_axi_gmem_arregion,
    m_axi_gmem_arprot,
    m_axi_gmem_arcache,
    m_axi_gmem_arlock,
    m_axi_gmem_arburst,
    m_axi_gmem_arsize,
    m_axi_gmem_arlen,
    m_axi_gmem_araddr,
    m_axi_gmem_arid},
  m_axi_gmem_arready,
  ap_clk, kernel_reset);

axiInputBuffer #(ReadDataWidth) axiReadDataBuffer (
  m_axi_gmem_rvalid,
  { m_axi_gmem_ruser,
    m_axi_gmem_rlast,
    m_axi_gmem_rresp,
    m_axi_gmem_rdata,
    m_axi_gmem_rid},
  m_axi_gmem_rready,
  axiReadDataValid,
  axiReadDataBus,
  axiReadDataStop,
  ap_clk, kernel_reset);

axiOutputBuffer #(WriteAddrWidth) axiWriteAddrBuffer (
  axiWriteAddrValid,
  axiWriteAddrBus,
  axiWriteAddrStop,
  m_axi_gmem_awvalid,
  { m_axi_gmem_awuser,
    m_axi_gmem_awqos,
    m_axi_gmem_awregion,
    m_axi_gmem_awprot,
    m_axi_gmem_awcache,
    m_axi_gmem_awlock,
    m_axi_gmem_awburst,
    m_axi_gmem_awsize,
    m_axi_gmem_awlen,
    m_axi_gmem_awaddr,
    m_axi_gmem_awid},
  m_axi_gmem_awready,
  ap_clk, kernel_reset);

axiOutputBuffer #(WriteDataWidth) axiWriteDataBuffer (
  axiWriteDataValid,
  axiWriteDataBus,
  axiWriteDataStop,
  m_axi_gmem_wvalid,
  { m_axi_gmem_wuser,
    m_axi_gmem_wlast,
    m_axi_gmem_wstrb,
    m_axi_gmem_wdata
  },
  m_axi_gmem_wready,
  ap_clk, kernel_reset);

axiInputBuffer #(WriteRespWidth) axiWriteRespBuffer (
  m_axi_gmem_bvalid,
  { m_axi_gmem_buser,
    m_axi_gmem_bresp,
    m_axi_gmem_bid},
  m_axi_gmem_bready,
  axiWriteRespValid,
  axiWriteRespBus,
  axiWriteRespStop,
  ap_clk, kernel_reset);

// Instantiate the simple generated action logic core.
teak___x24_main_x2e_Top_x3a_public kernelActionTop_u (
  argsValid,
`ifdef KERNEL_ARGS_DATA
  argsData,
`endif
  argsStop,

  retValValid,
  retValStop,

  axiReadAddrValid,
  axiReadAddrBus,
  axiReadAddrStop,

  axiReadDataValid,
  axiReadDataBus,
  axiReadDataStop,

  axiWriteAddrValid,
  axiWriteAddrBus,
  axiWriteAddrStop,

  axiWriteDataValid,
  axiWriteDataBus,
  axiWriteDataStop,

  axiWriteRespValid,
  axiWriteRespBus,
  axiWriteRespStop,

  ap_clk,
  kernel_reset
);

endmodule
`endif
