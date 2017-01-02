// Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2016.3_sdx (lin64) Build 1721784 Tue Nov 29 22:12:24 MST 2016
// Date        : Fri Dec 30 08:22:41 2016
// Host        : hms-beatdown running 64-bit Ubuntu 15.10
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ xcl_design_flash_programmer_0_sim_netlist.v
// Design      : xcl_design_flash_programmer_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xcku060-ffva1156-2-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* C_S_AXI_ADDR_WIDTH = "8" *) (* C_S_AXI_DATA_WIDTH = "32" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_AXI_to_BPI
   (flash_rst,
    flash_clk,
    flash_A,
    flash_DQ,
    flash_OE_N,
    flash_WE_N,
    flash_ADV_N,
    S_AXI_ACLK,
    S_AXI_ARESETN,
    S_AXI_AWADDR,
    S_AXI_AWPROT,
    S_AXI_AWVALID,
    S_AXI_AWREADY,
    S_AXI_WDATA,
    S_AXI_WSTRB,
    S_AXI_WVALID,
    S_AXI_WREADY,
    S_AXI_BRESP,
    S_AXI_BVALID,
    S_AXI_BREADY,
    S_AXI_ARADDR,
    S_AXI_ARPROT,
    S_AXI_ARVALID,
    S_AXI_ARREADY,
    S_AXI_RDATA,
    S_AXI_RRESP,
    S_AXI_RVALID,
    S_AXI_RREADY);
  input flash_rst;
  input flash_clk;
  output [26:1]flash_A;
  inout [15:4]flash_DQ;
  output flash_OE_N;
  output flash_WE_N;
  output flash_ADV_N;
  input S_AXI_ACLK;
  input S_AXI_ARESETN;
  input [7:0]S_AXI_AWADDR;
  input [2:0]S_AXI_AWPROT;
  input S_AXI_AWVALID;
  output S_AXI_AWREADY;
  input [31:0]S_AXI_WDATA;
  input [3:0]S_AXI_WSTRB;
  input S_AXI_WVALID;
  output S_AXI_WREADY;
  output [1:0]S_AXI_BRESP;
  output S_AXI_BVALID;
  input S_AXI_BREADY;
  input [7:0]S_AXI_ARADDR;
  input [2:0]S_AXI_ARPROT;
  input S_AXI_ARVALID;
  output S_AXI_ARREADY;
  output [31:0]S_AXI_RDATA;
  output [1:0]S_AXI_RRESP;
  output S_AXI_RVALID;
  input S_AXI_RREADY;

  wire \<const0> ;
  wire \<const1> ;
  wire S_AXI_ACLK;
  wire S_AXI_ARESETN;
  wire S_AXI_ARREADY;
  wire S_AXI_ARVALID;
  wire S_AXI_AWREADY;
  wire S_AXI_AWVALID;
  wire S_AXI_BREADY;
  wire S_AXI_BVALID;
  wire [31:0]S_AXI_RDATA;
  wire S_AXI_RREADY;
  wire S_AXI_RVALID;
  wire [31:0]S_AXI_WDATA;
  wire S_AXI_WREADY;
  wire S_AXI_WVALID;
  wire axi_arready_i_1_n_0;
  wire axi_awready_i_1_n_0;
  wire axi_awready_i_2_n_0;
  wire axi_bvalid_i_1_n_0;
  wire axi_rvalid_i_1_n_0;
  wire axi_wready_i_1_n_0;
  wire [31:0]fifo_data_out;
  wire fifo_empty;
  wire fifo_full;
  wire fifo_rd_en;
  wire [24:1]\^flash_A ;
  wire flash_CS_N;
  wire [15:4]flash_DQ;
  wire [15:0]flash_DQ_I;
  wire [15:0]flash_DQ_O;
  wire flash_OE_N;
  wire flash_WE_N;
  wire flash_clk;
  wire flash_rst;
  wire flash_tri_ctrl;
  wire prog_rdy;
  wire [7:0]prom_sr;
  (* async_reg = "true" *) wire [31:0]reg_data_out;
  (* async_reg = "true" *) wire [31:0]reg_data_out_async1;
  wire slv_reg_rden;
  wire slv_reg_wren;
  wire NLW_STARTUPE3_inst_CFGCLK_UNCONNECTED;
  wire NLW_STARTUPE3_inst_CFGMCLK_UNCONNECTED;
  wire NLW_STARTUPE3_inst_EOS_UNCONNECTED;
  wire NLW_STARTUPE3_inst_PREQ_UNCONNECTED;
  wire NLW_bitstream_fifo_i_full_UNCONNECTED;
  wire [2:0]NLW_programmer_i_ERROR_UNCONNECTED;

  assign S_AXI_BRESP[1] = \<const0> ;
  assign S_AXI_BRESP[0] = \<const0> ;
  assign S_AXI_RRESP[1] = \<const0> ;
  assign S_AXI_RRESP[0] = \<const0> ;
  assign flash_A[26] = \<const0> ;
  assign flash_A[25] = \<const1> ;
  assign flash_A[24:1] = \^flash_A [24:1];
  assign flash_ADV_N = \<const0> ;
  GND GND
       (.G(\<const0> ));
  (* box_type = "PRIMITIVE" *) 
  STARTUPE3 #(
    .PROG_USR("FALSE"),
    .SIM_CCLK_FREQ(0.000000)) 
    STARTUPE3_inst
       (.CFGCLK(NLW_STARTUPE3_inst_CFGCLK_UNCONNECTED),
        .CFGMCLK(NLW_STARTUPE3_inst_CFGMCLK_UNCONNECTED),
        .DI(flash_DQ_I[3:0]),
        .DO(flash_DQ_O[3:0]),
        .DTS({flash_tri_ctrl,flash_tri_ctrl,flash_tri_ctrl,flash_tri_ctrl}),
        .EOS(NLW_STARTUPE3_inst_EOS_UNCONNECTED),
        .FCSBO(flash_CS_N),
        .FCSBTS(flash_tri_ctrl),
        .GSR(1'b0),
        .GTS(1'b0),
        .KEYCLEARB(1'b1),
        .PACK(1'b0),
        .PREQ(NLW_STARTUPE3_inst_PREQ_UNCONNECTED),
        .USRCCLKO(1'b0),
        .USRCCLKTS(1'b0),
        .USRDONEO(1'b0),
        .USRDONETS(1'b0));
  VCC VCC
       (.P(\<const1> ));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT2 #(
    .INIT(4'h2)) 
    axi_arready_i_1
       (.I0(S_AXI_ARVALID),
        .I1(S_AXI_ARREADY),
        .O(axi_arready_i_1_n_0));
  FDRE axi_arready_reg
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(axi_arready_i_1_n_0),
        .Q(S_AXI_ARREADY),
        .R(axi_awready_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    axi_awready_i_1
       (.I0(S_AXI_ARESETN),
        .O(axi_awready_i_1_n_0));
  LUT5 #(
    .INIT(32'h00000400)) 
    axi_awready_i_2
       (.I0(S_AXI_BVALID),
        .I1(S_AXI_WVALID),
        .I2(reg_data_out[17]),
        .I3(S_AXI_AWVALID),
        .I4(S_AXI_AWREADY),
        .O(axi_awready_i_2_n_0));
  FDRE axi_awready_reg
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(axi_awready_i_2_n_0),
        .Q(S_AXI_AWREADY),
        .R(axi_awready_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000FFFF80008000)) 
    axi_bvalid_i_1
       (.I0(S_AXI_AWREADY),
        .I1(S_AXI_WVALID),
        .I2(S_AXI_WREADY),
        .I3(S_AXI_AWVALID),
        .I4(S_AXI_BREADY),
        .I5(S_AXI_BVALID),
        .O(axi_bvalid_i_1_n_0));
  FDRE axi_bvalid_reg
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(axi_bvalid_i_1_n_0),
        .Q(S_AXI_BVALID),
        .R(axi_awready_i_1_n_0));
  LUT3 #(
    .INIT(8'h40)) 
    \axi_rdata[31]_i_1 
       (.I0(S_AXI_RVALID),
        .I1(S_AXI_ARVALID),
        .I2(S_AXI_ARREADY),
        .O(slv_reg_rden));
  FDRE \axi_rdata_reg[0] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_rden),
        .D(reg_data_out[0]),
        .Q(S_AXI_RDATA[0]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[10] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_rden),
        .D(reg_data_out[10]),
        .Q(S_AXI_RDATA[10]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[11] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_rden),
        .D(reg_data_out[11]),
        .Q(S_AXI_RDATA[11]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[12] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_rden),
        .D(reg_data_out[12]),
        .Q(S_AXI_RDATA[12]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[13] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_rden),
        .D(reg_data_out[13]),
        .Q(S_AXI_RDATA[13]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[14] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_rden),
        .D(reg_data_out[14]),
        .Q(S_AXI_RDATA[14]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[15] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_rden),
        .D(reg_data_out[15]),
        .Q(S_AXI_RDATA[15]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[16] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_rden),
        .D(reg_data_out[16]),
        .Q(S_AXI_RDATA[16]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[17] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_rden),
        .D(reg_data_out[17]),
        .Q(S_AXI_RDATA[17]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[18] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_rden),
        .D(reg_data_out[18]),
        .Q(S_AXI_RDATA[18]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[19] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_rden),
        .D(reg_data_out[19]),
        .Q(S_AXI_RDATA[19]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[1] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_rden),
        .D(reg_data_out[1]),
        .Q(S_AXI_RDATA[1]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[20] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_rden),
        .D(reg_data_out[20]),
        .Q(S_AXI_RDATA[20]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[21] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_rden),
        .D(reg_data_out[21]),
        .Q(S_AXI_RDATA[21]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[22] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_rden),
        .D(reg_data_out[22]),
        .Q(S_AXI_RDATA[22]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[23] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_rden),
        .D(reg_data_out[23]),
        .Q(S_AXI_RDATA[23]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[24] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_rden),
        .D(reg_data_out[24]),
        .Q(S_AXI_RDATA[24]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[25] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_rden),
        .D(reg_data_out[25]),
        .Q(S_AXI_RDATA[25]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[26] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_rden),
        .D(reg_data_out[26]),
        .Q(S_AXI_RDATA[26]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[27] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_rden),
        .D(reg_data_out[27]),
        .Q(S_AXI_RDATA[27]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[28] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_rden),
        .D(reg_data_out[28]),
        .Q(S_AXI_RDATA[28]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[29] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_rden),
        .D(reg_data_out[29]),
        .Q(S_AXI_RDATA[29]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[2] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_rden),
        .D(reg_data_out[2]),
        .Q(S_AXI_RDATA[2]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[30] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_rden),
        .D(reg_data_out[30]),
        .Q(S_AXI_RDATA[30]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[31] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_rden),
        .D(reg_data_out[31]),
        .Q(S_AXI_RDATA[31]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[3] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_rden),
        .D(reg_data_out[3]),
        .Q(S_AXI_RDATA[3]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[4] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_rden),
        .D(reg_data_out[4]),
        .Q(S_AXI_RDATA[4]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[5] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_rden),
        .D(reg_data_out[5]),
        .Q(S_AXI_RDATA[5]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[6] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_rden),
        .D(reg_data_out[6]),
        .Q(S_AXI_RDATA[6]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[7] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_rden),
        .D(reg_data_out[7]),
        .Q(S_AXI_RDATA[7]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[8] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_rden),
        .D(reg_data_out[8]),
        .Q(S_AXI_RDATA[8]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[9] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_rden),
        .D(reg_data_out[9]),
        .Q(S_AXI_RDATA[9]),
        .R(axi_awready_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT4 #(
    .INIT(16'h08F8)) 
    axi_rvalid_i_1
       (.I0(S_AXI_ARREADY),
        .I1(S_AXI_ARVALID),
        .I2(S_AXI_RVALID),
        .I3(S_AXI_RREADY),
        .O(axi_rvalid_i_1_n_0));
  FDRE axi_rvalid_reg
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(axi_rvalid_i_1_n_0),
        .Q(S_AXI_RVALID),
        .R(axi_awready_i_1_n_0));
  LUT5 #(
    .INIT(32'h00000400)) 
    axi_wready_i_1
       (.I0(S_AXI_BVALID),
        .I1(S_AXI_WVALID),
        .I2(reg_data_out[17]),
        .I3(S_AXI_AWVALID),
        .I4(S_AXI_WREADY),
        .O(axi_wready_i_1_n_0));
  FDRE axi_wready_reg
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(axi_wready_i_1_n_0),
        .Q(S_AXI_WREADY),
        .R(axi_awready_i_1_n_0));
  (* box_type = "PRIMITIVE" *) 
  IOBUF #(
    .IOSTANDARD("DEFAULT")) 
    \bidir_IO[10].IOBUF_i 
       (.I(flash_DQ_O[10]),
        .IO(flash_DQ[10]),
        .O(flash_DQ_I[10]),
        .T(flash_tri_ctrl));
  (* box_type = "PRIMITIVE" *) 
  IOBUF #(
    .IOSTANDARD("DEFAULT")) 
    \bidir_IO[11].IOBUF_i 
       (.I(flash_DQ_O[11]),
        .IO(flash_DQ[11]),
        .O(flash_DQ_I[11]),
        .T(flash_tri_ctrl));
  (* box_type = "PRIMITIVE" *) 
  IOBUF #(
    .IOSTANDARD("DEFAULT")) 
    \bidir_IO[12].IOBUF_i 
       (.I(flash_DQ_O[12]),
        .IO(flash_DQ[12]),
        .O(flash_DQ_I[12]),
        .T(flash_tri_ctrl));
  (* box_type = "PRIMITIVE" *) 
  IOBUF #(
    .IOSTANDARD("DEFAULT")) 
    \bidir_IO[13].IOBUF_i 
       (.I(flash_DQ_O[13]),
        .IO(flash_DQ[13]),
        .O(flash_DQ_I[13]),
        .T(flash_tri_ctrl));
  (* box_type = "PRIMITIVE" *) 
  IOBUF #(
    .IOSTANDARD("DEFAULT")) 
    \bidir_IO[14].IOBUF_i 
       (.I(flash_DQ_O[14]),
        .IO(flash_DQ[14]),
        .O(flash_DQ_I[14]),
        .T(flash_tri_ctrl));
  (* box_type = "PRIMITIVE" *) 
  IOBUF #(
    .IOSTANDARD("DEFAULT")) 
    \bidir_IO[15].IOBUF_i 
       (.I(flash_DQ_O[15]),
        .IO(flash_DQ[15]),
        .O(flash_DQ_I[15]),
        .T(flash_tri_ctrl));
  (* box_type = "PRIMITIVE" *) 
  IOBUF #(
    .IOSTANDARD("DEFAULT")) 
    \bidir_IO[4].IOBUF_i 
       (.I(flash_DQ_O[4]),
        .IO(flash_DQ[4]),
        .O(flash_DQ_I[4]),
        .T(flash_tri_ctrl));
  (* box_type = "PRIMITIVE" *) 
  IOBUF #(
    .IOSTANDARD("DEFAULT")) 
    \bidir_IO[5].IOBUF_i 
       (.I(flash_DQ_O[5]),
        .IO(flash_DQ[5]),
        .O(flash_DQ_I[5]),
        .T(flash_tri_ctrl));
  (* box_type = "PRIMITIVE" *) 
  IOBUF #(
    .IOSTANDARD("DEFAULT")) 
    \bidir_IO[6].IOBUF_i 
       (.I(flash_DQ_O[6]),
        .IO(flash_DQ[6]),
        .O(flash_DQ_I[6]),
        .T(flash_tri_ctrl));
  (* box_type = "PRIMITIVE" *) 
  IOBUF #(
    .IOSTANDARD("DEFAULT")) 
    \bidir_IO[7].IOBUF_i 
       (.I(flash_DQ_O[7]),
        .IO(flash_DQ[7]),
        .O(flash_DQ_I[7]),
        .T(flash_tri_ctrl));
  (* box_type = "PRIMITIVE" *) 
  IOBUF #(
    .IOSTANDARD("DEFAULT")) 
    \bidir_IO[8].IOBUF_i 
       (.I(flash_DQ_O[8]),
        .IO(flash_DQ[8]),
        .O(flash_DQ_I[8]),
        .T(flash_tri_ctrl));
  (* box_type = "PRIMITIVE" *) 
  IOBUF #(
    .IOSTANDARD("DEFAULT")) 
    \bidir_IO[9].IOBUF_i 
       (.I(flash_DQ_O[9]),
        .IO(flash_DQ[9]),
        .O(flash_DQ_I[9]),
        .T(flash_tri_ctrl));
  (* CHECK_LICENSE_TYPE = "bitstream_fifo,fifo_generator_v13_1_2,{}" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* x_core_info = "fifo_generator_v13_1_2,Vivado 2016.3_sdx" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bitstream_fifo bitstream_fifo_i
       (.din(S_AXI_WDATA),
        .dout(fifo_data_out),
        .empty(fifo_empty),
        .full(NLW_bitstream_fifo_i_full_UNCONNECTED),
        .prog_full(fifo_full),
        .rd_clk(flash_clk),
        .rd_en(fifo_rd_en),
        .rst(flash_rst),
        .wr_clk(S_AXI_ACLK),
        .wr_en(slv_reg_wren));
  LUT4 #(
    .INIT(16'h8000)) 
    bitstream_fifo_i_i_1
       (.I0(S_AXI_AWREADY),
        .I1(S_AXI_WVALID),
        .I2(S_AXI_WREADY),
        .I3(S_AXI_AWVALID),
        .O(slv_reg_wren));
  (* DONT_TOUCH *) 
  (* blk_lck_setup_cmd = "6'b000010" *) 
  (* command = "6'b000001" *) 
  (* eras_chk_SR = "6'b010000" *) 
  (* eras_chk_pollcnt = "6'b010001" *) 
  (* eras_clear_SR = "6'b100100" *) 
  (* eras_clear_SR_1 = "6'b100101" *) 
  (* eras_confirm = "6'b001100" *) 
  (* eras_confirm_1 = "6'b001101" *) 
  (* eras_rd_SR = "6'b001110" *) 
  (* eras_rd_SR_1 = "6'b001111" *) 
  (* eras_rd_SR_2 = "6'b100000" *) 
  (* eras_setup = "6'b001011" *) 
  (* error = "6'b011111" *) 
  (* idle = "6'b000000" *) 
  (* prog_buf = "6'b011001" *) 
  (* prog_buf_1 = "6'b101011" *) 
  (* prog_bufprog_chk_SR = "6'b011100" *) 
  (* prog_bufprog_chk_pollcnt = "6'b011101" *) 
  (* prog_bufprog_rd_SR = "6'b011010" *) 
  (* prog_bufprog_rd_SR_1 = "6'b011011" *) 
  (* prog_chk_SR = "6'b010101" *) 
  (* prog_chk_data_count = "6'b011000" *) 
  (* prog_chk_pollcnt = "6'b010110" *) 
  (* prog_load_addr = "6'b010111" *) 
  (* prog_load_addr_1 = "6'b100110" *) 
  (* prog_load_addr_2 = "6'b100111" *) 
  (* prog_load_buffer = "6'b100010" *) 
  (* prog_load_buffer_underrun = "6'b101000" *) 
  (* prog_load_buffer_underrun1 = "6'b101001" *) 
  (* prog_load_buffer_underrun2 = "6'b101010" *) 
  (* prog_rd_SR = "6'b010011" *) 
  (* prog_rd_SR_1 = "6'b010100" *) 
  (* prog_rd_SR_2 = "6'b100001" *) 
  (* prog_setup = "6'b010010" *) 
  (* rd_id = "6'b000101" *) 
  (* rd_id_1 = "6'b000110" *) 
  (* unlck_chk_id = "6'b001001" *) 
  (* unlck_chk_pollcnt = "6'b001010" *) 
  (* unlck_cmd = "6'b000011" *) 
  (* unlck_cmd_1 = "6'b000100" *) 
  (* unlck_rd_SR = "6'b000111" *) 
  (* unlck_rd_SR_1 = "6'b001000" *) 
  (* unlck_rd_SR_2 = "6'b011110" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_programmer programmer_i
       (.A(\^flash_A ),
        .CLK(flash_clk),
        .CS_N(flash_CS_N),
        .DATA(fifo_data_out),
        .DQ_I(flash_DQ_I),
        .DQ_O(flash_DQ_O),
        .ERROR(NLW_programmer_i_ERROR_UNCONNECTED[2:0]),
        .FIFO_EMPTY(fifo_empty),
        .FIFO_RD_EN(fifo_rd_en),
        .OE_N(flash_OE_N),
        .PROG_RDY(prog_rdy),
        .PROM_SR(prom_sr),
        .RST(flash_rst),
        .TRI_CTRL(flash_tri_ctrl),
        .WE_N(flash_WE_N));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \reg_data_out_async1_reg[0] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(prom_sr[0]),
        .Q(reg_data_out_async1[0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \reg_data_out_async1_reg[10] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(1'b0),
        .Q(reg_data_out_async1[10]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \reg_data_out_async1_reg[11] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(1'b0),
        .Q(reg_data_out_async1[11]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \reg_data_out_async1_reg[12] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(1'b0),
        .Q(reg_data_out_async1[12]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \reg_data_out_async1_reg[13] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(1'b0),
        .Q(reg_data_out_async1[13]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \reg_data_out_async1_reg[14] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(fifo_full),
        .Q(reg_data_out_async1[14]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \reg_data_out_async1_reg[15] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(prog_rdy),
        .Q(reg_data_out_async1[15]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \reg_data_out_async1_reg[16] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(1'b0),
        .Q(reg_data_out_async1[16]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \reg_data_out_async1_reg[17] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(1'b0),
        .Q(reg_data_out_async1[17]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \reg_data_out_async1_reg[18] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(1'b0),
        .Q(reg_data_out_async1[18]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \reg_data_out_async1_reg[19] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(1'b0),
        .Q(reg_data_out_async1[19]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \reg_data_out_async1_reg[1] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(prom_sr[1]),
        .Q(reg_data_out_async1[1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \reg_data_out_async1_reg[20] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(1'b0),
        .Q(reg_data_out_async1[20]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \reg_data_out_async1_reg[21] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(1'b0),
        .Q(reg_data_out_async1[21]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \reg_data_out_async1_reg[22] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(1'b0),
        .Q(reg_data_out_async1[22]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \reg_data_out_async1_reg[23] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(1'b0),
        .Q(reg_data_out_async1[23]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \reg_data_out_async1_reg[24] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(1'b0),
        .Q(reg_data_out_async1[24]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \reg_data_out_async1_reg[25] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(1'b0),
        .Q(reg_data_out_async1[25]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \reg_data_out_async1_reg[26] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(1'b0),
        .Q(reg_data_out_async1[26]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \reg_data_out_async1_reg[27] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(1'b0),
        .Q(reg_data_out_async1[27]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \reg_data_out_async1_reg[28] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(1'b0),
        .Q(reg_data_out_async1[28]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \reg_data_out_async1_reg[29] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(1'b0),
        .Q(reg_data_out_async1[29]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \reg_data_out_async1_reg[2] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(prom_sr[2]),
        .Q(reg_data_out_async1[2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \reg_data_out_async1_reg[30] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(1'b0),
        .Q(reg_data_out_async1[30]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \reg_data_out_async1_reg[31] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(1'b0),
        .Q(reg_data_out_async1[31]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \reg_data_out_async1_reg[3] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(prom_sr[3]),
        .Q(reg_data_out_async1[3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \reg_data_out_async1_reg[4] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(prom_sr[4]),
        .Q(reg_data_out_async1[4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \reg_data_out_async1_reg[5] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(prom_sr[5]),
        .Q(reg_data_out_async1[5]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \reg_data_out_async1_reg[6] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(prom_sr[6]),
        .Q(reg_data_out_async1[6]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \reg_data_out_async1_reg[7] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(prom_sr[7]),
        .Q(reg_data_out_async1[7]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \reg_data_out_async1_reg[8] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(1'b0),
        .Q(reg_data_out_async1[8]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \reg_data_out_async1_reg[9] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(1'b0),
        .Q(reg_data_out_async1[9]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \reg_data_out_reg[0] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(prom_sr[0]),
        .Q(reg_data_out[0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \reg_data_out_reg[10] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(1'b0),
        .Q(reg_data_out[10]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \reg_data_out_reg[11] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(1'b0),
        .Q(reg_data_out[11]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \reg_data_out_reg[12] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(1'b0),
        .Q(reg_data_out[12]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \reg_data_out_reg[13] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(1'b0),
        .Q(reg_data_out[13]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \reg_data_out_reg[14] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(fifo_full),
        .Q(reg_data_out[14]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \reg_data_out_reg[15] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(prog_rdy),
        .Q(reg_data_out[15]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \reg_data_out_reg[16] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(1'b0),
        .Q(reg_data_out[16]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \reg_data_out_reg[17] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(1'b0),
        .Q(reg_data_out[17]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \reg_data_out_reg[18] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(1'b0),
        .Q(reg_data_out[18]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \reg_data_out_reg[19] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(1'b0),
        .Q(reg_data_out[19]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \reg_data_out_reg[1] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(prom_sr[1]),
        .Q(reg_data_out[1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \reg_data_out_reg[20] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(1'b0),
        .Q(reg_data_out[20]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \reg_data_out_reg[21] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(1'b0),
        .Q(reg_data_out[21]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \reg_data_out_reg[22] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(1'b0),
        .Q(reg_data_out[22]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \reg_data_out_reg[23] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(1'b0),
        .Q(reg_data_out[23]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \reg_data_out_reg[24] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(1'b0),
        .Q(reg_data_out[24]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \reg_data_out_reg[25] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(1'b0),
        .Q(reg_data_out[25]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \reg_data_out_reg[26] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(1'b0),
        .Q(reg_data_out[26]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \reg_data_out_reg[27] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(1'b0),
        .Q(reg_data_out[27]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \reg_data_out_reg[28] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(1'b0),
        .Q(reg_data_out[28]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \reg_data_out_reg[29] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(1'b0),
        .Q(reg_data_out[29]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \reg_data_out_reg[2] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(prom_sr[2]),
        .Q(reg_data_out[2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \reg_data_out_reg[30] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(1'b0),
        .Q(reg_data_out[30]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \reg_data_out_reg[31] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(1'b0),
        .Q(reg_data_out[31]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \reg_data_out_reg[3] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(prom_sr[3]),
        .Q(reg_data_out[3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \reg_data_out_reg[4] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(prom_sr[4]),
        .Q(reg_data_out[4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \reg_data_out_reg[5] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(prom_sr[5]),
        .Q(reg_data_out[5]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \reg_data_out_reg[6] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(prom_sr[6]),
        .Q(reg_data_out[6]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \reg_data_out_reg[7] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(prom_sr[7]),
        .Q(reg_data_out[7]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \reg_data_out_reg[8] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(1'b0),
        .Q(reg_data_out[8]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \reg_data_out_reg[9] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(1'b0),
        .Q(reg_data_out[9]),
        .R(1'b0));
endmodule

(* CHECK_LICENSE_TYPE = "bitstream_fifo,fifo_generator_v13_1_2,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "fifo_generator_v13_1_2,Vivado 2016.3_sdx" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bitstream_fifo
   (rst,
    wr_clk,
    rd_clk,
    din,
    wr_en,
    rd_en,
    dout,
    full,
    empty,
    prog_full);
  input rst;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 write_clk CLK" *) input wr_clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 read_clk CLK" *) input rd_clk;
  (* X_INTERFACE_INFO = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE WR_DATA" *) input [31:0]din;
  (* X_INTERFACE_INFO = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE WR_EN" *) input wr_en;
  (* X_INTERFACE_INFO = "xilinx.com:interface:fifo_read:1.0 FIFO_READ RD_EN" *) input rd_en;
  (* X_INTERFACE_INFO = "xilinx.com:interface:fifo_read:1.0 FIFO_READ RD_DATA" *) output [31:0]dout;
  (* X_INTERFACE_INFO = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE FULL" *) output full;
  (* X_INTERFACE_INFO = "xilinx.com:interface:fifo_read:1.0 FIFO_READ EMPTY" *) output empty;
  output prog_full;

  wire [31:0]din;
  wire [31:0]dout;
  wire empty;
  wire full;
  wire prog_full;
  wire rd_clk;
  wire rd_en;
  wire rst;
  wire wr_clk;
  wire wr_en;
  wire NLW_U0_almost_empty_UNCONNECTED;
  wire NLW_U0_almost_full_UNCONNECTED;
  wire NLW_U0_axi_ar_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_ar_overflow_UNCONNECTED;
  wire NLW_U0_axi_ar_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_ar_prog_full_UNCONNECTED;
  wire NLW_U0_axi_ar_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_ar_underflow_UNCONNECTED;
  wire NLW_U0_axi_aw_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_aw_overflow_UNCONNECTED;
  wire NLW_U0_axi_aw_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_aw_prog_full_UNCONNECTED;
  wire NLW_U0_axi_aw_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_aw_underflow_UNCONNECTED;
  wire NLW_U0_axi_b_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_b_overflow_UNCONNECTED;
  wire NLW_U0_axi_b_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_b_prog_full_UNCONNECTED;
  wire NLW_U0_axi_b_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_b_underflow_UNCONNECTED;
  wire NLW_U0_axi_r_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_r_overflow_UNCONNECTED;
  wire NLW_U0_axi_r_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_r_prog_full_UNCONNECTED;
  wire NLW_U0_axi_r_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_r_underflow_UNCONNECTED;
  wire NLW_U0_axi_w_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_w_overflow_UNCONNECTED;
  wire NLW_U0_axi_w_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_w_prog_full_UNCONNECTED;
  wire NLW_U0_axi_w_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_w_underflow_UNCONNECTED;
  wire NLW_U0_axis_dbiterr_UNCONNECTED;
  wire NLW_U0_axis_overflow_UNCONNECTED;
  wire NLW_U0_axis_prog_empty_UNCONNECTED;
  wire NLW_U0_axis_prog_full_UNCONNECTED;
  wire NLW_U0_axis_sbiterr_UNCONNECTED;
  wire NLW_U0_axis_underflow_UNCONNECTED;
  wire NLW_U0_dbiterr_UNCONNECTED;
  wire NLW_U0_m_axi_arvalid_UNCONNECTED;
  wire NLW_U0_m_axi_awvalid_UNCONNECTED;
  wire NLW_U0_m_axi_bready_UNCONNECTED;
  wire NLW_U0_m_axi_rready_UNCONNECTED;
  wire NLW_U0_m_axi_wlast_UNCONNECTED;
  wire NLW_U0_m_axi_wvalid_UNCONNECTED;
  wire NLW_U0_m_axis_tlast_UNCONNECTED;
  wire NLW_U0_m_axis_tvalid_UNCONNECTED;
  wire NLW_U0_overflow_UNCONNECTED;
  wire NLW_U0_prog_empty_UNCONNECTED;
  wire NLW_U0_rd_rst_busy_UNCONNECTED;
  wire NLW_U0_s_axi_arready_UNCONNECTED;
  wire NLW_U0_s_axi_awready_UNCONNECTED;
  wire NLW_U0_s_axi_bvalid_UNCONNECTED;
  wire NLW_U0_s_axi_rlast_UNCONNECTED;
  wire NLW_U0_s_axi_rvalid_UNCONNECTED;
  wire NLW_U0_s_axi_wready_UNCONNECTED;
  wire NLW_U0_s_axis_tready_UNCONNECTED;
  wire NLW_U0_sbiterr_UNCONNECTED;
  wire NLW_U0_underflow_UNCONNECTED;
  wire NLW_U0_valid_UNCONNECTED;
  wire NLW_U0_wr_ack_UNCONNECTED;
  wire NLW_U0_wr_rst_busy_UNCONNECTED;
  wire [4:0]NLW_U0_axi_ar_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_ar_rd_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_ar_wr_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_aw_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_aw_rd_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_aw_wr_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_b_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_b_rd_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_b_wr_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_r_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_r_rd_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_r_wr_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_w_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_w_rd_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_w_wr_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axis_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axis_rd_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axis_wr_data_count_UNCONNECTED;
  wire [8:0]NLW_U0_data_count_UNCONNECTED;
  wire [31:0]NLW_U0_m_axi_araddr_UNCONNECTED;
  wire [1:0]NLW_U0_m_axi_arburst_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_arcache_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_arid_UNCONNECTED;
  wire [7:0]NLW_U0_m_axi_arlen_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_arlock_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_arprot_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_arqos_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_arregion_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_arsize_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_aruser_UNCONNECTED;
  wire [31:0]NLW_U0_m_axi_awaddr_UNCONNECTED;
  wire [1:0]NLW_U0_m_axi_awburst_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_awcache_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_awid_UNCONNECTED;
  wire [7:0]NLW_U0_m_axi_awlen_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_awlock_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_awprot_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_awqos_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_awregion_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_awsize_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_awuser_UNCONNECTED;
  wire [63:0]NLW_U0_m_axi_wdata_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_wid_UNCONNECTED;
  wire [7:0]NLW_U0_m_axi_wstrb_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_wuser_UNCONNECTED;
  wire [7:0]NLW_U0_m_axis_tdata_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tdest_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tid_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tkeep_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tstrb_UNCONNECTED;
  wire [3:0]NLW_U0_m_axis_tuser_UNCONNECTED;
  wire [8:0]NLW_U0_rd_data_count_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_buser_UNCONNECTED;
  wire [63:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_ruser_UNCONNECTED;
  wire [8:0]NLW_U0_wr_data_count_UNCONNECTED;

  (* C_ADD_NGC_CONSTRAINT = "0" *) 
  (* C_APPLICATION_TYPE_AXIS = "0" *) 
  (* C_APPLICATION_TYPE_RACH = "0" *) 
  (* C_APPLICATION_TYPE_RDCH = "0" *) 
  (* C_APPLICATION_TYPE_WACH = "0" *) 
  (* C_APPLICATION_TYPE_WDCH = "0" *) 
  (* C_APPLICATION_TYPE_WRCH = "0" *) 
  (* C_AXIS_TDATA_WIDTH = "8" *) 
  (* C_AXIS_TDEST_WIDTH = "1" *) 
  (* C_AXIS_TID_WIDTH = "1" *) 
  (* C_AXIS_TKEEP_WIDTH = "1" *) 
  (* C_AXIS_TSTRB_WIDTH = "1" *) 
  (* C_AXIS_TUSER_WIDTH = "4" *) 
  (* C_AXIS_TYPE = "0" *) 
  (* C_AXI_ADDR_WIDTH = "32" *) 
  (* C_AXI_ARUSER_WIDTH = "1" *) 
  (* C_AXI_AWUSER_WIDTH = "1" *) 
  (* C_AXI_BUSER_WIDTH = "1" *) 
  (* C_AXI_DATA_WIDTH = "64" *) 
  (* C_AXI_ID_WIDTH = "1" *) 
  (* C_AXI_LEN_WIDTH = "8" *) 
  (* C_AXI_LOCK_WIDTH = "1" *) 
  (* C_AXI_RUSER_WIDTH = "1" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_AXI_WUSER_WIDTH = "1" *) 
  (* C_COMMON_CLOCK = "0" *) 
  (* C_COUNT_TYPE = "0" *) 
  (* C_DATA_COUNT_WIDTH = "9" *) 
  (* C_DEFAULT_VALUE = "BlankString" *) 
  (* C_DIN_WIDTH = "32" *) 
  (* C_DIN_WIDTH_AXIS = "1" *) 
  (* C_DIN_WIDTH_RACH = "32" *) 
  (* C_DIN_WIDTH_RDCH = "64" *) 
  (* C_DIN_WIDTH_WACH = "1" *) 
  (* C_DIN_WIDTH_WDCH = "64" *) 
  (* C_DIN_WIDTH_WRCH = "2" *) 
  (* C_DOUT_RST_VAL = "0" *) 
  (* C_DOUT_WIDTH = "32" *) 
  (* C_ENABLE_RLOCS = "0" *) 
  (* C_ENABLE_RST_SYNC = "1" *) 
  (* C_EN_SAFETY_CKT = "0" *) 
  (* C_ERROR_INJECTION_TYPE = "0" *) 
  (* C_ERROR_INJECTION_TYPE_AXIS = "0" *) 
  (* C_ERROR_INJECTION_TYPE_RACH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_RDCH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WACH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WDCH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WRCH = "0" *) 
  (* C_FAMILY = "kintexu" *) 
  (* C_FULL_FLAGS_RST_VAL = "1" *) 
  (* C_HAS_ALMOST_EMPTY = "0" *) 
  (* C_HAS_ALMOST_FULL = "0" *) 
  (* C_HAS_AXIS_TDATA = "1" *) 
  (* C_HAS_AXIS_TDEST = "0" *) 
  (* C_HAS_AXIS_TID = "0" *) 
  (* C_HAS_AXIS_TKEEP = "0" *) 
  (* C_HAS_AXIS_TLAST = "0" *) 
  (* C_HAS_AXIS_TREADY = "1" *) 
  (* C_HAS_AXIS_TSTRB = "0" *) 
  (* C_HAS_AXIS_TUSER = "1" *) 
  (* C_HAS_AXI_ARUSER = "0" *) 
  (* C_HAS_AXI_AWUSER = "0" *) 
  (* C_HAS_AXI_BUSER = "0" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_AXI_RD_CHANNEL = "1" *) 
  (* C_HAS_AXI_RUSER = "0" *) 
  (* C_HAS_AXI_WR_CHANNEL = "1" *) 
  (* C_HAS_AXI_WUSER = "0" *) 
  (* C_HAS_BACKUP = "0" *) 
  (* C_HAS_DATA_COUNT = "0" *) 
  (* C_HAS_DATA_COUNTS_AXIS = "0" *) 
  (* C_HAS_DATA_COUNTS_RACH = "0" *) 
  (* C_HAS_DATA_COUNTS_RDCH = "0" *) 
  (* C_HAS_DATA_COUNTS_WACH = "0" *) 
  (* C_HAS_DATA_COUNTS_WDCH = "0" *) 
  (* C_HAS_DATA_COUNTS_WRCH = "0" *) 
  (* C_HAS_INT_CLK = "0" *) 
  (* C_HAS_MASTER_CE = "0" *) 
  (* C_HAS_MEMINIT_FILE = "0" *) 
  (* C_HAS_OVERFLOW = "0" *) 
  (* C_HAS_PROG_FLAGS_AXIS = "0" *) 
  (* C_HAS_PROG_FLAGS_RACH = "0" *) 
  (* C_HAS_PROG_FLAGS_RDCH = "0" *) 
  (* C_HAS_PROG_FLAGS_WACH = "0" *) 
  (* C_HAS_PROG_FLAGS_WDCH = "0" *) 
  (* C_HAS_PROG_FLAGS_WRCH = "0" *) 
  (* C_HAS_RD_DATA_COUNT = "0" *) 
  (* C_HAS_RD_RST = "0" *) 
  (* C_HAS_RST = "1" *) 
  (* C_HAS_SLAVE_CE = "0" *) 
  (* C_HAS_SRST = "0" *) 
  (* C_HAS_UNDERFLOW = "0" *) 
  (* C_HAS_VALID = "0" *) 
  (* C_HAS_WR_ACK = "0" *) 
  (* C_HAS_WR_DATA_COUNT = "0" *) 
  (* C_HAS_WR_RST = "0" *) 
  (* C_IMPLEMENTATION_TYPE = "2" *) 
  (* C_IMPLEMENTATION_TYPE_AXIS = "1" *) 
  (* C_IMPLEMENTATION_TYPE_RACH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_RDCH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_WACH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_WDCH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_WRCH = "1" *) 
  (* C_INIT_WR_PNTR_VAL = "0" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_MEMORY_TYPE = "2" *) 
  (* C_MIF_FILE_NAME = "BlankString" *) 
  (* C_MSGON_VAL = "1" *) 
  (* C_OPTIMIZATION_MODE = "0" *) 
  (* C_OVERFLOW_LOW = "0" *) 
  (* C_POWER_SAVING_MODE = "0" *) 
  (* C_PRELOAD_LATENCY = "1" *) 
  (* C_PRELOAD_REGS = "0" *) 
  (* C_PRIM_FIFO_TYPE = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_AXIS = "1kx18" *) 
  (* C_PRIM_FIFO_TYPE_RACH = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_RDCH = "512x72" *) 
  (* C_PRIM_FIFO_TYPE_WACH = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_WDCH = "512x72" *) 
  (* C_PRIM_FIFO_TYPE_WRCH = "512x36" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL = "2" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_AXIS = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_RACH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_RDCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WACH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WDCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WRCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_NEGATE_VAL = "3" *) 
  (* C_PROG_EMPTY_TYPE = "0" *) 
  (* C_PROG_EMPTY_TYPE_AXIS = "0" *) 
  (* C_PROG_EMPTY_TYPE_RACH = "0" *) 
  (* C_PROG_EMPTY_TYPE_RDCH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WACH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WDCH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WRCH = "0" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL = "509" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_AXIS = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_RACH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_RDCH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WACH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WDCH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WRCH = "1023" *) 
  (* C_PROG_FULL_THRESH_NEGATE_VAL = "508" *) 
  (* C_PROG_FULL_TYPE = "1" *) 
  (* C_PROG_FULL_TYPE_AXIS = "0" *) 
  (* C_PROG_FULL_TYPE_RACH = "0" *) 
  (* C_PROG_FULL_TYPE_RDCH = "0" *) 
  (* C_PROG_FULL_TYPE_WACH = "0" *) 
  (* C_PROG_FULL_TYPE_WDCH = "0" *) 
  (* C_PROG_FULL_TYPE_WRCH = "0" *) 
  (* C_RACH_TYPE = "0" *) 
  (* C_RDCH_TYPE = "0" *) 
  (* C_RD_DATA_COUNT_WIDTH = "9" *) 
  (* C_RD_DEPTH = "512" *) 
  (* C_RD_FREQ = "1" *) 
  (* C_RD_PNTR_WIDTH = "9" *) 
  (* C_REG_SLICE_MODE_AXIS = "0" *) 
  (* C_REG_SLICE_MODE_RACH = "0" *) 
  (* C_REG_SLICE_MODE_RDCH = "0" *) 
  (* C_REG_SLICE_MODE_WACH = "0" *) 
  (* C_REG_SLICE_MODE_WDCH = "0" *) 
  (* C_REG_SLICE_MODE_WRCH = "0" *) 
  (* C_SELECT_XPM = "0" *) 
  (* C_SYNCHRONIZER_STAGE = "2" *) 
  (* C_UNDERFLOW_LOW = "0" *) 
  (* C_USE_COMMON_OVERFLOW = "0" *) 
  (* C_USE_COMMON_UNDERFLOW = "0" *) 
  (* C_USE_DEFAULT_SETTINGS = "0" *) 
  (* C_USE_DOUT_RST = "1" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_ECC_AXIS = "0" *) 
  (* C_USE_ECC_RACH = "0" *) 
  (* C_USE_ECC_RDCH = "0" *) 
  (* C_USE_ECC_WACH = "0" *) 
  (* C_USE_ECC_WDCH = "0" *) 
  (* C_USE_ECC_WRCH = "0" *) 
  (* C_USE_EMBEDDED_REG = "0" *) 
  (* C_USE_FIFO16_FLAGS = "0" *) 
  (* C_USE_FWFT_DATA_COUNT = "0" *) 
  (* C_USE_PIPELINE_REG = "0" *) 
  (* C_VALID_LOW = "0" *) 
  (* C_WACH_TYPE = "0" *) 
  (* C_WDCH_TYPE = "0" *) 
  (* C_WRCH_TYPE = "0" *) 
  (* C_WR_ACK_LOW = "0" *) 
  (* C_WR_DATA_COUNT_WIDTH = "9" *) 
  (* C_WR_DEPTH = "512" *) 
  (* C_WR_DEPTH_AXIS = "1024" *) 
  (* C_WR_DEPTH_RACH = "16" *) 
  (* C_WR_DEPTH_RDCH = "1024" *) 
  (* C_WR_DEPTH_WACH = "16" *) 
  (* C_WR_DEPTH_WDCH = "1024" *) 
  (* C_WR_DEPTH_WRCH = "16" *) 
  (* C_WR_FREQ = "1" *) 
  (* C_WR_PNTR_WIDTH = "9" *) 
  (* C_WR_PNTR_WIDTH_AXIS = "10" *) 
  (* C_WR_PNTR_WIDTH_RACH = "4" *) 
  (* C_WR_PNTR_WIDTH_RDCH = "10" *) 
  (* C_WR_PNTR_WIDTH_WACH = "4" *) 
  (* C_WR_PNTR_WIDTH_WDCH = "10" *) 
  (* C_WR_PNTR_WIDTH_WRCH = "4" *) 
  (* C_WR_RESPONSE_LATENCY = "1" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_1_2 U0
       (.almost_empty(NLW_U0_almost_empty_UNCONNECTED),
        .almost_full(NLW_U0_almost_full_UNCONNECTED),
        .axi_ar_data_count(NLW_U0_axi_ar_data_count_UNCONNECTED[4:0]),
        .axi_ar_dbiterr(NLW_U0_axi_ar_dbiterr_UNCONNECTED),
        .axi_ar_injectdbiterr(1'b0),
        .axi_ar_injectsbiterr(1'b0),
        .axi_ar_overflow(NLW_U0_axi_ar_overflow_UNCONNECTED),
        .axi_ar_prog_empty(NLW_U0_axi_ar_prog_empty_UNCONNECTED),
        .axi_ar_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_ar_prog_full(NLW_U0_axi_ar_prog_full_UNCONNECTED),
        .axi_ar_prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_ar_rd_data_count(NLW_U0_axi_ar_rd_data_count_UNCONNECTED[4:0]),
        .axi_ar_sbiterr(NLW_U0_axi_ar_sbiterr_UNCONNECTED),
        .axi_ar_underflow(NLW_U0_axi_ar_underflow_UNCONNECTED),
        .axi_ar_wr_data_count(NLW_U0_axi_ar_wr_data_count_UNCONNECTED[4:0]),
        .axi_aw_data_count(NLW_U0_axi_aw_data_count_UNCONNECTED[4:0]),
        .axi_aw_dbiterr(NLW_U0_axi_aw_dbiterr_UNCONNECTED),
        .axi_aw_injectdbiterr(1'b0),
        .axi_aw_injectsbiterr(1'b0),
        .axi_aw_overflow(NLW_U0_axi_aw_overflow_UNCONNECTED),
        .axi_aw_prog_empty(NLW_U0_axi_aw_prog_empty_UNCONNECTED),
        .axi_aw_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_aw_prog_full(NLW_U0_axi_aw_prog_full_UNCONNECTED),
        .axi_aw_prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_aw_rd_data_count(NLW_U0_axi_aw_rd_data_count_UNCONNECTED[4:0]),
        .axi_aw_sbiterr(NLW_U0_axi_aw_sbiterr_UNCONNECTED),
        .axi_aw_underflow(NLW_U0_axi_aw_underflow_UNCONNECTED),
        .axi_aw_wr_data_count(NLW_U0_axi_aw_wr_data_count_UNCONNECTED[4:0]),
        .axi_b_data_count(NLW_U0_axi_b_data_count_UNCONNECTED[4:0]),
        .axi_b_dbiterr(NLW_U0_axi_b_dbiterr_UNCONNECTED),
        .axi_b_injectdbiterr(1'b0),
        .axi_b_injectsbiterr(1'b0),
        .axi_b_overflow(NLW_U0_axi_b_overflow_UNCONNECTED),
        .axi_b_prog_empty(NLW_U0_axi_b_prog_empty_UNCONNECTED),
        .axi_b_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_b_prog_full(NLW_U0_axi_b_prog_full_UNCONNECTED),
        .axi_b_prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_b_rd_data_count(NLW_U0_axi_b_rd_data_count_UNCONNECTED[4:0]),
        .axi_b_sbiterr(NLW_U0_axi_b_sbiterr_UNCONNECTED),
        .axi_b_underflow(NLW_U0_axi_b_underflow_UNCONNECTED),
        .axi_b_wr_data_count(NLW_U0_axi_b_wr_data_count_UNCONNECTED[4:0]),
        .axi_r_data_count(NLW_U0_axi_r_data_count_UNCONNECTED[10:0]),
        .axi_r_dbiterr(NLW_U0_axi_r_dbiterr_UNCONNECTED),
        .axi_r_injectdbiterr(1'b0),
        .axi_r_injectsbiterr(1'b0),
        .axi_r_overflow(NLW_U0_axi_r_overflow_UNCONNECTED),
        .axi_r_prog_empty(NLW_U0_axi_r_prog_empty_UNCONNECTED),
        .axi_r_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_r_prog_full(NLW_U0_axi_r_prog_full_UNCONNECTED),
        .axi_r_prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_r_rd_data_count(NLW_U0_axi_r_rd_data_count_UNCONNECTED[10:0]),
        .axi_r_sbiterr(NLW_U0_axi_r_sbiterr_UNCONNECTED),
        .axi_r_underflow(NLW_U0_axi_r_underflow_UNCONNECTED),
        .axi_r_wr_data_count(NLW_U0_axi_r_wr_data_count_UNCONNECTED[10:0]),
        .axi_w_data_count(NLW_U0_axi_w_data_count_UNCONNECTED[10:0]),
        .axi_w_dbiterr(NLW_U0_axi_w_dbiterr_UNCONNECTED),
        .axi_w_injectdbiterr(1'b0),
        .axi_w_injectsbiterr(1'b0),
        .axi_w_overflow(NLW_U0_axi_w_overflow_UNCONNECTED),
        .axi_w_prog_empty(NLW_U0_axi_w_prog_empty_UNCONNECTED),
        .axi_w_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_w_prog_full(NLW_U0_axi_w_prog_full_UNCONNECTED),
        .axi_w_prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_w_rd_data_count(NLW_U0_axi_w_rd_data_count_UNCONNECTED[10:0]),
        .axi_w_sbiterr(NLW_U0_axi_w_sbiterr_UNCONNECTED),
        .axi_w_underflow(NLW_U0_axi_w_underflow_UNCONNECTED),
        .axi_w_wr_data_count(NLW_U0_axi_w_wr_data_count_UNCONNECTED[10:0]),
        .axis_data_count(NLW_U0_axis_data_count_UNCONNECTED[10:0]),
        .axis_dbiterr(NLW_U0_axis_dbiterr_UNCONNECTED),
        .axis_injectdbiterr(1'b0),
        .axis_injectsbiterr(1'b0),
        .axis_overflow(NLW_U0_axis_overflow_UNCONNECTED),
        .axis_prog_empty(NLW_U0_axis_prog_empty_UNCONNECTED),
        .axis_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axis_prog_full(NLW_U0_axis_prog_full_UNCONNECTED),
        .axis_prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axis_rd_data_count(NLW_U0_axis_rd_data_count_UNCONNECTED[10:0]),
        .axis_sbiterr(NLW_U0_axis_sbiterr_UNCONNECTED),
        .axis_underflow(NLW_U0_axis_underflow_UNCONNECTED),
        .axis_wr_data_count(NLW_U0_axis_wr_data_count_UNCONNECTED[10:0]),
        .backup(1'b0),
        .backup_marker(1'b0),
        .clk(1'b0),
        .data_count(NLW_U0_data_count_UNCONNECTED[8:0]),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .din(din),
        .dout(dout),
        .empty(empty),
        .full(full),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .int_clk(1'b0),
        .m_aclk(1'b0),
        .m_aclk_en(1'b0),
        .m_axi_araddr(NLW_U0_m_axi_araddr_UNCONNECTED[31:0]),
        .m_axi_arburst(NLW_U0_m_axi_arburst_UNCONNECTED[1:0]),
        .m_axi_arcache(NLW_U0_m_axi_arcache_UNCONNECTED[3:0]),
        .m_axi_arid(NLW_U0_m_axi_arid_UNCONNECTED[0]),
        .m_axi_arlen(NLW_U0_m_axi_arlen_UNCONNECTED[7:0]),
        .m_axi_arlock(NLW_U0_m_axi_arlock_UNCONNECTED[0]),
        .m_axi_arprot(NLW_U0_m_axi_arprot_UNCONNECTED[2:0]),
        .m_axi_arqos(NLW_U0_m_axi_arqos_UNCONNECTED[3:0]),
        .m_axi_arready(1'b0),
        .m_axi_arregion(NLW_U0_m_axi_arregion_UNCONNECTED[3:0]),
        .m_axi_arsize(NLW_U0_m_axi_arsize_UNCONNECTED[2:0]),
        .m_axi_aruser(NLW_U0_m_axi_aruser_UNCONNECTED[0]),
        .m_axi_arvalid(NLW_U0_m_axi_arvalid_UNCONNECTED),
        .m_axi_awaddr(NLW_U0_m_axi_awaddr_UNCONNECTED[31:0]),
        .m_axi_awburst(NLW_U0_m_axi_awburst_UNCONNECTED[1:0]),
        .m_axi_awcache(NLW_U0_m_axi_awcache_UNCONNECTED[3:0]),
        .m_axi_awid(NLW_U0_m_axi_awid_UNCONNECTED[0]),
        .m_axi_awlen(NLW_U0_m_axi_awlen_UNCONNECTED[7:0]),
        .m_axi_awlock(NLW_U0_m_axi_awlock_UNCONNECTED[0]),
        .m_axi_awprot(NLW_U0_m_axi_awprot_UNCONNECTED[2:0]),
        .m_axi_awqos(NLW_U0_m_axi_awqos_UNCONNECTED[3:0]),
        .m_axi_awready(1'b0),
        .m_axi_awregion(NLW_U0_m_axi_awregion_UNCONNECTED[3:0]),
        .m_axi_awsize(NLW_U0_m_axi_awsize_UNCONNECTED[2:0]),
        .m_axi_awuser(NLW_U0_m_axi_awuser_UNCONNECTED[0]),
        .m_axi_awvalid(NLW_U0_m_axi_awvalid_UNCONNECTED),
        .m_axi_bid(1'b0),
        .m_axi_bready(NLW_U0_m_axi_bready_UNCONNECTED),
        .m_axi_bresp({1'b0,1'b0}),
        .m_axi_buser(1'b0),
        .m_axi_bvalid(1'b0),
        .m_axi_rdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .m_axi_rid(1'b0),
        .m_axi_rlast(1'b0),
        .m_axi_rready(NLW_U0_m_axi_rready_UNCONNECTED),
        .m_axi_rresp({1'b0,1'b0}),
        .m_axi_ruser(1'b0),
        .m_axi_rvalid(1'b0),
        .m_axi_wdata(NLW_U0_m_axi_wdata_UNCONNECTED[63:0]),
        .m_axi_wid(NLW_U0_m_axi_wid_UNCONNECTED[0]),
        .m_axi_wlast(NLW_U0_m_axi_wlast_UNCONNECTED),
        .m_axi_wready(1'b0),
        .m_axi_wstrb(NLW_U0_m_axi_wstrb_UNCONNECTED[7:0]),
        .m_axi_wuser(NLW_U0_m_axi_wuser_UNCONNECTED[0]),
        .m_axi_wvalid(NLW_U0_m_axi_wvalid_UNCONNECTED),
        .m_axis_tdata(NLW_U0_m_axis_tdata_UNCONNECTED[7:0]),
        .m_axis_tdest(NLW_U0_m_axis_tdest_UNCONNECTED[0]),
        .m_axis_tid(NLW_U0_m_axis_tid_UNCONNECTED[0]),
        .m_axis_tkeep(NLW_U0_m_axis_tkeep_UNCONNECTED[0]),
        .m_axis_tlast(NLW_U0_m_axis_tlast_UNCONNECTED),
        .m_axis_tready(1'b0),
        .m_axis_tstrb(NLW_U0_m_axis_tstrb_UNCONNECTED[0]),
        .m_axis_tuser(NLW_U0_m_axis_tuser_UNCONNECTED[3:0]),
        .m_axis_tvalid(NLW_U0_m_axis_tvalid_UNCONNECTED),
        .overflow(NLW_U0_overflow_UNCONNECTED),
        .prog_empty(NLW_U0_prog_empty_UNCONNECTED),
        .prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_empty_thresh_assert({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_empty_thresh_negate({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full(prog_full),
        .prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full_thresh_assert({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full_thresh_negate({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .rd_clk(rd_clk),
        .rd_data_count(NLW_U0_rd_data_count_UNCONNECTED[8:0]),
        .rd_en(rd_en),
        .rd_rst(1'b0),
        .rd_rst_busy(NLW_U0_rd_rst_busy_UNCONNECTED),
        .rst(rst),
        .s_aclk(1'b0),
        .s_aclk_en(1'b0),
        .s_aresetn(1'b0),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arburst({1'b0,1'b0}),
        .s_axi_arcache({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arid(1'b0),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlock(1'b0),
        .s_axi_arprot({1'b0,1'b0,1'b0}),
        .s_axi_arqos({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(NLW_U0_s_axi_arready_UNCONNECTED),
        .s_axi_arregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_aruser(1'b0),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({1'b0,1'b0}),
        .s_axi_awcache({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awid(1'b0),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlock(1'b0),
        .s_axi_awprot({1'b0,1'b0,1'b0}),
        .s_axi_awqos({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(NLW_U0_s_axi_awready_UNCONNECTED),
        .s_axi_awregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awuser(1'b0),
        .s_axi_awvalid(1'b0),
        .s_axi_bid(NLW_U0_s_axi_bid_UNCONNECTED[0]),
        .s_axi_bready(1'b0),
        .s_axi_bresp(NLW_U0_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_buser(NLW_U0_s_axi_buser_UNCONNECTED[0]),
        .s_axi_bvalid(NLW_U0_s_axi_bvalid_UNCONNECTED),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[63:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_ruser(NLW_U0_s_axi_ruser_UNCONNECTED[0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wid(1'b0),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wuser(1'b0),
        .s_axi_wvalid(1'b0),
        .s_axis_tdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axis_tdest(1'b0),
        .s_axis_tid(1'b0),
        .s_axis_tkeep(1'b0),
        .s_axis_tlast(1'b0),
        .s_axis_tready(NLW_U0_s_axis_tready_UNCONNECTED),
        .s_axis_tstrb(1'b0),
        .s_axis_tuser({1'b0,1'b0,1'b0,1'b0}),
        .s_axis_tvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .sleep(1'b0),
        .srst(1'b0),
        .underflow(NLW_U0_underflow_UNCONNECTED),
        .valid(NLW_U0_valid_UNCONNECTED),
        .wr_ack(NLW_U0_wr_ack_UNCONNECTED),
        .wr_clk(wr_clk),
        .wr_data_count(NLW_U0_wr_data_count_UNCONNECTED[8:0]),
        .wr_en(wr_en),
        .wr_rst(1'b0),
        .wr_rst_busy(NLW_U0_wr_rst_busy_UNCONNECTED));
endmodule

(* blk_lck_setup_cmd = "6'b000010" *) (* command = "6'b000001" *) (* eras_chk_SR = "6'b010000" *) 
(* eras_chk_pollcnt = "6'b010001" *) (* eras_clear_SR = "6'b100100" *) (* eras_clear_SR_1 = "6'b100101" *) 
(* eras_confirm = "6'b001100" *) (* eras_confirm_1 = "6'b001101" *) (* eras_rd_SR = "6'b001110" *) 
(* eras_rd_SR_1 = "6'b001111" *) (* eras_rd_SR_2 = "6'b100000" *) (* eras_setup = "6'b001011" *) 
(* error = "6'b011111" *) (* idle = "6'b000000" *) (* prog_buf = "6'b011001" *) 
(* prog_buf_1 = "6'b101011" *) (* prog_bufprog_chk_SR = "6'b011100" *) (* prog_bufprog_chk_pollcnt = "6'b011101" *) 
(* prog_bufprog_rd_SR = "6'b011010" *) (* prog_bufprog_rd_SR_1 = "6'b011011" *) (* prog_chk_SR = "6'b010101" *) 
(* prog_chk_data_count = "6'b011000" *) (* prog_chk_pollcnt = "6'b010110" *) (* prog_load_addr = "6'b010111" *) 
(* prog_load_addr_1 = "6'b100110" *) (* prog_load_addr_2 = "6'b100111" *) (* prog_load_buffer = "6'b100010" *) 
(* prog_load_buffer_underrun = "6'b101000" *) (* prog_load_buffer_underrun1 = "6'b101001" *) (* prog_load_buffer_underrun2 = "6'b101010" *) 
(* prog_rd_SR = "6'b010011" *) (* prog_rd_SR_1 = "6'b010100" *) (* prog_rd_SR_2 = "6'b100001" *) 
(* prog_setup = "6'b010010" *) (* rd_id = "6'b000101" *) (* rd_id_1 = "6'b000110" *) 
(* unlck_chk_id = "6'b001001" *) (* unlck_chk_pollcnt = "6'b001010" *) (* unlck_cmd = "6'b000011" *) 
(* unlck_cmd_1 = "6'b000100" *) (* unlck_rd_SR = "6'b000111" *) (* unlck_rd_SR_1 = "6'b001000" *) 
(* unlck_rd_SR_2 = "6'b011110" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_programmer
   (CLK,
    RST,
    A,
    DQ_I,
    DQ_O,
    OE_N,
    WE_N,
    CS_N,
    TRI_CTRL,
    FIFO_RD_EN,
    FIFO_EMPTY,
    DATA,
    PROM_SR,
    PROG_RDY,
    ERROR);
  input CLK;
  input RST;
  output [24:1]A;
  input [15:0]DQ_I;
  output [15:0]DQ_O;
  output OE_N;
  output WE_N;
  output CS_N;
  output TRI_CTRL;
  output FIFO_RD_EN;
  input FIFO_EMPTY;
  input [31:0]DATA;
  output [7:0]PROM_SR;
  output PROG_RDY;
  output [2:0]ERROR;

  wire [24:1]A;
  wire [22:0]A_inc;
  wire \A_reg[15]_i_10_n_0 ;
  wire \A_reg[15]_i_11_n_0 ;
  wire \A_reg[15]_i_12_n_0 ;
  wire \A_reg[15]_i_13_n_0 ;
  wire \A_reg[15]_i_14_n_0 ;
  wire \A_reg[15]_i_15_n_0 ;
  wire \A_reg[15]_i_16_n_0 ;
  wire \A_reg[15]_i_17_n_0 ;
  wire \A_reg[23]_i_14_n_0 ;
  wire \A_reg[23]_i_15_n_0 ;
  wire \A_reg[23]_i_16_n_0 ;
  wire \A_reg[23]_i_17_n_0 ;
  wire \A_reg[23]_i_18_n_0 ;
  wire \A_reg[23]_i_19_n_0 ;
  wire \A_reg[23]_i_20_n_0 ;
  wire \A_reg[23]_i_21_n_0 ;
  wire \A_reg[23]_i_22_n_0 ;
  wire \A_reg[23]_i_23_n_0 ;
  wire \A_reg[23]_i_24_n_0 ;
  wire \A_reg[23]_i_25_n_0 ;
  wire \A_reg[23]_i_26_n_0 ;
  wire \A_reg[23]_i_27_n_0 ;
  wire \A_reg[23]_i_28_n_0 ;
  wire \A_reg[23]_i_29_n_0 ;
  wire \A_reg[23]_i_30_n_0 ;
  wire \A_reg[23]_i_31_n_0 ;
  wire \A_reg[23]_i_32_n_0 ;
  wire \A_reg[23]_i_33_n_0 ;
  wire \A_reg[23]_i_34_n_0 ;
  wire \A_reg[23]_i_35_n_0 ;
  wire \A_reg[23]_i_36_n_0 ;
  wire \A_reg[23]_i_37_n_0 ;
  wire \A_reg[23]_i_38_n_0 ;
  wire \A_reg[23]_i_39_n_0 ;
  wire \A_reg[23]_i_3_n_0 ;
  wire \A_reg[23]_i_40_n_0 ;
  wire \A_reg[23]_i_41_n_0 ;
  wire \A_reg[23]_i_42_n_0 ;
  wire \A_reg[23]_i_4_n_0 ;
  wire \A_reg[23]_i_5_n_0 ;
  wire \A_reg[23]_i_6_n_0 ;
  wire \A_reg[7]_i_10_n_0 ;
  wire \A_reg[7]_i_11_n_0 ;
  wire \A_reg[7]_i_12_n_0 ;
  wire \A_reg[7]_i_13_n_0 ;
  wire \A_reg[7]_i_14_n_0 ;
  wire \A_reg[7]_i_15_n_0 ;
  wire \A_reg[7]_i_16_n_0 ;
  wire \A_reg[7]_i_4_n_0 ;
  wire \A_reg[7]_i_5_n_0 ;
  wire \A_reg[7]_i_6_n_0 ;
  wire \A_reg[7]_i_7_n_0 ;
  wire \A_reg[7]_i_8_n_0 ;
  wire \A_reg[7]_i_9_n_0 ;
  wire A_reg_en;
  wire \A_reg_reg[15]_i_1_n_0 ;
  wire \A_reg_reg[15]_i_1_n_1 ;
  wire \A_reg_reg[15]_i_1_n_10 ;
  wire \A_reg_reg[15]_i_1_n_11 ;
  wire \A_reg_reg[15]_i_1_n_12 ;
  wire \A_reg_reg[15]_i_1_n_13 ;
  wire \A_reg_reg[15]_i_1_n_14 ;
  wire \A_reg_reg[15]_i_1_n_15 ;
  wire \A_reg_reg[15]_i_1_n_2 ;
  wire \A_reg_reg[15]_i_1_n_3 ;
  wire \A_reg_reg[15]_i_1_n_5 ;
  wire \A_reg_reg[15]_i_1_n_6 ;
  wire \A_reg_reg[15]_i_1_n_7 ;
  wire \A_reg_reg[15]_i_1_n_8 ;
  wire \A_reg_reg[15]_i_1_n_9 ;
  wire \A_reg_reg[23]_i_2_n_1 ;
  wire \A_reg_reg[23]_i_2_n_10 ;
  wire \A_reg_reg[23]_i_2_n_11 ;
  wire \A_reg_reg[23]_i_2_n_12 ;
  wire \A_reg_reg[23]_i_2_n_13 ;
  wire \A_reg_reg[23]_i_2_n_14 ;
  wire \A_reg_reg[23]_i_2_n_15 ;
  wire \A_reg_reg[23]_i_2_n_2 ;
  wire \A_reg_reg[23]_i_2_n_3 ;
  wire \A_reg_reg[23]_i_2_n_5 ;
  wire \A_reg_reg[23]_i_2_n_6 ;
  wire \A_reg_reg[23]_i_2_n_7 ;
  wire \A_reg_reg[23]_i_2_n_8 ;
  wire \A_reg_reg[23]_i_2_n_9 ;
  wire \A_reg_reg[7]_i_1_n_0 ;
  wire \A_reg_reg[7]_i_1_n_1 ;
  wire \A_reg_reg[7]_i_1_n_10 ;
  wire \A_reg_reg[7]_i_1_n_11 ;
  wire \A_reg_reg[7]_i_1_n_12 ;
  wire \A_reg_reg[7]_i_1_n_13 ;
  wire \A_reg_reg[7]_i_1_n_14 ;
  wire \A_reg_reg[7]_i_1_n_15 ;
  wire \A_reg_reg[7]_i_1_n_2 ;
  wire \A_reg_reg[7]_i_1_n_3 ;
  wire \A_reg_reg[7]_i_1_n_5 ;
  wire \A_reg_reg[7]_i_1_n_6 ;
  wire \A_reg_reg[7]_i_1_n_7 ;
  wire \A_reg_reg[7]_i_1_n_8 ;
  wire \A_reg_reg[7]_i_1_n_9 ;
  wire CLK;
  wire CS_N;
  wire CS_N_i_10_n_0;
  wire CS_N_i_11_n_0;
  wire CS_N_i_12_n_0;
  wire CS_N_i_13_n_0;
  wire CS_N_i_2_n_0;
  wire CS_N_i_3_n_0;
  wire CS_N_i_4_n_0;
  wire CS_N_i_5_n_0;
  wire CS_N_i_6_n_0;
  wire CS_N_i_7_n_0;
  wire CS_N_i_8_n_0;
  wire CS_N_i_9_n_0;
  wire CS_N_reg__0;
  wire [31:0]DATA;
  wire [15:0]DQ_I;
  wire [15:0]DQ_O;
  wire \DQ_O[15]_i_2_n_0 ;
  wire \DQ_O[15]_i_3_n_0 ;
  wire \DQ_O[4]_i_10_n_0 ;
  wire \DQ_O[4]_i_11_n_0 ;
  wire \DQ_O[4]_i_12_n_0 ;
  wire \DQ_O[4]_i_2_n_0 ;
  wire \DQ_O[4]_i_4_n_0 ;
  wire \DQ_O[4]_i_5_n_0 ;
  wire \DQ_O[4]_i_6_n_0 ;
  wire \DQ_O[4]_i_7_n_0 ;
  wire \DQ_O[4]_i_8_n_0 ;
  wire \DQ_O[4]_i_9_n_0 ;
  wire \DQ_O[5]_i_10_n_0 ;
  wire \DQ_O[5]_i_11_n_0 ;
  wire \DQ_O[5]_i_2_n_0 ;
  wire \DQ_O[5]_i_4_n_0 ;
  wire \DQ_O[5]_i_5_n_0 ;
  wire \DQ_O[5]_i_6_n_0 ;
  wire \DQ_O[5]_i_7_n_0 ;
  wire \DQ_O[5]_i_8_n_0 ;
  wire \DQ_O[5]_i_9_n_0 ;
  wire \DQ_O[6]_i_2_n_0 ;
  wire \DQ_O[6]_i_3_n_0 ;
  wire \DQ_O[6]_i_4_n_0 ;
  wire \DQ_O[6]_i_5_n_0 ;
  wire \DQ_O[6]_i_6_n_0 ;
  wire \DQ_O[6]_i_7_n_0 ;
  wire \DQ_O[7]_i_2_n_0 ;
  wire \DQ_O[7]_i_3_n_0 ;
  wire \DQ_O[7]_i_4_n_0 ;
  wire \DQ_O[7]_i_5_n_0 ;
  wire \DQ_O[7]_i_7_n_0 ;
  wire \DQ_O[7]_i_8_n_0 ;
  wire \DQ_O[7]_i_9_n_0 ;
  wire \DQ_O[8]_i_2_n_0 ;
  wire [15:0]DQ_O_reg__0;
  wire [2:0]ERROR;
  wire FIFO_EMPTY;
  wire FIFO_RD_EN;
  wire FIFO_RD_EN_INST_0_i_2_n_0;
  wire FIFO_RD_EN_INST_0_i_3_n_0;
  wire FIFO_RD_EN_reg1_out;
  wire \FSM_onehot_CurrentState[0]_i_10_n_0 ;
  wire \FSM_onehot_CurrentState[0]_i_11_n_0 ;
  wire \FSM_onehot_CurrentState[0]_i_12_n_0 ;
  wire \FSM_onehot_CurrentState[0]_i_1_n_0 ;
  wire \FSM_onehot_CurrentState[0]_i_2_n_0 ;
  wire \FSM_onehot_CurrentState[0]_i_3_n_0 ;
  wire \FSM_onehot_CurrentState[0]_i_4_n_0 ;
  wire \FSM_onehot_CurrentState[0]_i_5_n_0 ;
  wire \FSM_onehot_CurrentState[0]_i_6_n_0 ;
  wire \FSM_onehot_CurrentState[0]_i_7_n_0 ;
  wire \FSM_onehot_CurrentState[0]_i_8_n_0 ;
  wire \FSM_onehot_CurrentState[0]_i_9_n_0 ;
  wire \FSM_onehot_CurrentState[10]_i_1_n_0 ;
  wire \FSM_onehot_CurrentState[11]_i_1_n_0 ;
  wire \FSM_onehot_CurrentState[12]_i_1_n_0 ;
  wire \FSM_onehot_CurrentState[12]_i_3_n_0 ;
  wire \FSM_onehot_CurrentState[12]_i_4_n_0 ;
  wire \FSM_onehot_CurrentState[12]_i_5_n_0 ;
  wire \FSM_onehot_CurrentState[12]_i_6_n_0 ;
  wire \FSM_onehot_CurrentState[12]_i_7_n_0 ;
  wire \FSM_onehot_CurrentState[12]_i_8_n_0 ;
  wire \FSM_onehot_CurrentState[13]_i_1_n_0 ;
  wire \FSM_onehot_CurrentState[14]_i_1_n_0 ;
  wire \FSM_onehot_CurrentState[15]_i_1_n_0 ;
  wire \FSM_onehot_CurrentState[16]_i_1_n_0 ;
  wire \FSM_onehot_CurrentState[17]_i_1_n_0 ;
  wire \FSM_onehot_CurrentState[17]_i_2_n_0 ;
  wire \FSM_onehot_CurrentState[17]_i_3_n_0 ;
  wire \FSM_onehot_CurrentState[17]_i_4_n_0 ;
  wire \FSM_onehot_CurrentState[17]_i_5_n_0 ;
  wire \FSM_onehot_CurrentState[18]_i_1_n_0 ;
  wire \FSM_onehot_CurrentState[18]_i_2_n_0 ;
  wire \FSM_onehot_CurrentState[19]_i_1_n_0 ;
  wire \FSM_onehot_CurrentState[1]_i_1_n_0 ;
  wire \FSM_onehot_CurrentState[20]_i_1_n_0 ;
  wire \FSM_onehot_CurrentState[20]_i_2_n_0 ;
  wire \FSM_onehot_CurrentState[20]_i_3_n_0 ;
  wire \FSM_onehot_CurrentState[21]_i_1_n_0 ;
  wire \FSM_onehot_CurrentState[21]_i_2_n_0 ;
  wire \FSM_onehot_CurrentState[22]_i_10_n_0 ;
  wire \FSM_onehot_CurrentState[22]_i_1_n_0 ;
  wire \FSM_onehot_CurrentState[22]_i_2_n_0 ;
  wire \FSM_onehot_CurrentState[22]_i_3_n_0 ;
  wire \FSM_onehot_CurrentState[22]_i_4_n_0 ;
  wire \FSM_onehot_CurrentState[22]_i_5_n_0 ;
  wire \FSM_onehot_CurrentState[22]_i_6_n_0 ;
  wire \FSM_onehot_CurrentState[22]_i_7_n_0 ;
  wire \FSM_onehot_CurrentState[22]_i_8_n_0 ;
  wire \FSM_onehot_CurrentState[22]_i_9_n_0 ;
  wire \FSM_onehot_CurrentState[23]_i_1_n_0 ;
  wire \FSM_onehot_CurrentState[24]_i_1_n_0 ;
  wire \FSM_onehot_CurrentState[25]_i_1_n_0 ;
  wire \FSM_onehot_CurrentState[25]_i_2_n_0 ;
  wire \FSM_onehot_CurrentState[26]_i_1_n_0 ;
  wire \FSM_onehot_CurrentState[27]_i_1_n_0 ;
  wire \FSM_onehot_CurrentState[27]_i_2_n_0 ;
  wire \FSM_onehot_CurrentState[28]_i_1_n_0 ;
  wire \FSM_onehot_CurrentState[29]_i_1_n_0 ;
  wire \FSM_onehot_CurrentState[29]_i_2_n_0 ;
  wire \FSM_onehot_CurrentState[2]_i_1_n_0 ;
  wire \FSM_onehot_CurrentState[2]_i_2_n_0 ;
  wire \FSM_onehot_CurrentState[2]_i_3_n_0 ;
  wire \FSM_onehot_CurrentState[2]_i_4_n_0 ;
  wire \FSM_onehot_CurrentState[2]_i_5_n_0 ;
  wire \FSM_onehot_CurrentState[2]_i_6_n_0 ;
  wire \FSM_onehot_CurrentState[2]_i_7_n_0 ;
  wire \FSM_onehot_CurrentState[2]_i_8_n_0 ;
  wire \FSM_onehot_CurrentState[30]_i_1_n_0 ;
  wire \FSM_onehot_CurrentState[31]_i_1_n_0 ;
  wire \FSM_onehot_CurrentState[31]_i_2_n_0 ;
  wire \FSM_onehot_CurrentState[31]_i_3_n_0 ;
  wire \FSM_onehot_CurrentState[32]_i_1_n_0 ;
  wire \FSM_onehot_CurrentState[33]_i_1_n_0 ;
  wire \FSM_onehot_CurrentState[33]_i_2_n_0 ;
  wire \FSM_onehot_CurrentState[33]_i_3_n_0 ;
  wire \FSM_onehot_CurrentState[33]_i_4_n_0 ;
  wire \FSM_onehot_CurrentState[33]_i_5_n_0 ;
  wire \FSM_onehot_CurrentState[34]_i_1_n_0 ;
  wire \FSM_onehot_CurrentState[34]_i_2_n_0 ;
  wire \FSM_onehot_CurrentState[35]_i_1_n_0 ;
  wire \FSM_onehot_CurrentState[36]_i_1_n_0 ;
  wire \FSM_onehot_CurrentState[37]_i_1_n_0 ;
  wire \FSM_onehot_CurrentState[37]_i_2_n_0 ;
  wire \FSM_onehot_CurrentState[38]_i_1_n_0 ;
  wire \FSM_onehot_CurrentState[39]_i_1_n_0 ;
  wire \FSM_onehot_CurrentState[39]_i_2_n_0 ;
  wire \FSM_onehot_CurrentState[39]_i_3_n_0 ;
  wire \FSM_onehot_CurrentState[39]_i_4_n_0 ;
  wire \FSM_onehot_CurrentState[3]_i_1_n_0 ;
  wire \FSM_onehot_CurrentState[40]_i_1_n_0 ;
  wire \FSM_onehot_CurrentState[40]_i_2_n_0 ;
  wire \FSM_onehot_CurrentState[40]_i_3_n_0 ;
  wire \FSM_onehot_CurrentState[40]_i_4_n_0 ;
  wire \FSM_onehot_CurrentState[40]_i_5_n_0 ;
  wire \FSM_onehot_CurrentState[40]_i_6_n_0 ;
  wire \FSM_onehot_CurrentState[40]_i_7_n_0 ;
  wire \FSM_onehot_CurrentState[40]_i_8_n_0 ;
  wire \FSM_onehot_CurrentState[40]_i_9_n_0 ;
  wire \FSM_onehot_CurrentState[41]_i_1_n_0 ;
  wire \FSM_onehot_CurrentState[41]_i_2_n_0 ;
  wire \FSM_onehot_CurrentState[41]_i_3_n_0 ;
  wire \FSM_onehot_CurrentState[41]_i_4_n_0 ;
  wire \FSM_onehot_CurrentState[41]_i_5_n_0 ;
  wire \FSM_onehot_CurrentState[42]_i_1_n_0 ;
  wire \FSM_onehot_CurrentState[42]_i_2_n_0 ;
  wire \FSM_onehot_CurrentState[4]_i_1_n_0 ;
  wire \FSM_onehot_CurrentState[5]_i_1_n_0 ;
  wire \FSM_onehot_CurrentState[6]_i_1_n_0 ;
  wire \FSM_onehot_CurrentState[7]_i_1_n_0 ;
  wire \FSM_onehot_CurrentState[8]_i_1_n_0 ;
  wire \FSM_onehot_CurrentState[8]_i_2_n_0 ;
  wire \FSM_onehot_CurrentState[9]_i_1_n_0 ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_CurrentState_reg_n_0_[10] ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_CurrentState_reg_n_0_[11] ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_CurrentState_reg_n_0_[12] ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_CurrentState_reg_n_0_[13] ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_CurrentState_reg_n_0_[14] ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_CurrentState_reg_n_0_[15] ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_CurrentState_reg_n_0_[16] ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_CurrentState_reg_n_0_[17] ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_CurrentState_reg_n_0_[18] ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_CurrentState_reg_n_0_[19] ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_CurrentState_reg_n_0_[1] ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_CurrentState_reg_n_0_[20] ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_CurrentState_reg_n_0_[21] ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_CurrentState_reg_n_0_[22] ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_CurrentState_reg_n_0_[23] ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_CurrentState_reg_n_0_[24] ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_CurrentState_reg_n_0_[25] ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_CurrentState_reg_n_0_[26] ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_CurrentState_reg_n_0_[27] ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_CurrentState_reg_n_0_[28] ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_CurrentState_reg_n_0_[29] ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_CurrentState_reg_n_0_[2] ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_CurrentState_reg_n_0_[30] ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_CurrentState_reg_n_0_[31] ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_CurrentState_reg_n_0_[32] ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_CurrentState_reg_n_0_[33] ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_CurrentState_reg_n_0_[34] ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_CurrentState_reg_n_0_[35] ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_CurrentState_reg_n_0_[36] ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_CurrentState_reg_n_0_[37] ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_CurrentState_reg_n_0_[38] ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_CurrentState_reg_n_0_[39] ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_CurrentState_reg_n_0_[3] ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_CurrentState_reg_n_0_[40] ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_CurrentState_reg_n_0_[41] ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_CurrentState_reg_n_0_[42] ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_CurrentState_reg_n_0_[4] ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_CurrentState_reg_n_0_[5] ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_CurrentState_reg_n_0_[6] ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_CurrentState_reg_n_0_[7] ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_CurrentState_reg_n_0_[8] ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_CurrentState_reg_n_0_[9] ;
  wire OE_N;
  wire OE_N_i_3_n_0;
  wire OE_N_i_4_n_0;
  wire OE_N_i_5_n_0;
  wire OE_N_i_6_n_0;
  wire OE_N_i_7_n_0;
  wire OE_N_i_8_n_0;
  wire OE_N_reg__0;
  wire PROG_RDY;
  wire [7:0]PROM_SR;
  wire RST;
  wire SR_reg_regn_0_0;
  wire TRI_CTRL;
  wire TRI_CTRL_INST_0_i_1_n_0;
  wire TRI_CTRL_INST_0_i_2_n_0;
  wire WE_N;
  wire WE_N_i_10_n_0;
  wire WE_N_i_11_n_0;
  wire WE_N_i_12_n_0;
  wire WE_N_i_13_n_0;
  wire WE_N_i_14_n_0;
  wire WE_N_i_15_n_0;
  wire WE_N_i_16_n_0;
  wire WE_N_i_17_n_0;
  wire WE_N_i_18_n_0;
  wire WE_N_i_19_n_0;
  wire WE_N_i_2_n_0;
  wire WE_N_i_3_n_0;
  wire WE_N_i_4_n_0;
  wire WE_N_i_5_n_0;
  wire WE_N_i_6_n_0;
  wire WE_N_i_7_n_0;
  wire WE_N_i_8_n_0;
  wire WE_N_i_9_n_0;
  wire WE_N_reg__0;
  wire byte_sel_reg;
  wire byte_sel_reg_i_1_n_0;
  wire \data_cnt[5]_i_2_n_0 ;
  wire \data_cnt[6]_i_2_n_0 ;
  wire \data_cnt[8]_i_1_n_0 ;
  wire \data_cnt[8]_i_2_n_0 ;
  wire \data_cnt[8]_i_3_n_0 ;
  wire [8:0]data_cnt_reg__0;
  wire [8:0]data_sel;
  wire end_addr_reached04_in;
  wire end_addr_reg_en;
  wire \end_addr_reg_reg_n_0_[0] ;
  wire \end_addr_reg_reg_n_0_[10] ;
  wire \end_addr_reg_reg_n_0_[11] ;
  wire \end_addr_reg_reg_n_0_[12] ;
  wire \end_addr_reg_reg_n_0_[13] ;
  wire \end_addr_reg_reg_n_0_[14] ;
  wire \end_addr_reg_reg_n_0_[15] ;
  wire \end_addr_reg_reg_n_0_[16] ;
  wire \end_addr_reg_reg_n_0_[1] ;
  wire \end_addr_reg_reg_n_0_[2] ;
  wire \end_addr_reg_reg_n_0_[3] ;
  wire \end_addr_reg_reg_n_0_[4] ;
  wire \end_addr_reg_reg_n_0_[5] ;
  wire \end_addr_reg_reg_n_0_[6] ;
  wire \end_addr_reg_reg_n_0_[7] ;
  wire \end_addr_reg_reg_n_0_[8] ;
  wire \end_addr_reg_reg_n_0_[9] ;
  wire [6:0]end_blk;
  wire [2:0]error_flag;
  wire \error_reg[1]_i_2_n_0 ;
  wire \error_reg[1]_i_3_n_0 ;
  wire \error_reg[1]_i_4_n_0 ;
  wire \error_reg[1]_i_5_n_0 ;
  wire \error_reg[1]_i_6_n_0 ;
  wire \error_reg[2]_i_10_n_0 ;
  wire \error_reg[2]_i_11_n_0 ;
  wire \error_reg[2]_i_12_n_0 ;
  wire \error_reg[2]_i_13_n_0 ;
  wire \error_reg[2]_i_3_n_0 ;
  wire \error_reg[2]_i_4_n_0 ;
  wire \error_reg[2]_i_5_n_0 ;
  wire \error_reg[2]_i_6_n_0 ;
  wire \error_reg[2]_i_7_n_0 ;
  wire \error_reg[2]_i_8_n_0 ;
  wire \error_reg[2]_i_9_n_0 ;
  wire error_reg_en;
  wire last_blk;
  wire [7:0]p_0_in;
  wire [8:0]p_0_in__0;
  wire \poll_cnt[0]_i_10_n_0 ;
  wire \poll_cnt[0]_i_11_n_0 ;
  wire \poll_cnt[0]_i_12_n_0 ;
  wire \poll_cnt[0]_i_13_n_0 ;
  wire \poll_cnt[0]_i_4_n_0 ;
  wire \poll_cnt[0]_i_5_n_0 ;
  wire \poll_cnt[0]_i_6_n_0 ;
  wire \poll_cnt[0]_i_7_n_0 ;
  wire \poll_cnt[0]_i_8_n_0 ;
  wire \poll_cnt[0]_i_9_n_0 ;
  wire \poll_cnt[16]_i_2_n_0 ;
  wire \poll_cnt[16]_i_3_n_0 ;
  wire \poll_cnt[16]_i_4_n_0 ;
  wire \poll_cnt[16]_i_5_n_0 ;
  wire \poll_cnt[16]_i_6_n_0 ;
  wire \poll_cnt[16]_i_7_n_0 ;
  wire \poll_cnt[16]_i_8_n_0 ;
  wire \poll_cnt[16]_i_9_n_0 ;
  wire \poll_cnt[8]_i_2_n_0 ;
  wire \poll_cnt[8]_i_3_n_0 ;
  wire \poll_cnt[8]_i_4_n_0 ;
  wire \poll_cnt[8]_i_5_n_0 ;
  wire \poll_cnt[8]_i_6_n_0 ;
  wire \poll_cnt[8]_i_7_n_0 ;
  wire \poll_cnt[8]_i_8_n_0 ;
  wire \poll_cnt[8]_i_9_n_0 ;
  wire poll_cnt_en;
  wire [23:0]poll_cnt_reg;
  wire \poll_cnt_reg[0]_i_3_n_0 ;
  wire \poll_cnt_reg[0]_i_3_n_1 ;
  wire \poll_cnt_reg[0]_i_3_n_10 ;
  wire \poll_cnt_reg[0]_i_3_n_11 ;
  wire \poll_cnt_reg[0]_i_3_n_12 ;
  wire \poll_cnt_reg[0]_i_3_n_13 ;
  wire \poll_cnt_reg[0]_i_3_n_14 ;
  wire \poll_cnt_reg[0]_i_3_n_15 ;
  wire \poll_cnt_reg[0]_i_3_n_2 ;
  wire \poll_cnt_reg[0]_i_3_n_3 ;
  wire \poll_cnt_reg[0]_i_3_n_5 ;
  wire \poll_cnt_reg[0]_i_3_n_6 ;
  wire \poll_cnt_reg[0]_i_3_n_7 ;
  wire \poll_cnt_reg[0]_i_3_n_8 ;
  wire \poll_cnt_reg[0]_i_3_n_9 ;
  wire \poll_cnt_reg[16]_i_1_n_1 ;
  wire \poll_cnt_reg[16]_i_1_n_10 ;
  wire \poll_cnt_reg[16]_i_1_n_11 ;
  wire \poll_cnt_reg[16]_i_1_n_12 ;
  wire \poll_cnt_reg[16]_i_1_n_13 ;
  wire \poll_cnt_reg[16]_i_1_n_14 ;
  wire \poll_cnt_reg[16]_i_1_n_15 ;
  wire \poll_cnt_reg[16]_i_1_n_2 ;
  wire \poll_cnt_reg[16]_i_1_n_3 ;
  wire \poll_cnt_reg[16]_i_1_n_5 ;
  wire \poll_cnt_reg[16]_i_1_n_6 ;
  wire \poll_cnt_reg[16]_i_1_n_7 ;
  wire \poll_cnt_reg[16]_i_1_n_8 ;
  wire \poll_cnt_reg[16]_i_1_n_9 ;
  wire \poll_cnt_reg[8]_i_1_n_0 ;
  wire \poll_cnt_reg[8]_i_1_n_1 ;
  wire \poll_cnt_reg[8]_i_1_n_10 ;
  wire \poll_cnt_reg[8]_i_1_n_11 ;
  wire \poll_cnt_reg[8]_i_1_n_12 ;
  wire \poll_cnt_reg[8]_i_1_n_13 ;
  wire \poll_cnt_reg[8]_i_1_n_14 ;
  wire \poll_cnt_reg[8]_i_1_n_15 ;
  wire \poll_cnt_reg[8]_i_1_n_2 ;
  wire \poll_cnt_reg[8]_i_1_n_3 ;
  wire \poll_cnt_reg[8]_i_1_n_5 ;
  wire \poll_cnt_reg[8]_i_1_n_6 ;
  wire \poll_cnt_reg[8]_i_1_n_7 ;
  wire \poll_cnt_reg[8]_i_1_n_8 ;
  wire \poll_cnt_reg[8]_i_1_n_9 ;
  wire prog_done;
  wire prog_done_i_10_n_0;
  wire prog_done_i_1_n_0;
  wire prog_done_i_3_n_0;
  wire prog_done_i_4_n_0;
  wire prog_done_i_5_n_0;
  wire prog_done_i_6_n_0;
  wire prog_done_i_7_n_0;
  wire prog_done_i_8_n_0;
  wire prog_done_i_9_n_0;
  wire prog_done_reg_i_2_n_1;
  wire prog_done_reg_i_2_n_2;
  wire prog_done_reg_i_2_n_3;
  wire prog_done_reg_i_2_n_5;
  wire prog_done_reg_i_2_n_6;
  wire prog_done_reg_i_2_n_7;
  wire rst_SR_reg;
  wire rst_data_cnt;
  wire rst_poll_cnt;
  (* RTL_KEEP = "yes" *) wire rst_reg;
  wire [15:0]start_addr_reg;
  wire \start_addr_reg[15]_i_2_n_0 ;
  wire \start_addr_reg[15]_i_3_n_0 ;
  wire \start_addr_reg[15]_i_4_n_0 ;
  wire start_addr_reg_en;
  wire \unlck_cnt[2]_i_1_n_0 ;
  wire \unlck_cnt[8]_i_3_n_0 ;
  wire unlck_cnt_en;
  wire [8:0]unlck_cnt_reg__0;
  wire [3:3]\NLW_A_reg_reg[15]_i_1_CO_UNCONNECTED ;
  wire [7:3]\NLW_A_reg_reg[23]_i_2_CO_UNCONNECTED ;
  wire [3:3]\NLW_A_reg_reg[7]_i_1_CO_UNCONNECTED ;
  wire [3:3]\NLW_poll_cnt_reg[0]_i_3_CO_UNCONNECTED ;
  wire [7:3]\NLW_poll_cnt_reg[16]_i_1_CO_UNCONNECTED ;
  wire [3:3]\NLW_poll_cnt_reg[8]_i_1_CO_UNCONNECTED ;
  wire [3:3]NLW_prog_done_reg_i_2_CO_UNCONNECTED;
  wire [7:0]NLW_prog_done_reg_i_2_O_UNCONNECTED;

  LUT4 #(
    .INIT(16'hF708)) 
    \A_reg[15]_i_10 
       (.I0(\FSM_onehot_CurrentState_reg_n_0_[1] ),
        .I1(start_addr_reg[7]),
        .I2(\A_reg[23]_i_30_n_0 ),
        .I3(A[16]),
        .O(\A_reg[15]_i_10_n_0 ));
  LUT4 #(
    .INIT(16'hF708)) 
    \A_reg[15]_i_11 
       (.I0(\FSM_onehot_CurrentState_reg_n_0_[1] ),
        .I1(start_addr_reg[6]),
        .I2(\A_reg[23]_i_30_n_0 ),
        .I3(A[15]),
        .O(\A_reg[15]_i_11_n_0 ));
  LUT4 #(
    .INIT(16'hF708)) 
    \A_reg[15]_i_12 
       (.I0(\FSM_onehot_CurrentState_reg_n_0_[1] ),
        .I1(start_addr_reg[5]),
        .I2(\A_reg[23]_i_30_n_0 ),
        .I3(A[14]),
        .O(\A_reg[15]_i_12_n_0 ));
  LUT4 #(
    .INIT(16'hF708)) 
    \A_reg[15]_i_13 
       (.I0(\FSM_onehot_CurrentState_reg_n_0_[1] ),
        .I1(start_addr_reg[4]),
        .I2(\A_reg[23]_i_30_n_0 ),
        .I3(A[13]),
        .O(\A_reg[15]_i_13_n_0 ));
  LUT4 #(
    .INIT(16'hF708)) 
    \A_reg[15]_i_14 
       (.I0(\FSM_onehot_CurrentState_reg_n_0_[1] ),
        .I1(start_addr_reg[3]),
        .I2(\A_reg[23]_i_30_n_0 ),
        .I3(A[12]),
        .O(\A_reg[15]_i_14_n_0 ));
  LUT4 #(
    .INIT(16'hF708)) 
    \A_reg[15]_i_15 
       (.I0(\FSM_onehot_CurrentState_reg_n_0_[1] ),
        .I1(start_addr_reg[2]),
        .I2(\A_reg[23]_i_30_n_0 ),
        .I3(A[11]),
        .O(\A_reg[15]_i_15_n_0 ));
  LUT4 #(
    .INIT(16'hF708)) 
    \A_reg[15]_i_16 
       (.I0(\FSM_onehot_CurrentState_reg_n_0_[1] ),
        .I1(start_addr_reg[1]),
        .I2(\A_reg[23]_i_30_n_0 ),
        .I3(A[10]),
        .O(\A_reg[15]_i_16_n_0 ));
  LUT4 #(
    .INIT(16'hF708)) 
    \A_reg[15]_i_17 
       (.I0(\FSM_onehot_CurrentState_reg_n_0_[1] ),
        .I1(start_addr_reg[0]),
        .I2(\A_reg[23]_i_30_n_0 ),
        .I3(A[9]),
        .O(\A_reg[15]_i_17_n_0 ));
  LUT3 #(
    .INIT(8'h40)) 
    \A_reg[15]_i_2 
       (.I0(\A_reg[23]_i_30_n_0 ),
        .I1(start_addr_reg[7]),
        .I2(\FSM_onehot_CurrentState_reg_n_0_[1] ),
        .O(A_inc[15]));
  LUT3 #(
    .INIT(8'h40)) 
    \A_reg[15]_i_3 
       (.I0(\A_reg[23]_i_30_n_0 ),
        .I1(start_addr_reg[6]),
        .I2(\FSM_onehot_CurrentState_reg_n_0_[1] ),
        .O(A_inc[14]));
  LUT3 #(
    .INIT(8'h40)) 
    \A_reg[15]_i_4 
       (.I0(\A_reg[23]_i_30_n_0 ),
        .I1(start_addr_reg[5]),
        .I2(\FSM_onehot_CurrentState_reg_n_0_[1] ),
        .O(A_inc[13]));
  LUT3 #(
    .INIT(8'h40)) 
    \A_reg[15]_i_5 
       (.I0(\A_reg[23]_i_30_n_0 ),
        .I1(start_addr_reg[4]),
        .I2(\FSM_onehot_CurrentState_reg_n_0_[1] ),
        .O(A_inc[12]));
  LUT3 #(
    .INIT(8'h40)) 
    \A_reg[15]_i_6 
       (.I0(\A_reg[23]_i_30_n_0 ),
        .I1(start_addr_reg[3]),
        .I2(\FSM_onehot_CurrentState_reg_n_0_[1] ),
        .O(A_inc[11]));
  LUT3 #(
    .INIT(8'h40)) 
    \A_reg[15]_i_7 
       (.I0(\A_reg[23]_i_30_n_0 ),
        .I1(start_addr_reg[2]),
        .I2(\FSM_onehot_CurrentState_reg_n_0_[1] ),
        .O(A_inc[10]));
  LUT3 #(
    .INIT(8'h40)) 
    \A_reg[15]_i_8 
       (.I0(\A_reg[23]_i_30_n_0 ),
        .I1(start_addr_reg[1]),
        .I2(\FSM_onehot_CurrentState_reg_n_0_[1] ),
        .O(A_inc[9]));
  LUT3 #(
    .INIT(8'h40)) 
    \A_reg[15]_i_9 
       (.I0(\A_reg[23]_i_30_n_0 ),
        .I1(start_addr_reg[0]),
        .I2(\FSM_onehot_CurrentState_reg_n_0_[1] ),
        .O(A_inc[8]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFEEE)) 
    \A_reg[23]_i_1 
       (.I0(\A_reg[23]_i_3_n_0 ),
        .I1(\FSM_onehot_CurrentState_reg_n_0_[30] ),
        .I2(\A_reg[23]_i_4_n_0 ),
        .I3(\FSM_onehot_CurrentState_reg_n_0_[1] ),
        .I4(\A_reg[23]_i_5_n_0 ),
        .I5(\A_reg[23]_i_6_n_0 ),
        .O(A_reg_en));
  LUT3 #(
    .INIT(8'h80)) 
    \A_reg[23]_i_10 
       (.I0(\A_reg[23]_i_4_n_0 ),
        .I1(start_addr_reg[11]),
        .I2(\FSM_onehot_CurrentState_reg_n_0_[1] ),
        .O(A_inc[19]));
  LUT3 #(
    .INIT(8'h80)) 
    \A_reg[23]_i_11 
       (.I0(\A_reg[23]_i_4_n_0 ),
        .I1(start_addr_reg[10]),
        .I2(\FSM_onehot_CurrentState_reg_n_0_[1] ),
        .O(A_inc[18]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFEEEEEEE)) 
    \A_reg[23]_i_12 
       (.I0(\A_reg[23]_i_28_n_0 ),
        .I1(\A_reg[23]_i_29_n_0 ),
        .I2(\FSM_onehot_CurrentState_reg_n_0_[1] ),
        .I3(start_addr_reg[9]),
        .I4(\A_reg[23]_i_4_n_0 ),
        .I5(\A_reg[23]_i_6_n_0 ),
        .O(A_inc[17]));
  LUT3 #(
    .INIT(8'h40)) 
    \A_reg[23]_i_13 
       (.I0(\A_reg[23]_i_30_n_0 ),
        .I1(start_addr_reg[8]),
        .I2(\FSM_onehot_CurrentState_reg_n_0_[1] ),
        .O(A_inc[16]));
  LUT4 #(
    .INIT(16'h7F80)) 
    \A_reg[23]_i_14 
       (.I0(\FSM_onehot_CurrentState_reg_n_0_[1] ),
        .I1(start_addr_reg[15]),
        .I2(\A_reg[23]_i_4_n_0 ),
        .I3(A[24]),
        .O(\A_reg[23]_i_14_n_0 ));
  LUT4 #(
    .INIT(16'h7F80)) 
    \A_reg[23]_i_15 
       (.I0(\FSM_onehot_CurrentState_reg_n_0_[1] ),
        .I1(start_addr_reg[14]),
        .I2(\A_reg[23]_i_4_n_0 ),
        .I3(A[23]),
        .O(\A_reg[23]_i_15_n_0 ));
  LUT4 #(
    .INIT(16'h7F80)) 
    \A_reg[23]_i_16 
       (.I0(\FSM_onehot_CurrentState_reg_n_0_[1] ),
        .I1(start_addr_reg[13]),
        .I2(\A_reg[23]_i_4_n_0 ),
        .I3(A[22]),
        .O(\A_reg[23]_i_16_n_0 ));
  LUT4 #(
    .INIT(16'h7F80)) 
    \A_reg[23]_i_17 
       (.I0(\FSM_onehot_CurrentState_reg_n_0_[1] ),
        .I1(start_addr_reg[12]),
        .I2(\A_reg[23]_i_4_n_0 ),
        .I3(A[21]),
        .O(\A_reg[23]_i_17_n_0 ));
  LUT4 #(
    .INIT(16'h7F80)) 
    \A_reg[23]_i_18 
       (.I0(\FSM_onehot_CurrentState_reg_n_0_[1] ),
        .I1(start_addr_reg[11]),
        .I2(\A_reg[23]_i_4_n_0 ),
        .I3(A[20]),
        .O(\A_reg[23]_i_18_n_0 ));
  LUT4 #(
    .INIT(16'h7F80)) 
    \A_reg[23]_i_19 
       (.I0(\FSM_onehot_CurrentState_reg_n_0_[1] ),
        .I1(start_addr_reg[10]),
        .I2(\A_reg[23]_i_4_n_0 ),
        .I3(A[19]),
        .O(\A_reg[23]_i_19_n_0 ));
  LUT6 #(
    .INIT(64'h00000001FFFFFFFE)) 
    \A_reg[23]_i_20 
       (.I0(\A_reg[23]_i_31_n_0 ),
        .I1(\FSM_onehot_CurrentState_reg_n_0_[10] ),
        .I2(\A_reg[23]_i_32_n_0 ),
        .I3(\FSM_onehot_CurrentState_reg_n_0_[2] ),
        .I4(\A_reg[23]_i_33_n_0 ),
        .I5(A[18]),
        .O(\A_reg[23]_i_20_n_0 ));
  LUT4 #(
    .INIT(16'hF708)) 
    \A_reg[23]_i_21 
       (.I0(\FSM_onehot_CurrentState_reg_n_0_[1] ),
        .I1(start_addr_reg[8]),
        .I2(\A_reg[23]_i_30_n_0 ),
        .I3(A[17]),
        .O(\A_reg[23]_i_21_n_0 ));
  LUT6 #(
    .INIT(64'h0000000080FF85FF)) 
    \A_reg[23]_i_22 
       (.I0(DATA[18]),
        .I1(DATA[19]),
        .I2(DATA[24]),
        .I3(DATA[11]),
        .I4(DATA[26]),
        .I5(\A_reg[23]_i_34_n_0 ),
        .O(\A_reg[23]_i_22_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT5 #(
    .INIT(32'hEFFDEFFB)) 
    \A_reg[23]_i_23 
       (.I0(DATA[4]),
        .I1(DATA[3]),
        .I2(DATA[2]),
        .I3(DATA[9]),
        .I4(DATA[8]),
        .O(\A_reg[23]_i_23_n_0 ));
  LUT6 #(
    .INIT(64'hFBFBFBFFFBFFFBFF)) 
    \A_reg[23]_i_24 
       (.I0(DATA[29]),
        .I1(DATA[30]),
        .I2(DATA[31]),
        .I3(DATA[11]),
        .I4(DATA[26]),
        .I5(DATA[24]),
        .O(\A_reg[23]_i_24_n_0 ));
  LUT6 #(
    .INIT(64'hFEFFFEFFFEFFFEFE)) 
    \A_reg[23]_i_25 
       (.I0(DATA[16]),
        .I1(DATA[27]),
        .I2(DATA[7]),
        .I3(DATA[11]),
        .I4(DATA[19]),
        .I5(DATA[18]),
        .O(\A_reg[23]_i_25_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFF7F)) 
    \A_reg[23]_i_26 
       (.I0(DATA[22]),
        .I1(DATA[5]),
        .I2(DATA[21]),
        .I3(DATA[25]),
        .I4(DATA[23]),
        .I5(DATA[12]),
        .O(\A_reg[23]_i_26_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT5 #(
    .INIT(32'hF7FFCFFB)) 
    \A_reg[23]_i_27 
       (.I0(DATA[11]),
        .I1(DATA[8]),
        .I2(DATA[18]),
        .I3(DATA[10]),
        .I4(DATA[9]),
        .O(\A_reg[23]_i_27_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \A_reg[23]_i_28 
       (.I0(\FSM_onehot_CurrentState_reg_n_0_[2] ),
        .I1(\FSM_onehot_CurrentState_reg_n_0_[7] ),
        .I2(\FSM_onehot_CurrentState_reg_n_0_[5] ),
        .I3(\FSM_onehot_CurrentState_reg_n_0_[3] ),
        .I4(\FSM_onehot_CurrentState_reg_n_0_[4] ),
        .I5(\FSM_onehot_CurrentState_reg_n_0_[6] ),
        .O(\A_reg[23]_i_28_n_0 ));
  LUT3 #(
    .INIT(8'hFE)) 
    \A_reg[23]_i_29 
       (.I0(\FSM_onehot_CurrentState_reg_n_0_[9] ),
        .I1(\FSM_onehot_CurrentState_reg_n_0_[8] ),
        .I2(\FSM_onehot_CurrentState_reg_n_0_[10] ),
        .O(\A_reg[23]_i_29_n_0 ));
  LUT5 #(
    .INIT(32'h444444F4)) 
    \A_reg[23]_i_3 
       (.I0(\DQ_O[15]_i_3_n_0 ),
        .I1(\FSM_onehot_CurrentState_reg_n_0_[33] ),
        .I2(\FSM_onehot_CurrentState_reg_n_0_[38] ),
        .I3(prog_done),
        .I4(\poll_cnt[0]_i_4_n_0 ),
        .O(\A_reg[23]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFEBF)) 
    \A_reg[23]_i_30 
       (.I0(\DQ_O[4]_i_8_n_0 ),
        .I1(DATA[2]),
        .I2(DATA[9]),
        .I3(DATA[4]),
        .I4(\A_reg[23]_i_35_n_0 ),
        .I5(\A_reg[23]_i_36_n_0 ),
        .O(\A_reg[23]_i_30_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF00080000)) 
    \A_reg[23]_i_31 
       (.I0(\FSM_onehot_CurrentState_reg_n_0_[1] ),
        .I1(start_addr_reg[9]),
        .I2(\A_reg[23]_i_27_n_0 ),
        .I3(\A_reg[23]_i_37_n_0 ),
        .I4(\A_reg[23]_i_22_n_0 ),
        .I5(\A_reg[23]_i_6_n_0 ),
        .O(\A_reg[23]_i_31_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \A_reg[23]_i_32 
       (.I0(\FSM_onehot_CurrentState_reg_n_0_[8] ),
        .I1(\FSM_onehot_CurrentState_reg_n_0_[9] ),
        .O(\A_reg[23]_i_32_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \A_reg[23]_i_33 
       (.I0(\FSM_onehot_CurrentState_reg_n_0_[6] ),
        .I1(\FSM_onehot_CurrentState_reg_n_0_[4] ),
        .I2(\FSM_onehot_CurrentState_reg_n_0_[3] ),
        .I3(\FSM_onehot_CurrentState_reg_n_0_[5] ),
        .I4(\FSM_onehot_CurrentState_reg_n_0_[7] ),
        .O(\A_reg[23]_i_33_n_0 ));
  LUT6 #(
    .INIT(64'hFFEBBFFFFFFFFFFF)) 
    \A_reg[23]_i_34 
       (.I0(WE_N_i_8_n_0),
        .I1(DATA[26]),
        .I2(DATA[28]),
        .I3(DATA[19]),
        .I4(DATA[20]),
        .I5(DATA[6]),
        .O(\A_reg[23]_i_34_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFDDFFFFF)) 
    \A_reg[23]_i_35 
       (.I0(DATA[20]),
        .I1(DATA[19]),
        .I2(DATA[28]),
        .I3(DATA[26]),
        .I4(DATA[6]),
        .I5(\A_reg[23]_i_38_n_0 ),
        .O(\A_reg[23]_i_35_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFEFFFFEF)) 
    \A_reg[23]_i_36 
       (.I0(\A_reg[23]_i_39_n_0 ),
        .I1(CS_N_i_8_n_0),
        .I2(DATA[11]),
        .I3(DATA[26]),
        .I4(DATA[24]),
        .I5(\A_reg[23]_i_26_n_0 ),
        .O(\A_reg[23]_i_36_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFDFE3F)) 
    \A_reg[23]_i_37 
       (.I0(DATA[8]),
        .I1(DATA[9]),
        .I2(DATA[2]),
        .I3(DATA[3]),
        .I4(DATA[4]),
        .I5(\A_reg[23]_i_40_n_0 ),
        .O(\A_reg[23]_i_37_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'h7E)) 
    \A_reg[23]_i_38 
       (.I0(DATA[9]),
        .I1(DATA[11]),
        .I2(DATA[10]),
        .O(\A_reg[23]_i_38_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \A_reg[23]_i_39 
       (.I0(DATA[3]),
        .I1(DATA[7]),
        .I2(\A_reg[23]_i_41_n_0 ),
        .I3(\A_reg[23]_i_42_n_0 ),
        .I4(DATA[16]),
        .I5(DATA[27]),
        .O(\A_reg[23]_i_39_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000002)) 
    \A_reg[23]_i_4 
       (.I0(\A_reg[23]_i_22_n_0 ),
        .I1(\A_reg[23]_i_23_n_0 ),
        .I2(\A_reg[23]_i_24_n_0 ),
        .I3(\A_reg[23]_i_25_n_0 ),
        .I4(\A_reg[23]_i_26_n_0 ),
        .I5(\A_reg[23]_i_27_n_0 ),
        .O(\A_reg[23]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFEFEFEFEE)) 
    \A_reg[23]_i_40 
       (.I0(\A_reg[23]_i_26_n_0 ),
        .I1(WE_N_i_17_n_0),
        .I2(DATA[11]),
        .I3(DATA[19]),
        .I4(DATA[18]),
        .I5(\A_reg[23]_i_24_n_0 ),
        .O(\A_reg[23]_i_40_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \A_reg[23]_i_41 
       (.I0(DATA[13]),
        .I1(DATA[14]),
        .O(\A_reg[23]_i_41_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \A_reg[23]_i_42 
       (.I0(DATA[18]),
        .I1(DATA[8]),
        .O(\A_reg[23]_i_42_n_0 ));
  LUT3 #(
    .INIT(8'h10)) 
    \A_reg[23]_i_5 
       (.I0(last_blk),
        .I1(PROM_SR[0]),
        .I2(\FSM_onehot_CurrentState_reg_n_0_[10] ),
        .O(\A_reg[23]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \A_reg[23]_i_6 
       (.I0(\FSM_onehot_CurrentState_reg_n_0_[20] ),
        .I1(\poll_cnt[0]_i_4_n_0 ),
        .O(\A_reg[23]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'h80)) 
    \A_reg[23]_i_7 
       (.I0(\A_reg[23]_i_4_n_0 ),
        .I1(start_addr_reg[14]),
        .I2(\FSM_onehot_CurrentState_reg_n_0_[1] ),
        .O(A_inc[22]));
  LUT3 #(
    .INIT(8'h80)) 
    \A_reg[23]_i_8 
       (.I0(\A_reg[23]_i_4_n_0 ),
        .I1(start_addr_reg[13]),
        .I2(\FSM_onehot_CurrentState_reg_n_0_[1] ),
        .O(A_inc[21]));
  LUT3 #(
    .INIT(8'h80)) 
    \A_reg[23]_i_9 
       (.I0(\A_reg[23]_i_4_n_0 ),
        .I1(start_addr_reg[12]),
        .I2(\FSM_onehot_CurrentState_reg_n_0_[1] ),
        .O(A_inc[20]));
  LUT2 #(
    .INIT(4'h6)) 
    \A_reg[7]_i_10 
       (.I0(A_inc[1]),
        .I1(A[2]),
        .O(\A_reg[7]_i_10_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \A_reg[7]_i_11 
       (.I0(A_inc[0]),
        .I1(A[1]),
        .O(\A_reg[7]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hFF7FFFFFFFFFFFFF)) 
    \A_reg[7]_i_12 
       (.I0(DATA[24]),
        .I1(DATA[26]),
        .I2(DATA[28]),
        .I3(DATA[20]),
        .I4(DATA[19]),
        .I5(DATA[18]),
        .O(\A_reg[7]_i_12_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT4 #(
    .INIT(16'hEFFF)) 
    \A_reg[7]_i_13 
       (.I0(DATA[23]),
        .I1(DATA[25]),
        .I2(DATA[10]),
        .I3(DATA[11]),
        .O(\A_reg[7]_i_13_n_0 ));
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    \A_reg[7]_i_14 
       (.I0(DATA[0]),
        .I1(DATA[1]),
        .I2(DATA[17]),
        .I3(DATA[14]),
        .I4(DATA[13]),
        .O(\A_reg[7]_i_14_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFB)) 
    \A_reg[7]_i_15 
       (.I0(DATA[8]),
        .I1(DATA[3]),
        .I2(DATA[2]),
        .I3(DATA[4]),
        .I4(DATA[9]),
        .O(\A_reg[7]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000002)) 
    \A_reg[7]_i_16 
       (.I0(\DQ_O[4]_i_9_n_0 ),
        .I1(DATA[15]),
        .I2(DATA[12]),
        .I3(DATA[7]),
        .I4(DATA[27]),
        .I5(DATA[16]),
        .O(\A_reg[7]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'h0001000000000000)) 
    \A_reg[7]_i_2 
       (.I0(\A_reg[7]_i_12_n_0 ),
        .I1(\A_reg[7]_i_13_n_0 ),
        .I2(\A_reg[7]_i_14_n_0 ),
        .I3(\A_reg[7]_i_15_n_0 ),
        .I4(\A_reg[7]_i_16_n_0 ),
        .I5(\FSM_onehot_CurrentState_reg_n_0_[1] ),
        .O(A_inc[1]));
  LUT6 #(
    .INIT(64'hFFFFFFFF1010FF10)) 
    \A_reg[7]_i_3 
       (.I0(\poll_cnt[0]_i_4_n_0 ),
        .I1(prog_done),
        .I2(\FSM_onehot_CurrentState_reg_n_0_[38] ),
        .I3(\FSM_onehot_CurrentState_reg_n_0_[33] ),
        .I4(\DQ_O[15]_i_3_n_0 ),
        .I5(\FSM_onehot_CurrentState_reg_n_0_[30] ),
        .O(A_inc[0]));
  LUT1 #(
    .INIT(2'h2)) 
    \A_reg[7]_i_4 
       (.I0(A[8]),
        .O(\A_reg[7]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \A_reg[7]_i_5 
       (.I0(A[7]),
        .O(\A_reg[7]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \A_reg[7]_i_6 
       (.I0(A[6]),
        .O(\A_reg[7]_i_6_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \A_reg[7]_i_7 
       (.I0(A[5]),
        .O(\A_reg[7]_i_7_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \A_reg[7]_i_8 
       (.I0(A[4]),
        .O(\A_reg[7]_i_8_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \A_reg[7]_i_9 
       (.I0(A[3]),
        .O(\A_reg[7]_i_9_n_0 ));
  FDRE \A_reg_reg[0] 
       (.C(CLK),
        .CE(A_reg_en),
        .D(\A_reg_reg[7]_i_1_n_15 ),
        .Q(A[1]),
        .R(rst_reg));
  FDRE \A_reg_reg[10] 
       (.C(CLK),
        .CE(A_reg_en),
        .D(\A_reg_reg[15]_i_1_n_13 ),
        .Q(A[11]),
        .R(rst_reg));
  FDRE \A_reg_reg[11] 
       (.C(CLK),
        .CE(A_reg_en),
        .D(\A_reg_reg[15]_i_1_n_12 ),
        .Q(A[12]),
        .R(rst_reg));
  FDRE \A_reg_reg[12] 
       (.C(CLK),
        .CE(A_reg_en),
        .D(\A_reg_reg[15]_i_1_n_11 ),
        .Q(A[13]),
        .R(rst_reg));
  FDRE \A_reg_reg[13] 
       (.C(CLK),
        .CE(A_reg_en),
        .D(\A_reg_reg[15]_i_1_n_10 ),
        .Q(A[14]),
        .R(rst_reg));
  FDRE \A_reg_reg[14] 
       (.C(CLK),
        .CE(A_reg_en),
        .D(\A_reg_reg[15]_i_1_n_9 ),
        .Q(A[15]),
        .R(rst_reg));
  FDRE \A_reg_reg[15] 
       (.C(CLK),
        .CE(A_reg_en),
        .D(\A_reg_reg[15]_i_1_n_8 ),
        .Q(A[16]),
        .R(rst_reg));
  CARRY8 \A_reg_reg[15]_i_1 
       (.CI(\A_reg_reg[7]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\A_reg_reg[15]_i_1_n_0 ,\A_reg_reg[15]_i_1_n_1 ,\A_reg_reg[15]_i_1_n_2 ,\A_reg_reg[15]_i_1_n_3 ,\NLW_A_reg_reg[15]_i_1_CO_UNCONNECTED [3],\A_reg_reg[15]_i_1_n_5 ,\A_reg_reg[15]_i_1_n_6 ,\A_reg_reg[15]_i_1_n_7 }),
        .DI(A_inc[15:8]),
        .O({\A_reg_reg[15]_i_1_n_8 ,\A_reg_reg[15]_i_1_n_9 ,\A_reg_reg[15]_i_1_n_10 ,\A_reg_reg[15]_i_1_n_11 ,\A_reg_reg[15]_i_1_n_12 ,\A_reg_reg[15]_i_1_n_13 ,\A_reg_reg[15]_i_1_n_14 ,\A_reg_reg[15]_i_1_n_15 }),
        .S({\A_reg[15]_i_10_n_0 ,\A_reg[15]_i_11_n_0 ,\A_reg[15]_i_12_n_0 ,\A_reg[15]_i_13_n_0 ,\A_reg[15]_i_14_n_0 ,\A_reg[15]_i_15_n_0 ,\A_reg[15]_i_16_n_0 ,\A_reg[15]_i_17_n_0 }));
  FDRE \A_reg_reg[16] 
       (.C(CLK),
        .CE(A_reg_en),
        .D(\A_reg_reg[23]_i_2_n_15 ),
        .Q(A[17]),
        .R(rst_reg));
  FDRE \A_reg_reg[17] 
       (.C(CLK),
        .CE(A_reg_en),
        .D(\A_reg_reg[23]_i_2_n_14 ),
        .Q(A[18]),
        .R(rst_reg));
  FDRE \A_reg_reg[18] 
       (.C(CLK),
        .CE(A_reg_en),
        .D(\A_reg_reg[23]_i_2_n_13 ),
        .Q(A[19]),
        .R(rst_reg));
  FDRE \A_reg_reg[19] 
       (.C(CLK),
        .CE(A_reg_en),
        .D(\A_reg_reg[23]_i_2_n_12 ),
        .Q(A[20]),
        .R(rst_reg));
  FDRE \A_reg_reg[1] 
       (.C(CLK),
        .CE(A_reg_en),
        .D(\A_reg_reg[7]_i_1_n_14 ),
        .Q(A[2]),
        .R(rst_reg));
  FDRE \A_reg_reg[20] 
       (.C(CLK),
        .CE(A_reg_en),
        .D(\A_reg_reg[23]_i_2_n_11 ),
        .Q(A[21]),
        .R(rst_reg));
  FDRE \A_reg_reg[21] 
       (.C(CLK),
        .CE(A_reg_en),
        .D(\A_reg_reg[23]_i_2_n_10 ),
        .Q(A[22]),
        .R(rst_reg));
  FDRE \A_reg_reg[22] 
       (.C(CLK),
        .CE(A_reg_en),
        .D(\A_reg_reg[23]_i_2_n_9 ),
        .Q(A[23]),
        .R(rst_reg));
  FDRE \A_reg_reg[23] 
       (.C(CLK),
        .CE(A_reg_en),
        .D(\A_reg_reg[23]_i_2_n_8 ),
        .Q(A[24]),
        .R(rst_reg));
  CARRY8 \A_reg_reg[23]_i_2 
       (.CI(\A_reg_reg[15]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\NLW_A_reg_reg[23]_i_2_CO_UNCONNECTED [7],\A_reg_reg[23]_i_2_n_1 ,\A_reg_reg[23]_i_2_n_2 ,\A_reg_reg[23]_i_2_n_3 ,\NLW_A_reg_reg[23]_i_2_CO_UNCONNECTED [3],\A_reg_reg[23]_i_2_n_5 ,\A_reg_reg[23]_i_2_n_6 ,\A_reg_reg[23]_i_2_n_7 }),
        .DI({1'b0,A_inc[22:16]}),
        .O({\A_reg_reg[23]_i_2_n_8 ,\A_reg_reg[23]_i_2_n_9 ,\A_reg_reg[23]_i_2_n_10 ,\A_reg_reg[23]_i_2_n_11 ,\A_reg_reg[23]_i_2_n_12 ,\A_reg_reg[23]_i_2_n_13 ,\A_reg_reg[23]_i_2_n_14 ,\A_reg_reg[23]_i_2_n_15 }),
        .S({\A_reg[23]_i_14_n_0 ,\A_reg[23]_i_15_n_0 ,\A_reg[23]_i_16_n_0 ,\A_reg[23]_i_17_n_0 ,\A_reg[23]_i_18_n_0 ,\A_reg[23]_i_19_n_0 ,\A_reg[23]_i_20_n_0 ,\A_reg[23]_i_21_n_0 }));
  FDRE \A_reg_reg[2] 
       (.C(CLK),
        .CE(A_reg_en),
        .D(\A_reg_reg[7]_i_1_n_13 ),
        .Q(A[3]),
        .R(rst_reg));
  FDRE \A_reg_reg[3] 
       (.C(CLK),
        .CE(A_reg_en),
        .D(\A_reg_reg[7]_i_1_n_12 ),
        .Q(A[4]),
        .R(rst_reg));
  FDRE \A_reg_reg[4] 
       (.C(CLK),
        .CE(A_reg_en),
        .D(\A_reg_reg[7]_i_1_n_11 ),
        .Q(A[5]),
        .R(rst_reg));
  FDRE \A_reg_reg[5] 
       (.C(CLK),
        .CE(A_reg_en),
        .D(\A_reg_reg[7]_i_1_n_10 ),
        .Q(A[6]),
        .R(rst_reg));
  FDRE \A_reg_reg[6] 
       (.C(CLK),
        .CE(A_reg_en),
        .D(\A_reg_reg[7]_i_1_n_9 ),
        .Q(A[7]),
        .R(rst_reg));
  FDRE \A_reg_reg[7] 
       (.C(CLK),
        .CE(A_reg_en),
        .D(\A_reg_reg[7]_i_1_n_8 ),
        .Q(A[8]),
        .R(rst_reg));
  CARRY8 \A_reg_reg[7]_i_1 
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({\A_reg_reg[7]_i_1_n_0 ,\A_reg_reg[7]_i_1_n_1 ,\A_reg_reg[7]_i_1_n_2 ,\A_reg_reg[7]_i_1_n_3 ,\NLW_A_reg_reg[7]_i_1_CO_UNCONNECTED [3],\A_reg_reg[7]_i_1_n_5 ,\A_reg_reg[7]_i_1_n_6 ,\A_reg_reg[7]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,A_inc[1:0]}),
        .O({\A_reg_reg[7]_i_1_n_8 ,\A_reg_reg[7]_i_1_n_9 ,\A_reg_reg[7]_i_1_n_10 ,\A_reg_reg[7]_i_1_n_11 ,\A_reg_reg[7]_i_1_n_12 ,\A_reg_reg[7]_i_1_n_13 ,\A_reg_reg[7]_i_1_n_14 ,\A_reg_reg[7]_i_1_n_15 }),
        .S({\A_reg[7]_i_4_n_0 ,\A_reg[7]_i_5_n_0 ,\A_reg[7]_i_6_n_0 ,\A_reg[7]_i_7_n_0 ,\A_reg[7]_i_8_n_0 ,\A_reg[7]_i_9_n_0 ,\A_reg[7]_i_10_n_0 ,\A_reg[7]_i_11_n_0 }));
  FDRE \A_reg_reg[8] 
       (.C(CLK),
        .CE(A_reg_en),
        .D(\A_reg_reg[15]_i_1_n_15 ),
        .Q(A[9]),
        .R(rst_reg));
  FDRE \A_reg_reg[9] 
       (.C(CLK),
        .CE(A_reg_en),
        .D(\A_reg_reg[15]_i_1_n_14 ),
        .Q(A[10]),
        .R(rst_reg));
  LUT5 #(
    .INIT(32'hFFFFABAA)) 
    CS_N_i_1
       (.I0(rst_reg),
        .I1(CS_N_i_2_n_0),
        .I2(CS_N_i_3_n_0),
        .I3(\FSM_onehot_CurrentState_reg_n_0_[1] ),
        .I4(CS_N_i_4_n_0),
        .O(CS_N_reg__0));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT2 #(
    .INIT(4'h1)) 
    CS_N_i_10
       (.I0(DATA[26]),
        .I1(DATA[24]),
        .O(CS_N_i_10_n_0));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT2 #(
    .INIT(4'h7)) 
    CS_N_i_11
       (.I0(DATA[11]),
        .I1(DATA[10]),
        .O(CS_N_i_11_n_0));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    CS_N_i_12
       (.I0(DATA[12]),
        .I1(DATA[23]),
        .I2(DATA[25]),
        .O(CS_N_i_12_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    CS_N_i_13
       (.I0(DATA[28]),
        .I1(DATA[20]),
        .O(CS_N_i_13_n_0));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAAE)) 
    CS_N_i_2
       (.I0(\start_addr_reg[15]_i_2_n_0 ),
        .I1(CS_N_i_5_n_0),
        .I2(CS_N_i_6_n_0),
        .I3(CS_N_i_7_n_0),
        .I4(WE_N_i_9_n_0),
        .I5(WE_N_i_8_n_0),
        .O(CS_N_i_2_n_0));
  LUT6 #(
    .INIT(64'h0001000000000000)) 
    CS_N_i_3
       (.I0(CS_N_i_8_n_0),
        .I1(DATA[25]),
        .I2(DATA[27]),
        .I3(DATA[28]),
        .I4(DATA[26]),
        .I5(DATA[24]),
        .O(CS_N_i_3_n_0));
  LUT4 #(
    .INIT(16'hAAEA)) 
    CS_N_i_4
       (.I0(CS_N_i_9_n_0),
        .I1(\FSM_onehot_CurrentState_reg_n_0_[10] ),
        .I2(last_blk),
        .I3(PROM_SR[0]),
        .O(CS_N_i_4_n_0));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT5 #(
    .INIT(32'h00009800)) 
    CS_N_i_5
       (.I0(DATA[19]),
        .I1(DATA[18]),
        .I2(DATA[20]),
        .I3(WE_N_i_12_n_0),
        .I4(WE_N_i_11_n_0),
        .O(CS_N_i_5_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFF2F2FFF2)) 
    CS_N_i_6
       (.I0(DATA[9]),
        .I1(CS_N_i_10_n_0),
        .I2(CS_N_i_8_n_0),
        .I3(CS_N_i_11_n_0),
        .I4(DATA[4]),
        .I5(CS_N_i_12_n_0),
        .O(CS_N_i_6_n_0));
  LUT6 #(
    .INIT(64'hFFFFF22FF2F2FFFF)) 
    CS_N_i_7
       (.I0(DATA[19]),
        .I1(CS_N_i_13_n_0),
        .I2(DATA[2]),
        .I3(DATA[4]),
        .I4(DATA[3]),
        .I5(DATA[8]),
        .O(CS_N_i_7_n_0));
  LUT3 #(
    .INIT(8'hFB)) 
    CS_N_i_8
       (.I0(DATA[31]),
        .I1(DATA[30]),
        .I2(DATA[29]),
        .O(CS_N_i_8_n_0));
  LUT5 #(
    .INIT(32'h0000F888)) 
    CS_N_i_9
       (.I0(\FSM_onehot_CurrentState_reg_n_0_[20] ),
        .I1(last_blk),
        .I2(\FSM_onehot_CurrentState_reg_n_0_[38] ),
        .I3(prog_done),
        .I4(\poll_cnt[0]_i_4_n_0 ),
        .O(CS_N_i_9_n_0));
  FDSE CS_N_reg
       (.C(CLK),
        .CE(1'b1),
        .D(CS_N_reg__0),
        .Q(CS_N),
        .S(rst_reg));
  LUT6 #(
    .INIT(64'hFFFFFFF0FFF4FFF0)) 
    \DQ_O[0]_i_1 
       (.I0(\DQ_O[15]_i_3_n_0 ),
        .I1(\FSM_onehot_CurrentState_reg_n_0_[33] ),
        .I2(\DQ_O[5]_i_5_n_0 ),
        .I3(\DQ_O[7]_i_3_n_0 ),
        .I4(data_sel[0]),
        .I5(\DQ_O[15]_i_2_n_0 ),
        .O(DQ_O_reg__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \DQ_O[0]_i_2 
       (.I0(DATA[8]),
        .I1(byte_sel_reg),
        .I2(DATA[24]),
        .O(data_sel[0]));
  LUT6 #(
    .INIT(64'hAAA000A0EEE000E0)) 
    \DQ_O[10]_i_1 
       (.I0(\DQ_O[15]_i_2_n_0 ),
        .I1(\FSM_onehot_CurrentState_reg_n_0_[33] ),
        .I2(DATA[18]),
        .I3(byte_sel_reg),
        .I4(DATA[2]),
        .I5(\DQ_O[15]_i_3_n_0 ),
        .O(DQ_O_reg__0[10]));
  LUT6 #(
    .INIT(64'hAAA000A0EEE000E0)) 
    \DQ_O[11]_i_1 
       (.I0(\DQ_O[15]_i_2_n_0 ),
        .I1(\FSM_onehot_CurrentState_reg_n_0_[33] ),
        .I2(DATA[19]),
        .I3(byte_sel_reg),
        .I4(DATA[3]),
        .I5(\DQ_O[15]_i_3_n_0 ),
        .O(DQ_O_reg__0[11]));
  LUT6 #(
    .INIT(64'hAAA000A0EEE000E0)) 
    \DQ_O[12]_i_1 
       (.I0(\DQ_O[15]_i_2_n_0 ),
        .I1(\FSM_onehot_CurrentState_reg_n_0_[33] ),
        .I2(DATA[20]),
        .I3(byte_sel_reg),
        .I4(DATA[4]),
        .I5(\DQ_O[15]_i_3_n_0 ),
        .O(DQ_O_reg__0[12]));
  LUT6 #(
    .INIT(64'hAAA000A0EEE000E0)) 
    \DQ_O[13]_i_1 
       (.I0(\DQ_O[15]_i_2_n_0 ),
        .I1(\FSM_onehot_CurrentState_reg_n_0_[33] ),
        .I2(DATA[21]),
        .I3(byte_sel_reg),
        .I4(DATA[5]),
        .I5(\DQ_O[15]_i_3_n_0 ),
        .O(DQ_O_reg__0[13]));
  LUT6 #(
    .INIT(64'hAAA000A0EEE000E0)) 
    \DQ_O[14]_i_1 
       (.I0(\DQ_O[15]_i_2_n_0 ),
        .I1(\FSM_onehot_CurrentState_reg_n_0_[33] ),
        .I2(DATA[22]),
        .I3(byte_sel_reg),
        .I4(DATA[6]),
        .I5(\DQ_O[15]_i_3_n_0 ),
        .O(DQ_O_reg__0[14]));
  LUT6 #(
    .INIT(64'hAAA000A0EEE000E0)) 
    \DQ_O[15]_i_1 
       (.I0(\DQ_O[15]_i_2_n_0 ),
        .I1(\FSM_onehot_CurrentState_reg_n_0_[33] ),
        .I2(DATA[23]),
        .I3(byte_sel_reg),
        .I4(DATA[7]),
        .I5(\DQ_O[15]_i_3_n_0 ),
        .O(DQ_O_reg__0[15]));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \DQ_O[15]_i_2 
       (.I0(\FSM_onehot_CurrentState_reg_n_0_[30] ),
        .I1(\FSM_onehot_CurrentState_reg_n_0_[29] ),
        .I2(\FSM_onehot_CurrentState_reg_n_0_[28] ),
        .I3(\FSM_onehot_CurrentState_reg_n_0_[41] ),
        .I4(\FSM_onehot_CurrentState_reg_n_0_[31] ),
        .O(\DQ_O[15]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h0800)) 
    \DQ_O[15]_i_3 
       (.I0(data_cnt_reg__0[8]),
        .I1(data_cnt_reg__0[6]),
        .I2(\data_cnt[6]_i_2_n_0 ),
        .I3(data_cnt_reg__0[7]),
        .O(\DQ_O[15]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFAABAAA)) 
    \DQ_O[1]_i_1 
       (.I0(\DQ_O[8]_i_2_n_0 ),
        .I1(\DQ_O[15]_i_3_n_0 ),
        .I2(\FSM_onehot_CurrentState_reg_n_0_[33] ),
        .I3(data_sel[1]),
        .I4(\DQ_O[15]_i_2_n_0 ),
        .O(DQ_O_reg__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \DQ_O[1]_i_2 
       (.I0(DATA[9]),
        .I1(byte_sel_reg),
        .I2(DATA[25]),
        .O(data_sel[1]));
  LUT5 #(
    .INIT(32'hFFAABAAA)) 
    \DQ_O[2]_i_1 
       (.I0(\DQ_O[8]_i_2_n_0 ),
        .I1(\DQ_O[15]_i_3_n_0 ),
        .I2(\FSM_onehot_CurrentState_reg_n_0_[33] ),
        .I3(data_sel[2]),
        .I4(\DQ_O[15]_i_2_n_0 ),
        .O(DQ_O_reg__0[2]));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \DQ_O[2]_i_2 
       (.I0(DATA[10]),
        .I1(byte_sel_reg),
        .I2(DATA[26]),
        .O(data_sel[2]));
  LUT6 #(
    .INIT(64'hFFFFFFF0FFF4FFF0)) 
    \DQ_O[3]_i_1 
       (.I0(\DQ_O[15]_i_3_n_0 ),
        .I1(\FSM_onehot_CurrentState_reg_n_0_[33] ),
        .I2(\DQ_O[5]_i_5_n_0 ),
        .I3(\DQ_O[7]_i_3_n_0 ),
        .I4(data_sel[3]),
        .I5(\DQ_O[15]_i_2_n_0 ),
        .O(DQ_O_reg__0[3]));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \DQ_O[3]_i_2 
       (.I0(DATA[11]),
        .I1(byte_sel_reg),
        .I2(DATA[27]),
        .O(data_sel[3]));
  LUT6 #(
    .INIT(64'hFFFFFFEAFFFAFFEA)) 
    \DQ_O[4]_i_1 
       (.I0(\DQ_O[4]_i_2_n_0 ),
        .I1(\DQ_O[15]_i_2_n_0 ),
        .I2(data_sel[4]),
        .I3(\DQ_O[4]_i_4_n_0 ),
        .I4(\FSM_onehot_CurrentState_reg_n_0_[33] ),
        .I5(\DQ_O[15]_i_3_n_0 ),
        .O(DQ_O_reg__0[4]));
  LUT2 #(
    .INIT(4'hB)) 
    \DQ_O[4]_i_10 
       (.I0(DATA[3]),
        .I1(DATA[8]),
        .O(\DQ_O[4]_i_10_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \DQ_O[4]_i_11 
       (.I0(DATA[19]),
        .I1(DATA[18]),
        .O(\DQ_O[4]_i_11_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \DQ_O[4]_i_12 
       (.I0(DATA[26]),
        .I1(DATA[24]),
        .O(\DQ_O[4]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \DQ_O[4]_i_2 
       (.I0(\DQ_O[7]_i_4_n_0 ),
        .I1(\DQ_O[6]_i_6_n_0 ),
        .I2(\DQ_O[8]_i_2_n_0 ),
        .I3(\FSM_onehot_CurrentState_reg_n_0_[12] ),
        .I4(\FSM_onehot_CurrentState_reg_n_0_[16] ),
        .I5(\DQ_O[7]_i_5_n_0 ),
        .O(\DQ_O[4]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \DQ_O[4]_i_3 
       (.I0(DATA[12]),
        .I1(byte_sel_reg),
        .I2(DATA[28]),
        .O(data_sel[4]));
  LUT6 #(
    .INIT(64'h0001000000000000)) 
    \DQ_O[4]_i_4 
       (.I0(\DQ_O[4]_i_5_n_0 ),
        .I1(\DQ_O[4]_i_6_n_0 ),
        .I2(\DQ_O[4]_i_7_n_0 ),
        .I3(\DQ_O[4]_i_8_n_0 ),
        .I4(\DQ_O[4]_i_9_n_0 ),
        .I5(\FSM_onehot_CurrentState_reg_n_0_[1] ),
        .O(\DQ_O[4]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFEFF)) 
    \DQ_O[4]_i_5 
       (.I0(DATA[25]),
        .I1(DATA[23]),
        .I2(DATA[12]),
        .I3(DATA[4]),
        .I4(DATA[9]),
        .I5(DATA[2]),
        .O(\DQ_O[4]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFBFFFFFF)) 
    \DQ_O[4]_i_6 
       (.I0(DATA[7]),
        .I1(DATA[20]),
        .I2(DATA[16]),
        .I3(DATA[13]),
        .I4(DATA[14]),
        .I5(\DQ_O[4]_i_10_n_0 ),
        .O(\DQ_O[4]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \DQ_O[4]_i_7 
       (.I0(DATA[11]),
        .I1(DATA[10]),
        .I2(\DQ_O[4]_i_11_n_0 ),
        .I3(DATA[28]),
        .I4(DATA[27]),
        .I5(\DQ_O[4]_i_12_n_0 ),
        .O(\DQ_O[4]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hBFFF)) 
    \DQ_O[4]_i_8 
       (.I0(DATA[15]),
        .I1(DATA[0]),
        .I2(DATA[1]),
        .I3(DATA[17]),
        .O(\DQ_O[4]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT5 #(
    .INIT(32'h00008000)) 
    \DQ_O[4]_i_9 
       (.I0(DATA[21]),
        .I1(DATA[5]),
        .I2(DATA[22]),
        .I3(DATA[6]),
        .I4(CS_N_i_8_n_0),
        .O(\DQ_O[4]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFEA)) 
    \DQ_O[5]_i_1 
       (.I0(\DQ_O[5]_i_2_n_0 ),
        .I1(data_sel[5]),
        .I2(\DQ_O[15]_i_2_n_0 ),
        .I3(\DQ_O[5]_i_4_n_0 ),
        .I4(\DQ_O[5]_i_5_n_0 ),
        .I5(\DQ_O[5]_i_6_n_0 ),
        .O(DQ_O_reg__0[5]));
  LUT6 #(
    .INIT(64'h0000000000000004)) 
    \DQ_O[5]_i_10 
       (.I0(unlck_cnt_reg__0[7]),
        .I1(unlck_cnt_reg__0[8]),
        .I2(unlck_cnt_reg__0[2]),
        .I3(\DQ_O[5]_i_11_n_0 ),
        .I4(unlck_cnt_reg__0[0]),
        .I5(unlck_cnt_reg__0[1]),
        .O(\DQ_O[5]_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \DQ_O[5]_i_11 
       (.I0(unlck_cnt_reg__0[4]),
        .I1(unlck_cnt_reg__0[3]),
        .I2(unlck_cnt_reg__0[6]),
        .I3(unlck_cnt_reg__0[5]),
        .O(\DQ_O[5]_i_11_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF0008)) 
    \DQ_O[5]_i_2 
       (.I0(\FSM_onehot_CurrentState_reg_n_0_[1] ),
        .I1(\A_reg[7]_i_16_n_0 ),
        .I2(\DQ_O[5]_i_7_n_0 ),
        .I3(\DQ_O[5]_i_8_n_0 ),
        .I4(\DQ_O[5]_i_9_n_0 ),
        .O(\DQ_O[5]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \DQ_O[5]_i_3 
       (.I0(DATA[13]),
        .I1(byte_sel_reg),
        .I2(DATA[29]),
        .O(data_sel[5]));
  LUT5 #(
    .INIT(32'h02FF0202)) 
    \DQ_O[5]_i_4 
       (.I0(\FSM_onehot_CurrentState_reg_n_0_[10] ),
        .I1(PROM_SR[0]),
        .I2(last_blk),
        .I3(\DQ_O[5]_i_10_n_0 ),
        .I4(\FSM_onehot_CurrentState_reg_n_0_[11] ),
        .O(\DQ_O[5]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFF101010)) 
    \DQ_O[5]_i_5 
       (.I0(\poll_cnt[0]_i_4_n_0 ),
        .I1(prog_done),
        .I2(\FSM_onehot_CurrentState_reg_n_0_[38] ),
        .I3(PROM_SR[7]),
        .I4(\FSM_onehot_CurrentState_reg_n_0_[26] ),
        .I5(\FSM_onehot_CurrentState_reg_n_0_[22] ),
        .O(\DQ_O[5]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \DQ_O[5]_i_6 
       (.I0(\FSM_onehot_CurrentState_reg_n_0_[27] ),
        .I1(\FSM_onehot_CurrentState_reg_n_0_[42] ),
        .I2(\FSM_onehot_CurrentState_reg_n_0_[13] ),
        .I3(\FSM_onehot_CurrentState_reg_n_0_[14] ),
        .I4(\FSM_onehot_CurrentState_reg_n_0_[2] ),
        .O(\DQ_O[5]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hEFFFEFFFEFFFEFFB)) 
    \DQ_O[5]_i_7 
       (.I0(\DQ_O[7]_i_8_n_0 ),
        .I1(DATA[20]),
        .I2(DATA[24]),
        .I3(DATA[26]),
        .I4(DATA[19]),
        .I5(DATA[18]),
        .O(\DQ_O[5]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFEFFFFBFFFFF)) 
    \DQ_O[5]_i_8 
       (.I0(WE_N_i_13_n_0),
        .I1(DATA[9]),
        .I2(DATA[8]),
        .I3(DATA[18]),
        .I4(DATA[2]),
        .I5(DATA[3]),
        .O(\DQ_O[5]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'h45400000)) 
    \DQ_O[5]_i_9 
       (.I0(\DQ_O[15]_i_3_n_0 ),
        .I1(DATA[13]),
        .I2(byte_sel_reg),
        .I3(DATA[29]),
        .I4(\FSM_onehot_CurrentState_reg_n_0_[33] ),
        .O(\DQ_O[5]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFEA)) 
    \DQ_O[6]_i_1 
       (.I0(\DQ_O[6]_i_2_n_0 ),
        .I1(\A_reg[23]_i_4_n_0 ),
        .I2(\FSM_onehot_CurrentState_reg_n_0_[1] ),
        .I3(\DQ_O[6]_i_3_n_0 ),
        .I4(\DQ_O[6]_i_4_n_0 ),
        .I5(\DQ_O[6]_i_5_n_0 ),
        .O(DQ_O_reg__0[6]));
  LUT5 #(
    .INIT(32'hFFB80000)) 
    \DQ_O[6]_i_2 
       (.I0(DATA[14]),
        .I1(byte_sel_reg),
        .I2(DATA[30]),
        .I3(\DQ_O[15]_i_3_n_0 ),
        .I4(\FSM_onehot_CurrentState_reg_n_0_[33] ),
        .O(\DQ_O[6]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hA808)) 
    \DQ_O[6]_i_3 
       (.I0(\DQ_O[15]_i_2_n_0 ),
        .I1(DATA[30]),
        .I2(byte_sel_reg),
        .I3(DATA[14]),
        .O(\DQ_O[6]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \DQ_O[6]_i_4 
       (.I0(\DQ_O[6]_i_6_n_0 ),
        .I1(\FSM_onehot_CurrentState_reg_n_0_[27] ),
        .I2(\FSM_onehot_CurrentState_reg_n_0_[12] ),
        .I3(\DQ_O[6]_i_7_n_0 ),
        .I4(\poll_cnt[0]_i_5_n_0 ),
        .I5(\DQ_O[7]_i_5_n_0 ),
        .O(\DQ_O[6]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \DQ_O[6]_i_5 
       (.I0(\DQ_O[5]_i_4_n_0 ),
        .I1(\FSM_onehot_CurrentState_reg_n_0_[3] ),
        .I2(\FSM_onehot_CurrentState_reg_n_0_[4] ),
        .I3(\FSM_onehot_CurrentState_reg_n_0_[2] ),
        .O(\DQ_O[6]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hFF02)) 
    \DQ_O[6]_i_6 
       (.I0(\FSM_onehot_CurrentState_reg_n_0_[20] ),
        .I1(last_blk),
        .I2(\poll_cnt[0]_i_4_n_0 ),
        .I3(\FSM_onehot_CurrentState_reg_n_0_[15] ),
        .O(\DQ_O[6]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \DQ_O[6]_i_7 
       (.I0(\FSM_onehot_CurrentState_reg_n_0_[16] ),
        .I1(\FSM_onehot_CurrentState_reg_n_0_[22] ),
        .O(\DQ_O[6]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \DQ_O[7]_i_1 
       (.I0(\DQ_O[7]_i_2_n_0 ),
        .I1(\FSM_onehot_CurrentState_reg_n_0_[22] ),
        .I2(\FSM_onehot_CurrentState_reg_n_0_[16] ),
        .I3(\DQ_O[7]_i_3_n_0 ),
        .I4(\FSM_onehot_CurrentState_reg_n_0_[15] ),
        .I5(\DQ_O[7]_i_4_n_0 ),
        .O(DQ_O_reg__0[7]));
  LUT6 #(
    .INIT(64'hFFFFFFF8FFFCFFF8)) 
    \DQ_O[7]_i_2 
       (.I0(\DQ_O[15]_i_3_n_0 ),
        .I1(\FSM_onehot_CurrentState_reg_n_0_[33] ),
        .I2(\DQ_O[7]_i_5_n_0 ),
        .I3(\poll_cnt[0]_i_5_n_0 ),
        .I4(data_sel[7]),
        .I5(\DQ_O[15]_i_2_n_0 ),
        .O(\DQ_O[7]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hFF08)) 
    \DQ_O[7]_i_3 
       (.I0(\FSM_onehot_CurrentState_reg_n_0_[1] ),
        .I1(\A_reg[7]_i_16_n_0 ),
        .I2(\DQ_O[7]_i_7_n_0 ),
        .I3(\FSM_onehot_CurrentState_reg_n_0_[27] ),
        .O(\DQ_O[7]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \DQ_O[7]_i_4 
       (.I0(\FSM_onehot_CurrentState_reg_n_0_[5] ),
        .I1(\FSM_onehot_CurrentState_reg_n_0_[3] ),
        .I2(\FSM_onehot_CurrentState_reg_n_0_[4] ),
        .I3(\FSM_onehot_CurrentState_reg_n_0_[6] ),
        .O(\DQ_O[7]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \DQ_O[7]_i_5 
       (.I0(\FSM_onehot_CurrentState_reg_n_0_[32] ),
        .I1(\FSM_onehot_CurrentState_reg_n_0_[34] ),
        .O(\DQ_O[7]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \DQ_O[7]_i_6 
       (.I0(DATA[15]),
        .I1(byte_sel_reg),
        .I2(DATA[31]),
        .O(data_sel[7]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFBFFFFFF)) 
    \DQ_O[7]_i_7 
       (.I0(\DQ_O[7]_i_8_n_0 ),
        .I1(DATA[8]),
        .I2(DATA[3]),
        .I3(DATA[2]),
        .I4(DATA[9]),
        .I5(\DQ_O[7]_i_9_n_0 ),
        .O(\DQ_O[7]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFEF)) 
    \DQ_O[7]_i_8 
       (.I0(\A_reg[7]_i_14_n_0 ),
        .I1(DATA[4]),
        .I2(DATA[28]),
        .I3(DATA[23]),
        .I4(DATA[25]),
        .I5(CS_N_i_11_n_0),
        .O(\DQ_O[7]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFD)) 
    \DQ_O[7]_i_9 
       (.I0(DATA[20]),
        .I1(DATA[19]),
        .I2(DATA[26]),
        .I3(DATA[24]),
        .I4(DATA[18]),
        .O(\DQ_O[7]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hFFAABAAA)) 
    \DQ_O[8]_i_1 
       (.I0(\DQ_O[8]_i_2_n_0 ),
        .I1(\DQ_O[15]_i_3_n_0 ),
        .I2(\FSM_onehot_CurrentState_reg_n_0_[33] ),
        .I3(data_sel[8]),
        .I4(\DQ_O[15]_i_2_n_0 ),
        .O(DQ_O_reg__0[8]));
  LUT3 #(
    .INIT(8'hF8)) 
    \DQ_O[8]_i_2 
       (.I0(\FSM_onehot_CurrentState_reg_n_0_[26] ),
        .I1(PROM_SR[7]),
        .I2(\FSM_onehot_CurrentState_reg_n_0_[27] ),
        .O(\DQ_O[8]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \DQ_O[8]_i_3 
       (.I0(DATA[0]),
        .I1(byte_sel_reg),
        .I2(DATA[16]),
        .O(data_sel[8]));
  LUT6 #(
    .INIT(64'hAAA000A0EEE000E0)) 
    \DQ_O[9]_i_1 
       (.I0(\DQ_O[15]_i_2_n_0 ),
        .I1(\FSM_onehot_CurrentState_reg_n_0_[33] ),
        .I2(DATA[17]),
        .I3(byte_sel_reg),
        .I4(DATA[1]),
        .I5(\DQ_O[15]_i_3_n_0 ),
        .O(DQ_O_reg__0[9]));
  FDRE \DQ_O_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(DQ_O_reg__0[0]),
        .Q(DQ_O[0]),
        .R(rst_reg));
  FDRE \DQ_O_reg[10] 
       (.C(CLK),
        .CE(1'b1),
        .D(DQ_O_reg__0[10]),
        .Q(DQ_O[10]),
        .R(rst_reg));
  FDRE \DQ_O_reg[11] 
       (.C(CLK),
        .CE(1'b1),
        .D(DQ_O_reg__0[11]),
        .Q(DQ_O[11]),
        .R(rst_reg));
  FDRE \DQ_O_reg[12] 
       (.C(CLK),
        .CE(1'b1),
        .D(DQ_O_reg__0[12]),
        .Q(DQ_O[12]),
        .R(rst_reg));
  FDRE \DQ_O_reg[13] 
       (.C(CLK),
        .CE(1'b1),
        .D(DQ_O_reg__0[13]),
        .Q(DQ_O[13]),
        .R(rst_reg));
  FDRE \DQ_O_reg[14] 
       (.C(CLK),
        .CE(1'b1),
        .D(DQ_O_reg__0[14]),
        .Q(DQ_O[14]),
        .R(rst_reg));
  FDRE \DQ_O_reg[15] 
       (.C(CLK),
        .CE(1'b1),
        .D(DQ_O_reg__0[15]),
        .Q(DQ_O[15]),
        .R(rst_reg));
  FDRE \DQ_O_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(DQ_O_reg__0[1]),
        .Q(DQ_O[1]),
        .R(rst_reg));
  FDRE \DQ_O_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(DQ_O_reg__0[2]),
        .Q(DQ_O[2]),
        .R(rst_reg));
  FDRE \DQ_O_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .D(DQ_O_reg__0[3]),
        .Q(DQ_O[3]),
        .R(rst_reg));
  FDRE \DQ_O_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .D(DQ_O_reg__0[4]),
        .Q(DQ_O[4]),
        .R(rst_reg));
  FDRE \DQ_O_reg[5] 
       (.C(CLK),
        .CE(1'b1),
        .D(DQ_O_reg__0[5]),
        .Q(DQ_O[5]),
        .R(rst_reg));
  FDRE \DQ_O_reg[6] 
       (.C(CLK),
        .CE(1'b1),
        .D(DQ_O_reg__0[6]),
        .Q(DQ_O[6]),
        .R(rst_reg));
  FDRE \DQ_O_reg[7] 
       (.C(CLK),
        .CE(1'b1),
        .D(DQ_O_reg__0[7]),
        .Q(DQ_O[7]),
        .R(rst_reg));
  FDRE \DQ_O_reg[8] 
       (.C(CLK),
        .CE(1'b1),
        .D(DQ_O_reg__0[8]),
        .Q(DQ_O[8]),
        .R(rst_reg));
  FDRE \DQ_O_reg[9] 
       (.C(CLK),
        .CE(1'b1),
        .D(DQ_O_reg__0[9]),
        .Q(DQ_O[9]),
        .R(rst_reg));
  LUT6 #(
    .INIT(64'hF8FFF8FFF8FFF8F8)) 
    FIFO_RD_EN_INST_0
       (.I0(FIFO_RD_EN_reg1_out),
        .I1(\FSM_onehot_CurrentState_reg_n_0_[41] ),
        .I2(FIFO_RD_EN_INST_0_i_2_n_0),
        .I3(FIFO_EMPTY),
        .I4(rst_reg),
        .I5(\FSM_onehot_CurrentState_reg_n_0_[27] ),
        .O(FIFO_RD_EN));
  LUT6 #(
    .INIT(64'h4444444444444440)) 
    FIFO_RD_EN_INST_0_i_1
       (.I0(FIFO_EMPTY),
        .I1(byte_sel_reg),
        .I2(FIFO_RD_EN_INST_0_i_3_n_0),
        .I3(data_cnt_reg__0[8]),
        .I4(data_cnt_reg__0[6]),
        .I5(data_cnt_reg__0[7]),
        .O(FIFO_RD_EN_reg1_out));
  LUT3 #(
    .INIT(8'h10)) 
    FIFO_RD_EN_INST_0_i_2
       (.I0(\DQ_O[15]_i_3_n_0 ),
        .I1(FIFO_EMPTY),
        .I2(\FSM_onehot_CurrentState_reg_n_0_[31] ),
        .O(FIFO_RD_EN_INST_0_i_2_n_0));
  LUT6 #(
    .INIT(64'hFFFFF7FFFFFFFFFF)) 
    FIFO_RD_EN_INST_0_i_3
       (.I0(data_cnt_reg__0[3]),
        .I1(data_cnt_reg__0[2]),
        .I2(data_cnt_reg__0[0]),
        .I3(data_cnt_reg__0[1]),
        .I4(data_cnt_reg__0[5]),
        .I5(data_cnt_reg__0[4]),
        .O(FIFO_RD_EN_INST_0_i_3_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFEEFE)) 
    \FSM_onehot_CurrentState[0]_i_1 
       (.I0(\FSM_onehot_CurrentState[0]_i_2_n_0 ),
        .I1(\FSM_onehot_CurrentState[0]_i_3_n_0 ),
        .I2(\FSM_onehot_CurrentState[40]_i_3_n_0 ),
        .I3(\FSM_onehot_CurrentState[0]_i_4_n_0 ),
        .I4(\FSM_onehot_CurrentState[0]_i_5_n_0 ),
        .I5(\FSM_onehot_CurrentState[0]_i_6_n_0 ),
        .O(\FSM_onehot_CurrentState[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT3 #(
    .INIT(8'hDF)) 
    \FSM_onehot_CurrentState[0]_i_10 
       (.I0(DATA[9]),
        .I1(DATA[26]),
        .I2(DATA[2]),
        .O(\FSM_onehot_CurrentState[0]_i_10_n_0 ));
  LUT4 #(
    .INIT(16'h0008)) 
    \FSM_onehot_CurrentState[0]_i_11 
       (.I0(prog_done),
        .I1(\FSM_onehot_CurrentState_reg_n_0_[38] ),
        .I2(\FSM_onehot_CurrentState_reg_n_0_[35] ),
        .I3(\FSM_onehot_CurrentState[39]_i_2_n_0 ),
        .O(\FSM_onehot_CurrentState[0]_i_11_n_0 ));
  LUT5 #(
    .INIT(32'h00000010)) 
    \FSM_onehot_CurrentState[0]_i_12 
       (.I0(\FSM_onehot_CurrentState_reg_n_0_[18] ),
        .I1(\FSM_onehot_CurrentState_reg_n_0_[19] ),
        .I2(\FSM_onehot_CurrentState_reg_n_0_[20] ),
        .I3(\FSM_onehot_CurrentState_reg_n_0_[16] ),
        .I4(\FSM_onehot_CurrentState[20]_i_2_n_0 ),
        .O(\FSM_onehot_CurrentState[0]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \FSM_onehot_CurrentState[0]_i_2 
       (.I0(\FSM_onehot_CurrentState[12]_i_7_n_0 ),
        .I1(\FSM_onehot_CurrentState[0]_i_7_n_0 ),
        .I2(FIFO_EMPTY),
        .I3(rst_reg),
        .I4(\FSM_onehot_CurrentState[2]_i_3_n_0 ),
        .I5(\FSM_onehot_CurrentState[2]_i_6_n_0 ),
        .O(\FSM_onehot_CurrentState[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFEFFFCFCFEFEFCFC)) 
    \FSM_onehot_CurrentState[0]_i_3 
       (.I0(\FSM_onehot_CurrentState[22]_i_3_n_0 ),
        .I1(\FSM_onehot_CurrentState[0]_i_8_n_0 ),
        .I2(\FSM_onehot_CurrentState[0]_i_9_n_0 ),
        .I3(DATA[24]),
        .I4(\FSM_onehot_CurrentState[12]_i_8_n_0 ),
        .I5(\FSM_onehot_CurrentState[0]_i_10_n_0 ),
        .O(\FSM_onehot_CurrentState[0]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hFE)) 
    \FSM_onehot_CurrentState[0]_i_4 
       (.I0(\FSM_onehot_CurrentState_reg_n_0_[39] ),
        .I1(\FSM_onehot_CurrentState_reg_n_0_[35] ),
        .I2(\FSM_onehot_CurrentState_reg_n_0_[40] ),
        .O(\FSM_onehot_CurrentState[0]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h20220000)) 
    \FSM_onehot_CurrentState[0]_i_5 
       (.I0(\FSM_onehot_CurrentState_reg_n_0_[1] ),
        .I1(rst_reg),
        .I2(DATA[19]),
        .I3(DATA[24]),
        .I4(\FSM_onehot_CurrentState[2]_i_5_n_0 ),
        .O(\FSM_onehot_CurrentState[0]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000020000)) 
    \FSM_onehot_CurrentState[0]_i_6 
       (.I0(\FSM_onehot_CurrentState[0]_i_11_n_0 ),
        .I1(\FSM_onehot_CurrentState_reg_n_0_[36] ),
        .I2(\FSM_onehot_CurrentState_reg_n_0_[37] ),
        .I3(\FSM_onehot_CurrentState_reg_n_0_[33] ),
        .I4(\FSM_onehot_CurrentState[41]_i_3_n_0 ),
        .I5(OE_N_i_6_n_0),
        .O(\FSM_onehot_CurrentState[0]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h0040)) 
    \FSM_onehot_CurrentState[0]_i_7 
       (.I0(rst_reg),
        .I1(\FSM_onehot_CurrentState_reg_n_0_[1] ),
        .I2(DATA[24]),
        .I3(DATA[19]),
        .O(\FSM_onehot_CurrentState[0]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h00F2000000220000)) 
    \FSM_onehot_CurrentState[0]_i_8 
       (.I0(\FSM_onehot_CurrentState[22]_i_5_n_0 ),
        .I1(DATA[19]),
        .I2(\FSM_onehot_CurrentState[2]_i_4_n_0 ),
        .I3(rst_reg),
        .I4(\FSM_onehot_CurrentState_reg_n_0_[1] ),
        .I5(DATA[24]),
        .O(\FSM_onehot_CurrentState[0]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h0080008088880080)) 
    \FSM_onehot_CurrentState[0]_i_9 
       (.I0(last_blk),
        .I1(\FSM_onehot_CurrentState[2]_i_8_n_0 ),
        .I2(\FSM_onehot_CurrentState_reg_n_0_[10] ),
        .I3(PROM_SR[0]),
        .I4(\FSM_onehot_CurrentState[0]_i_12_n_0 ),
        .I5(\FSM_onehot_CurrentState[39]_i_2_n_0 ),
        .O(\FSM_onehot_CurrentState[0]_i_9_n_0 ));
  LUT3 #(
    .INIT(8'h04)) 
    \FSM_onehot_CurrentState[10]_i_1 
       (.I0(\FSM_onehot_CurrentState_reg_n_0_[8] ),
        .I1(\FSM_onehot_CurrentState_reg_n_0_[9] ),
        .I2(OE_N_i_5_n_0),
        .O(\FSM_onehot_CurrentState[10]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00000008)) 
    \FSM_onehot_CurrentState[11]_i_1 
       (.I0(\FSM_onehot_CurrentState_reg_n_0_[10] ),
        .I1(PROM_SR[0]),
        .I2(\FSM_onehot_CurrentState_reg_n_0_[8] ),
        .I3(\FSM_onehot_CurrentState_reg_n_0_[9] ),
        .I4(OE_N_i_5_n_0),
        .O(\FSM_onehot_CurrentState[11]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0020FFFF00200020)) 
    \FSM_onehot_CurrentState[12]_i_1 
       (.I0(\FSM_onehot_CurrentState[21]_i_2_n_0 ),
        .I1(last_blk),
        .I2(\FSM_onehot_CurrentState[12]_i_3_n_0 ),
        .I3(\FSM_onehot_CurrentState[39]_i_2_n_0 ),
        .I4(\FSM_onehot_CurrentState[22]_i_3_n_0 ),
        .I5(\FSM_onehot_CurrentState[12]_i_4_n_0 ),
        .O(\FSM_onehot_CurrentState[12]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h8008)) 
    \FSM_onehot_CurrentState[12]_i_2 
       (.I0(\FSM_onehot_CurrentState[12]_i_5_n_0 ),
        .I1(\FSM_onehot_CurrentState[12]_i_6_n_0 ),
        .I2(A[18]),
        .I3(end_blk[0]),
        .O(last_blk));
  LUT2 #(
    .INIT(4'h2)) 
    \FSM_onehot_CurrentState[12]_i_3 
       (.I0(\FSM_onehot_CurrentState_reg_n_0_[20] ),
        .I1(\FSM_onehot_CurrentState_reg_n_0_[16] ),
        .O(\FSM_onehot_CurrentState[12]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000040)) 
    \FSM_onehot_CurrentState[12]_i_4 
       (.I0(\FSM_onehot_CurrentState[12]_i_7_n_0 ),
        .I1(\FSM_onehot_CurrentState[12]_i_8_n_0 ),
        .I2(DATA[24]),
        .I3(DATA[19]),
        .I4(\FSM_onehot_CurrentState[22]_i_5_n_0 ),
        .I5(\FSM_onehot_CurrentState[2]_i_4_n_0 ),
        .O(\FSM_onehot_CurrentState[12]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \FSM_onehot_CurrentState[12]_i_5 
       (.I0(end_blk[6]),
        .I1(A[24]),
        .I2(A[23]),
        .I3(end_blk[5]),
        .I4(A[22]),
        .I5(end_blk[4]),
        .O(\FSM_onehot_CurrentState[12]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \FSM_onehot_CurrentState[12]_i_6 
       (.I0(A[20]),
        .I1(end_blk[2]),
        .I2(A[19]),
        .I3(end_blk[1]),
        .I4(end_blk[3]),
        .I5(A[21]),
        .O(\FSM_onehot_CurrentState[12]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT4 #(
    .INIT(16'hFFFD)) 
    \FSM_onehot_CurrentState[12]_i_7 
       (.I0(DATA[4]),
        .I1(DATA[10]),
        .I2(DATA[28]),
        .I3(DATA[11]),
        .O(\FSM_onehot_CurrentState[12]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \FSM_onehot_CurrentState[12]_i_8 
       (.I0(\FSM_onehot_CurrentState_reg_n_0_[1] ),
        .I1(rst_reg),
        .O(\FSM_onehot_CurrentState[12]_i_8_n_0 ));
  LUT3 #(
    .INIT(8'h40)) 
    \FSM_onehot_CurrentState[13]_i_1 
       (.I0(\FSM_onehot_CurrentState_reg_n_0_[11] ),
        .I1(\FSM_onehot_CurrentState_reg_n_0_[12] ),
        .I2(\FSM_onehot_CurrentState[20]_i_3_n_0 ),
        .O(\FSM_onehot_CurrentState[13]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h1000)) 
    \FSM_onehot_CurrentState[14]_i_1 
       (.I0(\FSM_onehot_CurrentState_reg_n_0_[11] ),
        .I1(\FSM_onehot_CurrentState_reg_n_0_[12] ),
        .I2(\FSM_onehot_CurrentState_reg_n_0_[13] ),
        .I3(\FSM_onehot_CurrentState[20]_i_3_n_0 ),
        .O(\FSM_onehot_CurrentState[14]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00100000)) 
    \FSM_onehot_CurrentState[15]_i_1 
       (.I0(\FSM_onehot_CurrentState_reg_n_0_[11] ),
        .I1(\FSM_onehot_CurrentState_reg_n_0_[12] ),
        .I2(\FSM_onehot_CurrentState_reg_n_0_[14] ),
        .I3(\FSM_onehot_CurrentState_reg_n_0_[13] ),
        .I4(\FSM_onehot_CurrentState[20]_i_3_n_0 ),
        .O(\FSM_onehot_CurrentState[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0001000000000000)) 
    \FSM_onehot_CurrentState[16]_i_1 
       (.I0(\FSM_onehot_CurrentState_reg_n_0_[14] ),
        .I1(\FSM_onehot_CurrentState_reg_n_0_[13] ),
        .I2(\FSM_onehot_CurrentState_reg_n_0_[12] ),
        .I3(\FSM_onehot_CurrentState_reg_n_0_[11] ),
        .I4(\FSM_onehot_CurrentState_reg_n_0_[15] ),
        .I5(\FSM_onehot_CurrentState[20]_i_3_n_0 ),
        .O(\FSM_onehot_CurrentState[16]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFF08080808080808)) 
    \FSM_onehot_CurrentState[17]_i_1 
       (.I0(\FSM_onehot_CurrentState[20]_i_3_n_0 ),
        .I1(\FSM_onehot_CurrentState_reg_n_0_[16] ),
        .I2(\FSM_onehot_CurrentState[18]_i_2_n_0 ),
        .I3(\FSM_onehot_CurrentState[25]_i_2_n_0 ),
        .I4(\FSM_onehot_CurrentState_reg_n_0_[21] ),
        .I5(\FSM_onehot_CurrentState[17]_i_2_n_0 ),
        .O(\FSM_onehot_CurrentState[17]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFEF)) 
    \FSM_onehot_CurrentState[17]_i_2 
       (.I0(\FSM_onehot_CurrentState[17]_i_3_n_0 ),
        .I1(\FSM_onehot_CurrentState[17]_i_4_n_0 ),
        .I2(\FSM_onehot_CurrentState[17]_i_5_n_0 ),
        .I3(poll_cnt_reg[16]),
        .I4(poll_cnt_reg[17]),
        .I5(\FSM_onehot_CurrentState[40]_i_6_n_0 ),
        .O(\FSM_onehot_CurrentState[17]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF7FFF)) 
    \FSM_onehot_CurrentState[17]_i_3 
       (.I0(poll_cnt_reg[22]),
        .I1(poll_cnt_reg[23]),
        .I2(poll_cnt_reg[20]),
        .I3(poll_cnt_reg[21]),
        .I4(poll_cnt_reg[6]),
        .I5(poll_cnt_reg[4]),
        .O(\FSM_onehot_CurrentState[17]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hFFFD)) 
    \FSM_onehot_CurrentState[17]_i_4 
       (.I0(poll_cnt_reg[13]),
        .I1(poll_cnt_reg[9]),
        .I2(poll_cnt_reg[15]),
        .I3(poll_cnt_reg[14]),
        .O(\FSM_onehot_CurrentState[17]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \FSM_onehot_CurrentState[17]_i_5 
       (.I0(poll_cnt_reg[18]),
        .I1(poll_cnt_reg[19]),
        .O(\FSM_onehot_CurrentState[17]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h0400)) 
    \FSM_onehot_CurrentState[18]_i_1 
       (.I0(\FSM_onehot_CurrentState[18]_i_2_n_0 ),
        .I1(\FSM_onehot_CurrentState_reg_n_0_[17] ),
        .I2(\FSM_onehot_CurrentState_reg_n_0_[16] ),
        .I3(\FSM_onehot_CurrentState[20]_i_3_n_0 ),
        .O(\FSM_onehot_CurrentState[18]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \FSM_onehot_CurrentState[18]_i_2 
       (.I0(\FSM_onehot_CurrentState_reg_n_0_[11] ),
        .I1(\FSM_onehot_CurrentState_reg_n_0_[12] ),
        .I2(\FSM_onehot_CurrentState_reg_n_0_[13] ),
        .I3(\FSM_onehot_CurrentState_reg_n_0_[14] ),
        .I4(\FSM_onehot_CurrentState_reg_n_0_[15] ),
        .O(\FSM_onehot_CurrentState[18]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h0400)) 
    \FSM_onehot_CurrentState[19]_i_1 
       (.I0(\FSM_onehot_CurrentState_reg_n_0_[16] ),
        .I1(\FSM_onehot_CurrentState_reg_n_0_[18] ),
        .I2(\FSM_onehot_CurrentState[20]_i_2_n_0 ),
        .I3(\FSM_onehot_CurrentState[20]_i_3_n_0 ),
        .O(\FSM_onehot_CurrentState[19]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \FSM_onehot_CurrentState[1]_i_1 
       (.I0(rst_reg),
        .I1(FIFO_EMPTY),
        .O(\FSM_onehot_CurrentState[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00040000)) 
    \FSM_onehot_CurrentState[20]_i_1 
       (.I0(\FSM_onehot_CurrentState_reg_n_0_[16] ),
        .I1(\FSM_onehot_CurrentState_reg_n_0_[19] ),
        .I2(\FSM_onehot_CurrentState_reg_n_0_[18] ),
        .I3(\FSM_onehot_CurrentState[20]_i_2_n_0 ),
        .I4(\FSM_onehot_CurrentState[20]_i_3_n_0 ),
        .O(\FSM_onehot_CurrentState[20]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \FSM_onehot_CurrentState[20]_i_2 
       (.I0(\FSM_onehot_CurrentState_reg_n_0_[15] ),
        .I1(\FSM_onehot_CurrentState_reg_n_0_[14] ),
        .I2(\FSM_onehot_CurrentState_reg_n_0_[13] ),
        .I3(\FSM_onehot_CurrentState_reg_n_0_[12] ),
        .I4(\FSM_onehot_CurrentState_reg_n_0_[11] ),
        .I5(\FSM_onehot_CurrentState_reg_n_0_[17] ),
        .O(\FSM_onehot_CurrentState[20]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \FSM_onehot_CurrentState[20]_i_3 
       (.I0(\FSM_onehot_CurrentState_reg_n_0_[8] ),
        .I1(\FSM_onehot_CurrentState_reg_n_0_[9] ),
        .I2(\FSM_onehot_CurrentState_reg_n_0_[7] ),
        .I3(\DQ_O[7]_i_4_n_0 ),
        .I4(\FSM_onehot_CurrentState[8]_i_2_n_0 ),
        .I5(\FSM_onehot_CurrentState_reg_n_0_[10] ),
        .O(\FSM_onehot_CurrentState[20]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h0400)) 
    \FSM_onehot_CurrentState[21]_i_1 
       (.I0(PROM_SR[7]),
        .I1(\FSM_onehot_CurrentState_reg_n_0_[20] ),
        .I2(\FSM_onehot_CurrentState_reg_n_0_[16] ),
        .I3(\FSM_onehot_CurrentState[21]_i_2_n_0 ),
        .O(\FSM_onehot_CurrentState[21]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \FSM_onehot_CurrentState[21]_i_2 
       (.I0(\FSM_onehot_CurrentState[20]_i_2_n_0 ),
        .I1(\A_reg[23]_i_32_n_0 ),
        .I2(\A_reg[23]_i_33_n_0 ),
        .I3(\FSM_onehot_CurrentState[8]_i_2_n_0 ),
        .I4(\FSM_onehot_CurrentState_reg_n_0_[10] ),
        .I5(TRI_CTRL_INST_0_i_1_n_0),
        .O(\FSM_onehot_CurrentState[21]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF00002000)) 
    \FSM_onehot_CurrentState[22]_i_1 
       (.I0(DATA[9]),
        .I1(DATA[26]),
        .I2(DATA[2]),
        .I3(\FSM_onehot_CurrentState[22]_i_2_n_0 ),
        .I4(\FSM_onehot_CurrentState[22]_i_3_n_0 ),
        .I5(\FSM_onehot_CurrentState[22]_i_4_n_0 ),
        .O(\FSM_onehot_CurrentState[22]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hDFFF)) 
    \FSM_onehot_CurrentState[22]_i_10 
       (.I0(DATA[17]),
        .I1(DATA[16]),
        .I2(DATA[22]),
        .I3(DATA[21]),
        .O(\FSM_onehot_CurrentState[22]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000010000)) 
    \FSM_onehot_CurrentState[22]_i_2 
       (.I0(\FSM_onehot_CurrentState[2]_i_5_n_0 ),
        .I1(DATA[24]),
        .I2(DATA[19]),
        .I3(rst_reg),
        .I4(\FSM_onehot_CurrentState_reg_n_0_[1] ),
        .I5(\FSM_onehot_CurrentState[22]_i_5_n_0 ),
        .O(\FSM_onehot_CurrentState[22]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFEFFFFF)) 
    \FSM_onehot_CurrentState[22]_i_3 
       (.I0(\FSM_onehot_CurrentState[22]_i_6_n_0 ),
        .I1(\FSM_onehot_CurrentState[22]_i_7_n_0 ),
        .I2(DATA[0]),
        .I3(DATA[31]),
        .I4(DATA[30]),
        .I5(\FSM_onehot_CurrentState[22]_i_8_n_0 ),
        .O(\FSM_onehot_CurrentState[22]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h8888888C88888888)) 
    \FSM_onehot_CurrentState[22]_i_4 
       (.I0(\FSM_onehot_CurrentState_reg_n_0_[42] ),
        .I1(\FSM_onehot_CurrentState[29]_i_2_n_0 ),
        .I2(\FSM_onehot_CurrentState_reg_n_0_[36] ),
        .I3(\FSM_onehot_CurrentState_reg_n_0_[37] ),
        .I4(\FSM_onehot_CurrentState[39]_i_2_n_0 ),
        .I5(\FSM_onehot_CurrentState[22]_i_9_n_0 ),
        .O(\FSM_onehot_CurrentState[22]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT4 #(
    .INIT(16'hFFDF)) 
    \FSM_onehot_CurrentState[22]_i_5 
       (.I0(DATA[8]),
        .I1(DATA[3]),
        .I2(DATA[20]),
        .I3(DATA[18]),
        .O(\FSM_onehot_CurrentState[22]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hFF7F)) 
    \FSM_onehot_CurrentState[22]_i_6 
       (.I0(DATA[5]),
        .I1(DATA[1]),
        .I2(DATA[6]),
        .I3(DATA[7]),
        .O(\FSM_onehot_CurrentState[22]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \FSM_onehot_CurrentState[22]_i_7 
       (.I0(DATA[25]),
        .I1(DATA[23]),
        .I2(DATA[29]),
        .I3(DATA[27]),
        .O(\FSM_onehot_CurrentState[22]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT5 #(
    .INIT(32'hFFFFFBFF)) 
    \FSM_onehot_CurrentState[22]_i_8 
       (.I0(DATA[15]),
        .I1(DATA[14]),
        .I2(DATA[12]),
        .I3(DATA[13]),
        .I4(\FSM_onehot_CurrentState[22]_i_10_n_0 ),
        .O(\FSM_onehot_CurrentState[22]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000002)) 
    \FSM_onehot_CurrentState[22]_i_9 
       (.I0(\FSM_onehot_CurrentState_reg_n_0_[38] ),
        .I1(\FSM_onehot_CurrentState_reg_n_0_[35] ),
        .I2(\FSM_onehot_CurrentState_reg_n_0_[33] ),
        .I3(\FSM_onehot_CurrentState_reg_n_0_[27] ),
        .I4(prog_done),
        .I5(OE_N_i_6_n_0),
        .O(\FSM_onehot_CurrentState[22]_i_9_n_0 ));
  LUT4 #(
    .INIT(16'h0400)) 
    \FSM_onehot_CurrentState[23]_i_1 
       (.I0(\FSM_onehot_CurrentState_reg_n_0_[16] ),
        .I1(\FSM_onehot_CurrentState_reg_n_0_[22] ),
        .I2(\FSM_onehot_CurrentState_reg_n_0_[21] ),
        .I3(\FSM_onehot_CurrentState[25]_i_2_n_0 ),
        .O(\FSM_onehot_CurrentState[23]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h01000000)) 
    \FSM_onehot_CurrentState[24]_i_1 
       (.I0(\FSM_onehot_CurrentState_reg_n_0_[22] ),
        .I1(\FSM_onehot_CurrentState_reg_n_0_[16] ),
        .I2(\FSM_onehot_CurrentState_reg_n_0_[21] ),
        .I3(\FSM_onehot_CurrentState_reg_n_0_[23] ),
        .I4(\FSM_onehot_CurrentState[25]_i_2_n_0 ),
        .O(\FSM_onehot_CurrentState[24]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0001000000000000)) 
    \FSM_onehot_CurrentState[25]_i_1 
       (.I0(\FSM_onehot_CurrentState_reg_n_0_[21] ),
        .I1(\FSM_onehot_CurrentState_reg_n_0_[16] ),
        .I2(\FSM_onehot_CurrentState_reg_n_0_[22] ),
        .I3(\FSM_onehot_CurrentState_reg_n_0_[23] ),
        .I4(\FSM_onehot_CurrentState[25]_i_2_n_0 ),
        .I5(\FSM_onehot_CurrentState_reg_n_0_[24] ),
        .O(\FSM_onehot_CurrentState[25]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00000010)) 
    \FSM_onehot_CurrentState[25]_i_2 
       (.I0(\FSM_onehot_CurrentState_reg_n_0_[18] ),
        .I1(\FSM_onehot_CurrentState_reg_n_0_[19] ),
        .I2(\FSM_onehot_CurrentState[20]_i_3_n_0 ),
        .I3(\FSM_onehot_CurrentState[20]_i_2_n_0 ),
        .I4(\FSM_onehot_CurrentState_reg_n_0_[20] ),
        .O(\FSM_onehot_CurrentState[25]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h40)) 
    \FSM_onehot_CurrentState[26]_i_1 
       (.I0(\FSM_onehot_CurrentState_reg_n_0_[24] ),
        .I1(\FSM_onehot_CurrentState_reg_n_0_[25] ),
        .I2(\FSM_onehot_CurrentState[42]_i_2_n_0 ),
        .O(\FSM_onehot_CurrentState[26]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h808C808080808080)) 
    \FSM_onehot_CurrentState[27]_i_1 
       (.I0(PROM_SR[7]),
        .I1(\FSM_onehot_CurrentState[27]_i_2_n_0 ),
        .I2(\FSM_onehot_CurrentState_reg_n_0_[26] ),
        .I3(\FSM_onehot_CurrentState_reg_n_0_[42] ),
        .I4(\FSM_onehot_CurrentState_reg_n_0_[27] ),
        .I5(FIFO_EMPTY),
        .O(\FSM_onehot_CurrentState[27]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00000004)) 
    \FSM_onehot_CurrentState[27]_i_2 
       (.I0(OE_N_i_8_n_0),
        .I1(\FSM_onehot_CurrentState[21]_i_2_n_0 ),
        .I2(\FSM_onehot_CurrentState_reg_n_0_[20] ),
        .I3(\FSM_onehot_CurrentState_reg_n_0_[25] ),
        .I4(\FSM_onehot_CurrentState_reg_n_0_[24] ),
        .O(\FSM_onehot_CurrentState[27]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h0400)) 
    \FSM_onehot_CurrentState[28]_i_1 
       (.I0(FIFO_EMPTY),
        .I1(\FSM_onehot_CurrentState_reg_n_0_[27] ),
        .I2(\FSM_onehot_CurrentState_reg_n_0_[42] ),
        .I3(\FSM_onehot_CurrentState[29]_i_2_n_0 ),
        .O(\FSM_onehot_CurrentState[28]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h1000)) 
    \FSM_onehot_CurrentState[29]_i_1 
       (.I0(\FSM_onehot_CurrentState_reg_n_0_[27] ),
        .I1(\FSM_onehot_CurrentState_reg_n_0_[42] ),
        .I2(\FSM_onehot_CurrentState[29]_i_2_n_0 ),
        .I3(\FSM_onehot_CurrentState_reg_n_0_[28] ),
        .O(\FSM_onehot_CurrentState[29]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000100)) 
    \FSM_onehot_CurrentState[29]_i_2 
       (.I0(\FSM_onehot_CurrentState_reg_n_0_[24] ),
        .I1(\FSM_onehot_CurrentState_reg_n_0_[25] ),
        .I2(\FSM_onehot_CurrentState_reg_n_0_[20] ),
        .I3(\FSM_onehot_CurrentState[21]_i_2_n_0 ),
        .I4(OE_N_i_8_n_0),
        .I5(\FSM_onehot_CurrentState_reg_n_0_[26] ),
        .O(\FSM_onehot_CurrentState[29]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAABA)) 
    \FSM_onehot_CurrentState[2]_i_1 
       (.I0(\FSM_onehot_CurrentState[2]_i_2_n_0 ),
        .I1(\FSM_onehot_CurrentState[22]_i_3_n_0 ),
        .I2(\FSM_onehot_CurrentState[2]_i_3_n_0 ),
        .I3(\FSM_onehot_CurrentState[2]_i_4_n_0 ),
        .I4(\FSM_onehot_CurrentState[2]_i_5_n_0 ),
        .I5(\FSM_onehot_CurrentState[2]_i_6_n_0 ),
        .O(\FSM_onehot_CurrentState[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000808000F08080)) 
    \FSM_onehot_CurrentState[2]_i_2 
       (.I0(\FSM_onehot_CurrentState_reg_n_0_[11] ),
        .I1(\FSM_onehot_CurrentState[2]_i_7_n_0 ),
        .I2(\FSM_onehot_CurrentState[2]_i_8_n_0 ),
        .I3(PROM_SR[0]),
        .I4(\FSM_onehot_CurrentState_reg_n_0_[10] ),
        .I5(last_blk),
        .O(\FSM_onehot_CurrentState[2]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h40)) 
    \FSM_onehot_CurrentState[2]_i_3 
       (.I0(rst_reg),
        .I1(\FSM_onehot_CurrentState_reg_n_0_[1] ),
        .I2(DATA[19]),
        .O(\FSM_onehot_CurrentState[2]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT3 #(
    .INIT(8'hFD)) 
    \FSM_onehot_CurrentState[2]_i_4 
       (.I0(DATA[26]),
        .I1(DATA[9]),
        .I2(DATA[2]),
        .O(\FSM_onehot_CurrentState[2]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT4 #(
    .INIT(16'hDFFF)) 
    \FSM_onehot_CurrentState[2]_i_5 
       (.I0(DATA[10]),
        .I1(DATA[4]),
        .I2(DATA[28]),
        .I3(DATA[11]),
        .O(\FSM_onehot_CurrentState[2]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT5 #(
    .INIT(32'hFFFFDFFF)) 
    \FSM_onehot_CurrentState[2]_i_6 
       (.I0(DATA[3]),
        .I1(DATA[20]),
        .I2(DATA[24]),
        .I3(DATA[18]),
        .I4(DATA[8]),
        .O(\FSM_onehot_CurrentState[2]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFEF)) 
    \FSM_onehot_CurrentState[2]_i_7 
       (.I0(unlck_cnt_reg__0[1]),
        .I1(unlck_cnt_reg__0[2]),
        .I2(unlck_cnt_reg__0[8]),
        .I3(unlck_cnt_reg__0[7]),
        .I4(unlck_cnt_reg__0[0]),
        .I5(\DQ_O[5]_i_11_n_0 ),
        .O(\FSM_onehot_CurrentState[2]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'h00000001)) 
    \FSM_onehot_CurrentState[2]_i_8 
       (.I0(\FSM_onehot_CurrentState[8]_i_2_n_0 ),
        .I1(\DQ_O[7]_i_4_n_0 ),
        .I2(\FSM_onehot_CurrentState_reg_n_0_[7] ),
        .I3(\FSM_onehot_CurrentState_reg_n_0_[9] ),
        .I4(\FSM_onehot_CurrentState_reg_n_0_[8] ),
        .O(\FSM_onehot_CurrentState[2]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h4400440004000000)) 
    \FSM_onehot_CurrentState[30]_i_1 
       (.I0(\FSM_onehot_CurrentState_reg_n_0_[28] ),
        .I1(FIFO_EMPTY),
        .I2(\FSM_onehot_CurrentState_reg_n_0_[33] ),
        .I3(\FSM_onehot_CurrentState[41]_i_3_n_0 ),
        .I4(\FSM_onehot_CurrentState_reg_n_0_[41] ),
        .I5(\FSM_onehot_CurrentState_reg_n_0_[29] ),
        .O(\FSM_onehot_CurrentState[30]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF020202020202020)) 
    \FSM_onehot_CurrentState[31]_i_1 
       (.I0(\FSM_onehot_CurrentState_reg_n_0_[30] ),
        .I1(\FSM_onehot_CurrentState[31]_i_2_n_0 ),
        .I2(\FSM_onehot_CurrentState[37]_i_2_n_0 ),
        .I3(\FSM_onehot_CurrentState_reg_n_0_[31] ),
        .I4(\FSM_onehot_CurrentState[31]_i_3_n_0 ),
        .I5(\FSM_onehot_CurrentState[41]_i_2_n_0 ),
        .O(\FSM_onehot_CurrentState[31]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hFE)) 
    \FSM_onehot_CurrentState[31]_i_2 
       (.I0(\FSM_onehot_CurrentState_reg_n_0_[29] ),
        .I1(\FSM_onehot_CurrentState_reg_n_0_[28] ),
        .I2(\FSM_onehot_CurrentState_reg_n_0_[41] ),
        .O(\FSM_onehot_CurrentState[31]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000070)) 
    \FSM_onehot_CurrentState[31]_i_3 
       (.I0(\DQ_O[15]_i_3_n_0 ),
        .I1(prog_done),
        .I2(FIFO_EMPTY),
        .I3(\FSM_onehot_CurrentState_reg_n_0_[41] ),
        .I4(\FSM_onehot_CurrentState_reg_n_0_[28] ),
        .I5(\FSM_onehot_CurrentState_reg_n_0_[29] ),
        .O(\FSM_onehot_CurrentState[31]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000100000000)) 
    \FSM_onehot_CurrentState[32]_i_1 
       (.I0(\FSM_onehot_CurrentState_reg_n_0_[41] ),
        .I1(\FSM_onehot_CurrentState_reg_n_0_[28] ),
        .I2(\FSM_onehot_CurrentState_reg_n_0_[29] ),
        .I3(\FSM_onehot_CurrentState_reg_n_0_[30] ),
        .I4(\FSM_onehot_CurrentState[41]_i_2_n_0 ),
        .I5(\FSM_onehot_CurrentState[33]_i_3_n_0 ),
        .O(\FSM_onehot_CurrentState[32]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFF02020202020202)) 
    \FSM_onehot_CurrentState[33]_i_1 
       (.I0(\FSM_onehot_CurrentState[33]_i_2_n_0 ),
        .I1(FIFO_EMPTY),
        .I2(\FSM_onehot_CurrentState_reg_n_0_[28] ),
        .I3(\FSM_onehot_CurrentState[33]_i_3_n_0 ),
        .I4(\FSM_onehot_CurrentState[33]_i_4_n_0 ),
        .I5(\FSM_onehot_CurrentState[41]_i_2_n_0 ),
        .O(\FSM_onehot_CurrentState[33]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000A0000000E0000)) 
    \FSM_onehot_CurrentState[33]_i_2 
       (.I0(\FSM_onehot_CurrentState_reg_n_0_[29] ),
        .I1(\FSM_onehot_CurrentState_reg_n_0_[41] ),
        .I2(\FSM_onehot_CurrentState_reg_n_0_[27] ),
        .I3(\FSM_onehot_CurrentState_reg_n_0_[42] ),
        .I4(\FSM_onehot_CurrentState[29]_i_2_n_0 ),
        .I5(\FSM_onehot_CurrentState_reg_n_0_[33] ),
        .O(\FSM_onehot_CurrentState[33]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h00040000)) 
    \FSM_onehot_CurrentState[33]_i_3 
       (.I0(\FSM_onehot_CurrentState_reg_n_0_[33] ),
        .I1(\FSM_onehot_CurrentState[29]_i_2_n_0 ),
        .I2(\FSM_onehot_CurrentState_reg_n_0_[42] ),
        .I3(\FSM_onehot_CurrentState_reg_n_0_[27] ),
        .I4(\FSM_onehot_CurrentState_reg_n_0_[31] ),
        .O(\FSM_onehot_CurrentState[33]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0101011101010101)) 
    \FSM_onehot_CurrentState[33]_i_4 
       (.I0(\FSM_onehot_CurrentState_reg_n_0_[30] ),
        .I1(\FSM_onehot_CurrentState_reg_n_0_[28] ),
        .I2(FIFO_EMPTY),
        .I3(\FSM_onehot_CurrentState_reg_n_0_[41] ),
        .I4(\FSM_onehot_CurrentState_reg_n_0_[29] ),
        .I5(\FSM_onehot_CurrentState[33]_i_5_n_0 ),
        .O(\FSM_onehot_CurrentState[33]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \FSM_onehot_CurrentState[33]_i_5 
       (.I0(\DQ_O[15]_i_3_n_0 ),
        .I1(prog_done),
        .O(\FSM_onehot_CurrentState[33]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h04000400FF000400)) 
    \FSM_onehot_CurrentState[34]_i_1 
       (.I0(\FSM_onehot_CurrentState_reg_n_0_[33] ),
        .I1(\FSM_onehot_CurrentState_reg_n_0_[32] ),
        .I2(\DQ_O[15]_i_2_n_0 ),
        .I3(\FSM_onehot_CurrentState[41]_i_3_n_0 ),
        .I4(\FSM_onehot_CurrentState[34]_i_2_n_0 ),
        .I5(\FSM_onehot_CurrentState[41]_i_2_n_0 ),
        .O(\FSM_onehot_CurrentState[34]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h02)) 
    \FSM_onehot_CurrentState[34]_i_2 
       (.I0(\FSM_onehot_CurrentState_reg_n_0_[33] ),
        .I1(\FSM_onehot_CurrentState_reg_n_0_[29] ),
        .I2(\FSM_onehot_CurrentState_reg_n_0_[28] ),
        .O(\FSM_onehot_CurrentState[34]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h0400)) 
    \FSM_onehot_CurrentState[35]_i_1 
       (.I0(\DQ_O[15]_i_2_n_0 ),
        .I1(\FSM_onehot_CurrentState_reg_n_0_[34] ),
        .I2(\FSM_onehot_CurrentState_reg_n_0_[32] ),
        .I3(\FSM_onehot_CurrentState[37]_i_2_n_0 ),
        .O(\FSM_onehot_CurrentState[35]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hA0B0A0A0A0A0A0A0)) 
    \FSM_onehot_CurrentState[36]_i_1 
       (.I0(\FSM_onehot_CurrentState_reg_n_0_[35] ),
        .I1(\FSM_onehot_CurrentState_reg_n_0_[38] ),
        .I2(\FSM_onehot_CurrentState[39]_i_3_n_0 ),
        .I3(TRI_CTRL_INST_0_i_2_n_0),
        .I4(\FSM_onehot_CurrentState_reg_n_0_[39] ),
        .I5(\FSM_onehot_CurrentState[40]_i_4_n_0 ),
        .O(\FSM_onehot_CurrentState[36]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000400000000)) 
    \FSM_onehot_CurrentState[37]_i_1 
       (.I0(\FSM_onehot_CurrentState_reg_n_0_[35] ),
        .I1(\FSM_onehot_CurrentState_reg_n_0_[36] ),
        .I2(\FSM_onehot_CurrentState_reg_n_0_[34] ),
        .I3(\FSM_onehot_CurrentState_reg_n_0_[32] ),
        .I4(\DQ_O[15]_i_2_n_0 ),
        .I5(\FSM_onehot_CurrentState[37]_i_2_n_0 ),
        .O(\FSM_onehot_CurrentState[37]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0010)) 
    \FSM_onehot_CurrentState[37]_i_2 
       (.I0(\FSM_onehot_CurrentState_reg_n_0_[27] ),
        .I1(\FSM_onehot_CurrentState_reg_n_0_[42] ),
        .I2(\FSM_onehot_CurrentState[29]_i_2_n_0 ),
        .I3(\FSM_onehot_CurrentState_reg_n_0_[33] ),
        .O(\FSM_onehot_CurrentState[37]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h0400)) 
    \FSM_onehot_CurrentState[38]_i_1 
       (.I0(\FSM_onehot_CurrentState_reg_n_0_[35] ),
        .I1(\FSM_onehot_CurrentState_reg_n_0_[37] ),
        .I2(\FSM_onehot_CurrentState_reg_n_0_[36] ),
        .I3(\FSM_onehot_CurrentState[39]_i_3_n_0 ),
        .O(\FSM_onehot_CurrentState[38]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000800000000)) 
    \FSM_onehot_CurrentState[39]_i_1 
       (.I0(\FSM_onehot_CurrentState[39]_i_2_n_0 ),
        .I1(\FSM_onehot_CurrentState_reg_n_0_[38] ),
        .I2(\FSM_onehot_CurrentState_reg_n_0_[35] ),
        .I3(\FSM_onehot_CurrentState_reg_n_0_[36] ),
        .I4(\FSM_onehot_CurrentState_reg_n_0_[37] ),
        .I5(\FSM_onehot_CurrentState[39]_i_3_n_0 ),
        .O(\FSM_onehot_CurrentState[39]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT5 #(
    .INIT(32'hFFFEFFFF)) 
    \FSM_onehot_CurrentState[39]_i_2 
       (.I0(PROM_SR[6]),
        .I1(PROM_SR[5]),
        .I2(PROM_SR[0]),
        .I3(\FSM_onehot_CurrentState[39]_i_4_n_0 ),
        .I4(PROM_SR[7]),
        .O(\FSM_onehot_CurrentState[39]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h00000004)) 
    \FSM_onehot_CurrentState[39]_i_3 
       (.I0(\FSM_onehot_CurrentState_reg_n_0_[33] ),
        .I1(\FSM_onehot_CurrentState[41]_i_3_n_0 ),
        .I2(\DQ_O[15]_i_2_n_0 ),
        .I3(\FSM_onehot_CurrentState_reg_n_0_[32] ),
        .I4(\FSM_onehot_CurrentState_reg_n_0_[34] ),
        .O(\FSM_onehot_CurrentState[39]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \FSM_onehot_CurrentState[39]_i_4 
       (.I0(PROM_SR[2]),
        .I1(PROM_SR[1]),
        .I2(PROM_SR[4]),
        .I3(PROM_SR[3]),
        .O(\FSM_onehot_CurrentState[39]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h02)) 
    \FSM_onehot_CurrentState[3]_i_1 
       (.I0(\FSM_onehot_CurrentState_reg_n_0_[2] ),
        .I1(\FSM_onehot_CurrentState_reg_n_0_[1] ),
        .I2(rst_reg),
        .O(\FSM_onehot_CurrentState[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hABAAAAAABBBAAAAA)) 
    \FSM_onehot_CurrentState[40]_i_1 
       (.I0(\FSM_onehot_CurrentState[40]_i_2_n_0 ),
        .I1(\FSM_onehot_CurrentState_reg_n_0_[35] ),
        .I2(\FSM_onehot_CurrentState_reg_n_0_[39] ),
        .I3(\FSM_onehot_CurrentState_reg_n_0_[40] ),
        .I4(\FSM_onehot_CurrentState[40]_i_3_n_0 ),
        .I5(\FSM_onehot_CurrentState[40]_i_4_n_0 ),
        .O(\FSM_onehot_CurrentState[40]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF0008)) 
    \FSM_onehot_CurrentState[40]_i_2 
       (.I0(\FSM_onehot_CurrentState[25]_i_2_n_0 ),
        .I1(\FSM_onehot_CurrentState_reg_n_0_[21] ),
        .I2(\FSM_onehot_CurrentState[17]_i_2_n_0 ),
        .I3(\FSM_onehot_CurrentState_reg_n_0_[16] ),
        .I4(\FSM_onehot_CurrentState[40]_i_5_n_0 ),
        .O(\FSM_onehot_CurrentState[40]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000100)) 
    \FSM_onehot_CurrentState[40]_i_3 
       (.I0(\FSM_onehot_CurrentState_reg_n_0_[36] ),
        .I1(\FSM_onehot_CurrentState_reg_n_0_[37] ),
        .I2(\FSM_onehot_CurrentState_reg_n_0_[33] ),
        .I3(\FSM_onehot_CurrentState[41]_i_3_n_0 ),
        .I4(OE_N_i_6_n_0),
        .I5(\FSM_onehot_CurrentState_reg_n_0_[38] ),
        .O(\FSM_onehot_CurrentState[40]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFF7FFFFF)) 
    \FSM_onehot_CurrentState[40]_i_4 
       (.I0(poll_cnt_reg[6]),
        .I1(poll_cnt_reg[9]),
        .I2(poll_cnt_reg[14]),
        .I3(poll_cnt_reg[13]),
        .I4(poll_cnt_reg[4]),
        .I5(\FSM_onehot_CurrentState[40]_i_6_n_0 ),
        .O(\FSM_onehot_CurrentState[40]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hF444444444444444)) 
    \FSM_onehot_CurrentState[40]_i_5 
       (.I0(\FSM_onehot_CurrentState[2]_i_7_n_0 ),
        .I1(\FSM_onehot_CurrentState[40]_i_7_n_0 ),
        .I2(\FSM_onehot_CurrentState[21]_i_2_n_0 ),
        .I3(PROM_SR[7]),
        .I4(\FSM_onehot_CurrentState[12]_i_3_n_0 ),
        .I5(\FSM_onehot_CurrentState[40]_i_8_n_0 ),
        .O(\FSM_onehot_CurrentState[40]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \FSM_onehot_CurrentState[40]_i_6 
       (.I0(\FSM_onehot_CurrentState[40]_i_9_n_0 ),
        .I1(poll_cnt_reg[5]),
        .I2(poll_cnt_reg[7]),
        .I3(poll_cnt_reg[2]),
        .I4(poll_cnt_reg[3]),
        .O(\FSM_onehot_CurrentState[40]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0000000100000000)) 
    \FSM_onehot_CurrentState[40]_i_7 
       (.I0(\FSM_onehot_CurrentState_reg_n_0_[10] ),
        .I1(\FSM_onehot_CurrentState[8]_i_2_n_0 ),
        .I2(\DQ_O[7]_i_4_n_0 ),
        .I3(\FSM_onehot_CurrentState_reg_n_0_[7] ),
        .I4(\A_reg[23]_i_32_n_0 ),
        .I5(\FSM_onehot_CurrentState_reg_n_0_[11] ),
        .O(\FSM_onehot_CurrentState[40]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \FSM_onehot_CurrentState[40]_i_8 
       (.I0(\FSM_onehot_CurrentState[39]_i_4_n_0 ),
        .I1(PROM_SR[0]),
        .I2(PROM_SR[5]),
        .I3(PROM_SR[6]),
        .O(\FSM_onehot_CurrentState[40]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFEFF)) 
    \FSM_onehot_CurrentState[40]_i_9 
       (.I0(poll_cnt_reg[11]),
        .I1(poll_cnt_reg[12]),
        .I2(poll_cnt_reg[8]),
        .I3(poll_cnt_reg[10]),
        .I4(poll_cnt_reg[1]),
        .I5(poll_cnt_reg[0]),
        .O(\FSM_onehot_CurrentState[40]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'h00080000)) 
    \FSM_onehot_CurrentState[41]_i_1 
       (.I0(\FSM_onehot_CurrentState[41]_i_2_n_0 ),
        .I1(\FSM_onehot_CurrentState_reg_n_0_[33] ),
        .I2(\FSM_onehot_CurrentState_reg_n_0_[29] ),
        .I3(\FSM_onehot_CurrentState_reg_n_0_[28] ),
        .I4(\FSM_onehot_CurrentState[41]_i_3_n_0 ),
        .O(\FSM_onehot_CurrentState[41]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hBFFFFFFF)) 
    \FSM_onehot_CurrentState[41]_i_2 
       (.I0(\FSM_onehot_CurrentState[41]_i_4_n_0 ),
        .I1(data_cnt_reg__0[5]),
        .I2(data_cnt_reg__0[6]),
        .I3(data_cnt_reg__0[3]),
        .I4(data_cnt_reg__0[4]),
        .O(\FSM_onehot_CurrentState[41]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000010)) 
    \FSM_onehot_CurrentState[41]_i_3 
       (.I0(\FSM_onehot_CurrentState_reg_n_0_[26] ),
        .I1(OE_N_i_8_n_0),
        .I2(\FSM_onehot_CurrentState[21]_i_2_n_0 ),
        .I3(\FSM_onehot_CurrentState_reg_n_0_[20] ),
        .I4(\FSM_onehot_CurrentState[41]_i_5_n_0 ),
        .I5(OE_N_i_7_n_0),
        .O(\FSM_onehot_CurrentState[41]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    \FSM_onehot_CurrentState[41]_i_4 
       (.I0(data_cnt_reg__0[0]),
        .I1(data_cnt_reg__0[7]),
        .I2(data_cnt_reg__0[8]),
        .I3(data_cnt_reg__0[2]),
        .I4(data_cnt_reg__0[1]),
        .O(\FSM_onehot_CurrentState[41]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \FSM_onehot_CurrentState[41]_i_5 
       (.I0(\FSM_onehot_CurrentState_reg_n_0_[24] ),
        .I1(\FSM_onehot_CurrentState_reg_n_0_[25] ),
        .O(\FSM_onehot_CurrentState[41]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h00040000)) 
    \FSM_onehot_CurrentState[42]_i_1 
       (.I0(PROM_SR[7]),
        .I1(\FSM_onehot_CurrentState_reg_n_0_[26] ),
        .I2(\FSM_onehot_CurrentState_reg_n_0_[24] ),
        .I3(\FSM_onehot_CurrentState_reg_n_0_[25] ),
        .I4(\FSM_onehot_CurrentState[42]_i_2_n_0 ),
        .O(\FSM_onehot_CurrentState[42]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000004)) 
    \FSM_onehot_CurrentState[42]_i_2 
       (.I0(\FSM_onehot_CurrentState_reg_n_0_[20] ),
        .I1(\FSM_onehot_CurrentState[21]_i_2_n_0 ),
        .I2(\FSM_onehot_CurrentState_reg_n_0_[23] ),
        .I3(\FSM_onehot_CurrentState_reg_n_0_[22] ),
        .I4(\FSM_onehot_CurrentState_reg_n_0_[16] ),
        .I5(\FSM_onehot_CurrentState_reg_n_0_[21] ),
        .O(\FSM_onehot_CurrentState[42]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h0002)) 
    \FSM_onehot_CurrentState[4]_i_1 
       (.I0(\FSM_onehot_CurrentState_reg_n_0_[3] ),
        .I1(\FSM_onehot_CurrentState_reg_n_0_[2] ),
        .I2(rst_reg),
        .I3(\FSM_onehot_CurrentState_reg_n_0_[1] ),
        .O(\FSM_onehot_CurrentState[4]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00000004)) 
    \FSM_onehot_CurrentState[5]_i_1 
       (.I0(\FSM_onehot_CurrentState_reg_n_0_[3] ),
        .I1(\FSM_onehot_CurrentState_reg_n_0_[4] ),
        .I2(\FSM_onehot_CurrentState_reg_n_0_[2] ),
        .I3(rst_reg),
        .I4(\FSM_onehot_CurrentState_reg_n_0_[1] ),
        .O(\FSM_onehot_CurrentState[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000010)) 
    \FSM_onehot_CurrentState[6]_i_1 
       (.I0(\FSM_onehot_CurrentState_reg_n_0_[3] ),
        .I1(\FSM_onehot_CurrentState_reg_n_0_[4] ),
        .I2(\FSM_onehot_CurrentState_reg_n_0_[5] ),
        .I3(\FSM_onehot_CurrentState_reg_n_0_[2] ),
        .I4(rst_reg),
        .I5(\FSM_onehot_CurrentState_reg_n_0_[1] ),
        .O(\FSM_onehot_CurrentState[6]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00000004)) 
    \FSM_onehot_CurrentState[7]_i_1 
       (.I0(\FSM_onehot_CurrentState[8]_i_2_n_0 ),
        .I1(\FSM_onehot_CurrentState_reg_n_0_[6] ),
        .I2(\FSM_onehot_CurrentState_reg_n_0_[5] ),
        .I3(\FSM_onehot_CurrentState_reg_n_0_[3] ),
        .I4(\FSM_onehot_CurrentState_reg_n_0_[4] ),
        .O(\FSM_onehot_CurrentState[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000004)) 
    \FSM_onehot_CurrentState[8]_i_1 
       (.I0(\FSM_onehot_CurrentState[8]_i_2_n_0 ),
        .I1(\FSM_onehot_CurrentState_reg_n_0_[7] ),
        .I2(\FSM_onehot_CurrentState_reg_n_0_[6] ),
        .I3(\FSM_onehot_CurrentState_reg_n_0_[4] ),
        .I4(\FSM_onehot_CurrentState_reg_n_0_[3] ),
        .I5(\FSM_onehot_CurrentState_reg_n_0_[5] ),
        .O(\FSM_onehot_CurrentState[8]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hFE)) 
    \FSM_onehot_CurrentState[8]_i_2 
       (.I0(\FSM_onehot_CurrentState_reg_n_0_[1] ),
        .I1(rst_reg),
        .I2(\FSM_onehot_CurrentState_reg_n_0_[2] ),
        .O(\FSM_onehot_CurrentState[8]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000002)) 
    \FSM_onehot_CurrentState[9]_i_1 
       (.I0(\FSM_onehot_CurrentState_reg_n_0_[8] ),
        .I1(\FSM_onehot_CurrentState_reg_n_0_[1] ),
        .I2(rst_reg),
        .I3(\FSM_onehot_CurrentState_reg_n_0_[2] ),
        .I4(\DQ_O[7]_i_4_n_0 ),
        .I5(\FSM_onehot_CurrentState_reg_n_0_[7] ),
        .O(\FSM_onehot_CurrentState[9]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDPE #(
    .INIT(1'b1)) 
    \FSM_onehot_CurrentState_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(\FSM_onehot_CurrentState[0]_i_1_n_0 ),
        .PRE(RST),
        .Q(rst_reg));
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_CurrentState_reg[10] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(RST),
        .D(\FSM_onehot_CurrentState[10]_i_1_n_0 ),
        .Q(\FSM_onehot_CurrentState_reg_n_0_[10] ));
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_CurrentState_reg[11] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(RST),
        .D(\FSM_onehot_CurrentState[11]_i_1_n_0 ),
        .Q(\FSM_onehot_CurrentState_reg_n_0_[11] ));
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_CurrentState_reg[12] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(RST),
        .D(\FSM_onehot_CurrentState[12]_i_1_n_0 ),
        .Q(\FSM_onehot_CurrentState_reg_n_0_[12] ));
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_CurrentState_reg[13] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(RST),
        .D(\FSM_onehot_CurrentState[13]_i_1_n_0 ),
        .Q(\FSM_onehot_CurrentState_reg_n_0_[13] ));
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_CurrentState_reg[14] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(RST),
        .D(\FSM_onehot_CurrentState[14]_i_1_n_0 ),
        .Q(\FSM_onehot_CurrentState_reg_n_0_[14] ));
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_CurrentState_reg[15] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(RST),
        .D(\FSM_onehot_CurrentState[15]_i_1_n_0 ),
        .Q(\FSM_onehot_CurrentState_reg_n_0_[15] ));
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_CurrentState_reg[16] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(RST),
        .D(\FSM_onehot_CurrentState[16]_i_1_n_0 ),
        .Q(\FSM_onehot_CurrentState_reg_n_0_[16] ));
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_CurrentState_reg[17] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(RST),
        .D(\FSM_onehot_CurrentState[17]_i_1_n_0 ),
        .Q(\FSM_onehot_CurrentState_reg_n_0_[17] ));
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_CurrentState_reg[18] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(RST),
        .D(\FSM_onehot_CurrentState[18]_i_1_n_0 ),
        .Q(\FSM_onehot_CurrentState_reg_n_0_[18] ));
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_CurrentState_reg[19] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(RST),
        .D(\FSM_onehot_CurrentState[19]_i_1_n_0 ),
        .Q(\FSM_onehot_CurrentState_reg_n_0_[19] ));
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_CurrentState_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(RST),
        .D(\FSM_onehot_CurrentState[1]_i_1_n_0 ),
        .Q(\FSM_onehot_CurrentState_reg_n_0_[1] ));
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_CurrentState_reg[20] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(RST),
        .D(\FSM_onehot_CurrentState[20]_i_1_n_0 ),
        .Q(\FSM_onehot_CurrentState_reg_n_0_[20] ));
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_CurrentState_reg[21] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(RST),
        .D(\FSM_onehot_CurrentState[21]_i_1_n_0 ),
        .Q(\FSM_onehot_CurrentState_reg_n_0_[21] ));
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_CurrentState_reg[22] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(RST),
        .D(\FSM_onehot_CurrentState[22]_i_1_n_0 ),
        .Q(\FSM_onehot_CurrentState_reg_n_0_[22] ));
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_CurrentState_reg[23] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(RST),
        .D(\FSM_onehot_CurrentState[23]_i_1_n_0 ),
        .Q(\FSM_onehot_CurrentState_reg_n_0_[23] ));
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_CurrentState_reg[24] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(RST),
        .D(\FSM_onehot_CurrentState[24]_i_1_n_0 ),
        .Q(\FSM_onehot_CurrentState_reg_n_0_[24] ));
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_CurrentState_reg[25] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(RST),
        .D(\FSM_onehot_CurrentState[25]_i_1_n_0 ),
        .Q(\FSM_onehot_CurrentState_reg_n_0_[25] ));
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_CurrentState_reg[26] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(RST),
        .D(\FSM_onehot_CurrentState[26]_i_1_n_0 ),
        .Q(\FSM_onehot_CurrentState_reg_n_0_[26] ));
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_CurrentState_reg[27] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(RST),
        .D(\FSM_onehot_CurrentState[27]_i_1_n_0 ),
        .Q(\FSM_onehot_CurrentState_reg_n_0_[27] ));
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_CurrentState_reg[28] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(RST),
        .D(\FSM_onehot_CurrentState[28]_i_1_n_0 ),
        .Q(\FSM_onehot_CurrentState_reg_n_0_[28] ));
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_CurrentState_reg[29] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(RST),
        .D(\FSM_onehot_CurrentState[29]_i_1_n_0 ),
        .Q(\FSM_onehot_CurrentState_reg_n_0_[29] ));
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_CurrentState_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(RST),
        .D(\FSM_onehot_CurrentState[2]_i_1_n_0 ),
        .Q(\FSM_onehot_CurrentState_reg_n_0_[2] ));
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_CurrentState_reg[30] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(RST),
        .D(\FSM_onehot_CurrentState[30]_i_1_n_0 ),
        .Q(\FSM_onehot_CurrentState_reg_n_0_[30] ));
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_CurrentState_reg[31] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(RST),
        .D(\FSM_onehot_CurrentState[31]_i_1_n_0 ),
        .Q(\FSM_onehot_CurrentState_reg_n_0_[31] ));
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_CurrentState_reg[32] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(RST),
        .D(\FSM_onehot_CurrentState[32]_i_1_n_0 ),
        .Q(\FSM_onehot_CurrentState_reg_n_0_[32] ));
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_CurrentState_reg[33] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(RST),
        .D(\FSM_onehot_CurrentState[33]_i_1_n_0 ),
        .Q(\FSM_onehot_CurrentState_reg_n_0_[33] ));
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_CurrentState_reg[34] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(RST),
        .D(\FSM_onehot_CurrentState[34]_i_1_n_0 ),
        .Q(\FSM_onehot_CurrentState_reg_n_0_[34] ));
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_CurrentState_reg[35] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(RST),
        .D(\FSM_onehot_CurrentState[35]_i_1_n_0 ),
        .Q(\FSM_onehot_CurrentState_reg_n_0_[35] ));
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_CurrentState_reg[36] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(RST),
        .D(\FSM_onehot_CurrentState[36]_i_1_n_0 ),
        .Q(\FSM_onehot_CurrentState_reg_n_0_[36] ));
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_CurrentState_reg[37] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(RST),
        .D(\FSM_onehot_CurrentState[37]_i_1_n_0 ),
        .Q(\FSM_onehot_CurrentState_reg_n_0_[37] ));
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_CurrentState_reg[38] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(RST),
        .D(\FSM_onehot_CurrentState[38]_i_1_n_0 ),
        .Q(\FSM_onehot_CurrentState_reg_n_0_[38] ));
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_CurrentState_reg[39] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(RST),
        .D(\FSM_onehot_CurrentState[39]_i_1_n_0 ),
        .Q(\FSM_onehot_CurrentState_reg_n_0_[39] ));
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_CurrentState_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(RST),
        .D(\FSM_onehot_CurrentState[3]_i_1_n_0 ),
        .Q(\FSM_onehot_CurrentState_reg_n_0_[3] ));
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_CurrentState_reg[40] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(RST),
        .D(\FSM_onehot_CurrentState[40]_i_1_n_0 ),
        .Q(\FSM_onehot_CurrentState_reg_n_0_[40] ));
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_CurrentState_reg[41] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(RST),
        .D(\FSM_onehot_CurrentState[41]_i_1_n_0 ),
        .Q(\FSM_onehot_CurrentState_reg_n_0_[41] ));
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_CurrentState_reg[42] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(RST),
        .D(\FSM_onehot_CurrentState[42]_i_1_n_0 ),
        .Q(\FSM_onehot_CurrentState_reg_n_0_[42] ));
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_CurrentState_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(RST),
        .D(\FSM_onehot_CurrentState[4]_i_1_n_0 ),
        .Q(\FSM_onehot_CurrentState_reg_n_0_[4] ));
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_CurrentState_reg[5] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(RST),
        .D(\FSM_onehot_CurrentState[5]_i_1_n_0 ),
        .Q(\FSM_onehot_CurrentState_reg_n_0_[5] ));
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_CurrentState_reg[6] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(RST),
        .D(\FSM_onehot_CurrentState[6]_i_1_n_0 ),
        .Q(\FSM_onehot_CurrentState_reg_n_0_[6] ));
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_CurrentState_reg[7] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(RST),
        .D(\FSM_onehot_CurrentState[7]_i_1_n_0 ),
        .Q(\FSM_onehot_CurrentState_reg_n_0_[7] ));
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_CurrentState_reg[8] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(RST),
        .D(\FSM_onehot_CurrentState[8]_i_1_n_0 ),
        .Q(\FSM_onehot_CurrentState_reg_n_0_[8] ));
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_CurrentState_reg[9] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(RST),
        .D(\FSM_onehot_CurrentState[9]_i_1_n_0 ),
        .Q(\FSM_onehot_CurrentState_reg_n_0_[9] ));
  LUT2 #(
    .INIT(4'hE)) 
    OE_N_i_1
       (.I0(rst_reg),
        .I1(\FSM_onehot_CurrentState_reg_n_0_[34] ),
        .O(rst_SR_reg));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    OE_N_i_2
       (.I0(OE_N_i_3_n_0),
        .I1(OE_N_i_4_n_0),
        .I2(OE_N_i_5_n_0),
        .I3(\FSM_onehot_CurrentState_reg_n_0_[9] ),
        .I4(\FSM_onehot_CurrentState_reg_n_0_[10] ),
        .O(OE_N_reg__0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    OE_N_i_3
       (.I0(OE_N_i_6_n_0),
        .I1(\FSM_onehot_CurrentState_reg_n_0_[37] ),
        .I2(\FSM_onehot_CurrentState[0]_i_4_n_0 ),
        .I3(\FSM_onehot_CurrentState_reg_n_0_[33] ),
        .I4(\FSM_onehot_CurrentState_reg_n_0_[38] ),
        .I5(OE_N_i_7_n_0),
        .O(OE_N_i_3_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    OE_N_i_4
       (.I0(\FSM_onehot_CurrentState[20]_i_2_n_0 ),
        .I1(\FSM_onehot_CurrentState_reg_n_0_[20] ),
        .I2(OE_N_i_8_n_0),
        .I3(\FSM_onehot_CurrentState_reg_n_0_[19] ),
        .I4(\FSM_onehot_CurrentState_reg_n_0_[25] ),
        .I5(\FSM_onehot_CurrentState_reg_n_0_[26] ),
        .O(OE_N_i_4_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    OE_N_i_5
       (.I0(\FSM_onehot_CurrentState_reg_n_0_[7] ),
        .I1(\FSM_onehot_CurrentState_reg_n_0_[5] ),
        .I2(\FSM_onehot_CurrentState_reg_n_0_[3] ),
        .I3(\FSM_onehot_CurrentState_reg_n_0_[4] ),
        .I4(\FSM_onehot_CurrentState_reg_n_0_[6] ),
        .I5(\FSM_onehot_CurrentState[8]_i_2_n_0 ),
        .O(OE_N_i_5_n_0));
  LUT3 #(
    .INIT(8'hFE)) 
    OE_N_i_6
       (.I0(\FSM_onehot_CurrentState_reg_n_0_[34] ),
        .I1(\FSM_onehot_CurrentState_reg_n_0_[32] ),
        .I2(\DQ_O[15]_i_2_n_0 ),
        .O(OE_N_i_6_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    OE_N_i_7
       (.I0(\FSM_onehot_CurrentState_reg_n_0_[27] ),
        .I1(\FSM_onehot_CurrentState_reg_n_0_[42] ),
        .O(OE_N_i_7_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    OE_N_i_8
       (.I0(\FSM_onehot_CurrentState_reg_n_0_[21] ),
        .I1(\FSM_onehot_CurrentState_reg_n_0_[16] ),
        .I2(\FSM_onehot_CurrentState_reg_n_0_[22] ),
        .I3(\FSM_onehot_CurrentState_reg_n_0_[23] ),
        .O(OE_N_i_8_n_0));
  FDSE OE_N_reg
       (.C(SR_reg_regn_0_0),
        .CE(TRI_CTRL),
        .D(OE_N_reg__0),
        .Q(OE_N),
        .S(rst_SR_reg));
  LUT2 #(
    .INIT(4'hE)) 
    PROG_RDY_INST_0
       (.I0(rst_reg),
        .I1(\FSM_onehot_CurrentState_reg_n_0_[1] ),
        .O(PROG_RDY));
  FDRE \SR_reg_reg[0] 
       (.C(SR_reg_regn_0_0),
        .CE(TRI_CTRL),
        .D(DQ_I[0]),
        .Q(PROM_SR[0]),
        .R(rst_SR_reg));
  FDRE \SR_reg_reg[1] 
       (.C(SR_reg_regn_0_0),
        .CE(TRI_CTRL),
        .D(DQ_I[1]),
        .Q(PROM_SR[1]),
        .R(rst_SR_reg));
  FDRE \SR_reg_reg[2] 
       (.C(SR_reg_regn_0_0),
        .CE(TRI_CTRL),
        .D(DQ_I[2]),
        .Q(PROM_SR[2]),
        .R(rst_SR_reg));
  FDRE \SR_reg_reg[3] 
       (.C(SR_reg_regn_0_0),
        .CE(TRI_CTRL),
        .D(DQ_I[3]),
        .Q(PROM_SR[3]),
        .R(rst_SR_reg));
  FDRE \SR_reg_reg[4] 
       (.C(SR_reg_regn_0_0),
        .CE(TRI_CTRL),
        .D(DQ_I[4]),
        .Q(PROM_SR[4]),
        .R(rst_SR_reg));
  FDRE \SR_reg_reg[5] 
       (.C(SR_reg_regn_0_0),
        .CE(TRI_CTRL),
        .D(DQ_I[5]),
        .Q(PROM_SR[5]),
        .R(rst_SR_reg));
  FDRE \SR_reg_reg[6] 
       (.C(SR_reg_regn_0_0),
        .CE(TRI_CTRL),
        .D(DQ_I[6]),
        .Q(PROM_SR[6]),
        .R(rst_SR_reg));
  FDRE \SR_reg_reg[7] 
       (.C(SR_reg_regn_0_0),
        .CE(TRI_CTRL),
        .D(DQ_I[7]),
        .Q(PROM_SR[7]),
        .R(rst_SR_reg));
  LUT1 #(
    .INIT(2'h1)) 
    SR_reg_regi_0
       (.I0(CLK),
        .O(SR_reg_regn_0_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    TRI_CTRL_INST_0
       (.I0(TRI_CTRL_INST_0_i_1_n_0),
        .I1(\FSM_onehot_CurrentState_reg_n_0_[8] ),
        .I2(\FSM_onehot_CurrentState_reg_n_0_[9] ),
        .I3(TRI_CTRL_INST_0_i_2_n_0),
        .I4(\FSM_onehot_CurrentState_reg_n_0_[24] ),
        .I5(\FSM_onehot_CurrentState_reg_n_0_[25] ),
        .O(TRI_CTRL));
  LUT2 #(
    .INIT(4'hE)) 
    TRI_CTRL_INST_0_i_1
       (.I0(\FSM_onehot_CurrentState_reg_n_0_[18] ),
        .I1(\FSM_onehot_CurrentState_reg_n_0_[19] ),
        .O(TRI_CTRL_INST_0_i_1_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    TRI_CTRL_INST_0_i_2
       (.I0(\FSM_onehot_CurrentState_reg_n_0_[36] ),
        .I1(\FSM_onehot_CurrentState_reg_n_0_[37] ),
        .O(TRI_CTRL_INST_0_i_2_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFEA)) 
    WE_N_i_1
       (.I0(WE_N_i_2_n_0),
        .I1(WE_N_i_3_n_0),
        .I2(\FSM_onehot_CurrentState_reg_n_0_[1] ),
        .I3(WE_N_i_4_n_0),
        .I4(WE_N_i_5_n_0),
        .I5(WE_N_i_6_n_0),
        .O(WE_N_reg__0));
  LUT6 #(
    .INIT(64'hFFFFFFFEFEFEFEFE)) 
    WE_N_i_10
       (.I0(CS_N_i_7_n_0),
        .I1(WE_N_i_18_n_0),
        .I2(CS_N_i_8_n_0),
        .I3(DATA[26]),
        .I4(DATA[24]),
        .I5(DATA[9]),
        .O(WE_N_i_10_n_0));
  LUT6 #(
    .INIT(64'hF0F0F0F0FFFFE0EF)) 
    WE_N_i_11
       (.I0(DATA[18]),
        .I1(WE_N_i_19_n_0),
        .I2(DATA[4]),
        .I3(DATA[3]),
        .I4(\DQ_O[4]_i_12_n_0 ),
        .I5(DATA[9]),
        .O(WE_N_i_11_n_0));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    WE_N_i_12
       (.I0(DATA[6]),
        .I1(DATA[22]),
        .I2(DATA[5]),
        .I3(DATA[21]),
        .O(WE_N_i_12_n_0));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'h67)) 
    WE_N_i_13
       (.I0(DATA[19]),
        .I1(DATA[18]),
        .I2(DATA[20]),
        .O(WE_N_i_13_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    WE_N_i_14
       (.I0(\FSM_onehot_CurrentState_reg_n_0_[26] ),
        .I1(PROM_SR[7]),
        .O(WE_N_i_14_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    WE_N_i_15
       (.I0(\FSM_onehot_CurrentState_reg_n_0_[7] ),
        .I1(\FSM_onehot_CurrentState_reg_n_0_[12] ),
        .I2(\FSM_onehot_CurrentState_reg_n_0_[2] ),
        .I3(\FSM_onehot_CurrentState_reg_n_0_[4] ),
        .I4(\A_reg[23]_i_32_n_0 ),
        .I5(\FSM_onehot_CurrentState_reg_n_0_[6] ),
        .O(WE_N_i_15_n_0));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    WE_N_i_16
       (.I0(\FSM_onehot_CurrentState_reg_n_0_[37] ),
        .I1(\FSM_onehot_CurrentState_reg_n_0_[36] ),
        .I2(\FSM_onehot_CurrentState_reg_n_0_[40] ),
        .I3(\FSM_onehot_CurrentState_reg_n_0_[35] ),
        .I4(\FSM_onehot_CurrentState_reg_n_0_[39] ),
        .O(WE_N_i_16_n_0));
  LUT3 #(
    .INIT(8'hFE)) 
    WE_N_i_17
       (.I0(DATA[7]),
        .I1(DATA[27]),
        .I2(DATA[16]),
        .O(WE_N_i_17_n_0));
  LUT6 #(
    .INIT(64'hFEFEFEFFFEFFFEFF)) 
    WE_N_i_18
       (.I0(DATA[25]),
        .I1(DATA[23]),
        .I2(DATA[12]),
        .I3(DATA[4]),
        .I4(DATA[11]),
        .I5(DATA[10]),
        .O(WE_N_i_18_n_0));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT2 #(
    .INIT(4'hE)) 
    WE_N_i_19
       (.I0(DATA[11]),
        .I1(DATA[10]),
        .O(WE_N_i_19_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    WE_N_i_2
       (.I0(WE_N_i_7_n_0),
        .I1(\FSM_onehot_CurrentState_reg_n_0_[21] ),
        .I2(\FSM_onehot_CurrentState_reg_n_0_[16] ),
        .I3(\FSM_onehot_CurrentState_reg_n_0_[22] ),
        .I4(\FSM_onehot_CurrentState_reg_n_0_[23] ),
        .I5(TRI_CTRL_INST_0_i_1_n_0),
        .O(WE_N_i_2_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFEFFFF)) 
    WE_N_i_3
       (.I0(WE_N_i_8_n_0),
        .I1(WE_N_i_9_n_0),
        .I2(WE_N_i_10_n_0),
        .I3(WE_N_i_11_n_0),
        .I4(WE_N_i_12_n_0),
        .I5(WE_N_i_13_n_0),
        .O(WE_N_i_3_n_0));
  LUT5 #(
    .INIT(32'hFFE0E0E0)) 
    WE_N_i_4
       (.I0(PROM_SR[0]),
        .I1(last_blk),
        .I2(\FSM_onehot_CurrentState_reg_n_0_[10] ),
        .I3(\FSM_onehot_CurrentState_reg_n_0_[11] ),
        .I4(\DQ_O[5]_i_10_n_0 ),
        .O(WE_N_i_4_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFF8FAFAF8F8)) 
    WE_N_i_5
       (.I0(\FSM_onehot_CurrentState_reg_n_0_[38] ),
        .I1(prog_done),
        .I2(WE_N_i_14_n_0),
        .I3(last_blk),
        .I4(\poll_cnt[0]_i_4_n_0 ),
        .I5(\FSM_onehot_CurrentState_reg_n_0_[20] ),
        .O(WE_N_i_5_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    WE_N_i_6
       (.I0(WE_N_i_15_n_0),
        .I1(WE_N_i_16_n_0),
        .I2(\FSM_onehot_CurrentState_reg_n_0_[31] ),
        .I3(\FSM_onehot_CurrentState_reg_n_0_[29] ),
        .I4(\FSM_onehot_CurrentState_reg_n_0_[41] ),
        .I5(\FSM_onehot_CurrentState_reg_n_0_[34] ),
        .O(WE_N_i_6_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    WE_N_i_7
       (.I0(\FSM_onehot_CurrentState_reg_n_0_[17] ),
        .I1(\FSM_onehot_CurrentState_reg_n_0_[14] ),
        .I2(rst_reg),
        .I3(\FSM_onehot_CurrentState_reg_n_0_[27] ),
        .I4(\FSM_onehot_CurrentState_reg_n_0_[24] ),
        .I5(\FSM_onehot_CurrentState_reg_n_0_[25] ),
        .O(WE_N_i_7_n_0));
  LUT6 #(
    .INIT(64'hFF7FFFFFFFFFFFFF)) 
    WE_N_i_8
       (.I0(DATA[17]),
        .I1(DATA[1]),
        .I2(DATA[0]),
        .I3(DATA[15]),
        .I4(DATA[14]),
        .I5(DATA[13]),
        .O(WE_N_i_8_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFBFBF455)) 
    WE_N_i_9
       (.I0(DATA[18]),
        .I1(DATA[28]),
        .I2(DATA[3]),
        .I3(DATA[4]),
        .I4(DATA[9]),
        .I5(WE_N_i_17_n_0),
        .O(WE_N_i_9_n_0));
  FDSE WE_N_reg
       (.C(CLK),
        .CE(1'b1),
        .D(WE_N_reg__0),
        .Q(WE_N),
        .S(rst_reg));
  LUT5 #(
    .INIT(32'h0001FFFE)) 
    byte_sel_reg_i_1
       (.I0(\FSM_onehot_CurrentState_reg_n_0_[32] ),
        .I1(\FSM_onehot_CurrentState_reg_n_0_[41] ),
        .I2(FIFO_RD_EN_INST_0_i_2_n_0),
        .I3(\FSM_onehot_CurrentState_reg_n_0_[29] ),
        .I4(byte_sel_reg),
        .O(byte_sel_reg_i_1_n_0));
  FDRE byte_sel_reg_reg
       (.C(CLK),
        .CE(1'b1),
        .D(byte_sel_reg_i_1_n_0),
        .Q(byte_sel_reg),
        .R(rst_reg));
  LUT5 #(
    .INIT(32'h00000007)) 
    \data_cnt[0]_i_1 
       (.I0(\DQ_O[15]_i_3_n_0 ),
        .I1(\FSM_onehot_CurrentState_reg_n_0_[33] ),
        .I2(rst_reg),
        .I3(\FSM_onehot_CurrentState_reg_n_0_[32] ),
        .I4(data_cnt_reg__0[0]),
        .O(p_0_in[0]));
  LUT6 #(
    .INIT(64'h0000000600060006)) 
    \data_cnt[1]_i_1 
       (.I0(data_cnt_reg__0[0]),
        .I1(data_cnt_reg__0[1]),
        .I2(\FSM_onehot_CurrentState_reg_n_0_[32] ),
        .I3(rst_reg),
        .I4(\FSM_onehot_CurrentState_reg_n_0_[33] ),
        .I5(\DQ_O[15]_i_3_n_0 ),
        .O(p_0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT4 #(
    .INIT(16'h1540)) 
    \data_cnt[2]_i_1 
       (.I0(rst_data_cnt),
        .I1(data_cnt_reg__0[0]),
        .I2(data_cnt_reg__0[1]),
        .I3(data_cnt_reg__0[2]),
        .O(p_0_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT5 #(
    .INIT(32'h00006AAA)) 
    \data_cnt[3]_i_1 
       (.I0(data_cnt_reg__0[3]),
        .I1(data_cnt_reg__0[2]),
        .I2(data_cnt_reg__0[1]),
        .I3(data_cnt_reg__0[0]),
        .I4(rst_data_cnt),
        .O(p_0_in[3]));
  LUT6 #(
    .INIT(64'h000000007FFF8000)) 
    \data_cnt[4]_i_1 
       (.I0(data_cnt_reg__0[0]),
        .I1(data_cnt_reg__0[1]),
        .I2(data_cnt_reg__0[2]),
        .I3(data_cnt_reg__0[3]),
        .I4(data_cnt_reg__0[4]),
        .I5(rst_data_cnt),
        .O(p_0_in[4]));
  LUT6 #(
    .INIT(64'h00000000FF7F0080)) 
    \data_cnt[5]_i_1 
       (.I0(data_cnt_reg__0[4]),
        .I1(data_cnt_reg__0[3]),
        .I2(data_cnt_reg__0[2]),
        .I3(\data_cnt[5]_i_2_n_0 ),
        .I4(data_cnt_reg__0[5]),
        .I5(rst_data_cnt),
        .O(p_0_in[5]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \data_cnt[5]_i_2 
       (.I0(data_cnt_reg__0[0]),
        .I1(data_cnt_reg__0[1]),
        .O(\data_cnt[5]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hFEEE)) 
    \data_cnt[5]_i_3 
       (.I0(\FSM_onehot_CurrentState_reg_n_0_[32] ),
        .I1(rst_reg),
        .I2(\FSM_onehot_CurrentState_reg_n_0_[33] ),
        .I3(\DQ_O[15]_i_3_n_0 ),
        .O(rst_data_cnt));
  LUT6 #(
    .INIT(64'h0111000000000111)) 
    \data_cnt[6]_i_1 
       (.I0(\FSM_onehot_CurrentState_reg_n_0_[32] ),
        .I1(rst_reg),
        .I2(\FSM_onehot_CurrentState_reg_n_0_[33] ),
        .I3(\DQ_O[15]_i_3_n_0 ),
        .I4(\data_cnt[6]_i_2_n_0 ),
        .I5(data_cnt_reg__0[6]),
        .O(p_0_in[6]));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \data_cnt[6]_i_2 
       (.I0(data_cnt_reg__0[4]),
        .I1(data_cnt_reg__0[3]),
        .I2(data_cnt_reg__0[2]),
        .I3(data_cnt_reg__0[1]),
        .I4(data_cnt_reg__0[0]),
        .I5(data_cnt_reg__0[5]),
        .O(\data_cnt[6]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h0006)) 
    \data_cnt[7]_i_1 
       (.I0(data_cnt_reg__0[7]),
        .I1(\data_cnt[8]_i_3_n_0 ),
        .I2(\FSM_onehot_CurrentState_reg_n_0_[32] ),
        .I3(rst_reg),
        .O(p_0_in[7]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFEEE)) 
    \data_cnt[8]_i_1 
       (.I0(\FSM_onehot_CurrentState_reg_n_0_[41] ),
        .I1(\FSM_onehot_CurrentState_reg_n_0_[30] ),
        .I2(\DQ_O[15]_i_3_n_0 ),
        .I3(\FSM_onehot_CurrentState_reg_n_0_[33] ),
        .I4(rst_reg),
        .I5(\FSM_onehot_CurrentState_reg_n_0_[32] ),
        .O(\data_cnt[8]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00000078)) 
    \data_cnt[8]_i_2 
       (.I0(\data_cnt[8]_i_3_n_0 ),
        .I1(data_cnt_reg__0[7]),
        .I2(data_cnt_reg__0[8]),
        .I3(\FSM_onehot_CurrentState_reg_n_0_[32] ),
        .I4(rst_reg),
        .O(\data_cnt[8]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0800000000000000)) 
    \data_cnt[8]_i_3 
       (.I0(data_cnt_reg__0[6]),
        .I1(data_cnt_reg__0[5]),
        .I2(\data_cnt[5]_i_2_n_0 ),
        .I3(data_cnt_reg__0[2]),
        .I4(data_cnt_reg__0[3]),
        .I5(data_cnt_reg__0[4]),
        .O(\data_cnt[8]_i_3_n_0 ));
  FDRE \data_cnt_reg[0] 
       (.C(CLK),
        .CE(\data_cnt[8]_i_1_n_0 ),
        .D(p_0_in[0]),
        .Q(data_cnt_reg__0[0]),
        .R(1'b0));
  FDRE \data_cnt_reg[1] 
       (.C(CLK),
        .CE(\data_cnt[8]_i_1_n_0 ),
        .D(p_0_in[1]),
        .Q(data_cnt_reg__0[1]),
        .R(1'b0));
  FDRE \data_cnt_reg[2] 
       (.C(CLK),
        .CE(\data_cnt[8]_i_1_n_0 ),
        .D(p_0_in[2]),
        .Q(data_cnt_reg__0[2]),
        .R(1'b0));
  FDRE \data_cnt_reg[3] 
       (.C(CLK),
        .CE(\data_cnt[8]_i_1_n_0 ),
        .D(p_0_in[3]),
        .Q(data_cnt_reg__0[3]),
        .R(1'b0));
  FDRE \data_cnt_reg[4] 
       (.C(CLK),
        .CE(\data_cnt[8]_i_1_n_0 ),
        .D(p_0_in[4]),
        .Q(data_cnt_reg__0[4]),
        .R(1'b0));
  FDRE \data_cnt_reg[5] 
       (.C(CLK),
        .CE(\data_cnt[8]_i_1_n_0 ),
        .D(p_0_in[5]),
        .Q(data_cnt_reg__0[5]),
        .R(1'b0));
  FDRE \data_cnt_reg[6] 
       (.C(CLK),
        .CE(\data_cnt[8]_i_1_n_0 ),
        .D(p_0_in[6]),
        .Q(data_cnt_reg__0[6]),
        .R(1'b0));
  FDRE \data_cnt_reg[7] 
       (.C(CLK),
        .CE(\data_cnt[8]_i_1_n_0 ),
        .D(p_0_in[7]),
        .Q(data_cnt_reg__0[7]),
        .R(1'b0));
  FDRE \data_cnt_reg[8] 
       (.C(CLK),
        .CE(\data_cnt[8]_i_1_n_0 ),
        .D(\data_cnt[8]_i_2_n_0 ),
        .Q(data_cnt_reg__0[8]),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h20)) 
    \end_addr_reg[23]_i_1 
       (.I0(\FSM_onehot_CurrentState_reg_n_0_[1] ),
        .I1(CS_N_i_2_n_0),
        .I2(CS_N_i_3_n_0),
        .O(end_addr_reg_en));
  FDRE \end_addr_reg_reg[0] 
       (.C(CLK),
        .CE(end_addr_reg_en),
        .D(DATA[0]),
        .Q(\end_addr_reg_reg_n_0_[0] ),
        .R(RST));
  FDRE \end_addr_reg_reg[10] 
       (.C(CLK),
        .CE(end_addr_reg_en),
        .D(DATA[10]),
        .Q(\end_addr_reg_reg_n_0_[10] ),
        .R(RST));
  FDRE \end_addr_reg_reg[11] 
       (.C(CLK),
        .CE(end_addr_reg_en),
        .D(DATA[11]),
        .Q(\end_addr_reg_reg_n_0_[11] ),
        .R(RST));
  FDRE \end_addr_reg_reg[12] 
       (.C(CLK),
        .CE(end_addr_reg_en),
        .D(DATA[12]),
        .Q(\end_addr_reg_reg_n_0_[12] ),
        .R(RST));
  FDRE \end_addr_reg_reg[13] 
       (.C(CLK),
        .CE(end_addr_reg_en),
        .D(DATA[13]),
        .Q(\end_addr_reg_reg_n_0_[13] ),
        .R(RST));
  FDRE \end_addr_reg_reg[14] 
       (.C(CLK),
        .CE(end_addr_reg_en),
        .D(DATA[14]),
        .Q(\end_addr_reg_reg_n_0_[14] ),
        .R(RST));
  FDRE \end_addr_reg_reg[15] 
       (.C(CLK),
        .CE(end_addr_reg_en),
        .D(DATA[15]),
        .Q(\end_addr_reg_reg_n_0_[15] ),
        .R(RST));
  FDRE \end_addr_reg_reg[16] 
       (.C(CLK),
        .CE(end_addr_reg_en),
        .D(DATA[16]),
        .Q(\end_addr_reg_reg_n_0_[16] ),
        .R(RST));
  FDRE \end_addr_reg_reg[17] 
       (.C(CLK),
        .CE(end_addr_reg_en),
        .D(DATA[17]),
        .Q(end_blk[0]),
        .R(RST));
  FDRE \end_addr_reg_reg[18] 
       (.C(CLK),
        .CE(end_addr_reg_en),
        .D(DATA[18]),
        .Q(end_blk[1]),
        .R(RST));
  FDRE \end_addr_reg_reg[19] 
       (.C(CLK),
        .CE(end_addr_reg_en),
        .D(DATA[19]),
        .Q(end_blk[2]),
        .R(RST));
  FDRE \end_addr_reg_reg[1] 
       (.C(CLK),
        .CE(end_addr_reg_en),
        .D(DATA[1]),
        .Q(\end_addr_reg_reg_n_0_[1] ),
        .R(RST));
  FDRE \end_addr_reg_reg[20] 
       (.C(CLK),
        .CE(end_addr_reg_en),
        .D(DATA[20]),
        .Q(end_blk[3]),
        .R(RST));
  FDRE \end_addr_reg_reg[21] 
       (.C(CLK),
        .CE(end_addr_reg_en),
        .D(DATA[21]),
        .Q(end_blk[4]),
        .R(RST));
  FDRE \end_addr_reg_reg[22] 
       (.C(CLK),
        .CE(end_addr_reg_en),
        .D(DATA[22]),
        .Q(end_blk[5]),
        .R(RST));
  FDRE \end_addr_reg_reg[23] 
       (.C(CLK),
        .CE(end_addr_reg_en),
        .D(DATA[23]),
        .Q(end_blk[6]),
        .R(RST));
  FDRE \end_addr_reg_reg[2] 
       (.C(CLK),
        .CE(end_addr_reg_en),
        .D(DATA[2]),
        .Q(\end_addr_reg_reg_n_0_[2] ),
        .R(RST));
  FDRE \end_addr_reg_reg[3] 
       (.C(CLK),
        .CE(end_addr_reg_en),
        .D(DATA[3]),
        .Q(\end_addr_reg_reg_n_0_[3] ),
        .R(RST));
  FDRE \end_addr_reg_reg[4] 
       (.C(CLK),
        .CE(end_addr_reg_en),
        .D(DATA[4]),
        .Q(\end_addr_reg_reg_n_0_[4] ),
        .R(RST));
  FDRE \end_addr_reg_reg[5] 
       (.C(CLK),
        .CE(end_addr_reg_en),
        .D(DATA[5]),
        .Q(\end_addr_reg_reg_n_0_[5] ),
        .R(RST));
  FDRE \end_addr_reg_reg[6] 
       (.C(CLK),
        .CE(end_addr_reg_en),
        .D(DATA[6]),
        .Q(\end_addr_reg_reg_n_0_[6] ),
        .R(RST));
  FDRE \end_addr_reg_reg[7] 
       (.C(CLK),
        .CE(end_addr_reg_en),
        .D(DATA[7]),
        .Q(\end_addr_reg_reg_n_0_[7] ),
        .R(RST));
  FDRE \end_addr_reg_reg[8] 
       (.C(CLK),
        .CE(end_addr_reg_en),
        .D(DATA[8]),
        .Q(\end_addr_reg_reg_n_0_[8] ),
        .R(RST));
  FDRE \end_addr_reg_reg[9] 
       (.C(CLK),
        .CE(end_addr_reg_en),
        .D(DATA[9]),
        .Q(\end_addr_reg_reg_n_0_[9] ),
        .R(RST));
  LUT6 #(
    .INIT(64'hFFFFFFFF00100000)) 
    \error_reg[0]_i_1 
       (.I0(\error_reg[2]_i_4_n_0 ),
        .I1(\error_reg[1]_i_2_n_0 ),
        .I2(\error_reg[1]_i_3_n_0 ),
        .I3(\error_reg[1]_i_4_n_0 ),
        .I4(\FSM_onehot_CurrentState_reg_n_0_[21] ),
        .I5(\error_reg[2]_i_3_n_0 ),
        .O(error_flag[0]));
  LUT6 #(
    .INIT(64'hFFFFFFFF00100000)) 
    \error_reg[1]_i_1 
       (.I0(\error_reg[2]_i_4_n_0 ),
        .I1(\error_reg[1]_i_2_n_0 ),
        .I2(\error_reg[1]_i_3_n_0 ),
        .I3(\error_reg[1]_i_4_n_0 ),
        .I4(\FSM_onehot_CurrentState_reg_n_0_[21] ),
        .I5(\error_reg[2]_i_7_n_0 ),
        .O(error_flag[1]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \error_reg[1]_i_2 
       (.I0(\error_reg[1]_i_5_n_0 ),
        .I1(\error_reg[1]_i_6_n_0 ),
        .I2(poll_cnt_reg[15]),
        .I3(poll_cnt_reg[8]),
        .I4(poll_cnt_reg[17]),
        .I5(poll_cnt_reg[5]),
        .O(\error_reg[1]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT4 #(
    .INIT(16'h0004)) 
    \error_reg[1]_i_3 
       (.I0(poll_cnt_reg[19]),
        .I1(poll_cnt_reg[18]),
        .I2(poll_cnt_reg[17]),
        .I3(poll_cnt_reg[16]),
        .O(\error_reg[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFF7F)) 
    \error_reg[1]_i_4 
       (.I0(poll_cnt_reg[23]),
        .I1(poll_cnt_reg[22]),
        .I2(poll_cnt_reg[13]),
        .I3(poll_cnt_reg[11]),
        .I4(poll_cnt_reg[14]),
        .I5(poll_cnt_reg[19]),
        .O(\error_reg[1]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h77F777F7FFFF77F7)) 
    \error_reg[1]_i_5 
       (.I0(poll_cnt_reg[20]),
        .I1(poll_cnt_reg[21]),
        .I2(poll_cnt_reg[3]),
        .I3(poll_cnt_reg[4]),
        .I4(poll_cnt_reg[6]),
        .I5(poll_cnt_reg[7]),
        .O(\error_reg[1]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hFDDD)) 
    \error_reg[1]_i_6 
       (.I0(poll_cnt_reg[10]),
        .I1(poll_cnt_reg[9]),
        .I2(poll_cnt_reg[13]),
        .I3(poll_cnt_reg[12]),
        .O(\error_reg[1]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFABAAAAAA)) 
    \error_reg[2]_i_1 
       (.I0(\error_reg[2]_i_3_n_0 ),
        .I1(\error_reg[2]_i_4_n_0 ),
        .I2(\error_reg[2]_i_5_n_0 ),
        .I3(\error_reg[2]_i_6_n_0 ),
        .I4(\FSM_onehot_CurrentState_reg_n_0_[21] ),
        .I5(\error_reg[2]_i_7_n_0 ),
        .O(error_reg_en));
  LUT2 #(
    .INIT(4'h2)) 
    \error_reg[2]_i_10 
       (.I0(poll_cnt_reg[6]),
        .I1(poll_cnt_reg[7]),
        .O(\error_reg[2]_i_10_n_0 ));
  LUT3 #(
    .INIT(8'hFE)) 
    \error_reg[2]_i_11 
       (.I0(poll_cnt_reg[2]),
        .I1(poll_cnt_reg[1]),
        .I2(poll_cnt_reg[0]),
        .O(\error_reg[2]_i_11_n_0 ));
  LUT4 #(
    .INIT(16'hDFFF)) 
    \error_reg[2]_i_12 
       (.I0(poll_cnt_reg[13]),
        .I1(poll_cnt_reg[14]),
        .I2(poll_cnt_reg[22]),
        .I3(poll_cnt_reg[23]),
        .O(\error_reg[2]_i_12_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \error_reg[2]_i_13 
       (.I0(PROM_SR[1]),
        .I1(PROM_SR[0]),
        .I2(PROM_SR[2]),
        .I3(PROM_SR[3]),
        .O(\error_reg[2]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h0000004000000000)) 
    \error_reg[2]_i_2 
       (.I0(\error_reg[2]_i_8_n_0 ),
        .I1(\error_reg[2]_i_9_n_0 ),
        .I2(\error_reg[2]_i_10_n_0 ),
        .I3(poll_cnt_reg[12]),
        .I4(poll_cnt_reg[11]),
        .I5(\FSM_onehot_CurrentState_reg_n_0_[39] ),
        .O(error_flag[2]));
  LUT3 #(
    .INIT(8'hF8)) 
    \error_reg[2]_i_3 
       (.I0(\FSM_onehot_CurrentState_reg_n_0_[11] ),
        .I1(\DQ_O[5]_i_10_n_0 ),
        .I2(error_flag[2]),
        .O(\error_reg[2]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \error_reg[2]_i_4 
       (.I0(\error_reg[2]_i_11_n_0 ),
        .I1(poll_cnt_reg[8]),
        .I2(poll_cnt_reg[4]),
        .I3(poll_cnt_reg[7]),
        .I4(poll_cnt_reg[5]),
        .O(\error_reg[2]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFF7FF)) 
    \error_reg[2]_i_5 
       (.I0(poll_cnt_reg[20]),
        .I1(poll_cnt_reg[21]),
        .I2(poll_cnt_reg[9]),
        .I3(poll_cnt_reg[10]),
        .I4(poll_cnt_reg[12]),
        .I5(poll_cnt_reg[11]),
        .O(\error_reg[2]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h00000002)) 
    \error_reg[2]_i_6 
       (.I0(\error_reg[1]_i_3_n_0 ),
        .I1(poll_cnt_reg[6]),
        .I2(poll_cnt_reg[15]),
        .I3(poll_cnt_reg[3]),
        .I4(\error_reg[2]_i_12_n_0 ),
        .O(\error_reg[2]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAA800000000)) 
    \error_reg[2]_i_7 
       (.I0(PROM_SR[7]),
        .I1(\error_reg[2]_i_13_n_0 ),
        .I2(PROM_SR[5]),
        .I3(PROM_SR[4]),
        .I4(PROM_SR[6]),
        .I5(\FSM_onehot_CurrentState_reg_n_0_[20] ),
        .O(\error_reg[2]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hFFFEFFFF)) 
    \error_reg[2]_i_8 
       (.I0(\error_reg[2]_i_11_n_0 ),
        .I1(poll_cnt_reg[8]),
        .I2(poll_cnt_reg[3]),
        .I3(poll_cnt_reg[13]),
        .I4(poll_cnt_reg[14]),
        .O(\error_reg[2]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'h0080)) 
    \error_reg[2]_i_9 
       (.I0(poll_cnt_reg[9]),
        .I1(poll_cnt_reg[10]),
        .I2(poll_cnt_reg[4]),
        .I3(poll_cnt_reg[5]),
        .O(\error_reg[2]_i_9_n_0 ));
  FDRE \error_reg_reg[0] 
       (.C(CLK),
        .CE(error_reg_en),
        .D(error_flag[0]),
        .Q(ERROR[0]),
        .R(RST));
  FDRE \error_reg_reg[1] 
       (.C(CLK),
        .CE(error_reg_en),
        .D(error_flag[1]),
        .Q(ERROR[1]),
        .R(RST));
  FDRE \error_reg_reg[2] 
       (.C(CLK),
        .CE(error_reg_en),
        .D(error_flag[2]),
        .Q(ERROR[2]),
        .R(RST));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFABAA)) 
    \poll_cnt[0]_i_1 
       (.I0(rst_reg),
        .I1(\poll_cnt[0]_i_4_n_0 ),
        .I2(last_blk),
        .I3(\FSM_onehot_CurrentState_reg_n_0_[20] ),
        .I4(\poll_cnt[0]_i_5_n_0 ),
        .I5(\FSM_onehot_CurrentState_reg_n_0_[4] ),
        .O(rst_poll_cnt));
  LUT1 #(
    .INIT(2'h2)) 
    \poll_cnt[0]_i_10 
       (.I0(poll_cnt_reg[3]),
        .O(\poll_cnt[0]_i_10_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \poll_cnt[0]_i_11 
       (.I0(poll_cnt_reg[2]),
        .O(\poll_cnt[0]_i_11_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \poll_cnt[0]_i_12 
       (.I0(poll_cnt_reg[1]),
        .O(\poll_cnt[0]_i_12_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \poll_cnt[0]_i_13 
       (.I0(poll_cnt_reg[0]),
        .O(\poll_cnt[0]_i_13_n_0 ));
  LUT5 #(
    .INIT(32'h88FF88F8)) 
    \poll_cnt[0]_i_2 
       (.I0(\poll_cnt[0]_i_4_n_0 ),
        .I1(\FSM_onehot_CurrentState_reg_n_0_[38] ),
        .I2(\FSM_onehot_CurrentState_reg_n_0_[26] ),
        .I3(PROM_SR[7]),
        .I4(\FSM_onehot_CurrentState_reg_n_0_[20] ),
        .O(poll_cnt_en));
  LUT5 #(
    .INIT(32'hFFFEFFFF)) 
    \poll_cnt[0]_i_4 
       (.I0(PROM_SR[6]),
        .I1(PROM_SR[4]),
        .I2(PROM_SR[5]),
        .I3(\error_reg[2]_i_13_n_0 ),
        .I4(PROM_SR[7]),
        .O(\poll_cnt[0]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h888888F8)) 
    \poll_cnt[0]_i_5 
       (.I0(\FSM_onehot_CurrentState_reg_n_0_[26] ),
        .I1(PROM_SR[7]),
        .I2(\FSM_onehot_CurrentState_reg_n_0_[38] ),
        .I3(prog_done),
        .I4(\poll_cnt[0]_i_4_n_0 ),
        .O(\poll_cnt[0]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \poll_cnt[0]_i_6 
       (.I0(poll_cnt_reg[7]),
        .O(\poll_cnt[0]_i_6_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \poll_cnt[0]_i_7 
       (.I0(poll_cnt_reg[6]),
        .O(\poll_cnt[0]_i_7_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \poll_cnt[0]_i_8 
       (.I0(poll_cnt_reg[5]),
        .O(\poll_cnt[0]_i_8_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \poll_cnt[0]_i_9 
       (.I0(poll_cnt_reg[4]),
        .O(\poll_cnt[0]_i_9_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \poll_cnt[16]_i_2 
       (.I0(poll_cnt_reg[23]),
        .O(\poll_cnt[16]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \poll_cnt[16]_i_3 
       (.I0(poll_cnt_reg[22]),
        .O(\poll_cnt[16]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \poll_cnt[16]_i_4 
       (.I0(poll_cnt_reg[21]),
        .O(\poll_cnt[16]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \poll_cnt[16]_i_5 
       (.I0(poll_cnt_reg[20]),
        .O(\poll_cnt[16]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \poll_cnt[16]_i_6 
       (.I0(poll_cnt_reg[19]),
        .O(\poll_cnt[16]_i_6_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \poll_cnt[16]_i_7 
       (.I0(poll_cnt_reg[18]),
        .O(\poll_cnt[16]_i_7_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \poll_cnt[16]_i_8 
       (.I0(poll_cnt_reg[17]),
        .O(\poll_cnt[16]_i_8_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \poll_cnt[16]_i_9 
       (.I0(poll_cnt_reg[16]),
        .O(\poll_cnt[16]_i_9_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \poll_cnt[8]_i_2 
       (.I0(poll_cnt_reg[15]),
        .O(\poll_cnt[8]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \poll_cnt[8]_i_3 
       (.I0(poll_cnt_reg[14]),
        .O(\poll_cnt[8]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \poll_cnt[8]_i_4 
       (.I0(poll_cnt_reg[13]),
        .O(\poll_cnt[8]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \poll_cnt[8]_i_5 
       (.I0(poll_cnt_reg[12]),
        .O(\poll_cnt[8]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \poll_cnt[8]_i_6 
       (.I0(poll_cnt_reg[11]),
        .O(\poll_cnt[8]_i_6_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \poll_cnt[8]_i_7 
       (.I0(poll_cnt_reg[10]),
        .O(\poll_cnt[8]_i_7_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \poll_cnt[8]_i_8 
       (.I0(poll_cnt_reg[9]),
        .O(\poll_cnt[8]_i_8_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \poll_cnt[8]_i_9 
       (.I0(poll_cnt_reg[8]),
        .O(\poll_cnt[8]_i_9_n_0 ));
  FDRE \poll_cnt_reg[0] 
       (.C(CLK),
        .CE(poll_cnt_en),
        .D(\poll_cnt_reg[0]_i_3_n_15 ),
        .Q(poll_cnt_reg[0]),
        .R(rst_poll_cnt));
  CARRY8 \poll_cnt_reg[0]_i_3 
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({\poll_cnt_reg[0]_i_3_n_0 ,\poll_cnt_reg[0]_i_3_n_1 ,\poll_cnt_reg[0]_i_3_n_2 ,\poll_cnt_reg[0]_i_3_n_3 ,\NLW_poll_cnt_reg[0]_i_3_CO_UNCONNECTED [3],\poll_cnt_reg[0]_i_3_n_5 ,\poll_cnt_reg[0]_i_3_n_6 ,\poll_cnt_reg[0]_i_3_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .O({\poll_cnt_reg[0]_i_3_n_8 ,\poll_cnt_reg[0]_i_3_n_9 ,\poll_cnt_reg[0]_i_3_n_10 ,\poll_cnt_reg[0]_i_3_n_11 ,\poll_cnt_reg[0]_i_3_n_12 ,\poll_cnt_reg[0]_i_3_n_13 ,\poll_cnt_reg[0]_i_3_n_14 ,\poll_cnt_reg[0]_i_3_n_15 }),
        .S({\poll_cnt[0]_i_6_n_0 ,\poll_cnt[0]_i_7_n_0 ,\poll_cnt[0]_i_8_n_0 ,\poll_cnt[0]_i_9_n_0 ,\poll_cnt[0]_i_10_n_0 ,\poll_cnt[0]_i_11_n_0 ,\poll_cnt[0]_i_12_n_0 ,\poll_cnt[0]_i_13_n_0 }));
  FDRE \poll_cnt_reg[10] 
       (.C(CLK),
        .CE(poll_cnt_en),
        .D(\poll_cnt_reg[8]_i_1_n_13 ),
        .Q(poll_cnt_reg[10]),
        .R(rst_poll_cnt));
  FDRE \poll_cnt_reg[11] 
       (.C(CLK),
        .CE(poll_cnt_en),
        .D(\poll_cnt_reg[8]_i_1_n_12 ),
        .Q(poll_cnt_reg[11]),
        .R(rst_poll_cnt));
  FDRE \poll_cnt_reg[12] 
       (.C(CLK),
        .CE(poll_cnt_en),
        .D(\poll_cnt_reg[8]_i_1_n_11 ),
        .Q(poll_cnt_reg[12]),
        .R(rst_poll_cnt));
  FDRE \poll_cnt_reg[13] 
       (.C(CLK),
        .CE(poll_cnt_en),
        .D(\poll_cnt_reg[8]_i_1_n_10 ),
        .Q(poll_cnt_reg[13]),
        .R(rst_poll_cnt));
  FDRE \poll_cnt_reg[14] 
       (.C(CLK),
        .CE(poll_cnt_en),
        .D(\poll_cnt_reg[8]_i_1_n_9 ),
        .Q(poll_cnt_reg[14]),
        .R(rst_poll_cnt));
  FDRE \poll_cnt_reg[15] 
       (.C(CLK),
        .CE(poll_cnt_en),
        .D(\poll_cnt_reg[8]_i_1_n_8 ),
        .Q(poll_cnt_reg[15]),
        .R(rst_poll_cnt));
  FDRE \poll_cnt_reg[16] 
       (.C(CLK),
        .CE(poll_cnt_en),
        .D(\poll_cnt_reg[16]_i_1_n_15 ),
        .Q(poll_cnt_reg[16]),
        .R(rst_poll_cnt));
  CARRY8 \poll_cnt_reg[16]_i_1 
       (.CI(\poll_cnt_reg[8]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\NLW_poll_cnt_reg[16]_i_1_CO_UNCONNECTED [7],\poll_cnt_reg[16]_i_1_n_1 ,\poll_cnt_reg[16]_i_1_n_2 ,\poll_cnt_reg[16]_i_1_n_3 ,\NLW_poll_cnt_reg[16]_i_1_CO_UNCONNECTED [3],\poll_cnt_reg[16]_i_1_n_5 ,\poll_cnt_reg[16]_i_1_n_6 ,\poll_cnt_reg[16]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\poll_cnt_reg[16]_i_1_n_8 ,\poll_cnt_reg[16]_i_1_n_9 ,\poll_cnt_reg[16]_i_1_n_10 ,\poll_cnt_reg[16]_i_1_n_11 ,\poll_cnt_reg[16]_i_1_n_12 ,\poll_cnt_reg[16]_i_1_n_13 ,\poll_cnt_reg[16]_i_1_n_14 ,\poll_cnt_reg[16]_i_1_n_15 }),
        .S({\poll_cnt[16]_i_2_n_0 ,\poll_cnt[16]_i_3_n_0 ,\poll_cnt[16]_i_4_n_0 ,\poll_cnt[16]_i_5_n_0 ,\poll_cnt[16]_i_6_n_0 ,\poll_cnt[16]_i_7_n_0 ,\poll_cnt[16]_i_8_n_0 ,\poll_cnt[16]_i_9_n_0 }));
  FDRE \poll_cnt_reg[17] 
       (.C(CLK),
        .CE(poll_cnt_en),
        .D(\poll_cnt_reg[16]_i_1_n_14 ),
        .Q(poll_cnt_reg[17]),
        .R(rst_poll_cnt));
  FDRE \poll_cnt_reg[18] 
       (.C(CLK),
        .CE(poll_cnt_en),
        .D(\poll_cnt_reg[16]_i_1_n_13 ),
        .Q(poll_cnt_reg[18]),
        .R(rst_poll_cnt));
  FDRE \poll_cnt_reg[19] 
       (.C(CLK),
        .CE(poll_cnt_en),
        .D(\poll_cnt_reg[16]_i_1_n_12 ),
        .Q(poll_cnt_reg[19]),
        .R(rst_poll_cnt));
  FDRE \poll_cnt_reg[1] 
       (.C(CLK),
        .CE(poll_cnt_en),
        .D(\poll_cnt_reg[0]_i_3_n_14 ),
        .Q(poll_cnt_reg[1]),
        .R(rst_poll_cnt));
  FDRE \poll_cnt_reg[20] 
       (.C(CLK),
        .CE(poll_cnt_en),
        .D(\poll_cnt_reg[16]_i_1_n_11 ),
        .Q(poll_cnt_reg[20]),
        .R(rst_poll_cnt));
  FDRE \poll_cnt_reg[21] 
       (.C(CLK),
        .CE(poll_cnt_en),
        .D(\poll_cnt_reg[16]_i_1_n_10 ),
        .Q(poll_cnt_reg[21]),
        .R(rst_poll_cnt));
  FDRE \poll_cnt_reg[22] 
       (.C(CLK),
        .CE(poll_cnt_en),
        .D(\poll_cnt_reg[16]_i_1_n_9 ),
        .Q(poll_cnt_reg[22]),
        .R(rst_poll_cnt));
  FDRE \poll_cnt_reg[23] 
       (.C(CLK),
        .CE(poll_cnt_en),
        .D(\poll_cnt_reg[16]_i_1_n_8 ),
        .Q(poll_cnt_reg[23]),
        .R(rst_poll_cnt));
  FDRE \poll_cnt_reg[2] 
       (.C(CLK),
        .CE(poll_cnt_en),
        .D(\poll_cnt_reg[0]_i_3_n_13 ),
        .Q(poll_cnt_reg[2]),
        .R(rst_poll_cnt));
  FDRE \poll_cnt_reg[3] 
       (.C(CLK),
        .CE(poll_cnt_en),
        .D(\poll_cnt_reg[0]_i_3_n_12 ),
        .Q(poll_cnt_reg[3]),
        .R(rst_poll_cnt));
  FDRE \poll_cnt_reg[4] 
       (.C(CLK),
        .CE(poll_cnt_en),
        .D(\poll_cnt_reg[0]_i_3_n_11 ),
        .Q(poll_cnt_reg[4]),
        .R(rst_poll_cnt));
  FDRE \poll_cnt_reg[5] 
       (.C(CLK),
        .CE(poll_cnt_en),
        .D(\poll_cnt_reg[0]_i_3_n_10 ),
        .Q(poll_cnt_reg[5]),
        .R(rst_poll_cnt));
  FDRE \poll_cnt_reg[6] 
       (.C(CLK),
        .CE(poll_cnt_en),
        .D(\poll_cnt_reg[0]_i_3_n_9 ),
        .Q(poll_cnt_reg[6]),
        .R(rst_poll_cnt));
  FDRE \poll_cnt_reg[7] 
       (.C(CLK),
        .CE(poll_cnt_en),
        .D(\poll_cnt_reg[0]_i_3_n_8 ),
        .Q(poll_cnt_reg[7]),
        .R(rst_poll_cnt));
  FDRE \poll_cnt_reg[8] 
       (.C(CLK),
        .CE(poll_cnt_en),
        .D(\poll_cnt_reg[8]_i_1_n_15 ),
        .Q(poll_cnt_reg[8]),
        .R(rst_poll_cnt));
  CARRY8 \poll_cnt_reg[8]_i_1 
       (.CI(\poll_cnt_reg[0]_i_3_n_0 ),
        .CI_TOP(1'b0),
        .CO({\poll_cnt_reg[8]_i_1_n_0 ,\poll_cnt_reg[8]_i_1_n_1 ,\poll_cnt_reg[8]_i_1_n_2 ,\poll_cnt_reg[8]_i_1_n_3 ,\NLW_poll_cnt_reg[8]_i_1_CO_UNCONNECTED [3],\poll_cnt_reg[8]_i_1_n_5 ,\poll_cnt_reg[8]_i_1_n_6 ,\poll_cnt_reg[8]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\poll_cnt_reg[8]_i_1_n_8 ,\poll_cnt_reg[8]_i_1_n_9 ,\poll_cnt_reg[8]_i_1_n_10 ,\poll_cnt_reg[8]_i_1_n_11 ,\poll_cnt_reg[8]_i_1_n_12 ,\poll_cnt_reg[8]_i_1_n_13 ,\poll_cnt_reg[8]_i_1_n_14 ,\poll_cnt_reg[8]_i_1_n_15 }),
        .S({\poll_cnt[8]_i_2_n_0 ,\poll_cnt[8]_i_3_n_0 ,\poll_cnt[8]_i_4_n_0 ,\poll_cnt[8]_i_5_n_0 ,\poll_cnt[8]_i_6_n_0 ,\poll_cnt[8]_i_7_n_0 ,\poll_cnt[8]_i_8_n_0 ,\poll_cnt[8]_i_9_n_0 }));
  FDRE \poll_cnt_reg[9] 
       (.C(CLK),
        .CE(poll_cnt_en),
        .D(\poll_cnt_reg[8]_i_1_n_14 ),
        .Q(poll_cnt_reg[9]),
        .R(rst_poll_cnt));
  LUT4 #(
    .INIT(16'hFEAA)) 
    prog_done_i_1
       (.I0(prog_done),
        .I1(\FSM_onehot_CurrentState_reg_n_0_[33] ),
        .I2(\FSM_onehot_CurrentState_reg_n_0_[30] ),
        .I3(end_addr_reached04_in),
        .O(prog_done_i_1_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    prog_done_i_10
       (.I0(\end_addr_reg_reg_n_0_[1] ),
        .I1(A[2]),
        .I2(\end_addr_reg_reg_n_0_[2] ),
        .I3(A[3]),
        .I4(A[1]),
        .I5(\end_addr_reg_reg_n_0_[0] ),
        .O(prog_done_i_10_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    prog_done_i_3
       (.I0(end_blk[6]),
        .I1(A[24]),
        .I2(A[23]),
        .I3(end_blk[5]),
        .I4(A[22]),
        .I5(end_blk[4]),
        .O(prog_done_i_3_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    prog_done_i_4
       (.I0(A[20]),
        .I1(end_blk[2]),
        .I2(A[19]),
        .I3(end_blk[1]),
        .I4(end_blk[3]),
        .I5(A[21]),
        .O(prog_done_i_4_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    prog_done_i_5
       (.I0(end_blk[0]),
        .I1(A[18]),
        .I2(\end_addr_reg_reg_n_0_[16] ),
        .I3(A[17]),
        .I4(\end_addr_reg_reg_n_0_[15] ),
        .I5(A[16]),
        .O(prog_done_i_5_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    prog_done_i_6
       (.I0(\end_addr_reg_reg_n_0_[13] ),
        .I1(A[14]),
        .I2(\end_addr_reg_reg_n_0_[14] ),
        .I3(A[15]),
        .I4(A[13]),
        .I5(\end_addr_reg_reg_n_0_[12] ),
        .O(prog_done_i_6_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    prog_done_i_7
       (.I0(\end_addr_reg_reg_n_0_[11] ),
        .I1(A[12]),
        .I2(\end_addr_reg_reg_n_0_[9] ),
        .I3(A[10]),
        .I4(A[11]),
        .I5(\end_addr_reg_reg_n_0_[10] ),
        .O(prog_done_i_7_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    prog_done_i_8
       (.I0(\end_addr_reg_reg_n_0_[6] ),
        .I1(A[7]),
        .I2(\end_addr_reg_reg_n_0_[8] ),
        .I3(A[9]),
        .I4(A[8]),
        .I5(\end_addr_reg_reg_n_0_[7] ),
        .O(prog_done_i_8_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    prog_done_i_9
       (.I0(\end_addr_reg_reg_n_0_[5] ),
        .I1(A[6]),
        .I2(\end_addr_reg_reg_n_0_[3] ),
        .I3(A[4]),
        .I4(A[5]),
        .I5(\end_addr_reg_reg_n_0_[4] ),
        .O(prog_done_i_9_n_0));
  FDRE prog_done_reg
       (.C(CLK),
        .CE(1'b1),
        .D(prog_done_i_1_n_0),
        .Q(prog_done),
        .R(rst_reg));
  CARRY8 prog_done_reg_i_2
       (.CI(1'b1),
        .CI_TOP(1'b0),
        .CO({end_addr_reached04_in,prog_done_reg_i_2_n_1,prog_done_reg_i_2_n_2,prog_done_reg_i_2_n_3,NLW_prog_done_reg_i_2_CO_UNCONNECTED[3],prog_done_reg_i_2_n_5,prog_done_reg_i_2_n_6,prog_done_reg_i_2_n_7}),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_prog_done_reg_i_2_O_UNCONNECTED[7:0]),
        .S({prog_done_i_3_n_0,prog_done_i_4_n_0,prog_done_i_5_n_0,prog_done_i_6_n_0,prog_done_i_7_n_0,prog_done_i_8_n_0,prog_done_i_9_n_0,prog_done_i_10_n_0}));
  LUT2 #(
    .INIT(4'h8)) 
    \start_addr_reg[15]_i_1 
       (.I0(\FSM_onehot_CurrentState_reg_n_0_[1] ),
        .I1(\start_addr_reg[15]_i_2_n_0 ),
        .O(start_addr_reg_en));
  LUT6 #(
    .INIT(64'h0000000000000800)) 
    \start_addr_reg[15]_i_2 
       (.I0(\start_addr_reg[15]_i_3_n_0 ),
        .I1(DATA[24]),
        .I2(DATA[17]),
        .I3(DATA[25]),
        .I4(\start_addr_reg[15]_i_4_n_0 ),
        .I5(CS_N_i_8_n_0),
        .O(\start_addr_reg[15]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000400)) 
    \start_addr_reg[15]_i_3 
       (.I0(DATA[20]),
        .I1(DATA[28]),
        .I2(DATA[27]),
        .I3(DATA[22]),
        .I4(DATA[19]),
        .I5(DATA[18]),
        .O(\start_addr_reg[15]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT4 #(
    .INIT(16'hFFEF)) 
    \start_addr_reg[15]_i_4 
       (.I0(DATA[23]),
        .I1(DATA[21]),
        .I2(DATA[16]),
        .I3(DATA[26]),
        .O(\start_addr_reg[15]_i_4_n_0 ));
  FDRE \start_addr_reg_reg[0] 
       (.C(CLK),
        .CE(start_addr_reg_en),
        .D(DATA[0]),
        .Q(start_addr_reg[0]),
        .R(RST));
  FDRE \start_addr_reg_reg[10] 
       (.C(CLK),
        .CE(start_addr_reg_en),
        .D(DATA[10]),
        .Q(start_addr_reg[10]),
        .R(RST));
  FDRE \start_addr_reg_reg[11] 
       (.C(CLK),
        .CE(start_addr_reg_en),
        .D(DATA[11]),
        .Q(start_addr_reg[11]),
        .R(RST));
  FDRE \start_addr_reg_reg[12] 
       (.C(CLK),
        .CE(start_addr_reg_en),
        .D(DATA[12]),
        .Q(start_addr_reg[12]),
        .R(RST));
  FDRE \start_addr_reg_reg[13] 
       (.C(CLK),
        .CE(start_addr_reg_en),
        .D(DATA[13]),
        .Q(start_addr_reg[13]),
        .R(RST));
  FDRE \start_addr_reg_reg[14] 
       (.C(CLK),
        .CE(start_addr_reg_en),
        .D(DATA[14]),
        .Q(start_addr_reg[14]),
        .R(RST));
  FDRE \start_addr_reg_reg[15] 
       (.C(CLK),
        .CE(start_addr_reg_en),
        .D(DATA[15]),
        .Q(start_addr_reg[15]),
        .R(RST));
  FDRE \start_addr_reg_reg[1] 
       (.C(CLK),
        .CE(start_addr_reg_en),
        .D(DATA[1]),
        .Q(start_addr_reg[1]),
        .R(RST));
  FDRE \start_addr_reg_reg[2] 
       (.C(CLK),
        .CE(start_addr_reg_en),
        .D(DATA[2]),
        .Q(start_addr_reg[2]),
        .R(RST));
  FDRE \start_addr_reg_reg[3] 
       (.C(CLK),
        .CE(start_addr_reg_en),
        .D(DATA[3]),
        .Q(start_addr_reg[3]),
        .R(RST));
  FDRE \start_addr_reg_reg[4] 
       (.C(CLK),
        .CE(start_addr_reg_en),
        .D(DATA[4]),
        .Q(start_addr_reg[4]),
        .R(RST));
  FDRE \start_addr_reg_reg[5] 
       (.C(CLK),
        .CE(start_addr_reg_en),
        .D(DATA[5]),
        .Q(start_addr_reg[5]),
        .R(RST));
  FDRE \start_addr_reg_reg[6] 
       (.C(CLK),
        .CE(start_addr_reg_en),
        .D(DATA[6]),
        .Q(start_addr_reg[6]),
        .R(RST));
  FDRE \start_addr_reg_reg[7] 
       (.C(CLK),
        .CE(start_addr_reg_en),
        .D(DATA[7]),
        .Q(start_addr_reg[7]),
        .R(RST));
  FDRE \start_addr_reg_reg[8] 
       (.C(CLK),
        .CE(start_addr_reg_en),
        .D(DATA[8]),
        .Q(start_addr_reg[8]),
        .R(RST));
  FDRE \start_addr_reg_reg[9] 
       (.C(CLK),
        .CE(start_addr_reg_en),
        .D(DATA[9]),
        .Q(start_addr_reg[9]),
        .R(RST));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \unlck_cnt[0]_i_1 
       (.I0(unlck_cnt_reg__0[0]),
        .O(p_0_in__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \unlck_cnt[1]_i_1 
       (.I0(unlck_cnt_reg__0[0]),
        .I1(unlck_cnt_reg__0[1]),
        .O(p_0_in__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \unlck_cnt[2]_i_1 
       (.I0(unlck_cnt_reg__0[2]),
        .I1(unlck_cnt_reg__0[1]),
        .I2(unlck_cnt_reg__0[0]),
        .O(\unlck_cnt[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \unlck_cnt[3]_i_1 
       (.I0(unlck_cnt_reg__0[3]),
        .I1(unlck_cnt_reg__0[1]),
        .I2(unlck_cnt_reg__0[0]),
        .I3(unlck_cnt_reg__0[2]),
        .O(p_0_in__0[3]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \unlck_cnt[4]_i_1 
       (.I0(unlck_cnt_reg__0[2]),
        .I1(unlck_cnt_reg__0[0]),
        .I2(unlck_cnt_reg__0[1]),
        .I3(unlck_cnt_reg__0[3]),
        .I4(unlck_cnt_reg__0[4]),
        .O(p_0_in__0[4]));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \unlck_cnt[5]_i_1 
       (.I0(unlck_cnt_reg__0[5]),
        .I1(unlck_cnt_reg__0[2]),
        .I2(unlck_cnt_reg__0[0]),
        .I3(unlck_cnt_reg__0[1]),
        .I4(unlck_cnt_reg__0[3]),
        .I5(unlck_cnt_reg__0[4]),
        .O(p_0_in__0[5]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \unlck_cnt[6]_i_1 
       (.I0(unlck_cnt_reg__0[6]),
        .I1(\unlck_cnt[8]_i_3_n_0 ),
        .I2(unlck_cnt_reg__0[5]),
        .O(p_0_in__0[6]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \unlck_cnt[7]_i_1 
       (.I0(unlck_cnt_reg__0[7]),
        .I1(unlck_cnt_reg__0[5]),
        .I2(\unlck_cnt[8]_i_3_n_0 ),
        .I3(unlck_cnt_reg__0[6]),
        .O(p_0_in__0[7]));
  LUT2 #(
    .INIT(4'h8)) 
    \unlck_cnt[8]_i_1 
       (.I0(\FSM_onehot_CurrentState_reg_n_0_[10] ),
        .I1(PROM_SR[0]),
        .O(unlck_cnt_en));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \unlck_cnt[8]_i_2 
       (.I0(unlck_cnt_reg__0[8]),
        .I1(unlck_cnt_reg__0[6]),
        .I2(\unlck_cnt[8]_i_3_n_0 ),
        .I3(unlck_cnt_reg__0[5]),
        .I4(unlck_cnt_reg__0[7]),
        .O(p_0_in__0[8]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    \unlck_cnt[8]_i_3 
       (.I0(unlck_cnt_reg__0[4]),
        .I1(unlck_cnt_reg__0[3]),
        .I2(unlck_cnt_reg__0[1]),
        .I3(unlck_cnt_reg__0[0]),
        .I4(unlck_cnt_reg__0[2]),
        .O(\unlck_cnt[8]_i_3_n_0 ));
  FDRE \unlck_cnt_reg[0] 
       (.C(CLK),
        .CE(unlck_cnt_en),
        .D(p_0_in__0[0]),
        .Q(unlck_cnt_reg__0[0]),
        .R(rst_reg));
  FDRE \unlck_cnt_reg[1] 
       (.C(CLK),
        .CE(unlck_cnt_en),
        .D(p_0_in__0[1]),
        .Q(unlck_cnt_reg__0[1]),
        .R(rst_reg));
  FDRE \unlck_cnt_reg[2] 
       (.C(CLK),
        .CE(unlck_cnt_en),
        .D(\unlck_cnt[2]_i_1_n_0 ),
        .Q(unlck_cnt_reg__0[2]),
        .R(rst_reg));
  FDRE \unlck_cnt_reg[3] 
       (.C(CLK),
        .CE(unlck_cnt_en),
        .D(p_0_in__0[3]),
        .Q(unlck_cnt_reg__0[3]),
        .R(rst_reg));
  FDRE \unlck_cnt_reg[4] 
       (.C(CLK),
        .CE(unlck_cnt_en),
        .D(p_0_in__0[4]),
        .Q(unlck_cnt_reg__0[4]),
        .R(rst_reg));
  FDRE \unlck_cnt_reg[5] 
       (.C(CLK),
        .CE(unlck_cnt_en),
        .D(p_0_in__0[5]),
        .Q(unlck_cnt_reg__0[5]),
        .R(rst_reg));
  FDRE \unlck_cnt_reg[6] 
       (.C(CLK),
        .CE(unlck_cnt_en),
        .D(p_0_in__0[6]),
        .Q(unlck_cnt_reg__0[6]),
        .R(rst_reg));
  FDRE \unlck_cnt_reg[7] 
       (.C(CLK),
        .CE(unlck_cnt_en),
        .D(p_0_in__0[7]),
        .Q(unlck_cnt_reg__0[7]),
        .R(rst_reg));
  FDRE \unlck_cnt_reg[8] 
       (.C(CLK),
        .CE(unlck_cnt_en),
        .D(p_0_in__0[8]),
        .Q(unlck_cnt_reg__0[8]),
        .R(rst_reg));
endmodule

(* CHECK_LICENSE_TYPE = "xcl_design_flash_programmer_0,AXI_to_BPI,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "AXI_to_BPI,Vivado 2016.3_sdx" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (flash_rst,
    flash_clk,
    flash_A,
    flash_DQ,
    flash_OE_N,
    flash_WE_N,
    flash_ADV_N,
    S_AXI_ACLK,
    S_AXI_ARESETN,
    S_AXI_AWADDR,
    S_AXI_AWPROT,
    S_AXI_AWVALID,
    S_AXI_AWREADY,
    S_AXI_WDATA,
    S_AXI_WSTRB,
    S_AXI_WVALID,
    S_AXI_WREADY,
    S_AXI_BRESP,
    S_AXI_BVALID,
    S_AXI_BREADY,
    S_AXI_ARADDR,
    S_AXI_ARPROT,
    S_AXI_ARVALID,
    S_AXI_ARREADY,
    S_AXI_RDATA,
    S_AXI_RRESP,
    S_AXI_RVALID,
    S_AXI_RREADY);
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 flash_rst RST" *) input flash_rst;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 flash_clk CLK" *) input flash_clk;
  output [26:1]flash_A;
  inout [15:4]flash_DQ;
  output flash_OE_N;
  output flash_WE_N;
  output flash_ADV_N;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 S_AXI_ACLK CLK" *) input S_AXI_ACLK;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 S_AXI_ARESETN RST" *) input S_AXI_ARESETN;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWADDR" *) input [7:0]S_AXI_AWADDR;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWPROT" *) input [2:0]S_AXI_AWPROT;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWVALID" *) input S_AXI_AWVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWREADY" *) output S_AXI_AWREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WDATA" *) input [31:0]S_AXI_WDATA;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WSTRB" *) input [3:0]S_AXI_WSTRB;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WVALID" *) input S_AXI_WVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WREADY" *) output S_AXI_WREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI BRESP" *) output [1:0]S_AXI_BRESP;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI BVALID" *) output S_AXI_BVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI BREADY" *) input S_AXI_BREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARADDR" *) input [7:0]S_AXI_ARADDR;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARPROT" *) input [2:0]S_AXI_ARPROT;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARVALID" *) input S_AXI_ARVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARREADY" *) output S_AXI_ARREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RDATA" *) output [31:0]S_AXI_RDATA;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RRESP" *) output [1:0]S_AXI_RRESP;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RVALID" *) output S_AXI_RVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RREADY" *) input S_AXI_RREADY;

  wire S_AXI_ACLK;
  wire [7:0]S_AXI_ARADDR;
  wire S_AXI_ARESETN;
  wire [2:0]S_AXI_ARPROT;
  wire S_AXI_ARREADY;
  wire S_AXI_ARVALID;
  wire [7:0]S_AXI_AWADDR;
  wire [2:0]S_AXI_AWPROT;
  wire S_AXI_AWREADY;
  wire S_AXI_AWVALID;
  wire S_AXI_BREADY;
  wire [1:0]S_AXI_BRESP;
  wire S_AXI_BVALID;
  wire [31:0]S_AXI_RDATA;
  wire S_AXI_RREADY;
  wire [1:0]S_AXI_RRESP;
  wire S_AXI_RVALID;
  wire [31:0]S_AXI_WDATA;
  wire S_AXI_WREADY;
  wire [3:0]S_AXI_WSTRB;
  wire S_AXI_WVALID;
  wire [26:1]flash_A;
  wire flash_ADV_N;
  (* DRIVE = "12" *) (* IBUF_LOW_PWR *) (* SLEW = "SLOW" *) wire [15:4]flash_DQ;
  wire flash_OE_N;
  wire flash_WE_N;
  wire flash_clk;
  wire flash_rst;

  (* C_S_AXI_ADDR_WIDTH = "8" *) 
  (* C_S_AXI_DATA_WIDTH = "32" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_AXI_to_BPI inst
       (.S_AXI_ACLK(S_AXI_ACLK),
        .S_AXI_ARADDR(S_AXI_ARADDR),
        .S_AXI_ARESETN(S_AXI_ARESETN),
        .S_AXI_ARPROT(S_AXI_ARPROT),
        .S_AXI_ARREADY(S_AXI_ARREADY),
        .S_AXI_ARVALID(S_AXI_ARVALID),
        .S_AXI_AWADDR(S_AXI_AWADDR),
        .S_AXI_AWPROT(S_AXI_AWPROT),
        .S_AXI_AWREADY(S_AXI_AWREADY),
        .S_AXI_AWVALID(S_AXI_AWVALID),
        .S_AXI_BREADY(S_AXI_BREADY),
        .S_AXI_BRESP(S_AXI_BRESP),
        .S_AXI_BVALID(S_AXI_BVALID),
        .S_AXI_RDATA(S_AXI_RDATA),
        .S_AXI_RREADY(S_AXI_RREADY),
        .S_AXI_RRESP(S_AXI_RRESP),
        .S_AXI_RVALID(S_AXI_RVALID),
        .S_AXI_WDATA(S_AXI_WDATA),
        .S_AXI_WREADY(S_AXI_WREADY),
        .S_AXI_WSTRB(S_AXI_WSTRB),
        .S_AXI_WVALID(S_AXI_WVALID),
        .flash_A(flash_A),
        .flash_ADV_N(flash_ADV_N),
        .flash_DQ(flash_DQ),
        .flash_OE_N(flash_OE_N),
        .flash_WE_N(flash_WE_N),
        .flash_clk(flash_clk),
        .flash_rst(flash_rst));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_clk_x_pntrs
   (ram_full_fb_i_reg,
    RD_PNTR_WR,
    ram_full_fb_i_reg_0,
    v1_reg,
    WR_PNTR_RD,
    v1_reg_0,
    Q,
    D,
    \gc0.count_d1_reg[8] ,
    \gc0.count_reg[7] ,
    \gic0.gc0.count_d2_reg[8] ,
    wr_clk,
    AR,
    rd_clk,
    \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1] );
  output ram_full_fb_i_reg;
  output [8:0]RD_PNTR_WR;
  output ram_full_fb_i_reg_0;
  output [3:0]v1_reg;
  output [0:0]WR_PNTR_RD;
  output [3:0]v1_reg_0;
  input [0:0]Q;
  input [0:0]D;
  input [8:0]\gc0.count_d1_reg[8] ;
  input [7:0]\gc0.count_reg[7] ;
  input [8:0]\gic0.gc0.count_d2_reg[8] ;
  input wr_clk;
  input [0:0]AR;
  input rd_clk;
  input [0:0]\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1] ;

  wire [0:0]AR;
  wire [0:0]D;
  wire [0:0]Q;
  wire [8:0]RD_PNTR_WR;
  wire [0:0]WR_PNTR_RD;
  wire [7:0]bin2gray;
  wire [8:0]\gc0.count_d1_reg[8] ;
  wire [7:0]\gc0.count_reg[7] ;
  wire [8:0]\gic0.gc0.count_d2_reg[8] ;
  wire \gnxpm_cdc.gsync_stage[2].wr_stg_inst_n_1 ;
  wire \gnxpm_cdc.gsync_stage[2].wr_stg_inst_n_2 ;
  wire \gnxpm_cdc.gsync_stage[2].wr_stg_inst_n_3 ;
  wire \gnxpm_cdc.gsync_stage[2].wr_stg_inst_n_4 ;
  wire \gnxpm_cdc.gsync_stage[2].wr_stg_inst_n_5 ;
  wire \gnxpm_cdc.gsync_stage[2].wr_stg_inst_n_6 ;
  wire \gnxpm_cdc.gsync_stage[2].wr_stg_inst_n_7 ;
  wire \gnxpm_cdc.gsync_stage[2].wr_stg_inst_n_8 ;
  wire \gnxpm_cdc.rd_pntr_gc[0]_i_1_n_0 ;
  wire \gnxpm_cdc.rd_pntr_gc[1]_i_1_n_0 ;
  wire \gnxpm_cdc.rd_pntr_gc[2]_i_1_n_0 ;
  wire \gnxpm_cdc.rd_pntr_gc[3]_i_1_n_0 ;
  wire \gnxpm_cdc.rd_pntr_gc[4]_i_1_n_0 ;
  wire \gnxpm_cdc.rd_pntr_gc[5]_i_1_n_0 ;
  wire \gnxpm_cdc.rd_pntr_gc[6]_i_1_n_0 ;
  wire \gnxpm_cdc.rd_pntr_gc[7]_i_1_n_0 ;
  wire [6:0]gray2bin;
  wire [0:0]\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1] ;
  wire p_0_out;
  wire [7:0]p_22_out;
  wire [8:0]p_3_out;
  wire [8:0]p_4_out;
  wire [8:8]p_5_out;
  wire [8:8]p_6_out;
  wire ram_full_fb_i_reg;
  wire ram_full_fb_i_reg_0;
  wire rd_clk;
  wire [8:0]rd_pntr_gc;
  wire [3:0]v1_reg;
  wire [3:0]v1_reg_0;
  wire wr_clk;
  wire [8:0]wr_pntr_gc;

  LUT4 #(
    .INIT(16'h9009)) 
    \gmux.gm[0].gm1.m1_i_1 
       (.I0(p_22_out[0]),
        .I1(\gc0.count_d1_reg[8] [0]),
        .I2(p_22_out[1]),
        .I3(\gc0.count_d1_reg[8] [1]),
        .O(v1_reg[0]));
  LUT4 #(
    .INIT(16'h9009)) 
    \gmux.gm[0].gm1.m1_i_1__0 
       (.I0(p_22_out[0]),
        .I1(\gc0.count_reg[7] [0]),
        .I2(p_22_out[1]),
        .I3(\gc0.count_reg[7] [1]),
        .O(v1_reg_0[0]));
  LUT4 #(
    .INIT(16'h9009)) 
    \gmux.gm[1].gms.ms_i_1 
       (.I0(p_22_out[2]),
        .I1(\gc0.count_d1_reg[8] [2]),
        .I2(p_22_out[3]),
        .I3(\gc0.count_d1_reg[8] [3]),
        .O(v1_reg[1]));
  LUT4 #(
    .INIT(16'h9009)) 
    \gmux.gm[1].gms.ms_i_1__0 
       (.I0(p_22_out[2]),
        .I1(\gc0.count_reg[7] [2]),
        .I2(p_22_out[3]),
        .I3(\gc0.count_reg[7] [3]),
        .O(v1_reg_0[1]));
  LUT4 #(
    .INIT(16'h9009)) 
    \gmux.gm[2].gms.ms_i_1 
       (.I0(p_22_out[4]),
        .I1(\gc0.count_d1_reg[8] [4]),
        .I2(p_22_out[5]),
        .I3(\gc0.count_d1_reg[8] [5]),
        .O(v1_reg[2]));
  LUT4 #(
    .INIT(16'h9009)) 
    \gmux.gm[2].gms.ms_i_1__0 
       (.I0(p_22_out[4]),
        .I1(\gc0.count_reg[7] [4]),
        .I2(p_22_out[5]),
        .I3(\gc0.count_reg[7] [5]),
        .O(v1_reg_0[2]));
  LUT4 #(
    .INIT(16'h9009)) 
    \gmux.gm[3].gms.ms_i_1 
       (.I0(p_22_out[6]),
        .I1(\gc0.count_d1_reg[8] [6]),
        .I2(p_22_out[7]),
        .I3(\gc0.count_d1_reg[8] [7]),
        .O(v1_reg[3]));
  LUT4 #(
    .INIT(16'h9009)) 
    \gmux.gm[3].gms.ms_i_1__0 
       (.I0(p_22_out[6]),
        .I1(\gc0.count_reg[7] [6]),
        .I2(p_22_out[7]),
        .I3(\gc0.count_reg[7] [7]),
        .O(v1_reg_0[3]));
  LUT2 #(
    .INIT(4'h9)) 
    \gmux.gm[4].gms.ms_i_1__1 
       (.I0(RD_PNTR_WR[8]),
        .I1(Q),
        .O(ram_full_fb_i_reg));
  LUT2 #(
    .INIT(4'h9)) 
    \gmux.gm[4].gms.ms_i_1__2 
       (.I0(RD_PNTR_WR[8]),
        .I1(D),
        .O(ram_full_fb_i_reg_0));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_synchronizer_ff__parameterized0 \gnxpm_cdc.gsync_stage[1].rd_stg_inst 
       (.D(p_3_out),
        .Q(wr_pntr_gc),
        .\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1] (\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1] ),
        .rd_clk(rd_clk));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_synchronizer_ff__parameterized1 \gnxpm_cdc.gsync_stage[1].wr_stg_inst 
       (.AR(AR),
        .D(p_4_out),
        .Q(rd_pntr_gc),
        .wr_clk(wr_clk));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_synchronizer_ff__parameterized2 \gnxpm_cdc.gsync_stage[2].rd_stg_inst 
       (.D(p_3_out),
        .\gnxpm_cdc.wr_pntr_bin_reg[7] ({p_0_out,gray2bin}),
        .\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1] (\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1] ),
        .out(p_5_out),
        .rd_clk(rd_clk));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_synchronizer_ff__parameterized3 \gnxpm_cdc.gsync_stage[2].wr_stg_inst 
       (.AR(AR),
        .D(p_4_out),
        .\gnxpm_cdc.rd_pntr_bin_reg[7] ({\gnxpm_cdc.gsync_stage[2].wr_stg_inst_n_1 ,\gnxpm_cdc.gsync_stage[2].wr_stg_inst_n_2 ,\gnxpm_cdc.gsync_stage[2].wr_stg_inst_n_3 ,\gnxpm_cdc.gsync_stage[2].wr_stg_inst_n_4 ,\gnxpm_cdc.gsync_stage[2].wr_stg_inst_n_5 ,\gnxpm_cdc.gsync_stage[2].wr_stg_inst_n_6 ,\gnxpm_cdc.gsync_stage[2].wr_stg_inst_n_7 ,\gnxpm_cdc.gsync_stage[2].wr_stg_inst_n_8 }),
        .out(p_6_out),
        .wr_clk(wr_clk));
  FDCE #(
    .INIT(1'b0)) 
    \gnxpm_cdc.rd_pntr_bin_reg[0] 
       (.C(wr_clk),
        .CE(1'b1),
        .CLR(AR),
        .D(\gnxpm_cdc.gsync_stage[2].wr_stg_inst_n_8 ),
        .Q(RD_PNTR_WR[0]));
  FDCE #(
    .INIT(1'b0)) 
    \gnxpm_cdc.rd_pntr_bin_reg[1] 
       (.C(wr_clk),
        .CE(1'b1),
        .CLR(AR),
        .D(\gnxpm_cdc.gsync_stage[2].wr_stg_inst_n_7 ),
        .Q(RD_PNTR_WR[1]));
  FDCE #(
    .INIT(1'b0)) 
    \gnxpm_cdc.rd_pntr_bin_reg[2] 
       (.C(wr_clk),
        .CE(1'b1),
        .CLR(AR),
        .D(\gnxpm_cdc.gsync_stage[2].wr_stg_inst_n_6 ),
        .Q(RD_PNTR_WR[2]));
  FDCE #(
    .INIT(1'b0)) 
    \gnxpm_cdc.rd_pntr_bin_reg[3] 
       (.C(wr_clk),
        .CE(1'b1),
        .CLR(AR),
        .D(\gnxpm_cdc.gsync_stage[2].wr_stg_inst_n_5 ),
        .Q(RD_PNTR_WR[3]));
  FDCE #(
    .INIT(1'b0)) 
    \gnxpm_cdc.rd_pntr_bin_reg[4] 
       (.C(wr_clk),
        .CE(1'b1),
        .CLR(AR),
        .D(\gnxpm_cdc.gsync_stage[2].wr_stg_inst_n_4 ),
        .Q(RD_PNTR_WR[4]));
  FDCE #(
    .INIT(1'b0)) 
    \gnxpm_cdc.rd_pntr_bin_reg[5] 
       (.C(wr_clk),
        .CE(1'b1),
        .CLR(AR),
        .D(\gnxpm_cdc.gsync_stage[2].wr_stg_inst_n_3 ),
        .Q(RD_PNTR_WR[5]));
  FDCE #(
    .INIT(1'b0)) 
    \gnxpm_cdc.rd_pntr_bin_reg[6] 
       (.C(wr_clk),
        .CE(1'b1),
        .CLR(AR),
        .D(\gnxpm_cdc.gsync_stage[2].wr_stg_inst_n_2 ),
        .Q(RD_PNTR_WR[6]));
  FDCE #(
    .INIT(1'b0)) 
    \gnxpm_cdc.rd_pntr_bin_reg[7] 
       (.C(wr_clk),
        .CE(1'b1),
        .CLR(AR),
        .D(\gnxpm_cdc.gsync_stage[2].wr_stg_inst_n_1 ),
        .Q(RD_PNTR_WR[7]));
  FDCE #(
    .INIT(1'b0)) 
    \gnxpm_cdc.rd_pntr_bin_reg[8] 
       (.C(wr_clk),
        .CE(1'b1),
        .CLR(AR),
        .D(p_6_out),
        .Q(RD_PNTR_WR[8]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \gnxpm_cdc.rd_pntr_gc[0]_i_1 
       (.I0(\gc0.count_d1_reg[8] [0]),
        .I1(\gc0.count_d1_reg[8] [1]),
        .O(\gnxpm_cdc.rd_pntr_gc[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \gnxpm_cdc.rd_pntr_gc[1]_i_1 
       (.I0(\gc0.count_d1_reg[8] [1]),
        .I1(\gc0.count_d1_reg[8] [2]),
        .O(\gnxpm_cdc.rd_pntr_gc[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \gnxpm_cdc.rd_pntr_gc[2]_i_1 
       (.I0(\gc0.count_d1_reg[8] [2]),
        .I1(\gc0.count_d1_reg[8] [3]),
        .O(\gnxpm_cdc.rd_pntr_gc[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \gnxpm_cdc.rd_pntr_gc[3]_i_1 
       (.I0(\gc0.count_d1_reg[8] [3]),
        .I1(\gc0.count_d1_reg[8] [4]),
        .O(\gnxpm_cdc.rd_pntr_gc[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \gnxpm_cdc.rd_pntr_gc[4]_i_1 
       (.I0(\gc0.count_d1_reg[8] [4]),
        .I1(\gc0.count_d1_reg[8] [5]),
        .O(\gnxpm_cdc.rd_pntr_gc[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \gnxpm_cdc.rd_pntr_gc[5]_i_1 
       (.I0(\gc0.count_d1_reg[8] [5]),
        .I1(\gc0.count_d1_reg[8] [6]),
        .O(\gnxpm_cdc.rd_pntr_gc[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \gnxpm_cdc.rd_pntr_gc[6]_i_1 
       (.I0(\gc0.count_d1_reg[8] [6]),
        .I1(\gc0.count_d1_reg[8] [7]),
        .O(\gnxpm_cdc.rd_pntr_gc[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \gnxpm_cdc.rd_pntr_gc[7]_i_1 
       (.I0(\gc0.count_d1_reg[8] [7]),
        .I1(\gc0.count_d1_reg[8] [8]),
        .O(\gnxpm_cdc.rd_pntr_gc[7]_i_1_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \gnxpm_cdc.rd_pntr_gc_reg[0] 
       (.C(rd_clk),
        .CE(1'b1),
        .CLR(\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1] ),
        .D(\gnxpm_cdc.rd_pntr_gc[0]_i_1_n_0 ),
        .Q(rd_pntr_gc[0]));
  FDCE #(
    .INIT(1'b0)) 
    \gnxpm_cdc.rd_pntr_gc_reg[1] 
       (.C(rd_clk),
        .CE(1'b1),
        .CLR(\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1] ),
        .D(\gnxpm_cdc.rd_pntr_gc[1]_i_1_n_0 ),
        .Q(rd_pntr_gc[1]));
  FDCE #(
    .INIT(1'b0)) 
    \gnxpm_cdc.rd_pntr_gc_reg[2] 
       (.C(rd_clk),
        .CE(1'b1),
        .CLR(\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1] ),
        .D(\gnxpm_cdc.rd_pntr_gc[2]_i_1_n_0 ),
        .Q(rd_pntr_gc[2]));
  FDCE #(
    .INIT(1'b0)) 
    \gnxpm_cdc.rd_pntr_gc_reg[3] 
       (.C(rd_clk),
        .CE(1'b1),
        .CLR(\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1] ),
        .D(\gnxpm_cdc.rd_pntr_gc[3]_i_1_n_0 ),
        .Q(rd_pntr_gc[3]));
  FDCE #(
    .INIT(1'b0)) 
    \gnxpm_cdc.rd_pntr_gc_reg[4] 
       (.C(rd_clk),
        .CE(1'b1),
        .CLR(\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1] ),
        .D(\gnxpm_cdc.rd_pntr_gc[4]_i_1_n_0 ),
        .Q(rd_pntr_gc[4]));
  FDCE #(
    .INIT(1'b0)) 
    \gnxpm_cdc.rd_pntr_gc_reg[5] 
       (.C(rd_clk),
        .CE(1'b1),
        .CLR(\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1] ),
        .D(\gnxpm_cdc.rd_pntr_gc[5]_i_1_n_0 ),
        .Q(rd_pntr_gc[5]));
  FDCE #(
    .INIT(1'b0)) 
    \gnxpm_cdc.rd_pntr_gc_reg[6] 
       (.C(rd_clk),
        .CE(1'b1),
        .CLR(\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1] ),
        .D(\gnxpm_cdc.rd_pntr_gc[6]_i_1_n_0 ),
        .Q(rd_pntr_gc[6]));
  FDCE #(
    .INIT(1'b0)) 
    \gnxpm_cdc.rd_pntr_gc_reg[7] 
       (.C(rd_clk),
        .CE(1'b1),
        .CLR(\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1] ),
        .D(\gnxpm_cdc.rd_pntr_gc[7]_i_1_n_0 ),
        .Q(rd_pntr_gc[7]));
  FDCE #(
    .INIT(1'b0)) 
    \gnxpm_cdc.rd_pntr_gc_reg[8] 
       (.C(rd_clk),
        .CE(1'b1),
        .CLR(\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1] ),
        .D(\gc0.count_d1_reg[8] [8]),
        .Q(rd_pntr_gc[8]));
  FDCE #(
    .INIT(1'b0)) 
    \gnxpm_cdc.wr_pntr_bin_reg[0] 
       (.C(rd_clk),
        .CE(1'b1),
        .CLR(\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1] ),
        .D(gray2bin[0]),
        .Q(p_22_out[0]));
  FDCE #(
    .INIT(1'b0)) 
    \gnxpm_cdc.wr_pntr_bin_reg[1] 
       (.C(rd_clk),
        .CE(1'b1),
        .CLR(\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1] ),
        .D(gray2bin[1]),
        .Q(p_22_out[1]));
  FDCE #(
    .INIT(1'b0)) 
    \gnxpm_cdc.wr_pntr_bin_reg[2] 
       (.C(rd_clk),
        .CE(1'b1),
        .CLR(\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1] ),
        .D(gray2bin[2]),
        .Q(p_22_out[2]));
  FDCE #(
    .INIT(1'b0)) 
    \gnxpm_cdc.wr_pntr_bin_reg[3] 
       (.C(rd_clk),
        .CE(1'b1),
        .CLR(\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1] ),
        .D(gray2bin[3]),
        .Q(p_22_out[3]));
  FDCE #(
    .INIT(1'b0)) 
    \gnxpm_cdc.wr_pntr_bin_reg[4] 
       (.C(rd_clk),
        .CE(1'b1),
        .CLR(\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1] ),
        .D(gray2bin[4]),
        .Q(p_22_out[4]));
  FDCE #(
    .INIT(1'b0)) 
    \gnxpm_cdc.wr_pntr_bin_reg[5] 
       (.C(rd_clk),
        .CE(1'b1),
        .CLR(\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1] ),
        .D(gray2bin[5]),
        .Q(p_22_out[5]));
  FDCE #(
    .INIT(1'b0)) 
    \gnxpm_cdc.wr_pntr_bin_reg[6] 
       (.C(rd_clk),
        .CE(1'b1),
        .CLR(\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1] ),
        .D(gray2bin[6]),
        .Q(p_22_out[6]));
  FDCE #(
    .INIT(1'b0)) 
    \gnxpm_cdc.wr_pntr_bin_reg[7] 
       (.C(rd_clk),
        .CE(1'b1),
        .CLR(\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1] ),
        .D(p_0_out),
        .Q(p_22_out[7]));
  FDCE #(
    .INIT(1'b0)) 
    \gnxpm_cdc.wr_pntr_bin_reg[8] 
       (.C(rd_clk),
        .CE(1'b1),
        .CLR(\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1] ),
        .D(p_5_out),
        .Q(WR_PNTR_RD));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \gnxpm_cdc.wr_pntr_gc[0]_i_1 
       (.I0(\gic0.gc0.count_d2_reg[8] [0]),
        .I1(\gic0.gc0.count_d2_reg[8] [1]),
        .O(bin2gray[0]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \gnxpm_cdc.wr_pntr_gc[1]_i_1 
       (.I0(\gic0.gc0.count_d2_reg[8] [1]),
        .I1(\gic0.gc0.count_d2_reg[8] [2]),
        .O(bin2gray[1]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \gnxpm_cdc.wr_pntr_gc[2]_i_1 
       (.I0(\gic0.gc0.count_d2_reg[8] [2]),
        .I1(\gic0.gc0.count_d2_reg[8] [3]),
        .O(bin2gray[2]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \gnxpm_cdc.wr_pntr_gc[3]_i_1 
       (.I0(\gic0.gc0.count_d2_reg[8] [3]),
        .I1(\gic0.gc0.count_d2_reg[8] [4]),
        .O(bin2gray[3]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \gnxpm_cdc.wr_pntr_gc[4]_i_1 
       (.I0(\gic0.gc0.count_d2_reg[8] [4]),
        .I1(\gic0.gc0.count_d2_reg[8] [5]),
        .O(bin2gray[4]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \gnxpm_cdc.wr_pntr_gc[5]_i_1 
       (.I0(\gic0.gc0.count_d2_reg[8] [5]),
        .I1(\gic0.gc0.count_d2_reg[8] [6]),
        .O(bin2gray[5]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \gnxpm_cdc.wr_pntr_gc[6]_i_1 
       (.I0(\gic0.gc0.count_d2_reg[8] [6]),
        .I1(\gic0.gc0.count_d2_reg[8] [7]),
        .O(bin2gray[6]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \gnxpm_cdc.wr_pntr_gc[7]_i_1 
       (.I0(\gic0.gc0.count_d2_reg[8] [7]),
        .I1(\gic0.gc0.count_d2_reg[8] [8]),
        .O(bin2gray[7]));
  FDCE #(
    .INIT(1'b0)) 
    \gnxpm_cdc.wr_pntr_gc_reg[0] 
       (.C(wr_clk),
        .CE(1'b1),
        .CLR(AR),
        .D(bin2gray[0]),
        .Q(wr_pntr_gc[0]));
  FDCE #(
    .INIT(1'b0)) 
    \gnxpm_cdc.wr_pntr_gc_reg[1] 
       (.C(wr_clk),
        .CE(1'b1),
        .CLR(AR),
        .D(bin2gray[1]),
        .Q(wr_pntr_gc[1]));
  FDCE #(
    .INIT(1'b0)) 
    \gnxpm_cdc.wr_pntr_gc_reg[2] 
       (.C(wr_clk),
        .CE(1'b1),
        .CLR(AR),
        .D(bin2gray[2]),
        .Q(wr_pntr_gc[2]));
  FDCE #(
    .INIT(1'b0)) 
    \gnxpm_cdc.wr_pntr_gc_reg[3] 
       (.C(wr_clk),
        .CE(1'b1),
        .CLR(AR),
        .D(bin2gray[3]),
        .Q(wr_pntr_gc[3]));
  FDCE #(
    .INIT(1'b0)) 
    \gnxpm_cdc.wr_pntr_gc_reg[4] 
       (.C(wr_clk),
        .CE(1'b1),
        .CLR(AR),
        .D(bin2gray[4]),
        .Q(wr_pntr_gc[4]));
  FDCE #(
    .INIT(1'b0)) 
    \gnxpm_cdc.wr_pntr_gc_reg[5] 
       (.C(wr_clk),
        .CE(1'b1),
        .CLR(AR),
        .D(bin2gray[5]),
        .Q(wr_pntr_gc[5]));
  FDCE #(
    .INIT(1'b0)) 
    \gnxpm_cdc.wr_pntr_gc_reg[6] 
       (.C(wr_clk),
        .CE(1'b1),
        .CLR(AR),
        .D(bin2gray[6]),
        .Q(wr_pntr_gc[6]));
  FDCE #(
    .INIT(1'b0)) 
    \gnxpm_cdc.wr_pntr_gc_reg[7] 
       (.C(wr_clk),
        .CE(1'b1),
        .CLR(AR),
        .D(bin2gray[7]),
        .Q(wr_pntr_gc[7]));
  FDCE #(
    .INIT(1'b0)) 
    \gnxpm_cdc.wr_pntr_gc_reg[8] 
       (.C(wr_clk),
        .CE(1'b1),
        .CLR(AR),
        .D(\gic0.gc0.count_d2_reg[8] [8]),
        .Q(wr_pntr_gc[8]));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_compare
   (comp1,
    v1_reg,
    \gnxpm_cdc.rd_pntr_bin_reg[8] );
  output comp1;
  input [3:0]v1_reg;
  input \gnxpm_cdc.rd_pntr_bin_reg[8] ;

  wire carrynet_0;
  wire carrynet_1;
  wire carrynet_2;
  wire comp1;
  wire \gnxpm_cdc.rd_pntr_bin_reg[8] ;
  wire [3:0]v1_reg;
  wire [7:3]\NLW_gmux.gm[0].gm1.m1_CARRY4_CARRY8_CO_UNCONNECTED ;
  wire [7:5]\NLW_gmux.gm[0].gm1.m1_CARRY4_CARRY8_DI_UNCONNECTED ;
  wire [7:0]\NLW_gmux.gm[0].gm1.m1_CARRY4_CARRY8_O_UNCONNECTED ;
  wire [7:5]\NLW_gmux.gm[0].gm1.m1_CARRY4_CARRY8_S_UNCONNECTED ;

  (* XILINX_LEGACY_PRIM = "(CARRY4)" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY8 \gmux.gm[0].gm1.m1_CARRY4_CARRY8 
       (.CI(1'b1),
        .CI_TOP(1'b0),
        .CO({\NLW_gmux.gm[0].gm1.m1_CARRY4_CARRY8_CO_UNCONNECTED [7:5],comp1,\NLW_gmux.gm[0].gm1.m1_CARRY4_CARRY8_CO_UNCONNECTED [3],carrynet_2,carrynet_1,carrynet_0}),
        .DI({\NLW_gmux.gm[0].gm1.m1_CARRY4_CARRY8_DI_UNCONNECTED [7:5],1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_gmux.gm[0].gm1.m1_CARRY4_CARRY8_O_UNCONNECTED [7:0]),
        .S({\NLW_gmux.gm[0].gm1.m1_CARRY4_CARRY8_S_UNCONNECTED [7:5],\gnxpm_cdc.rd_pntr_bin_reg[8] ,v1_reg}));
endmodule

(* ORIG_REF_NAME = "compare" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_compare_3
   (ram_full_fb_i_reg,
    v1_reg_0,
    \gnxpm_cdc.rd_pntr_bin_reg[8] ,
    wr_rst_busy,
    out,
    wr_en,
    comp1);
  output ram_full_fb_i_reg;
  input [3:0]v1_reg_0;
  input \gnxpm_cdc.rd_pntr_bin_reg[8] ;
  input wr_rst_busy;
  input out;
  input wr_en;
  input comp1;

  wire carrynet_0;
  wire carrynet_1;
  wire carrynet_2;
  wire comp1;
  wire comp2;
  wire \gnxpm_cdc.rd_pntr_bin_reg[8] ;
  wire out;
  wire ram_full_fb_i_reg;
  wire [3:0]v1_reg_0;
  wire wr_en;
  wire wr_rst_busy;
  wire [7:3]\NLW_gmux.gm[0].gm1.m1_CARRY4_CARRY8_CO_UNCONNECTED ;
  wire [7:5]\NLW_gmux.gm[0].gm1.m1_CARRY4_CARRY8_DI_UNCONNECTED ;
  wire [7:0]\NLW_gmux.gm[0].gm1.m1_CARRY4_CARRY8_O_UNCONNECTED ;
  wire [7:5]\NLW_gmux.gm[0].gm1.m1_CARRY4_CARRY8_S_UNCONNECTED ;

  (* XILINX_LEGACY_PRIM = "(CARRY4)" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY8 \gmux.gm[0].gm1.m1_CARRY4_CARRY8 
       (.CI(1'b1),
        .CI_TOP(1'b0),
        .CO({\NLW_gmux.gm[0].gm1.m1_CARRY4_CARRY8_CO_UNCONNECTED [7:5],comp2,\NLW_gmux.gm[0].gm1.m1_CARRY4_CARRY8_CO_UNCONNECTED [3],carrynet_2,carrynet_1,carrynet_0}),
        .DI({\NLW_gmux.gm[0].gm1.m1_CARRY4_CARRY8_DI_UNCONNECTED [7:5],1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_gmux.gm[0].gm1.m1_CARRY4_CARRY8_O_UNCONNECTED [7:0]),
        .S({\NLW_gmux.gm[0].gm1.m1_CARRY4_CARRY8_S_UNCONNECTED [7:5],\gnxpm_cdc.rd_pntr_bin_reg[8] ,v1_reg_0}));
  LUT5 #(
    .INIT(32'h55550400)) 
    ram_full_i_i_1
       (.I0(wr_rst_busy),
        .I1(comp2),
        .I2(out),
        .I3(wr_en),
        .I4(comp1),
        .O(ram_full_fb_i_reg));
endmodule

(* ORIG_REF_NAME = "compare" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_compare_4
   (ram_empty_fb_i_reg,
    v1_reg,
    \gc0.count_d1_reg[8] ,
    rd_en,
    out,
    comp1);
  output ram_empty_fb_i_reg;
  input [3:0]v1_reg;
  input \gc0.count_d1_reg[8] ;
  input rd_en;
  input out;
  input comp1;

  wire carrynet_0;
  wire carrynet_1;
  wire carrynet_2;
  wire comp0;
  wire comp1;
  wire \gc0.count_d1_reg[8] ;
  wire out;
  wire ram_empty_fb_i_reg;
  wire rd_en;
  wire [3:0]v1_reg;
  wire [7:3]\NLW_gmux.gm[0].gm1.m1_CARRY4_CARRY8_CO_UNCONNECTED ;
  wire [7:5]\NLW_gmux.gm[0].gm1.m1_CARRY4_CARRY8_DI_UNCONNECTED ;
  wire [7:0]\NLW_gmux.gm[0].gm1.m1_CARRY4_CARRY8_O_UNCONNECTED ;
  wire [7:5]\NLW_gmux.gm[0].gm1.m1_CARRY4_CARRY8_S_UNCONNECTED ;

  (* XILINX_LEGACY_PRIM = "(CARRY4)" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY8 \gmux.gm[0].gm1.m1_CARRY4_CARRY8 
       (.CI(1'b1),
        .CI_TOP(1'b0),
        .CO({\NLW_gmux.gm[0].gm1.m1_CARRY4_CARRY8_CO_UNCONNECTED [7:5],comp0,\NLW_gmux.gm[0].gm1.m1_CARRY4_CARRY8_CO_UNCONNECTED [3],carrynet_2,carrynet_1,carrynet_0}),
        .DI({\NLW_gmux.gm[0].gm1.m1_CARRY4_CARRY8_DI_UNCONNECTED [7:5],1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_gmux.gm[0].gm1.m1_CARRY4_CARRY8_O_UNCONNECTED [7:0]),
        .S({\NLW_gmux.gm[0].gm1.m1_CARRY4_CARRY8_S_UNCONNECTED [7:5],\gc0.count_d1_reg[8] ,v1_reg}));
  LUT4 #(
    .INIT(16'hAEAA)) 
    ram_empty_i_i_1
       (.I0(comp0),
        .I1(rd_en),
        .I2(out),
        .I3(comp1),
        .O(ram_empty_fb_i_reg));
endmodule

(* ORIG_REF_NAME = "compare" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_compare_5
   (comp1,
    v1_reg_0,
    \gc0.count_reg[8] );
  output comp1;
  input [3:0]v1_reg_0;
  input \gc0.count_reg[8] ;

  wire carrynet_0;
  wire carrynet_1;
  wire carrynet_2;
  wire comp1;
  wire \gc0.count_reg[8] ;
  wire [3:0]v1_reg_0;
  wire [7:3]\NLW_gmux.gm[0].gm1.m1_CARRY4_CARRY8_CO_UNCONNECTED ;
  wire [7:5]\NLW_gmux.gm[0].gm1.m1_CARRY4_CARRY8_DI_UNCONNECTED ;
  wire [7:0]\NLW_gmux.gm[0].gm1.m1_CARRY4_CARRY8_O_UNCONNECTED ;
  wire [7:5]\NLW_gmux.gm[0].gm1.m1_CARRY4_CARRY8_S_UNCONNECTED ;

  (* XILINX_LEGACY_PRIM = "(CARRY4)" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY8 \gmux.gm[0].gm1.m1_CARRY4_CARRY8 
       (.CI(1'b1),
        .CI_TOP(1'b0),
        .CO({\NLW_gmux.gm[0].gm1.m1_CARRY4_CARRY8_CO_UNCONNECTED [7:5],comp1,\NLW_gmux.gm[0].gm1.m1_CARRY4_CARRY8_CO_UNCONNECTED [3],carrynet_2,carrynet_1,carrynet_0}),
        .DI({\NLW_gmux.gm[0].gm1.m1_CARRY4_CARRY8_DI_UNCONNECTED [7:5],1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_gmux.gm[0].gm1.m1_CARRY4_CARRY8_O_UNCONNECTED [7:0]),
        .S({\NLW_gmux.gm[0].gm1.m1_CARRY4_CARRY8_S_UNCONNECTED [7:5],\gc0.count_reg[8] ,v1_reg_0}));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dmem
   (dout,
    wr_clk,
    din,
    Q,
    \gic0.gc0.count_d2_reg[5] ,
    ram_full_fb_i_reg,
    \gic0.gc0.count_d2_reg[7] ,
    \gic0.gc0.count_d2_reg[6] ,
    ram_full_fb_i_reg_0,
    \gic0.gc0.count_d2_reg[6]_0 ,
    ram_full_fb_i_reg_1,
    ram_full_fb_i_reg_2,
    \gic0.gc0.count_d2_reg[8] ,
    ADDRG,
    E,
    rd_clk,
    AR);
  output [31:0]dout;
  input wr_clk;
  input [31:0]din;
  input [8:0]Q;
  input [5:0]\gic0.gc0.count_d2_reg[5] ;
  input ram_full_fb_i_reg;
  input \gic0.gc0.count_d2_reg[7] ;
  input \gic0.gc0.count_d2_reg[6] ;
  input ram_full_fb_i_reg_0;
  input \gic0.gc0.count_d2_reg[6]_0 ;
  input ram_full_fb_i_reg_1;
  input ram_full_fb_i_reg_2;
  input \gic0.gc0.count_d2_reg[8] ;
  input [5:0]ADDRG;
  input [0:0]E;
  input rd_clk;
  input [0:0]AR;

  wire [5:0]ADDRG;
  wire [0:0]AR;
  wire [0:0]E;
  wire [8:0]Q;
  wire RAM_reg_0_63_0_6_n_0;
  wire RAM_reg_0_63_0_6_n_1;
  wire RAM_reg_0_63_0_6_n_2;
  wire RAM_reg_0_63_0_6_n_3;
  wire RAM_reg_0_63_0_6_n_4;
  wire RAM_reg_0_63_0_6_n_5;
  wire RAM_reg_0_63_0_6_n_6;
  wire RAM_reg_0_63_14_20_n_0;
  wire RAM_reg_0_63_14_20_n_1;
  wire RAM_reg_0_63_14_20_n_2;
  wire RAM_reg_0_63_14_20_n_3;
  wire RAM_reg_0_63_14_20_n_4;
  wire RAM_reg_0_63_14_20_n_5;
  wire RAM_reg_0_63_14_20_n_6;
  wire RAM_reg_0_63_21_27_n_0;
  wire RAM_reg_0_63_21_27_n_1;
  wire RAM_reg_0_63_21_27_n_2;
  wire RAM_reg_0_63_21_27_n_3;
  wire RAM_reg_0_63_21_27_n_4;
  wire RAM_reg_0_63_21_27_n_5;
  wire RAM_reg_0_63_21_27_n_6;
  wire RAM_reg_0_63_28_31_n_0;
  wire RAM_reg_0_63_28_31_n_1;
  wire RAM_reg_0_63_28_31_n_2;
  wire RAM_reg_0_63_28_31_n_3;
  wire RAM_reg_0_63_7_13_n_0;
  wire RAM_reg_0_63_7_13_n_1;
  wire RAM_reg_0_63_7_13_n_2;
  wire RAM_reg_0_63_7_13_n_3;
  wire RAM_reg_0_63_7_13_n_4;
  wire RAM_reg_0_63_7_13_n_5;
  wire RAM_reg_0_63_7_13_n_6;
  wire RAM_reg_128_191_0_6_n_0;
  wire RAM_reg_128_191_0_6_n_1;
  wire RAM_reg_128_191_0_6_n_2;
  wire RAM_reg_128_191_0_6_n_3;
  wire RAM_reg_128_191_0_6_n_4;
  wire RAM_reg_128_191_0_6_n_5;
  wire RAM_reg_128_191_0_6_n_6;
  wire RAM_reg_128_191_14_20_n_0;
  wire RAM_reg_128_191_14_20_n_1;
  wire RAM_reg_128_191_14_20_n_2;
  wire RAM_reg_128_191_14_20_n_3;
  wire RAM_reg_128_191_14_20_n_4;
  wire RAM_reg_128_191_14_20_n_5;
  wire RAM_reg_128_191_14_20_n_6;
  wire RAM_reg_128_191_21_27_n_0;
  wire RAM_reg_128_191_21_27_n_1;
  wire RAM_reg_128_191_21_27_n_2;
  wire RAM_reg_128_191_21_27_n_3;
  wire RAM_reg_128_191_21_27_n_4;
  wire RAM_reg_128_191_21_27_n_5;
  wire RAM_reg_128_191_21_27_n_6;
  wire RAM_reg_128_191_28_31_n_0;
  wire RAM_reg_128_191_28_31_n_1;
  wire RAM_reg_128_191_28_31_n_2;
  wire RAM_reg_128_191_28_31_n_3;
  wire RAM_reg_128_191_7_13_n_0;
  wire RAM_reg_128_191_7_13_n_1;
  wire RAM_reg_128_191_7_13_n_2;
  wire RAM_reg_128_191_7_13_n_3;
  wire RAM_reg_128_191_7_13_n_4;
  wire RAM_reg_128_191_7_13_n_5;
  wire RAM_reg_128_191_7_13_n_6;
  wire RAM_reg_192_255_0_6_n_0;
  wire RAM_reg_192_255_0_6_n_1;
  wire RAM_reg_192_255_0_6_n_2;
  wire RAM_reg_192_255_0_6_n_3;
  wire RAM_reg_192_255_0_6_n_4;
  wire RAM_reg_192_255_0_6_n_5;
  wire RAM_reg_192_255_0_6_n_6;
  wire RAM_reg_192_255_14_20_n_0;
  wire RAM_reg_192_255_14_20_n_1;
  wire RAM_reg_192_255_14_20_n_2;
  wire RAM_reg_192_255_14_20_n_3;
  wire RAM_reg_192_255_14_20_n_4;
  wire RAM_reg_192_255_14_20_n_5;
  wire RAM_reg_192_255_14_20_n_6;
  wire RAM_reg_192_255_21_27_n_0;
  wire RAM_reg_192_255_21_27_n_1;
  wire RAM_reg_192_255_21_27_n_2;
  wire RAM_reg_192_255_21_27_n_3;
  wire RAM_reg_192_255_21_27_n_4;
  wire RAM_reg_192_255_21_27_n_5;
  wire RAM_reg_192_255_21_27_n_6;
  wire RAM_reg_192_255_28_31_n_0;
  wire RAM_reg_192_255_28_31_n_1;
  wire RAM_reg_192_255_28_31_n_2;
  wire RAM_reg_192_255_28_31_n_3;
  wire RAM_reg_192_255_7_13_n_0;
  wire RAM_reg_192_255_7_13_n_1;
  wire RAM_reg_192_255_7_13_n_2;
  wire RAM_reg_192_255_7_13_n_3;
  wire RAM_reg_192_255_7_13_n_4;
  wire RAM_reg_192_255_7_13_n_5;
  wire RAM_reg_192_255_7_13_n_6;
  wire RAM_reg_256_319_0_6_n_0;
  wire RAM_reg_256_319_0_6_n_1;
  wire RAM_reg_256_319_0_6_n_2;
  wire RAM_reg_256_319_0_6_n_3;
  wire RAM_reg_256_319_0_6_n_4;
  wire RAM_reg_256_319_0_6_n_5;
  wire RAM_reg_256_319_0_6_n_6;
  wire RAM_reg_256_319_14_20_n_0;
  wire RAM_reg_256_319_14_20_n_1;
  wire RAM_reg_256_319_14_20_n_2;
  wire RAM_reg_256_319_14_20_n_3;
  wire RAM_reg_256_319_14_20_n_4;
  wire RAM_reg_256_319_14_20_n_5;
  wire RAM_reg_256_319_14_20_n_6;
  wire RAM_reg_256_319_21_27_n_0;
  wire RAM_reg_256_319_21_27_n_1;
  wire RAM_reg_256_319_21_27_n_2;
  wire RAM_reg_256_319_21_27_n_3;
  wire RAM_reg_256_319_21_27_n_4;
  wire RAM_reg_256_319_21_27_n_5;
  wire RAM_reg_256_319_21_27_n_6;
  wire RAM_reg_256_319_28_31_n_0;
  wire RAM_reg_256_319_28_31_n_1;
  wire RAM_reg_256_319_28_31_n_2;
  wire RAM_reg_256_319_28_31_n_3;
  wire RAM_reg_256_319_7_13_n_0;
  wire RAM_reg_256_319_7_13_n_1;
  wire RAM_reg_256_319_7_13_n_2;
  wire RAM_reg_256_319_7_13_n_3;
  wire RAM_reg_256_319_7_13_n_4;
  wire RAM_reg_256_319_7_13_n_5;
  wire RAM_reg_256_319_7_13_n_6;
  wire RAM_reg_320_383_0_6_n_0;
  wire RAM_reg_320_383_0_6_n_1;
  wire RAM_reg_320_383_0_6_n_2;
  wire RAM_reg_320_383_0_6_n_3;
  wire RAM_reg_320_383_0_6_n_4;
  wire RAM_reg_320_383_0_6_n_5;
  wire RAM_reg_320_383_0_6_n_6;
  wire RAM_reg_320_383_14_20_n_0;
  wire RAM_reg_320_383_14_20_n_1;
  wire RAM_reg_320_383_14_20_n_2;
  wire RAM_reg_320_383_14_20_n_3;
  wire RAM_reg_320_383_14_20_n_4;
  wire RAM_reg_320_383_14_20_n_5;
  wire RAM_reg_320_383_14_20_n_6;
  wire RAM_reg_320_383_21_27_n_0;
  wire RAM_reg_320_383_21_27_n_1;
  wire RAM_reg_320_383_21_27_n_2;
  wire RAM_reg_320_383_21_27_n_3;
  wire RAM_reg_320_383_21_27_n_4;
  wire RAM_reg_320_383_21_27_n_5;
  wire RAM_reg_320_383_21_27_n_6;
  wire RAM_reg_320_383_28_31_n_0;
  wire RAM_reg_320_383_28_31_n_1;
  wire RAM_reg_320_383_28_31_n_2;
  wire RAM_reg_320_383_28_31_n_3;
  wire RAM_reg_320_383_7_13_n_0;
  wire RAM_reg_320_383_7_13_n_1;
  wire RAM_reg_320_383_7_13_n_2;
  wire RAM_reg_320_383_7_13_n_3;
  wire RAM_reg_320_383_7_13_n_4;
  wire RAM_reg_320_383_7_13_n_5;
  wire RAM_reg_320_383_7_13_n_6;
  wire RAM_reg_384_447_0_6_n_0;
  wire RAM_reg_384_447_0_6_n_1;
  wire RAM_reg_384_447_0_6_n_2;
  wire RAM_reg_384_447_0_6_n_3;
  wire RAM_reg_384_447_0_6_n_4;
  wire RAM_reg_384_447_0_6_n_5;
  wire RAM_reg_384_447_0_6_n_6;
  wire RAM_reg_384_447_14_20_n_0;
  wire RAM_reg_384_447_14_20_n_1;
  wire RAM_reg_384_447_14_20_n_2;
  wire RAM_reg_384_447_14_20_n_3;
  wire RAM_reg_384_447_14_20_n_4;
  wire RAM_reg_384_447_14_20_n_5;
  wire RAM_reg_384_447_14_20_n_6;
  wire RAM_reg_384_447_21_27_n_0;
  wire RAM_reg_384_447_21_27_n_1;
  wire RAM_reg_384_447_21_27_n_2;
  wire RAM_reg_384_447_21_27_n_3;
  wire RAM_reg_384_447_21_27_n_4;
  wire RAM_reg_384_447_21_27_n_5;
  wire RAM_reg_384_447_21_27_n_6;
  wire RAM_reg_384_447_28_31_n_0;
  wire RAM_reg_384_447_28_31_n_1;
  wire RAM_reg_384_447_28_31_n_2;
  wire RAM_reg_384_447_28_31_n_3;
  wire RAM_reg_384_447_7_13_n_0;
  wire RAM_reg_384_447_7_13_n_1;
  wire RAM_reg_384_447_7_13_n_2;
  wire RAM_reg_384_447_7_13_n_3;
  wire RAM_reg_384_447_7_13_n_4;
  wire RAM_reg_384_447_7_13_n_5;
  wire RAM_reg_384_447_7_13_n_6;
  wire RAM_reg_448_511_0_6_n_0;
  wire RAM_reg_448_511_0_6_n_1;
  wire RAM_reg_448_511_0_6_n_2;
  wire RAM_reg_448_511_0_6_n_3;
  wire RAM_reg_448_511_0_6_n_4;
  wire RAM_reg_448_511_0_6_n_5;
  wire RAM_reg_448_511_0_6_n_6;
  wire RAM_reg_448_511_14_20_n_0;
  wire RAM_reg_448_511_14_20_n_1;
  wire RAM_reg_448_511_14_20_n_2;
  wire RAM_reg_448_511_14_20_n_3;
  wire RAM_reg_448_511_14_20_n_4;
  wire RAM_reg_448_511_14_20_n_5;
  wire RAM_reg_448_511_14_20_n_6;
  wire RAM_reg_448_511_21_27_n_0;
  wire RAM_reg_448_511_21_27_n_1;
  wire RAM_reg_448_511_21_27_n_2;
  wire RAM_reg_448_511_21_27_n_3;
  wire RAM_reg_448_511_21_27_n_4;
  wire RAM_reg_448_511_21_27_n_5;
  wire RAM_reg_448_511_21_27_n_6;
  wire RAM_reg_448_511_28_31_n_0;
  wire RAM_reg_448_511_28_31_n_1;
  wire RAM_reg_448_511_28_31_n_2;
  wire RAM_reg_448_511_28_31_n_3;
  wire RAM_reg_448_511_7_13_n_0;
  wire RAM_reg_448_511_7_13_n_1;
  wire RAM_reg_448_511_7_13_n_2;
  wire RAM_reg_448_511_7_13_n_3;
  wire RAM_reg_448_511_7_13_n_4;
  wire RAM_reg_448_511_7_13_n_5;
  wire RAM_reg_448_511_7_13_n_6;
  wire RAM_reg_64_127_0_6_n_0;
  wire RAM_reg_64_127_0_6_n_1;
  wire RAM_reg_64_127_0_6_n_2;
  wire RAM_reg_64_127_0_6_n_3;
  wire RAM_reg_64_127_0_6_n_4;
  wire RAM_reg_64_127_0_6_n_5;
  wire RAM_reg_64_127_0_6_n_6;
  wire RAM_reg_64_127_14_20_n_0;
  wire RAM_reg_64_127_14_20_n_1;
  wire RAM_reg_64_127_14_20_n_2;
  wire RAM_reg_64_127_14_20_n_3;
  wire RAM_reg_64_127_14_20_n_4;
  wire RAM_reg_64_127_14_20_n_5;
  wire RAM_reg_64_127_14_20_n_6;
  wire RAM_reg_64_127_21_27_n_0;
  wire RAM_reg_64_127_21_27_n_1;
  wire RAM_reg_64_127_21_27_n_2;
  wire RAM_reg_64_127_21_27_n_3;
  wire RAM_reg_64_127_21_27_n_4;
  wire RAM_reg_64_127_21_27_n_5;
  wire RAM_reg_64_127_21_27_n_6;
  wire RAM_reg_64_127_28_31_n_0;
  wire RAM_reg_64_127_28_31_n_1;
  wire RAM_reg_64_127_28_31_n_2;
  wire RAM_reg_64_127_28_31_n_3;
  wire RAM_reg_64_127_7_13_n_0;
  wire RAM_reg_64_127_7_13_n_1;
  wire RAM_reg_64_127_7_13_n_2;
  wire RAM_reg_64_127_7_13_n_3;
  wire RAM_reg_64_127_7_13_n_4;
  wire RAM_reg_64_127_7_13_n_5;
  wire RAM_reg_64_127_7_13_n_6;
  wire [31:0]din;
  wire [31:0]dout;
  wire [5:0]\gic0.gc0.count_d2_reg[5] ;
  wire \gic0.gc0.count_d2_reg[6] ;
  wire \gic0.gc0.count_d2_reg[6]_0 ;
  wire \gic0.gc0.count_d2_reg[7] ;
  wire \gic0.gc0.count_d2_reg[8] ;
  wire \gpr1.dout_i[0]_i_2_n_0 ;
  wire \gpr1.dout_i[0]_i_3_n_0 ;
  wire \gpr1.dout_i[10]_i_2_n_0 ;
  wire \gpr1.dout_i[10]_i_3_n_0 ;
  wire \gpr1.dout_i[11]_i_2_n_0 ;
  wire \gpr1.dout_i[11]_i_3_n_0 ;
  wire \gpr1.dout_i[12]_i_2_n_0 ;
  wire \gpr1.dout_i[12]_i_3_n_0 ;
  wire \gpr1.dout_i[13]_i_2_n_0 ;
  wire \gpr1.dout_i[13]_i_3_n_0 ;
  wire \gpr1.dout_i[14]_i_2_n_0 ;
  wire \gpr1.dout_i[14]_i_3_n_0 ;
  wire \gpr1.dout_i[15]_i_2_n_0 ;
  wire \gpr1.dout_i[15]_i_3_n_0 ;
  wire \gpr1.dout_i[16]_i_2_n_0 ;
  wire \gpr1.dout_i[16]_i_3_n_0 ;
  wire \gpr1.dout_i[17]_i_2_n_0 ;
  wire \gpr1.dout_i[17]_i_3_n_0 ;
  wire \gpr1.dout_i[18]_i_2_n_0 ;
  wire \gpr1.dout_i[18]_i_3_n_0 ;
  wire \gpr1.dout_i[19]_i_2_n_0 ;
  wire \gpr1.dout_i[19]_i_3_n_0 ;
  wire \gpr1.dout_i[1]_i_2_n_0 ;
  wire \gpr1.dout_i[1]_i_3_n_0 ;
  wire \gpr1.dout_i[20]_i_2_n_0 ;
  wire \gpr1.dout_i[20]_i_3_n_0 ;
  wire \gpr1.dout_i[21]_i_2_n_0 ;
  wire \gpr1.dout_i[21]_i_3_n_0 ;
  wire \gpr1.dout_i[22]_i_2_n_0 ;
  wire \gpr1.dout_i[22]_i_3_n_0 ;
  wire \gpr1.dout_i[23]_i_2_n_0 ;
  wire \gpr1.dout_i[23]_i_3_n_0 ;
  wire \gpr1.dout_i[24]_i_2_n_0 ;
  wire \gpr1.dout_i[24]_i_3_n_0 ;
  wire \gpr1.dout_i[25]_i_2_n_0 ;
  wire \gpr1.dout_i[25]_i_3_n_0 ;
  wire \gpr1.dout_i[26]_i_2_n_0 ;
  wire \gpr1.dout_i[26]_i_3_n_0 ;
  wire \gpr1.dout_i[27]_i_2_n_0 ;
  wire \gpr1.dout_i[27]_i_3_n_0 ;
  wire \gpr1.dout_i[28]_i_2_n_0 ;
  wire \gpr1.dout_i[28]_i_3_n_0 ;
  wire \gpr1.dout_i[29]_i_2_n_0 ;
  wire \gpr1.dout_i[29]_i_3_n_0 ;
  wire \gpr1.dout_i[2]_i_2_n_0 ;
  wire \gpr1.dout_i[2]_i_3_n_0 ;
  wire \gpr1.dout_i[30]_i_2_n_0 ;
  wire \gpr1.dout_i[30]_i_3_n_0 ;
  wire \gpr1.dout_i[31]_i_3_n_0 ;
  wire \gpr1.dout_i[31]_i_4_n_0 ;
  wire \gpr1.dout_i[3]_i_2_n_0 ;
  wire \gpr1.dout_i[3]_i_3_n_0 ;
  wire \gpr1.dout_i[4]_i_2_n_0 ;
  wire \gpr1.dout_i[4]_i_3_n_0 ;
  wire \gpr1.dout_i[5]_i_2_n_0 ;
  wire \gpr1.dout_i[5]_i_3_n_0 ;
  wire \gpr1.dout_i[6]_i_2_n_0 ;
  wire \gpr1.dout_i[6]_i_3_n_0 ;
  wire \gpr1.dout_i[7]_i_2_n_0 ;
  wire \gpr1.dout_i[7]_i_3_n_0 ;
  wire \gpr1.dout_i[8]_i_2_n_0 ;
  wire \gpr1.dout_i[8]_i_3_n_0 ;
  wire \gpr1.dout_i[9]_i_2_n_0 ;
  wire \gpr1.dout_i[9]_i_3_n_0 ;
  wire [31:0]p_0_out;
  wire ram_full_fb_i_reg;
  wire ram_full_fb_i_reg_0;
  wire ram_full_fb_i_reg_1;
  wire ram_full_fb_i_reg_2;
  wire rd_clk;
  wire wr_clk;
  wire NLW_RAM_reg_0_63_0_6_DOH_UNCONNECTED;
  wire NLW_RAM_reg_0_63_14_20_DOH_UNCONNECTED;
  wire NLW_RAM_reg_0_63_21_27_DOH_UNCONNECTED;
  wire NLW_RAM_reg_0_63_28_31_DOE_UNCONNECTED;
  wire NLW_RAM_reg_0_63_28_31_DOF_UNCONNECTED;
  wire NLW_RAM_reg_0_63_28_31_DOG_UNCONNECTED;
  wire NLW_RAM_reg_0_63_28_31_DOH_UNCONNECTED;
  wire NLW_RAM_reg_0_63_7_13_DOH_UNCONNECTED;
  wire NLW_RAM_reg_128_191_0_6_DOH_UNCONNECTED;
  wire NLW_RAM_reg_128_191_14_20_DOH_UNCONNECTED;
  wire NLW_RAM_reg_128_191_21_27_DOH_UNCONNECTED;
  wire NLW_RAM_reg_128_191_28_31_DOE_UNCONNECTED;
  wire NLW_RAM_reg_128_191_28_31_DOF_UNCONNECTED;
  wire NLW_RAM_reg_128_191_28_31_DOG_UNCONNECTED;
  wire NLW_RAM_reg_128_191_28_31_DOH_UNCONNECTED;
  wire NLW_RAM_reg_128_191_7_13_DOH_UNCONNECTED;
  wire NLW_RAM_reg_192_255_0_6_DOH_UNCONNECTED;
  wire NLW_RAM_reg_192_255_14_20_DOH_UNCONNECTED;
  wire NLW_RAM_reg_192_255_21_27_DOH_UNCONNECTED;
  wire NLW_RAM_reg_192_255_28_31_DOE_UNCONNECTED;
  wire NLW_RAM_reg_192_255_28_31_DOF_UNCONNECTED;
  wire NLW_RAM_reg_192_255_28_31_DOG_UNCONNECTED;
  wire NLW_RAM_reg_192_255_28_31_DOH_UNCONNECTED;
  wire NLW_RAM_reg_192_255_7_13_DOH_UNCONNECTED;
  wire NLW_RAM_reg_256_319_0_6_DOH_UNCONNECTED;
  wire NLW_RAM_reg_256_319_14_20_DOH_UNCONNECTED;
  wire NLW_RAM_reg_256_319_21_27_DOH_UNCONNECTED;
  wire NLW_RAM_reg_256_319_28_31_DOE_UNCONNECTED;
  wire NLW_RAM_reg_256_319_28_31_DOF_UNCONNECTED;
  wire NLW_RAM_reg_256_319_28_31_DOG_UNCONNECTED;
  wire NLW_RAM_reg_256_319_28_31_DOH_UNCONNECTED;
  wire NLW_RAM_reg_256_319_7_13_DOH_UNCONNECTED;
  wire NLW_RAM_reg_320_383_0_6_DOH_UNCONNECTED;
  wire NLW_RAM_reg_320_383_14_20_DOH_UNCONNECTED;
  wire NLW_RAM_reg_320_383_21_27_DOH_UNCONNECTED;
  wire NLW_RAM_reg_320_383_28_31_DOE_UNCONNECTED;
  wire NLW_RAM_reg_320_383_28_31_DOF_UNCONNECTED;
  wire NLW_RAM_reg_320_383_28_31_DOG_UNCONNECTED;
  wire NLW_RAM_reg_320_383_28_31_DOH_UNCONNECTED;
  wire NLW_RAM_reg_320_383_7_13_DOH_UNCONNECTED;
  wire NLW_RAM_reg_384_447_0_6_DOH_UNCONNECTED;
  wire NLW_RAM_reg_384_447_14_20_DOH_UNCONNECTED;
  wire NLW_RAM_reg_384_447_21_27_DOH_UNCONNECTED;
  wire NLW_RAM_reg_384_447_28_31_DOE_UNCONNECTED;
  wire NLW_RAM_reg_384_447_28_31_DOF_UNCONNECTED;
  wire NLW_RAM_reg_384_447_28_31_DOG_UNCONNECTED;
  wire NLW_RAM_reg_384_447_28_31_DOH_UNCONNECTED;
  wire NLW_RAM_reg_384_447_7_13_DOH_UNCONNECTED;
  wire NLW_RAM_reg_448_511_0_6_DOH_UNCONNECTED;
  wire NLW_RAM_reg_448_511_14_20_DOH_UNCONNECTED;
  wire NLW_RAM_reg_448_511_21_27_DOH_UNCONNECTED;
  wire NLW_RAM_reg_448_511_28_31_DOE_UNCONNECTED;
  wire NLW_RAM_reg_448_511_28_31_DOF_UNCONNECTED;
  wire NLW_RAM_reg_448_511_28_31_DOG_UNCONNECTED;
  wire NLW_RAM_reg_448_511_28_31_DOH_UNCONNECTED;
  wire NLW_RAM_reg_448_511_7_13_DOH_UNCONNECTED;
  wire NLW_RAM_reg_64_127_0_6_DOH_UNCONNECTED;
  wire NLW_RAM_reg_64_127_14_20_DOH_UNCONNECTED;
  wire NLW_RAM_reg_64_127_21_27_DOH_UNCONNECTED;
  wire NLW_RAM_reg_64_127_28_31_DOE_UNCONNECTED;
  wire NLW_RAM_reg_64_127_28_31_DOF_UNCONNECTED;
  wire NLW_RAM_reg_64_127_28_31_DOG_UNCONNECTED;
  wire NLW_RAM_reg_64_127_28_31_DOH_UNCONNECTED;
  wire NLW_RAM_reg_64_127_7_13_DOH_UNCONNECTED;

  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M8 RAM_reg_0_63_0_6
       (.ADDRA(Q[5:0]),
        .ADDRB(Q[5:0]),
        .ADDRC(Q[5:0]),
        .ADDRD(Q[5:0]),
        .ADDRE(Q[5:0]),
        .ADDRF(Q[5:0]),
        .ADDRG(Q[5:0]),
        .ADDRH(\gic0.gc0.count_d2_reg[5] ),
        .DIA(din[0]),
        .DIB(din[1]),
        .DIC(din[2]),
        .DID(din[3]),
        .DIE(din[4]),
        .DIF(din[5]),
        .DIG(din[6]),
        .DIH(1'b0),
        .DOA(RAM_reg_0_63_0_6_n_0),
        .DOB(RAM_reg_0_63_0_6_n_1),
        .DOC(RAM_reg_0_63_0_6_n_2),
        .DOD(RAM_reg_0_63_0_6_n_3),
        .DOE(RAM_reg_0_63_0_6_n_4),
        .DOF(RAM_reg_0_63_0_6_n_5),
        .DOG(RAM_reg_0_63_0_6_n_6),
        .DOH(NLW_RAM_reg_0_63_0_6_DOH_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(ram_full_fb_i_reg));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M8 RAM_reg_0_63_14_20
       (.ADDRA(Q[5:0]),
        .ADDRB(Q[5:0]),
        .ADDRC(Q[5:0]),
        .ADDRD(Q[5:0]),
        .ADDRE(Q[5:0]),
        .ADDRF(Q[5:0]),
        .ADDRG(Q[5:0]),
        .ADDRH(\gic0.gc0.count_d2_reg[5] ),
        .DIA(din[14]),
        .DIB(din[15]),
        .DIC(din[16]),
        .DID(din[17]),
        .DIE(din[18]),
        .DIF(din[19]),
        .DIG(din[20]),
        .DIH(1'b0),
        .DOA(RAM_reg_0_63_14_20_n_0),
        .DOB(RAM_reg_0_63_14_20_n_1),
        .DOC(RAM_reg_0_63_14_20_n_2),
        .DOD(RAM_reg_0_63_14_20_n_3),
        .DOE(RAM_reg_0_63_14_20_n_4),
        .DOF(RAM_reg_0_63_14_20_n_5),
        .DOG(RAM_reg_0_63_14_20_n_6),
        .DOH(NLW_RAM_reg_0_63_14_20_DOH_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(ram_full_fb_i_reg));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M8 RAM_reg_0_63_21_27
       (.ADDRA(ADDRG),
        .ADDRB(ADDRG),
        .ADDRC(ADDRG),
        .ADDRD(ADDRG),
        .ADDRE(ADDRG),
        .ADDRF(ADDRG),
        .ADDRG(ADDRG),
        .ADDRH(\gic0.gc0.count_d2_reg[5] ),
        .DIA(din[21]),
        .DIB(din[22]),
        .DIC(din[23]),
        .DID(din[24]),
        .DIE(din[25]),
        .DIF(din[26]),
        .DIG(din[27]),
        .DIH(1'b0),
        .DOA(RAM_reg_0_63_21_27_n_0),
        .DOB(RAM_reg_0_63_21_27_n_1),
        .DOC(RAM_reg_0_63_21_27_n_2),
        .DOD(RAM_reg_0_63_21_27_n_3),
        .DOE(RAM_reg_0_63_21_27_n_4),
        .DOF(RAM_reg_0_63_21_27_n_5),
        .DOG(RAM_reg_0_63_21_27_n_6),
        .DOH(NLW_RAM_reg_0_63_21_27_DOH_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(ram_full_fb_i_reg));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M8 RAM_reg_0_63_28_31
       (.ADDRA(ADDRG),
        .ADDRB(ADDRG),
        .ADDRC(ADDRG),
        .ADDRD(ADDRG),
        .ADDRE(ADDRG),
        .ADDRF(ADDRG),
        .ADDRG(ADDRG),
        .ADDRH(\gic0.gc0.count_d2_reg[5] ),
        .DIA(din[28]),
        .DIB(din[29]),
        .DIC(din[30]),
        .DID(din[31]),
        .DIE(1'b0),
        .DIF(1'b0),
        .DIG(1'b0),
        .DIH(1'b0),
        .DOA(RAM_reg_0_63_28_31_n_0),
        .DOB(RAM_reg_0_63_28_31_n_1),
        .DOC(RAM_reg_0_63_28_31_n_2),
        .DOD(RAM_reg_0_63_28_31_n_3),
        .DOE(NLW_RAM_reg_0_63_28_31_DOE_UNCONNECTED),
        .DOF(NLW_RAM_reg_0_63_28_31_DOF_UNCONNECTED),
        .DOG(NLW_RAM_reg_0_63_28_31_DOG_UNCONNECTED),
        .DOH(NLW_RAM_reg_0_63_28_31_DOH_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(ram_full_fb_i_reg));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M8 RAM_reg_0_63_7_13
       (.ADDRA(Q[5:0]),
        .ADDRB(Q[5:0]),
        .ADDRC(Q[5:0]),
        .ADDRD(Q[5:0]),
        .ADDRE(Q[5:0]),
        .ADDRF(Q[5:0]),
        .ADDRG(Q[5:0]),
        .ADDRH(\gic0.gc0.count_d2_reg[5] ),
        .DIA(din[7]),
        .DIB(din[8]),
        .DIC(din[9]),
        .DID(din[10]),
        .DIE(din[11]),
        .DIF(din[12]),
        .DIG(din[13]),
        .DIH(1'b0),
        .DOA(RAM_reg_0_63_7_13_n_0),
        .DOB(RAM_reg_0_63_7_13_n_1),
        .DOC(RAM_reg_0_63_7_13_n_2),
        .DOD(RAM_reg_0_63_7_13_n_3),
        .DOE(RAM_reg_0_63_7_13_n_4),
        .DOF(RAM_reg_0_63_7_13_n_5),
        .DOG(RAM_reg_0_63_7_13_n_6),
        .DOH(NLW_RAM_reg_0_63_7_13_DOH_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(ram_full_fb_i_reg));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M8 RAM_reg_128_191_0_6
       (.ADDRA(Q[5:0]),
        .ADDRB(Q[5:0]),
        .ADDRC(Q[5:0]),
        .ADDRD(Q[5:0]),
        .ADDRE(Q[5:0]),
        .ADDRF(Q[5:0]),
        .ADDRG(Q[5:0]),
        .ADDRH(\gic0.gc0.count_d2_reg[5] ),
        .DIA(din[0]),
        .DIB(din[1]),
        .DIC(din[2]),
        .DID(din[3]),
        .DIE(din[4]),
        .DIF(din[5]),
        .DIG(din[6]),
        .DIH(1'b0),
        .DOA(RAM_reg_128_191_0_6_n_0),
        .DOB(RAM_reg_128_191_0_6_n_1),
        .DOC(RAM_reg_128_191_0_6_n_2),
        .DOD(RAM_reg_128_191_0_6_n_3),
        .DOE(RAM_reg_128_191_0_6_n_4),
        .DOF(RAM_reg_128_191_0_6_n_5),
        .DOG(RAM_reg_128_191_0_6_n_6),
        .DOH(NLW_RAM_reg_128_191_0_6_DOH_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gic0.gc0.count_d2_reg[6] ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M8 RAM_reg_128_191_14_20
       (.ADDRA(Q[5:0]),
        .ADDRB(Q[5:0]),
        .ADDRC(Q[5:0]),
        .ADDRD(Q[5:0]),
        .ADDRE(Q[5:0]),
        .ADDRF(Q[5:0]),
        .ADDRG(Q[5:0]),
        .ADDRH(\gic0.gc0.count_d2_reg[5] ),
        .DIA(din[14]),
        .DIB(din[15]),
        .DIC(din[16]),
        .DID(din[17]),
        .DIE(din[18]),
        .DIF(din[19]),
        .DIG(din[20]),
        .DIH(1'b0),
        .DOA(RAM_reg_128_191_14_20_n_0),
        .DOB(RAM_reg_128_191_14_20_n_1),
        .DOC(RAM_reg_128_191_14_20_n_2),
        .DOD(RAM_reg_128_191_14_20_n_3),
        .DOE(RAM_reg_128_191_14_20_n_4),
        .DOF(RAM_reg_128_191_14_20_n_5),
        .DOG(RAM_reg_128_191_14_20_n_6),
        .DOH(NLW_RAM_reg_128_191_14_20_DOH_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gic0.gc0.count_d2_reg[6] ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M8 RAM_reg_128_191_21_27
       (.ADDRA(ADDRG),
        .ADDRB(ADDRG),
        .ADDRC(ADDRG),
        .ADDRD(ADDRG),
        .ADDRE(ADDRG),
        .ADDRF(ADDRG),
        .ADDRG(ADDRG),
        .ADDRH(\gic0.gc0.count_d2_reg[5] ),
        .DIA(din[21]),
        .DIB(din[22]),
        .DIC(din[23]),
        .DID(din[24]),
        .DIE(din[25]),
        .DIF(din[26]),
        .DIG(din[27]),
        .DIH(1'b0),
        .DOA(RAM_reg_128_191_21_27_n_0),
        .DOB(RAM_reg_128_191_21_27_n_1),
        .DOC(RAM_reg_128_191_21_27_n_2),
        .DOD(RAM_reg_128_191_21_27_n_3),
        .DOE(RAM_reg_128_191_21_27_n_4),
        .DOF(RAM_reg_128_191_21_27_n_5),
        .DOG(RAM_reg_128_191_21_27_n_6),
        .DOH(NLW_RAM_reg_128_191_21_27_DOH_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gic0.gc0.count_d2_reg[6] ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M8 RAM_reg_128_191_28_31
       (.ADDRA(ADDRG),
        .ADDRB(ADDRG),
        .ADDRC(ADDRG),
        .ADDRD(ADDRG),
        .ADDRE(ADDRG),
        .ADDRF(ADDRG),
        .ADDRG(ADDRG),
        .ADDRH(\gic0.gc0.count_d2_reg[5] ),
        .DIA(din[28]),
        .DIB(din[29]),
        .DIC(din[30]),
        .DID(din[31]),
        .DIE(1'b0),
        .DIF(1'b0),
        .DIG(1'b0),
        .DIH(1'b0),
        .DOA(RAM_reg_128_191_28_31_n_0),
        .DOB(RAM_reg_128_191_28_31_n_1),
        .DOC(RAM_reg_128_191_28_31_n_2),
        .DOD(RAM_reg_128_191_28_31_n_3),
        .DOE(NLW_RAM_reg_128_191_28_31_DOE_UNCONNECTED),
        .DOF(NLW_RAM_reg_128_191_28_31_DOF_UNCONNECTED),
        .DOG(NLW_RAM_reg_128_191_28_31_DOG_UNCONNECTED),
        .DOH(NLW_RAM_reg_128_191_28_31_DOH_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gic0.gc0.count_d2_reg[6] ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M8 RAM_reg_128_191_7_13
       (.ADDRA(Q[5:0]),
        .ADDRB(Q[5:0]),
        .ADDRC(Q[5:0]),
        .ADDRD(Q[5:0]),
        .ADDRE(Q[5:0]),
        .ADDRF(Q[5:0]),
        .ADDRG(Q[5:0]),
        .ADDRH(\gic0.gc0.count_d2_reg[5] ),
        .DIA(din[7]),
        .DIB(din[8]),
        .DIC(din[9]),
        .DID(din[10]),
        .DIE(din[11]),
        .DIF(din[12]),
        .DIG(din[13]),
        .DIH(1'b0),
        .DOA(RAM_reg_128_191_7_13_n_0),
        .DOB(RAM_reg_128_191_7_13_n_1),
        .DOC(RAM_reg_128_191_7_13_n_2),
        .DOD(RAM_reg_128_191_7_13_n_3),
        .DOE(RAM_reg_128_191_7_13_n_4),
        .DOF(RAM_reg_128_191_7_13_n_5),
        .DOG(RAM_reg_128_191_7_13_n_6),
        .DOH(NLW_RAM_reg_128_191_7_13_DOH_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gic0.gc0.count_d2_reg[6] ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M8 RAM_reg_192_255_0_6
       (.ADDRA(Q[5:0]),
        .ADDRB(Q[5:0]),
        .ADDRC(Q[5:0]),
        .ADDRD(Q[5:0]),
        .ADDRE(Q[5:0]),
        .ADDRF(Q[5:0]),
        .ADDRG(Q[5:0]),
        .ADDRH(\gic0.gc0.count_d2_reg[5] ),
        .DIA(din[0]),
        .DIB(din[1]),
        .DIC(din[2]),
        .DID(din[3]),
        .DIE(din[4]),
        .DIF(din[5]),
        .DIG(din[6]),
        .DIH(1'b0),
        .DOA(RAM_reg_192_255_0_6_n_0),
        .DOB(RAM_reg_192_255_0_6_n_1),
        .DOC(RAM_reg_192_255_0_6_n_2),
        .DOD(RAM_reg_192_255_0_6_n_3),
        .DOE(RAM_reg_192_255_0_6_n_4),
        .DOF(RAM_reg_192_255_0_6_n_5),
        .DOG(RAM_reg_192_255_0_6_n_6),
        .DOH(NLW_RAM_reg_192_255_0_6_DOH_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(ram_full_fb_i_reg_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M8 RAM_reg_192_255_14_20
       (.ADDRA(Q[5:0]),
        .ADDRB(Q[5:0]),
        .ADDRC(Q[5:0]),
        .ADDRD(Q[5:0]),
        .ADDRE(Q[5:0]),
        .ADDRF(Q[5:0]),
        .ADDRG(Q[5:0]),
        .ADDRH(\gic0.gc0.count_d2_reg[5] ),
        .DIA(din[14]),
        .DIB(din[15]),
        .DIC(din[16]),
        .DID(din[17]),
        .DIE(din[18]),
        .DIF(din[19]),
        .DIG(din[20]),
        .DIH(1'b0),
        .DOA(RAM_reg_192_255_14_20_n_0),
        .DOB(RAM_reg_192_255_14_20_n_1),
        .DOC(RAM_reg_192_255_14_20_n_2),
        .DOD(RAM_reg_192_255_14_20_n_3),
        .DOE(RAM_reg_192_255_14_20_n_4),
        .DOF(RAM_reg_192_255_14_20_n_5),
        .DOG(RAM_reg_192_255_14_20_n_6),
        .DOH(NLW_RAM_reg_192_255_14_20_DOH_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(ram_full_fb_i_reg_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M8 RAM_reg_192_255_21_27
       (.ADDRA(ADDRG),
        .ADDRB(ADDRG),
        .ADDRC(ADDRG),
        .ADDRD(ADDRG),
        .ADDRE(ADDRG),
        .ADDRF(ADDRG),
        .ADDRG(ADDRG),
        .ADDRH(\gic0.gc0.count_d2_reg[5] ),
        .DIA(din[21]),
        .DIB(din[22]),
        .DIC(din[23]),
        .DID(din[24]),
        .DIE(din[25]),
        .DIF(din[26]),
        .DIG(din[27]),
        .DIH(1'b0),
        .DOA(RAM_reg_192_255_21_27_n_0),
        .DOB(RAM_reg_192_255_21_27_n_1),
        .DOC(RAM_reg_192_255_21_27_n_2),
        .DOD(RAM_reg_192_255_21_27_n_3),
        .DOE(RAM_reg_192_255_21_27_n_4),
        .DOF(RAM_reg_192_255_21_27_n_5),
        .DOG(RAM_reg_192_255_21_27_n_6),
        .DOH(NLW_RAM_reg_192_255_21_27_DOH_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(ram_full_fb_i_reg_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M8 RAM_reg_192_255_28_31
       (.ADDRA(ADDRG),
        .ADDRB(ADDRG),
        .ADDRC(ADDRG),
        .ADDRD(ADDRG),
        .ADDRE(ADDRG),
        .ADDRF(ADDRG),
        .ADDRG(ADDRG),
        .ADDRH(\gic0.gc0.count_d2_reg[5] ),
        .DIA(din[28]),
        .DIB(din[29]),
        .DIC(din[30]),
        .DID(din[31]),
        .DIE(1'b0),
        .DIF(1'b0),
        .DIG(1'b0),
        .DIH(1'b0),
        .DOA(RAM_reg_192_255_28_31_n_0),
        .DOB(RAM_reg_192_255_28_31_n_1),
        .DOC(RAM_reg_192_255_28_31_n_2),
        .DOD(RAM_reg_192_255_28_31_n_3),
        .DOE(NLW_RAM_reg_192_255_28_31_DOE_UNCONNECTED),
        .DOF(NLW_RAM_reg_192_255_28_31_DOF_UNCONNECTED),
        .DOG(NLW_RAM_reg_192_255_28_31_DOG_UNCONNECTED),
        .DOH(NLW_RAM_reg_192_255_28_31_DOH_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(ram_full_fb_i_reg_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M8 RAM_reg_192_255_7_13
       (.ADDRA(Q[5:0]),
        .ADDRB(Q[5:0]),
        .ADDRC(Q[5:0]),
        .ADDRD(Q[5:0]),
        .ADDRE(Q[5:0]),
        .ADDRF(Q[5:0]),
        .ADDRG(Q[5:0]),
        .ADDRH(\gic0.gc0.count_d2_reg[5] ),
        .DIA(din[7]),
        .DIB(din[8]),
        .DIC(din[9]),
        .DID(din[10]),
        .DIE(din[11]),
        .DIF(din[12]),
        .DIG(din[13]),
        .DIH(1'b0),
        .DOA(RAM_reg_192_255_7_13_n_0),
        .DOB(RAM_reg_192_255_7_13_n_1),
        .DOC(RAM_reg_192_255_7_13_n_2),
        .DOD(RAM_reg_192_255_7_13_n_3),
        .DOE(RAM_reg_192_255_7_13_n_4),
        .DOF(RAM_reg_192_255_7_13_n_5),
        .DOG(RAM_reg_192_255_7_13_n_6),
        .DOH(NLW_RAM_reg_192_255_7_13_DOH_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(ram_full_fb_i_reg_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M8 RAM_reg_256_319_0_6
       (.ADDRA(Q[5:0]),
        .ADDRB(Q[5:0]),
        .ADDRC(Q[5:0]),
        .ADDRD(Q[5:0]),
        .ADDRE(Q[5:0]),
        .ADDRF(Q[5:0]),
        .ADDRG(Q[5:0]),
        .ADDRH(\gic0.gc0.count_d2_reg[5] ),
        .DIA(din[0]),
        .DIB(din[1]),
        .DIC(din[2]),
        .DID(din[3]),
        .DIE(din[4]),
        .DIF(din[5]),
        .DIG(din[6]),
        .DIH(1'b0),
        .DOA(RAM_reg_256_319_0_6_n_0),
        .DOB(RAM_reg_256_319_0_6_n_1),
        .DOC(RAM_reg_256_319_0_6_n_2),
        .DOD(RAM_reg_256_319_0_6_n_3),
        .DOE(RAM_reg_256_319_0_6_n_4),
        .DOF(RAM_reg_256_319_0_6_n_5),
        .DOG(RAM_reg_256_319_0_6_n_6),
        .DOH(NLW_RAM_reg_256_319_0_6_DOH_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gic0.gc0.count_d2_reg[6]_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M8 RAM_reg_256_319_14_20
       (.ADDRA(Q[5:0]),
        .ADDRB(Q[5:0]),
        .ADDRC(Q[5:0]),
        .ADDRD(Q[5:0]),
        .ADDRE(Q[5:0]),
        .ADDRF(Q[5:0]),
        .ADDRG(Q[5:0]),
        .ADDRH(\gic0.gc0.count_d2_reg[5] ),
        .DIA(din[14]),
        .DIB(din[15]),
        .DIC(din[16]),
        .DID(din[17]),
        .DIE(din[18]),
        .DIF(din[19]),
        .DIG(din[20]),
        .DIH(1'b0),
        .DOA(RAM_reg_256_319_14_20_n_0),
        .DOB(RAM_reg_256_319_14_20_n_1),
        .DOC(RAM_reg_256_319_14_20_n_2),
        .DOD(RAM_reg_256_319_14_20_n_3),
        .DOE(RAM_reg_256_319_14_20_n_4),
        .DOF(RAM_reg_256_319_14_20_n_5),
        .DOG(RAM_reg_256_319_14_20_n_6),
        .DOH(NLW_RAM_reg_256_319_14_20_DOH_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gic0.gc0.count_d2_reg[6]_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M8 RAM_reg_256_319_21_27
       (.ADDRA(ADDRG),
        .ADDRB(ADDRG),
        .ADDRC(ADDRG),
        .ADDRD(ADDRG),
        .ADDRE(ADDRG),
        .ADDRF(ADDRG),
        .ADDRG(ADDRG),
        .ADDRH(\gic0.gc0.count_d2_reg[5] ),
        .DIA(din[21]),
        .DIB(din[22]),
        .DIC(din[23]),
        .DID(din[24]),
        .DIE(din[25]),
        .DIF(din[26]),
        .DIG(din[27]),
        .DIH(1'b0),
        .DOA(RAM_reg_256_319_21_27_n_0),
        .DOB(RAM_reg_256_319_21_27_n_1),
        .DOC(RAM_reg_256_319_21_27_n_2),
        .DOD(RAM_reg_256_319_21_27_n_3),
        .DOE(RAM_reg_256_319_21_27_n_4),
        .DOF(RAM_reg_256_319_21_27_n_5),
        .DOG(RAM_reg_256_319_21_27_n_6),
        .DOH(NLW_RAM_reg_256_319_21_27_DOH_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gic0.gc0.count_d2_reg[6]_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M8 RAM_reg_256_319_28_31
       (.ADDRA(ADDRG),
        .ADDRB(ADDRG),
        .ADDRC(ADDRG),
        .ADDRD(ADDRG),
        .ADDRE(ADDRG),
        .ADDRF(ADDRG),
        .ADDRG(ADDRG),
        .ADDRH(\gic0.gc0.count_d2_reg[5] ),
        .DIA(din[28]),
        .DIB(din[29]),
        .DIC(din[30]),
        .DID(din[31]),
        .DIE(1'b0),
        .DIF(1'b0),
        .DIG(1'b0),
        .DIH(1'b0),
        .DOA(RAM_reg_256_319_28_31_n_0),
        .DOB(RAM_reg_256_319_28_31_n_1),
        .DOC(RAM_reg_256_319_28_31_n_2),
        .DOD(RAM_reg_256_319_28_31_n_3),
        .DOE(NLW_RAM_reg_256_319_28_31_DOE_UNCONNECTED),
        .DOF(NLW_RAM_reg_256_319_28_31_DOF_UNCONNECTED),
        .DOG(NLW_RAM_reg_256_319_28_31_DOG_UNCONNECTED),
        .DOH(NLW_RAM_reg_256_319_28_31_DOH_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gic0.gc0.count_d2_reg[6]_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M8 RAM_reg_256_319_7_13
       (.ADDRA(Q[5:0]),
        .ADDRB(Q[5:0]),
        .ADDRC(Q[5:0]),
        .ADDRD(Q[5:0]),
        .ADDRE(Q[5:0]),
        .ADDRF(Q[5:0]),
        .ADDRG(Q[5:0]),
        .ADDRH(\gic0.gc0.count_d2_reg[5] ),
        .DIA(din[7]),
        .DIB(din[8]),
        .DIC(din[9]),
        .DID(din[10]),
        .DIE(din[11]),
        .DIF(din[12]),
        .DIG(din[13]),
        .DIH(1'b0),
        .DOA(RAM_reg_256_319_7_13_n_0),
        .DOB(RAM_reg_256_319_7_13_n_1),
        .DOC(RAM_reg_256_319_7_13_n_2),
        .DOD(RAM_reg_256_319_7_13_n_3),
        .DOE(RAM_reg_256_319_7_13_n_4),
        .DOF(RAM_reg_256_319_7_13_n_5),
        .DOG(RAM_reg_256_319_7_13_n_6),
        .DOH(NLW_RAM_reg_256_319_7_13_DOH_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gic0.gc0.count_d2_reg[6]_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M8 RAM_reg_320_383_0_6
       (.ADDRA(Q[5:0]),
        .ADDRB(Q[5:0]),
        .ADDRC(Q[5:0]),
        .ADDRD(Q[5:0]),
        .ADDRE(Q[5:0]),
        .ADDRF(Q[5:0]),
        .ADDRG(Q[5:0]),
        .ADDRH(\gic0.gc0.count_d2_reg[5] ),
        .DIA(din[0]),
        .DIB(din[1]),
        .DIC(din[2]),
        .DID(din[3]),
        .DIE(din[4]),
        .DIF(din[5]),
        .DIG(din[6]),
        .DIH(1'b0),
        .DOA(RAM_reg_320_383_0_6_n_0),
        .DOB(RAM_reg_320_383_0_6_n_1),
        .DOC(RAM_reg_320_383_0_6_n_2),
        .DOD(RAM_reg_320_383_0_6_n_3),
        .DOE(RAM_reg_320_383_0_6_n_4),
        .DOF(RAM_reg_320_383_0_6_n_5),
        .DOG(RAM_reg_320_383_0_6_n_6),
        .DOH(NLW_RAM_reg_320_383_0_6_DOH_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(ram_full_fb_i_reg_1));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M8 RAM_reg_320_383_14_20
       (.ADDRA(Q[5:0]),
        .ADDRB(Q[5:0]),
        .ADDRC(Q[5:0]),
        .ADDRD(Q[5:0]),
        .ADDRE(Q[5:0]),
        .ADDRF(Q[5:0]),
        .ADDRG(Q[5:0]),
        .ADDRH(\gic0.gc0.count_d2_reg[5] ),
        .DIA(din[14]),
        .DIB(din[15]),
        .DIC(din[16]),
        .DID(din[17]),
        .DIE(din[18]),
        .DIF(din[19]),
        .DIG(din[20]),
        .DIH(1'b0),
        .DOA(RAM_reg_320_383_14_20_n_0),
        .DOB(RAM_reg_320_383_14_20_n_1),
        .DOC(RAM_reg_320_383_14_20_n_2),
        .DOD(RAM_reg_320_383_14_20_n_3),
        .DOE(RAM_reg_320_383_14_20_n_4),
        .DOF(RAM_reg_320_383_14_20_n_5),
        .DOG(RAM_reg_320_383_14_20_n_6),
        .DOH(NLW_RAM_reg_320_383_14_20_DOH_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(ram_full_fb_i_reg_1));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M8 RAM_reg_320_383_21_27
       (.ADDRA(ADDRG),
        .ADDRB(ADDRG),
        .ADDRC(ADDRG),
        .ADDRD(ADDRG),
        .ADDRE(ADDRG),
        .ADDRF(ADDRG),
        .ADDRG(ADDRG),
        .ADDRH(\gic0.gc0.count_d2_reg[5] ),
        .DIA(din[21]),
        .DIB(din[22]),
        .DIC(din[23]),
        .DID(din[24]),
        .DIE(din[25]),
        .DIF(din[26]),
        .DIG(din[27]),
        .DIH(1'b0),
        .DOA(RAM_reg_320_383_21_27_n_0),
        .DOB(RAM_reg_320_383_21_27_n_1),
        .DOC(RAM_reg_320_383_21_27_n_2),
        .DOD(RAM_reg_320_383_21_27_n_3),
        .DOE(RAM_reg_320_383_21_27_n_4),
        .DOF(RAM_reg_320_383_21_27_n_5),
        .DOG(RAM_reg_320_383_21_27_n_6),
        .DOH(NLW_RAM_reg_320_383_21_27_DOH_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(ram_full_fb_i_reg_1));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M8 RAM_reg_320_383_28_31
       (.ADDRA(ADDRG),
        .ADDRB(ADDRG),
        .ADDRC(ADDRG),
        .ADDRD(ADDRG),
        .ADDRE(ADDRG),
        .ADDRF(ADDRG),
        .ADDRG(ADDRG),
        .ADDRH(\gic0.gc0.count_d2_reg[5] ),
        .DIA(din[28]),
        .DIB(din[29]),
        .DIC(din[30]),
        .DID(din[31]),
        .DIE(1'b0),
        .DIF(1'b0),
        .DIG(1'b0),
        .DIH(1'b0),
        .DOA(RAM_reg_320_383_28_31_n_0),
        .DOB(RAM_reg_320_383_28_31_n_1),
        .DOC(RAM_reg_320_383_28_31_n_2),
        .DOD(RAM_reg_320_383_28_31_n_3),
        .DOE(NLW_RAM_reg_320_383_28_31_DOE_UNCONNECTED),
        .DOF(NLW_RAM_reg_320_383_28_31_DOF_UNCONNECTED),
        .DOG(NLW_RAM_reg_320_383_28_31_DOG_UNCONNECTED),
        .DOH(NLW_RAM_reg_320_383_28_31_DOH_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(ram_full_fb_i_reg_1));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M8 RAM_reg_320_383_7_13
       (.ADDRA(Q[5:0]),
        .ADDRB(Q[5:0]),
        .ADDRC(Q[5:0]),
        .ADDRD(Q[5:0]),
        .ADDRE(Q[5:0]),
        .ADDRF(Q[5:0]),
        .ADDRG(Q[5:0]),
        .ADDRH(\gic0.gc0.count_d2_reg[5] ),
        .DIA(din[7]),
        .DIB(din[8]),
        .DIC(din[9]),
        .DID(din[10]),
        .DIE(din[11]),
        .DIF(din[12]),
        .DIG(din[13]),
        .DIH(1'b0),
        .DOA(RAM_reg_320_383_7_13_n_0),
        .DOB(RAM_reg_320_383_7_13_n_1),
        .DOC(RAM_reg_320_383_7_13_n_2),
        .DOD(RAM_reg_320_383_7_13_n_3),
        .DOE(RAM_reg_320_383_7_13_n_4),
        .DOF(RAM_reg_320_383_7_13_n_5),
        .DOG(RAM_reg_320_383_7_13_n_6),
        .DOH(NLW_RAM_reg_320_383_7_13_DOH_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(ram_full_fb_i_reg_1));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M8 RAM_reg_384_447_0_6
       (.ADDRA(Q[5:0]),
        .ADDRB(Q[5:0]),
        .ADDRC(Q[5:0]),
        .ADDRD(Q[5:0]),
        .ADDRE(Q[5:0]),
        .ADDRF(Q[5:0]),
        .ADDRG(Q[5:0]),
        .ADDRH(\gic0.gc0.count_d2_reg[5] ),
        .DIA(din[0]),
        .DIB(din[1]),
        .DIC(din[2]),
        .DID(din[3]),
        .DIE(din[4]),
        .DIF(din[5]),
        .DIG(din[6]),
        .DIH(1'b0),
        .DOA(RAM_reg_384_447_0_6_n_0),
        .DOB(RAM_reg_384_447_0_6_n_1),
        .DOC(RAM_reg_384_447_0_6_n_2),
        .DOD(RAM_reg_384_447_0_6_n_3),
        .DOE(RAM_reg_384_447_0_6_n_4),
        .DOF(RAM_reg_384_447_0_6_n_5),
        .DOG(RAM_reg_384_447_0_6_n_6),
        .DOH(NLW_RAM_reg_384_447_0_6_DOH_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(ram_full_fb_i_reg_2));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M8 RAM_reg_384_447_14_20
       (.ADDRA(Q[5:0]),
        .ADDRB(Q[5:0]),
        .ADDRC(Q[5:0]),
        .ADDRD(Q[5:0]),
        .ADDRE(Q[5:0]),
        .ADDRF(Q[5:0]),
        .ADDRG(Q[5:0]),
        .ADDRH(\gic0.gc0.count_d2_reg[5] ),
        .DIA(din[14]),
        .DIB(din[15]),
        .DIC(din[16]),
        .DID(din[17]),
        .DIE(din[18]),
        .DIF(din[19]),
        .DIG(din[20]),
        .DIH(1'b0),
        .DOA(RAM_reg_384_447_14_20_n_0),
        .DOB(RAM_reg_384_447_14_20_n_1),
        .DOC(RAM_reg_384_447_14_20_n_2),
        .DOD(RAM_reg_384_447_14_20_n_3),
        .DOE(RAM_reg_384_447_14_20_n_4),
        .DOF(RAM_reg_384_447_14_20_n_5),
        .DOG(RAM_reg_384_447_14_20_n_6),
        .DOH(NLW_RAM_reg_384_447_14_20_DOH_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(ram_full_fb_i_reg_2));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M8 RAM_reg_384_447_21_27
       (.ADDRA(ADDRG),
        .ADDRB(ADDRG),
        .ADDRC(ADDRG),
        .ADDRD(ADDRG),
        .ADDRE(ADDRG),
        .ADDRF(ADDRG),
        .ADDRG(ADDRG),
        .ADDRH(\gic0.gc0.count_d2_reg[5] ),
        .DIA(din[21]),
        .DIB(din[22]),
        .DIC(din[23]),
        .DID(din[24]),
        .DIE(din[25]),
        .DIF(din[26]),
        .DIG(din[27]),
        .DIH(1'b0),
        .DOA(RAM_reg_384_447_21_27_n_0),
        .DOB(RAM_reg_384_447_21_27_n_1),
        .DOC(RAM_reg_384_447_21_27_n_2),
        .DOD(RAM_reg_384_447_21_27_n_3),
        .DOE(RAM_reg_384_447_21_27_n_4),
        .DOF(RAM_reg_384_447_21_27_n_5),
        .DOG(RAM_reg_384_447_21_27_n_6),
        .DOH(NLW_RAM_reg_384_447_21_27_DOH_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(ram_full_fb_i_reg_2));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M8 RAM_reg_384_447_28_31
       (.ADDRA(ADDRG),
        .ADDRB(ADDRG),
        .ADDRC(ADDRG),
        .ADDRD(ADDRG),
        .ADDRE(ADDRG),
        .ADDRF(ADDRG),
        .ADDRG(ADDRG),
        .ADDRH(\gic0.gc0.count_d2_reg[5] ),
        .DIA(din[28]),
        .DIB(din[29]),
        .DIC(din[30]),
        .DID(din[31]),
        .DIE(1'b0),
        .DIF(1'b0),
        .DIG(1'b0),
        .DIH(1'b0),
        .DOA(RAM_reg_384_447_28_31_n_0),
        .DOB(RAM_reg_384_447_28_31_n_1),
        .DOC(RAM_reg_384_447_28_31_n_2),
        .DOD(RAM_reg_384_447_28_31_n_3),
        .DOE(NLW_RAM_reg_384_447_28_31_DOE_UNCONNECTED),
        .DOF(NLW_RAM_reg_384_447_28_31_DOF_UNCONNECTED),
        .DOG(NLW_RAM_reg_384_447_28_31_DOG_UNCONNECTED),
        .DOH(NLW_RAM_reg_384_447_28_31_DOH_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(ram_full_fb_i_reg_2));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M8 RAM_reg_384_447_7_13
       (.ADDRA(Q[5:0]),
        .ADDRB(Q[5:0]),
        .ADDRC(Q[5:0]),
        .ADDRD(Q[5:0]),
        .ADDRE(Q[5:0]),
        .ADDRF(Q[5:0]),
        .ADDRG(Q[5:0]),
        .ADDRH(\gic0.gc0.count_d2_reg[5] ),
        .DIA(din[7]),
        .DIB(din[8]),
        .DIC(din[9]),
        .DID(din[10]),
        .DIE(din[11]),
        .DIF(din[12]),
        .DIG(din[13]),
        .DIH(1'b0),
        .DOA(RAM_reg_384_447_7_13_n_0),
        .DOB(RAM_reg_384_447_7_13_n_1),
        .DOC(RAM_reg_384_447_7_13_n_2),
        .DOD(RAM_reg_384_447_7_13_n_3),
        .DOE(RAM_reg_384_447_7_13_n_4),
        .DOF(RAM_reg_384_447_7_13_n_5),
        .DOG(RAM_reg_384_447_7_13_n_6),
        .DOH(NLW_RAM_reg_384_447_7_13_DOH_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(ram_full_fb_i_reg_2));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M8 RAM_reg_448_511_0_6
       (.ADDRA(Q[5:0]),
        .ADDRB(Q[5:0]),
        .ADDRC(Q[5:0]),
        .ADDRD(Q[5:0]),
        .ADDRE(Q[5:0]),
        .ADDRF(Q[5:0]),
        .ADDRG(Q[5:0]),
        .ADDRH(\gic0.gc0.count_d2_reg[5] ),
        .DIA(din[0]),
        .DIB(din[1]),
        .DIC(din[2]),
        .DID(din[3]),
        .DIE(din[4]),
        .DIF(din[5]),
        .DIG(din[6]),
        .DIH(1'b0),
        .DOA(RAM_reg_448_511_0_6_n_0),
        .DOB(RAM_reg_448_511_0_6_n_1),
        .DOC(RAM_reg_448_511_0_6_n_2),
        .DOD(RAM_reg_448_511_0_6_n_3),
        .DOE(RAM_reg_448_511_0_6_n_4),
        .DOF(RAM_reg_448_511_0_6_n_5),
        .DOG(RAM_reg_448_511_0_6_n_6),
        .DOH(NLW_RAM_reg_448_511_0_6_DOH_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gic0.gc0.count_d2_reg[8] ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M8 RAM_reg_448_511_14_20
       (.ADDRA(Q[5:0]),
        .ADDRB(Q[5:0]),
        .ADDRC(Q[5:0]),
        .ADDRD(Q[5:0]),
        .ADDRE(Q[5:0]),
        .ADDRF(Q[5:0]),
        .ADDRG(Q[5:0]),
        .ADDRH(\gic0.gc0.count_d2_reg[5] ),
        .DIA(din[14]),
        .DIB(din[15]),
        .DIC(din[16]),
        .DID(din[17]),
        .DIE(din[18]),
        .DIF(din[19]),
        .DIG(din[20]),
        .DIH(1'b0),
        .DOA(RAM_reg_448_511_14_20_n_0),
        .DOB(RAM_reg_448_511_14_20_n_1),
        .DOC(RAM_reg_448_511_14_20_n_2),
        .DOD(RAM_reg_448_511_14_20_n_3),
        .DOE(RAM_reg_448_511_14_20_n_4),
        .DOF(RAM_reg_448_511_14_20_n_5),
        .DOG(RAM_reg_448_511_14_20_n_6),
        .DOH(NLW_RAM_reg_448_511_14_20_DOH_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gic0.gc0.count_d2_reg[8] ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M8 RAM_reg_448_511_21_27
       (.ADDRA(ADDRG),
        .ADDRB(ADDRG),
        .ADDRC(ADDRG),
        .ADDRD(ADDRG),
        .ADDRE(ADDRG),
        .ADDRF(ADDRG),
        .ADDRG(ADDRG),
        .ADDRH(\gic0.gc0.count_d2_reg[5] ),
        .DIA(din[21]),
        .DIB(din[22]),
        .DIC(din[23]),
        .DID(din[24]),
        .DIE(din[25]),
        .DIF(din[26]),
        .DIG(din[27]),
        .DIH(1'b0),
        .DOA(RAM_reg_448_511_21_27_n_0),
        .DOB(RAM_reg_448_511_21_27_n_1),
        .DOC(RAM_reg_448_511_21_27_n_2),
        .DOD(RAM_reg_448_511_21_27_n_3),
        .DOE(RAM_reg_448_511_21_27_n_4),
        .DOF(RAM_reg_448_511_21_27_n_5),
        .DOG(RAM_reg_448_511_21_27_n_6),
        .DOH(NLW_RAM_reg_448_511_21_27_DOH_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gic0.gc0.count_d2_reg[8] ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M8 RAM_reg_448_511_28_31
       (.ADDRA(ADDRG),
        .ADDRB(ADDRG),
        .ADDRC(ADDRG),
        .ADDRD(ADDRG),
        .ADDRE(ADDRG),
        .ADDRF(ADDRG),
        .ADDRG(ADDRG),
        .ADDRH(\gic0.gc0.count_d2_reg[5] ),
        .DIA(din[28]),
        .DIB(din[29]),
        .DIC(din[30]),
        .DID(din[31]),
        .DIE(1'b0),
        .DIF(1'b0),
        .DIG(1'b0),
        .DIH(1'b0),
        .DOA(RAM_reg_448_511_28_31_n_0),
        .DOB(RAM_reg_448_511_28_31_n_1),
        .DOC(RAM_reg_448_511_28_31_n_2),
        .DOD(RAM_reg_448_511_28_31_n_3),
        .DOE(NLW_RAM_reg_448_511_28_31_DOE_UNCONNECTED),
        .DOF(NLW_RAM_reg_448_511_28_31_DOF_UNCONNECTED),
        .DOG(NLW_RAM_reg_448_511_28_31_DOG_UNCONNECTED),
        .DOH(NLW_RAM_reg_448_511_28_31_DOH_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gic0.gc0.count_d2_reg[8] ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M8 RAM_reg_448_511_7_13
       (.ADDRA(Q[5:0]),
        .ADDRB(Q[5:0]),
        .ADDRC(Q[5:0]),
        .ADDRD(Q[5:0]),
        .ADDRE(Q[5:0]),
        .ADDRF(Q[5:0]),
        .ADDRG(Q[5:0]),
        .ADDRH(\gic0.gc0.count_d2_reg[5] ),
        .DIA(din[7]),
        .DIB(din[8]),
        .DIC(din[9]),
        .DID(din[10]),
        .DIE(din[11]),
        .DIF(din[12]),
        .DIG(din[13]),
        .DIH(1'b0),
        .DOA(RAM_reg_448_511_7_13_n_0),
        .DOB(RAM_reg_448_511_7_13_n_1),
        .DOC(RAM_reg_448_511_7_13_n_2),
        .DOD(RAM_reg_448_511_7_13_n_3),
        .DOE(RAM_reg_448_511_7_13_n_4),
        .DOF(RAM_reg_448_511_7_13_n_5),
        .DOG(RAM_reg_448_511_7_13_n_6),
        .DOH(NLW_RAM_reg_448_511_7_13_DOH_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gic0.gc0.count_d2_reg[8] ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M8 RAM_reg_64_127_0_6
       (.ADDRA(Q[5:0]),
        .ADDRB(Q[5:0]),
        .ADDRC(Q[5:0]),
        .ADDRD(Q[5:0]),
        .ADDRE(Q[5:0]),
        .ADDRF(Q[5:0]),
        .ADDRG(Q[5:0]),
        .ADDRH(\gic0.gc0.count_d2_reg[5] ),
        .DIA(din[0]),
        .DIB(din[1]),
        .DIC(din[2]),
        .DID(din[3]),
        .DIE(din[4]),
        .DIF(din[5]),
        .DIG(din[6]),
        .DIH(1'b0),
        .DOA(RAM_reg_64_127_0_6_n_0),
        .DOB(RAM_reg_64_127_0_6_n_1),
        .DOC(RAM_reg_64_127_0_6_n_2),
        .DOD(RAM_reg_64_127_0_6_n_3),
        .DOE(RAM_reg_64_127_0_6_n_4),
        .DOF(RAM_reg_64_127_0_6_n_5),
        .DOG(RAM_reg_64_127_0_6_n_6),
        .DOH(NLW_RAM_reg_64_127_0_6_DOH_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gic0.gc0.count_d2_reg[7] ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M8 RAM_reg_64_127_14_20
       (.ADDRA(Q[5:0]),
        .ADDRB(Q[5:0]),
        .ADDRC(Q[5:0]),
        .ADDRD(Q[5:0]),
        .ADDRE(Q[5:0]),
        .ADDRF(Q[5:0]),
        .ADDRG(Q[5:0]),
        .ADDRH(\gic0.gc0.count_d2_reg[5] ),
        .DIA(din[14]),
        .DIB(din[15]),
        .DIC(din[16]),
        .DID(din[17]),
        .DIE(din[18]),
        .DIF(din[19]),
        .DIG(din[20]),
        .DIH(1'b0),
        .DOA(RAM_reg_64_127_14_20_n_0),
        .DOB(RAM_reg_64_127_14_20_n_1),
        .DOC(RAM_reg_64_127_14_20_n_2),
        .DOD(RAM_reg_64_127_14_20_n_3),
        .DOE(RAM_reg_64_127_14_20_n_4),
        .DOF(RAM_reg_64_127_14_20_n_5),
        .DOG(RAM_reg_64_127_14_20_n_6),
        .DOH(NLW_RAM_reg_64_127_14_20_DOH_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gic0.gc0.count_d2_reg[7] ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M8 RAM_reg_64_127_21_27
       (.ADDRA(ADDRG),
        .ADDRB(ADDRG),
        .ADDRC(ADDRG),
        .ADDRD(ADDRG),
        .ADDRE(ADDRG),
        .ADDRF(ADDRG),
        .ADDRG(ADDRG),
        .ADDRH(\gic0.gc0.count_d2_reg[5] ),
        .DIA(din[21]),
        .DIB(din[22]),
        .DIC(din[23]),
        .DID(din[24]),
        .DIE(din[25]),
        .DIF(din[26]),
        .DIG(din[27]),
        .DIH(1'b0),
        .DOA(RAM_reg_64_127_21_27_n_0),
        .DOB(RAM_reg_64_127_21_27_n_1),
        .DOC(RAM_reg_64_127_21_27_n_2),
        .DOD(RAM_reg_64_127_21_27_n_3),
        .DOE(RAM_reg_64_127_21_27_n_4),
        .DOF(RAM_reg_64_127_21_27_n_5),
        .DOG(RAM_reg_64_127_21_27_n_6),
        .DOH(NLW_RAM_reg_64_127_21_27_DOH_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gic0.gc0.count_d2_reg[7] ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M8 RAM_reg_64_127_28_31
       (.ADDRA(ADDRG),
        .ADDRB(ADDRG),
        .ADDRC(ADDRG),
        .ADDRD(ADDRG),
        .ADDRE(ADDRG),
        .ADDRF(ADDRG),
        .ADDRG(ADDRG),
        .ADDRH(\gic0.gc0.count_d2_reg[5] ),
        .DIA(din[28]),
        .DIB(din[29]),
        .DIC(din[30]),
        .DID(din[31]),
        .DIE(1'b0),
        .DIF(1'b0),
        .DIG(1'b0),
        .DIH(1'b0),
        .DOA(RAM_reg_64_127_28_31_n_0),
        .DOB(RAM_reg_64_127_28_31_n_1),
        .DOC(RAM_reg_64_127_28_31_n_2),
        .DOD(RAM_reg_64_127_28_31_n_3),
        .DOE(NLW_RAM_reg_64_127_28_31_DOE_UNCONNECTED),
        .DOF(NLW_RAM_reg_64_127_28_31_DOF_UNCONNECTED),
        .DOG(NLW_RAM_reg_64_127_28_31_DOG_UNCONNECTED),
        .DOH(NLW_RAM_reg_64_127_28_31_DOH_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gic0.gc0.count_d2_reg[7] ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M8 RAM_reg_64_127_7_13
       (.ADDRA(Q[5:0]),
        .ADDRB(Q[5:0]),
        .ADDRC(Q[5:0]),
        .ADDRD(Q[5:0]),
        .ADDRE(Q[5:0]),
        .ADDRF(Q[5:0]),
        .ADDRG(Q[5:0]),
        .ADDRH(\gic0.gc0.count_d2_reg[5] ),
        .DIA(din[7]),
        .DIB(din[8]),
        .DIC(din[9]),
        .DID(din[10]),
        .DIE(din[11]),
        .DIF(din[12]),
        .DIG(din[13]),
        .DIH(1'b0),
        .DOA(RAM_reg_64_127_7_13_n_0),
        .DOB(RAM_reg_64_127_7_13_n_1),
        .DOC(RAM_reg_64_127_7_13_n_2),
        .DOD(RAM_reg_64_127_7_13_n_3),
        .DOE(RAM_reg_64_127_7_13_n_4),
        .DOF(RAM_reg_64_127_7_13_n_5),
        .DOG(RAM_reg_64_127_7_13_n_6),
        .DOH(NLW_RAM_reg_64_127_7_13_DOH_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gic0.gc0.count_d2_reg[7] ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[0]_i_2 
       (.I0(RAM_reg_192_255_0_6_n_0),
        .I1(RAM_reg_128_191_0_6_n_0),
        .I2(Q[7]),
        .I3(RAM_reg_64_127_0_6_n_0),
        .I4(Q[6]),
        .I5(RAM_reg_0_63_0_6_n_0),
        .O(\gpr1.dout_i[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[0]_i_3 
       (.I0(RAM_reg_448_511_0_6_n_0),
        .I1(RAM_reg_384_447_0_6_n_0),
        .I2(Q[7]),
        .I3(RAM_reg_320_383_0_6_n_0),
        .I4(Q[6]),
        .I5(RAM_reg_256_319_0_6_n_0),
        .O(\gpr1.dout_i[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[10]_i_2 
       (.I0(RAM_reg_192_255_7_13_n_3),
        .I1(RAM_reg_128_191_7_13_n_3),
        .I2(Q[7]),
        .I3(RAM_reg_64_127_7_13_n_3),
        .I4(Q[6]),
        .I5(RAM_reg_0_63_7_13_n_3),
        .O(\gpr1.dout_i[10]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[10]_i_3 
       (.I0(RAM_reg_448_511_7_13_n_3),
        .I1(RAM_reg_384_447_7_13_n_3),
        .I2(Q[7]),
        .I3(RAM_reg_320_383_7_13_n_3),
        .I4(Q[6]),
        .I5(RAM_reg_256_319_7_13_n_3),
        .O(\gpr1.dout_i[10]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[11]_i_2 
       (.I0(RAM_reg_192_255_7_13_n_4),
        .I1(RAM_reg_128_191_7_13_n_4),
        .I2(Q[7]),
        .I3(RAM_reg_64_127_7_13_n_4),
        .I4(Q[6]),
        .I5(RAM_reg_0_63_7_13_n_4),
        .O(\gpr1.dout_i[11]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[11]_i_3 
       (.I0(RAM_reg_448_511_7_13_n_4),
        .I1(RAM_reg_384_447_7_13_n_4),
        .I2(Q[7]),
        .I3(RAM_reg_320_383_7_13_n_4),
        .I4(Q[6]),
        .I5(RAM_reg_256_319_7_13_n_4),
        .O(\gpr1.dout_i[11]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[12]_i_2 
       (.I0(RAM_reg_192_255_7_13_n_5),
        .I1(RAM_reg_128_191_7_13_n_5),
        .I2(Q[7]),
        .I3(RAM_reg_64_127_7_13_n_5),
        .I4(Q[6]),
        .I5(RAM_reg_0_63_7_13_n_5),
        .O(\gpr1.dout_i[12]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[12]_i_3 
       (.I0(RAM_reg_448_511_7_13_n_5),
        .I1(RAM_reg_384_447_7_13_n_5),
        .I2(Q[7]),
        .I3(RAM_reg_320_383_7_13_n_5),
        .I4(Q[6]),
        .I5(RAM_reg_256_319_7_13_n_5),
        .O(\gpr1.dout_i[12]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[13]_i_2 
       (.I0(RAM_reg_192_255_7_13_n_6),
        .I1(RAM_reg_128_191_7_13_n_6),
        .I2(Q[7]),
        .I3(RAM_reg_64_127_7_13_n_6),
        .I4(Q[6]),
        .I5(RAM_reg_0_63_7_13_n_6),
        .O(\gpr1.dout_i[13]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[13]_i_3 
       (.I0(RAM_reg_448_511_7_13_n_6),
        .I1(RAM_reg_384_447_7_13_n_6),
        .I2(Q[7]),
        .I3(RAM_reg_320_383_7_13_n_6),
        .I4(Q[6]),
        .I5(RAM_reg_256_319_7_13_n_6),
        .O(\gpr1.dout_i[13]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[14]_i_2 
       (.I0(RAM_reg_192_255_14_20_n_0),
        .I1(RAM_reg_128_191_14_20_n_0),
        .I2(Q[7]),
        .I3(RAM_reg_64_127_14_20_n_0),
        .I4(Q[6]),
        .I5(RAM_reg_0_63_14_20_n_0),
        .O(\gpr1.dout_i[14]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[14]_i_3 
       (.I0(RAM_reg_448_511_14_20_n_0),
        .I1(RAM_reg_384_447_14_20_n_0),
        .I2(Q[7]),
        .I3(RAM_reg_320_383_14_20_n_0),
        .I4(Q[6]),
        .I5(RAM_reg_256_319_14_20_n_0),
        .O(\gpr1.dout_i[14]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[15]_i_2 
       (.I0(RAM_reg_192_255_14_20_n_1),
        .I1(RAM_reg_128_191_14_20_n_1),
        .I2(Q[7]),
        .I3(RAM_reg_64_127_14_20_n_1),
        .I4(Q[6]),
        .I5(RAM_reg_0_63_14_20_n_1),
        .O(\gpr1.dout_i[15]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[15]_i_3 
       (.I0(RAM_reg_448_511_14_20_n_1),
        .I1(RAM_reg_384_447_14_20_n_1),
        .I2(Q[7]),
        .I3(RAM_reg_320_383_14_20_n_1),
        .I4(Q[6]),
        .I5(RAM_reg_256_319_14_20_n_1),
        .O(\gpr1.dout_i[15]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[16]_i_2 
       (.I0(RAM_reg_192_255_14_20_n_2),
        .I1(RAM_reg_128_191_14_20_n_2),
        .I2(Q[7]),
        .I3(RAM_reg_64_127_14_20_n_2),
        .I4(Q[6]),
        .I5(RAM_reg_0_63_14_20_n_2),
        .O(\gpr1.dout_i[16]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[16]_i_3 
       (.I0(RAM_reg_448_511_14_20_n_2),
        .I1(RAM_reg_384_447_14_20_n_2),
        .I2(Q[7]),
        .I3(RAM_reg_320_383_14_20_n_2),
        .I4(Q[6]),
        .I5(RAM_reg_256_319_14_20_n_2),
        .O(\gpr1.dout_i[16]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[17]_i_2 
       (.I0(RAM_reg_192_255_14_20_n_3),
        .I1(RAM_reg_128_191_14_20_n_3),
        .I2(Q[7]),
        .I3(RAM_reg_64_127_14_20_n_3),
        .I4(Q[6]),
        .I5(RAM_reg_0_63_14_20_n_3),
        .O(\gpr1.dout_i[17]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[17]_i_3 
       (.I0(RAM_reg_448_511_14_20_n_3),
        .I1(RAM_reg_384_447_14_20_n_3),
        .I2(Q[7]),
        .I3(RAM_reg_320_383_14_20_n_3),
        .I4(Q[6]),
        .I5(RAM_reg_256_319_14_20_n_3),
        .O(\gpr1.dout_i[17]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[18]_i_2 
       (.I0(RAM_reg_192_255_14_20_n_4),
        .I1(RAM_reg_128_191_14_20_n_4),
        .I2(Q[7]),
        .I3(RAM_reg_64_127_14_20_n_4),
        .I4(Q[6]),
        .I5(RAM_reg_0_63_14_20_n_4),
        .O(\gpr1.dout_i[18]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[18]_i_3 
       (.I0(RAM_reg_448_511_14_20_n_4),
        .I1(RAM_reg_384_447_14_20_n_4),
        .I2(Q[7]),
        .I3(RAM_reg_320_383_14_20_n_4),
        .I4(Q[6]),
        .I5(RAM_reg_256_319_14_20_n_4),
        .O(\gpr1.dout_i[18]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[19]_i_2 
       (.I0(RAM_reg_192_255_14_20_n_5),
        .I1(RAM_reg_128_191_14_20_n_5),
        .I2(Q[7]),
        .I3(RAM_reg_64_127_14_20_n_5),
        .I4(Q[6]),
        .I5(RAM_reg_0_63_14_20_n_5),
        .O(\gpr1.dout_i[19]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[19]_i_3 
       (.I0(RAM_reg_448_511_14_20_n_5),
        .I1(RAM_reg_384_447_14_20_n_5),
        .I2(Q[7]),
        .I3(RAM_reg_320_383_14_20_n_5),
        .I4(Q[6]),
        .I5(RAM_reg_256_319_14_20_n_5),
        .O(\gpr1.dout_i[19]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[1]_i_2 
       (.I0(RAM_reg_192_255_0_6_n_1),
        .I1(RAM_reg_128_191_0_6_n_1),
        .I2(Q[7]),
        .I3(RAM_reg_64_127_0_6_n_1),
        .I4(Q[6]),
        .I5(RAM_reg_0_63_0_6_n_1),
        .O(\gpr1.dout_i[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[1]_i_3 
       (.I0(RAM_reg_448_511_0_6_n_1),
        .I1(RAM_reg_384_447_0_6_n_1),
        .I2(Q[7]),
        .I3(RAM_reg_320_383_0_6_n_1),
        .I4(Q[6]),
        .I5(RAM_reg_256_319_0_6_n_1),
        .O(\gpr1.dout_i[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[20]_i_2 
       (.I0(RAM_reg_192_255_14_20_n_6),
        .I1(RAM_reg_128_191_14_20_n_6),
        .I2(Q[7]),
        .I3(RAM_reg_64_127_14_20_n_6),
        .I4(Q[6]),
        .I5(RAM_reg_0_63_14_20_n_6),
        .O(\gpr1.dout_i[20]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[20]_i_3 
       (.I0(RAM_reg_448_511_14_20_n_6),
        .I1(RAM_reg_384_447_14_20_n_6),
        .I2(Q[7]),
        .I3(RAM_reg_320_383_14_20_n_6),
        .I4(Q[6]),
        .I5(RAM_reg_256_319_14_20_n_6),
        .O(\gpr1.dout_i[20]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[21]_i_2 
       (.I0(RAM_reg_192_255_21_27_n_0),
        .I1(RAM_reg_128_191_21_27_n_0),
        .I2(Q[7]),
        .I3(RAM_reg_64_127_21_27_n_0),
        .I4(Q[6]),
        .I5(RAM_reg_0_63_21_27_n_0),
        .O(\gpr1.dout_i[21]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[21]_i_3 
       (.I0(RAM_reg_448_511_21_27_n_0),
        .I1(RAM_reg_384_447_21_27_n_0),
        .I2(Q[7]),
        .I3(RAM_reg_320_383_21_27_n_0),
        .I4(Q[6]),
        .I5(RAM_reg_256_319_21_27_n_0),
        .O(\gpr1.dout_i[21]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[22]_i_2 
       (.I0(RAM_reg_192_255_21_27_n_1),
        .I1(RAM_reg_128_191_21_27_n_1),
        .I2(Q[7]),
        .I3(RAM_reg_64_127_21_27_n_1),
        .I4(Q[6]),
        .I5(RAM_reg_0_63_21_27_n_1),
        .O(\gpr1.dout_i[22]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[22]_i_3 
       (.I0(RAM_reg_448_511_21_27_n_1),
        .I1(RAM_reg_384_447_21_27_n_1),
        .I2(Q[7]),
        .I3(RAM_reg_320_383_21_27_n_1),
        .I4(Q[6]),
        .I5(RAM_reg_256_319_21_27_n_1),
        .O(\gpr1.dout_i[22]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[23]_i_2 
       (.I0(RAM_reg_192_255_21_27_n_2),
        .I1(RAM_reg_128_191_21_27_n_2),
        .I2(Q[7]),
        .I3(RAM_reg_64_127_21_27_n_2),
        .I4(Q[6]),
        .I5(RAM_reg_0_63_21_27_n_2),
        .O(\gpr1.dout_i[23]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[23]_i_3 
       (.I0(RAM_reg_448_511_21_27_n_2),
        .I1(RAM_reg_384_447_21_27_n_2),
        .I2(Q[7]),
        .I3(RAM_reg_320_383_21_27_n_2),
        .I4(Q[6]),
        .I5(RAM_reg_256_319_21_27_n_2),
        .O(\gpr1.dout_i[23]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[24]_i_2 
       (.I0(RAM_reg_192_255_21_27_n_3),
        .I1(RAM_reg_128_191_21_27_n_3),
        .I2(Q[7]),
        .I3(RAM_reg_64_127_21_27_n_3),
        .I4(Q[6]),
        .I5(RAM_reg_0_63_21_27_n_3),
        .O(\gpr1.dout_i[24]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[24]_i_3 
       (.I0(RAM_reg_448_511_21_27_n_3),
        .I1(RAM_reg_384_447_21_27_n_3),
        .I2(Q[7]),
        .I3(RAM_reg_320_383_21_27_n_3),
        .I4(Q[6]),
        .I5(RAM_reg_256_319_21_27_n_3),
        .O(\gpr1.dout_i[24]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[25]_i_2 
       (.I0(RAM_reg_192_255_21_27_n_4),
        .I1(RAM_reg_128_191_21_27_n_4),
        .I2(Q[7]),
        .I3(RAM_reg_64_127_21_27_n_4),
        .I4(Q[6]),
        .I5(RAM_reg_0_63_21_27_n_4),
        .O(\gpr1.dout_i[25]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[25]_i_3 
       (.I0(RAM_reg_448_511_21_27_n_4),
        .I1(RAM_reg_384_447_21_27_n_4),
        .I2(Q[7]),
        .I3(RAM_reg_320_383_21_27_n_4),
        .I4(Q[6]),
        .I5(RAM_reg_256_319_21_27_n_4),
        .O(\gpr1.dout_i[25]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[26]_i_2 
       (.I0(RAM_reg_192_255_21_27_n_5),
        .I1(RAM_reg_128_191_21_27_n_5),
        .I2(Q[7]),
        .I3(RAM_reg_64_127_21_27_n_5),
        .I4(Q[6]),
        .I5(RAM_reg_0_63_21_27_n_5),
        .O(\gpr1.dout_i[26]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[26]_i_3 
       (.I0(RAM_reg_448_511_21_27_n_5),
        .I1(RAM_reg_384_447_21_27_n_5),
        .I2(Q[7]),
        .I3(RAM_reg_320_383_21_27_n_5),
        .I4(Q[6]),
        .I5(RAM_reg_256_319_21_27_n_5),
        .O(\gpr1.dout_i[26]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[27]_i_2 
       (.I0(RAM_reg_192_255_21_27_n_6),
        .I1(RAM_reg_128_191_21_27_n_6),
        .I2(Q[7]),
        .I3(RAM_reg_64_127_21_27_n_6),
        .I4(Q[6]),
        .I5(RAM_reg_0_63_21_27_n_6),
        .O(\gpr1.dout_i[27]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[27]_i_3 
       (.I0(RAM_reg_448_511_21_27_n_6),
        .I1(RAM_reg_384_447_21_27_n_6),
        .I2(Q[7]),
        .I3(RAM_reg_320_383_21_27_n_6),
        .I4(Q[6]),
        .I5(RAM_reg_256_319_21_27_n_6),
        .O(\gpr1.dout_i[27]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[28]_i_2 
       (.I0(RAM_reg_192_255_28_31_n_0),
        .I1(RAM_reg_128_191_28_31_n_0),
        .I2(Q[7]),
        .I3(RAM_reg_64_127_28_31_n_0),
        .I4(Q[6]),
        .I5(RAM_reg_0_63_28_31_n_0),
        .O(\gpr1.dout_i[28]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[28]_i_3 
       (.I0(RAM_reg_448_511_28_31_n_0),
        .I1(RAM_reg_384_447_28_31_n_0),
        .I2(Q[7]),
        .I3(RAM_reg_320_383_28_31_n_0),
        .I4(Q[6]),
        .I5(RAM_reg_256_319_28_31_n_0),
        .O(\gpr1.dout_i[28]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[29]_i_2 
       (.I0(RAM_reg_192_255_28_31_n_1),
        .I1(RAM_reg_128_191_28_31_n_1),
        .I2(Q[7]),
        .I3(RAM_reg_64_127_28_31_n_1),
        .I4(Q[6]),
        .I5(RAM_reg_0_63_28_31_n_1),
        .O(\gpr1.dout_i[29]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[29]_i_3 
       (.I0(RAM_reg_448_511_28_31_n_1),
        .I1(RAM_reg_384_447_28_31_n_1),
        .I2(Q[7]),
        .I3(RAM_reg_320_383_28_31_n_1),
        .I4(Q[6]),
        .I5(RAM_reg_256_319_28_31_n_1),
        .O(\gpr1.dout_i[29]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[2]_i_2 
       (.I0(RAM_reg_192_255_0_6_n_2),
        .I1(RAM_reg_128_191_0_6_n_2),
        .I2(Q[7]),
        .I3(RAM_reg_64_127_0_6_n_2),
        .I4(Q[6]),
        .I5(RAM_reg_0_63_0_6_n_2),
        .O(\gpr1.dout_i[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[2]_i_3 
       (.I0(RAM_reg_448_511_0_6_n_2),
        .I1(RAM_reg_384_447_0_6_n_2),
        .I2(Q[7]),
        .I3(RAM_reg_320_383_0_6_n_2),
        .I4(Q[6]),
        .I5(RAM_reg_256_319_0_6_n_2),
        .O(\gpr1.dout_i[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[30]_i_2 
       (.I0(RAM_reg_192_255_28_31_n_2),
        .I1(RAM_reg_128_191_28_31_n_2),
        .I2(Q[7]),
        .I3(RAM_reg_64_127_28_31_n_2),
        .I4(Q[6]),
        .I5(RAM_reg_0_63_28_31_n_2),
        .O(\gpr1.dout_i[30]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[30]_i_3 
       (.I0(RAM_reg_448_511_28_31_n_2),
        .I1(RAM_reg_384_447_28_31_n_2),
        .I2(Q[7]),
        .I3(RAM_reg_320_383_28_31_n_2),
        .I4(Q[6]),
        .I5(RAM_reg_256_319_28_31_n_2),
        .O(\gpr1.dout_i[30]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[31]_i_3 
       (.I0(RAM_reg_192_255_28_31_n_3),
        .I1(RAM_reg_128_191_28_31_n_3),
        .I2(Q[7]),
        .I3(RAM_reg_64_127_28_31_n_3),
        .I4(Q[6]),
        .I5(RAM_reg_0_63_28_31_n_3),
        .O(\gpr1.dout_i[31]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[31]_i_4 
       (.I0(RAM_reg_448_511_28_31_n_3),
        .I1(RAM_reg_384_447_28_31_n_3),
        .I2(Q[7]),
        .I3(RAM_reg_320_383_28_31_n_3),
        .I4(Q[6]),
        .I5(RAM_reg_256_319_28_31_n_3),
        .O(\gpr1.dout_i[31]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[3]_i_2 
       (.I0(RAM_reg_192_255_0_6_n_3),
        .I1(RAM_reg_128_191_0_6_n_3),
        .I2(Q[7]),
        .I3(RAM_reg_64_127_0_6_n_3),
        .I4(Q[6]),
        .I5(RAM_reg_0_63_0_6_n_3),
        .O(\gpr1.dout_i[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[3]_i_3 
       (.I0(RAM_reg_448_511_0_6_n_3),
        .I1(RAM_reg_384_447_0_6_n_3),
        .I2(Q[7]),
        .I3(RAM_reg_320_383_0_6_n_3),
        .I4(Q[6]),
        .I5(RAM_reg_256_319_0_6_n_3),
        .O(\gpr1.dout_i[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[4]_i_2 
       (.I0(RAM_reg_192_255_0_6_n_4),
        .I1(RAM_reg_128_191_0_6_n_4),
        .I2(Q[7]),
        .I3(RAM_reg_64_127_0_6_n_4),
        .I4(Q[6]),
        .I5(RAM_reg_0_63_0_6_n_4),
        .O(\gpr1.dout_i[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[4]_i_3 
       (.I0(RAM_reg_448_511_0_6_n_4),
        .I1(RAM_reg_384_447_0_6_n_4),
        .I2(Q[7]),
        .I3(RAM_reg_320_383_0_6_n_4),
        .I4(Q[6]),
        .I5(RAM_reg_256_319_0_6_n_4),
        .O(\gpr1.dout_i[4]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[5]_i_2 
       (.I0(RAM_reg_192_255_0_6_n_5),
        .I1(RAM_reg_128_191_0_6_n_5),
        .I2(Q[7]),
        .I3(RAM_reg_64_127_0_6_n_5),
        .I4(Q[6]),
        .I5(RAM_reg_0_63_0_6_n_5),
        .O(\gpr1.dout_i[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[5]_i_3 
       (.I0(RAM_reg_448_511_0_6_n_5),
        .I1(RAM_reg_384_447_0_6_n_5),
        .I2(Q[7]),
        .I3(RAM_reg_320_383_0_6_n_5),
        .I4(Q[6]),
        .I5(RAM_reg_256_319_0_6_n_5),
        .O(\gpr1.dout_i[5]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[6]_i_2 
       (.I0(RAM_reg_192_255_0_6_n_6),
        .I1(RAM_reg_128_191_0_6_n_6),
        .I2(Q[7]),
        .I3(RAM_reg_64_127_0_6_n_6),
        .I4(Q[6]),
        .I5(RAM_reg_0_63_0_6_n_6),
        .O(\gpr1.dout_i[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[6]_i_3 
       (.I0(RAM_reg_448_511_0_6_n_6),
        .I1(RAM_reg_384_447_0_6_n_6),
        .I2(Q[7]),
        .I3(RAM_reg_320_383_0_6_n_6),
        .I4(Q[6]),
        .I5(RAM_reg_256_319_0_6_n_6),
        .O(\gpr1.dout_i[6]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[7]_i_2 
       (.I0(RAM_reg_192_255_7_13_n_0),
        .I1(RAM_reg_128_191_7_13_n_0),
        .I2(Q[7]),
        .I3(RAM_reg_64_127_7_13_n_0),
        .I4(Q[6]),
        .I5(RAM_reg_0_63_7_13_n_0),
        .O(\gpr1.dout_i[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[7]_i_3 
       (.I0(RAM_reg_448_511_7_13_n_0),
        .I1(RAM_reg_384_447_7_13_n_0),
        .I2(Q[7]),
        .I3(RAM_reg_320_383_7_13_n_0),
        .I4(Q[6]),
        .I5(RAM_reg_256_319_7_13_n_0),
        .O(\gpr1.dout_i[7]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[8]_i_2 
       (.I0(RAM_reg_192_255_7_13_n_1),
        .I1(RAM_reg_128_191_7_13_n_1),
        .I2(Q[7]),
        .I3(RAM_reg_64_127_7_13_n_1),
        .I4(Q[6]),
        .I5(RAM_reg_0_63_7_13_n_1),
        .O(\gpr1.dout_i[8]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[8]_i_3 
       (.I0(RAM_reg_448_511_7_13_n_1),
        .I1(RAM_reg_384_447_7_13_n_1),
        .I2(Q[7]),
        .I3(RAM_reg_320_383_7_13_n_1),
        .I4(Q[6]),
        .I5(RAM_reg_256_319_7_13_n_1),
        .O(\gpr1.dout_i[8]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[9]_i_2 
       (.I0(RAM_reg_192_255_7_13_n_2),
        .I1(RAM_reg_128_191_7_13_n_2),
        .I2(Q[7]),
        .I3(RAM_reg_64_127_7_13_n_2),
        .I4(Q[6]),
        .I5(RAM_reg_0_63_7_13_n_2),
        .O(\gpr1.dout_i[9]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[9]_i_3 
       (.I0(RAM_reg_448_511_7_13_n_2),
        .I1(RAM_reg_384_447_7_13_n_2),
        .I2(Q[7]),
        .I3(RAM_reg_320_383_7_13_n_2),
        .I4(Q[6]),
        .I5(RAM_reg_256_319_7_13_n_2),
        .O(\gpr1.dout_i[9]_i_3_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[0] 
       (.C(rd_clk),
        .CE(E),
        .CLR(AR),
        .D(p_0_out[0]),
        .Q(dout[0]));
  MUXF7 \gpr1.dout_i_reg[0]_i_1 
       (.I0(\gpr1.dout_i[0]_i_2_n_0 ),
        .I1(\gpr1.dout_i[0]_i_3_n_0 ),
        .O(p_0_out[0]),
        .S(Q[8]));
  FDCE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[10] 
       (.C(rd_clk),
        .CE(E),
        .CLR(AR),
        .D(p_0_out[10]),
        .Q(dout[10]));
  MUXF7 \gpr1.dout_i_reg[10]_i_1 
       (.I0(\gpr1.dout_i[10]_i_2_n_0 ),
        .I1(\gpr1.dout_i[10]_i_3_n_0 ),
        .O(p_0_out[10]),
        .S(Q[8]));
  FDCE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[11] 
       (.C(rd_clk),
        .CE(E),
        .CLR(AR),
        .D(p_0_out[11]),
        .Q(dout[11]));
  MUXF7 \gpr1.dout_i_reg[11]_i_1 
       (.I0(\gpr1.dout_i[11]_i_2_n_0 ),
        .I1(\gpr1.dout_i[11]_i_3_n_0 ),
        .O(p_0_out[11]),
        .S(Q[8]));
  FDCE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[12] 
       (.C(rd_clk),
        .CE(E),
        .CLR(AR),
        .D(p_0_out[12]),
        .Q(dout[12]));
  MUXF7 \gpr1.dout_i_reg[12]_i_1 
       (.I0(\gpr1.dout_i[12]_i_2_n_0 ),
        .I1(\gpr1.dout_i[12]_i_3_n_0 ),
        .O(p_0_out[12]),
        .S(Q[8]));
  FDCE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[13] 
       (.C(rd_clk),
        .CE(E),
        .CLR(AR),
        .D(p_0_out[13]),
        .Q(dout[13]));
  MUXF7 \gpr1.dout_i_reg[13]_i_1 
       (.I0(\gpr1.dout_i[13]_i_2_n_0 ),
        .I1(\gpr1.dout_i[13]_i_3_n_0 ),
        .O(p_0_out[13]),
        .S(Q[8]));
  FDCE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[14] 
       (.C(rd_clk),
        .CE(E),
        .CLR(AR),
        .D(p_0_out[14]),
        .Q(dout[14]));
  MUXF7 \gpr1.dout_i_reg[14]_i_1 
       (.I0(\gpr1.dout_i[14]_i_2_n_0 ),
        .I1(\gpr1.dout_i[14]_i_3_n_0 ),
        .O(p_0_out[14]),
        .S(Q[8]));
  FDCE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[15] 
       (.C(rd_clk),
        .CE(E),
        .CLR(AR),
        .D(p_0_out[15]),
        .Q(dout[15]));
  MUXF7 \gpr1.dout_i_reg[15]_i_1 
       (.I0(\gpr1.dout_i[15]_i_2_n_0 ),
        .I1(\gpr1.dout_i[15]_i_3_n_0 ),
        .O(p_0_out[15]),
        .S(Q[8]));
  FDCE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[16] 
       (.C(rd_clk),
        .CE(E),
        .CLR(AR),
        .D(p_0_out[16]),
        .Q(dout[16]));
  MUXF7 \gpr1.dout_i_reg[16]_i_1 
       (.I0(\gpr1.dout_i[16]_i_2_n_0 ),
        .I1(\gpr1.dout_i[16]_i_3_n_0 ),
        .O(p_0_out[16]),
        .S(Q[8]));
  FDCE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[17] 
       (.C(rd_clk),
        .CE(E),
        .CLR(AR),
        .D(p_0_out[17]),
        .Q(dout[17]));
  MUXF7 \gpr1.dout_i_reg[17]_i_1 
       (.I0(\gpr1.dout_i[17]_i_2_n_0 ),
        .I1(\gpr1.dout_i[17]_i_3_n_0 ),
        .O(p_0_out[17]),
        .S(Q[8]));
  FDCE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[18] 
       (.C(rd_clk),
        .CE(E),
        .CLR(AR),
        .D(p_0_out[18]),
        .Q(dout[18]));
  MUXF7 \gpr1.dout_i_reg[18]_i_1 
       (.I0(\gpr1.dout_i[18]_i_2_n_0 ),
        .I1(\gpr1.dout_i[18]_i_3_n_0 ),
        .O(p_0_out[18]),
        .S(Q[8]));
  FDCE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[19] 
       (.C(rd_clk),
        .CE(E),
        .CLR(AR),
        .D(p_0_out[19]),
        .Q(dout[19]));
  MUXF7 \gpr1.dout_i_reg[19]_i_1 
       (.I0(\gpr1.dout_i[19]_i_2_n_0 ),
        .I1(\gpr1.dout_i[19]_i_3_n_0 ),
        .O(p_0_out[19]),
        .S(Q[8]));
  FDCE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[1] 
       (.C(rd_clk),
        .CE(E),
        .CLR(AR),
        .D(p_0_out[1]),
        .Q(dout[1]));
  MUXF7 \gpr1.dout_i_reg[1]_i_1 
       (.I0(\gpr1.dout_i[1]_i_2_n_0 ),
        .I1(\gpr1.dout_i[1]_i_3_n_0 ),
        .O(p_0_out[1]),
        .S(Q[8]));
  FDCE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[20] 
       (.C(rd_clk),
        .CE(E),
        .CLR(AR),
        .D(p_0_out[20]),
        .Q(dout[20]));
  MUXF7 \gpr1.dout_i_reg[20]_i_1 
       (.I0(\gpr1.dout_i[20]_i_2_n_0 ),
        .I1(\gpr1.dout_i[20]_i_3_n_0 ),
        .O(p_0_out[20]),
        .S(Q[8]));
  FDCE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[21] 
       (.C(rd_clk),
        .CE(E),
        .CLR(AR),
        .D(p_0_out[21]),
        .Q(dout[21]));
  MUXF7 \gpr1.dout_i_reg[21]_i_1 
       (.I0(\gpr1.dout_i[21]_i_2_n_0 ),
        .I1(\gpr1.dout_i[21]_i_3_n_0 ),
        .O(p_0_out[21]),
        .S(Q[8]));
  FDCE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[22] 
       (.C(rd_clk),
        .CE(E),
        .CLR(AR),
        .D(p_0_out[22]),
        .Q(dout[22]));
  MUXF7 \gpr1.dout_i_reg[22]_i_1 
       (.I0(\gpr1.dout_i[22]_i_2_n_0 ),
        .I1(\gpr1.dout_i[22]_i_3_n_0 ),
        .O(p_0_out[22]),
        .S(Q[8]));
  FDCE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[23] 
       (.C(rd_clk),
        .CE(E),
        .CLR(AR),
        .D(p_0_out[23]),
        .Q(dout[23]));
  MUXF7 \gpr1.dout_i_reg[23]_i_1 
       (.I0(\gpr1.dout_i[23]_i_2_n_0 ),
        .I1(\gpr1.dout_i[23]_i_3_n_0 ),
        .O(p_0_out[23]),
        .S(Q[8]));
  FDCE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[24] 
       (.C(rd_clk),
        .CE(E),
        .CLR(AR),
        .D(p_0_out[24]),
        .Q(dout[24]));
  MUXF7 \gpr1.dout_i_reg[24]_i_1 
       (.I0(\gpr1.dout_i[24]_i_2_n_0 ),
        .I1(\gpr1.dout_i[24]_i_3_n_0 ),
        .O(p_0_out[24]),
        .S(Q[8]));
  FDCE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[25] 
       (.C(rd_clk),
        .CE(E),
        .CLR(AR),
        .D(p_0_out[25]),
        .Q(dout[25]));
  MUXF7 \gpr1.dout_i_reg[25]_i_1 
       (.I0(\gpr1.dout_i[25]_i_2_n_0 ),
        .I1(\gpr1.dout_i[25]_i_3_n_0 ),
        .O(p_0_out[25]),
        .S(Q[8]));
  FDCE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[26] 
       (.C(rd_clk),
        .CE(E),
        .CLR(AR),
        .D(p_0_out[26]),
        .Q(dout[26]));
  MUXF7 \gpr1.dout_i_reg[26]_i_1 
       (.I0(\gpr1.dout_i[26]_i_2_n_0 ),
        .I1(\gpr1.dout_i[26]_i_3_n_0 ),
        .O(p_0_out[26]),
        .S(Q[8]));
  FDCE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[27] 
       (.C(rd_clk),
        .CE(E),
        .CLR(AR),
        .D(p_0_out[27]),
        .Q(dout[27]));
  MUXF7 \gpr1.dout_i_reg[27]_i_1 
       (.I0(\gpr1.dout_i[27]_i_2_n_0 ),
        .I1(\gpr1.dout_i[27]_i_3_n_0 ),
        .O(p_0_out[27]),
        .S(Q[8]));
  FDCE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[28] 
       (.C(rd_clk),
        .CE(E),
        .CLR(AR),
        .D(p_0_out[28]),
        .Q(dout[28]));
  MUXF7 \gpr1.dout_i_reg[28]_i_1 
       (.I0(\gpr1.dout_i[28]_i_2_n_0 ),
        .I1(\gpr1.dout_i[28]_i_3_n_0 ),
        .O(p_0_out[28]),
        .S(Q[8]));
  FDCE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[29] 
       (.C(rd_clk),
        .CE(E),
        .CLR(AR),
        .D(p_0_out[29]),
        .Q(dout[29]));
  MUXF7 \gpr1.dout_i_reg[29]_i_1 
       (.I0(\gpr1.dout_i[29]_i_2_n_0 ),
        .I1(\gpr1.dout_i[29]_i_3_n_0 ),
        .O(p_0_out[29]),
        .S(Q[8]));
  FDCE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[2] 
       (.C(rd_clk),
        .CE(E),
        .CLR(AR),
        .D(p_0_out[2]),
        .Q(dout[2]));
  MUXF7 \gpr1.dout_i_reg[2]_i_1 
       (.I0(\gpr1.dout_i[2]_i_2_n_0 ),
        .I1(\gpr1.dout_i[2]_i_3_n_0 ),
        .O(p_0_out[2]),
        .S(Q[8]));
  FDCE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[30] 
       (.C(rd_clk),
        .CE(E),
        .CLR(AR),
        .D(p_0_out[30]),
        .Q(dout[30]));
  MUXF7 \gpr1.dout_i_reg[30]_i_1 
       (.I0(\gpr1.dout_i[30]_i_2_n_0 ),
        .I1(\gpr1.dout_i[30]_i_3_n_0 ),
        .O(p_0_out[30]),
        .S(Q[8]));
  FDCE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[31] 
       (.C(rd_clk),
        .CE(E),
        .CLR(AR),
        .D(p_0_out[31]),
        .Q(dout[31]));
  MUXF7 \gpr1.dout_i_reg[31]_i_2 
       (.I0(\gpr1.dout_i[31]_i_3_n_0 ),
        .I1(\gpr1.dout_i[31]_i_4_n_0 ),
        .O(p_0_out[31]),
        .S(Q[8]));
  FDCE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[3] 
       (.C(rd_clk),
        .CE(E),
        .CLR(AR),
        .D(p_0_out[3]),
        .Q(dout[3]));
  MUXF7 \gpr1.dout_i_reg[3]_i_1 
       (.I0(\gpr1.dout_i[3]_i_2_n_0 ),
        .I1(\gpr1.dout_i[3]_i_3_n_0 ),
        .O(p_0_out[3]),
        .S(Q[8]));
  FDCE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[4] 
       (.C(rd_clk),
        .CE(E),
        .CLR(AR),
        .D(p_0_out[4]),
        .Q(dout[4]));
  MUXF7 \gpr1.dout_i_reg[4]_i_1 
       (.I0(\gpr1.dout_i[4]_i_2_n_0 ),
        .I1(\gpr1.dout_i[4]_i_3_n_0 ),
        .O(p_0_out[4]),
        .S(Q[8]));
  FDCE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[5] 
       (.C(rd_clk),
        .CE(E),
        .CLR(AR),
        .D(p_0_out[5]),
        .Q(dout[5]));
  MUXF7 \gpr1.dout_i_reg[5]_i_1 
       (.I0(\gpr1.dout_i[5]_i_2_n_0 ),
        .I1(\gpr1.dout_i[5]_i_3_n_0 ),
        .O(p_0_out[5]),
        .S(Q[8]));
  FDCE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[6] 
       (.C(rd_clk),
        .CE(E),
        .CLR(AR),
        .D(p_0_out[6]),
        .Q(dout[6]));
  MUXF7 \gpr1.dout_i_reg[6]_i_1 
       (.I0(\gpr1.dout_i[6]_i_2_n_0 ),
        .I1(\gpr1.dout_i[6]_i_3_n_0 ),
        .O(p_0_out[6]),
        .S(Q[8]));
  FDCE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[7] 
       (.C(rd_clk),
        .CE(E),
        .CLR(AR),
        .D(p_0_out[7]),
        .Q(dout[7]));
  MUXF7 \gpr1.dout_i_reg[7]_i_1 
       (.I0(\gpr1.dout_i[7]_i_2_n_0 ),
        .I1(\gpr1.dout_i[7]_i_3_n_0 ),
        .O(p_0_out[7]),
        .S(Q[8]));
  FDCE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[8] 
       (.C(rd_clk),
        .CE(E),
        .CLR(AR),
        .D(p_0_out[8]),
        .Q(dout[8]));
  MUXF7 \gpr1.dout_i_reg[8]_i_1 
       (.I0(\gpr1.dout_i[8]_i_2_n_0 ),
        .I1(\gpr1.dout_i[8]_i_3_n_0 ),
        .O(p_0_out[8]),
        .S(Q[8]));
  FDCE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[9] 
       (.C(rd_clk),
        .CE(E),
        .CLR(AR),
        .D(p_0_out[9]),
        .Q(dout[9]));
  MUXF7 \gpr1.dout_i_reg[9]_i_1 
       (.I0(\gpr1.dout_i[9]_i_2_n_0 ),
        .I1(\gpr1.dout_i[9]_i_3_n_0 ),
        .O(p_0_out[9]),
        .S(Q[8]));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_ramfifo
   (wr_rst_busy,
    empty,
    full,
    dout,
    prog_full,
    rd_en,
    wr_en,
    wr_clk,
    rd_clk,
    rst,
    din);
  output wr_rst_busy;
  output empty;
  output full;
  output [31:0]dout;
  output prog_full;
  input rd_en;
  input wr_en;
  input wr_clk;
  input rd_clk;
  input rst;
  input [31:0]din;

  wire [31:0]din;
  wire [31:0]dout;
  wire empty;
  wire full;
  wire \gntv_or_sync_fifo.gcx.clkx_n_0 ;
  wire \gntv_or_sync_fifo.gcx.clkx_n_10 ;
  wire \gntv_or_sync_fifo.gl0.rd_n_1 ;
  wire \gntv_or_sync_fifo.gl0.rd_n_19 ;
  wire \gntv_or_sync_fifo.gl0.rd_n_20 ;
  wire \gntv_or_sync_fifo.gl0.rd_n_21 ;
  wire \gntv_or_sync_fifo.gl0.rd_n_22 ;
  wire \gntv_or_sync_fifo.gl0.rd_n_23 ;
  wire \gntv_or_sync_fifo.gl0.rd_n_24 ;
  wire \gntv_or_sync_fifo.gl0.wr_n_13 ;
  wire \gntv_or_sync_fifo.gl0.wr_n_14 ;
  wire \gntv_or_sync_fifo.gl0.wr_n_15 ;
  wire \gntv_or_sync_fifo.gl0.wr_n_16 ;
  wire \gntv_or_sync_fifo.gl0.wr_n_17 ;
  wire \gntv_or_sync_fifo.gl0.wr_n_18 ;
  wire \gntv_or_sync_fifo.gl0.wr_n_19 ;
  wire \gntv_or_sync_fifo.gl0.wr_n_3 ;
  wire [3:0]\gras.rsts/c0/v1_reg ;
  wire [3:0]\gras.rsts/c1/v1_reg ;
  wire [8:0]p_0_out_0;
  wire [8:0]p_12_out;
  wire [8:8]p_13_out;
  wire [8:8]p_22_out;
  wire [8:0]p_23_out;
  wire prog_full;
  wire rd_clk;
  wire rd_en;
  wire [7:0]rd_pntr_plus1;
  wire [2:0]rd_rst_i;
  wire rst;
  wire rst_full_ff_i;
  wire wr_clk;
  wire wr_en;
  wire [8:8]wr_pntr_plus2;
  wire wr_rst_busy;
  wire [1:0]wr_rst_i;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_clk_x_pntrs \gntv_or_sync_fifo.gcx.clkx 
       (.AR(wr_rst_i[0]),
        .D(wr_pntr_plus2),
        .Q(p_13_out),
        .RD_PNTR_WR(p_23_out),
        .WR_PNTR_RD(p_22_out),
        .\gc0.count_d1_reg[8] (p_0_out_0),
        .\gc0.count_reg[7] (rd_pntr_plus1),
        .\gic0.gc0.count_d2_reg[8] (p_12_out),
        .\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1] (rd_rst_i[1]),
        .ram_full_fb_i_reg(\gntv_or_sync_fifo.gcx.clkx_n_0 ),
        .ram_full_fb_i_reg_0(\gntv_or_sync_fifo.gcx.clkx_n_10 ),
        .rd_clk(rd_clk),
        .v1_reg(\gras.rsts/c0/v1_reg ),
        .v1_reg_0(\gras.rsts/c1/v1_reg ),
        .wr_clk(wr_clk));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_rd_logic \gntv_or_sync_fifo.gl0.rd 
       (.ADDRG({\gntv_or_sync_fifo.gl0.rd_n_19 ,\gntv_or_sync_fifo.gl0.rd_n_20 ,\gntv_or_sync_fifo.gl0.rd_n_21 ,\gntv_or_sync_fifo.gl0.rd_n_22 ,\gntv_or_sync_fifo.gl0.rd_n_23 ,\gntv_or_sync_fifo.gl0.rd_n_24 }),
        .Q(p_0_out_0),
        .WR_PNTR_RD(p_22_out),
        .empty(empty),
        .\gc0.count_d1_reg[0]_rep (\gntv_or_sync_fifo.gl0.rd_n_1 ),
        .\gc0.count_d1_reg[7] (rd_pntr_plus1),
        .out(rd_rst_i[2]),
        .rd_clk(rd_clk),
        .rd_en(rd_en),
        .v1_reg(\gras.rsts/c0/v1_reg ),
        .v1_reg_0(\gras.rsts/c1/v1_reg ));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_wr_logic \gntv_or_sync_fifo.gl0.wr 
       (.AR(wr_rst_i[1]),
        .Q(p_13_out),
        .RD_PNTR_WR(p_23_out),
        .full(full),
        .\gic0.gc0.count_d1_reg[8] (wr_pntr_plus2),
        .\gnxpm_cdc.rd_pntr_bin_reg[8] (\gntv_or_sync_fifo.gcx.clkx_n_0 ),
        .\gnxpm_cdc.rd_pntr_bin_reg[8]_0 (\gntv_or_sync_fifo.gcx.clkx_n_10 ),
        .\gnxpm_cdc.wr_pntr_gc_reg[8] (p_12_out),
        .\gpr1.dout_i_reg[28] (\gntv_or_sync_fifo.gl0.wr_n_3 ),
        .\gpr1.dout_i_reg[28]_0 (\gntv_or_sync_fifo.gl0.wr_n_13 ),
        .\gpr1.dout_i_reg[28]_1 (\gntv_or_sync_fifo.gl0.wr_n_14 ),
        .\gpr1.dout_i_reg[28]_2 (\gntv_or_sync_fifo.gl0.wr_n_15 ),
        .\gpr1.dout_i_reg[28]_3 (\gntv_or_sync_fifo.gl0.wr_n_16 ),
        .\gpr1.dout_i_reg[28]_4 (\gntv_or_sync_fifo.gl0.wr_n_17 ),
        .\gpr1.dout_i_reg[28]_5 (\gntv_or_sync_fifo.gl0.wr_n_18 ),
        .\gpr1.dout_i_reg[28]_6 (\gntv_or_sync_fifo.gl0.wr_n_19 ),
        .out(rst_full_ff_i),
        .prog_full(prog_full),
        .wr_clk(wr_clk),
        .wr_en(wr_en),
        .wr_rst_busy(wr_rst_busy));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_memory \gntv_or_sync_fifo.mem 
       (.ADDRG({\gntv_or_sync_fifo.gl0.rd_n_19 ,\gntv_or_sync_fifo.gl0.rd_n_20 ,\gntv_or_sync_fifo.gl0.rd_n_21 ,\gntv_or_sync_fifo.gl0.rd_n_22 ,\gntv_or_sync_fifo.gl0.rd_n_23 ,\gntv_or_sync_fifo.gl0.rd_n_24 }),
        .AR(rd_rst_i[0]),
        .E(\gntv_or_sync_fifo.gl0.rd_n_1 ),
        .Q(p_0_out_0),
        .din(din),
        .dout(dout),
        .\gic0.gc0.count_d2_reg[5] (p_12_out[5:0]),
        .\gic0.gc0.count_d2_reg[6] (\gntv_or_sync_fifo.gl0.wr_n_14 ),
        .\gic0.gc0.count_d2_reg[6]_0 (\gntv_or_sync_fifo.gl0.wr_n_17 ),
        .\gic0.gc0.count_d2_reg[7] (\gntv_or_sync_fifo.gl0.wr_n_13 ),
        .\gic0.gc0.count_d2_reg[8] (\gntv_or_sync_fifo.gl0.wr_n_15 ),
        .ram_full_fb_i_reg(\gntv_or_sync_fifo.gl0.wr_n_3 ),
        .ram_full_fb_i_reg_0(\gntv_or_sync_fifo.gl0.wr_n_16 ),
        .ram_full_fb_i_reg_1(\gntv_or_sync_fifo.gl0.wr_n_18 ),
        .ram_full_fb_i_reg_2(\gntv_or_sync_fifo.gl0.wr_n_19 ),
        .rd_clk(rd_clk),
        .wr_clk(wr_clk));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_reset_blk_ramfifo rstblk
       (.\gc0.count_d1_reg[0]_rep (rd_rst_i),
        .\grstd1.grst_full.grst_f.rst_d3_reg_0 (rst_full_ff_i),
        .out(wr_rst_i),
        .rd_clk(rd_clk),
        .rst(rst),
        .wr_clk(wr_clk),
        .wr_rst_busy(wr_rst_busy));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_top
   (wr_rst_busy,
    empty,
    full,
    dout,
    prog_full,
    rd_en,
    wr_en,
    wr_clk,
    rd_clk,
    rst,
    din);
  output wr_rst_busy;
  output empty;
  output full;
  output [31:0]dout;
  output prog_full;
  input rd_en;
  input wr_en;
  input wr_clk;
  input rd_clk;
  input rst;
  input [31:0]din;

  wire [31:0]din;
  wire [31:0]dout;
  wire empty;
  wire full;
  wire prog_full;
  wire rd_clk;
  wire rd_en;
  wire rst;
  wire wr_clk;
  wire wr_en;
  wire wr_rst_busy;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_ramfifo \grf.rf 
       (.din(din),
        .dout(dout),
        .empty(empty),
        .full(full),
        .prog_full(prog_full),
        .rd_clk(rd_clk),
        .rd_en(rd_en),
        .rst(rst),
        .wr_clk(wr_clk),
        .wr_en(wr_en),
        .wr_rst_busy(wr_rst_busy));
endmodule

(* C_ADD_NGC_CONSTRAINT = "0" *) (* C_APPLICATION_TYPE_AXIS = "0" *) (* C_APPLICATION_TYPE_RACH = "0" *) 
(* C_APPLICATION_TYPE_RDCH = "0" *) (* C_APPLICATION_TYPE_WACH = "0" *) (* C_APPLICATION_TYPE_WDCH = "0" *) 
(* C_APPLICATION_TYPE_WRCH = "0" *) (* C_AXIS_TDATA_WIDTH = "8" *) (* C_AXIS_TDEST_WIDTH = "1" *) 
(* C_AXIS_TID_WIDTH = "1" *) (* C_AXIS_TKEEP_WIDTH = "1" *) (* C_AXIS_TSTRB_WIDTH = "1" *) 
(* C_AXIS_TUSER_WIDTH = "4" *) (* C_AXIS_TYPE = "0" *) (* C_AXI_ADDR_WIDTH = "32" *) 
(* C_AXI_ARUSER_WIDTH = "1" *) (* C_AXI_AWUSER_WIDTH = "1" *) (* C_AXI_BUSER_WIDTH = "1" *) 
(* C_AXI_DATA_WIDTH = "64" *) (* C_AXI_ID_WIDTH = "1" *) (* C_AXI_LEN_WIDTH = "8" *) 
(* C_AXI_LOCK_WIDTH = "1" *) (* C_AXI_RUSER_WIDTH = "1" *) (* C_AXI_TYPE = "1" *) 
(* C_AXI_WUSER_WIDTH = "1" *) (* C_COMMON_CLOCK = "0" *) (* C_COUNT_TYPE = "0" *) 
(* C_DATA_COUNT_WIDTH = "9" *) (* C_DEFAULT_VALUE = "BlankString" *) (* C_DIN_WIDTH = "32" *) 
(* C_DIN_WIDTH_AXIS = "1" *) (* C_DIN_WIDTH_RACH = "32" *) (* C_DIN_WIDTH_RDCH = "64" *) 
(* C_DIN_WIDTH_WACH = "1" *) (* C_DIN_WIDTH_WDCH = "64" *) (* C_DIN_WIDTH_WRCH = "2" *) 
(* C_DOUT_RST_VAL = "0" *) (* C_DOUT_WIDTH = "32" *) (* C_ENABLE_RLOCS = "0" *) 
(* C_ENABLE_RST_SYNC = "1" *) (* C_EN_SAFETY_CKT = "0" *) (* C_ERROR_INJECTION_TYPE = "0" *) 
(* C_ERROR_INJECTION_TYPE_AXIS = "0" *) (* C_ERROR_INJECTION_TYPE_RACH = "0" *) (* C_ERROR_INJECTION_TYPE_RDCH = "0" *) 
(* C_ERROR_INJECTION_TYPE_WACH = "0" *) (* C_ERROR_INJECTION_TYPE_WDCH = "0" *) (* C_ERROR_INJECTION_TYPE_WRCH = "0" *) 
(* C_FAMILY = "kintexu" *) (* C_FULL_FLAGS_RST_VAL = "1" *) (* C_HAS_ALMOST_EMPTY = "0" *) 
(* C_HAS_ALMOST_FULL = "0" *) (* C_HAS_AXIS_TDATA = "1" *) (* C_HAS_AXIS_TDEST = "0" *) 
(* C_HAS_AXIS_TID = "0" *) (* C_HAS_AXIS_TKEEP = "0" *) (* C_HAS_AXIS_TLAST = "0" *) 
(* C_HAS_AXIS_TREADY = "1" *) (* C_HAS_AXIS_TSTRB = "0" *) (* C_HAS_AXIS_TUSER = "1" *) 
(* C_HAS_AXI_ARUSER = "0" *) (* C_HAS_AXI_AWUSER = "0" *) (* C_HAS_AXI_BUSER = "0" *) 
(* C_HAS_AXI_ID = "0" *) (* C_HAS_AXI_RD_CHANNEL = "1" *) (* C_HAS_AXI_RUSER = "0" *) 
(* C_HAS_AXI_WR_CHANNEL = "1" *) (* C_HAS_AXI_WUSER = "0" *) (* C_HAS_BACKUP = "0" *) 
(* C_HAS_DATA_COUNT = "0" *) (* C_HAS_DATA_COUNTS_AXIS = "0" *) (* C_HAS_DATA_COUNTS_RACH = "0" *) 
(* C_HAS_DATA_COUNTS_RDCH = "0" *) (* C_HAS_DATA_COUNTS_WACH = "0" *) (* C_HAS_DATA_COUNTS_WDCH = "0" *) 
(* C_HAS_DATA_COUNTS_WRCH = "0" *) (* C_HAS_INT_CLK = "0" *) (* C_HAS_MASTER_CE = "0" *) 
(* C_HAS_MEMINIT_FILE = "0" *) (* C_HAS_OVERFLOW = "0" *) (* C_HAS_PROG_FLAGS_AXIS = "0" *) 
(* C_HAS_PROG_FLAGS_RACH = "0" *) (* C_HAS_PROG_FLAGS_RDCH = "0" *) (* C_HAS_PROG_FLAGS_WACH = "0" *) 
(* C_HAS_PROG_FLAGS_WDCH = "0" *) (* C_HAS_PROG_FLAGS_WRCH = "0" *) (* C_HAS_RD_DATA_COUNT = "0" *) 
(* C_HAS_RD_RST = "0" *) (* C_HAS_RST = "1" *) (* C_HAS_SLAVE_CE = "0" *) 
(* C_HAS_SRST = "0" *) (* C_HAS_UNDERFLOW = "0" *) (* C_HAS_VALID = "0" *) 
(* C_HAS_WR_ACK = "0" *) (* C_HAS_WR_DATA_COUNT = "0" *) (* C_HAS_WR_RST = "0" *) 
(* C_IMPLEMENTATION_TYPE = "2" *) (* C_IMPLEMENTATION_TYPE_AXIS = "1" *) (* C_IMPLEMENTATION_TYPE_RACH = "1" *) 
(* C_IMPLEMENTATION_TYPE_RDCH = "1" *) (* C_IMPLEMENTATION_TYPE_WACH = "1" *) (* C_IMPLEMENTATION_TYPE_WDCH = "1" *) 
(* C_IMPLEMENTATION_TYPE_WRCH = "1" *) (* C_INIT_WR_PNTR_VAL = "0" *) (* C_INTERFACE_TYPE = "0" *) 
(* C_MEMORY_TYPE = "2" *) (* C_MIF_FILE_NAME = "BlankString" *) (* C_MSGON_VAL = "1" *) 
(* C_OPTIMIZATION_MODE = "0" *) (* C_OVERFLOW_LOW = "0" *) (* C_POWER_SAVING_MODE = "0" *) 
(* C_PRELOAD_LATENCY = "1" *) (* C_PRELOAD_REGS = "0" *) (* C_PRIM_FIFO_TYPE = "512x36" *) 
(* C_PRIM_FIFO_TYPE_AXIS = "1kx18" *) (* C_PRIM_FIFO_TYPE_RACH = "512x36" *) (* C_PRIM_FIFO_TYPE_RDCH = "512x72" *) 
(* C_PRIM_FIFO_TYPE_WACH = "512x36" *) (* C_PRIM_FIFO_TYPE_WDCH = "512x72" *) (* C_PRIM_FIFO_TYPE_WRCH = "512x36" *) 
(* C_PROG_EMPTY_THRESH_ASSERT_VAL = "2" *) (* C_PROG_EMPTY_THRESH_ASSERT_VAL_AXIS = "1022" *) (* C_PROG_EMPTY_THRESH_ASSERT_VAL_RACH = "1022" *) 
(* C_PROG_EMPTY_THRESH_ASSERT_VAL_RDCH = "1022" *) (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WACH = "1022" *) (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WDCH = "1022" *) 
(* C_PROG_EMPTY_THRESH_ASSERT_VAL_WRCH = "1022" *) (* C_PROG_EMPTY_THRESH_NEGATE_VAL = "3" *) (* C_PROG_EMPTY_TYPE = "0" *) 
(* C_PROG_EMPTY_TYPE_AXIS = "0" *) (* C_PROG_EMPTY_TYPE_RACH = "0" *) (* C_PROG_EMPTY_TYPE_RDCH = "0" *) 
(* C_PROG_EMPTY_TYPE_WACH = "0" *) (* C_PROG_EMPTY_TYPE_WDCH = "0" *) (* C_PROG_EMPTY_TYPE_WRCH = "0" *) 
(* C_PROG_FULL_THRESH_ASSERT_VAL = "509" *) (* C_PROG_FULL_THRESH_ASSERT_VAL_AXIS = "1023" *) (* C_PROG_FULL_THRESH_ASSERT_VAL_RACH = "1023" *) 
(* C_PROG_FULL_THRESH_ASSERT_VAL_RDCH = "1023" *) (* C_PROG_FULL_THRESH_ASSERT_VAL_WACH = "1023" *) (* C_PROG_FULL_THRESH_ASSERT_VAL_WDCH = "1023" *) 
(* C_PROG_FULL_THRESH_ASSERT_VAL_WRCH = "1023" *) (* C_PROG_FULL_THRESH_NEGATE_VAL = "508" *) (* C_PROG_FULL_TYPE = "1" *) 
(* C_PROG_FULL_TYPE_AXIS = "0" *) (* C_PROG_FULL_TYPE_RACH = "0" *) (* C_PROG_FULL_TYPE_RDCH = "0" *) 
(* C_PROG_FULL_TYPE_WACH = "0" *) (* C_PROG_FULL_TYPE_WDCH = "0" *) (* C_PROG_FULL_TYPE_WRCH = "0" *) 
(* C_RACH_TYPE = "0" *) (* C_RDCH_TYPE = "0" *) (* C_RD_DATA_COUNT_WIDTH = "9" *) 
(* C_RD_DEPTH = "512" *) (* C_RD_FREQ = "1" *) (* C_RD_PNTR_WIDTH = "9" *) 
(* C_REG_SLICE_MODE_AXIS = "0" *) (* C_REG_SLICE_MODE_RACH = "0" *) (* C_REG_SLICE_MODE_RDCH = "0" *) 
(* C_REG_SLICE_MODE_WACH = "0" *) (* C_REG_SLICE_MODE_WDCH = "0" *) (* C_REG_SLICE_MODE_WRCH = "0" *) 
(* C_SELECT_XPM = "0" *) (* C_SYNCHRONIZER_STAGE = "2" *) (* C_UNDERFLOW_LOW = "0" *) 
(* C_USE_COMMON_OVERFLOW = "0" *) (* C_USE_COMMON_UNDERFLOW = "0" *) (* C_USE_DEFAULT_SETTINGS = "0" *) 
(* C_USE_DOUT_RST = "1" *) (* C_USE_ECC = "0" *) (* C_USE_ECC_AXIS = "0" *) 
(* C_USE_ECC_RACH = "0" *) (* C_USE_ECC_RDCH = "0" *) (* C_USE_ECC_WACH = "0" *) 
(* C_USE_ECC_WDCH = "0" *) (* C_USE_ECC_WRCH = "0" *) (* C_USE_EMBEDDED_REG = "0" *) 
(* C_USE_FIFO16_FLAGS = "0" *) (* C_USE_FWFT_DATA_COUNT = "0" *) (* C_USE_PIPELINE_REG = "0" *) 
(* C_VALID_LOW = "0" *) (* C_WACH_TYPE = "0" *) (* C_WDCH_TYPE = "0" *) 
(* C_WRCH_TYPE = "0" *) (* C_WR_ACK_LOW = "0" *) (* C_WR_DATA_COUNT_WIDTH = "9" *) 
(* C_WR_DEPTH = "512" *) (* C_WR_DEPTH_AXIS = "1024" *) (* C_WR_DEPTH_RACH = "16" *) 
(* C_WR_DEPTH_RDCH = "1024" *) (* C_WR_DEPTH_WACH = "16" *) (* C_WR_DEPTH_WDCH = "1024" *) 
(* C_WR_DEPTH_WRCH = "16" *) (* C_WR_FREQ = "1" *) (* C_WR_PNTR_WIDTH = "9" *) 
(* C_WR_PNTR_WIDTH_AXIS = "10" *) (* C_WR_PNTR_WIDTH_RACH = "4" *) (* C_WR_PNTR_WIDTH_RDCH = "10" *) 
(* C_WR_PNTR_WIDTH_WACH = "4" *) (* C_WR_PNTR_WIDTH_WDCH = "10" *) (* C_WR_PNTR_WIDTH_WRCH = "4" *) 
(* C_WR_RESPONSE_LATENCY = "1" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_1_2
   (backup,
    backup_marker,
    clk,
    rst,
    srst,
    wr_clk,
    wr_rst,
    rd_clk,
    rd_rst,
    din,
    wr_en,
    rd_en,
    prog_empty_thresh,
    prog_empty_thresh_assert,
    prog_empty_thresh_negate,
    prog_full_thresh,
    prog_full_thresh_assert,
    prog_full_thresh_negate,
    int_clk,
    injectdbiterr,
    injectsbiterr,
    sleep,
    dout,
    full,
    almost_full,
    wr_ack,
    overflow,
    empty,
    almost_empty,
    valid,
    underflow,
    data_count,
    rd_data_count,
    wr_data_count,
    prog_full,
    prog_empty,
    sbiterr,
    dbiterr,
    wr_rst_busy,
    rd_rst_busy,
    m_aclk,
    s_aclk,
    s_aresetn,
    m_aclk_en,
    s_aclk_en,
    s_axi_awid,
    s_axi_awaddr,
    s_axi_awlen,
    s_axi_awsize,
    s_axi_awburst,
    s_axi_awlock,
    s_axi_awcache,
    s_axi_awprot,
    s_axi_awqos,
    s_axi_awregion,
    s_axi_awuser,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wid,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wlast,
    s_axi_wuser,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bid,
    s_axi_bresp,
    s_axi_buser,
    s_axi_bvalid,
    s_axi_bready,
    m_axi_awid,
    m_axi_awaddr,
    m_axi_awlen,
    m_axi_awsize,
    m_axi_awburst,
    m_axi_awlock,
    m_axi_awcache,
    m_axi_awprot,
    m_axi_awqos,
    m_axi_awregion,
    m_axi_awuser,
    m_axi_awvalid,
    m_axi_awready,
    m_axi_wid,
    m_axi_wdata,
    m_axi_wstrb,
    m_axi_wlast,
    m_axi_wuser,
    m_axi_wvalid,
    m_axi_wready,
    m_axi_bid,
    m_axi_bresp,
    m_axi_buser,
    m_axi_bvalid,
    m_axi_bready,
    s_axi_arid,
    s_axi_araddr,
    s_axi_arlen,
    s_axi_arsize,
    s_axi_arburst,
    s_axi_arlock,
    s_axi_arcache,
    s_axi_arprot,
    s_axi_arqos,
    s_axi_arregion,
    s_axi_aruser,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rid,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rlast,
    s_axi_ruser,
    s_axi_rvalid,
    s_axi_rready,
    m_axi_arid,
    m_axi_araddr,
    m_axi_arlen,
    m_axi_arsize,
    m_axi_arburst,
    m_axi_arlock,
    m_axi_arcache,
    m_axi_arprot,
    m_axi_arqos,
    m_axi_arregion,
    m_axi_aruser,
    m_axi_arvalid,
    m_axi_arready,
    m_axi_rid,
    m_axi_rdata,
    m_axi_rresp,
    m_axi_rlast,
    m_axi_ruser,
    m_axi_rvalid,
    m_axi_rready,
    s_axis_tvalid,
    s_axis_tready,
    s_axis_tdata,
    s_axis_tstrb,
    s_axis_tkeep,
    s_axis_tlast,
    s_axis_tid,
    s_axis_tdest,
    s_axis_tuser,
    m_axis_tvalid,
    m_axis_tready,
    m_axis_tdata,
    m_axis_tstrb,
    m_axis_tkeep,
    m_axis_tlast,
    m_axis_tid,
    m_axis_tdest,
    m_axis_tuser,
    axi_aw_injectsbiterr,
    axi_aw_injectdbiterr,
    axi_aw_prog_full_thresh,
    axi_aw_prog_empty_thresh,
    axi_aw_data_count,
    axi_aw_wr_data_count,
    axi_aw_rd_data_count,
    axi_aw_sbiterr,
    axi_aw_dbiterr,
    axi_aw_overflow,
    axi_aw_underflow,
    axi_aw_prog_full,
    axi_aw_prog_empty,
    axi_w_injectsbiterr,
    axi_w_injectdbiterr,
    axi_w_prog_full_thresh,
    axi_w_prog_empty_thresh,
    axi_w_data_count,
    axi_w_wr_data_count,
    axi_w_rd_data_count,
    axi_w_sbiterr,
    axi_w_dbiterr,
    axi_w_overflow,
    axi_w_underflow,
    axi_w_prog_full,
    axi_w_prog_empty,
    axi_b_injectsbiterr,
    axi_b_injectdbiterr,
    axi_b_prog_full_thresh,
    axi_b_prog_empty_thresh,
    axi_b_data_count,
    axi_b_wr_data_count,
    axi_b_rd_data_count,
    axi_b_sbiterr,
    axi_b_dbiterr,
    axi_b_overflow,
    axi_b_underflow,
    axi_b_prog_full,
    axi_b_prog_empty,
    axi_ar_injectsbiterr,
    axi_ar_injectdbiterr,
    axi_ar_prog_full_thresh,
    axi_ar_prog_empty_thresh,
    axi_ar_data_count,
    axi_ar_wr_data_count,
    axi_ar_rd_data_count,
    axi_ar_sbiterr,
    axi_ar_dbiterr,
    axi_ar_overflow,
    axi_ar_underflow,
    axi_ar_prog_full,
    axi_ar_prog_empty,
    axi_r_injectsbiterr,
    axi_r_injectdbiterr,
    axi_r_prog_full_thresh,
    axi_r_prog_empty_thresh,
    axi_r_data_count,
    axi_r_wr_data_count,
    axi_r_rd_data_count,
    axi_r_sbiterr,
    axi_r_dbiterr,
    axi_r_overflow,
    axi_r_underflow,
    axi_r_prog_full,
    axi_r_prog_empty,
    axis_injectsbiterr,
    axis_injectdbiterr,
    axis_prog_full_thresh,
    axis_prog_empty_thresh,
    axis_data_count,
    axis_wr_data_count,
    axis_rd_data_count,
    axis_sbiterr,
    axis_dbiterr,
    axis_overflow,
    axis_underflow,
    axis_prog_full,
    axis_prog_empty);
  input backup;
  input backup_marker;
  input clk;
  input rst;
  input srst;
  input wr_clk;
  input wr_rst;
  input rd_clk;
  input rd_rst;
  input [31:0]din;
  input wr_en;
  input rd_en;
  input [8:0]prog_empty_thresh;
  input [8:0]prog_empty_thresh_assert;
  input [8:0]prog_empty_thresh_negate;
  input [8:0]prog_full_thresh;
  input [8:0]prog_full_thresh_assert;
  input [8:0]prog_full_thresh_negate;
  input int_clk;
  input injectdbiterr;
  input injectsbiterr;
  input sleep;
  output [31:0]dout;
  output full;
  output almost_full;
  output wr_ack;
  output overflow;
  output empty;
  output almost_empty;
  output valid;
  output underflow;
  output [8:0]data_count;
  output [8:0]rd_data_count;
  output [8:0]wr_data_count;
  output prog_full;
  output prog_empty;
  output sbiterr;
  output dbiterr;
  output wr_rst_busy;
  output rd_rst_busy;
  input m_aclk;
  input s_aclk;
  input s_aresetn;
  input m_aclk_en;
  input s_aclk_en;
  input [0:0]s_axi_awid;
  input [31:0]s_axi_awaddr;
  input [7:0]s_axi_awlen;
  input [2:0]s_axi_awsize;
  input [1:0]s_axi_awburst;
  input [0:0]s_axi_awlock;
  input [3:0]s_axi_awcache;
  input [2:0]s_axi_awprot;
  input [3:0]s_axi_awqos;
  input [3:0]s_axi_awregion;
  input [0:0]s_axi_awuser;
  input s_axi_awvalid;
  output s_axi_awready;
  input [0:0]s_axi_wid;
  input [63:0]s_axi_wdata;
  input [7:0]s_axi_wstrb;
  input s_axi_wlast;
  input [0:0]s_axi_wuser;
  input s_axi_wvalid;
  output s_axi_wready;
  output [0:0]s_axi_bid;
  output [1:0]s_axi_bresp;
  output [0:0]s_axi_buser;
  output s_axi_bvalid;
  input s_axi_bready;
  output [0:0]m_axi_awid;
  output [31:0]m_axi_awaddr;
  output [7:0]m_axi_awlen;
  output [2:0]m_axi_awsize;
  output [1:0]m_axi_awburst;
  output [0:0]m_axi_awlock;
  output [3:0]m_axi_awcache;
  output [2:0]m_axi_awprot;
  output [3:0]m_axi_awqos;
  output [3:0]m_axi_awregion;
  output [0:0]m_axi_awuser;
  output m_axi_awvalid;
  input m_axi_awready;
  output [0:0]m_axi_wid;
  output [63:0]m_axi_wdata;
  output [7:0]m_axi_wstrb;
  output m_axi_wlast;
  output [0:0]m_axi_wuser;
  output m_axi_wvalid;
  input m_axi_wready;
  input [0:0]m_axi_bid;
  input [1:0]m_axi_bresp;
  input [0:0]m_axi_buser;
  input m_axi_bvalid;
  output m_axi_bready;
  input [0:0]s_axi_arid;
  input [31:0]s_axi_araddr;
  input [7:0]s_axi_arlen;
  input [2:0]s_axi_arsize;
  input [1:0]s_axi_arburst;
  input [0:0]s_axi_arlock;
  input [3:0]s_axi_arcache;
  input [2:0]s_axi_arprot;
  input [3:0]s_axi_arqos;
  input [3:0]s_axi_arregion;
  input [0:0]s_axi_aruser;
  input s_axi_arvalid;
  output s_axi_arready;
  output [0:0]s_axi_rid;
  output [63:0]s_axi_rdata;
  output [1:0]s_axi_rresp;
  output s_axi_rlast;
  output [0:0]s_axi_ruser;
  output s_axi_rvalid;
  input s_axi_rready;
  output [0:0]m_axi_arid;
  output [31:0]m_axi_araddr;
  output [7:0]m_axi_arlen;
  output [2:0]m_axi_arsize;
  output [1:0]m_axi_arburst;
  output [0:0]m_axi_arlock;
  output [3:0]m_axi_arcache;
  output [2:0]m_axi_arprot;
  output [3:0]m_axi_arqos;
  output [3:0]m_axi_arregion;
  output [0:0]m_axi_aruser;
  output m_axi_arvalid;
  input m_axi_arready;
  input [0:0]m_axi_rid;
  input [63:0]m_axi_rdata;
  input [1:0]m_axi_rresp;
  input m_axi_rlast;
  input [0:0]m_axi_ruser;
  input m_axi_rvalid;
  output m_axi_rready;
  input s_axis_tvalid;
  output s_axis_tready;
  input [7:0]s_axis_tdata;
  input [0:0]s_axis_tstrb;
  input [0:0]s_axis_tkeep;
  input s_axis_tlast;
  input [0:0]s_axis_tid;
  input [0:0]s_axis_tdest;
  input [3:0]s_axis_tuser;
  output m_axis_tvalid;
  input m_axis_tready;
  output [7:0]m_axis_tdata;
  output [0:0]m_axis_tstrb;
  output [0:0]m_axis_tkeep;
  output m_axis_tlast;
  output [0:0]m_axis_tid;
  output [0:0]m_axis_tdest;
  output [3:0]m_axis_tuser;
  input axi_aw_injectsbiterr;
  input axi_aw_injectdbiterr;
  input [3:0]axi_aw_prog_full_thresh;
  input [3:0]axi_aw_prog_empty_thresh;
  output [4:0]axi_aw_data_count;
  output [4:0]axi_aw_wr_data_count;
  output [4:0]axi_aw_rd_data_count;
  output axi_aw_sbiterr;
  output axi_aw_dbiterr;
  output axi_aw_overflow;
  output axi_aw_underflow;
  output axi_aw_prog_full;
  output axi_aw_prog_empty;
  input axi_w_injectsbiterr;
  input axi_w_injectdbiterr;
  input [9:0]axi_w_prog_full_thresh;
  input [9:0]axi_w_prog_empty_thresh;
  output [10:0]axi_w_data_count;
  output [10:0]axi_w_wr_data_count;
  output [10:0]axi_w_rd_data_count;
  output axi_w_sbiterr;
  output axi_w_dbiterr;
  output axi_w_overflow;
  output axi_w_underflow;
  output axi_w_prog_full;
  output axi_w_prog_empty;
  input axi_b_injectsbiterr;
  input axi_b_injectdbiterr;
  input [3:0]axi_b_prog_full_thresh;
  input [3:0]axi_b_prog_empty_thresh;
  output [4:0]axi_b_data_count;
  output [4:0]axi_b_wr_data_count;
  output [4:0]axi_b_rd_data_count;
  output axi_b_sbiterr;
  output axi_b_dbiterr;
  output axi_b_overflow;
  output axi_b_underflow;
  output axi_b_prog_full;
  output axi_b_prog_empty;
  input axi_ar_injectsbiterr;
  input axi_ar_injectdbiterr;
  input [3:0]axi_ar_prog_full_thresh;
  input [3:0]axi_ar_prog_empty_thresh;
  output [4:0]axi_ar_data_count;
  output [4:0]axi_ar_wr_data_count;
  output [4:0]axi_ar_rd_data_count;
  output axi_ar_sbiterr;
  output axi_ar_dbiterr;
  output axi_ar_overflow;
  output axi_ar_underflow;
  output axi_ar_prog_full;
  output axi_ar_prog_empty;
  input axi_r_injectsbiterr;
  input axi_r_injectdbiterr;
  input [9:0]axi_r_prog_full_thresh;
  input [9:0]axi_r_prog_empty_thresh;
  output [10:0]axi_r_data_count;
  output [10:0]axi_r_wr_data_count;
  output [10:0]axi_r_rd_data_count;
  output axi_r_sbiterr;
  output axi_r_dbiterr;
  output axi_r_overflow;
  output axi_r_underflow;
  output axi_r_prog_full;
  output axi_r_prog_empty;
  input axis_injectsbiterr;
  input axis_injectdbiterr;
  input [9:0]axis_prog_full_thresh;
  input [9:0]axis_prog_empty_thresh;
  output [10:0]axis_data_count;
  output [10:0]axis_wr_data_count;
  output [10:0]axis_rd_data_count;
  output axis_sbiterr;
  output axis_dbiterr;
  output axis_overflow;
  output axis_underflow;
  output axis_prog_full;
  output axis_prog_empty;

  wire \<const0> ;
  wire \<const1> ;
  wire [31:0]din;
  wire [31:0]dout;
  wire empty;
  wire full;
  wire prog_full;
  wire rd_clk;
  wire rd_en;
  wire rst;
  wire wr_clk;
  wire wr_en;
  wire wr_rst_busy;

  assign almost_empty = \<const0> ;
  assign almost_full = \<const0> ;
  assign axi_ar_data_count[4] = \<const0> ;
  assign axi_ar_data_count[3] = \<const0> ;
  assign axi_ar_data_count[2] = \<const0> ;
  assign axi_ar_data_count[1] = \<const0> ;
  assign axi_ar_data_count[0] = \<const0> ;
  assign axi_ar_dbiterr = \<const0> ;
  assign axi_ar_overflow = \<const0> ;
  assign axi_ar_prog_empty = \<const1> ;
  assign axi_ar_prog_full = \<const0> ;
  assign axi_ar_rd_data_count[4] = \<const0> ;
  assign axi_ar_rd_data_count[3] = \<const0> ;
  assign axi_ar_rd_data_count[2] = \<const0> ;
  assign axi_ar_rd_data_count[1] = \<const0> ;
  assign axi_ar_rd_data_count[0] = \<const0> ;
  assign axi_ar_sbiterr = \<const0> ;
  assign axi_ar_underflow = \<const0> ;
  assign axi_ar_wr_data_count[4] = \<const0> ;
  assign axi_ar_wr_data_count[3] = \<const0> ;
  assign axi_ar_wr_data_count[2] = \<const0> ;
  assign axi_ar_wr_data_count[1] = \<const0> ;
  assign axi_ar_wr_data_count[0] = \<const0> ;
  assign axi_aw_data_count[4] = \<const0> ;
  assign axi_aw_data_count[3] = \<const0> ;
  assign axi_aw_data_count[2] = \<const0> ;
  assign axi_aw_data_count[1] = \<const0> ;
  assign axi_aw_data_count[0] = \<const0> ;
  assign axi_aw_dbiterr = \<const0> ;
  assign axi_aw_overflow = \<const0> ;
  assign axi_aw_prog_empty = \<const1> ;
  assign axi_aw_prog_full = \<const0> ;
  assign axi_aw_rd_data_count[4] = \<const0> ;
  assign axi_aw_rd_data_count[3] = \<const0> ;
  assign axi_aw_rd_data_count[2] = \<const0> ;
  assign axi_aw_rd_data_count[1] = \<const0> ;
  assign axi_aw_rd_data_count[0] = \<const0> ;
  assign axi_aw_sbiterr = \<const0> ;
  assign axi_aw_underflow = \<const0> ;
  assign axi_aw_wr_data_count[4] = \<const0> ;
  assign axi_aw_wr_data_count[3] = \<const0> ;
  assign axi_aw_wr_data_count[2] = \<const0> ;
  assign axi_aw_wr_data_count[1] = \<const0> ;
  assign axi_aw_wr_data_count[0] = \<const0> ;
  assign axi_b_data_count[4] = \<const0> ;
  assign axi_b_data_count[3] = \<const0> ;
  assign axi_b_data_count[2] = \<const0> ;
  assign axi_b_data_count[1] = \<const0> ;
  assign axi_b_data_count[0] = \<const0> ;
  assign axi_b_dbiterr = \<const0> ;
  assign axi_b_overflow = \<const0> ;
  assign axi_b_prog_empty = \<const1> ;
  assign axi_b_prog_full = \<const0> ;
  assign axi_b_rd_data_count[4] = \<const0> ;
  assign axi_b_rd_data_count[3] = \<const0> ;
  assign axi_b_rd_data_count[2] = \<const0> ;
  assign axi_b_rd_data_count[1] = \<const0> ;
  assign axi_b_rd_data_count[0] = \<const0> ;
  assign axi_b_sbiterr = \<const0> ;
  assign axi_b_underflow = \<const0> ;
  assign axi_b_wr_data_count[4] = \<const0> ;
  assign axi_b_wr_data_count[3] = \<const0> ;
  assign axi_b_wr_data_count[2] = \<const0> ;
  assign axi_b_wr_data_count[1] = \<const0> ;
  assign axi_b_wr_data_count[0] = \<const0> ;
  assign axi_r_data_count[10] = \<const0> ;
  assign axi_r_data_count[9] = \<const0> ;
  assign axi_r_data_count[8] = \<const0> ;
  assign axi_r_data_count[7] = \<const0> ;
  assign axi_r_data_count[6] = \<const0> ;
  assign axi_r_data_count[5] = \<const0> ;
  assign axi_r_data_count[4] = \<const0> ;
  assign axi_r_data_count[3] = \<const0> ;
  assign axi_r_data_count[2] = \<const0> ;
  assign axi_r_data_count[1] = \<const0> ;
  assign axi_r_data_count[0] = \<const0> ;
  assign axi_r_dbiterr = \<const0> ;
  assign axi_r_overflow = \<const0> ;
  assign axi_r_prog_empty = \<const1> ;
  assign axi_r_prog_full = \<const0> ;
  assign axi_r_rd_data_count[10] = \<const0> ;
  assign axi_r_rd_data_count[9] = \<const0> ;
  assign axi_r_rd_data_count[8] = \<const0> ;
  assign axi_r_rd_data_count[7] = \<const0> ;
  assign axi_r_rd_data_count[6] = \<const0> ;
  assign axi_r_rd_data_count[5] = \<const0> ;
  assign axi_r_rd_data_count[4] = \<const0> ;
  assign axi_r_rd_data_count[3] = \<const0> ;
  assign axi_r_rd_data_count[2] = \<const0> ;
  assign axi_r_rd_data_count[1] = \<const0> ;
  assign axi_r_rd_data_count[0] = \<const0> ;
  assign axi_r_sbiterr = \<const0> ;
  assign axi_r_underflow = \<const0> ;
  assign axi_r_wr_data_count[10] = \<const0> ;
  assign axi_r_wr_data_count[9] = \<const0> ;
  assign axi_r_wr_data_count[8] = \<const0> ;
  assign axi_r_wr_data_count[7] = \<const0> ;
  assign axi_r_wr_data_count[6] = \<const0> ;
  assign axi_r_wr_data_count[5] = \<const0> ;
  assign axi_r_wr_data_count[4] = \<const0> ;
  assign axi_r_wr_data_count[3] = \<const0> ;
  assign axi_r_wr_data_count[2] = \<const0> ;
  assign axi_r_wr_data_count[1] = \<const0> ;
  assign axi_r_wr_data_count[0] = \<const0> ;
  assign axi_w_data_count[10] = \<const0> ;
  assign axi_w_data_count[9] = \<const0> ;
  assign axi_w_data_count[8] = \<const0> ;
  assign axi_w_data_count[7] = \<const0> ;
  assign axi_w_data_count[6] = \<const0> ;
  assign axi_w_data_count[5] = \<const0> ;
  assign axi_w_data_count[4] = \<const0> ;
  assign axi_w_data_count[3] = \<const0> ;
  assign axi_w_data_count[2] = \<const0> ;
  assign axi_w_data_count[1] = \<const0> ;
  assign axi_w_data_count[0] = \<const0> ;
  assign axi_w_dbiterr = \<const0> ;
  assign axi_w_overflow = \<const0> ;
  assign axi_w_prog_empty = \<const1> ;
  assign axi_w_prog_full = \<const0> ;
  assign axi_w_rd_data_count[10] = \<const0> ;
  assign axi_w_rd_data_count[9] = \<const0> ;
  assign axi_w_rd_data_count[8] = \<const0> ;
  assign axi_w_rd_data_count[7] = \<const0> ;
  assign axi_w_rd_data_count[6] = \<const0> ;
  assign axi_w_rd_data_count[5] = \<const0> ;
  assign axi_w_rd_data_count[4] = \<const0> ;
  assign axi_w_rd_data_count[3] = \<const0> ;
  assign axi_w_rd_data_count[2] = \<const0> ;
  assign axi_w_rd_data_count[1] = \<const0> ;
  assign axi_w_rd_data_count[0] = \<const0> ;
  assign axi_w_sbiterr = \<const0> ;
  assign axi_w_underflow = \<const0> ;
  assign axi_w_wr_data_count[10] = \<const0> ;
  assign axi_w_wr_data_count[9] = \<const0> ;
  assign axi_w_wr_data_count[8] = \<const0> ;
  assign axi_w_wr_data_count[7] = \<const0> ;
  assign axi_w_wr_data_count[6] = \<const0> ;
  assign axi_w_wr_data_count[5] = \<const0> ;
  assign axi_w_wr_data_count[4] = \<const0> ;
  assign axi_w_wr_data_count[3] = \<const0> ;
  assign axi_w_wr_data_count[2] = \<const0> ;
  assign axi_w_wr_data_count[1] = \<const0> ;
  assign axi_w_wr_data_count[0] = \<const0> ;
  assign axis_data_count[10] = \<const0> ;
  assign axis_data_count[9] = \<const0> ;
  assign axis_data_count[8] = \<const0> ;
  assign axis_data_count[7] = \<const0> ;
  assign axis_data_count[6] = \<const0> ;
  assign axis_data_count[5] = \<const0> ;
  assign axis_data_count[4] = \<const0> ;
  assign axis_data_count[3] = \<const0> ;
  assign axis_data_count[2] = \<const0> ;
  assign axis_data_count[1] = \<const0> ;
  assign axis_data_count[0] = \<const0> ;
  assign axis_dbiterr = \<const0> ;
  assign axis_overflow = \<const0> ;
  assign axis_prog_empty = \<const1> ;
  assign axis_prog_full = \<const0> ;
  assign axis_rd_data_count[10] = \<const0> ;
  assign axis_rd_data_count[9] = \<const0> ;
  assign axis_rd_data_count[8] = \<const0> ;
  assign axis_rd_data_count[7] = \<const0> ;
  assign axis_rd_data_count[6] = \<const0> ;
  assign axis_rd_data_count[5] = \<const0> ;
  assign axis_rd_data_count[4] = \<const0> ;
  assign axis_rd_data_count[3] = \<const0> ;
  assign axis_rd_data_count[2] = \<const0> ;
  assign axis_rd_data_count[1] = \<const0> ;
  assign axis_rd_data_count[0] = \<const0> ;
  assign axis_sbiterr = \<const0> ;
  assign axis_underflow = \<const0> ;
  assign axis_wr_data_count[10] = \<const0> ;
  assign axis_wr_data_count[9] = \<const0> ;
  assign axis_wr_data_count[8] = \<const0> ;
  assign axis_wr_data_count[7] = \<const0> ;
  assign axis_wr_data_count[6] = \<const0> ;
  assign axis_wr_data_count[5] = \<const0> ;
  assign axis_wr_data_count[4] = \<const0> ;
  assign axis_wr_data_count[3] = \<const0> ;
  assign axis_wr_data_count[2] = \<const0> ;
  assign axis_wr_data_count[1] = \<const0> ;
  assign axis_wr_data_count[0] = \<const0> ;
  assign data_count[8] = \<const0> ;
  assign data_count[7] = \<const0> ;
  assign data_count[6] = \<const0> ;
  assign data_count[5] = \<const0> ;
  assign data_count[4] = \<const0> ;
  assign data_count[3] = \<const0> ;
  assign data_count[2] = \<const0> ;
  assign data_count[1] = \<const0> ;
  assign data_count[0] = \<const0> ;
  assign dbiterr = \<const0> ;
  assign m_axi_araddr[31] = \<const0> ;
  assign m_axi_araddr[30] = \<const0> ;
  assign m_axi_araddr[29] = \<const0> ;
  assign m_axi_araddr[28] = \<const0> ;
  assign m_axi_araddr[27] = \<const0> ;
  assign m_axi_araddr[26] = \<const0> ;
  assign m_axi_araddr[25] = \<const0> ;
  assign m_axi_araddr[24] = \<const0> ;
  assign m_axi_araddr[23] = \<const0> ;
  assign m_axi_araddr[22] = \<const0> ;
  assign m_axi_araddr[21] = \<const0> ;
  assign m_axi_araddr[20] = \<const0> ;
  assign m_axi_araddr[19] = \<const0> ;
  assign m_axi_araddr[18] = \<const0> ;
  assign m_axi_araddr[17] = \<const0> ;
  assign m_axi_araddr[16] = \<const0> ;
  assign m_axi_araddr[15] = \<const0> ;
  assign m_axi_araddr[14] = \<const0> ;
  assign m_axi_araddr[13] = \<const0> ;
  assign m_axi_araddr[12] = \<const0> ;
  assign m_axi_araddr[11] = \<const0> ;
  assign m_axi_araddr[10] = \<const0> ;
  assign m_axi_araddr[9] = \<const0> ;
  assign m_axi_araddr[8] = \<const0> ;
  assign m_axi_araddr[7] = \<const0> ;
  assign m_axi_araddr[6] = \<const0> ;
  assign m_axi_araddr[5] = \<const0> ;
  assign m_axi_araddr[4] = \<const0> ;
  assign m_axi_araddr[3] = \<const0> ;
  assign m_axi_araddr[2] = \<const0> ;
  assign m_axi_araddr[1] = \<const0> ;
  assign m_axi_araddr[0] = \<const0> ;
  assign m_axi_arburst[1] = \<const0> ;
  assign m_axi_arburst[0] = \<const0> ;
  assign m_axi_arcache[3] = \<const0> ;
  assign m_axi_arcache[2] = \<const0> ;
  assign m_axi_arcache[1] = \<const0> ;
  assign m_axi_arcache[0] = \<const0> ;
  assign m_axi_arid[0] = \<const0> ;
  assign m_axi_arlen[7] = \<const0> ;
  assign m_axi_arlen[6] = \<const0> ;
  assign m_axi_arlen[5] = \<const0> ;
  assign m_axi_arlen[4] = \<const0> ;
  assign m_axi_arlen[3] = \<const0> ;
  assign m_axi_arlen[2] = \<const0> ;
  assign m_axi_arlen[1] = \<const0> ;
  assign m_axi_arlen[0] = \<const0> ;
  assign m_axi_arlock[0] = \<const0> ;
  assign m_axi_arprot[2] = \<const0> ;
  assign m_axi_arprot[1] = \<const0> ;
  assign m_axi_arprot[0] = \<const0> ;
  assign m_axi_arqos[3] = \<const0> ;
  assign m_axi_arqos[2] = \<const0> ;
  assign m_axi_arqos[1] = \<const0> ;
  assign m_axi_arqos[0] = \<const0> ;
  assign m_axi_arregion[3] = \<const0> ;
  assign m_axi_arregion[2] = \<const0> ;
  assign m_axi_arregion[1] = \<const0> ;
  assign m_axi_arregion[0] = \<const0> ;
  assign m_axi_arsize[2] = \<const0> ;
  assign m_axi_arsize[1] = \<const0> ;
  assign m_axi_arsize[0] = \<const0> ;
  assign m_axi_aruser[0] = \<const0> ;
  assign m_axi_arvalid = \<const0> ;
  assign m_axi_awaddr[31] = \<const0> ;
  assign m_axi_awaddr[30] = \<const0> ;
  assign m_axi_awaddr[29] = \<const0> ;
  assign m_axi_awaddr[28] = \<const0> ;
  assign m_axi_awaddr[27] = \<const0> ;
  assign m_axi_awaddr[26] = \<const0> ;
  assign m_axi_awaddr[25] = \<const0> ;
  assign m_axi_awaddr[24] = \<const0> ;
  assign m_axi_awaddr[23] = \<const0> ;
  assign m_axi_awaddr[22] = \<const0> ;
  assign m_axi_awaddr[21] = \<const0> ;
  assign m_axi_awaddr[20] = \<const0> ;
  assign m_axi_awaddr[19] = \<const0> ;
  assign m_axi_awaddr[18] = \<const0> ;
  assign m_axi_awaddr[17] = \<const0> ;
  assign m_axi_awaddr[16] = \<const0> ;
  assign m_axi_awaddr[15] = \<const0> ;
  assign m_axi_awaddr[14] = \<const0> ;
  assign m_axi_awaddr[13] = \<const0> ;
  assign m_axi_awaddr[12] = \<const0> ;
  assign m_axi_awaddr[11] = \<const0> ;
  assign m_axi_awaddr[10] = \<const0> ;
  assign m_axi_awaddr[9] = \<const0> ;
  assign m_axi_awaddr[8] = \<const0> ;
  assign m_axi_awaddr[7] = \<const0> ;
  assign m_axi_awaddr[6] = \<const0> ;
  assign m_axi_awaddr[5] = \<const0> ;
  assign m_axi_awaddr[4] = \<const0> ;
  assign m_axi_awaddr[3] = \<const0> ;
  assign m_axi_awaddr[2] = \<const0> ;
  assign m_axi_awaddr[1] = \<const0> ;
  assign m_axi_awaddr[0] = \<const0> ;
  assign m_axi_awburst[1] = \<const0> ;
  assign m_axi_awburst[0] = \<const0> ;
  assign m_axi_awcache[3] = \<const0> ;
  assign m_axi_awcache[2] = \<const0> ;
  assign m_axi_awcache[1] = \<const0> ;
  assign m_axi_awcache[0] = \<const0> ;
  assign m_axi_awid[0] = \<const0> ;
  assign m_axi_awlen[7] = \<const0> ;
  assign m_axi_awlen[6] = \<const0> ;
  assign m_axi_awlen[5] = \<const0> ;
  assign m_axi_awlen[4] = \<const0> ;
  assign m_axi_awlen[3] = \<const0> ;
  assign m_axi_awlen[2] = \<const0> ;
  assign m_axi_awlen[1] = \<const0> ;
  assign m_axi_awlen[0] = \<const0> ;
  assign m_axi_awlock[0] = \<const0> ;
  assign m_axi_awprot[2] = \<const0> ;
  assign m_axi_awprot[1] = \<const0> ;
  assign m_axi_awprot[0] = \<const0> ;
  assign m_axi_awqos[3] = \<const0> ;
  assign m_axi_awqos[2] = \<const0> ;
  assign m_axi_awqos[1] = \<const0> ;
  assign m_axi_awqos[0] = \<const0> ;
  assign m_axi_awregion[3] = \<const0> ;
  assign m_axi_awregion[2] = \<const0> ;
  assign m_axi_awregion[1] = \<const0> ;
  assign m_axi_awregion[0] = \<const0> ;
  assign m_axi_awsize[2] = \<const0> ;
  assign m_axi_awsize[1] = \<const0> ;
  assign m_axi_awsize[0] = \<const0> ;
  assign m_axi_awuser[0] = \<const0> ;
  assign m_axi_awvalid = \<const0> ;
  assign m_axi_bready = \<const0> ;
  assign m_axi_rready = \<const0> ;
  assign m_axi_wdata[63] = \<const0> ;
  assign m_axi_wdata[62] = \<const0> ;
  assign m_axi_wdata[61] = \<const0> ;
  assign m_axi_wdata[60] = \<const0> ;
  assign m_axi_wdata[59] = \<const0> ;
  assign m_axi_wdata[58] = \<const0> ;
  assign m_axi_wdata[57] = \<const0> ;
  assign m_axi_wdata[56] = \<const0> ;
  assign m_axi_wdata[55] = \<const0> ;
  assign m_axi_wdata[54] = \<const0> ;
  assign m_axi_wdata[53] = \<const0> ;
  assign m_axi_wdata[52] = \<const0> ;
  assign m_axi_wdata[51] = \<const0> ;
  assign m_axi_wdata[50] = \<const0> ;
  assign m_axi_wdata[49] = \<const0> ;
  assign m_axi_wdata[48] = \<const0> ;
  assign m_axi_wdata[47] = \<const0> ;
  assign m_axi_wdata[46] = \<const0> ;
  assign m_axi_wdata[45] = \<const0> ;
  assign m_axi_wdata[44] = \<const0> ;
  assign m_axi_wdata[43] = \<const0> ;
  assign m_axi_wdata[42] = \<const0> ;
  assign m_axi_wdata[41] = \<const0> ;
  assign m_axi_wdata[40] = \<const0> ;
  assign m_axi_wdata[39] = \<const0> ;
  assign m_axi_wdata[38] = \<const0> ;
  assign m_axi_wdata[37] = \<const0> ;
  assign m_axi_wdata[36] = \<const0> ;
  assign m_axi_wdata[35] = \<const0> ;
  assign m_axi_wdata[34] = \<const0> ;
  assign m_axi_wdata[33] = \<const0> ;
  assign m_axi_wdata[32] = \<const0> ;
  assign m_axi_wdata[31] = \<const0> ;
  assign m_axi_wdata[30] = \<const0> ;
  assign m_axi_wdata[29] = \<const0> ;
  assign m_axi_wdata[28] = \<const0> ;
  assign m_axi_wdata[27] = \<const0> ;
  assign m_axi_wdata[26] = \<const0> ;
  assign m_axi_wdata[25] = \<const0> ;
  assign m_axi_wdata[24] = \<const0> ;
  assign m_axi_wdata[23] = \<const0> ;
  assign m_axi_wdata[22] = \<const0> ;
  assign m_axi_wdata[21] = \<const0> ;
  assign m_axi_wdata[20] = \<const0> ;
  assign m_axi_wdata[19] = \<const0> ;
  assign m_axi_wdata[18] = \<const0> ;
  assign m_axi_wdata[17] = \<const0> ;
  assign m_axi_wdata[16] = \<const0> ;
  assign m_axi_wdata[15] = \<const0> ;
  assign m_axi_wdata[14] = \<const0> ;
  assign m_axi_wdata[13] = \<const0> ;
  assign m_axi_wdata[12] = \<const0> ;
  assign m_axi_wdata[11] = \<const0> ;
  assign m_axi_wdata[10] = \<const0> ;
  assign m_axi_wdata[9] = \<const0> ;
  assign m_axi_wdata[8] = \<const0> ;
  assign m_axi_wdata[7] = \<const0> ;
  assign m_axi_wdata[6] = \<const0> ;
  assign m_axi_wdata[5] = \<const0> ;
  assign m_axi_wdata[4] = \<const0> ;
  assign m_axi_wdata[3] = \<const0> ;
  assign m_axi_wdata[2] = \<const0> ;
  assign m_axi_wdata[1] = \<const0> ;
  assign m_axi_wdata[0] = \<const0> ;
  assign m_axi_wid[0] = \<const0> ;
  assign m_axi_wlast = \<const0> ;
  assign m_axi_wstrb[7] = \<const0> ;
  assign m_axi_wstrb[6] = \<const0> ;
  assign m_axi_wstrb[5] = \<const0> ;
  assign m_axi_wstrb[4] = \<const0> ;
  assign m_axi_wstrb[3] = \<const0> ;
  assign m_axi_wstrb[2] = \<const0> ;
  assign m_axi_wstrb[1] = \<const0> ;
  assign m_axi_wstrb[0] = \<const0> ;
  assign m_axi_wuser[0] = \<const0> ;
  assign m_axi_wvalid = \<const0> ;
  assign m_axis_tdata[7] = \<const0> ;
  assign m_axis_tdata[6] = \<const0> ;
  assign m_axis_tdata[5] = \<const0> ;
  assign m_axis_tdata[4] = \<const0> ;
  assign m_axis_tdata[3] = \<const0> ;
  assign m_axis_tdata[2] = \<const0> ;
  assign m_axis_tdata[1] = \<const0> ;
  assign m_axis_tdata[0] = \<const0> ;
  assign m_axis_tdest[0] = \<const0> ;
  assign m_axis_tid[0] = \<const0> ;
  assign m_axis_tkeep[0] = \<const0> ;
  assign m_axis_tlast = \<const0> ;
  assign m_axis_tstrb[0] = \<const0> ;
  assign m_axis_tuser[3] = \<const0> ;
  assign m_axis_tuser[2] = \<const0> ;
  assign m_axis_tuser[1] = \<const0> ;
  assign m_axis_tuser[0] = \<const0> ;
  assign m_axis_tvalid = \<const0> ;
  assign overflow = \<const0> ;
  assign prog_empty = \<const0> ;
  assign rd_data_count[8] = \<const0> ;
  assign rd_data_count[7] = \<const0> ;
  assign rd_data_count[6] = \<const0> ;
  assign rd_data_count[5] = \<const0> ;
  assign rd_data_count[4] = \<const0> ;
  assign rd_data_count[3] = \<const0> ;
  assign rd_data_count[2] = \<const0> ;
  assign rd_data_count[1] = \<const0> ;
  assign rd_data_count[0] = \<const0> ;
  assign rd_rst_busy = \<const0> ;
  assign s_axi_arready = \<const0> ;
  assign s_axi_awready = \<const0> ;
  assign s_axi_bid[0] = \<const0> ;
  assign s_axi_bresp[1] = \<const0> ;
  assign s_axi_bresp[0] = \<const0> ;
  assign s_axi_buser[0] = \<const0> ;
  assign s_axi_bvalid = \<const0> ;
  assign s_axi_rdata[63] = \<const0> ;
  assign s_axi_rdata[62] = \<const0> ;
  assign s_axi_rdata[61] = \<const0> ;
  assign s_axi_rdata[60] = \<const0> ;
  assign s_axi_rdata[59] = \<const0> ;
  assign s_axi_rdata[58] = \<const0> ;
  assign s_axi_rdata[57] = \<const0> ;
  assign s_axi_rdata[56] = \<const0> ;
  assign s_axi_rdata[55] = \<const0> ;
  assign s_axi_rdata[54] = \<const0> ;
  assign s_axi_rdata[53] = \<const0> ;
  assign s_axi_rdata[52] = \<const0> ;
  assign s_axi_rdata[51] = \<const0> ;
  assign s_axi_rdata[50] = \<const0> ;
  assign s_axi_rdata[49] = \<const0> ;
  assign s_axi_rdata[48] = \<const0> ;
  assign s_axi_rdata[47] = \<const0> ;
  assign s_axi_rdata[46] = \<const0> ;
  assign s_axi_rdata[45] = \<const0> ;
  assign s_axi_rdata[44] = \<const0> ;
  assign s_axi_rdata[43] = \<const0> ;
  assign s_axi_rdata[42] = \<const0> ;
  assign s_axi_rdata[41] = \<const0> ;
  assign s_axi_rdata[40] = \<const0> ;
  assign s_axi_rdata[39] = \<const0> ;
  assign s_axi_rdata[38] = \<const0> ;
  assign s_axi_rdata[37] = \<const0> ;
  assign s_axi_rdata[36] = \<const0> ;
  assign s_axi_rdata[35] = \<const0> ;
  assign s_axi_rdata[34] = \<const0> ;
  assign s_axi_rdata[33] = \<const0> ;
  assign s_axi_rdata[32] = \<const0> ;
  assign s_axi_rdata[31] = \<const0> ;
  assign s_axi_rdata[30] = \<const0> ;
  assign s_axi_rdata[29] = \<const0> ;
  assign s_axi_rdata[28] = \<const0> ;
  assign s_axi_rdata[27] = \<const0> ;
  assign s_axi_rdata[26] = \<const0> ;
  assign s_axi_rdata[25] = \<const0> ;
  assign s_axi_rdata[24] = \<const0> ;
  assign s_axi_rdata[23] = \<const0> ;
  assign s_axi_rdata[22] = \<const0> ;
  assign s_axi_rdata[21] = \<const0> ;
  assign s_axi_rdata[20] = \<const0> ;
  assign s_axi_rdata[19] = \<const0> ;
  assign s_axi_rdata[18] = \<const0> ;
  assign s_axi_rdata[17] = \<const0> ;
  assign s_axi_rdata[16] = \<const0> ;
  assign s_axi_rdata[15] = \<const0> ;
  assign s_axi_rdata[14] = \<const0> ;
  assign s_axi_rdata[13] = \<const0> ;
  assign s_axi_rdata[12] = \<const0> ;
  assign s_axi_rdata[11] = \<const0> ;
  assign s_axi_rdata[10] = \<const0> ;
  assign s_axi_rdata[9] = \<const0> ;
  assign s_axi_rdata[8] = \<const0> ;
  assign s_axi_rdata[7] = \<const0> ;
  assign s_axi_rdata[6] = \<const0> ;
  assign s_axi_rdata[5] = \<const0> ;
  assign s_axi_rdata[4] = \<const0> ;
  assign s_axi_rdata[3] = \<const0> ;
  assign s_axi_rdata[2] = \<const0> ;
  assign s_axi_rdata[1] = \<const0> ;
  assign s_axi_rdata[0] = \<const0> ;
  assign s_axi_rid[0] = \<const0> ;
  assign s_axi_rlast = \<const0> ;
  assign s_axi_rresp[1] = \<const0> ;
  assign s_axi_rresp[0] = \<const0> ;
  assign s_axi_ruser[0] = \<const0> ;
  assign s_axi_rvalid = \<const0> ;
  assign s_axi_wready = \<const0> ;
  assign s_axis_tready = \<const0> ;
  assign sbiterr = \<const0> ;
  assign underflow = \<const0> ;
  assign valid = \<const0> ;
  assign wr_ack = \<const0> ;
  assign wr_data_count[8] = \<const0> ;
  assign wr_data_count[7] = \<const0> ;
  assign wr_data_count[6] = \<const0> ;
  assign wr_data_count[5] = \<const0> ;
  assign wr_data_count[4] = \<const0> ;
  assign wr_data_count[3] = \<const0> ;
  assign wr_data_count[2] = \<const0> ;
  assign wr_data_count[1] = \<const0> ;
  assign wr_data_count[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_1_2_synth inst_fifo_gen
       (.din(din),
        .dout(dout),
        .empty(empty),
        .full(full),
        .prog_full(prog_full),
        .rd_clk(rd_clk),
        .rd_en(rd_en),
        .rst(rst),
        .wr_clk(wr_clk),
        .wr_en(wr_en),
        .wr_rst_busy(wr_rst_busy));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_1_2_synth
   (wr_rst_busy,
    empty,
    full,
    dout,
    prog_full,
    rd_en,
    wr_en,
    wr_clk,
    rd_clk,
    rst,
    din);
  output wr_rst_busy;
  output empty;
  output full;
  output [31:0]dout;
  output prog_full;
  input rd_en;
  input wr_en;
  input wr_clk;
  input rd_clk;
  input rst;
  input [31:0]din;

  wire [31:0]din;
  wire [31:0]dout;
  wire empty;
  wire full;
  wire prog_full;
  wire rd_clk;
  wire rd_en;
  wire rst;
  wire wr_clk;
  wire wr_en;
  wire wr_rst_busy;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_top \gconvfifo.rf 
       (.din(din),
        .dout(dout),
        .empty(empty),
        .full(full),
        .prog_full(prog_full),
        .rd_clk(rd_clk),
        .rd_en(rd_en),
        .rst(rst),
        .wr_clk(wr_clk),
        .wr_en(wr_en),
        .wr_rst_busy(wr_rst_busy));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_memory
   (dout,
    wr_clk,
    din,
    Q,
    \gic0.gc0.count_d2_reg[5] ,
    ram_full_fb_i_reg,
    \gic0.gc0.count_d2_reg[7] ,
    \gic0.gc0.count_d2_reg[6] ,
    ram_full_fb_i_reg_0,
    \gic0.gc0.count_d2_reg[6]_0 ,
    ram_full_fb_i_reg_1,
    ram_full_fb_i_reg_2,
    \gic0.gc0.count_d2_reg[8] ,
    ADDRG,
    E,
    rd_clk,
    AR);
  output [31:0]dout;
  input wr_clk;
  input [31:0]din;
  input [8:0]Q;
  input [5:0]\gic0.gc0.count_d2_reg[5] ;
  input ram_full_fb_i_reg;
  input \gic0.gc0.count_d2_reg[7] ;
  input \gic0.gc0.count_d2_reg[6] ;
  input ram_full_fb_i_reg_0;
  input \gic0.gc0.count_d2_reg[6]_0 ;
  input ram_full_fb_i_reg_1;
  input ram_full_fb_i_reg_2;
  input \gic0.gc0.count_d2_reg[8] ;
  input [5:0]ADDRG;
  input [0:0]E;
  input rd_clk;
  input [0:0]AR;

  wire [5:0]ADDRG;
  wire [0:0]AR;
  wire [0:0]E;
  wire [8:0]Q;
  wire [31:0]din;
  wire [31:0]dout;
  wire [5:0]\gic0.gc0.count_d2_reg[5] ;
  wire \gic0.gc0.count_d2_reg[6] ;
  wire \gic0.gc0.count_d2_reg[6]_0 ;
  wire \gic0.gc0.count_d2_reg[7] ;
  wire \gic0.gc0.count_d2_reg[8] ;
  wire ram_full_fb_i_reg;
  wire ram_full_fb_i_reg_0;
  wire ram_full_fb_i_reg_1;
  wire ram_full_fb_i_reg_2;
  wire rd_clk;
  wire wr_clk;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dmem \gdm.dm_gen.dm 
       (.ADDRG(ADDRG),
        .AR(AR),
        .E(E),
        .Q(Q),
        .din(din),
        .dout(dout),
        .\gic0.gc0.count_d2_reg[5] (\gic0.gc0.count_d2_reg[5] ),
        .\gic0.gc0.count_d2_reg[6] (\gic0.gc0.count_d2_reg[6] ),
        .\gic0.gc0.count_d2_reg[6]_0 (\gic0.gc0.count_d2_reg[6]_0 ),
        .\gic0.gc0.count_d2_reg[7] (\gic0.gc0.count_d2_reg[7] ),
        .\gic0.gc0.count_d2_reg[8] (\gic0.gc0.count_d2_reg[8] ),
        .ram_full_fb_i_reg(ram_full_fb_i_reg),
        .ram_full_fb_i_reg_0(ram_full_fb_i_reg_0),
        .ram_full_fb_i_reg_1(ram_full_fb_i_reg_1),
        .ram_full_fb_i_reg_2(ram_full_fb_i_reg_2),
        .rd_clk(rd_clk),
        .wr_clk(wr_clk));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_rd_bin_cntr
   (ram_empty_fb_i_reg,
    Q,
    ram_empty_fb_i_reg_0,
    \gc0.count_d1_reg[7]_0 ,
    ADDRG,
    WR_PNTR_RD,
    E,
    rd_clk,
    out);
  output ram_empty_fb_i_reg;
  output [8:0]Q;
  output ram_empty_fb_i_reg_0;
  output [7:0]\gc0.count_d1_reg[7]_0 ;
  output [5:0]ADDRG;
  input [0:0]WR_PNTR_RD;
  input [0:0]E;
  input rd_clk;
  input [0:0]out;

  wire [5:0]ADDRG;
  wire [0:0]E;
  wire [8:0]Q;
  wire [0:0]WR_PNTR_RD;
  wire \gc0.count[8]_i_2_n_0 ;
  wire [7:0]\gc0.count_d1_reg[7]_0 ;
  wire [0:0]out;
  wire [8:0]plusOp__0;
  wire ram_empty_fb_i_reg;
  wire ram_empty_fb_i_reg_0;
  wire rd_clk;
  wire [8:8]rd_pntr_plus1;

  LUT1 #(
    .INIT(2'h1)) 
    \gc0.count[0]_i_1 
       (.I0(\gc0.count_d1_reg[7]_0 [0]),
        .O(plusOp__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \gc0.count[1]_i_1 
       (.I0(\gc0.count_d1_reg[7]_0 [0]),
        .I1(\gc0.count_d1_reg[7]_0 [1]),
        .O(plusOp__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \gc0.count[2]_i_1 
       (.I0(\gc0.count_d1_reg[7]_0 [0]),
        .I1(\gc0.count_d1_reg[7]_0 [1]),
        .I2(\gc0.count_d1_reg[7]_0 [2]),
        .O(plusOp__0[2]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \gc0.count[3]_i_1 
       (.I0(\gc0.count_d1_reg[7]_0 [1]),
        .I1(\gc0.count_d1_reg[7]_0 [0]),
        .I2(\gc0.count_d1_reg[7]_0 [2]),
        .I3(\gc0.count_d1_reg[7]_0 [3]),
        .O(plusOp__0[3]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \gc0.count[4]_i_1 
       (.I0(\gc0.count_d1_reg[7]_0 [2]),
        .I1(\gc0.count_d1_reg[7]_0 [0]),
        .I2(\gc0.count_d1_reg[7]_0 [1]),
        .I3(\gc0.count_d1_reg[7]_0 [3]),
        .I4(\gc0.count_d1_reg[7]_0 [4]),
        .O(plusOp__0[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \gc0.count[5]_i_1 
       (.I0(\gc0.count_d1_reg[7]_0 [3]),
        .I1(\gc0.count_d1_reg[7]_0 [1]),
        .I2(\gc0.count_d1_reg[7]_0 [0]),
        .I3(\gc0.count_d1_reg[7]_0 [2]),
        .I4(\gc0.count_d1_reg[7]_0 [4]),
        .I5(\gc0.count_d1_reg[7]_0 [5]),
        .O(plusOp__0[5]));
  LUT2 #(
    .INIT(4'h6)) 
    \gc0.count[6]_i_1 
       (.I0(\gc0.count[8]_i_2_n_0 ),
        .I1(\gc0.count_d1_reg[7]_0 [6]),
        .O(plusOp__0[6]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \gc0.count[7]_i_1 
       (.I0(\gc0.count[8]_i_2_n_0 ),
        .I1(\gc0.count_d1_reg[7]_0 [6]),
        .I2(\gc0.count_d1_reg[7]_0 [7]),
        .O(plusOp__0[7]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \gc0.count[8]_i_1 
       (.I0(\gc0.count_d1_reg[7]_0 [6]),
        .I1(\gc0.count[8]_i_2_n_0 ),
        .I2(\gc0.count_d1_reg[7]_0 [7]),
        .I3(rd_pntr_plus1),
        .O(plusOp__0[8]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \gc0.count[8]_i_2 
       (.I0(\gc0.count_d1_reg[7]_0 [5]),
        .I1(\gc0.count_d1_reg[7]_0 [3]),
        .I2(\gc0.count_d1_reg[7]_0 [1]),
        .I3(\gc0.count_d1_reg[7]_0 [0]),
        .I4(\gc0.count_d1_reg[7]_0 [2]),
        .I5(\gc0.count_d1_reg[7]_0 [4]),
        .O(\gc0.count[8]_i_2_n_0 ));
  (* ORIG_CELL_NAME = "gc0.count_d1_reg[0]" *) 
  FDCE #(
    .INIT(1'b0)) 
    \gc0.count_d1_reg[0] 
       (.C(rd_clk),
        .CE(E),
        .CLR(out),
        .D(\gc0.count_d1_reg[7]_0 [0]),
        .Q(Q[0]));
  (* ORIG_CELL_NAME = "gc0.count_d1_reg[0]" *) 
  FDCE #(
    .INIT(1'b0)) 
    \gc0.count_d1_reg[0]_rep 
       (.C(rd_clk),
        .CE(E),
        .CLR(out),
        .D(\gc0.count_d1_reg[7]_0 [0]),
        .Q(ADDRG[0]));
  (* ORIG_CELL_NAME = "gc0.count_d1_reg[1]" *) 
  FDCE #(
    .INIT(1'b0)) 
    \gc0.count_d1_reg[1] 
       (.C(rd_clk),
        .CE(E),
        .CLR(out),
        .D(\gc0.count_d1_reg[7]_0 [1]),
        .Q(Q[1]));
  (* ORIG_CELL_NAME = "gc0.count_d1_reg[1]" *) 
  FDCE #(
    .INIT(1'b0)) 
    \gc0.count_d1_reg[1]_rep 
       (.C(rd_clk),
        .CE(E),
        .CLR(out),
        .D(\gc0.count_d1_reg[7]_0 [1]),
        .Q(ADDRG[1]));
  (* ORIG_CELL_NAME = "gc0.count_d1_reg[2]" *) 
  FDCE #(
    .INIT(1'b0)) 
    \gc0.count_d1_reg[2] 
       (.C(rd_clk),
        .CE(E),
        .CLR(out),
        .D(\gc0.count_d1_reg[7]_0 [2]),
        .Q(Q[2]));
  (* ORIG_CELL_NAME = "gc0.count_d1_reg[2]" *) 
  FDCE #(
    .INIT(1'b0)) 
    \gc0.count_d1_reg[2]_rep 
       (.C(rd_clk),
        .CE(E),
        .CLR(out),
        .D(\gc0.count_d1_reg[7]_0 [2]),
        .Q(ADDRG[2]));
  (* ORIG_CELL_NAME = "gc0.count_d1_reg[3]" *) 
  FDCE #(
    .INIT(1'b0)) 
    \gc0.count_d1_reg[3] 
       (.C(rd_clk),
        .CE(E),
        .CLR(out),
        .D(\gc0.count_d1_reg[7]_0 [3]),
        .Q(Q[3]));
  (* ORIG_CELL_NAME = "gc0.count_d1_reg[3]" *) 
  FDCE #(
    .INIT(1'b0)) 
    \gc0.count_d1_reg[3]_rep 
       (.C(rd_clk),
        .CE(E),
        .CLR(out),
        .D(\gc0.count_d1_reg[7]_0 [3]),
        .Q(ADDRG[3]));
  (* ORIG_CELL_NAME = "gc0.count_d1_reg[4]" *) 
  FDCE #(
    .INIT(1'b0)) 
    \gc0.count_d1_reg[4] 
       (.C(rd_clk),
        .CE(E),
        .CLR(out),
        .D(\gc0.count_d1_reg[7]_0 [4]),
        .Q(Q[4]));
  (* ORIG_CELL_NAME = "gc0.count_d1_reg[4]" *) 
  FDCE #(
    .INIT(1'b0)) 
    \gc0.count_d1_reg[4]_rep 
       (.C(rd_clk),
        .CE(E),
        .CLR(out),
        .D(\gc0.count_d1_reg[7]_0 [4]),
        .Q(ADDRG[4]));
  (* ORIG_CELL_NAME = "gc0.count_d1_reg[5]" *) 
  FDCE #(
    .INIT(1'b0)) 
    \gc0.count_d1_reg[5] 
       (.C(rd_clk),
        .CE(E),
        .CLR(out),
        .D(\gc0.count_d1_reg[7]_0 [5]),
        .Q(Q[5]));
  (* ORIG_CELL_NAME = "gc0.count_d1_reg[5]" *) 
  FDCE #(
    .INIT(1'b0)) 
    \gc0.count_d1_reg[5]_rep 
       (.C(rd_clk),
        .CE(E),
        .CLR(out),
        .D(\gc0.count_d1_reg[7]_0 [5]),
        .Q(ADDRG[5]));
  FDCE #(
    .INIT(1'b0)) 
    \gc0.count_d1_reg[6] 
       (.C(rd_clk),
        .CE(E),
        .CLR(out),
        .D(\gc0.count_d1_reg[7]_0 [6]),
        .Q(Q[6]));
  FDCE #(
    .INIT(1'b0)) 
    \gc0.count_d1_reg[7] 
       (.C(rd_clk),
        .CE(E),
        .CLR(out),
        .D(\gc0.count_d1_reg[7]_0 [7]),
        .Q(Q[7]));
  FDCE #(
    .INIT(1'b0)) 
    \gc0.count_d1_reg[8] 
       (.C(rd_clk),
        .CE(E),
        .CLR(out),
        .D(rd_pntr_plus1),
        .Q(Q[8]));
  FDPE #(
    .INIT(1'b1)) 
    \gc0.count_reg[0] 
       (.C(rd_clk),
        .CE(E),
        .D(plusOp__0[0]),
        .PRE(out),
        .Q(\gc0.count_d1_reg[7]_0 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \gc0.count_reg[1] 
       (.C(rd_clk),
        .CE(E),
        .CLR(out),
        .D(plusOp__0[1]),
        .Q(\gc0.count_d1_reg[7]_0 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \gc0.count_reg[2] 
       (.C(rd_clk),
        .CE(E),
        .CLR(out),
        .D(plusOp__0[2]),
        .Q(\gc0.count_d1_reg[7]_0 [2]));
  FDCE #(
    .INIT(1'b0)) 
    \gc0.count_reg[3] 
       (.C(rd_clk),
        .CE(E),
        .CLR(out),
        .D(plusOp__0[3]),
        .Q(\gc0.count_d1_reg[7]_0 [3]));
  FDCE #(
    .INIT(1'b0)) 
    \gc0.count_reg[4] 
       (.C(rd_clk),
        .CE(E),
        .CLR(out),
        .D(plusOp__0[4]),
        .Q(\gc0.count_d1_reg[7]_0 [4]));
  FDCE #(
    .INIT(1'b0)) 
    \gc0.count_reg[5] 
       (.C(rd_clk),
        .CE(E),
        .CLR(out),
        .D(plusOp__0[5]),
        .Q(\gc0.count_d1_reg[7]_0 [5]));
  FDCE #(
    .INIT(1'b0)) 
    \gc0.count_reg[6] 
       (.C(rd_clk),
        .CE(E),
        .CLR(out),
        .D(plusOp__0[6]),
        .Q(\gc0.count_d1_reg[7]_0 [6]));
  FDCE #(
    .INIT(1'b0)) 
    \gc0.count_reg[7] 
       (.C(rd_clk),
        .CE(E),
        .CLR(out),
        .D(plusOp__0[7]),
        .Q(\gc0.count_d1_reg[7]_0 [7]));
  FDCE #(
    .INIT(1'b0)) 
    \gc0.count_reg[8] 
       (.C(rd_clk),
        .CE(E),
        .CLR(out),
        .D(plusOp__0[8]),
        .Q(rd_pntr_plus1));
  LUT2 #(
    .INIT(4'h9)) 
    \gmux.gm[4].gms.ms_i_1 
       (.I0(Q[8]),
        .I1(WR_PNTR_RD),
        .O(ram_empty_fb_i_reg));
  LUT2 #(
    .INIT(4'h9)) 
    \gmux.gm[4].gms.ms_i_1__0 
       (.I0(rd_pntr_plus1),
        .I1(WR_PNTR_RD),
        .O(ram_empty_fb_i_reg_0));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_rd_logic
   (empty,
    \gc0.count_d1_reg[0]_rep ,
    Q,
    \gc0.count_d1_reg[7] ,
    ADDRG,
    v1_reg,
    v1_reg_0,
    rd_clk,
    out,
    rd_en,
    WR_PNTR_RD);
  output empty;
  output \gc0.count_d1_reg[0]_rep ;
  output [8:0]Q;
  output [7:0]\gc0.count_d1_reg[7] ;
  output [5:0]ADDRG;
  input [3:0]v1_reg;
  input [3:0]v1_reg_0;
  input rd_clk;
  input [0:0]out;
  input rd_en;
  input [0:0]WR_PNTR_RD;

  wire [5:0]ADDRG;
  wire [8:0]Q;
  wire [0:0]WR_PNTR_RD;
  wire empty;
  wire \gc0.count_d1_reg[0]_rep ;
  wire [7:0]\gc0.count_d1_reg[7] ;
  wire [0:0]out;
  wire rd_clk;
  wire rd_en;
  wire rpntr_n_0;
  wire rpntr_n_10;
  wire [3:0]v1_reg;
  wire [3:0]v1_reg_0;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_rd_status_flags_as \gras.rsts 
       (.E(\gc0.count_d1_reg[0]_rep ),
        .empty(empty),
        .\gc0.count_d1_reg[8] (rpntr_n_0),
        .\gc0.count_reg[8] (rpntr_n_10),
        .out(out),
        .rd_clk(rd_clk),
        .rd_en(rd_en),
        .v1_reg(v1_reg),
        .v1_reg_0(v1_reg_0));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_rd_bin_cntr rpntr
       (.ADDRG(ADDRG),
        .E(\gc0.count_d1_reg[0]_rep ),
        .Q(Q),
        .WR_PNTR_RD(WR_PNTR_RD),
        .\gc0.count_d1_reg[7]_0 (\gc0.count_d1_reg[7] ),
        .out(out),
        .ram_empty_fb_i_reg(rpntr_n_0),
        .ram_empty_fb_i_reg_0(rpntr_n_10),
        .rd_clk(rd_clk));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_rd_status_flags_as
   (empty,
    E,
    v1_reg,
    \gc0.count_d1_reg[8] ,
    v1_reg_0,
    \gc0.count_reg[8] ,
    rd_clk,
    out,
    rd_en);
  output empty;
  output [0:0]E;
  input [3:0]v1_reg;
  input \gc0.count_d1_reg[8] ;
  input [3:0]v1_reg_0;
  input \gc0.count_reg[8] ;
  input rd_clk;
  input [0:0]out;
  input rd_en;

  wire [0:0]E;
  wire c0_n_0;
  wire comp1;
  wire \gc0.count_d1_reg[8] ;
  wire \gc0.count_reg[8] ;
  wire [0:0]out;
  (* DONT_TOUCH *) wire ram_empty_fb_i;
  (* DONT_TOUCH *) wire ram_empty_i;
  wire rd_clk;
  wire rd_en;
  wire [3:0]v1_reg;
  wire [3:0]v1_reg_0;

  assign empty = ram_empty_i;
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_compare_4 c0
       (.comp1(comp1),
        .\gc0.count_d1_reg[8] (\gc0.count_d1_reg[8] ),
        .out(ram_empty_fb_i),
        .ram_empty_fb_i_reg(c0_n_0),
        .rd_en(rd_en),
        .v1_reg(v1_reg));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_compare_5 c1
       (.comp1(comp1),
        .\gc0.count_reg[8] (\gc0.count_reg[8] ),
        .v1_reg_0(v1_reg_0));
  LUT2 #(
    .INIT(4'h2)) 
    \gpr1.dout_i[31]_i_1 
       (.I0(rd_en),
        .I1(ram_empty_fb_i),
        .O(E));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDPE #(
    .INIT(1'b1)) 
    ram_empty_fb_i_reg
       (.C(rd_clk),
        .CE(1'b1),
        .D(c0_n_0),
        .PRE(out),
        .Q(ram_empty_fb_i));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDPE #(
    .INIT(1'b1)) 
    ram_empty_i_reg
       (.C(rd_clk),
        .CE(1'b1),
        .D(c0_n_0),
        .PRE(out),
        .Q(ram_empty_i));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_reset_blk_ramfifo
   (out,
    \gc0.count_d1_reg[0]_rep ,
    \grstd1.grst_full.grst_f.rst_d3_reg_0 ,
    wr_rst_busy,
    rd_clk,
    wr_clk,
    rst);
  output [1:0]out;
  output [2:0]\gc0.count_d1_reg[0]_rep ;
  output \grstd1.grst_full.grst_f.rst_d3_reg_0 ;
  output wr_rst_busy;
  input rd_clk;
  input wr_clk;
  input rst;

  wire \ngwrdrst.grst.g7serrst.gwrrd_rst_sync_stage[1].rrst_inst_n_1 ;
  wire \ngwrdrst.grst.g7serrst.gwrrd_rst_sync_stage[1].wrst_inst_n_1 ;
  wire \ngwrdrst.grst.g7serrst.gwrrd_rst_sync_stage[2].rrst_inst_n_0 ;
  wire \ngwrdrst.grst.g7serrst.gwrrd_rst_sync_stage[2].wrst_inst_n_0 ;
  wire p_7_out;
  wire p_8_out;
  wire rd_clk;
  wire rd_rst_asreg;
  (* DONT_TOUCH *) wire [2:0]rd_rst_reg;
  wire rst;
  (* async_reg = "true" *) (* msgon = "true" *) wire rst_d1;
  (* async_reg = "true" *) (* msgon = "true" *) wire rst_d2;
  (* async_reg = "true" *) (* msgon = "true" *) wire rst_d3;
  (* async_reg = "true" *) (* msgon = "true" *) wire rst_rd_reg1;
  (* async_reg = "true" *) (* msgon = "true" *) wire rst_rd_reg2;
  (* async_reg = "true" *) (* msgon = "true" *) wire rst_wr_reg1;
  (* async_reg = "true" *) (* msgon = "true" *) wire rst_wr_reg2;
  wire wr_clk;
  wire wr_rst_asreg;
  (* DONT_TOUCH *) wire [2:0]wr_rst_reg;

  assign \gc0.count_d1_reg[0]_rep [2:0] = rd_rst_reg;
  assign \grstd1.grst_full.grst_f.rst_d3_reg_0  = rst_d2;
  assign out[1:0] = wr_rst_reg[1:0];
  assign wr_rst_busy = rst_d3;
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* msgon = "true" *) 
  FDPE #(
    .INIT(1'b1)) 
    \grstd1.grst_full.grst_f.rst_d1_reg 
       (.C(wr_clk),
        .CE(1'b1),
        .D(1'b0),
        .PRE(rst_wr_reg2),
        .Q(rst_d1));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* msgon = "true" *) 
  FDPE #(
    .INIT(1'b1)) 
    \grstd1.grst_full.grst_f.rst_d2_reg 
       (.C(wr_clk),
        .CE(1'b1),
        .D(rst_d1),
        .PRE(rst_wr_reg2),
        .Q(rst_d2));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* msgon = "true" *) 
  FDPE #(
    .INIT(1'b1)) 
    \grstd1.grst_full.grst_f.rst_d3_reg 
       (.C(wr_clk),
        .CE(1'b1),
        .D(rst_d2),
        .PRE(rst_wr_reg2),
        .Q(rst_d3));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_synchronizer_ff \ngwrdrst.grst.g7serrst.gwrrd_rst_sync_stage[1].rrst_inst 
       (.in0(rd_rst_asreg),
        .\ngwrdrst.grst.g7serrst.rd_rst_asreg_reg (\ngwrdrst.grst.g7serrst.gwrrd_rst_sync_stage[1].rrst_inst_n_1 ),
        .out(p_7_out),
        .rd_clk(rd_clk));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_synchronizer_ff_0 \ngwrdrst.grst.g7serrst.gwrrd_rst_sync_stage[1].wrst_inst 
       (.in0(wr_rst_asreg),
        .\ngwrdrst.grst.g7serrst.wr_rst_asreg_reg (\ngwrdrst.grst.g7serrst.gwrrd_rst_sync_stage[1].wrst_inst_n_1 ),
        .out(p_8_out),
        .wr_clk(wr_clk));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_synchronizer_ff_1 \ngwrdrst.grst.g7serrst.gwrrd_rst_sync_stage[2].rrst_inst 
       (.AS(\ngwrdrst.grst.g7serrst.gwrrd_rst_sync_stage[2].rrst_inst_n_0 ),
        .in0(rd_rst_asreg),
        .out(p_7_out),
        .rd_clk(rd_clk));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_synchronizer_ff_2 \ngwrdrst.grst.g7serrst.gwrrd_rst_sync_stage[2].wrst_inst 
       (.AS(\ngwrdrst.grst.g7serrst.gwrrd_rst_sync_stage[2].wrst_inst_n_0 ),
        .in0(wr_rst_asreg),
        .out(p_8_out),
        .wr_clk(wr_clk));
  FDPE #(
    .INIT(1'b1)) 
    \ngwrdrst.grst.g7serrst.rd_rst_asreg_reg 
       (.C(rd_clk),
        .CE(1'b1),
        .D(\ngwrdrst.grst.g7serrst.gwrrd_rst_sync_stage[1].rrst_inst_n_1 ),
        .PRE(rst_rd_reg2),
        .Q(rd_rst_asreg));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDPE #(
    .INIT(1'b1)) 
    \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[0] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(1'b0),
        .PRE(\ngwrdrst.grst.g7serrst.gwrrd_rst_sync_stage[2].rrst_inst_n_0 ),
        .Q(rd_rst_reg[0]));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDPE #(
    .INIT(1'b1)) 
    \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(1'b0),
        .PRE(\ngwrdrst.grst.g7serrst.gwrrd_rst_sync_stage[2].rrst_inst_n_0 ),
        .Q(rd_rst_reg[1]));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDPE #(
    .INIT(1'b1)) 
    \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[2] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(1'b0),
        .PRE(\ngwrdrst.grst.g7serrst.gwrrd_rst_sync_stage[2].rrst_inst_n_0 ),
        .Q(rd_rst_reg[2]));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* msgon = "true" *) 
  FDPE #(
    .INIT(1'b0)) 
    \ngwrdrst.grst.g7serrst.rst_rd_reg1_reg 
       (.C(rd_clk),
        .CE(1'b1),
        .D(1'b0),
        .PRE(rst),
        .Q(rst_rd_reg1));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* msgon = "true" *) 
  FDPE #(
    .INIT(1'b0)) 
    \ngwrdrst.grst.g7serrst.rst_rd_reg2_reg 
       (.C(rd_clk),
        .CE(1'b1),
        .D(rst_rd_reg1),
        .PRE(rst),
        .Q(rst_rd_reg2));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* msgon = "true" *) 
  FDPE #(
    .INIT(1'b0)) 
    \ngwrdrst.grst.g7serrst.rst_wr_reg1_reg 
       (.C(wr_clk),
        .CE(1'b1),
        .D(1'b0),
        .PRE(rst),
        .Q(rst_wr_reg1));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* msgon = "true" *) 
  FDPE #(
    .INIT(1'b0)) 
    \ngwrdrst.grst.g7serrst.rst_wr_reg2_reg 
       (.C(wr_clk),
        .CE(1'b1),
        .D(rst_wr_reg1),
        .PRE(rst),
        .Q(rst_wr_reg2));
  FDPE #(
    .INIT(1'b1)) 
    \ngwrdrst.grst.g7serrst.wr_rst_asreg_reg 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\ngwrdrst.grst.g7serrst.gwrrd_rst_sync_stage[1].wrst_inst_n_1 ),
        .PRE(rst_wr_reg2),
        .Q(wr_rst_asreg));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDPE #(
    .INIT(1'b1)) 
    \ngwrdrst.grst.g7serrst.wr_rst_reg_reg[0] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(1'b0),
        .PRE(\ngwrdrst.grst.g7serrst.gwrrd_rst_sync_stage[2].wrst_inst_n_0 ),
        .Q(wr_rst_reg[0]));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDPE #(
    .INIT(1'b1)) 
    \ngwrdrst.grst.g7serrst.wr_rst_reg_reg[1] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(1'b0),
        .PRE(\ngwrdrst.grst.g7serrst.gwrrd_rst_sync_stage[2].wrst_inst_n_0 ),
        .Q(wr_rst_reg[1]));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDPE #(
    .INIT(1'b1)) 
    \ngwrdrst.grst.g7serrst.wr_rst_reg_reg[2] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(1'b0),
        .PRE(\ngwrdrst.grst.g7serrst.gwrrd_rst_sync_stage[2].wrst_inst_n_0 ),
        .Q(wr_rst_reg[2]));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_synchronizer_ff
   (out,
    \ngwrdrst.grst.g7serrst.rd_rst_asreg_reg ,
    in0,
    rd_clk);
  output out;
  output \ngwrdrst.grst.g7serrst.rd_rst_asreg_reg ;
  input [0:0]in0;
  input rd_clk;

  (* async_reg = "true" *) (* msgon = "true" *) wire Q_reg;
  wire [0:0]in0;
  wire \ngwrdrst.grst.g7serrst.rd_rst_asreg_reg ;
  wire rd_clk;

  assign out = Q_reg;
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* msgon = "true" *) 
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg_reg[0] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(in0),
        .Q(Q_reg),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h2)) 
    \ngwrdrst.grst.g7serrst.rd_rst_asreg_i_1 
       (.I0(in0),
        .I1(Q_reg),
        .O(\ngwrdrst.grst.g7serrst.rd_rst_asreg_reg ));
endmodule

(* ORIG_REF_NAME = "synchronizer_ff" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_synchronizer_ff_0
   (out,
    \ngwrdrst.grst.g7serrst.wr_rst_asreg_reg ,
    in0,
    wr_clk);
  output out;
  output \ngwrdrst.grst.g7serrst.wr_rst_asreg_reg ;
  input [0:0]in0;
  input wr_clk;

  (* async_reg = "true" *) (* msgon = "true" *) wire Q_reg;
  wire [0:0]in0;
  wire \ngwrdrst.grst.g7serrst.wr_rst_asreg_reg ;
  wire wr_clk;

  assign out = Q_reg;
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* msgon = "true" *) 
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg_reg[0] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(in0),
        .Q(Q_reg),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h2)) 
    \ngwrdrst.grst.g7serrst.wr_rst_asreg_i_1 
       (.I0(in0),
        .I1(Q_reg),
        .O(\ngwrdrst.grst.g7serrst.wr_rst_asreg_reg ));
endmodule

(* ORIG_REF_NAME = "synchronizer_ff" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_synchronizer_ff_1
   (AS,
    out,
    rd_clk,
    in0);
  output [0:0]AS;
  input out;
  input rd_clk;
  input [0:0]in0;

  wire [0:0]AS;
  (* async_reg = "true" *) (* msgon = "true" *) wire Q_reg;
  wire [0:0]in0;
  wire out;
  wire rd_clk;

  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* msgon = "true" *) 
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg_reg[0] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(out),
        .Q(Q_reg),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h2)) 
    \ngwrdrst.grst.g7serrst.rd_rst_reg[2]_i_1 
       (.I0(in0),
        .I1(Q_reg),
        .O(AS));
endmodule

(* ORIG_REF_NAME = "synchronizer_ff" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_synchronizer_ff_2
   (AS,
    out,
    wr_clk,
    in0);
  output [0:0]AS;
  input out;
  input wr_clk;
  input [0:0]in0;

  wire [0:0]AS;
  (* async_reg = "true" *) (* msgon = "true" *) wire Q_reg;
  wire [0:0]in0;
  wire out;
  wire wr_clk;

  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* msgon = "true" *) 
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg_reg[0] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(out),
        .Q(Q_reg),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h2)) 
    \ngwrdrst.grst.g7serrst.wr_rst_reg[2]_i_1 
       (.I0(in0),
        .I1(Q_reg),
        .O(AS));
endmodule

(* ORIG_REF_NAME = "synchronizer_ff" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_synchronizer_ff__parameterized0
   (D,
    Q,
    rd_clk,
    \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1] );
  output [8:0]D;
  input [8:0]Q;
  input rd_clk;
  input [0:0]\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1] ;

  wire [8:0]Q;
  (* async_reg = "true" *) (* msgon = "true" *) wire [8:0]Q_reg;
  wire [0:0]\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1] ;
  wire rd_clk;

  assign D[8:0] = Q_reg;
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* msgon = "true" *) 
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg_reg[0] 
       (.C(rd_clk),
        .CE(1'b1),
        .CLR(\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1] ),
        .D(Q[0]),
        .Q(Q_reg[0]));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* msgon = "true" *) 
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg_reg[1] 
       (.C(rd_clk),
        .CE(1'b1),
        .CLR(\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1] ),
        .D(Q[1]),
        .Q(Q_reg[1]));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* msgon = "true" *) 
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg_reg[2] 
       (.C(rd_clk),
        .CE(1'b1),
        .CLR(\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1] ),
        .D(Q[2]),
        .Q(Q_reg[2]));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* msgon = "true" *) 
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg_reg[3] 
       (.C(rd_clk),
        .CE(1'b1),
        .CLR(\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1] ),
        .D(Q[3]),
        .Q(Q_reg[3]));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* msgon = "true" *) 
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg_reg[4] 
       (.C(rd_clk),
        .CE(1'b1),
        .CLR(\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1] ),
        .D(Q[4]),
        .Q(Q_reg[4]));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* msgon = "true" *) 
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg_reg[5] 
       (.C(rd_clk),
        .CE(1'b1),
        .CLR(\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1] ),
        .D(Q[5]),
        .Q(Q_reg[5]));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* msgon = "true" *) 
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg_reg[6] 
       (.C(rd_clk),
        .CE(1'b1),
        .CLR(\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1] ),
        .D(Q[6]),
        .Q(Q_reg[6]));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* msgon = "true" *) 
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg_reg[7] 
       (.C(rd_clk),
        .CE(1'b1),
        .CLR(\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1] ),
        .D(Q[7]),
        .Q(Q_reg[7]));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* msgon = "true" *) 
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg_reg[8] 
       (.C(rd_clk),
        .CE(1'b1),
        .CLR(\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1] ),
        .D(Q[8]),
        .Q(Q_reg[8]));
endmodule

(* ORIG_REF_NAME = "synchronizer_ff" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_synchronizer_ff__parameterized1
   (D,
    Q,
    wr_clk,
    AR);
  output [8:0]D;
  input [8:0]Q;
  input wr_clk;
  input [0:0]AR;

  wire [0:0]AR;
  wire [8:0]Q;
  (* async_reg = "true" *) (* msgon = "true" *) wire [8:0]Q_reg;
  wire wr_clk;

  assign D[8:0] = Q_reg;
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* msgon = "true" *) 
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg_reg[0] 
       (.C(wr_clk),
        .CE(1'b1),
        .CLR(AR),
        .D(Q[0]),
        .Q(Q_reg[0]));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* msgon = "true" *) 
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg_reg[1] 
       (.C(wr_clk),
        .CE(1'b1),
        .CLR(AR),
        .D(Q[1]),
        .Q(Q_reg[1]));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* msgon = "true" *) 
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg_reg[2] 
       (.C(wr_clk),
        .CE(1'b1),
        .CLR(AR),
        .D(Q[2]),
        .Q(Q_reg[2]));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* msgon = "true" *) 
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg_reg[3] 
       (.C(wr_clk),
        .CE(1'b1),
        .CLR(AR),
        .D(Q[3]),
        .Q(Q_reg[3]));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* msgon = "true" *) 
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg_reg[4] 
       (.C(wr_clk),
        .CE(1'b1),
        .CLR(AR),
        .D(Q[4]),
        .Q(Q_reg[4]));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* msgon = "true" *) 
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg_reg[5] 
       (.C(wr_clk),
        .CE(1'b1),
        .CLR(AR),
        .D(Q[5]),
        .Q(Q_reg[5]));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* msgon = "true" *) 
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg_reg[6] 
       (.C(wr_clk),
        .CE(1'b1),
        .CLR(AR),
        .D(Q[6]),
        .Q(Q_reg[6]));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* msgon = "true" *) 
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg_reg[7] 
       (.C(wr_clk),
        .CE(1'b1),
        .CLR(AR),
        .D(Q[7]),
        .Q(Q_reg[7]));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* msgon = "true" *) 
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg_reg[8] 
       (.C(wr_clk),
        .CE(1'b1),
        .CLR(AR),
        .D(Q[8]),
        .Q(Q_reg[8]));
endmodule

(* ORIG_REF_NAME = "synchronizer_ff" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_synchronizer_ff__parameterized2
   (out,
    \gnxpm_cdc.wr_pntr_bin_reg[7] ,
    D,
    rd_clk,
    \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1] );
  output [0:0]out;
  output [7:0]\gnxpm_cdc.wr_pntr_bin_reg[7] ;
  input [8:0]D;
  input rd_clk;
  input [0:0]\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1] ;

  wire [8:0]D;
  (* async_reg = "true" *) (* msgon = "true" *) wire [8:0]Q_reg;
  wire \gnxpm_cdc.wr_pntr_bin[1]_i_2_n_0 ;
  wire \gnxpm_cdc.wr_pntr_bin[2]_i_2_n_0 ;
  wire [7:0]\gnxpm_cdc.wr_pntr_bin_reg[7] ;
  wire [0:0]\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1] ;
  wire rd_clk;

  assign out[0] = Q_reg[8];
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* msgon = "true" *) 
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg_reg[0] 
       (.C(rd_clk),
        .CE(1'b1),
        .CLR(\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1] ),
        .D(D[0]),
        .Q(Q_reg[0]));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* msgon = "true" *) 
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg_reg[1] 
       (.C(rd_clk),
        .CE(1'b1),
        .CLR(\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1] ),
        .D(D[1]),
        .Q(Q_reg[1]));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* msgon = "true" *) 
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg_reg[2] 
       (.C(rd_clk),
        .CE(1'b1),
        .CLR(\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1] ),
        .D(D[2]),
        .Q(Q_reg[2]));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* msgon = "true" *) 
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg_reg[3] 
       (.C(rd_clk),
        .CE(1'b1),
        .CLR(\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1] ),
        .D(D[3]),
        .Q(Q_reg[3]));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* msgon = "true" *) 
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg_reg[4] 
       (.C(rd_clk),
        .CE(1'b1),
        .CLR(\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1] ),
        .D(D[4]),
        .Q(Q_reg[4]));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* msgon = "true" *) 
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg_reg[5] 
       (.C(rd_clk),
        .CE(1'b1),
        .CLR(\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1] ),
        .D(D[5]),
        .Q(Q_reg[5]));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* msgon = "true" *) 
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg_reg[6] 
       (.C(rd_clk),
        .CE(1'b1),
        .CLR(\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1] ),
        .D(D[6]),
        .Q(Q_reg[6]));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* msgon = "true" *) 
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg_reg[7] 
       (.C(rd_clk),
        .CE(1'b1),
        .CLR(\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1] ),
        .D(D[7]),
        .Q(Q_reg[7]));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* msgon = "true" *) 
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg_reg[8] 
       (.C(rd_clk),
        .CE(1'b1),
        .CLR(\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1] ),
        .D(D[8]),
        .Q(Q_reg[8]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \gnxpm_cdc.wr_pntr_bin[0]_i_1 
       (.I0(Q_reg[1]),
        .I1(Q_reg[0]),
        .I2(\gnxpm_cdc.wr_pntr_bin[1]_i_2_n_0 ),
        .I3(Q_reg[3]),
        .I4(Q_reg[2]),
        .I5(Q_reg[8]),
        .O(\gnxpm_cdc.wr_pntr_bin_reg[7] [0]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \gnxpm_cdc.wr_pntr_bin[1]_i_1 
       (.I0(\gnxpm_cdc.wr_pntr_bin[1]_i_2_n_0 ),
        .I1(Q_reg[3]),
        .I2(Q_reg[2]),
        .I3(Q_reg[8]),
        .I4(Q_reg[1]),
        .O(\gnxpm_cdc.wr_pntr_bin_reg[7] [1]));
  LUT4 #(
    .INIT(16'h6996)) 
    \gnxpm_cdc.wr_pntr_bin[1]_i_2 
       (.I0(Q_reg[7]),
        .I1(Q_reg[6]),
        .I2(Q_reg[5]),
        .I3(Q_reg[4]),
        .O(\gnxpm_cdc.wr_pntr_bin[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \gnxpm_cdc.wr_pntr_bin[2]_i_1 
       (.I0(Q_reg[8]),
        .I1(Q_reg[2]),
        .I2(Q_reg[3]),
        .I3(\gnxpm_cdc.wr_pntr_bin[2]_i_2_n_0 ),
        .I4(Q_reg[6]),
        .I5(Q_reg[7]),
        .O(\gnxpm_cdc.wr_pntr_bin_reg[7] [2]));
  LUT2 #(
    .INIT(4'h6)) 
    \gnxpm_cdc.wr_pntr_bin[2]_i_2 
       (.I0(Q_reg[4]),
        .I1(Q_reg[5]),
        .O(\gnxpm_cdc.wr_pntr_bin[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \gnxpm_cdc.wr_pntr_bin[3]_i_1 
       (.I0(Q_reg[5]),
        .I1(Q_reg[3]),
        .I2(Q_reg[4]),
        .I3(Q_reg[8]),
        .I4(Q_reg[6]),
        .I5(Q_reg[7]),
        .O(\gnxpm_cdc.wr_pntr_bin_reg[7] [3]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \gnxpm_cdc.wr_pntr_bin[4]_i_1 
       (.I0(Q_reg[6]),
        .I1(Q_reg[4]),
        .I2(Q_reg[5]),
        .I3(Q_reg[8]),
        .I4(Q_reg[7]),
        .O(\gnxpm_cdc.wr_pntr_bin_reg[7] [4]));
  LUT4 #(
    .INIT(16'h6996)) 
    \gnxpm_cdc.wr_pntr_bin[5]_i_1 
       (.I0(Q_reg[6]),
        .I1(Q_reg[5]),
        .I2(Q_reg[8]),
        .I3(Q_reg[7]),
        .O(\gnxpm_cdc.wr_pntr_bin_reg[7] [5]));
  LUT3 #(
    .INIT(8'h96)) 
    \gnxpm_cdc.wr_pntr_bin[6]_i_1 
       (.I0(Q_reg[7]),
        .I1(Q_reg[6]),
        .I2(Q_reg[8]),
        .O(\gnxpm_cdc.wr_pntr_bin_reg[7] [6]));
  LUT2 #(
    .INIT(4'h6)) 
    \gnxpm_cdc.wr_pntr_bin[7]_i_1 
       (.I0(Q_reg[7]),
        .I1(Q_reg[8]),
        .O(\gnxpm_cdc.wr_pntr_bin_reg[7] [7]));
endmodule

(* ORIG_REF_NAME = "synchronizer_ff" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_synchronizer_ff__parameterized3
   (out,
    \gnxpm_cdc.rd_pntr_bin_reg[7] ,
    D,
    wr_clk,
    AR);
  output [0:0]out;
  output [7:0]\gnxpm_cdc.rd_pntr_bin_reg[7] ;
  input [8:0]D;
  input wr_clk;
  input [0:0]AR;

  wire [0:0]AR;
  wire [8:0]D;
  (* async_reg = "true" *) (* msgon = "true" *) wire [8:0]Q_reg;
  wire \gnxpm_cdc.rd_pntr_bin[1]_i_2_n_0 ;
  wire \gnxpm_cdc.rd_pntr_bin[2]_i_2_n_0 ;
  wire [7:0]\gnxpm_cdc.rd_pntr_bin_reg[7] ;
  wire wr_clk;

  assign out[0] = Q_reg[8];
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* msgon = "true" *) 
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg_reg[0] 
       (.C(wr_clk),
        .CE(1'b1),
        .CLR(AR),
        .D(D[0]),
        .Q(Q_reg[0]));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* msgon = "true" *) 
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg_reg[1] 
       (.C(wr_clk),
        .CE(1'b1),
        .CLR(AR),
        .D(D[1]),
        .Q(Q_reg[1]));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* msgon = "true" *) 
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg_reg[2] 
       (.C(wr_clk),
        .CE(1'b1),
        .CLR(AR),
        .D(D[2]),
        .Q(Q_reg[2]));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* msgon = "true" *) 
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg_reg[3] 
       (.C(wr_clk),
        .CE(1'b1),
        .CLR(AR),
        .D(D[3]),
        .Q(Q_reg[3]));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* msgon = "true" *) 
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg_reg[4] 
       (.C(wr_clk),
        .CE(1'b1),
        .CLR(AR),
        .D(D[4]),
        .Q(Q_reg[4]));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* msgon = "true" *) 
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg_reg[5] 
       (.C(wr_clk),
        .CE(1'b1),
        .CLR(AR),
        .D(D[5]),
        .Q(Q_reg[5]));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* msgon = "true" *) 
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg_reg[6] 
       (.C(wr_clk),
        .CE(1'b1),
        .CLR(AR),
        .D(D[6]),
        .Q(Q_reg[6]));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* msgon = "true" *) 
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg_reg[7] 
       (.C(wr_clk),
        .CE(1'b1),
        .CLR(AR),
        .D(D[7]),
        .Q(Q_reg[7]));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* msgon = "true" *) 
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg_reg[8] 
       (.C(wr_clk),
        .CE(1'b1),
        .CLR(AR),
        .D(D[8]),
        .Q(Q_reg[8]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \gnxpm_cdc.rd_pntr_bin[0]_i_1 
       (.I0(Q_reg[1]),
        .I1(Q_reg[0]),
        .I2(\gnxpm_cdc.rd_pntr_bin[1]_i_2_n_0 ),
        .I3(Q_reg[3]),
        .I4(Q_reg[2]),
        .I5(Q_reg[8]),
        .O(\gnxpm_cdc.rd_pntr_bin_reg[7] [0]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \gnxpm_cdc.rd_pntr_bin[1]_i_1 
       (.I0(\gnxpm_cdc.rd_pntr_bin[1]_i_2_n_0 ),
        .I1(Q_reg[3]),
        .I2(Q_reg[2]),
        .I3(Q_reg[8]),
        .I4(Q_reg[1]),
        .O(\gnxpm_cdc.rd_pntr_bin_reg[7] [1]));
  LUT4 #(
    .INIT(16'h6996)) 
    \gnxpm_cdc.rd_pntr_bin[1]_i_2 
       (.I0(Q_reg[7]),
        .I1(Q_reg[6]),
        .I2(Q_reg[5]),
        .I3(Q_reg[4]),
        .O(\gnxpm_cdc.rd_pntr_bin[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \gnxpm_cdc.rd_pntr_bin[2]_i_1 
       (.I0(Q_reg[8]),
        .I1(Q_reg[2]),
        .I2(Q_reg[3]),
        .I3(\gnxpm_cdc.rd_pntr_bin[2]_i_2_n_0 ),
        .I4(Q_reg[6]),
        .I5(Q_reg[7]),
        .O(\gnxpm_cdc.rd_pntr_bin_reg[7] [2]));
  LUT2 #(
    .INIT(4'h6)) 
    \gnxpm_cdc.rd_pntr_bin[2]_i_2 
       (.I0(Q_reg[4]),
        .I1(Q_reg[5]),
        .O(\gnxpm_cdc.rd_pntr_bin[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \gnxpm_cdc.rd_pntr_bin[3]_i_1 
       (.I0(Q_reg[5]),
        .I1(Q_reg[3]),
        .I2(Q_reg[4]),
        .I3(Q_reg[8]),
        .I4(Q_reg[6]),
        .I5(Q_reg[7]),
        .O(\gnxpm_cdc.rd_pntr_bin_reg[7] [3]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \gnxpm_cdc.rd_pntr_bin[4]_i_1 
       (.I0(Q_reg[6]),
        .I1(Q_reg[4]),
        .I2(Q_reg[5]),
        .I3(Q_reg[8]),
        .I4(Q_reg[7]),
        .O(\gnxpm_cdc.rd_pntr_bin_reg[7] [4]));
  LUT4 #(
    .INIT(16'h6996)) 
    \gnxpm_cdc.rd_pntr_bin[5]_i_1 
       (.I0(Q_reg[6]),
        .I1(Q_reg[5]),
        .I2(Q_reg[8]),
        .I3(Q_reg[7]),
        .O(\gnxpm_cdc.rd_pntr_bin_reg[7] [5]));
  LUT3 #(
    .INIT(8'h96)) 
    \gnxpm_cdc.rd_pntr_bin[6]_i_1 
       (.I0(Q_reg[7]),
        .I1(Q_reg[6]),
        .I2(Q_reg[8]),
        .O(\gnxpm_cdc.rd_pntr_bin_reg[7] [6]));
  LUT2 #(
    .INIT(4'h6)) 
    \gnxpm_cdc.rd_pntr_bin[7]_i_1 
       (.I0(Q_reg[7]),
        .I1(Q_reg[8]),
        .O(\gnxpm_cdc.rd_pntr_bin_reg[7] [7]));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_wr_bin_cntr
   (S,
    Q,
    \gdiff.diff_pntr_pad_reg[9] ,
    \gpr1.dout_i_reg[28] ,
    \gnxpm_cdc.wr_pntr_gc_reg[8] ,
    \gpr1.dout_i_reg[28]_0 ,
    \gpr1.dout_i_reg[28]_1 ,
    \gpr1.dout_i_reg[28]_2 ,
    \gpr1.dout_i_reg[28]_3 ,
    \gpr1.dout_i_reg[28]_4 ,
    \gpr1.dout_i_reg[28]_5 ,
    \gpr1.dout_i_reg[28]_6 ,
    \gic0.gc0.count_d1_reg[8]_0 ,
    v1_reg,
    v1_reg_0,
    RD_PNTR_WR,
    wr_en,
    out,
    E,
    wr_clk,
    AR);
  output [7:0]S;
  output [8:0]Q;
  output [0:0]\gdiff.diff_pntr_pad_reg[9] ;
  output \gpr1.dout_i_reg[28] ;
  output [8:0]\gnxpm_cdc.wr_pntr_gc_reg[8] ;
  output \gpr1.dout_i_reg[28]_0 ;
  output \gpr1.dout_i_reg[28]_1 ;
  output \gpr1.dout_i_reg[28]_2 ;
  output \gpr1.dout_i_reg[28]_3 ;
  output \gpr1.dout_i_reg[28]_4 ;
  output \gpr1.dout_i_reg[28]_5 ;
  output \gpr1.dout_i_reg[28]_6 ;
  output [0:0]\gic0.gc0.count_d1_reg[8]_0 ;
  output [3:0]v1_reg;
  output [3:0]v1_reg_0;
  input [8:0]RD_PNTR_WR;
  input wr_en;
  input out;
  input [0:0]E;
  input wr_clk;
  input [0:0]AR;

  wire [0:0]AR;
  wire [0:0]E;
  wire [8:0]Q;
  wire [8:0]RD_PNTR_WR;
  wire [7:0]S;
  wire [0:0]\gdiff.diff_pntr_pad_reg[9] ;
  wire \gic0.gc0.count[8]_i_2_n_0 ;
  wire [0:0]\gic0.gc0.count_d1_reg[8]_0 ;
  wire [8:0]\gnxpm_cdc.wr_pntr_gc_reg[8] ;
  wire \gpr1.dout_i_reg[28] ;
  wire \gpr1.dout_i_reg[28]_0 ;
  wire \gpr1.dout_i_reg[28]_1 ;
  wire \gpr1.dout_i_reg[28]_2 ;
  wire \gpr1.dout_i_reg[28]_3 ;
  wire \gpr1.dout_i_reg[28]_4 ;
  wire \gpr1.dout_i_reg[28]_5 ;
  wire \gpr1.dout_i_reg[28]_6 ;
  wire out;
  wire [8:0]plusOp__1;
  wire [3:0]v1_reg;
  wire [3:0]v1_reg_0;
  wire wr_clk;
  wire wr_en;
  wire [7:0]wr_pntr_plus2;

  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT5 #(
    .INIT(32'h00000002)) 
    RAM_reg_0_63_0_6_i_1
       (.I0(wr_en),
        .I1(out),
        .I2(\gnxpm_cdc.wr_pntr_gc_reg[8] [8]),
        .I3(\gnxpm_cdc.wr_pntr_gc_reg[8] [6]),
        .I4(\gnxpm_cdc.wr_pntr_gc_reg[8] [7]),
        .O(\gpr1.dout_i_reg[28] ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT5 #(
    .INIT(32'h00001000)) 
    RAM_reg_128_191_0_6_i_1
       (.I0(\gnxpm_cdc.wr_pntr_gc_reg[8] [6]),
        .I1(\gnxpm_cdc.wr_pntr_gc_reg[8] [8]),
        .I2(\gnxpm_cdc.wr_pntr_gc_reg[8] [7]),
        .I3(wr_en),
        .I4(out),
        .O(\gpr1.dout_i_reg[28]_1 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT5 #(
    .INIT(32'h02000000)) 
    RAM_reg_192_255_0_6_i_1
       (.I0(wr_en),
        .I1(out),
        .I2(\gnxpm_cdc.wr_pntr_gc_reg[8] [8]),
        .I3(\gnxpm_cdc.wr_pntr_gc_reg[8] [6]),
        .I4(\gnxpm_cdc.wr_pntr_gc_reg[8] [7]),
        .O(\gpr1.dout_i_reg[28]_3 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT5 #(
    .INIT(32'h00001000)) 
    RAM_reg_256_319_0_6_i_1
       (.I0(\gnxpm_cdc.wr_pntr_gc_reg[8] [6]),
        .I1(\gnxpm_cdc.wr_pntr_gc_reg[8] [7]),
        .I2(\gnxpm_cdc.wr_pntr_gc_reg[8] [8]),
        .I3(wr_en),
        .I4(out),
        .O(\gpr1.dout_i_reg[28]_4 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT5 #(
    .INIT(32'h02000000)) 
    RAM_reg_320_383_0_6_i_1
       (.I0(wr_en),
        .I1(out),
        .I2(\gnxpm_cdc.wr_pntr_gc_reg[8] [7]),
        .I3(\gnxpm_cdc.wr_pntr_gc_reg[8] [6]),
        .I4(\gnxpm_cdc.wr_pntr_gc_reg[8] [8]),
        .O(\gpr1.dout_i_reg[28]_5 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT5 #(
    .INIT(32'h02000000)) 
    RAM_reg_384_447_0_6_i_1
       (.I0(wr_en),
        .I1(out),
        .I2(\gnxpm_cdc.wr_pntr_gc_reg[8] [6]),
        .I3(\gnxpm_cdc.wr_pntr_gc_reg[8] [7]),
        .I4(\gnxpm_cdc.wr_pntr_gc_reg[8] [8]),
        .O(\gpr1.dout_i_reg[28]_6 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT5 #(
    .INIT(32'h08000000)) 
    RAM_reg_448_511_0_6_i_1
       (.I0(\gnxpm_cdc.wr_pntr_gc_reg[8] [8]),
        .I1(wr_en),
        .I2(out),
        .I3(\gnxpm_cdc.wr_pntr_gc_reg[8] [6]),
        .I4(\gnxpm_cdc.wr_pntr_gc_reg[8] [7]),
        .O(\gpr1.dout_i_reg[28]_2 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT5 #(
    .INIT(32'h00001000)) 
    RAM_reg_64_127_0_6_i_1
       (.I0(\gnxpm_cdc.wr_pntr_gc_reg[8] [7]),
        .I1(\gnxpm_cdc.wr_pntr_gc_reg[8] [8]),
        .I2(\gnxpm_cdc.wr_pntr_gc_reg[8] [6]),
        .I3(wr_en),
        .I4(out),
        .O(\gpr1.dout_i_reg[28]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \gic0.gc0.count[0]_i_1 
       (.I0(wr_pntr_plus2[0]),
        .O(plusOp__1[0]));
  LUT2 #(
    .INIT(4'h6)) 
    \gic0.gc0.count[1]_i_1 
       (.I0(wr_pntr_plus2[0]),
        .I1(wr_pntr_plus2[1]),
        .O(plusOp__1[1]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \gic0.gc0.count[2]_i_1 
       (.I0(wr_pntr_plus2[0]),
        .I1(wr_pntr_plus2[1]),
        .I2(wr_pntr_plus2[2]),
        .O(plusOp__1[2]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \gic0.gc0.count[3]_i_1 
       (.I0(wr_pntr_plus2[1]),
        .I1(wr_pntr_plus2[0]),
        .I2(wr_pntr_plus2[2]),
        .I3(wr_pntr_plus2[3]),
        .O(plusOp__1[3]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \gic0.gc0.count[4]_i_1 
       (.I0(wr_pntr_plus2[2]),
        .I1(wr_pntr_plus2[0]),
        .I2(wr_pntr_plus2[1]),
        .I3(wr_pntr_plus2[3]),
        .I4(wr_pntr_plus2[4]),
        .O(plusOp__1[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \gic0.gc0.count[5]_i_1 
       (.I0(wr_pntr_plus2[3]),
        .I1(wr_pntr_plus2[1]),
        .I2(wr_pntr_plus2[0]),
        .I3(wr_pntr_plus2[2]),
        .I4(wr_pntr_plus2[4]),
        .I5(wr_pntr_plus2[5]),
        .O(plusOp__1[5]));
  LUT2 #(
    .INIT(4'h6)) 
    \gic0.gc0.count[6]_i_1 
       (.I0(\gic0.gc0.count[8]_i_2_n_0 ),
        .I1(wr_pntr_plus2[6]),
        .O(plusOp__1[6]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \gic0.gc0.count[7]_i_1 
       (.I0(\gic0.gc0.count[8]_i_2_n_0 ),
        .I1(wr_pntr_plus2[6]),
        .I2(wr_pntr_plus2[7]),
        .O(plusOp__1[7]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \gic0.gc0.count[8]_i_1 
       (.I0(wr_pntr_plus2[6]),
        .I1(\gic0.gc0.count[8]_i_2_n_0 ),
        .I2(wr_pntr_plus2[7]),
        .I3(\gic0.gc0.count_d1_reg[8]_0 ),
        .O(plusOp__1[8]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \gic0.gc0.count[8]_i_2 
       (.I0(wr_pntr_plus2[5]),
        .I1(wr_pntr_plus2[3]),
        .I2(wr_pntr_plus2[1]),
        .I3(wr_pntr_plus2[0]),
        .I4(wr_pntr_plus2[2]),
        .I5(wr_pntr_plus2[4]),
        .O(\gic0.gc0.count[8]_i_2_n_0 ));
  FDPE #(
    .INIT(1'b1)) 
    \gic0.gc0.count_d1_reg[0] 
       (.C(wr_clk),
        .CE(E),
        .D(wr_pntr_plus2[0]),
        .PRE(AR),
        .Q(Q[0]));
  FDCE #(
    .INIT(1'b0)) 
    \gic0.gc0.count_d1_reg[1] 
       (.C(wr_clk),
        .CE(E),
        .CLR(AR),
        .D(wr_pntr_plus2[1]),
        .Q(Q[1]));
  FDCE #(
    .INIT(1'b0)) 
    \gic0.gc0.count_d1_reg[2] 
       (.C(wr_clk),
        .CE(E),
        .CLR(AR),
        .D(wr_pntr_plus2[2]),
        .Q(Q[2]));
  FDCE #(
    .INIT(1'b0)) 
    \gic0.gc0.count_d1_reg[3] 
       (.C(wr_clk),
        .CE(E),
        .CLR(AR),
        .D(wr_pntr_plus2[3]),
        .Q(Q[3]));
  FDCE #(
    .INIT(1'b0)) 
    \gic0.gc0.count_d1_reg[4] 
       (.C(wr_clk),
        .CE(E),
        .CLR(AR),
        .D(wr_pntr_plus2[4]),
        .Q(Q[4]));
  FDCE #(
    .INIT(1'b0)) 
    \gic0.gc0.count_d1_reg[5] 
       (.C(wr_clk),
        .CE(E),
        .CLR(AR),
        .D(wr_pntr_plus2[5]),
        .Q(Q[5]));
  FDCE #(
    .INIT(1'b0)) 
    \gic0.gc0.count_d1_reg[6] 
       (.C(wr_clk),
        .CE(E),
        .CLR(AR),
        .D(wr_pntr_plus2[6]),
        .Q(Q[6]));
  FDCE #(
    .INIT(1'b0)) 
    \gic0.gc0.count_d1_reg[7] 
       (.C(wr_clk),
        .CE(E),
        .CLR(AR),
        .D(wr_pntr_plus2[7]),
        .Q(Q[7]));
  FDCE #(
    .INIT(1'b0)) 
    \gic0.gc0.count_d1_reg[8] 
       (.C(wr_clk),
        .CE(E),
        .CLR(AR),
        .D(\gic0.gc0.count_d1_reg[8]_0 ),
        .Q(Q[8]));
  FDCE #(
    .INIT(1'b0)) 
    \gic0.gc0.count_d2_reg[0] 
       (.C(wr_clk),
        .CE(E),
        .CLR(AR),
        .D(Q[0]),
        .Q(\gnxpm_cdc.wr_pntr_gc_reg[8] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \gic0.gc0.count_d2_reg[1] 
       (.C(wr_clk),
        .CE(E),
        .CLR(AR),
        .D(Q[1]),
        .Q(\gnxpm_cdc.wr_pntr_gc_reg[8] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \gic0.gc0.count_d2_reg[2] 
       (.C(wr_clk),
        .CE(E),
        .CLR(AR),
        .D(Q[2]),
        .Q(\gnxpm_cdc.wr_pntr_gc_reg[8] [2]));
  FDCE #(
    .INIT(1'b0)) 
    \gic0.gc0.count_d2_reg[3] 
       (.C(wr_clk),
        .CE(E),
        .CLR(AR),
        .D(Q[3]),
        .Q(\gnxpm_cdc.wr_pntr_gc_reg[8] [3]));
  FDCE #(
    .INIT(1'b0)) 
    \gic0.gc0.count_d2_reg[4] 
       (.C(wr_clk),
        .CE(E),
        .CLR(AR),
        .D(Q[4]),
        .Q(\gnxpm_cdc.wr_pntr_gc_reg[8] [4]));
  FDCE #(
    .INIT(1'b0)) 
    \gic0.gc0.count_d2_reg[5] 
       (.C(wr_clk),
        .CE(E),
        .CLR(AR),
        .D(Q[5]),
        .Q(\gnxpm_cdc.wr_pntr_gc_reg[8] [5]));
  FDCE #(
    .INIT(1'b0)) 
    \gic0.gc0.count_d2_reg[6] 
       (.C(wr_clk),
        .CE(E),
        .CLR(AR),
        .D(Q[6]),
        .Q(\gnxpm_cdc.wr_pntr_gc_reg[8] [6]));
  FDCE #(
    .INIT(1'b0)) 
    \gic0.gc0.count_d2_reg[7] 
       (.C(wr_clk),
        .CE(E),
        .CLR(AR),
        .D(Q[7]),
        .Q(\gnxpm_cdc.wr_pntr_gc_reg[8] [7]));
  FDCE #(
    .INIT(1'b0)) 
    \gic0.gc0.count_d2_reg[8] 
       (.C(wr_clk),
        .CE(E),
        .CLR(AR),
        .D(Q[8]),
        .Q(\gnxpm_cdc.wr_pntr_gc_reg[8] [8]));
  FDCE #(
    .INIT(1'b0)) 
    \gic0.gc0.count_reg[0] 
       (.C(wr_clk),
        .CE(E),
        .CLR(AR),
        .D(plusOp__1[0]),
        .Q(wr_pntr_plus2[0]));
  FDPE #(
    .INIT(1'b1)) 
    \gic0.gc0.count_reg[1] 
       (.C(wr_clk),
        .CE(E),
        .D(plusOp__1[1]),
        .PRE(AR),
        .Q(wr_pntr_plus2[1]));
  FDCE #(
    .INIT(1'b0)) 
    \gic0.gc0.count_reg[2] 
       (.C(wr_clk),
        .CE(E),
        .CLR(AR),
        .D(plusOp__1[2]),
        .Q(wr_pntr_plus2[2]));
  FDCE #(
    .INIT(1'b0)) 
    \gic0.gc0.count_reg[3] 
       (.C(wr_clk),
        .CE(E),
        .CLR(AR),
        .D(plusOp__1[3]),
        .Q(wr_pntr_plus2[3]));
  FDCE #(
    .INIT(1'b0)) 
    \gic0.gc0.count_reg[4] 
       (.C(wr_clk),
        .CE(E),
        .CLR(AR),
        .D(plusOp__1[4]),
        .Q(wr_pntr_plus2[4]));
  FDCE #(
    .INIT(1'b0)) 
    \gic0.gc0.count_reg[5] 
       (.C(wr_clk),
        .CE(E),
        .CLR(AR),
        .D(plusOp__1[5]),
        .Q(wr_pntr_plus2[5]));
  FDCE #(
    .INIT(1'b0)) 
    \gic0.gc0.count_reg[6] 
       (.C(wr_clk),
        .CE(E),
        .CLR(AR),
        .D(plusOp__1[6]),
        .Q(wr_pntr_plus2[6]));
  FDCE #(
    .INIT(1'b0)) 
    \gic0.gc0.count_reg[7] 
       (.C(wr_clk),
        .CE(E),
        .CLR(AR),
        .D(plusOp__1[7]),
        .Q(wr_pntr_plus2[7]));
  FDCE #(
    .INIT(1'b0)) 
    \gic0.gc0.count_reg[8] 
       (.C(wr_clk),
        .CE(E),
        .CLR(AR),
        .D(plusOp__1[8]),
        .Q(\gic0.gc0.count_d1_reg[8]_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \gmux.gm[0].gm1.m1_i_1__1 
       (.I0(Q[0]),
        .I1(RD_PNTR_WR[0]),
        .I2(Q[1]),
        .I3(RD_PNTR_WR[1]),
        .O(v1_reg[0]));
  LUT4 #(
    .INIT(16'h9009)) 
    \gmux.gm[0].gm1.m1_i_1__2 
       (.I0(wr_pntr_plus2[0]),
        .I1(RD_PNTR_WR[0]),
        .I2(wr_pntr_plus2[1]),
        .I3(RD_PNTR_WR[1]),
        .O(v1_reg_0[0]));
  LUT4 #(
    .INIT(16'h9009)) 
    \gmux.gm[1].gms.ms_i_1__1 
       (.I0(Q[2]),
        .I1(RD_PNTR_WR[2]),
        .I2(Q[3]),
        .I3(RD_PNTR_WR[3]),
        .O(v1_reg[1]));
  LUT4 #(
    .INIT(16'h9009)) 
    \gmux.gm[1].gms.ms_i_1__2 
       (.I0(wr_pntr_plus2[2]),
        .I1(RD_PNTR_WR[2]),
        .I2(wr_pntr_plus2[3]),
        .I3(RD_PNTR_WR[3]),
        .O(v1_reg_0[1]));
  LUT4 #(
    .INIT(16'h9009)) 
    \gmux.gm[2].gms.ms_i_1__1 
       (.I0(Q[4]),
        .I1(RD_PNTR_WR[4]),
        .I2(Q[5]),
        .I3(RD_PNTR_WR[5]),
        .O(v1_reg[2]));
  LUT4 #(
    .INIT(16'h9009)) 
    \gmux.gm[2].gms.ms_i_1__2 
       (.I0(wr_pntr_plus2[4]),
        .I1(RD_PNTR_WR[4]),
        .I2(wr_pntr_plus2[5]),
        .I3(RD_PNTR_WR[5]),
        .O(v1_reg_0[2]));
  LUT4 #(
    .INIT(16'h9009)) 
    \gmux.gm[3].gms.ms_i_1__1 
       (.I0(Q[6]),
        .I1(RD_PNTR_WR[6]),
        .I2(Q[7]),
        .I3(RD_PNTR_WR[7]),
        .O(v1_reg[3]));
  LUT4 #(
    .INIT(16'h9009)) 
    \gmux.gm[3].gms.ms_i_1__2 
       (.I0(wr_pntr_plus2[6]),
        .I1(RD_PNTR_WR[6]),
        .I2(wr_pntr_plus2[7]),
        .I3(RD_PNTR_WR[7]),
        .O(v1_reg_0[3]));
  LUT2 #(
    .INIT(4'h9)) 
    plusOp_carry__0_i_1
       (.I0(Q[8]),
        .I1(RD_PNTR_WR[8]),
        .O(\gdiff.diff_pntr_pad_reg[9] ));
  LUT2 #(
    .INIT(4'h9)) 
    plusOp_carry_i_1
       (.I0(Q[7]),
        .I1(RD_PNTR_WR[7]),
        .O(S[7]));
  LUT2 #(
    .INIT(4'h9)) 
    plusOp_carry_i_2
       (.I0(Q[6]),
        .I1(RD_PNTR_WR[6]),
        .O(S[6]));
  LUT2 #(
    .INIT(4'h9)) 
    plusOp_carry_i_3
       (.I0(Q[5]),
        .I1(RD_PNTR_WR[5]),
        .O(S[5]));
  LUT2 #(
    .INIT(4'h9)) 
    plusOp_carry_i_4
       (.I0(Q[4]),
        .I1(RD_PNTR_WR[4]),
        .O(S[4]));
  LUT2 #(
    .INIT(4'h9)) 
    plusOp_carry_i_5
       (.I0(Q[3]),
        .I1(RD_PNTR_WR[3]),
        .O(S[3]));
  LUT2 #(
    .INIT(4'h9)) 
    plusOp_carry_i_6
       (.I0(Q[2]),
        .I1(RD_PNTR_WR[2]),
        .O(S[2]));
  LUT2 #(
    .INIT(4'h9)) 
    plusOp_carry_i_7
       (.I0(Q[1]),
        .I1(RD_PNTR_WR[1]),
        .O(S[1]));
  LUT2 #(
    .INIT(4'h9)) 
    plusOp_carry_i_8
       (.I0(Q[0]),
        .I1(RD_PNTR_WR[0]),
        .O(S[0]));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_wr_logic
   (full,
    prog_full,
    Q,
    \gpr1.dout_i_reg[28] ,
    \gnxpm_cdc.wr_pntr_gc_reg[8] ,
    \gpr1.dout_i_reg[28]_0 ,
    \gpr1.dout_i_reg[28]_1 ,
    \gpr1.dout_i_reg[28]_2 ,
    \gpr1.dout_i_reg[28]_3 ,
    \gpr1.dout_i_reg[28]_4 ,
    \gpr1.dout_i_reg[28]_5 ,
    \gpr1.dout_i_reg[28]_6 ,
    \gic0.gc0.count_d1_reg[8] ,
    \gnxpm_cdc.rd_pntr_bin_reg[8] ,
    \gnxpm_cdc.rd_pntr_bin_reg[8]_0 ,
    wr_clk,
    out,
    RD_PNTR_WR,
    wr_en,
    wr_rst_busy,
    AR);
  output full;
  output prog_full;
  output [0:0]Q;
  output \gpr1.dout_i_reg[28] ;
  output [8:0]\gnxpm_cdc.wr_pntr_gc_reg[8] ;
  output \gpr1.dout_i_reg[28]_0 ;
  output \gpr1.dout_i_reg[28]_1 ;
  output \gpr1.dout_i_reg[28]_2 ;
  output \gpr1.dout_i_reg[28]_3 ;
  output \gpr1.dout_i_reg[28]_4 ;
  output \gpr1.dout_i_reg[28]_5 ;
  output \gpr1.dout_i_reg[28]_6 ;
  output [0:0]\gic0.gc0.count_d1_reg[8] ;
  input \gnxpm_cdc.rd_pntr_bin_reg[8] ;
  input \gnxpm_cdc.rd_pntr_bin_reg[8]_0 ;
  input wr_clk;
  input out;
  input [8:0]RD_PNTR_WR;
  input wr_en;
  input wr_rst_busy;
  input [0:0]AR;

  wire [0:0]AR;
  wire [0:0]Q;
  wire [8:0]RD_PNTR_WR;
  wire [3:0]\c1/v1_reg ;
  wire [3:0]\c2/v1_reg ;
  wire full;
  wire [0:0]\gic0.gc0.count_d1_reg[8] ;
  wire \gnxpm_cdc.rd_pntr_bin_reg[8] ;
  wire \gnxpm_cdc.rd_pntr_bin_reg[8]_0 ;
  wire [8:0]\gnxpm_cdc.wr_pntr_gc_reg[8] ;
  wire \gpr1.dout_i_reg[28] ;
  wire \gpr1.dout_i_reg[28]_0 ;
  wire \gpr1.dout_i_reg[28]_1 ;
  wire \gpr1.dout_i_reg[28]_2 ;
  wire \gpr1.dout_i_reg[28]_3 ;
  wire \gpr1.dout_i_reg[28]_4 ;
  wire \gpr1.dout_i_reg[28]_5 ;
  wire \gpr1.dout_i_reg[28]_6 ;
  wire \gwas.wsts_n_1 ;
  wire \gwas.wsts_n_2 ;
  wire out;
  wire [7:0]p_13_out;
  wire prog_full;
  wire wpntr_n_0;
  wire wpntr_n_1;
  wire wpntr_n_17;
  wire wpntr_n_2;
  wire wpntr_n_3;
  wire wpntr_n_4;
  wire wpntr_n_5;
  wire wpntr_n_6;
  wire wpntr_n_7;
  wire wr_clk;
  wire wr_en;
  wire wr_rst_busy;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_wr_pf_as \gwas.gpf.wrpf 
       (.AR(AR),
        .E(\gwas.wsts_n_2 ),
        .Q(p_13_out),
        .S({wpntr_n_0,wpntr_n_1,wpntr_n_2,wpntr_n_3,wpntr_n_4,wpntr_n_5,wpntr_n_6,wpntr_n_7}),
        .\gic0.gc0.count_d1_reg[8] (wpntr_n_17),
        .out(out),
        .prog_full(prog_full),
        .ram_full_fb_i_reg(\gwas.wsts_n_1 ),
        .wr_clk(wr_clk),
        .wr_rst_busy(wr_rst_busy));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_wr_status_flags_as \gwas.wsts 
       (.E(\gwas.wsts_n_2 ),
        .full(full),
        .\gnxpm_cdc.rd_pntr_bin_reg[8] (\gnxpm_cdc.rd_pntr_bin_reg[8] ),
        .\gnxpm_cdc.rd_pntr_bin_reg[8]_0 (\gnxpm_cdc.rd_pntr_bin_reg[8]_0 ),
        .\grstd1.grst_full.grst_f.rst_d2_reg (out),
        .out(\gwas.wsts_n_1 ),
        .v1_reg(\c1/v1_reg ),
        .v1_reg_0(\c2/v1_reg ),
        .wr_clk(wr_clk),
        .wr_en(wr_en),
        .wr_rst_busy(wr_rst_busy));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_wr_bin_cntr wpntr
       (.AR(AR),
        .E(\gwas.wsts_n_2 ),
        .Q({Q,p_13_out}),
        .RD_PNTR_WR(RD_PNTR_WR),
        .S({wpntr_n_0,wpntr_n_1,wpntr_n_2,wpntr_n_3,wpntr_n_4,wpntr_n_5,wpntr_n_6,wpntr_n_7}),
        .\gdiff.diff_pntr_pad_reg[9] (wpntr_n_17),
        .\gic0.gc0.count_d1_reg[8]_0 (\gic0.gc0.count_d1_reg[8] ),
        .\gnxpm_cdc.wr_pntr_gc_reg[8] (\gnxpm_cdc.wr_pntr_gc_reg[8] ),
        .\gpr1.dout_i_reg[28] (\gpr1.dout_i_reg[28] ),
        .\gpr1.dout_i_reg[28]_0 (\gpr1.dout_i_reg[28]_0 ),
        .\gpr1.dout_i_reg[28]_1 (\gpr1.dout_i_reg[28]_1 ),
        .\gpr1.dout_i_reg[28]_2 (\gpr1.dout_i_reg[28]_2 ),
        .\gpr1.dout_i_reg[28]_3 (\gpr1.dout_i_reg[28]_3 ),
        .\gpr1.dout_i_reg[28]_4 (\gpr1.dout_i_reg[28]_4 ),
        .\gpr1.dout_i_reg[28]_5 (\gpr1.dout_i_reg[28]_5 ),
        .\gpr1.dout_i_reg[28]_6 (\gpr1.dout_i_reg[28]_6 ),
        .out(\gwas.wsts_n_1 ),
        .v1_reg(\c1/v1_reg ),
        .v1_reg_0(\c2/v1_reg ),
        .wr_clk(wr_clk),
        .wr_en(wr_en));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_wr_pf_as
   (prog_full,
    wr_clk,
    out,
    E,
    Q,
    S,
    \gic0.gc0.count_d1_reg[8] ,
    wr_rst_busy,
    ram_full_fb_i_reg,
    AR);
  output prog_full;
  input wr_clk;
  input out;
  input [0:0]E;
  input [7:0]Q;
  input [7:0]S;
  input [0:0]\gic0.gc0.count_d1_reg[8] ;
  input wr_rst_busy;
  input ram_full_fb_i_reg;
  input [0:0]AR;

  wire [0:0]AR;
  wire [0:0]E;
  wire [7:0]Q;
  wire [7:0]S;
  wire [8:0]diff_pntr;
  wire [0:0]\gic0.gc0.count_d1_reg[8] ;
  wire \gpf1.prog_full_i_i_1_n_0 ;
  wire \gpf1.prog_full_i_i_2_n_0 ;
  wire \gpf1.prog_full_i_i_3_n_0 ;
  wire out;
  wire [9:1]plusOp;
  wire plusOp_carry_n_0;
  wire plusOp_carry_n_1;
  wire plusOp_carry_n_2;
  wire plusOp_carry_n_3;
  wire plusOp_carry_n_5;
  wire plusOp_carry_n_6;
  wire plusOp_carry_n_7;
  wire prog_full;
  wire ram_full_fb_i_reg;
  wire wr_clk;
  wire wr_rst_busy;
  wire [3:3]NLW_plusOp_carry_CO_UNCONNECTED;
  wire [7:0]NLW_plusOp_carry__0_CO_UNCONNECTED;
  wire [7:1]NLW_plusOp_carry__0_DI_UNCONNECTED;
  wire [7:1]NLW_plusOp_carry__0_O_UNCONNECTED;
  wire [7:1]NLW_plusOp_carry__0_S_UNCONNECTED;

  FDCE #(
    .INIT(1'b0)) 
    \gdiff.diff_pntr_pad_reg[1] 
       (.C(wr_clk),
        .CE(1'b1),
        .CLR(AR),
        .D(plusOp[1]),
        .Q(diff_pntr[0]));
  FDCE #(
    .INIT(1'b0)) 
    \gdiff.diff_pntr_pad_reg[2] 
       (.C(wr_clk),
        .CE(1'b1),
        .CLR(AR),
        .D(plusOp[2]),
        .Q(diff_pntr[1]));
  FDCE #(
    .INIT(1'b0)) 
    \gdiff.diff_pntr_pad_reg[3] 
       (.C(wr_clk),
        .CE(1'b1),
        .CLR(AR),
        .D(plusOp[3]),
        .Q(diff_pntr[2]));
  FDCE #(
    .INIT(1'b0)) 
    \gdiff.diff_pntr_pad_reg[4] 
       (.C(wr_clk),
        .CE(1'b1),
        .CLR(AR),
        .D(plusOp[4]),
        .Q(diff_pntr[3]));
  FDCE #(
    .INIT(1'b0)) 
    \gdiff.diff_pntr_pad_reg[5] 
       (.C(wr_clk),
        .CE(1'b1),
        .CLR(AR),
        .D(plusOp[5]),
        .Q(diff_pntr[4]));
  FDCE #(
    .INIT(1'b0)) 
    \gdiff.diff_pntr_pad_reg[6] 
       (.C(wr_clk),
        .CE(1'b1),
        .CLR(AR),
        .D(plusOp[6]),
        .Q(diff_pntr[5]));
  FDCE #(
    .INIT(1'b0)) 
    \gdiff.diff_pntr_pad_reg[7] 
       (.C(wr_clk),
        .CE(1'b1),
        .CLR(AR),
        .D(plusOp[7]),
        .Q(diff_pntr[6]));
  FDCE #(
    .INIT(1'b0)) 
    \gdiff.diff_pntr_pad_reg[8] 
       (.C(wr_clk),
        .CE(1'b1),
        .CLR(AR),
        .D(plusOp[8]),
        .Q(diff_pntr[7]));
  FDCE #(
    .INIT(1'b0)) 
    \gdiff.diff_pntr_pad_reg[9] 
       (.C(wr_clk),
        .CE(1'b1),
        .CLR(AR),
        .D(plusOp[9]),
        .Q(diff_pntr[8]));
  LUT5 #(
    .INIT(32'h0F010001)) 
    \gpf1.prog_full_i_i_1 
       (.I0(\gpf1.prog_full_i_i_2_n_0 ),
        .I1(\gpf1.prog_full_i_i_3_n_0 ),
        .I2(wr_rst_busy),
        .I3(ram_full_fb_i_reg),
        .I4(prog_full),
        .O(\gpf1.prog_full_i_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h777FFFFF)) 
    \gpf1.prog_full_i_i_2 
       (.I0(diff_pntr[2]),
        .I1(diff_pntr[3]),
        .I2(diff_pntr[0]),
        .I3(diff_pntr[1]),
        .I4(diff_pntr[6]),
        .O(\gpf1.prog_full_i_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \gpf1.prog_full_i_i_3 
       (.I0(diff_pntr[7]),
        .I1(diff_pntr[8]),
        .I2(diff_pntr[4]),
        .I3(diff_pntr[5]),
        .O(\gpf1.prog_full_i_i_3_n_0 ));
  FDPE #(
    .INIT(1'b1)) 
    \gpf1.prog_full_i_reg 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\gpf1.prog_full_i_i_1_n_0 ),
        .PRE(out),
        .Q(prog_full));
  CARRY8 plusOp_carry
       (.CI(E),
        .CI_TOP(1'b0),
        .CO({plusOp_carry_n_0,plusOp_carry_n_1,plusOp_carry_n_2,plusOp_carry_n_3,NLW_plusOp_carry_CO_UNCONNECTED[3],plusOp_carry_n_5,plusOp_carry_n_6,plusOp_carry_n_7}),
        .DI(Q),
        .O(plusOp[8:1]),
        .S(S));
  CARRY8 plusOp_carry__0
       (.CI(plusOp_carry_n_0),
        .CI_TOP(1'b0),
        .CO(NLW_plusOp_carry__0_CO_UNCONNECTED[7:0]),
        .DI({NLW_plusOp_carry__0_DI_UNCONNECTED[7:1],1'b0}),
        .O({NLW_plusOp_carry__0_O_UNCONNECTED[7:1],plusOp[9]}),
        .S({NLW_plusOp_carry__0_S_UNCONNECTED[7:1],\gic0.gc0.count_d1_reg[8] }));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_wr_status_flags_as
   (full,
    out,
    E,
    v1_reg,
    \gnxpm_cdc.rd_pntr_bin_reg[8] ,
    v1_reg_0,
    \gnxpm_cdc.rd_pntr_bin_reg[8]_0 ,
    wr_clk,
    \grstd1.grst_full.grst_f.rst_d2_reg ,
    wr_en,
    wr_rst_busy);
  output full;
  output out;
  output [0:0]E;
  input [3:0]v1_reg;
  input \gnxpm_cdc.rd_pntr_bin_reg[8] ;
  input [3:0]v1_reg_0;
  input \gnxpm_cdc.rd_pntr_bin_reg[8]_0 ;
  input wr_clk;
  input \grstd1.grst_full.grst_f.rst_d2_reg ;
  input wr_en;
  input wr_rst_busy;

  wire [0:0]E;
  wire c2_n_0;
  wire comp1;
  wire \gnxpm_cdc.rd_pntr_bin_reg[8] ;
  wire \gnxpm_cdc.rd_pntr_bin_reg[8]_0 ;
  wire \grstd1.grst_full.grst_f.rst_d2_reg ;
  (* DONT_TOUCH *) wire ram_full_fb_i;
  (* DONT_TOUCH *) wire ram_full_i;
  wire [3:0]v1_reg;
  wire [3:0]v1_reg_0;
  wire wr_clk;
  wire wr_en;
  wire wr_rst_busy;

  assign full = ram_full_i;
  assign out = ram_full_fb_i;
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_compare c1
       (.comp1(comp1),
        .\gnxpm_cdc.rd_pntr_bin_reg[8] (\gnxpm_cdc.rd_pntr_bin_reg[8] ),
        .v1_reg(v1_reg));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_compare_3 c2
       (.comp1(comp1),
        .\gnxpm_cdc.rd_pntr_bin_reg[8] (\gnxpm_cdc.rd_pntr_bin_reg[8]_0 ),
        .out(ram_full_fb_i),
        .ram_full_fb_i_reg(c2_n_0),
        .v1_reg_0(v1_reg_0),
        .wr_en(wr_en),
        .wr_rst_busy(wr_rst_busy));
  LUT2 #(
    .INIT(4'h2)) 
    \gic0.gc0.count_d1[8]_i_1 
       (.I0(wr_en),
        .I1(ram_full_fb_i),
        .O(E));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDPE #(
    .INIT(1'b1)) 
    ram_full_fb_i_reg
       (.C(wr_clk),
        .CE(1'b1),
        .D(c2_n_0),
        .PRE(\grstd1.grst_full.grst_f.rst_d2_reg ),
        .Q(ram_full_fb_i));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDPE #(
    .INIT(1'b1)) 
    ram_full_i_reg
       (.C(wr_clk),
        .CE(1'b1),
        .D(c2_n_0),
        .PRE(\grstd1.grst_full.grst_f.rst_d2_reg ),
        .Q(ram_full_i));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (weak1, weak0) GSR = GSR_int;
    assign (weak1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
