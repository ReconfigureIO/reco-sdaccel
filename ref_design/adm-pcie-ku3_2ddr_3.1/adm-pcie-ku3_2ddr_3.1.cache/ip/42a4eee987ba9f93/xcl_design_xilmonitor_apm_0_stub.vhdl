-- Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2016.3_sdx (lin64) Build 1721784 Tue Nov 29 22:12:24 MST 2016
-- Date        : Fri Dec 30 09:06:26 2016
-- Host        : hms-beatdown running 64-bit Ubuntu 15.10
-- Command     : write_vhdl -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ xcl_design_xilmonitor_apm_0_stub.vhdl
-- Design      : xcl_design_xilmonitor_apm_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xcku060-ffva1156-2-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  Port ( 
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    slot_0_axi_aclk : in STD_LOGIC;
    slot_0_axi_aresetn : in STD_LOGIC;
    slot_0_axi_awid : in STD_LOGIC_VECTOR ( 3 downto 0 );
    slot_0_axi_awaddr : in STD_LOGIC_VECTOR ( 37 downto 0 );
    slot_0_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    slot_0_axi_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    slot_0_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    slot_0_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    slot_0_axi_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    slot_0_axi_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    slot_0_axi_awvalid : in STD_LOGIC;
    slot_0_axi_awready : in STD_LOGIC;
    slot_0_axi_wdata : in STD_LOGIC_VECTOR ( 511 downto 0 );
    slot_0_axi_wstrb : in STD_LOGIC_VECTOR ( 63 downto 0 );
    slot_0_axi_wlast : in STD_LOGIC;
    slot_0_axi_wvalid : in STD_LOGIC;
    slot_0_axi_wready : in STD_LOGIC;
    slot_0_axi_bid : in STD_LOGIC_VECTOR ( 3 downto 0 );
    slot_0_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    slot_0_axi_bvalid : in STD_LOGIC;
    slot_0_axi_bready : in STD_LOGIC;
    slot_0_axi_arid : in STD_LOGIC_VECTOR ( 3 downto 0 );
    slot_0_axi_araddr : in STD_LOGIC_VECTOR ( 37 downto 0 );
    slot_0_axi_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    slot_0_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    slot_0_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    slot_0_axi_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    slot_0_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    slot_0_axi_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    slot_0_axi_arvalid : in STD_LOGIC;
    slot_0_axi_arready : in STD_LOGIC;
    slot_0_axi_rid : in STD_LOGIC_VECTOR ( 3 downto 0 );
    slot_0_axi_rdata : in STD_LOGIC_VECTOR ( 511 downto 0 );
    slot_0_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    slot_0_axi_rlast : in STD_LOGIC;
    slot_0_axi_rvalid : in STD_LOGIC;
    slot_0_axi_rready : in STD_LOGIC;
    slot_0_ext_trig : in STD_LOGIC;
    slot_0_ext_trig_stop : in STD_LOGIC;
    slot_1_axi_aclk : in STD_LOGIC;
    slot_1_axi_aresetn : in STD_LOGIC;
    slot_1_axi_awid : in STD_LOGIC_VECTOR ( 4 downto 0 );
    slot_1_axi_awaddr : in STD_LOGIC_VECTOR ( 63 downto 0 );
    slot_1_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    slot_1_axi_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    slot_1_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    slot_1_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    slot_1_axi_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    slot_1_axi_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    slot_1_axi_awvalid : in STD_LOGIC;
    slot_1_axi_awready : in STD_LOGIC;
    slot_1_axi_wdata : in STD_LOGIC_VECTOR ( 255 downto 0 );
    slot_1_axi_wstrb : in STD_LOGIC_VECTOR ( 31 downto 0 );
    slot_1_axi_wlast : in STD_LOGIC;
    slot_1_axi_wvalid : in STD_LOGIC;
    slot_1_axi_wready : in STD_LOGIC;
    slot_1_axi_bid : in STD_LOGIC_VECTOR ( 4 downto 0 );
    slot_1_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    slot_1_axi_bvalid : in STD_LOGIC;
    slot_1_axi_bready : in STD_LOGIC;
    slot_1_axi_arid : in STD_LOGIC_VECTOR ( 4 downto 0 );
    slot_1_axi_araddr : in STD_LOGIC_VECTOR ( 63 downto 0 );
    slot_1_axi_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    slot_1_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    slot_1_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    slot_1_axi_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    slot_1_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    slot_1_axi_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    slot_1_axi_arvalid : in STD_LOGIC;
    slot_1_axi_arready : in STD_LOGIC;
    slot_1_axi_rid : in STD_LOGIC_VECTOR ( 4 downto 0 );
    slot_1_axi_rdata : in STD_LOGIC_VECTOR ( 255 downto 0 );
    slot_1_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    slot_1_axi_rlast : in STD_LOGIC;
    slot_1_axi_rvalid : in STD_LOGIC;
    slot_1_axi_rready : in STD_LOGIC;
    slot_1_ext_trig : in STD_LOGIC;
    slot_1_ext_trig_stop : in STD_LOGIC;
    slot_2_axi_aclk : in STD_LOGIC;
    slot_2_axi_aresetn : in STD_LOGIC;
    slot_2_axi_awid : in STD_LOGIC_VECTOR ( 3 downto 0 );
    slot_2_axi_awaddr : in STD_LOGIC_VECTOR ( 37 downto 0 );
    slot_2_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    slot_2_axi_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    slot_2_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    slot_2_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    slot_2_axi_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    slot_2_axi_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    slot_2_axi_awvalid : in STD_LOGIC;
    slot_2_axi_awready : in STD_LOGIC;
    slot_2_axi_wdata : in STD_LOGIC_VECTOR ( 511 downto 0 );
    slot_2_axi_wstrb : in STD_LOGIC_VECTOR ( 63 downto 0 );
    slot_2_axi_wlast : in STD_LOGIC;
    slot_2_axi_wvalid : in STD_LOGIC;
    slot_2_axi_wready : in STD_LOGIC;
    slot_2_axi_bid : in STD_LOGIC_VECTOR ( 3 downto 0 );
    slot_2_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    slot_2_axi_bvalid : in STD_LOGIC;
    slot_2_axi_bready : in STD_LOGIC;
    slot_2_axi_arid : in STD_LOGIC_VECTOR ( 3 downto 0 );
    slot_2_axi_araddr : in STD_LOGIC_VECTOR ( 37 downto 0 );
    slot_2_axi_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    slot_2_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    slot_2_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    slot_2_axi_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    slot_2_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    slot_2_axi_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    slot_2_axi_arvalid : in STD_LOGIC;
    slot_2_axi_arready : in STD_LOGIC;
    slot_2_axi_rid : in STD_LOGIC_VECTOR ( 3 downto 0 );
    slot_2_axi_rdata : in STD_LOGIC_VECTOR ( 511 downto 0 );
    slot_2_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    slot_2_axi_rlast : in STD_LOGIC;
    slot_2_axi_rvalid : in STD_LOGIC;
    slot_2_axi_rready : in STD_LOGIC;
    slot_2_ext_trig : in STD_LOGIC;
    slot_2_ext_trig_stop : in STD_LOGIC;
    ext_clk_0 : in STD_LOGIC;
    ext_rstn_0 : in STD_LOGIC;
    ext_event_0_cnt_start : in STD_LOGIC;
    ext_event_0_cnt_stop : in STD_LOGIC;
    ext_event_0 : in STD_LOGIC;
    ext_clk_1 : in STD_LOGIC;
    ext_rstn_1 : in STD_LOGIC;
    ext_event_1_cnt_start : in STD_LOGIC;
    ext_event_1_cnt_stop : in STD_LOGIC;
    ext_event_1 : in STD_LOGIC;
    ext_clk_2 : in STD_LOGIC;
    ext_rstn_2 : in STD_LOGIC;
    ext_event_2_cnt_start : in STD_LOGIC;
    ext_event_2_cnt_stop : in STD_LOGIC;
    ext_event_2 : in STD_LOGIC;
    capture_event : in STD_LOGIC;
    reset_event : in STD_LOGIC;
    core_aclk : in STD_LOGIC;
    core_aresetn : in STD_LOGIC;
    m_axis_aclk : in STD_LOGIC;
    m_axis_aresetn : in STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 95 downto 0 );
    m_axis_tstrb : out STD_LOGIC_VECTOR ( 11 downto 0 );
    m_axis_tvalid : out STD_LOGIC;
    m_axis_tid : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_tready : in STD_LOGIC;
    interrupt : out STD_LOGIC
  );

end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture stub of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "s_axi_aclk,s_axi_aresetn,s_axi_awaddr[15:0],s_axi_awvalid,s_axi_awready,s_axi_wdata[31:0],s_axi_wstrb[3:0],s_axi_wvalid,s_axi_wready,s_axi_bresp[1:0],s_axi_bvalid,s_axi_bready,s_axi_araddr[15:0],s_axi_arvalid,s_axi_arready,s_axi_rdata[31:0],s_axi_rresp[1:0],s_axi_rvalid,s_axi_rready,slot_0_axi_aclk,slot_0_axi_aresetn,slot_0_axi_awid[3:0],slot_0_axi_awaddr[37:0],slot_0_axi_awprot[2:0],slot_0_axi_awlen[7:0],slot_0_axi_awsize[2:0],slot_0_axi_awburst[1:0],slot_0_axi_awcache[3:0],slot_0_axi_awlock[0:0],slot_0_axi_awvalid,slot_0_axi_awready,slot_0_axi_wdata[511:0],slot_0_axi_wstrb[63:0],slot_0_axi_wlast,slot_0_axi_wvalid,slot_0_axi_wready,slot_0_axi_bid[3:0],slot_0_axi_bresp[1:0],slot_0_axi_bvalid,slot_0_axi_bready,slot_0_axi_arid[3:0],slot_0_axi_araddr[37:0],slot_0_axi_arlen[7:0],slot_0_axi_arsize[2:0],slot_0_axi_arburst[1:0],slot_0_axi_arcache[3:0],slot_0_axi_arprot[2:0],slot_0_axi_arlock[0:0],slot_0_axi_arvalid,slot_0_axi_arready,slot_0_axi_rid[3:0],slot_0_axi_rdata[511:0],slot_0_axi_rresp[1:0],slot_0_axi_rlast,slot_0_axi_rvalid,slot_0_axi_rready,slot_0_ext_trig,slot_0_ext_trig_stop,slot_1_axi_aclk,slot_1_axi_aresetn,slot_1_axi_awid[4:0],slot_1_axi_awaddr[63:0],slot_1_axi_awprot[2:0],slot_1_axi_awlen[7:0],slot_1_axi_awsize[2:0],slot_1_axi_awburst[1:0],slot_1_axi_awcache[3:0],slot_1_axi_awlock[0:0],slot_1_axi_awvalid,slot_1_axi_awready,slot_1_axi_wdata[255:0],slot_1_axi_wstrb[31:0],slot_1_axi_wlast,slot_1_axi_wvalid,slot_1_axi_wready,slot_1_axi_bid[4:0],slot_1_axi_bresp[1:0],slot_1_axi_bvalid,slot_1_axi_bready,slot_1_axi_arid[4:0],slot_1_axi_araddr[63:0],slot_1_axi_arlen[7:0],slot_1_axi_arsize[2:0],slot_1_axi_arburst[1:0],slot_1_axi_arcache[3:0],slot_1_axi_arprot[2:0],slot_1_axi_arlock[0:0],slot_1_axi_arvalid,slot_1_axi_arready,slot_1_axi_rid[4:0],slot_1_axi_rdata[255:0],slot_1_axi_rresp[1:0],slot_1_axi_rlast,slot_1_axi_rvalid,slot_1_axi_rready,slot_1_ext_trig,slot_1_ext_trig_stop,slot_2_axi_aclk,slot_2_axi_aresetn,slot_2_axi_awid[3:0],slot_2_axi_awaddr[37:0],slot_2_axi_awprot[2:0],slot_2_axi_awlen[7:0],slot_2_axi_awsize[2:0],slot_2_axi_awburst[1:0],slot_2_axi_awcache[3:0],slot_2_axi_awlock[0:0],slot_2_axi_awvalid,slot_2_axi_awready,slot_2_axi_wdata[511:0],slot_2_axi_wstrb[63:0],slot_2_axi_wlast,slot_2_axi_wvalid,slot_2_axi_wready,slot_2_axi_bid[3:0],slot_2_axi_bresp[1:0],slot_2_axi_bvalid,slot_2_axi_bready,slot_2_axi_arid[3:0],slot_2_axi_araddr[37:0],slot_2_axi_arlen[7:0],slot_2_axi_arsize[2:0],slot_2_axi_arburst[1:0],slot_2_axi_arcache[3:0],slot_2_axi_arprot[2:0],slot_2_axi_arlock[0:0],slot_2_axi_arvalid,slot_2_axi_arready,slot_2_axi_rid[3:0],slot_2_axi_rdata[511:0],slot_2_axi_rresp[1:0],slot_2_axi_rlast,slot_2_axi_rvalid,slot_2_axi_rready,slot_2_ext_trig,slot_2_ext_trig_stop,ext_clk_0,ext_rstn_0,ext_event_0_cnt_start,ext_event_0_cnt_stop,ext_event_0,ext_clk_1,ext_rstn_1,ext_event_1_cnt_start,ext_event_1_cnt_stop,ext_event_1,ext_clk_2,ext_rstn_2,ext_event_2_cnt_start,ext_event_2_cnt_stop,ext_event_2,capture_event,reset_event,core_aclk,core_aresetn,m_axis_aclk,m_axis_aresetn,m_axis_tdata[95:0],m_axis_tstrb[11:0],m_axis_tvalid,m_axis_tid[0:0],m_axis_tready,interrupt";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "axi_perf_mon_v5_0_12_top,Vivado 2016.3_sdx";
begin
end;
