-- Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2016.3_sdx (lin64) Build 1721784 Tue Nov 29 22:12:24 MST 2016
-- Date        : Fri Dec 30 08:56:30 2016
-- Host        : hms-beatdown running 64-bit Ubuntu 15.10
-- Command     : write_vhdl -force -mode synth_stub
--               /home/joshbohde/code/nerabus/refdesign_test/adm-pcie-ku3_2ddr_3.1/adm-pcie-ku3_2ddr_3.1.srcs/sources_1/bd/xcl_design/ip/xcl_design_ddrmem_0/xcl_design_ddrmem_0_stub.vhdl
-- Design      : xcl_design_ddrmem_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xcku060-ffva1156-2-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity xcl_design_ddrmem_0 is
  Port ( 
    sys_rst : in STD_LOGIC;
    c0_sys_clk_p : in STD_LOGIC;
    c0_sys_clk_n : in STD_LOGIC;
    c0_ddr3_addr : out STD_LOGIC_VECTOR ( 15 downto 0 );
    c0_ddr3_ba : out STD_LOGIC_VECTOR ( 2 downto 0 );
    c0_ddr3_ras_n : out STD_LOGIC;
    c0_ddr3_cas_n : out STD_LOGIC;
    c0_ddr3_we_n : out STD_LOGIC;
    c0_ddr3_cke : out STD_LOGIC_VECTOR ( 1 downto 0 );
    c0_ddr3_odt : out STD_LOGIC_VECTOR ( 1 downto 0 );
    c0_ddr3_cs_n : out STD_LOGIC_VECTOR ( 1 downto 0 );
    c0_ddr3_ck_p : out STD_LOGIC_VECTOR ( 1 downto 0 );
    c0_ddr3_ck_n : out STD_LOGIC_VECTOR ( 1 downto 0 );
    c0_ddr3_reset_n : out STD_LOGIC;
    c0_ddr3_dq : inout STD_LOGIC_VECTOR ( 71 downto 0 );
    c0_ddr3_dqs_p : inout STD_LOGIC_VECTOR ( 8 downto 0 );
    c0_ddr3_dqs_n : inout STD_LOGIC_VECTOR ( 8 downto 0 );
    c0_init_calib_complete : out STD_LOGIC;
    c0_ddr3_ui_clk : out STD_LOGIC;
    c0_ddr3_ui_clk_sync_rst : out STD_LOGIC;
    dbg_clk : out STD_LOGIC;
    c0_ddr3_s_axi_ctrl_awvalid : in STD_LOGIC;
    c0_ddr3_s_axi_ctrl_awready : out STD_LOGIC;
    c0_ddr3_s_axi_ctrl_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    c0_ddr3_s_axi_ctrl_wvalid : in STD_LOGIC;
    c0_ddr3_s_axi_ctrl_wready : out STD_LOGIC;
    c0_ddr3_s_axi_ctrl_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    c0_ddr3_s_axi_ctrl_bvalid : out STD_LOGIC;
    c0_ddr3_s_axi_ctrl_bready : in STD_LOGIC;
    c0_ddr3_s_axi_ctrl_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    c0_ddr3_s_axi_ctrl_arvalid : in STD_LOGIC;
    c0_ddr3_s_axi_ctrl_arready : out STD_LOGIC;
    c0_ddr3_s_axi_ctrl_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    c0_ddr3_s_axi_ctrl_rvalid : out STD_LOGIC;
    c0_ddr3_s_axi_ctrl_rready : in STD_LOGIC;
    c0_ddr3_s_axi_ctrl_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    c0_ddr3_s_axi_ctrl_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    c0_ddr3_interrupt : out STD_LOGIC;
    c0_ddr3_aresetn : in STD_LOGIC;
    c0_ddr3_s_axi_awid : in STD_LOGIC_VECTOR ( 0 to 0 );
    c0_ddr3_s_axi_awaddr : in STD_LOGIC_VECTOR ( 32 downto 0 );
    c0_ddr3_s_axi_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    c0_ddr3_s_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    c0_ddr3_s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    c0_ddr3_s_axi_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    c0_ddr3_s_axi_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    c0_ddr3_s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    c0_ddr3_s_axi_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    c0_ddr3_s_axi_awvalid : in STD_LOGIC;
    c0_ddr3_s_axi_awready : out STD_LOGIC;
    c0_ddr3_s_axi_wdata : in STD_LOGIC_VECTOR ( 511 downto 0 );
    c0_ddr3_s_axi_wstrb : in STD_LOGIC_VECTOR ( 63 downto 0 );
    c0_ddr3_s_axi_wlast : in STD_LOGIC;
    c0_ddr3_s_axi_wvalid : in STD_LOGIC;
    c0_ddr3_s_axi_wready : out STD_LOGIC;
    c0_ddr3_s_axi_bready : in STD_LOGIC;
    c0_ddr3_s_axi_bid : out STD_LOGIC_VECTOR ( 0 to 0 );
    c0_ddr3_s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    c0_ddr3_s_axi_bvalid : out STD_LOGIC;
    c0_ddr3_s_axi_arid : in STD_LOGIC_VECTOR ( 0 to 0 );
    c0_ddr3_s_axi_araddr : in STD_LOGIC_VECTOR ( 32 downto 0 );
    c0_ddr3_s_axi_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    c0_ddr3_s_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    c0_ddr3_s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    c0_ddr3_s_axi_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    c0_ddr3_s_axi_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    c0_ddr3_s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    c0_ddr3_s_axi_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    c0_ddr3_s_axi_arvalid : in STD_LOGIC;
    c0_ddr3_s_axi_arready : out STD_LOGIC;
    c0_ddr3_s_axi_rready : in STD_LOGIC;
    c0_ddr3_s_axi_rid : out STD_LOGIC_VECTOR ( 0 to 0 );
    c0_ddr3_s_axi_rdata : out STD_LOGIC_VECTOR ( 511 downto 0 );
    c0_ddr3_s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    c0_ddr3_s_axi_rlast : out STD_LOGIC;
    c0_ddr3_s_axi_rvalid : out STD_LOGIC;
    dbg_bus : out STD_LOGIC_VECTOR ( 511 downto 0 )
  );

end xcl_design_ddrmem_0;

architecture stub of xcl_design_ddrmem_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "sys_rst,c0_sys_clk_p,c0_sys_clk_n,c0_ddr3_addr[15:0],c0_ddr3_ba[2:0],c0_ddr3_ras_n,c0_ddr3_cas_n,c0_ddr3_we_n,c0_ddr3_cke[1:0],c0_ddr3_odt[1:0],c0_ddr3_cs_n[1:0],c0_ddr3_ck_p[1:0],c0_ddr3_ck_n[1:0],c0_ddr3_reset_n,c0_ddr3_dq[71:0],c0_ddr3_dqs_p[8:0],c0_ddr3_dqs_n[8:0],c0_init_calib_complete,c0_ddr3_ui_clk,c0_ddr3_ui_clk_sync_rst,dbg_clk,c0_ddr3_s_axi_ctrl_awvalid,c0_ddr3_s_axi_ctrl_awready,c0_ddr3_s_axi_ctrl_awaddr[31:0],c0_ddr3_s_axi_ctrl_wvalid,c0_ddr3_s_axi_ctrl_wready,c0_ddr3_s_axi_ctrl_wdata[31:0],c0_ddr3_s_axi_ctrl_bvalid,c0_ddr3_s_axi_ctrl_bready,c0_ddr3_s_axi_ctrl_bresp[1:0],c0_ddr3_s_axi_ctrl_arvalid,c0_ddr3_s_axi_ctrl_arready,c0_ddr3_s_axi_ctrl_araddr[31:0],c0_ddr3_s_axi_ctrl_rvalid,c0_ddr3_s_axi_ctrl_rready,c0_ddr3_s_axi_ctrl_rdata[31:0],c0_ddr3_s_axi_ctrl_rresp[1:0],c0_ddr3_interrupt,c0_ddr3_aresetn,c0_ddr3_s_axi_awid[0:0],c0_ddr3_s_axi_awaddr[32:0],c0_ddr3_s_axi_awlen[7:0],c0_ddr3_s_axi_awsize[2:0],c0_ddr3_s_axi_awburst[1:0],c0_ddr3_s_axi_awlock[0:0],c0_ddr3_s_axi_awcache[3:0],c0_ddr3_s_axi_awprot[2:0],c0_ddr3_s_axi_awqos[3:0],c0_ddr3_s_axi_awvalid,c0_ddr3_s_axi_awready,c0_ddr3_s_axi_wdata[511:0],c0_ddr3_s_axi_wstrb[63:0],c0_ddr3_s_axi_wlast,c0_ddr3_s_axi_wvalid,c0_ddr3_s_axi_wready,c0_ddr3_s_axi_bready,c0_ddr3_s_axi_bid[0:0],c0_ddr3_s_axi_bresp[1:0],c0_ddr3_s_axi_bvalid,c0_ddr3_s_axi_arid[0:0],c0_ddr3_s_axi_araddr[32:0],c0_ddr3_s_axi_arlen[7:0],c0_ddr3_s_axi_arsize[2:0],c0_ddr3_s_axi_arburst[1:0],c0_ddr3_s_axi_arlock[0:0],c0_ddr3_s_axi_arcache[3:0],c0_ddr3_s_axi_arprot[2:0],c0_ddr3_s_axi_arqos[3:0],c0_ddr3_s_axi_arvalid,c0_ddr3_s_axi_arready,c0_ddr3_s_axi_rready,c0_ddr3_s_axi_rid[0:0],c0_ddr3_s_axi_rdata[511:0],c0_ddr3_s_axi_rresp[1:0],c0_ddr3_s_axi_rlast,c0_ddr3_s_axi_rvalid,dbg_bus[511:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "ddr3_v1_3_0,Vivado 2016.3_sdx";
begin
end;
