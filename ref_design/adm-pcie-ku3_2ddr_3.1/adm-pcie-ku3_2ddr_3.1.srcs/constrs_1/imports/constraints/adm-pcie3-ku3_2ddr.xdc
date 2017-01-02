# Clocks
# ------------------------------------------------------------------------------
create_clock -period 10.000 -name ref_clk [get_ports {ref_clk_clk_p[0]}]
set_min_delay 0.500 -to [get_pins -filter REF_PIN_NAME==RIU_NIBBLE_SEL -of [get_cells -hier -filter REF_NAME==BITSLICE_CONTROL]]
set_min_delay 0.500 -to [get_pins -filter REF_PIN_NAME=~RIU_ADDR[*] -of [get_cells -hier -filter REF_NAME==BITSLICE_CONTROL]]
set_min_delay 0.500 -to [get_pins -filter REF_PIN_NAME=~RIU_WR_DATA[*] -of [get_cells -hier -filter REF_NAME==BITSLICE_CONTROL]]
set_min_delay 0.500 -to [get_pins -filter REF_PIN_NAME==RIU_WR_EN -of [get_cells -hier -filter REF_NAME==BITSLICE_CONTROL]]
set_min_delay 0.200 -to [get_pins -filter REF_PIN_NAME==FIFO_RD_EN -of [get_cells -hier -filter REF_NAME=~RX*_BITSLICE]]
set_max_delay 9.500 -from [get_pins -filter REF_PIN_NAME==RIU_CLK -of [get_cells -hier -filter REF_NAME==BITSLICE_CONTROL]]
set_max_delay 4.500 -through [get_pins -filter REF_PIN_NAME=~Q[*] -of [get_cells -hier -filter REF_NAME=~RX*_BITSLICE]]
set_min_delay 0.500 -to [get_pins -filter REF_PIN_NAME==TBYTE_IN[3] -of [get_cells -hier -filter REF_NAME==BITSLICE_CONTROL]]

# False paths
# ------------------------------------------------------------------------------
set_false_path -to [get_pins -hier -filter {NAME =~ */flash_programmer/inst/reg_data_out_*reg[*]/D}]

# Configuration
# ------------------------------------------------------------------------------
set_property CONFIG_VOLTAGE 1.8                         [current_design]
set_property CFGBVS GND                                 [current_design]
set_property BITSTREAM.CONFIG.BPI_SYNC_MODE Type1       [current_design]
set_property BITSTREAM.CONFIG.EXTMASTERCCLK_EN {DIV-1}  [current_design]
set_property BITSTREAM.CONFIG.CONFIGFALLBACK Enable     [current_design]
set_property BITSTREAM.CONFIG.NEXT_CONFIG_REBOOT Enable [current_design]
set_property BITSTREAM.GENERAL.COMPRESS TRUE            [current_design]
set_property BITSTREAM.CONFIG.CONFIGRATE 22             [current_design]

# IO constraints
# ------------------------------------------------------------------------------
# ref_clk
set_property PACKAGE_PIN AB6     [get_ports {ref_clk_clk_p[0]}]

# perst_n
set_property PACKAGE_PIN K22     [get_ports perst_n]
set_property IOSTANDARD LVCMOS18 [get_ports perst_n]

# init_calib_complete
set_property PACKAGE_PIN AE12    [get_ports init_calib_complete]
set_property IOSTANDARD LVCMOS18 [get_ports init_calib_complete]

# LED0 - link up
set_property PACKAGE_PIN AF12    [get_ports led_0]
set_property IOSTANDARD LVCMOS18 [get_ports led_0]

# Flash address pins
set_property PACKAGE_PIN G27     [get_ports {flash_A[26]}]
set_property PACKAGE_PIN H27     [get_ports {flash_A[25]}]
set_property PACKAGE_PIN H26     [get_ports {flash_A[24]}]
set_property PACKAGE_PIN J26     [get_ports {flash_A[23]}]
set_property PACKAGE_PIN H24     [get_ports {flash_A[22]}]
set_property PACKAGE_PIN J23     [get_ports {flash_A[21]}]
set_property PACKAGE_PIN L27     [get_ports {flash_A[20]}]
set_property PACKAGE_PIN M27     [get_ports {flash_A[19]}]
set_property PACKAGE_PIN L24     [get_ports {flash_A[18]}]
set_property PACKAGE_PIN L23     [get_ports {flash_A[17]}]
set_property PACKAGE_PIN K25     [get_ports {flash_A[16]}]
set_property PACKAGE_PIN L25     [get_ports {flash_A[15]}]
set_property PACKAGE_PIN K23     [get_ports {flash_A[14]}]
set_property PACKAGE_PIN L22     [get_ports {flash_A[13]}]
set_property PACKAGE_PIN M26     [get_ports {flash_A[12]}]
set_property PACKAGE_PIN M25     [get_ports {flash_A[11]}]
set_property PACKAGE_PIN M24     [get_ports {flash_A[10]}]
set_property PACKAGE_PIN N24     [get_ports {flash_A[9]}]
set_property PACKAGE_PIN N26     [get_ports {flash_A[8]}]
set_property PACKAGE_PIN P26     [get_ports {flash_A[7]}]
set_property PACKAGE_PIN P25     [get_ports {flash_A[6]}]
set_property PACKAGE_PIN P24     [get_ports {flash_A[5]}]
set_property PACKAGE_PIN R27     [get_ports {flash_A[4]}]
set_property PACKAGE_PIN T27     [get_ports {flash_A[3]}]
set_property PACKAGE_PIN T25     [get_ports {flash_A[2]}]
set_property PACKAGE_PIN T24     [get_ports {flash_A[1]}]
set_property IOSTANDARD LVCMOS18 [get_ports {flash_A[26]}]
set_property IOSTANDARD LVCMOS18 [get_ports {flash_A[25]}]
set_property IOSTANDARD LVCMOS18 [get_ports {flash_A[24]}]
set_property IOSTANDARD LVCMOS18 [get_ports {flash_A[23]}]
set_property IOSTANDARD LVCMOS18 [get_ports {flash_A[22]}]
set_property IOSTANDARD LVCMOS18 [get_ports {flash_A[21]}]
set_property IOSTANDARD LVCMOS18 [get_ports {flash_A[20]}]
set_property IOSTANDARD LVCMOS18 [get_ports {flash_A[19]}]
set_property IOSTANDARD LVCMOS18 [get_ports {flash_A[18]}]
set_property IOSTANDARD LVCMOS18 [get_ports {flash_A[17]}]
set_property IOSTANDARD LVCMOS18 [get_ports {flash_A[16]}]
set_property IOSTANDARD LVCMOS18 [get_ports {flash_A[15]}]
set_property IOSTANDARD LVCMOS18 [get_ports {flash_A[14]}]
set_property IOSTANDARD LVCMOS18 [get_ports {flash_A[13]}]
set_property IOSTANDARD LVCMOS18 [get_ports {flash_A[12]}]
set_property IOSTANDARD LVCMOS18 [get_ports {flash_A[11]}]
set_property IOSTANDARD LVCMOS18 [get_ports {flash_A[10]}]
set_property IOSTANDARD LVCMOS18 [get_ports {flash_A[9]}]
set_property IOSTANDARD LVCMOS18 [get_ports {flash_A[8]}]
set_property IOSTANDARD LVCMOS18 [get_ports {flash_A[7]}]
set_property IOSTANDARD LVCMOS18 [get_ports {flash_A[6]}]
set_property IOSTANDARD LVCMOS18 [get_ports {flash_A[5]}]
set_property IOSTANDARD LVCMOS18 [get_ports {flash_A[4]}]
set_property IOSTANDARD LVCMOS18 [get_ports {flash_A[3]}]
set_property IOSTANDARD LVCMOS18 [get_ports {flash_A[2]}]
set_property IOSTANDARD LVCMOS18 [get_ports {flash_A[1]}]

# Flash control pins
set_property PACKAGE_PIN G25     [get_ports flash_OE_N]
set_property IOSTANDARD LVCMOS18 [get_ports flash_OE_N]
set_property PACKAGE_PIN G26     [get_ports flash_WE_N]
set_property IOSTANDARD LVCMOS18 [get_ports flash_WE_N]
set_property PACKAGE_PIN N27     [get_ports flash_ADV_N]
set_property IOSTANDARD LVCMOS18 [get_ports flash_ADV_N]

# Flash data pins
set_property PACKAGE_PIN M20    [get_ports {flash_DQ[4]}]
set_property PACKAGE_PIN L20    [get_ports {flash_DQ[5]}]
set_property PACKAGE_PIN R21    [get_ports {flash_DQ[6]}]
set_property PACKAGE_PIN R22    [get_ports {flash_DQ[7]}]
set_property PACKAGE_PIN P20    [get_ports {flash_DQ[8]}]
set_property PACKAGE_PIN P21    [get_ports {flash_DQ[9]}]
set_property PACKAGE_PIN N22    [get_ports {flash_DQ[10]}]
set_property PACKAGE_PIN M22    [get_ports {flash_DQ[11]}]
set_property PACKAGE_PIN R23    [get_ports {flash_DQ[12]}]
set_property PACKAGE_PIN P23    [get_ports {flash_DQ[13]}]
set_property PACKAGE_PIN R25    [get_ports {flash_DQ[14]}]
set_property PACKAGE_PIN R26    [get_ports {flash_DQ[15]}]
set_property IOSTANDARD LVCMOS18 [get_ports {flash_DQ[4]}]
set_property IOSTANDARD LVCMOS18 [get_ports {flash_DQ[5]}]
set_property IOSTANDARD LVCMOS18 [get_ports {flash_DQ[6]}]
set_property IOSTANDARD LVCMOS18 [get_ports {flash_DQ[7]}]
set_property IOSTANDARD LVCMOS18 [get_ports {flash_DQ[8]}]
set_property IOSTANDARD LVCMOS18 [get_ports {flash_DQ[9]}]
set_property IOSTANDARD LVCMOS18 [get_ports {flash_DQ[10]}]
set_property IOSTANDARD LVCMOS18 [get_ports {flash_DQ[11]}]
set_property IOSTANDARD LVCMOS18 [get_ports {flash_DQ[12]}]
set_property IOSTANDARD LVCMOS18 [get_ports {flash_DQ[13]}]
set_property IOSTANDARD LVCMOS18 [get_ports {flash_DQ[14]}]
set_property IOSTANDARD LVCMOS18 [get_ports {flash_DQ[15]}]

# Floorplanning
# ------------------------------------------------------------------------------
create_pblock pblock_ddrmem
add_cells_to_pblock [get_pblocks pblock_ddrmem] [get_cells [list xcl_design_i/expanded_region/memory/ddrmem]]
resize_pblock [get_pblocks pblock_ddrmem] -add {SLICE_X104Y0:SLICE_X104Y59 SLICE_X93Y0:SLICE_X102Y59 SLICE_X80Y0:SLICE_X91Y59 SLICE_X68Y0:SLICE_X78Y59 SLICE_X56Y0:SLICE_X66Y59 SLICE_X49Y0:SLICE_X54Y59 SLICE_X48Y0:SLICE_X48Y179}
resize_pblock [get_pblocks pblock_ddrmem] -add {DSP48E2_X9Y0:DSP48E2_X18Y23}
resize_pblock [get_pblocks pblock_ddrmem] -add {RAMB18_X6Y0:RAMB18_X13Y23}
resize_pblock [get_pblocks pblock_ddrmem] -add {RAMB36_X6Y0:RAMB36_X13Y11}
set_property EXCLUDE_PLACEMENT 1 [get_pblocks pblock_ddrmem]

create_pblock pblock_ddrmem_2
add_cells_to_pblock [get_pblocks pblock_ddrmem_2] [get_cells [list xcl_design_i/expanded_region/memory/ddrmem_2]]
resize_pblock [get_pblocks pblock_ddrmem_2] -add {SLICE_X116Y240:SLICE_X118Y299 SLICE_X104Y240:SLICE_X114Y299 SLICE_X96Y240:SLICE_X102Y299 SLICE_X96Y120:SLICE_X118Y239}
resize_pblock [get_pblocks pblock_ddrmem_2] -add {RAMB18_X12Y48:RAMB18_X14Y119}
resize_pblock [get_pblocks pblock_ddrmem_2] -add {RAMB36_X12Y24:RAMB36_X14Y59}

set_property HD.RECONFIGURABLE true [get_cells xcl_design_i/expanded_region/u_ocl_region]
create_pblock pblock_u_ocl_region
add_cells_to_pblock [get_pblocks pblock_u_ocl_region] [get_cells -quiet [list xcl_design_i/expanded_region/u_ocl_region]]
resize_pblock [get_pblocks pblock_u_ocl_region] -add {SLICE_X93Y240:SLICE_X95Y299 SLICE_X80Y240:SLICE_X91Y299 SLICE_X68Y240:SLICE_X78Y299 SLICE_X56Y240:SLICE_X66Y299 SLICE_X45Y240:SLICE_X54Y299 SLICE_X32Y240:SLICE_X43Y299 SLICE_X20Y240:SLICE_X30Y299 SLICE_X8Y240:SLICE_X18Y299 SLICE_X0Y240:SLICE_X6Y299 SLICE_X0Y180:SLICE_X95Y239 SLICE_X49Y60:SLICE_X95Y179 SLICE_X0Y60:SLICE_X47Y179 SLICE_X45Y0:SLICE_X47Y59 SLICE_X32Y0:SLICE_X43Y59 SLICE_X20Y0:SLICE_X30Y59 SLICE_X8Y0:SLICE_X18Y59 SLICE_X0Y0:SLICE_X6Y59}
resize_pblock [get_pblocks pblock_u_ocl_region] -add {DSP48E2_X9Y24:DSP48E2_X17Y119 DSP48E2_X0Y0:DSP48E2_X8Y119}
resize_pblock [get_pblocks pblock_u_ocl_region] -add {GTHE3_CHANNEL_X0Y8:GTHE3_CHANNEL_X0Y19}
resize_pblock [get_pblocks pblock_u_ocl_region] -add {GTHE3_COMMON_X0Y2:GTHE3_COMMON_X0Y4}
resize_pblock [get_pblocks pblock_u_ocl_region] -add {IOB_X1Y156:IOB_X1Y259 IOB_X0Y0:IOB_X0Y103}
resize_pblock [get_pblocks pblock_u_ocl_region] -add {LAGUNA_X8Y120:LAGUNA_X15Y239 LAGUNA_X0Y0:LAGUNA_X7Y239}
resize_pblock [get_pblocks pblock_u_ocl_region] -add {RAMB18_X6Y24:RAMB18_X11Y119 RAMB18_X0Y0:RAMB18_X5Y119}
resize_pblock [get_pblocks pblock_u_ocl_region] -add {RAMB36_X6Y12:RAMB36_X11Y59 RAMB36_X0Y0:RAMB36_X5Y59}
resize_pblock [get_pblocks pblock_u_ocl_region] -add {RIU_OR_X1Y12:RIU_OR_X1Y19}
resize_pblock [get_pblocks pblock_u_ocl_region] -add {RIU_OR_X0Y0:RIU_OR_X0Y7}

resize_pblock [get_pblocks pblock_ddrmem] -add SLICE_X48Y60:SLICE_X48Y179 -remove SLICE_X48Y60:SLICE_X50Y179

# Constraints from DDR3 IP
# ------------------------------------------------------------------------------

## Pad Function: IO_L13N_T2L_N1_GC_QBC_67
set_property PACKAGE_PIN C23 [ get_ports "c0_sys_clk_n" ]

## Pad Function: IO_L13P_T2L_N0_GC_QBC_67
set_property PACKAGE_PIN D23 [ get_ports "c0_sys_clk_p" ]

## Pad Function: IO_L4N_T0U_N7_DBC_AD7N_66
set_property PACKAGE_PIN A10 [ get_ports "c0_ddr3_dqs_n[0]" ]

## Pad Function: IO_L23N_T3U_N9_66
set_property PACKAGE_PIN A12 [ get_ports "c0_ddr3_dq[30]" ]

## Pad Function: IO_L23P_T3U_N8_66
set_property PACKAGE_PIN A13 [ get_ports "c0_ddr3_dq[28]" ]

## Pad Function: IO_L3N_T0L_N5_AD15N_68
set_property PACKAGE_PIN A15 [ get_ports "c0_ddr3_dq[70]" ]

## Pad Function: IO_L2N_T0L_N3_68
set_property PACKAGE_PIN A18 [ get_ports "c0_ddr3_dq[66]" ]

## Pad Function: IO_L2P_T0L_N2_68
set_property PACKAGE_PIN A19 [ get_ports "c0_ddr3_dq[71]" ]

## Pad Function: IO_T2U_N12_67
set_property PACKAGE_PIN A22 [ get_ports "c0_ddr3_addr[5]" ]

## Pad Function: IO_T1U_N12_67
set_property PACKAGE_PIN A23 [ get_ports "c0_ddr3_addr[8]" ]

## Pad Function: IO_L10N_T1U_N7_QBC_AD4N_67
set_property PACKAGE_PIN A24 [ get_ports "c0_ddr3_ck_n[0]" ]

## Pad Function: IO_L16N_T2U_N7_QBC_AD3N_67
set_property PACKAGE_PIN C22 [ get_ports "c0_ddr3_ck_n[1]" ]

## Pad Function: IO_L8N_T1L_N3_AD5N_67
set_property PACKAGE_PIN A25 [ get_ports "c0_ddr3_addr[12]" ]

## Pad Function: IO_L6P_T0U_N10_AD6P_67
set_property PACKAGE_PIN A27 [ get_ports "c0_ddr3_addr[10]" ]

## Pad Function: IO_L4N_T0U_N7_DBC_AD7N_67
set_property PACKAGE_PIN A29 [ get_ports "c0_ddr3_addr[13]" ]

## Pad Function: IO_L2N_T0L_N3_66
set_property PACKAGE_PIN A9 [ get_ports "c0_ddr3_dq[2]" ]

## Pad Function: IO_L4P_T0U_N6_DBC_AD7P_66
set_property PACKAGE_PIN B10 [ get_ports "c0_ddr3_dqs_p[0]" ]

## Pad Function: IO_L21N_T3L_N5_AD8N_66
set_property PACKAGE_PIN B11 [ get_ports "c0_ddr3_dq[27]" ]

## Pad Function: IO_L20N_T3L_N3_AD1N_66
set_property PACKAGE_PIN B12 [ get_ports "c0_ddr3_dq[31]" ]

## Pad Function: IO_L1P_T0L_N0_DBC_68
#set_property PACKAGE_PIN B14 [ get_ports "c0_ddr3_dm[8]" ]

## Pad Function: IO_L3P_T0L_N4_AD15P_68
set_property PACKAGE_PIN B15 [ get_ports "c0_ddr3_dq[69]" ]

## Pad Function: IO_L5N_T0U_N9_AD14N_68
set_property PACKAGE_PIN B16 [ get_ports "c0_ddr3_dq[64]" ]

## Pad Function: IO_L5P_T0U_N8_AD14P_68
set_property PACKAGE_PIN B17 [ get_ports "c0_ddr3_dq[65]" ]

## Pad Function: IO_L4N_T0U_N7_DBC_AD7N_68
set_property PACKAGE_PIN B19 [ get_ports "c0_ddr3_dqs_n[8]" ]

## Pad Function: IO_L17P_T2U_N8_AD10P_67
set_property PACKAGE_PIN B20 [ get_ports "c0_ddr3_addr[1]" ]

## Pad Function: IO_L15P_T2L_N4_AD11P_67
set_property PACKAGE_PIN B21 [ get_ports "c0_ddr3_addr[3]" ]

## Pad Function: IO_L15N_T2L_N5_AD11N_67
set_property PACKAGE_PIN B22 [ get_ports "c0_ddr3_ba[2]" ]

## Pad Function: IO_L10P_T1U_N6_QBC_AD4P_67
set_property PACKAGE_PIN B24 [ get_ports "c0_ddr3_ck_p[0]" ]

## Pad Function: IO_L16P_T2U_N6_QBC_AD3P_67
set_property PACKAGE_PIN C21 [ get_ports "c0_ddr3_ck_p[1]" ]

## Pad Function: IO_L8P_T1L_N2_AD5P_67
set_property PACKAGE_PIN B25 [ get_ports "c0_ddr3_reset_n" ]

## Pad Function: IO_L2N_T0L_N3_67
set_property PACKAGE_PIN B27 [ get_ports "c0_ddr3_cs_n[0]" ]

## Pad Function: IO_L6N_T0U_N11_AD6N_67
set_property PACKAGE_PIN A28 [ get_ports "c0_ddr3_cs_n[1]" ]

## Pad Function: IO_L2P_T0L_N2_66
set_property PACKAGE_PIN B9 [ get_ports "c0_ddr3_dq[3]" ]

## Pad Function: IO_L21P_T3L_N4_AD8P_66
set_property PACKAGE_PIN C11 [ get_ports "c0_ddr3_dq[25]" ]

## Pad Function: IO_L20P_T3L_N2_AD1P_66
set_property PACKAGE_PIN C12 [ get_ports "c0_ddr3_dq[26]" ]

## Pad Function: IO_L24N_T3U_N11_66
set_property PACKAGE_PIN C13 [ get_ports "c0_ddr3_dq[29]" ]

## Pad Function: IO_L6N_T0U_N11_AD6N_68
set_property PACKAGE_PIN C17 [ get_ports "c0_ddr3_dq[68]" ]

## Pad Function: IO_L6P_T0U_N10_AD6P_68
set_property PACKAGE_PIN C18 [ get_ports "c0_ddr3_dq[67]" ]

## Pad Function: IO_L4P_T0U_N6_DBC_AD7P_68
set_property PACKAGE_PIN C19 [ get_ports "c0_ddr3_dqs_p[8]" ]

## Pad Function: IO_L12N_T1U_N11_GC_67
set_property PACKAGE_PIN C24 [ get_ports "c0_ddr3_addr[0]" ]

## Pad Function: IO_L9P_T1L_N4_AD12P_67
set_property PACKAGE_PIN C26 [ get_ports "c0_ddr3_cke[0]" ]

## Pad Function: IO_L9N_T1L_N5_AD12N_67
set_property PACKAGE_PIN B26 [ get_ports "c0_ddr3_cke[1]" ]

## Pad Function: IO_L2P_T0L_N2_67
set_property PACKAGE_PIN C27 [ get_ports "c0_ddr3_cas_n" ]

## Pad Function: IO_L5N_T0U_N9_AD14N_67
set_property PACKAGE_PIN C28 [ get_ports "c0_ddr3_odt[0]" ]

## Pad Function: IO_L4P_T0U_N6_DBC_AD7P_67
set_property PACKAGE_PIN B29 [ get_ports "c0_ddr3_odt[1]" ]

## Pad Function: IO_L3N_T0L_N5_AD15N_66
set_property PACKAGE_PIN C8 [ get_ports "c0_ddr3_dq[0]" ]

## Pad Function: IO_L5N_T0U_N9_AD14N_66
set_property PACKAGE_PIN C9 [ get_ports "c0_ddr3_dq[7]" ]

## Pad Function: IO_L6N_T0U_N11_AD6N_66
set_property PACKAGE_PIN D10 [ get_ports "c0_ddr3_dq[4]" ]

## Pad Function: IO_L24P_T3U_N10_66
set_property PACKAGE_PIN D13 [ get_ports "c0_ddr3_dq[24]" ]

## Pad Function: IO_L7P_T1L_N0_QBC_AD13P_68
#set_property PACKAGE_PIN D14 [ get_ports "c0_ddr3_dm[2]" ]

## Pad Function: IO_L8N_T1L_N3_AD5N_68
set_property PACKAGE_PIN D15 [ get_ports "c0_ddr3_dq[23]" ]

## Pad Function: IO_L11N_T1U_N9_GC_68
set_property PACKAGE_PIN D16 [ get_ports "c0_ddr3_dq[20]" ]

## Pad Function: IO_L10N_T1U_N7_QBC_AD4N_68
set_property PACKAGE_PIN D18 [ get_ports "c0_ddr3_dqs_n[2]" ]

## Pad Function: IO_L10P_T1U_N6_QBC_AD4P_68
set_property PACKAGE_PIN D19 [ get_ports "c0_ddr3_dqs_p[2]" ]

## Pad Function: IO_L12P_T1U_N10_GC_67
set_property PACKAGE_PIN D24 [ get_ports "c0_ddr3_addr[14]" ]

## Pad Function: IO_L11N_T1U_N9_GC_67
set_property PACKAGE_PIN D25 [ get_ports "c0_ddr3_addr[11]" ]

## Pad Function: IO_L7N_T1L_N1_QBC_AD13N_67
set_property PACKAGE_PIN D26 [ get_ports "c0_ddr3_ba[1]" ]

## Pad Function: IO_L5P_T0U_N8_AD14P_67
set_property PACKAGE_PIN D28 [ get_ports "c0_ddr3_ras_n" ]

## Pad Function: IO_L3N_T0L_N5_AD15N_67
set_property PACKAGE_PIN D29 [ get_ports "c0_ddr3_we_n" ]

## Pad Function: IO_L3P_T0L_N4_AD15P_66
set_property PACKAGE_PIN D8 [ get_ports "c0_ddr3_dq[1]" ]

## Pad Function: IO_L5P_T0U_N8_AD14P_66
set_property PACKAGE_PIN D9 [ get_ports "c0_ddr3_dq[5]" ]

## Pad Function: IO_L6P_T0U_N10_AD6P_66
set_property PACKAGE_PIN E10 [ get_ports "c0_ddr3_dq[6]" ]

## Pad Function: IO_L19P_T3L_N0_DBC_AD9P_66
#set_property PACKAGE_PIN E11 [ get_ports "c0_ddr3_dm[3]" ]

## Pad Function: IO_L22N_T3U_N7_DBC_AD0N_66
set_property PACKAGE_PIN E13 [ get_ports "c0_ddr3_dqs_n[3]" ]

## Pad Function: IO_L8P_T1L_N2_AD5P_68
set_property PACKAGE_PIN E15 [ get_ports "c0_ddr3_dq[19]" ]

## Pad Function: IO_L11P_T1U_N8_GC_68
set_property PACKAGE_PIN E16 [ get_ports "c0_ddr3_dq[17]" ]

## Pad Function: IO_L12N_T1U_N11_GC_68
set_property PACKAGE_PIN E17 [ get_ports "c0_ddr3_dq[21]" ]

## Pad Function: IO_L12P_T1U_N10_GC_68
set_property PACKAGE_PIN E18 [ get_ports "c0_ddr3_dq[22]" ]

## Pad Function: IO_L20P_T3L_N2_AD1P_67
set_property PACKAGE_PIN E20 [ get_ports "c0_ddr3_dq[35]" ]

## Pad Function: IO_L20N_T3L_N3_AD1N_67
set_property PACKAGE_PIN E21 [ get_ports "c0_ddr3_dq[34]" ]

## Pad Function: IO_L14P_T2L_N2_GC_67
set_property PACKAGE_PIN E22 [ get_ports "c0_ddr3_addr[9]" ]

## Pad Function: IO_L14N_T2L_N3_GC_67
set_property PACKAGE_PIN E23 [ get_ports "c0_ddr3_addr[15]" ]

## Pad Function: IO_L11P_T1U_N8_GC_67
set_property PACKAGE_PIN E25 [ get_ports "c0_ddr3_addr[7]" ]

## Pad Function: IO_L7P_T1L_N0_QBC_AD13P_67
set_property PACKAGE_PIN E26 [ get_ports "c0_ddr3_addr[6]" ]

## Pad Function: IO_L1N_T0L_N1_DBC_67
set_property PACKAGE_PIN E27 [ get_ports "c0_ddr3_addr[4]" ]

## Pad Function: IO_L3P_T0L_N4_AD15P_67
set_property PACKAGE_PIN E28 [ get_ports "c0_ddr3_ba[0]" ]

## Pad Function: IO_L12N_T1U_N11_GC_66
set_property PACKAGE_PIN F10 [ get_ports "c0_ddr3_dq[14]" ]

## Pad Function: IO_L22P_T3U_N6_DBC_AD0P_66
set_property PACKAGE_PIN F13 [ get_ports "c0_ddr3_dqs_p[3]" ]

## Pad Function: IO_L9N_T1L_N5_AD12N_68
set_property PACKAGE_PIN F14 [ get_ports "c0_ddr3_dq[18]" ]

## Pad Function: IO_L9P_T1L_N4_AD12P_68
set_property PACKAGE_PIN F15 [ get_ports "c0_ddr3_dq[16]" ]

## Pad Function: IO_L14N_T2L_N3_GC_68
set_property PACKAGE_PIN F17 [ get_ports "c0_ddr3_dq[55]" ]

## Pad Function: IO_L14P_T2L_N2_GC_68
set_property PACKAGE_PIN F18 [ get_ports "c0_ddr3_dq[49]" ]

## Pad Function: IO_L16N_T2U_N7_QBC_AD3N_68
set_property PACKAGE_PIN F19 [ get_ports "c0_ddr3_dqs_n[6]" ]

## Pad Function: IO_L22N_T3U_N7_DBC_AD0N_67
set_property PACKAGE_PIN F20 [ get_ports "c0_ddr3_dqs_n[4]" ]

## Pad Function: IO_L23N_T3U_N9_67
set_property PACKAGE_PIN F22 [ get_ports "c0_ddr3_dq[33]" ]

## Pad Function: IO_L21P_T3L_N4_AD8P_67
set_property PACKAGE_PIN F23 [ get_ports "c0_ddr3_dq[38]" ]

## Pad Function: IO_L21N_T3L_N5_AD8N_67
set_property PACKAGE_PIN F24 [ get_ports "c0_ddr3_dq[32]" ]

## Pad Function: IO_L1P_T0L_N0_DBC_67
set_property PACKAGE_PIN F27 [ get_ports "c0_ddr3_addr[2]" ]

## Pad Function: IO_L1P_T0L_N0_DBC_66
#set_property PACKAGE_PIN F8 [ get_ports "c0_ddr3_dm[0]" ]

## Pad Function: IO_L11N_T1U_N9_GC_66
set_property PACKAGE_PIN F9 [ get_ports "c0_ddr3_dq[10]" ]

## Pad Function: IO_L12P_T1U_N10_GC_66
set_property PACKAGE_PIN G10 [ get_ports "c0_ddr3_dq[11]" ]

## Pad Function: IO_L14N_T2L_N3_GC_66
set_property PACKAGE_PIN G12 [ get_ports "c0_ddr3_dq[41]" ]

## Pad Function: IO_L15N_T2L_N5_AD11N_68
set_property PACKAGE_PIN G14 [ get_ports "c0_ddr3_dq[52]" ]

## Pad Function: IO_L15P_T2L_N4_AD11P_68
set_property PACKAGE_PIN G15 [ get_ports "c0_ddr3_dq[53]" ]

## Pad Function: IO_L13P_T2L_N0_GC_QBC_68
#set_property PACKAGE_PIN G17 [ get_ports "c0_ddr3_dm[6]" ]

## Pad Function: IO_L16P_T2U_N6_QBC_AD3P_68
set_property PACKAGE_PIN G19 [ get_ports "c0_ddr3_dqs_p[6]" ]

## Pad Function: IO_L22P_T3U_N6_DBC_AD0P_67
set_property PACKAGE_PIN G20 [ get_ports "c0_ddr3_dqs_p[4]" ]

## Pad Function: IO_L24N_T3U_N11_67
set_property PACKAGE_PIN G21 [ get_ports "c0_ddr3_dq[36]" ]

## Pad Function: IO_L23P_T3U_N8_67
set_property PACKAGE_PIN G22 [ get_ports "c0_ddr3_dq[39]" ]

## Pad Function: IO_L19P_T3L_N0_DBC_AD9P_67
#set_property PACKAGE_PIN G24 [ get_ports "c0_ddr3_dm[4]" ]

## Pad Function: IO_L11P_T1U_N8_GC_66
set_property PACKAGE_PIN G9 [ get_ports "c0_ddr3_dq[15]" ]

## Pad Function: IO_L13P_T2L_N0_GC_QBC_66
#set_property PACKAGE_PIN H11 [ get_ports "c0_ddr3_dm[5]" ]

## Pad Function: IO_L14P_T2L_N2_GC_66
set_property PACKAGE_PIN H12 [ get_ports "c0_ddr3_dq[40]" ]

## Pad Function: IO_L18N_T2U_N11_AD2N_66
set_property PACKAGE_PIN H13 [ get_ports "c0_ddr3_dq[42]" ]

## Pad Function: IO_L17N_T2U_N9_AD10N_68
set_property PACKAGE_PIN H16 [ get_ports "c0_ddr3_dq[54]" ]

## Pad Function: IO_L17P_T2U_N8_AD10P_68
set_property PACKAGE_PIN H17 [ get_ports "c0_ddr3_dq[51]" ]

## Pad Function: IO_L18N_T2U_N11_AD2N_68
set_property PACKAGE_PIN H18 [ get_ports "c0_ddr3_dq[50]" ]

## Pad Function: IO_L18P_T2U_N10_AD2P_68
set_property PACKAGE_PIN H19 [ get_ports "c0_ddr3_dq[48]" ]

## Pad Function: IO_L24P_T3U_N10_67
set_property PACKAGE_PIN H21 [ get_ports "c0_ddr3_dq[37]" ]

## Pad Function: IO_L9N_T1L_N5_AD12N_66
set_property PACKAGE_PIN H8 [ get_ports "c0_ddr3_dq[13]" ]

## Pad Function: IO_L8N_T1L_N3_AD5N_66
set_property PACKAGE_PIN H9 [ get_ports "c0_ddr3_dq[12]" ]

## Pad Function: IO_L10N_T1U_N7_QBC_AD4N_66
set_property PACKAGE_PIN J10 [ get_ports "c0_ddr3_dqs_n[1]" ]

## Pad Function: IO_L15N_T2L_N5_AD11N_66
set_property PACKAGE_PIN J11 [ get_ports "c0_ddr3_dq[43]" ]

## Pad Function: IO_L18P_T2U_N10_AD2P_66
set_property PACKAGE_PIN J13 [ get_ports "c0_ddr3_dq[44]" ]

## Pad Function: IO_L19P_T3L_N0_DBC_AD9P_68
#set_property PACKAGE_PIN J15 [ get_ports "c0_ddr3_dm[7]" ]

## Pad Function: IO_L23N_T3U_N9_68
set_property PACKAGE_PIN J16 [ get_ports "c0_ddr3_dq[63]" ]

## Pad Function: IO_L22N_T3U_N7_DBC_AD0N_68
set_property PACKAGE_PIN J18 [ get_ports "c0_ddr3_dqs_n[7]" ]

## Pad Function: IO_L22P_T3U_N6_DBC_AD0P_68
set_property PACKAGE_PIN J19 [ get_ports "c0_ddr3_dqs_p[7]" ]

## Pad Function: IO_L9P_T1L_N4_AD12P_66
set_property PACKAGE_PIN J8 [ get_ports "c0_ddr3_dq[8]" ]

## Pad Function: IO_L8P_T1L_N2_AD5P_66
set_property PACKAGE_PIN J9 [ get_ports "c0_ddr3_dq[9]" ]

## Pad Function: IO_L10P_T1U_N6_QBC_AD4P_66
set_property PACKAGE_PIN K10 [ get_ports "c0_ddr3_dqs_p[1]" ]

## Pad Function: IO_L15P_T2L_N4_AD11P_66
set_property PACKAGE_PIN K11 [ get_ports "c0_ddr3_dq[47]" ]

## Pad Function: IO_L17N_T2U_N9_AD10N_66
set_property PACKAGE_PIN K12 [ get_ports "c0_ddr3_dq[46]" ]

## Pad Function: IO_L16N_T2U_N7_QBC_AD3N_66
set_property PACKAGE_PIN K13 [ get_ports "c0_ddr3_dqs_n[5]" ]

## Pad Function: IO_L21N_T3L_N5_AD8N_68
set_property PACKAGE_PIN K15 [ get_ports "c0_ddr3_dq[60]" ]

## Pad Function: IO_L23P_T3U_N8_68
set_property PACKAGE_PIN K16 [ get_ports "c0_ddr3_dq[59]" ]

## Pad Function: IO_L20N_T3L_N3_AD1N_68
set_property PACKAGE_PIN K17 [ get_ports "c0_ddr3_dq[61]" ]

## Pad Function: IO_L20P_T3L_N2_AD1P_68
set_property PACKAGE_PIN K18 [ get_ports "c0_ddr3_dq[62]" ]

## Pad Function: IO_L17P_T2U_N8_AD10P_66
set_property PACKAGE_PIN L12 [ get_ports "c0_ddr3_dq[45]" ]

## Pad Function: IO_L16P_T2U_N6_QBC_AD3P_66
set_property PACKAGE_PIN L13 [ get_ports "c0_ddr3_dqs_p[5]" ]

## Pad Function: IO_L21P_T3L_N4_AD8P_68
set_property PACKAGE_PIN L15 [ get_ports "c0_ddr3_dq[57]" ]

## Pad Function: IO_L24N_T3U_N11_68
set_property PACKAGE_PIN L18 [ get_ports "c0_ddr3_dq[56]" ]

## Pad Function: IO_L24P_T3U_N10_68
set_property PACKAGE_PIN L19 [ get_ports "c0_ddr3_dq[58]" ]

## Pad Function: IO_L7P_T1L_N0_QBC_AD13P_66
#set_property PACKAGE_PIN L8 [ get_ports "c0_ddr3_dm[1]" ]

## Pad Function: IO_L13N_T2L_N1_GC_QBC_45
set_property PACKAGE_PIN AH17 [ get_ports "c1_sys_clk_n" ]

## Pad Function: IO_L13P_T2L_N0_GC_QBC_45
set_property PACKAGE_PIN AH18 [ get_ports "c1_sys_clk_p" ]

## Pad Function: IO_L24N_T3U_N11_45
set_property PACKAGE_PIN AD15 [ get_ports "c1_ddr3_dq[67]" ]

## Pad Function: IO_L24P_T3U_N10_45
set_property PACKAGE_PIN AD16 [ get_ports "c1_ddr3_dq[66]" ]

## Pad Function: IO_L19P_T3L_N0_DBC_AD9P_45
#set_property PACKAGE_PIN AD19 [ get_ports "c1_ddr3_dm[8]" ]

## Pad Function: IO_L3P_T0L_N4_AD15P_44
set_property PACKAGE_PIN AD20 [ get_ports "c1_ddr3_dq[1]" ]

## Pad Function: IO_L1P_T0L_N0_DBC_44
#set_property PACKAGE_PIN AD21 [ get_ports "c1_ddr3_dm[0]" ]

## Pad Function: IO_L22N_T3U_N7_DBC_AD0N_45
set_property PACKAGE_PIN AE15 [ get_ports "c1_ddr3_dqs_n[8]" ]

## Pad Function: IO_L22P_T3U_N6_DBC_AD0P_45
set_property PACKAGE_PIN AE16 [ get_ports "c1_ddr3_dqs_p[8]" ]

## Pad Function: IO_L23P_T3U_N8_45
set_property PACKAGE_PIN AE17 [ get_ports "c1_ddr3_dq[68]" ]

## Pad Function: IO_L21P_T3L_N4_AD8P_45
set_property PACKAGE_PIN AE18 [ get_ports "c1_ddr3_dq[70]" ]

## Pad Function: IO_L3N_T0L_N5_AD15N_44
set_property PACKAGE_PIN AE20 [ get_ports "c1_ddr3_dq[6]" ]

## Pad Function: IO_L5P_T0U_N8_AD14P_44
set_property PACKAGE_PIN AE22 [ get_ports "c1_ddr3_dq[5]" ]

## Pad Function: IO_L5N_T0U_N9_AD14N_44
set_property PACKAGE_PIN AE23 [ get_ports "c1_ddr3_dq[4]" ]

## Pad Function: IO_L7P_T1L_N0_QBC_AD13P_44
#set_property PACKAGE_PIN AE25 [ get_ports "c1_ddr3_dm[1]" ]

## Pad Function: IO_L20N_T3L_N3_AD1N_45
set_property PACKAGE_PIN AF14 [ get_ports "c1_ddr3_dq[64]" ]

## Pad Function: IO_L20P_T3L_N2_AD1P_45
set_property PACKAGE_PIN AF15 [ get_ports "c1_ddr3_dq[65]" ]

## Pad Function: IO_L23N_T3U_N9_45
set_property PACKAGE_PIN AF17 [ get_ports "c1_ddr3_dq[69]" ]

## Pad Function: IO_L21N_T3L_N5_AD8N_45
set_property PACKAGE_PIN AF18 [ get_ports "c1_ddr3_dq[71]" ]

## Pad Function: IO_L2P_T0L_N2_44
set_property PACKAGE_PIN AF20 [ get_ports "c1_ddr3_dq[0]" ]

## Pad Function: IO_L6P_T0U_N10_AD6P_44
set_property PACKAGE_PIN AF22 [ get_ports "c1_ddr3_dq[7]" ]

## Pad Function: IO_L8P_T1L_N2_AD5P_44
set_property PACKAGE_PIN AF23 [ get_ports "c1_ddr3_dq[8]" ]

## Pad Function: IO_L8N_T1L_N3_AD5N_44
set_property PACKAGE_PIN AF24 [ get_ports "c1_ddr3_dq[9]" ]

## Pad Function: IO_L15N_T2L_N5_AD11N_45
set_property PACKAGE_PIN AG16 [ get_ports "c1_ddr3_ras_n" ]

## Pad Function: IO_L15P_T2L_N4_AD11P_45
set_property PACKAGE_PIN AG17 [ get_ports "c1_ddr3_addr[2]" ]

## Pad Function: IO_L17P_T2U_N8_AD10P_45
set_property PACKAGE_PIN AG19 [ get_ports "c1_ddr3_addr[6]" ]

## Pad Function: IO_L2N_T0L_N3_44
set_property PACKAGE_PIN AG20 [ get_ports "c1_ddr3_dq[2]" ]

## Pad Function: IO_L4P_T0U_N6_DBC_AD7P_44
set_property PACKAGE_PIN AG21 [ get_ports "c1_ddr3_dqs_p[0]" ]

## Pad Function: IO_L6N_T0U_N11_AD6N_44
set_property PACKAGE_PIN AG22 [ get_ports "c1_ddr3_dq[3]" ]

## Pad Function: IO_L9P_T1L_N4_AD12P_44
set_property PACKAGE_PIN AG24 [ get_ports "c1_ddr3_dq[11]" ]

## Pad Function: IO_L9N_T1L_N5_AD12N_44
set_property PACKAGE_PIN AG25 [ get_ports "c1_ddr3_dq[10]" ]

## Pad Function: IO_T2U_N12_45
set_property PACKAGE_PIN AH14 [ get_ports "c1_ddr3_addr[13]" ]

## Pad Function: IO_L14P_T2L_N2_GC_45
set_property PACKAGE_PIN AH16 [ get_ports "c1_ddr3_ba[1]" ]

## Pad Function: IO_L4N_T0U_N7_DBC_AD7N_44
set_property PACKAGE_PIN AH21 [ get_ports "c1_ddr3_dqs_n[0]" ]

## Pad Function: IO_L12P_T1U_N10_GC_44
set_property PACKAGE_PIN AH22 [ get_ports "c1_ddr3_dq[14]" ]

## Pad Function: IO_L12N_T1U_N11_GC_44
set_property PACKAGE_PIN AH23 [ get_ports "c1_ddr3_dq[12]" ]

## Pad Function: IO_L10P_T1U_N6_QBC_AD4P_44
set_property PACKAGE_PIN AH24 [ get_ports "c1_ddr3_dqs_p[1]" ]

## Pad Function: IO_L1P_T0L_N0_DBC_46
#set_property PACKAGE_PIN AH26 [ get_ports "c1_ddr3_dm[4]" ]

## Pad Function: IO_L5P_T0U_N8_AD14P_46
set_property PACKAGE_PIN AH27 [ get_ports "c1_ddr3_dq[39]" ]

## Pad Function: IO_L5N_T0U_N9_AD14N_46
set_property PACKAGE_PIN AH28 [ get_ports "c1_ddr3_dq[38]" ]

## Pad Function: IO_L17P_T2U_N8_AD10P_46
set_property PACKAGE_PIN AH31 [ get_ports "c1_ddr3_dq[54]" ]

## Pad Function: IO_L17N_T2U_N9_AD10N_46
set_property PACKAGE_PIN AH32 [ get_ports "c1_ddr3_dq[52]" ]

## Pad Function: IO_L16P_T2U_N6_QBC_AD3P_46
set_property PACKAGE_PIN AH33 [ get_ports "c1_ddr3_dqs_p[6]" ]

## Pad Function: IO_L18P_T2U_N10_AD2P_46
set_property PACKAGE_PIN AH34 [ get_ports "c1_ddr3_dq[55]" ]

## Pad Function: IO_L11P_T1U_N8_GC_45
set_property PACKAGE_PIN AJ18 [ get_ports "c1_ddr3_addr[11]" ]

## Pad Function: IO_T1U_N12_45
set_property PACKAGE_PIN AJ19 [ get_ports "c1_ddr3_addr[7]" ]

## Pad Function: IO_L16P_T2U_N6_QBC_AD3P_44
set_property PACKAGE_PIN AJ20 [ get_ports "c1_ddr3_dqs_p[2]" ]

## Pad Function: IO_L13P_T2L_N0_GC_QBC_44
#set_property PACKAGE_PIN AJ21 [ get_ports "c1_ddr3_dm[2]" ]

## Pad Function: IO_L11P_T1U_N8_GC_44
set_property PACKAGE_PIN AJ23 [ get_ports "c1_ddr3_dq[13]" ]

## Pad Function: IO_L11N_T1U_N9_GC_44
set_property PACKAGE_PIN AJ24 [ get_ports "c1_ddr3_dq[15]" ]

## Pad Function: IO_L10N_T1U_N7_QBC_AD4N_44
set_property PACKAGE_PIN AJ25 [ get_ports "c1_ddr3_dqs_n[1]" ]

## Pad Function: IO_L6P_T0U_N10_AD6P_46
set_property PACKAGE_PIN AJ28 [ get_ports "c1_ddr3_dq[35]" ]

## Pad Function: IO_L13P_T2L_N0_GC_QBC_46
#set_property PACKAGE_PIN AJ29 [ get_ports "c1_ddr3_dm[6]" ]

## Pad Function: IO_L15P_T2L_N4_AD11P_46
set_property PACKAGE_PIN AJ30 [ get_ports "c1_ddr3_dq[50]" ]

## Pad Function: IO_L15N_T2L_N5_AD11N_46
set_property PACKAGE_PIN AJ31 [ get_ports "c1_ddr3_dq[53]" ]

## Pad Function: IO_L16N_T2U_N7_QBC_AD3N_46
set_property PACKAGE_PIN AJ33 [ get_ports "c1_ddr3_dqs_n[6]" ]

## Pad Function: IO_L18N_T2U_N11_AD2N_46
set_property PACKAGE_PIN AJ34 [ get_ports "c1_ddr3_dq[51]" ]

## Pad Function: IO_L9P_T1L_N4_AD12P_45
set_property PACKAGE_PIN AK15 [ get_ports "c1_ddr3_cs_n[0]" ]

## Pad Function: IO_L14N_T2L_N3_GC_45
set_property PACKAGE_PIN AJ16 [ get_ports "c1_ddr3_cs_n[1]" ]

## Pad Function: IO_L12N_T1U_N11_GC_45
set_property PACKAGE_PIN AK16 [ get_ports "c1_ddr3_ba[0]" ]

## Pad Function: IO_L12P_T1U_N10_GC_45
set_property PACKAGE_PIN AK17 [ get_ports "c1_ddr3_addr[9]" ]

## Pad Function: IO_L11N_T1U_N9_GC_45
set_property PACKAGE_PIN AK18 [ get_ports "c1_ddr3_addr[4]" ]

## Pad Function: IO_L16N_T2U_N7_QBC_AD3N_44
set_property PACKAGE_PIN AK20 [ get_ports "c1_ddr3_dqs_n[2]" ]

## Pad Function: IO_L14P_T2L_N2_GC_44
set_property PACKAGE_PIN AK22 [ get_ports "c1_ddr3_dq[17]" ]

## Pad Function: IO_L14N_T2L_N3_GC_44
set_property PACKAGE_PIN AK23 [ get_ports "c1_ddr3_dq[21]" ]

## Pad Function: IO_L3P_T0L_N4_AD15P_46
set_property PACKAGE_PIN AK26 [ get_ports "c1_ddr3_dq[34]" ]

## Pad Function: IO_L3N_T0L_N5_AD15N_46
set_property PACKAGE_PIN AK27 [ get_ports "c1_ddr3_dq[36]" ]

## Pad Function: IO_L6N_T0U_N11_AD6N_46
set_property PACKAGE_PIN AK28 [ get_ports "c1_ddr3_dq[37]" ]

## Pad Function: IO_L14P_T2L_N2_GC_46
set_property PACKAGE_PIN AK31 [ get_ports "c1_ddr3_dq[49]" ]

## Pad Function: IO_L14N_T2L_N3_GC_46
set_property PACKAGE_PIN AK32 [ get_ports "c1_ddr3_dq[48]" ]

## Pad Function: IO_L7P_T1L_N0_QBC_AD13P_45
set_property PACKAGE_PIN AL14 [ get_ports "c1_ddr3_we_n" ]

## Pad Function: IO_L9N_T1L_N5_AD12N_45
set_property PACKAGE_PIN AL15 [ get_ports "c1_ddr3_addr[0]" ]

## Pad Function: IO_L10N_T1U_N7_QBC_AD4N_45
set_property PACKAGE_PIN AL17 [ get_ports "c1_ddr3_ck_n[0]" ]

## Pad Function: IO_L16N_T2U_N7_QBC_AD3N_45
set_property PACKAGE_PIN AJ14 [ get_ports "c1_ddr3_ck_n[1]" ]

## Pad Function: IO_L10P_T1U_N6_QBC_AD4P_45
set_property PACKAGE_PIN AL18 [ get_ports "c1_ddr3_ck_p[0]" ]

## Pad Function: IO_L16P_T2U_N6_QBC_AD3P_45
set_property PACKAGE_PIN AJ15 [ get_ports "c1_ddr3_ck_p[1]" ]

## Pad Function: IO_L8P_T1L_N2_AD5P_45
set_property PACKAGE_PIN AL19 [ get_ports "c1_ddr3_addr[14]" ]

## Pad Function: IO_L15P_T2L_N4_AD11P_44
set_property PACKAGE_PIN AL20 [ get_ports "c1_ddr3_dq[18]" ]

## Pad Function: IO_L17P_T2U_N8_AD10P_44
set_property PACKAGE_PIN AL22 [ get_ports "c1_ddr3_dq[20]" ]

## Pad Function: IO_L17N_T2U_N9_AD10N_44
set_property PACKAGE_PIN AL23 [ get_ports "c1_ddr3_dq[22]" ]

## Pad Function: IO_L18P_T2U_N10_AD2P_44
set_property PACKAGE_PIN AL24 [ get_ports "c1_ddr3_dq[23]" ]

## Pad Function: IO_L18N_T2U_N11_AD2N_44
set_property PACKAGE_PIN AL25 [ get_ports "c1_ddr3_dq[16]" ]

## Pad Function: IO_L4P_T0U_N6_DBC_AD7P_46
set_property PACKAGE_PIN AL27 [ get_ports "c1_ddr3_dqs_p[4]" ]

## Pad Function: IO_L4N_T0U_N7_DBC_AD7N_46
set_property PACKAGE_PIN AL28 [ get_ports "c1_ddr3_dqs_n[4]" ]

## Pad Function: IO_L11P_T1U_N8_GC_46
set_property PACKAGE_PIN AL29 [ get_ports "c1_ddr3_dq[27]" ]

## Pad Function: IO_L12P_T1U_N10_GC_46
set_property PACKAGE_PIN AL30 [ get_ports "c1_ddr3_dq[26]" ]

## Pad Function: IO_L19P_T3L_N0_DBC_AD9P_46
#set_property PACKAGE_PIN AL32 [ get_ports "c1_ddr3_dm[7]" ]

## Pad Function: IO_L24P_T3U_N10_46
set_property PACKAGE_PIN AL34 [ get_ports "c1_ddr3_dq[59]" ]

## Pad Function: IO_L7N_T1L_N1_QBC_AD13N_45
set_property PACKAGE_PIN AM14 [ get_ports "c1_ddr3_cas_n" ]

## Pad Function: IO_L5N_T0U_N9_AD14N_45
set_property PACKAGE_PIN AM15 [ get_ports "c1_ddr3_addr[5]" ]

## Pad Function: IO_L5P_T0U_N8_AD14P_45
set_property PACKAGE_PIN AM16 [ get_ports "c1_ddr3_addr[3]" ]

## Pad Function: IO_L3P_T0L_N4_AD15P_45
set_property PACKAGE_PIN AM17 [ get_ports "c1_ddr3_addr[12]" ]

## Pad Function: IO_L8N_T1L_N3_AD5N_45
set_property PACKAGE_PIN AM19 [ get_ports "c1_ddr3_addr[15]" ]

## Pad Function: IO_L15N_T2L_N5_AD11N_44
set_property PACKAGE_PIN AM20 [ get_ports "c1_ddr3_dq[19]" ]

## Pad Function: IO_L19P_T3L_N0_DBC_AD9P_44
#set_property PACKAGE_PIN AM21 [ get_ports "c1_ddr3_dm[5]" ]

## Pad Function: IO_L20P_T3L_N2_AD1P_44
set_property PACKAGE_PIN AM22 [ get_ports "c1_ddr3_dq[45]" ]

## Pad Function: IO_L21P_T3L_N4_AD8P_44
set_property PACKAGE_PIN AM24 [ get_ports "c1_ddr3_dq[43]" ]

## Pad Function: IO_L2P_T0L_N2_46
set_property PACKAGE_PIN AM26 [ get_ports "c1_ddr3_dq[32]" ]

## Pad Function: IO_L2N_T0L_N3_46
set_property PACKAGE_PIN AM27 [ get_ports "c1_ddr3_dq[33]" ]

## Pad Function: IO_L11N_T1U_N9_GC_46
set_property PACKAGE_PIN AM29 [ get_ports "c1_ddr3_dq[31]" ]

## Pad Function: IO_L12N_T1U_N11_GC_46
set_property PACKAGE_PIN AM30 [ get_ports "c1_ddr3_dq[30]" ]

## Pad Function: IO_L23P_T3U_N8_46
set_property PACKAGE_PIN AM32 [ get_ports "c1_ddr3_dq[56]" ]

## Pad Function: IO_L24N_T3U_N11_46
set_property PACKAGE_PIN AM34 [ get_ports "c1_ddr3_dq[62]" ]

## Pad Function: IO_L1P_T0L_N0_DBC_45
set_property PACKAGE_PIN AN14 [ get_ports "c1_ddr3_addr[10]" ]

## Pad Function: IO_L3N_T0L_N5_AD15N_45
set_property PACKAGE_PIN AN16 [ get_ports "c1_ddr3_addr[8]" ]

## Pad Function: IO_L4N_T0U_N7_DBC_AD7N_45
set_property PACKAGE_PIN AN17 [ get_ports "c1_ddr3_cke[0]" ]

## Pad Function: IO_L1N_T0L_N1_DBC_45
set_property PACKAGE_PIN AP14 [ get_ports "c1_ddr3_cke[1]" ]

## Pad Function: IO_L4P_T0U_N6_DBC_AD7P_45
set_property PACKAGE_PIN AN18 [ get_ports "c1_ddr3_odt[0]" ]

## Pad Function: IO_L2N_T0L_N3_45
set_property PACKAGE_PIN AP18 [ get_ports "c1_ddr3_odt[1]" ]

## Pad Function: IO_L2P_T0L_N2_45
set_property PACKAGE_PIN AN19 [ get_ports "c1_ddr3_reset_n" ]

## Pad Function: IO_L20N_T3L_N3_AD1N_44
set_property PACKAGE_PIN AN22 [ get_ports "c1_ddr3_dq[44]" ]

## Pad Function: IO_L24P_T3U_N10_44
set_property PACKAGE_PIN AN23 [ get_ports "c1_ddr3_dq[40]" ]

## Pad Function: IO_L21N_T3L_N5_AD8N_44
set_property PACKAGE_PIN AN24 [ get_ports "c1_ddr3_dq[42]" ]

## Pad Function: IO_L7P_T1L_N0_QBC_AD13P_46
#set_property PACKAGE_PIN AN26 [ get_ports "c1_ddr3_dm[3]" ]

## Pad Function: IO_L9P_T1L_N4_AD12P_46
set_property PACKAGE_PIN AN27 [ get_ports "c1_ddr3_dq[28]" ]

## Pad Function: IO_L9N_T1L_N5_AD12N_46
set_property PACKAGE_PIN AN28 [ get_ports "c1_ddr3_dq[24]" ]

## Pad Function: IO_L10P_T1U_N6_QBC_AD4P_46
set_property PACKAGE_PIN AN29 [ get_ports "c1_ddr3_dqs_p[3]" ]

## Pad Function: IO_L21P_T3L_N4_AD8P_46
set_property PACKAGE_PIN AN31 [ get_ports "c1_ddr3_dq[61]" ]

## Pad Function: IO_L23N_T3U_N9_46
set_property PACKAGE_PIN AN32 [ get_ports "c1_ddr3_dq[57]" ]

## Pad Function: IO_L20P_T3L_N2_AD1P_46
set_property PACKAGE_PIN AN33 [ get_ports "c1_ddr3_dq[63]" ]

## Pad Function: IO_L22P_T3U_N6_DBC_AD0P_46
set_property PACKAGE_PIN AN34 [ get_ports "c1_ddr3_dqs_p[7]" ]

## Pad Function: IO_L6N_T0U_N11_AD6N_45
set_property PACKAGE_PIN AP15 [ get_ports "c1_ddr3_addr[1]" ]

## Pad Function: IO_L6P_T0U_N10_AD6P_45
set_property PACKAGE_PIN AP16 [ get_ports "c1_ddr3_ba[2]" ]

## Pad Function: IO_L22P_T3U_N6_DBC_AD0P_44
set_property PACKAGE_PIN AP20 [ get_ports "c1_ddr3_dqs_p[5]" ]

## Pad Function: IO_L22N_T3U_N7_DBC_AD0N_44
set_property PACKAGE_PIN AP21 [ get_ports "c1_ddr3_dqs_n[5]" ]

## Pad Function: IO_L24N_T3U_N11_44
set_property PACKAGE_PIN AP23 [ get_ports "c1_ddr3_dq[46]" ]

## Pad Function: IO_L23P_T3U_N8_44
set_property PACKAGE_PIN AP24 [ get_ports "c1_ddr3_dq[41]" ]

## Pad Function: IO_L23N_T3U_N9_44
set_property PACKAGE_PIN AP25 [ get_ports "c1_ddr3_dq[47]" ]

## Pad Function: IO_L8P_T1L_N2_AD5P_46
set_property PACKAGE_PIN AP28 [ get_ports "c1_ddr3_dq[29]" ]

## Pad Function: IO_L8N_T1L_N3_AD5N_46
set_property PACKAGE_PIN AP29 [ get_ports "c1_ddr3_dq[25]" ]

## Pad Function: IO_L10N_T1U_N7_QBC_AD4N_46
set_property PACKAGE_PIN AP30 [ get_ports "c1_ddr3_dqs_n[3]" ]

## Pad Function: IO_L21N_T3L_N5_AD8N_46
set_property PACKAGE_PIN AP31 [ get_ports "c1_ddr3_dq[60]" ]

## Pad Function: IO_L20N_T3L_N3_AD1N_46
set_property PACKAGE_PIN AP33 [ get_ports "c1_ddr3_dq[58]" ]

## Pad Function: IO_L22N_T3U_N7_DBC_AD0N_46
set_property PACKAGE_PIN AP34 [ get_ports "c1_ddr3_dqs_n[7]" ]

# Get IOSTANDARD & OUTPUT_IMPEDANCE for BA pins, which are also
# unidirectional and should therefore use the same values as the DM pins.
set c0_dm_iostandard       [ get_property IOSTANDARD       [ get_ports "c0_ddr3_ba[0]" ] ]
set c0_dm_output_impedance [ get_property OUTPUT_IMPEDANCE [ get_ports "c0_ddr3_ba[0]" ] ]

## Pad Function: IO_L1P_T0L_N0_DBC_66
set_property PACKAGE_PIN F8 [ get_ports "c0_ddr3_dm[0]" ]
set_property IOSTANDARD $c0_dm_iostandard [ get_ports "c0_ddr3_dm[0]" ]
set_property OUTPUT_IMPEDANCE $c0_dm_output_impedance [ get_ports "c0_ddr3_dm[0]" ]

## Pad Function: IO_L7P_T1L_N0_QBC_AD13P_66
set_property PACKAGE_PIN L8 [ get_ports "c0_ddr3_dm[1]" ]
set_property IOSTANDARD $c0_dm_iostandard [ get_ports "c0_ddr3_dm[1]" ]
set_property OUTPUT_IMPEDANCE $c0_dm_output_impedance [ get_ports "c0_ddr3_dm[1]" ]

## Pad Function: IO_L7P_T1L_N0_QBC_AD13P_68
set_property PACKAGE_PIN D14 [ get_ports "c0_ddr3_dm[2]" ]
set_property IOSTANDARD $c0_dm_iostandard [ get_ports "c0_ddr3_dm[2]" ]
set_property OUTPUT_IMPEDANCE $c0_dm_output_impedance [ get_ports "c0_ddr3_dm[2]" ]

## Pad Function: IO_L19P_T3L_N0_DBC_AD9P_66
set_property PACKAGE_PIN E11 [ get_ports "c0_ddr3_dm[3]" ]
set_property IOSTANDARD $c0_dm_iostandard [ get_ports "c0_ddr3_dm[3]" ]
set_property OUTPUT_IMPEDANCE $c0_dm_output_impedance [ get_ports "c0_ddr3_dm[3]" ]

## Pad Function: IO_L19P_T3L_N0_DBC_AD9P_67
set_property PACKAGE_PIN G24 [ get_ports "c0_ddr3_dm[4]" ]
set_property IOSTANDARD $c0_dm_iostandard [ get_ports "c0_ddr3_dm[4]" ]
set_property OUTPUT_IMPEDANCE $c0_dm_output_impedance [ get_ports "c0_ddr3_dm[4]" ]

## Pad Function: IO_L13P_T2L_N0_GC_QBC_66
set_property PACKAGE_PIN H11 [ get_ports "c0_ddr3_dm[5]" ]
set_property IOSTANDARD $c0_dm_iostandard [ get_ports "c0_ddr3_dm[5]" ]
set_property OUTPUT_IMPEDANCE $c0_dm_output_impedance [ get_ports "c0_ddr3_dm[5]" ]

## Pad Function: IO_L13P_T2L_N0_GC_QBC_68
set_property PACKAGE_PIN G17 [ get_ports "c0_ddr3_dm[6]" ]
set_property IOSTANDARD $c0_dm_iostandard [ get_ports "c0_ddr3_dm[6]" ]
set_property OUTPUT_IMPEDANCE $c0_dm_output_impedance [ get_ports "c0_ddr3_dm[6]" ]

## Pad Function: IO_L19P_T3L_N0_DBC_AD9P_68
set_property PACKAGE_PIN J15 [ get_ports "c0_ddr3_dm[7]" ]
set_property IOSTANDARD $c0_dm_iostandard [ get_ports "c0_ddr3_dm[7]" ]
set_property OUTPUT_IMPEDANCE $c0_dm_output_impedance [ get_ports "c0_ddr3_dm[7]" ]

## Pad Function: IO_L1P_T0L_N0_DBC_68
set_property PACKAGE_PIN B14 [ get_ports "c0_ddr3_dm[8]" ]
set_property IOSTANDARD $c0_dm_iostandard [ get_ports "c0_ddr3_dm[8]" ]
set_property OUTPUT_IMPEDANCE $c0_dm_output_impedance [ get_ports "c0_ddr3_dm[8]" ]

# Get IOSTANDARD & OUTPUT_IMPEDANCE for BA pins, which are also
# unidirectional and should therefore use the same values as the DM pins.
set c1_dm_iostandard       [ get_property IOSTANDARD       [ get_ports "c1_ddr3_ba[0]" ] ]
set c1_dm_output_impedance [ get_property OUTPUT_IMPEDANCE [ get_ports "c1_ddr3_ba[0]" ] ]

## Pad Function: IO_L1P_T0L_N0_DBC_44
set_property PACKAGE_PIN AD21 [ get_ports "c1_ddr3_dm[0]" ]
set_property IOSTANDARD $c1_dm_iostandard [ get_ports "c1_ddr3_dm[0]" ]
set_property OUTPUT_IMPEDANCE $c1_dm_output_impedance [ get_ports "c1_ddr3_dm[0]" ]

## Pad Function: IO_L7P_T1L_N0_QBC_AD13P_44
set_property PACKAGE_PIN AE25 [ get_ports "c1_ddr3_dm[1]" ]
set_property IOSTANDARD $c1_dm_iostandard [ get_ports "c1_ddr3_dm[1]" ]
set_property OUTPUT_IMPEDANCE $c1_dm_output_impedance [ get_ports "c1_ddr3_dm[1]" ]

## Pad Function: IO_L13P_T2L_N0_GC_QBC_44
set_property PACKAGE_PIN AJ21 [ get_ports "c1_ddr3_dm[2]" ]
set_property IOSTANDARD $c1_dm_iostandard [ get_ports "c1_ddr3_dm[2]" ]
set_property OUTPUT_IMPEDANCE $c1_dm_output_impedance [ get_ports "c1_ddr3_dm[2]" ]

## Pad Function: IO_L7P_T1L_N0_QBC_AD13P_46
set_property PACKAGE_PIN AN26 [ get_ports "c1_ddr3_dm[3]" ]
set_property IOSTANDARD $c1_dm_iostandard [ get_ports "c1_ddr3_dm[3]" ]
set_property OUTPUT_IMPEDANCE $c1_dm_output_impedance [ get_ports "c1_ddr3_dm[3]" ]

## Pad Function: IO_L1P_T0L_N0_DBC_46
set_property PACKAGE_PIN AH26 [ get_ports "c1_ddr3_dm[4]" ]
set_property IOSTANDARD $c1_dm_iostandard [ get_ports "c1_ddr3_dm[4]" ]
set_property OUTPUT_IMPEDANCE $c1_dm_output_impedance [ get_ports "c1_ddr3_dm[4]" ]

## Pad Function: IO_L19P_T3L_N0_DBC_AD9P_44
set_property PACKAGE_PIN AM21 [ get_ports "c1_ddr3_dm[5]" ]
set_property IOSTANDARD $c1_dm_iostandard [ get_ports "c1_ddr3_dm[5]" ]
set_property OUTPUT_IMPEDANCE $c1_dm_output_impedance [ get_ports "c1_ddr3_dm[5]" ]

## Pad Function: IO_L13P_T2L_N0_GC_QBC_46
set_property PACKAGE_PIN AJ29 [ get_ports "c1_ddr3_dm[6]" ]
set_property IOSTANDARD $c1_dm_iostandard [ get_ports "c1_ddr3_dm[6]" ]
set_property OUTPUT_IMPEDANCE $c1_dm_output_impedance [ get_ports "c1_ddr3_dm[6]" ]

## Pad Function: IO_L19P_T3L_N0_DBC_AD9P_46
set_property PACKAGE_PIN AL32 [ get_ports "c1_ddr3_dm[7]" ]
set_property IOSTANDARD $c1_dm_iostandard [ get_ports "c1_ddr3_dm[7]" ]
set_property OUTPUT_IMPEDANCE $c1_dm_output_impedance [ get_ports "c1_ddr3_dm[7]" ]

## Pad Function: IO_L19P_T3L_N0_DBC_AD9P_45
set_property PACKAGE_PIN AD19 [ get_ports "c1_ddr3_dm[8]" ]
set_property IOSTANDARD $c1_dm_iostandard [ get_ports "c1_ddr3_dm[8]" ]
set_property OUTPUT_IMPEDANCE $c1_dm_output_impedance [ get_ports "c1_ddr3_dm[8]" ]
