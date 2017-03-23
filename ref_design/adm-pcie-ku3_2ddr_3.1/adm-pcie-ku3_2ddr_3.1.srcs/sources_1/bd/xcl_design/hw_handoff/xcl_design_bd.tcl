
################################################################
# This is a generated script based on design: xcl_design
#
# Though there are limitations about the generated script,
# the main purpose of this utility is to make learning
# IP Integrator Tcl commands easier.
################################################################

namespace eval _tcl {
proc get_script_folder {} {
   set script_path [file normalize [info script]]
   set script_folder [file dirname $script_path]
   return $script_folder
}
}
variable script_folder
set script_folder [_tcl::get_script_folder]

################################################################
# Check if script is running in correct Vivado version.
################################################################
set scripts_vivado_version 2016.3
set current_vivado_version [version -short]

if { [string first $scripts_vivado_version $current_vivado_version] == -1 } {
   puts ""
   catch {common::send_msg_id "BD_TCL-109" "ERROR" "This script was generated using Vivado <$scripts_vivado_version> and is being run in <$current_vivado_version> of Vivado. Please run the script in Vivado <$scripts_vivado_version> then open the design in Vivado <$current_vivado_version>. Upgrade the design by running \"Tools => Report => Report IP Status...\", then run write_bd_tcl to create an updated script."}

   return 1
}

################################################################
# START
################################################################

# To test this script, run the following commands from Vivado Tcl console:
# source xcl_design_script.tcl

# If there is no project opened, this script will create a
# project, but make sure you do not have an existing project
# <./myproj/project_1.xpr> in the current working folder.

set list_projs [get_projects -quiet]
if { $list_projs eq "" } {
   create_project project_1 myproj -part xcku060-ffva1156-2-e
   set_property BOARD_PART alpha-data.com:adm-pcie3-ku3:part0:1.0 [current_project]
}


# CHANGE DESIGN NAME HERE
set design_name xcl_design

# If you do not already have an existing IP Integrator design open,
# you can create a design using the following command:
#    create_bd_design $design_name

# Creating design if needed
set errMsg ""
set nRet 0

set cur_design [current_bd_design -quiet]
set list_cells [get_bd_cells -quiet]

if { ${design_name} eq "" } {
   # USE CASES:
   #    1) Design_name not set

   set errMsg "Please set the variable <design_name> to a non-empty value."
   set nRet 1

} elseif { ${cur_design} ne "" && ${list_cells} eq "" } {
   # USE CASES:
   #    2): Current design opened AND is empty AND names same.
   #    3): Current design opened AND is empty AND names diff; design_name NOT in project.
   #    4): Current design opened AND is empty AND names diff; design_name exists in project.

   if { $cur_design ne $design_name } {
      common::send_msg_id "BD_TCL-001" "INFO" "Changing value of <design_name> from <$design_name> to <$cur_design> since current design is empty."
      set design_name [get_property NAME $cur_design]
   }
   common::send_msg_id "BD_TCL-002" "INFO" "Constructing design in IPI design <$cur_design>..."

} elseif { ${cur_design} ne "" && $list_cells ne "" && $cur_design eq $design_name } {
   # USE CASES:
   #    5) Current design opened AND has components AND same names.

   set errMsg "Design <$design_name> already exists in your project, please set the variable <design_name> to another value."
   set nRet 1
} elseif { [get_files -quiet ${design_name}.bd] ne "" } {
   # USE CASES: 
   #    6) Current opened design, has components, but diff names, design_name exists in project.
   #    7) No opened design, design_name exists in project.

   set errMsg "Design <$design_name> already exists in your project, please set the variable <design_name> to another value."
   set nRet 2

} else {
   # USE CASES:
   #    8) No opened design, design_name not in project.
   #    9) Current opened design, has components, but diff names, design_name not in project.

   common::send_msg_id "BD_TCL-003" "INFO" "Currently there is no design <$design_name> in project, so creating one..."

   create_bd_design $design_name

   common::send_msg_id "BD_TCL-004" "INFO" "Making design <$design_name> as current_bd_design."
   current_bd_design $design_name

}

common::send_msg_id "BD_TCL-005" "INFO" "Currently the variable <design_name> is equal to \"$design_name\"."

if { $nRet != 0 } {
   catch {common::send_msg_id "BD_TCL-114" "ERROR" $errMsg}
   return $nRet
}

##################################################################
# DESIGN PROCs
##################################################################


# Hierarchical cell: pr_support_limited
proc create_hier_cell_pr_support_limited { parentCell nameHier } {

  variable script_folder

  if { $parentCell eq "" || $nameHier eq "" } {
     catch {common::send_msg_id "BD_TCL-102" "ERROR" create_hier_cell_pr_support_limited() - Empty argument(s)!"}
     return
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_msg_id "BD_TCL-100" "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_msg_id "BD_TCL-101" "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj

  # Create cell and set as current instance
  set hier_obj [create_bd_cell -type hier $nameHier]
  current_bd_instance $hier_obj

  # Create interface pins
  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:aximm_rtl:1.0 S_AXI

  # Create pins
  create_bd_pin -dir I -type clk S_AXI_ACLK
  create_bd_pin -dir I -from 0 -to 0 -type rst S_AXI_ARESETN
  create_bd_pin -dir O -from 8 -to 0 dout
  create_bd_pin -dir O -from 26 -to 1 flash_A
  create_bd_pin -dir O flash_ADV_N
  create_bd_pin -dir IO -from 15 -to 4 flash_DQ
  create_bd_pin -dir O flash_OE_N
  create_bd_pin -dir O flash_WE_N
  create_bd_pin -dir I -type clk flash_clk
  create_bd_pin -dir I -from 0 -to 0 -type rst flash_rst

  # Create instance: const_gnd_mem_dm, and set properties
  set const_gnd_mem_dm [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 const_gnd_mem_dm ]
  set_property -dict [ list \
CONFIG.CONST_VAL {0} \
CONFIG.CONST_WIDTH {9} \
 ] $const_gnd_mem_dm

  # Create instance: flash_programmer, and set properties
  set flash_programmer [ create_bd_cell -type ip -vlnv xilinx.com:user:AXI_to_BPI:1.0 flash_programmer ]

  # Create interface connections
  connect_bd_intf_net -intf_net Conn1 [get_bd_intf_pins S_AXI] [get_bd_intf_pins flash_programmer/S_AXI]

  # Create port connections
  connect_bd_net -net Net [get_bd_pins flash_DQ] [get_bd_pins flash_programmer/flash_DQ]
  connect_bd_net -net S_AXI_ACLK_1 [get_bd_pins S_AXI_ACLK] [get_bd_pins flash_programmer/S_AXI_ACLK]
  connect_bd_net -net S_AXI_ARESETN_1 [get_bd_pins S_AXI_ARESETN] [get_bd_pins flash_programmer/S_AXI_ARESETN]
  connect_bd_net -net const_gnd_mem_dm_dout [get_bd_pins dout] [get_bd_pins const_gnd_mem_dm/dout]
  connect_bd_net -net flash_clk_1 [get_bd_pins flash_clk] [get_bd_pins flash_programmer/flash_clk]
  connect_bd_net -net flash_programmer_flash_A [get_bd_pins flash_A] [get_bd_pins flash_programmer/flash_A]
  connect_bd_net -net flash_programmer_flash_ADV_N [get_bd_pins flash_ADV_N] [get_bd_pins flash_programmer/flash_ADV_N]
  connect_bd_net -net flash_programmer_flash_OE_N [get_bd_pins flash_OE_N] [get_bd_pins flash_programmer/flash_OE_N]
  connect_bd_net -net flash_programmer_flash_WE_N [get_bd_pins flash_WE_N] [get_bd_pins flash_programmer/flash_WE_N]
  connect_bd_net -net flash_rst_1 [get_bd_pins flash_rst] [get_bd_pins flash_programmer/flash_rst]

  # Restore current instance
  current_bd_instance $oldCurInst
}

# Hierarchical cell: memory
proc create_hier_cell_memory { parentCell nameHier } {

  variable script_folder

  if { $parentCell eq "" || $nameHier eq "" } {
     catch {common::send_msg_id "BD_TCL-102" "ERROR" create_hier_cell_memory() - Empty argument(s)!"}
     return
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_msg_id "BD_TCL-100" "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_msg_id "BD_TCL-101" "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj

  # Create cell and set as current instance
  set hier_obj [create_bd_cell -type hier $nameHier]
  current_bd_instance $hier_obj

  # Create interface pins
  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:ddrx_rtl:1.0 C0_DDR3
  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:aximm_rtl:1.0 C0_DDR3_S_AXI
  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:aximm_rtl:1.0 C0_DDR3_S_AXI1
  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:aximm_rtl:1.0 C0_DDR3_S_AXI_CTRL
  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:aximm_rtl:1.0 C0_DDR3_S_AXI_CTRL1
  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:ddrx_rtl:1.0 C0_DDR4
  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:diff_clock_rtl:1.0 C0_SYS_CLK
  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:diff_clock_rtl:1.0 C0_SYS_CLK1

  # Create pins
  create_bd_pin -dir O -from 0 -to 0 Res
  create_bd_pin -dir I -from 0 -to 0 -type rst c0_ddr3_aresetn
  create_bd_pin -dir I -from 0 -to 0 -type rst c0_ddr3_aresetn1
  create_bd_pin -dir O -type clk c0_ddr3_ui_clk
  create_bd_pin -dir O -type clk c0_ddr3_ui_clk1
  create_bd_pin -dir O -type rst c0_ddr3_ui_clk_sync_rst
  create_bd_pin -dir O -type rst c0_ddr3_ui_clk_sync_rst1
  create_bd_pin -dir I -from 0 -to 0 -type rst sys_rst
  create_bd_pin -dir I -from 0 -to 0 -type rst sys_rst1

  # Create instance: ddrmem, and set properties
  set ddrmem [ create_bd_cell -type ip -vlnv xilinx.com:ip:ddr3:1.3 ddrmem ]
  set_property -dict [ list \
CONFIG.C0.ControllerType {DDR3_SDRAM} \
CONFIG.C0.DDR3_AxiAddressWidth {33} \
CONFIG.C0.DDR3_AxiDataWidth {512} \
CONFIG.C0.DDR3_AxiSelection {true} \
CONFIG.C0.DDR3_CasLatency {11} \
CONFIG.C0.DDR3_CasWriteLatency {8} \
CONFIG.C0.DDR3_DataMask {false} \
CONFIG.C0.DDR3_DataWidth {72} \
CONFIG.C0.DDR3_Ecc {true} \
CONFIG.C0.DDR3_InputClockPeriod {2500} \
CONFIG.C0.DDR3_MemoryPart {MT18KSF1G72HZ-1G6} \
CONFIG.C0.DDR3_MemoryType {SODIMMs} \
CONFIG.C0.DDR3_OnDieTermination {RZQ/6} \
CONFIG.C0.DDR3_TimePeriod {1250} \
 ] $ddrmem

  # Create instance: ddrmem_2, and set properties
  set ddrmem_2 [ create_bd_cell -type ip -vlnv xilinx.com:ip:ddr3:1.3 ddrmem_2 ]
  set_property -dict [ list \
CONFIG.C0.ControllerType {DDR3_SDRAM} \
CONFIG.C0.DDR3_AxiAddressWidth {33} \
CONFIG.C0.DDR3_AxiDataWidth {512} \
CONFIG.C0.DDR3_AxiSelection {true} \
CONFIG.C0.DDR3_CasLatency {11} \
CONFIG.C0.DDR3_CasWriteLatency {8} \
CONFIG.C0.DDR3_DataMask {false} \
CONFIG.C0.DDR3_DataWidth {72} \
CONFIG.C0.DDR3_Ecc {true} \
CONFIG.C0.DDR3_InputClockPeriod {2500} \
CONFIG.C0.DDR3_MemoryPart {MT18KSF1G72HZ-1G6} \
CONFIG.C0.DDR3_MemoryType {SODIMMs} \
CONFIG.C0.DDR3_OnDieTermination {RZQ/6} \
CONFIG.C0.DDR3_TimePeriod {1250} \
 ] $ddrmem_2

  # Create instance: logic_ddrcalib_op, and set properties
  set logic_ddrcalib_op [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic:2.0 logic_ddrcalib_op ]
  set_property -dict [ list \
CONFIG.C_OPERATION {and} \
CONFIG.C_SIZE {1} \
 ] $logic_ddrcalib_op

  # Create interface connections
  connect_bd_intf_net -intf_net Conn1 [get_bd_intf_pins C0_SYS_CLK] [get_bd_intf_pins ddrmem/C0_SYS_CLK]
  connect_bd_intf_net -intf_net Conn2 [get_bd_intf_pins C0_DDR3] [get_bd_intf_pins ddrmem/C0_DDR3]
  connect_bd_intf_net -intf_net Conn3 [get_bd_intf_pins C0_SYS_CLK1] [get_bd_intf_pins ddrmem_2/C0_SYS_CLK]
  connect_bd_intf_net -intf_net Conn4 [get_bd_intf_pins C0_DDR4] [get_bd_intf_pins ddrmem_2/C0_DDR3]
  connect_bd_intf_net -intf_net Conn5 [get_bd_intf_pins C0_DDR3_S_AXI] [get_bd_intf_pins ddrmem/C0_DDR3_S_AXI]
  connect_bd_intf_net -intf_net Conn6 [get_bd_intf_pins C0_DDR3_S_AXI1] [get_bd_intf_pins ddrmem_2/C0_DDR3_S_AXI]
  connect_bd_intf_net -intf_net Conn7 [get_bd_intf_pins C0_DDR3_S_AXI_CTRL] [get_bd_intf_pins ddrmem/C0_DDR3_S_AXI_CTRL]
  connect_bd_intf_net -intf_net Conn8 [get_bd_intf_pins C0_DDR3_S_AXI_CTRL1] [get_bd_intf_pins ddrmem_2/C0_DDR3_S_AXI_CTRL]

  # Create port connections
  connect_bd_net -net c0_ddr3_aresetn1_1 [get_bd_pins c0_ddr3_aresetn1] [get_bd_pins ddrmem_2/c0_ddr3_aresetn]
  connect_bd_net -net c0_ddr3_aresetn_1 [get_bd_pins c0_ddr3_aresetn] [get_bd_pins ddrmem/c0_ddr3_aresetn]
  connect_bd_net -net ddrmem_2_c0_ddr3_ui_clk [get_bd_pins c0_ddr3_ui_clk1] [get_bd_pins ddrmem_2/c0_ddr3_ui_clk]
  connect_bd_net -net ddrmem_2_c0_ddr3_ui_clk_sync_rst [get_bd_pins c0_ddr3_ui_clk_sync_rst1] [get_bd_pins ddrmem_2/c0_ddr3_ui_clk_sync_rst]
  connect_bd_net -net ddrmem_2_c0_init_calib_complete [get_bd_pins ddrmem_2/c0_init_calib_complete] [get_bd_pins logic_ddrcalib_op/Op2]
  connect_bd_net -net ddrmem_c0_ddr3_ui_clk [get_bd_pins c0_ddr3_ui_clk] [get_bd_pins ddrmem/c0_ddr3_ui_clk]
  connect_bd_net -net ddrmem_c0_ddr3_ui_clk_sync_rst [get_bd_pins c0_ddr3_ui_clk_sync_rst] [get_bd_pins ddrmem/c0_ddr3_ui_clk_sync_rst]
  connect_bd_net -net ddrmem_c0_init_calib_complete [get_bd_pins ddrmem/c0_init_calib_complete] [get_bd_pins logic_ddrcalib_op/Op1]
  connect_bd_net -net logic_ddrcalib_op_Res [get_bd_pins Res] [get_bd_pins logic_ddrcalib_op/Res]
  connect_bd_net -net sys_rst1_1 [get_bd_pins sys_rst1] [get_bd_pins ddrmem_2/sys_rst]
  connect_bd_net -net sys_rst_1 [get_bd_pins sys_rst] [get_bd_pins ddrmem/sys_rst]

  # Restore current instance
  current_bd_instance $oldCurInst
}

# Hierarchical cell: expanded_resets
proc create_hier_cell_expanded_resets { parentCell nameHier } {

  variable script_folder

  if { $parentCell eq "" || $nameHier eq "" } {
     catch {common::send_msg_id "BD_TCL-102" "ERROR" create_hier_cell_expanded_resets() - Empty argument(s)!"}
     return
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_msg_id "BD_TCL-100" "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_msg_id "BD_TCL-101" "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj

  # Create cell and set as current instance
  set hier_obj [create_bd_cell -type hier $nameHier]
  current_bd_instance $hier_obj

  # Create interface pins

  # Create pins
  create_bd_pin -dir I -from 0 -to 0 Op1
  create_bd_pin -dir O -from 0 -to 0 Res
  create_bd_pin -dir I -type rst aux_reset_in
  create_bd_pin -dir I dcm_locked
  create_bd_pin -dir I -type rst ext_reset_in
  create_bd_pin -dir I -type rst ext_reset_in1
  create_bd_pin -dir I -type rst ext_reset_in2
  create_bd_pin -dir O -from 0 -to 0 -type rst interconnect_aresetn
  create_bd_pin -dir O -from 0 -to 0 -type rst interconnect_aresetn1
  create_bd_pin -dir O -from 0 -to 0 -type rst interconnect_aresetn2
  create_bd_pin -dir O -from 0 -to 0 -type rst peripheral_reset
  create_bd_pin -dir I -type clk slowest_sync_clk
  create_bd_pin -dir I -type clk slowest_sync_clk1
  create_bd_pin -dir I -type clk slowest_sync_clk2
  create_bd_pin -dir I -type clk slowest_sync_clk3

  # Create instance: logic_reset_op, and set properties
  set logic_reset_op [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic:2.0 logic_reset_op ]
  set_property -dict [ list \
CONFIG.C_OPERATION {not} \
CONFIG.C_SIZE {1} \
 ] $logic_reset_op

  # Create instance: psreset_ddrmem_n, and set properties
  set psreset_ddrmem_n [ create_bd_cell -type ip -vlnv xilinx.com:ip:proc_sys_reset:5.0 psreset_ddrmem_n ]

  # Create instance: psreset_ddrmem_n_2, and set properties
  set psreset_ddrmem_n_2 [ create_bd_cell -type ip -vlnv xilinx.com:ip:proc_sys_reset:5.0 psreset_ddrmem_n_2 ]

  # Create instance: psreset_flashprog, and set properties
  set psreset_flashprog [ create_bd_cell -type ip -vlnv xilinx.com:ip:proc_sys_reset:5.0 psreset_flashprog ]
  set_property -dict [ list \
CONFIG.C_AUX_RST_WIDTH {1} \
CONFIG.C_EXT_RST_WIDTH {1} \
 ] $psreset_flashprog

  # Create instance: psreset_system, and set properties
  set psreset_system [ create_bd_cell -type ip -vlnv xilinx.com:ip:proc_sys_reset:5.0 psreset_system ]
  set_property -dict [ list \
CONFIG.C_AUX_RST_WIDTH {1} \
CONFIG.C_EXT_RST_WIDTH {1} \
 ] $psreset_system

  # Create port connections
  connect_bd_net -net Op1_1 [get_bd_pins Op1] [get_bd_pins logic_reset_op/Op1]
  connect_bd_net -net aux_reset_in_1 [get_bd_pins aux_reset_in] [get_bd_pins psreset_ddrmem_n/aux_reset_in]
  connect_bd_net -net dcm_locked_1 [get_bd_pins dcm_locked] [get_bd_pins psreset_flashprog/dcm_locked] [get_bd_pins psreset_system/dcm_locked]
  connect_bd_net -net ext_reset_in1_1 [get_bd_pins ext_reset_in1] [get_bd_pins psreset_ddrmem_n/ext_reset_in]
  connect_bd_net -net ext_reset_in2_1 [get_bd_pins ext_reset_in2] [get_bd_pins psreset_ddrmem_n_2/ext_reset_in]
  connect_bd_net -net ext_reset_in_1 [get_bd_pins ext_reset_in] [get_bd_pins psreset_system/ext_reset_in]
  connect_bd_net -net logic_reset_op_Res [get_bd_pins Res] [get_bd_pins logic_reset_op/Res]
  connect_bd_net -net psreset_ddrmem_n_2_interconnect_aresetn [get_bd_pins interconnect_aresetn2] [get_bd_pins psreset_ddrmem_n_2/interconnect_aresetn]
  connect_bd_net -net psreset_ddrmem_n_interconnect_aresetn [get_bd_pins interconnect_aresetn] [get_bd_pins psreset_ddrmem_n/interconnect_aresetn] [get_bd_pins psreset_system/aux_reset_in]
  connect_bd_net -net psreset_flashprog_peripheral_reset [get_bd_pins peripheral_reset] [get_bd_pins psreset_flashprog/peripheral_reset]
  connect_bd_net -net psreset_system_interconnect_aresetn [get_bd_pins interconnect_aresetn1] [get_bd_pins psreset_flashprog/ext_reset_in] [get_bd_pins psreset_system/interconnect_aresetn]
  connect_bd_net -net slowest_sync_clk1_1 [get_bd_pins slowest_sync_clk1] [get_bd_pins psreset_ddrmem_n/slowest_sync_clk]
  connect_bd_net -net slowest_sync_clk2_1 [get_bd_pins slowest_sync_clk2] [get_bd_pins psreset_ddrmem_n_2/slowest_sync_clk]
  connect_bd_net -net slowest_sync_clk3_1 [get_bd_pins slowest_sync_clk3] [get_bd_pins psreset_flashprog/slowest_sync_clk]
  connect_bd_net -net slowest_sync_clk_1 [get_bd_pins slowest_sync_clk] [get_bd_pins psreset_system/slowest_sync_clk]

  # Restore current instance
  current_bd_instance $oldCurInst
}

# Hierarchical cell: apm_sys
proc create_hier_cell_apm_sys { parentCell nameHier } {

  variable script_folder

  if { $parentCell eq "" || $nameHier eq "" } {
     catch {common::send_msg_id "BD_TCL-102" "ERROR" create_hier_cell_apm_sys() - Empty argument(s)!"}
     return
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_msg_id "BD_TCL-100" "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_msg_id "BD_TCL-101" "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj

  # Create cell and set as current instance
  set hier_obj [create_bd_cell -type hier $nameHier]
  current_bd_instance $hier_obj

  # Create interface pins
  create_bd_intf_pin -mode Monitor -vlnv xilinx.com:interface:aximm_rtl:1.0 SLOT_0_AXI
  create_bd_intf_pin -mode Monitor -vlnv xilinx.com:interface:aximm_rtl:1.0 SLOT_1_AXI
  create_bd_intf_pin -mode Monitor -vlnv xilinx.com:interface:aximm_rtl:1.0 SLOT_2_AXI
  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:aximm_rtl:1.0 S_AXI
  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:aximm_rtl:1.0 S_AXI1
  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:aximm_rtl:1.0 S_AXI_FULL

  # Create pins
  create_bd_pin -dir I -type rst core_aresetn
  create_bd_pin -dir I -type clk ext_clk_0
  create_bd_pin -dir I -type clk ext_clk_1
  create_bd_pin -dir I -from 0 -to 0 -type rst ext_rstn_0

  # Create instance: xilmonitor_apm, and set properties
  set xilmonitor_apm [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_perf_mon:5.0 xilmonitor_apm ]
  set_property -dict [ list \
CONFIG.C_ENABLE_ADVANCED {0} \
CONFIG.C_ENABLE_EVENT_COUNT {0} \
CONFIG.C_ENABLE_PROFILE {1} \
CONFIG.C_ENABLE_TRACE {1} \
CONFIG.C_EN_EXT_EVENTS_FLAG {1} \
CONFIG.C_EN_FIRST_READ_FLAG {0} \
CONFIG.C_EN_FIRST_WRITE_FLAG {0} \
CONFIG.C_EN_LAST_READ_FLAG {1} \
CONFIG.C_EN_LAST_WRITE_FLAG {1} \
CONFIG.C_EN_RD_ADD_FLAG {1} \
CONFIG.C_EN_RESPONSE_FLAG {0} \
CONFIG.C_EN_SW_REG_WR_FLAG {1} \
CONFIG.C_EN_WR_ADD_FLAG {1} \
CONFIG.C_FIFO_AXIS_DEPTH {16} \
CONFIG.C_NUM_MONITOR_SLOTS {3} \
CONFIG.C_REG_ALL_MONITOR_SIGNALS {1} \
CONFIG.C_SHOW_AXI_IDS {0} \
CONFIG.C_SHOW_AXI_LEN {1} \
CONFIG.C_SLOT_1_AXI_ID_WIDTH {5} \
 ] $xilmonitor_apm

  # Create instance: xilmonitor_fifo0, and set properties
  set xilmonitor_fifo0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_fifo_mm_s:4.1 xilmonitor_fifo0 ]
  set_property -dict [ list \
CONFIG.C_AXI4_BASEADDR {0x80001000} \
CONFIG.C_AXI4_HIGHADDR {0x80002FFF} \
CONFIG.C_AXIS_TUSER_WIDTH {16} \
CONFIG.C_DATA_INTERFACE_TYPE {1} \
CONFIG.C_RX_FIFO_DEPTH {4096} \
CONFIG.C_RX_FIFO_PF_THRESHOLD {4091} \
CONFIG.C_S_AXI4_DATA_WIDTH {128} \
CONFIG.C_USE_RX_CUT_THROUGH {true} \
CONFIG.C_USE_TX_CTRL {0} \
CONFIG.C_USE_TX_DATA {0} \
 ] $xilmonitor_fifo0

  # Need to retain value_src of defaults
  set_property -dict [ list \
CONFIG.C_AXI4_BASEADDR.VALUE_SRC {DEFAULT} \
CONFIG.C_AXI4_HIGHADDR.VALUE_SRC {DEFAULT} \
CONFIG.C_USE_TX_CTRL.VALUE_SRC {DEFAULT} \
 ] $xilmonitor_fifo0

  # Create instance: xilmonitor_subset0, and set properties
  set xilmonitor_subset0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axis_subset_converter:1.1 xilmonitor_subset0 ]
  set_property -dict [ list \
CONFIG.M_TDATA_NUM_BYTES {16} \
CONFIG.S_TDATA_NUM_BYTES {12} \
CONFIG.TDATA_REMAP {32'b00000000000000000000000000000000,tdata[95:0]} \
 ] $xilmonitor_subset0

  # Create interface connections
  connect_bd_intf_net -intf_net Conn1 [get_bd_intf_pins SLOT_1_AXI] [get_bd_intf_pins xilmonitor_apm/SLOT_1_AXI]
  connect_bd_intf_net -intf_net Conn2 [get_bd_intf_pins SLOT_0_AXI] [get_bd_intf_pins xilmonitor_apm/SLOT_0_AXI]
  connect_bd_intf_net -intf_net Conn3 [get_bd_intf_pins SLOT_2_AXI] [get_bd_intf_pins xilmonitor_apm/SLOT_2_AXI]
  connect_bd_intf_net -intf_net Conn4 [get_bd_intf_pins S_AXI_FULL] [get_bd_intf_pins xilmonitor_fifo0/S_AXI_FULL]
  connect_bd_intf_net -intf_net Conn5 [get_bd_intf_pins S_AXI] [get_bd_intf_pins xilmonitor_apm/S_AXI]
  connect_bd_intf_net -intf_net Conn6 [get_bd_intf_pins S_AXI1] [get_bd_intf_pins xilmonitor_fifo0/S_AXI]
  connect_bd_intf_net -intf_net xilmonitor_apm_M_AXIS [get_bd_intf_pins xilmonitor_apm/M_AXIS] [get_bd_intf_pins xilmonitor_subset0/S_AXIS]
  connect_bd_intf_net -intf_net xilmonitor_subset0_M_AXIS [get_bd_intf_pins xilmonitor_fifo0/AXI_STR_RXD] [get_bd_intf_pins xilmonitor_subset0/M_AXIS]

  # Create port connections
  connect_bd_net -net core_aresetn_1 [get_bd_pins core_aresetn] [get_bd_pins xilmonitor_apm/core_aresetn] [get_bd_pins xilmonitor_apm/ext_rstn_1] [get_bd_pins xilmonitor_apm/slot_1_axi_aresetn]
  connect_bd_net -net ext_clk_0_1 [get_bd_pins ext_clk_0] [get_bd_pins xilmonitor_apm/ext_clk_0] [get_bd_pins xilmonitor_apm/ext_clk_2] [get_bd_pins xilmonitor_apm/m_axis_aclk] [get_bd_pins xilmonitor_apm/s_axi_aclk] [get_bd_pins xilmonitor_apm/slot_0_axi_aclk] [get_bd_pins xilmonitor_apm/slot_2_axi_aclk] [get_bd_pins xilmonitor_fifo0/s_axi_aclk] [get_bd_pins xilmonitor_subset0/aclk]
  connect_bd_net -net ext_clk_1_1 [get_bd_pins ext_clk_1] [get_bd_pins xilmonitor_apm/core_aclk] [get_bd_pins xilmonitor_apm/ext_clk_1] [get_bd_pins xilmonitor_apm/slot_1_axi_aclk]
  connect_bd_net -net ext_rstn_0_1 [get_bd_pins ext_rstn_0] [get_bd_pins xilmonitor_apm/ext_rstn_0] [get_bd_pins xilmonitor_apm/ext_rstn_2] [get_bd_pins xilmonitor_apm/m_axis_aresetn] [get_bd_pins xilmonitor_apm/s_axi_aresetn] [get_bd_pins xilmonitor_apm/slot_0_axi_aresetn] [get_bd_pins xilmonitor_apm/slot_2_axi_aresetn] [get_bd_pins xilmonitor_fifo0/s_axi_aresetn] [get_bd_pins xilmonitor_subset0/aresetn]

  # Restore current instance
  current_bd_instance $oldCurInst
}

# Hierarchical cell: pr_isolation_limited
proc create_hier_cell_pr_isolation_limited { parentCell nameHier } {

  variable script_folder

  if { $parentCell eq "" || $nameHier eq "" } {
     catch {common::send_msg_id "BD_TCL-102" "ERROR" create_hier_cell_pr_isolation_limited() - Empty argument(s)!"}
     return
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_msg_id "BD_TCL-100" "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_msg_id "BD_TCL-101" "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj

  # Create cell and set as current instance
  set hier_obj [create_bd_cell -type hier $nameHier]
  current_bd_instance $hier_obj

  # Create interface pins
  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:aximm_rtl:1.0 M_AXI
  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:aximm_rtl:1.0 M_AXI1
  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:aximm_rtl:1.0 M_AXI2
  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:aximm_rtl:1.0 S_AXI
  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:aximm_rtl:1.0 S_AXI1
  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:aximm_rtl:1.0 S_AXI2
  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:aximm_rtl:1.0 S_AXI3
  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:aximm_rtl:1.0 S_AXI4

  # Create pins
  create_bd_pin -dir I dcm_locked
  create_bd_pin -dir I dcm_locked1
  create_bd_pin -dir I -from 0 -to 0 -type rst ext_reset_in
  create_bd_pin -dir I -from 0 -to 0 gpio_io_i
  create_bd_pin -dir O -from 0 -to 0 -type rst interconnect_aresetn
  create_bd_pin -dir O -from 0 -to 0 -type rst interconnect_aresetn1
  create_bd_pin -dir I -type clk slowest_sync_clk
  create_bd_pin -dir I -type clk slowest_sync_clk1

  # Create instance: ddr_calib_status, and set properties
  set ddr_calib_status [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_gpio:2.0 ddr_calib_status ]
  set_property -dict [ list \
CONFIG.C_ALL_INPUTS {1} \
CONFIG.C_GPIO_WIDTH {1} \
 ] $ddr_calib_status

  # Create instance: gate_pr, and set properties
  set gate_pr [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_gpio:2.0 gate_pr ]
  set_property -dict [ list \
CONFIG.C_ALL_INPUTS_2 {1} \
CONFIG.C_ALL_OUTPUTS {1} \
CONFIG.C_DOUT_DEFAULT {0xFFFFFFFF} \
CONFIG.C_GPIO2_WIDTH {2} \
CONFIG.C_GPIO_WIDTH {2} \
CONFIG.C_IS_DUAL {1} \
 ] $gate_pr

  # Create instance: psreset_kernel_pr, and set properties
  set psreset_kernel_pr [ create_bd_cell -type ip -vlnv xilinx.com:ip:proc_sys_reset:5.0 psreset_kernel_pr ]
  set_property -dict [ list \
CONFIG.C_AUX_RST_WIDTH {1} \
CONFIG.C_EXT_RST_WIDTH {1} \
 ] $psreset_kernel_pr

  # Create instance: psreset_regslice_pr, and set properties
  set psreset_regslice_pr [ create_bd_cell -type ip -vlnv xilinx.com:ip:proc_sys_reset:5.0 psreset_regslice_pr ]
  set_property -dict [ list \
CONFIG.C_AUX_RST_WIDTH {1} \
CONFIG.C_EXT_RST_WIDTH {1} \
 ] $psreset_regslice_pr

  # Create instance: psreset_system_pr, and set properties
  set psreset_system_pr [ create_bd_cell -type ip -vlnv xilinx.com:ip:proc_sys_reset:5.0 psreset_system_pr ]
  set_property -dict [ list \
CONFIG.C_AUX_RST_WIDTH {1} \
CONFIG.C_EXT_RST_WIDTH {1} \
 ] $psreset_system_pr

  # Create instance: regslice_control, and set properties
  set regslice_control [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_register_slice:2.1 regslice_control ]

  # Create instance: regslice_data, and set properties
  set regslice_data [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_register_slice:2.1 regslice_data ]
  set_property -dict [ list \
CONFIG.ADDR_WIDTH {38} \
CONFIG.DATA_WIDTH {512} \
CONFIG.ID_WIDTH {4} \
CONFIG.PROTOCOL {AXI4} \
CONFIG.READ_WRITE_MODE {READ_WRITE} \
 ] $regslice_data

  # Create instance: regslice_data_2, and set properties
  set regslice_data_2 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_register_slice:2.1 regslice_data_2 ]
  set_property -dict [ list \
CONFIG.ADDR_WIDTH {38} \
CONFIG.DATA_WIDTH {512} \
CONFIG.ID_WIDTH {4} \
CONFIG.PROTOCOL {AXI4} \
CONFIG.READ_WRITE_MODE {READ_WRITE} \
 ] $regslice_data_2

  # Create instance: slice_reset_kernel_pr, and set properties
  set slice_reset_kernel_pr [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 slice_reset_kernel_pr ]
  set_property -dict [ list \
CONFIG.DIN_FROM {1} \
CONFIG.DIN_TO {1} \
CONFIG.DIN_WIDTH {2} \
 ] $slice_reset_kernel_pr

  # Create instance: slice_reset_system_pr, and set properties
  set slice_reset_system_pr [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 slice_reset_system_pr ]
  set_property -dict [ list \
CONFIG.DIN_FROM {0} \
CONFIG.DIN_TO {0} \
CONFIG.DIN_WIDTH {2} \
 ] $slice_reset_system_pr

  # Create interface connections
  connect_bd_intf_net -intf_net Conn1 [get_bd_intf_pins S_AXI] [get_bd_intf_pins regslice_data/S_AXI]
  connect_bd_intf_net -intf_net Conn2 [get_bd_intf_pins S_AXI1] [get_bd_intf_pins regslice_data_2/S_AXI]
  connect_bd_intf_net -intf_net Conn3 [get_bd_intf_pins M_AXI] [get_bd_intf_pins regslice_control/M_AXI]
  connect_bd_intf_net -intf_net Conn4 [get_bd_intf_pins M_AXI1] [get_bd_intf_pins regslice_data/M_AXI]
  connect_bd_intf_net -intf_net Conn5 [get_bd_intf_pins M_AXI2] [get_bd_intf_pins regslice_data_2/M_AXI]
  connect_bd_intf_net -intf_net Conn6 [get_bd_intf_pins S_AXI2] [get_bd_intf_pins regslice_control/S_AXI]
  connect_bd_intf_net -intf_net Conn7 [get_bd_intf_pins S_AXI3] [get_bd_intf_pins gate_pr/S_AXI]
  connect_bd_intf_net -intf_net Conn8 [get_bd_intf_pins S_AXI4] [get_bd_intf_pins ddr_calib_status/S_AXI]

  # Create port connections
  connect_bd_net -net dcm_locked1_1 [get_bd_pins dcm_locked1] [get_bd_pins psreset_regslice_pr/dcm_locked] [get_bd_pins psreset_system_pr/dcm_locked]
  connect_bd_net -net dcm_locked_1 [get_bd_pins dcm_locked] [get_bd_pins psreset_kernel_pr/dcm_locked]
  connect_bd_net -net ext_reset_in_1 [get_bd_pins ext_reset_in] [get_bd_pins ddr_calib_status/s_axi_aresetn] [get_bd_pins gate_pr/s_axi_aresetn] [get_bd_pins psreset_kernel_pr/ext_reset_in] [get_bd_pins psreset_regslice_pr/ext_reset_in] [get_bd_pins psreset_system_pr/ext_reset_in]
  connect_bd_net -net gate_pr_gpio_io_o [get_bd_pins gate_pr/gpio2_io_i] [get_bd_pins gate_pr/gpio_io_o] [get_bd_pins slice_reset_kernel_pr/Din] [get_bd_pins slice_reset_system_pr/Din]
  connect_bd_net -net gpio_io_i_1 [get_bd_pins gpio_io_i] [get_bd_pins ddr_calib_status/gpio_io_i]
  connect_bd_net -net psreset_kernel_pr_interconnect_aresetn [get_bd_pins interconnect_aresetn] [get_bd_pins psreset_kernel_pr/interconnect_aresetn]
  connect_bd_net -net psreset_regslice_pr_interconnect_aresetn [get_bd_pins psreset_regslice_pr/interconnect_aresetn] [get_bd_pins regslice_control/aresetn] [get_bd_pins regslice_data/aresetn] [get_bd_pins regslice_data_2/aresetn]
  connect_bd_net -net psreset_system_pr_interconnect_aresetn [get_bd_pins interconnect_aresetn1] [get_bd_pins psreset_system_pr/interconnect_aresetn]
  connect_bd_net -net slice_reset_kernel_pr_Dout [get_bd_pins psreset_kernel_pr/aux_reset_in] [get_bd_pins psreset_system_pr/aux_reset_in] [get_bd_pins slice_reset_kernel_pr/Dout]
  connect_bd_net -net slice_reset_system_pr_Dout [get_bd_pins psreset_regslice_pr/aux_reset_in] [get_bd_pins slice_reset_system_pr/Dout]
  connect_bd_net -net slowest_sync_clk1_1 [get_bd_pins slowest_sync_clk1] [get_bd_pins ddr_calib_status/s_axi_aclk] [get_bd_pins gate_pr/s_axi_aclk] [get_bd_pins psreset_regslice_pr/slowest_sync_clk] [get_bd_pins psreset_system_pr/slowest_sync_clk] [get_bd_pins regslice_control/aclk] [get_bd_pins regslice_data/aclk] [get_bd_pins regslice_data_2/aclk]
  connect_bd_net -net slowest_sync_clk_1 [get_bd_pins slowest_sync_clk] [get_bd_pins psreset_kernel_pr/slowest_sync_clk]

  # Restore current instance
  current_bd_instance $oldCurInst
}

# Hierarchical cell: featureid
proc create_hier_cell_featureid { parentCell nameHier } {

  variable script_folder

  if { $parentCell eq "" || $nameHier eq "" } {
     catch {common::send_msg_id "BD_TCL-102" "ERROR" create_hier_cell_featureid() - Empty argument(s)!"}
     return
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_msg_id "BD_TCL-100" "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_msg_id "BD_TCL-101" "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj

  # Create cell and set as current instance
  set hier_obj [create_bd_cell -type hier $nameHier]
  current_bd_instance $hier_obj

  # Create interface pins
  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:aximm_rtl:1.0 S_AXI

  # Create pins
  create_bd_pin -dir I -type clk s_axi_aclk
  create_bd_pin -dir I -from 0 -to 0 -type rst s_axi_aresetn

  # Create instance: const_featureid_high, and set properties
  set const_featureid_high [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 const_featureid_high ]
  set_property -dict [ list \
CONFIG.CONST_VAL {0} \
CONFIG.CONST_WIDTH {32} \
 ] $const_featureid_high

  # Create instance: const_featureid_low, and set properties
  set const_featureid_low [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 const_featureid_low ]
  set_property -dict [ list \
CONFIG.CONST_VAL {0} \
CONFIG.CONST_WIDTH {32} \
 ] $const_featureid_low

  # Create instance: gpio_featureid, and set properties
  set gpio_featureid [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_gpio:2.0 gpio_featureid ]
  set_property -dict [ list \
CONFIG.C_ALL_INPUTS {1} \
CONFIG.C_ALL_INPUTS_2 {1} \
CONFIG.C_IS_DUAL {1} \
 ] $gpio_featureid

  # Create interface connections
  connect_bd_intf_net -intf_net Conn1 [get_bd_intf_pins S_AXI] [get_bd_intf_pins gpio_featureid/S_AXI]

  # Create port connections
  connect_bd_net -net const_featureid_high_dout [get_bd_pins const_featureid_high/dout] [get_bd_pins gpio_featureid/gpio2_io_i]
  connect_bd_net -net const_featureid_low_dout [get_bd_pins const_featureid_low/dout] [get_bd_pins gpio_featureid/gpio_io_i]
  connect_bd_net -net s_axi_aclk_1 [get_bd_pins s_axi_aclk] [get_bd_pins gpio_featureid/s_axi_aclk]
  connect_bd_net -net s_axi_aresetn_1 [get_bd_pins s_axi_aresetn] [get_bd_pins gpio_featureid/s_axi_aresetn]

  # Restore current instance
  current_bd_instance $oldCurInst
}

# Hierarchical cell: base_tieoffs
proc create_hier_cell_base_tieoffs { parentCell nameHier } {

  variable script_folder

  if { $parentCell eq "" || $nameHier eq "" } {
     catch {common::send_msg_id "BD_TCL-102" "ERROR" create_hier_cell_base_tieoffs() - Empty argument(s)!"}
     return
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_msg_id "BD_TCL-100" "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_msg_id "BD_TCL-101" "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj

  # Create cell and set as current instance
  set hier_obj [create_bd_cell -type hier $nameHier]
  current_bd_instance $hier_obj

  # Create interface pins

  # Create pins
  create_bd_pin -dir O -from 0 -to 0 dout
  create_bd_pin -dir O -from 2 -to 0 dout1
  create_bd_pin -dir O -from 0 -to 0 dout2

  # Create instance: const_gnd_1, and set properties
  set const_gnd_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 const_gnd_1 ]
  set_property -dict [ list \
CONFIG.CONST_VAL {0} \
 ] $const_gnd_1

  # Create instance: const_gnd_3, and set properties
  set const_gnd_3 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 const_gnd_3 ]
  set_property -dict [ list \
CONFIG.CONST_VAL {0} \
CONFIG.CONST_WIDTH {3} \
 ] $const_gnd_3

  # Create instance: const_vcc_1, and set properties
  set const_vcc_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 const_vcc_1 ]

  # Create port connections
  connect_bd_net -net const_gnd_1_dout [get_bd_pins dout] [get_bd_pins const_gnd_1/dout]
  connect_bd_net -net const_gnd_3_dout [get_bd_pins dout1] [get_bd_pins const_gnd_3/dout]
  connect_bd_net -net const_vcc_1_dout [get_bd_pins dout2] [get_bd_pins const_vcc_1/dout]

  # Restore current instance
  current_bd_instance $oldCurInst
}

# Hierarchical cell: base_clocking
proc create_hier_cell_base_clocking { parentCell nameHier } {

  variable script_folder

  if { $parentCell eq "" || $nameHier eq "" } {
     catch {common::send_msg_id "BD_TCL-102" "ERROR" create_hier_cell_base_clocking() - Empty argument(s)!"}
     return
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_msg_id "BD_TCL-100" "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_msg_id "BD_TCL-101" "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj

  # Create cell and set as current instance
  set hier_obj [create_bd_cell -type hier $nameHier]
  current_bd_instance $hier_obj

  # Create interface pins
  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:diff_clock_rtl:1.0 CLK_IN_D
  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:aximm_rtl:1.0 S_AXI

  # Create pins
  create_bd_pin -dir I -from 0 -to 0 BUFG_GT_CE
  create_bd_pin -dir I -from 0 -to 0 BUFG_GT_CEMASK
  create_bd_pin -dir I -from 0 -to 0 BUFG_GT_CLR
  create_bd_pin -dir I -from 0 -to 0 BUFG_GT_CLRMASK
  create_bd_pin -dir I -from 2 -to 0 BUFG_GT_DIV
  create_bd_pin -dir O -from 0 -to 0 -type clk IBUF_DS_ODIV2
  create_bd_pin -dir O -from 0 -to 0 -type clk IBUF_OUT
  create_bd_pin -dir O -type clk clk_out1
  create_bd_pin -dir O -type clk clk_out2
  create_bd_pin -dir O -type clk clk_out3
  create_bd_pin -dir I -type rst ext_reset_in
  create_bd_pin -dir O locked
  create_bd_pin -dir O locked1
  create_bd_pin -dir I -from 0 -to 0 -type rst s_axi_aresetn

  # Create instance: buf_refclk_bufg, and set properties
  set buf_refclk_bufg [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_ds_buf:2.1 buf_refclk_bufg ]
  set_property -dict [ list \
CONFIG.C_BUF_TYPE {BUFG_GT} \
 ] $buf_refclk_bufg

  # Create instance: buf_refclk_ibuf, and set properties
  set buf_refclk_ibuf [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_ds_buf:2.1 buf_refclk_ibuf ]
  set_property -dict [ list \
CONFIG.C_BUF_TYPE {IBUFDSGTE} \
 ] $buf_refclk_ibuf

  # Create instance: clkconv_clkwiz_kernel, and set properties
  set clkconv_clkwiz_kernel [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_clock_converter:2.1 clkconv_clkwiz_kernel ]

  # Create instance: clkwiz_kernel, and set properties
  set clkwiz_kernel [ create_bd_cell -type ip -vlnv xilinx.com:ip:clk_wiz:5.3 clkwiz_kernel ]
  set_property -dict [ list \
CONFIG.CLKOUT1_JITTER {110.209} \
CONFIG.CLKOUT1_PHASE_ERROR {98.575} \
CONFIG.CLKOUT1_REQUESTED_OUT_FREQ {250.000} \
CONFIG.CLKOUT2_DRIVES {Buffer} \
CONFIG.CLKOUT3_DRIVES {Buffer} \
CONFIG.CLKOUT4_DRIVES {Buffer} \
CONFIG.CLKOUT5_DRIVES {Buffer} \
CONFIG.CLKOUT6_DRIVES {Buffer} \
CONFIG.CLKOUT7_DRIVES {Buffer} \
CONFIG.MMCM_CLKFBOUT_MULT_F {10.000} \
CONFIG.MMCM_CLKIN1_PERIOD {10.0} \
CONFIG.MMCM_CLKIN2_PERIOD {10.0} \
CONFIG.USE_DYN_RECONFIG {true} \
 ] $clkwiz_kernel

  # Need to retain value_src of defaults
  set_property -dict [ list \
CONFIG.CLKOUT1_JITTER.VALUE_SRC {DEFAULT} \
CONFIG.CLKOUT1_PHASE_ERROR.VALUE_SRC {DEFAULT} \
CONFIG.CLKOUT2_DRIVES.VALUE_SRC {DEFAULT} \
CONFIG.CLKOUT3_DRIVES.VALUE_SRC {DEFAULT} \
CONFIG.CLKOUT4_DRIVES.VALUE_SRC {DEFAULT} \
CONFIG.CLKOUT5_DRIVES.VALUE_SRC {DEFAULT} \
CONFIG.CLKOUT6_DRIVES.VALUE_SRC {DEFAULT} \
CONFIG.CLKOUT7_DRIVES.VALUE_SRC {DEFAULT} \
CONFIG.MMCM_CLKFBOUT_MULT_F.VALUE_SRC {DEFAULT} \
CONFIG.MMCM_CLKIN1_PERIOD.VALUE_SRC {DEFAULT} \
CONFIG.MMCM_CLKIN2_PERIOD.VALUE_SRC {DEFAULT} \
 ] $clkwiz_kernel

  # Create instance: clkwiz_system, and set properties
  set clkwiz_system [ create_bd_cell -type ip -vlnv xilinx.com:ip:clk_wiz:5.3 clkwiz_system ]
  set_property -dict [ list \
CONFIG.CLKOUT1_JITTER {114.829} \
CONFIG.CLKOUT1_PHASE_ERROR {98.575} \
CONFIG.CLKOUT1_REQUESTED_OUT_FREQ {200.000} \
CONFIG.CLKOUT2_JITTER {183.243} \
CONFIG.CLKOUT2_PHASE_ERROR {98.575} \
CONFIG.CLKOUT2_REQUESTED_OUT_FREQ {20.000} \
CONFIG.CLKOUT2_USED {true} \
CONFIG.CLKOUT3_DRIVES {Buffer} \
CONFIG.CLKOUT4_DRIVES {Buffer} \
CONFIG.CLKOUT5_DRIVES {Buffer} \
CONFIG.CLKOUT6_DRIVES {Buffer} \
CONFIG.CLKOUT7_DRIVES {Buffer} \
CONFIG.MMCM_CLKFBOUT_MULT_F {10.000} \
CONFIG.MMCM_CLKIN1_PERIOD {10.0} \
CONFIG.MMCM_CLKIN2_PERIOD {10.0} \
CONFIG.MMCM_CLKOUT0_DIVIDE_F {5.000} \
CONFIG.MMCM_CLKOUT1_DIVIDE {50} \
CONFIG.NUM_OUT_CLKS {2} \
CONFIG.PRIM_SOURCE {Global_buffer} \
CONFIG.RESET_PORT {resetn} \
CONFIG.RESET_TYPE {ACTIVE_LOW} \
 ] $clkwiz_system

  # Need to retain value_src of defaults
  set_property -dict [ list \
CONFIG.CLKOUT1_JITTER.VALUE_SRC {DEFAULT} \
CONFIG.CLKOUT1_PHASE_ERROR.VALUE_SRC {DEFAULT} \
CONFIG.CLKOUT2_JITTER.VALUE_SRC {DEFAULT} \
CONFIG.CLKOUT2_PHASE_ERROR.VALUE_SRC {DEFAULT} \
CONFIG.CLKOUT3_DRIVES.VALUE_SRC {DEFAULT} \
CONFIG.CLKOUT4_DRIVES.VALUE_SRC {DEFAULT} \
CONFIG.CLKOUT5_DRIVES.VALUE_SRC {DEFAULT} \
CONFIG.CLKOUT6_DRIVES.VALUE_SRC {DEFAULT} \
CONFIG.CLKOUT7_DRIVES.VALUE_SRC {DEFAULT} \
CONFIG.MMCM_CLKFBOUT_MULT_F.VALUE_SRC {DEFAULT} \
CONFIG.MMCM_CLKIN1_PERIOD.VALUE_SRC {DEFAULT} \
CONFIG.MMCM_CLKIN2_PERIOD.VALUE_SRC {DEFAULT} \
CONFIG.MMCM_CLKOUT0_DIVIDE_F.VALUE_SRC {DEFAULT} \
CONFIG.MMCM_CLKOUT1_DIVIDE.VALUE_SRC {DEFAULT} \
CONFIG.NUM_OUT_CLKS.VALUE_SRC {DEFAULT} \
CONFIG.RESET_PORT.VALUE_SRC {DEFAULT} \
 ] $clkwiz_system

  # Create instance: psreset_perst_n, and set properties
  set psreset_perst_n [ create_bd_cell -type ip -vlnv xilinx.com:ip:proc_sys_reset:5.0 psreset_perst_n ]
  set_property -dict [ list \
CONFIG.C_AUX_RST_WIDTH {1} \
CONFIG.C_EXT_RST_WIDTH {1} \
 ] $psreset_perst_n

  # Create interface connections
  connect_bd_intf_net -intf_net Conn1 [get_bd_intf_pins CLK_IN_D] [get_bd_intf_pins buf_refclk_ibuf/CLK_IN_D]
  connect_bd_intf_net -intf_net Conn2 [get_bd_intf_pins S_AXI] [get_bd_intf_pins clkconv_clkwiz_kernel/S_AXI]
  connect_bd_intf_net -intf_net clkconv_clkwiz_kernel_M_AXI [get_bd_intf_pins clkconv_clkwiz_kernel/M_AXI] [get_bd_intf_pins clkwiz_kernel/s_axi_lite]

  # Create port connections
  connect_bd_net -net BUFG_GT_CEMASK_1 [get_bd_pins BUFG_GT_CEMASK] [get_bd_pins buf_refclk_bufg/BUFG_GT_CEMASK]
  connect_bd_net -net BUFG_GT_CE_1 [get_bd_pins BUFG_GT_CE] [get_bd_pins buf_refclk_bufg/BUFG_GT_CE]
  connect_bd_net -net BUFG_GT_CLRMASK_1 [get_bd_pins BUFG_GT_CLRMASK] [get_bd_pins buf_refclk_bufg/BUFG_GT_CLRMASK]
  connect_bd_net -net BUFG_GT_CLR_1 [get_bd_pins BUFG_GT_CLR] [get_bd_pins buf_refclk_bufg/BUFG_GT_CLR]
  connect_bd_net -net BUFG_GT_DIV_1 [get_bd_pins BUFG_GT_DIV] [get_bd_pins buf_refclk_bufg/BUFG_GT_DIV]
  connect_bd_net -net buf_refclk_bufg_BUFG_GT_O [get_bd_pins buf_refclk_bufg/BUFG_GT_O] [get_bd_pins clkconv_clkwiz_kernel/m_axi_aclk] [get_bd_pins clkwiz_kernel/clk_in1] [get_bd_pins clkwiz_kernel/s_axi_aclk] [get_bd_pins clkwiz_system/clk_in1] [get_bd_pins psreset_perst_n/slowest_sync_clk]
  connect_bd_net -net buf_refclk_ibuf_IBUF_DS_ODIV2 [get_bd_pins IBUF_DS_ODIV2] [get_bd_pins buf_refclk_bufg/BUFG_GT_I] [get_bd_pins buf_refclk_ibuf/IBUF_DS_ODIV2]
  connect_bd_net -net buf_refclk_ibuf_IBUF_OUT [get_bd_pins IBUF_OUT] [get_bd_pins buf_refclk_ibuf/IBUF_OUT]
  connect_bd_net -net clkwiz_kernel_clk_out1 [get_bd_pins clk_out1] [get_bd_pins clkwiz_kernel/clk_out1]
  connect_bd_net -net clkwiz_kernel_locked [get_bd_pins locked] [get_bd_pins clkwiz_kernel/locked]
  connect_bd_net -net clkwiz_system_clk_out1 [get_bd_pins clk_out2] [get_bd_pins clkconv_clkwiz_kernel/s_axi_aclk] [get_bd_pins clkwiz_system/clk_out1]
  connect_bd_net -net clkwiz_system_clk_out2 [get_bd_pins clk_out3] [get_bd_pins clkwiz_system/clk_out2]
  connect_bd_net -net clkwiz_system_locked [get_bd_pins locked1] [get_bd_pins clkwiz_system/locked]
  connect_bd_net -net ext_reset_in_1 [get_bd_pins ext_reset_in] [get_bd_pins psreset_perst_n/ext_reset_in]
  connect_bd_net -net psreset_perst_n_interconnect_aresetn [get_bd_pins clkconv_clkwiz_kernel/m_axi_aresetn] [get_bd_pins clkwiz_kernel/s_axi_aresetn] [get_bd_pins clkwiz_system/resetn] [get_bd_pins psreset_perst_n/interconnect_aresetn]
  connect_bd_net -net s_axi_aresetn_1 [get_bd_pins s_axi_aresetn] [get_bd_pins clkconv_clkwiz_kernel/s_axi_aresetn]

  # Restore current instance
  current_bd_instance $oldCurInst
}

# Hierarchical cell: expanded_region
proc create_hier_cell_expanded_region { parentCell nameHier } {

  variable script_folder

  if { $parentCell eq "" || $nameHier eq "" } {
     catch {common::send_msg_id "BD_TCL-102" "ERROR" create_hier_cell_expanded_region() - Empty argument(s)!"}
     return
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_msg_id "BD_TCL-100" "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_msg_id "BD_TCL-101" "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj

  # Create cell and set as current instance
  set hier_obj [create_bd_cell -type hier $nameHier]
  current_bd_instance $hier_obj

  # Create interface pins
  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:ddrx_rtl:1.0 C0_DDR3
  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:ddrx_rtl:1.0 C0_DDR4
  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:diff_clock_rtl:1.0 C0_SYS_CLK
  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:diff_clock_rtl:1.0 C0_SYS_CLK1
  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:aximm_rtl:1.0 M00_AXI
  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:aximm_rtl:1.0 M01_AXI
  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:aximm_rtl:1.0 M05_AXI
  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:aximm_rtl:1.0 M06_AXI
  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:aximm_rtl:1.0 M07_AXI
  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:aximm_rtl:1.0 M08_AXI
  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:aximm_rtl:1.0 M09_AXI
  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:aximm_rtl:1.0 S00_AXI
  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:aximm_rtl:1.0 S00_AXI1
  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:aximm_rtl:1.0 S01_AXI
  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:aximm_rtl:1.0 S02_AXI
  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:aximm_rtl:1.0 S_AXI

  # Create pins
  create_bd_pin -dir I -type clk ACLK
  create_bd_pin -dir I -from 0 -to 0 -type rst INTERCONNECT_RESET
  create_bd_pin -dir I -type clk KERNEL_CLK
  create_bd_pin -dir I -from 0 -to 0 -type rst KERNEL_RESET
  create_bd_pin -dir I -from 0 -to 0 Op1
  create_bd_pin -dir O -from 0 -to 0 Res
  create_bd_pin -dir I -type clk S00_ACLK
  create_bd_pin -dir I -type rst core_aresetn
  create_bd_pin -dir I dcm_locked
  create_bd_pin -dir O -from 8 -to 0 dout
  create_bd_pin -dir O -from 26 -to 1 flash_A
  create_bd_pin -dir O flash_ADV_N
  create_bd_pin -dir IO -from 15 -to 4 flash_DQ
  create_bd_pin -dir O flash_OE_N
  create_bd_pin -dir O flash_WE_N
  create_bd_pin -dir I -type clk flash_clk
  create_bd_pin -dir O -from 0 -to 0 -type rst interconnect_aresetn1

  # Create instance: apm_sys
  create_hier_cell_apm_sys $hier_obj apm_sys

  # Create instance: expanded_resets
  create_hier_cell_expanded_resets $hier_obj expanded_resets

  # Create instance: interconnect_axilite, and set properties
  set interconnect_axilite [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_interconnect:2.1 interconnect_axilite ]
  set_property -dict [ list \
CONFIG.M00_HAS_REGSLICE {4} \
CONFIG.M01_HAS_REGSLICE {4} \
CONFIG.M02_HAS_REGSLICE {4} \
CONFIG.M03_HAS_REGSLICE {4} \
CONFIG.M04_HAS_REGSLICE {4} \
CONFIG.M05_HAS_REGSLICE {4} \
CONFIG.M06_HAS_REGSLICE {4} \
CONFIG.M07_HAS_REGSLICE {4} \
CONFIG.M08_HAS_REGSLICE {4} \
CONFIG.M09_HAS_REGSLICE {4} \
CONFIG.NUM_MI {10} \
CONFIG.S00_HAS_REGSLICE {4} \
 ] $interconnect_axilite

  # Create instance: interconnect_aximm, and set properties
  set interconnect_aximm [ create_bd_cell -type ip -vlnv xilinx.com:ip:smartconnect:1.0 interconnect_aximm ]
  set_property -dict [ list \
CONFIG.NUM_CLKS {4} \
CONFIG.NUM_MI {3} \
CONFIG.NUM_SI {3} \
 ] $interconnect_aximm

  # Create instance: memory
  create_hier_cell_memory $hier_obj memory

  # Create instance: pr_support_limited
  create_hier_cell_pr_support_limited $hier_obj pr_support_limited

  # Create instance: u_ocl_region, and set properties
  set u_ocl_region [ create_bd_cell -type ip -vlnv xilinx.com:ip:ocl_block:1.0 u_ocl_region ]
  set_property -dict [ list \
CONFIG.BOUNDARY_VERSION {2} \
CONFIG.ENABLE_SMARTCONNECT {false} \
CONFIG.HAS_KERNEL_CLOCK {true} \
CONFIG.HAS_S_MEM {false} \
CONFIG.KERNEL_TYPE {ADD_ONE} \
CONFIG.M00_AXIS_RX_TDATA_NUM_BYTES {8} \
CONFIG.M00_AXIS_RX_TUSER_WIDTH {8} \
CONFIG.M_ADDR_WIDTH {38} \
CONFIG.M_DATA_WIDTH {512} \
CONFIG.M_HAS_REGSLICE {4} \
CONFIG.M_ID_WIDTH {4} \
CONFIG.NUM_KERNELS {2} \
CONFIG.NUM_MI {2} \
CONFIG.NUM_M_AXIS_RX {0} \
CONFIG.NUM_S_AXIS_TX {0} \
CONFIG.S00_AXIS_TX_TDATA_NUM_BYTES {8} \
CONFIG.S00_AXIS_TX_TUSER_WIDTH {8} \
CONFIG.SYNC_RESET {true} \
CONFIG.S_ADDR_WIDTH {17} \
CONFIG.S_HAS_REGSLICE {4} \
CONFIG.S_MEM_ADDR_WIDTH {16} \
CONFIG.S_MEM_DATA_WIDTH {32} \
CONFIG.S_MEM_ID_WIDTH {1} \
CONFIG.USE_PR {true} \
 ] $u_ocl_region

  # Create interface connections
  connect_bd_intf_net -intf_net Conn1 [get_bd_intf_pins C0_SYS_CLK] [get_bd_intf_pins memory/C0_SYS_CLK]
  connect_bd_intf_net -intf_net Conn2 [get_bd_intf_pins C0_DDR3] [get_bd_intf_pins memory/C0_DDR3]
  connect_bd_intf_net -intf_net Conn3 [get_bd_intf_pins C0_SYS_CLK1] [get_bd_intf_pins memory/C0_SYS_CLK1]
  connect_bd_intf_net -intf_net Conn4 [get_bd_intf_pins C0_DDR4] [get_bd_intf_pins memory/C0_DDR4]
  connect_bd_intf_net -intf_net S00_AXI1_1 [get_bd_intf_pins S00_AXI1] [get_bd_intf_pins interconnect_aximm/S00_AXI]
  connect_bd_intf_net -intf_net [get_bd_intf_nets S00_AXI1_1] [get_bd_intf_pins S00_AXI1] [get_bd_intf_pins apm_sys/SLOT_1_AXI]
  connect_bd_intf_net -intf_net S00_AXI_1 [get_bd_intf_pins S00_AXI] [get_bd_intf_pins interconnect_axilite/S00_AXI]
  connect_bd_intf_net -intf_net S01_AXI_1 [get_bd_intf_pins S01_AXI] [get_bd_intf_pins interconnect_aximm/S01_AXI]
  connect_bd_intf_net -intf_net [get_bd_intf_nets S01_AXI_1] [get_bd_intf_pins S01_AXI] [get_bd_intf_pins apm_sys/SLOT_0_AXI]
  connect_bd_intf_net -intf_net S02_AXI_1 [get_bd_intf_pins S02_AXI] [get_bd_intf_pins interconnect_aximm/S02_AXI]
  connect_bd_intf_net -intf_net [get_bd_intf_nets S02_AXI_1] [get_bd_intf_pins S02_AXI] [get_bd_intf_pins apm_sys/SLOT_2_AXI]
  connect_bd_intf_net -intf_net S_AXI_1 [get_bd_intf_pins S_AXI] [get_bd_intf_pins u_ocl_region/S_AXI]
  connect_bd_intf_net -intf_net interconnect_axilite_M00_AXI [get_bd_intf_pins interconnect_axilite/M00_AXI] [get_bd_intf_pins pr_support_limited/S_AXI]
  connect_bd_intf_net -intf_net interconnect_axilite_M01_AXI [get_bd_intf_pins apm_sys/S_AXI] [get_bd_intf_pins interconnect_axilite/M01_AXI]
  connect_bd_intf_net -intf_net interconnect_axilite_M02_AXI [get_bd_intf_pins apm_sys/S_AXI1] [get_bd_intf_pins interconnect_axilite/M02_AXI]
  connect_bd_intf_net -intf_net interconnect_axilite_M03_AXI [get_bd_intf_pins interconnect_axilite/M03_AXI] [get_bd_intf_pins memory/C0_DDR3_S_AXI_CTRL]
  connect_bd_intf_net -intf_net interconnect_axilite_M04_AXI [get_bd_intf_pins interconnect_axilite/M04_AXI] [get_bd_intf_pins memory/C0_DDR3_S_AXI_CTRL1]
  connect_bd_intf_net -intf_net interconnect_axilite_M05_AXI [get_bd_intf_pins M05_AXI] [get_bd_intf_pins interconnect_axilite/M05_AXI]
  connect_bd_intf_net -intf_net interconnect_axilite_M06_AXI [get_bd_intf_pins M06_AXI] [get_bd_intf_pins interconnect_axilite/M06_AXI]
  connect_bd_intf_net -intf_net interconnect_axilite_M07_AXI [get_bd_intf_pins M07_AXI] [get_bd_intf_pins interconnect_axilite/M07_AXI]
  connect_bd_intf_net -intf_net interconnect_axilite_M08_AXI [get_bd_intf_pins M08_AXI] [get_bd_intf_pins interconnect_axilite/M08_AXI]
  connect_bd_intf_net -intf_net interconnect_axilite_M09_AXI [get_bd_intf_pins M09_AXI] [get_bd_intf_pins interconnect_axilite/M09_AXI]
  connect_bd_intf_net -intf_net interconnect_aximm_M00_AXI [get_bd_intf_pins interconnect_aximm/M00_AXI] [get_bd_intf_pins memory/C0_DDR3_S_AXI]
  connect_bd_intf_net -intf_net interconnect_aximm_M01_AXI [get_bd_intf_pins interconnect_aximm/M01_AXI] [get_bd_intf_pins memory/C0_DDR3_S_AXI1]
  connect_bd_intf_net -intf_net interconnect_aximm_M02_AXI [get_bd_intf_pins apm_sys/S_AXI_FULL] [get_bd_intf_pins interconnect_aximm/M02_AXI]
  connect_bd_intf_net -intf_net u_ocl_region_M00_AXI [get_bd_intf_pins M00_AXI] [get_bd_intf_pins u_ocl_region/M00_AXI]
  connect_bd_intf_net -intf_net u_ocl_region_M01_AXI [get_bd_intf_pins M01_AXI] [get_bd_intf_pins u_ocl_region/M01_AXI]

  # Create port connections
  connect_bd_net -net ACLK_1 [get_bd_pins ACLK] [get_bd_pins apm_sys/ext_clk_0] [get_bd_pins expanded_resets/slowest_sync_clk] [get_bd_pins interconnect_axilite/ACLK] [get_bd_pins interconnect_axilite/M00_ACLK] [get_bd_pins interconnect_axilite/M01_ACLK] [get_bd_pins interconnect_axilite/M02_ACLK] [get_bd_pins interconnect_axilite/M05_ACLK] [get_bd_pins interconnect_axilite/M06_ACLK] [get_bd_pins interconnect_axilite/M07_ACLK] [get_bd_pins interconnect_axilite/M08_ACLK] [get_bd_pins interconnect_axilite/M09_ACLK] [get_bd_pins interconnect_aximm/aclk] [get_bd_pins pr_support_limited/S_AXI_ACLK] [get_bd_pins u_ocl_region/INTERCONNECT_CLK]
  connect_bd_net -net ARESETN_1 [get_bd_pins interconnect_aresetn1] [get_bd_pins apm_sys/ext_rstn_0] [get_bd_pins expanded_resets/interconnect_aresetn1] [get_bd_pins interconnect_axilite/ARESETN] [get_bd_pins interconnect_axilite/M00_ARESETN] [get_bd_pins interconnect_axilite/M01_ARESETN] [get_bd_pins interconnect_axilite/M02_ARESETN] [get_bd_pins interconnect_axilite/M05_ARESETN] [get_bd_pins interconnect_axilite/M06_ARESETN] [get_bd_pins interconnect_axilite/M07_ARESETN] [get_bd_pins interconnect_axilite/M08_ARESETN] [get_bd_pins interconnect_axilite/M09_ARESETN] [get_bd_pins interconnect_aximm/aresetn] [get_bd_pins pr_support_limited/S_AXI_ARESETN]
  connect_bd_net -net INTERCONNECT_RESET_1 [get_bd_pins INTERCONNECT_RESET] [get_bd_pins u_ocl_region/INTERCONNECT_RESET]
  connect_bd_net -net KERNEL_CLK_1 [get_bd_pins KERNEL_CLK] [get_bd_pins u_ocl_region/KERNEL_CLK]
  connect_bd_net -net KERNEL_RESET_1 [get_bd_pins KERNEL_RESET] [get_bd_pins u_ocl_region/KERNEL_RESET]
  connect_bd_net -net M03_ARESETN_1 [get_bd_pins expanded_resets/interconnect_aresetn] [get_bd_pins interconnect_axilite/M03_ARESETN] [get_bd_pins memory/c0_ddr3_aresetn]
  connect_bd_net -net Net [get_bd_pins flash_DQ] [get_bd_pins pr_support_limited/flash_DQ]
  connect_bd_net -net Op1_1 [get_bd_pins Op1] [get_bd_pins expanded_resets/Op1]
  connect_bd_net -net S00_ACLK_1 [get_bd_pins S00_ACLK] [get_bd_pins apm_sys/ext_clk_1] [get_bd_pins interconnect_axilite/S00_ACLK] [get_bd_pins interconnect_aximm/aclk2]
  connect_bd_net -net core_aresetn_1 [get_bd_pins core_aresetn] [get_bd_pins apm_sys/core_aresetn] [get_bd_pins expanded_resets/ext_reset_in] [get_bd_pins interconnect_axilite/S00_ARESETN]
  connect_bd_net -net dcm_locked_1 [get_bd_pins dcm_locked] [get_bd_pins expanded_resets/dcm_locked]
  connect_bd_net -net expanded_resets_Res [get_bd_pins expanded_resets/Res] [get_bd_pins memory/sys_rst] [get_bd_pins memory/sys_rst1]
  connect_bd_net -net expanded_resets_interconnect_aresetn2 [get_bd_pins expanded_resets/interconnect_aresetn2] [get_bd_pins interconnect_axilite/M04_ARESETN] [get_bd_pins memory/c0_ddr3_aresetn1]
  connect_bd_net -net expanded_resets_peripheral_reset [get_bd_pins expanded_resets/peripheral_reset] [get_bd_pins pr_support_limited/flash_rst]
  connect_bd_net -net flash_clk_1 [get_bd_pins flash_clk] [get_bd_pins expanded_resets/slowest_sync_clk3] [get_bd_pins pr_support_limited/flash_clk]
  connect_bd_net -net memory_Res [get_bd_pins Res] [get_bd_pins memory/Res]
  connect_bd_net -net memory_c0_ddr3_ui_clk [get_bd_pins expanded_resets/slowest_sync_clk1] [get_bd_pins interconnect_axilite/M03_ACLK] [get_bd_pins interconnect_aximm/aclk1] [get_bd_pins memory/c0_ddr3_ui_clk]
  connect_bd_net -net memory_c0_ddr3_ui_clk1 [get_bd_pins expanded_resets/slowest_sync_clk2] [get_bd_pins interconnect_axilite/M04_ACLK] [get_bd_pins interconnect_aximm/aclk3] [get_bd_pins memory/c0_ddr3_ui_clk1]
  connect_bd_net -net memory_c0_ddr3_ui_clk_sync_rst [get_bd_pins expanded_resets/ext_reset_in1] [get_bd_pins memory/c0_ddr3_ui_clk_sync_rst]
  connect_bd_net -net memory_c0_ddr3_ui_clk_sync_rst1 [get_bd_pins expanded_resets/aux_reset_in] [get_bd_pins expanded_resets/ext_reset_in2] [get_bd_pins memory/c0_ddr3_ui_clk_sync_rst1]
  connect_bd_net -net pr_support_limited_dout [get_bd_pins dout] [get_bd_pins pr_support_limited/dout]
  connect_bd_net -net pr_support_limited_flash_A [get_bd_pins flash_A] [get_bd_pins pr_support_limited/flash_A]
  connect_bd_net -net pr_support_limited_flash_ADV_N [get_bd_pins flash_ADV_N] [get_bd_pins pr_support_limited/flash_ADV_N]
  connect_bd_net -net pr_support_limited_flash_OE_N [get_bd_pins flash_OE_N] [get_bd_pins pr_support_limited/flash_OE_N]
  connect_bd_net -net pr_support_limited_flash_WE_N [get_bd_pins flash_WE_N] [get_bd_pins pr_support_limited/flash_WE_N]

  # Restore current instance
  current_bd_instance $oldCurInst
}

# Hierarchical cell: base_region
proc create_hier_cell_base_region { parentCell nameHier } {

  variable script_folder

  if { $parentCell eq "" || $nameHier eq "" } {
     catch {common::send_msg_id "BD_TCL-102" "ERROR" create_hier_cell_base_region() - Empty argument(s)!"}
     return
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_msg_id "BD_TCL-100" "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_msg_id "BD_TCL-101" "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj

  # Create cell and set as current instance
  set hier_obj [create_bd_cell -type hier $nameHier]
  current_bd_instance $hier_obj

  # Create interface pins
  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:diff_clock_rtl:1.0 CLK_IN_D
  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:aximm_rtl:1.0 M_AXI
  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:aximm_rtl:1.0 M_AXI1
  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:aximm_rtl:1.0 M_AXI2
  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:aximm_rtl:1.0 M_AXI3
  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:aximm_rtl:1.0 M_AXI_LITE
  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:aximm_rtl:1.0 S_AXI
  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:aximm_rtl:1.0 S_AXI1
  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:aximm_rtl:1.0 S_AXI2
  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:aximm_rtl:1.0 S_AXI3
  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:aximm_rtl:1.0 S_AXI4
  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:aximm_rtl:1.0 S_AXI5
  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:aximm_rtl:1.0 S_AXI6
  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:pcie_7x_mgt_rtl:1.0 pcie_mgt

  # Create pins
  create_bd_pin -dir O -type clk axi_aclk
  create_bd_pin -dir O -type rst axi_aresetn
  create_bd_pin -dir O -type clk clk_out1
  create_bd_pin -dir O -type clk clk_out2
  create_bd_pin -dir O -type clk clk_out3
  create_bd_pin -dir I -from 0 -to 0 -type rst ext_reset_in
  create_bd_pin -dir I -from 0 -to 0 gpio_io_i
  create_bd_pin -dir O -from 0 -to 0 -type rst interconnect_aresetn
  create_bd_pin -dir O -from 0 -to 0 -type rst interconnect_aresetn1
  create_bd_pin -dir O locked
  create_bd_pin -dir I -type rst sys_rst_n
  create_bd_pin -dir O user_lnk_up

  # Create instance: base_clocking
  create_hier_cell_base_clocking $hier_obj base_clocking

  # Create instance: base_tieoffs
  create_hier_cell_base_tieoffs $hier_obj base_tieoffs

  # Create instance: dma_pcie, and set properties
  set dma_pcie [ create_bd_cell -type ip -vlnv xilinx.com:ip:xdma:3.0 dma_pcie ]
  set_property -dict [ list \
CONFIG.axi_data_width {256_bit} \
CONFIG.axilite_master_en {true} \
CONFIG.axilite_master_size {4} \
CONFIG.axisten_freq {250} \
CONFIG.cfg_mgmt_if {false} \
CONFIG.coreclk_freq {500} \
CONFIG.mcap_enablement {PR_over_PCIe} \
CONFIG.mode_selection {Advanced} \
CONFIG.pf0_device_id {8138} \
CONFIG.pf0_subsystem_id {0231} \
CONFIG.pl_link_cap_max_link_speed {8.0_GT/s} \
CONFIG.pl_link_cap_max_link_width {X8} \
CONFIG.plltype {QPLL1} \
CONFIG.xdma_num_usr_irq {16} \
CONFIG.xdma_rnum_chnl {2} \
CONFIG.xdma_wnum_chnl {2} \
 ] $dma_pcie

  # Create instance: featureid
  create_hier_cell_featureid $hier_obj featureid

  # Create instance: pr_isolation_limited
  create_hier_cell_pr_isolation_limited $hier_obj pr_isolation_limited

  # Create interface connections
  connect_bd_intf_net -intf_net Conn1 [get_bd_intf_pins pcie_mgt] [get_bd_intf_pins dma_pcie/pcie_mgt]
  connect_bd_intf_net -intf_net Conn2 [get_bd_intf_pins CLK_IN_D] [get_bd_intf_pins base_clocking/CLK_IN_D]
  connect_bd_intf_net -intf_net S_AXI1_1 [get_bd_intf_pins S_AXI1] [get_bd_intf_pins pr_isolation_limited/S_AXI1]
  connect_bd_intf_net -intf_net S_AXI2_1 [get_bd_intf_pins S_AXI2] [get_bd_intf_pins pr_isolation_limited/S_AXI2]
  connect_bd_intf_net -intf_net S_AXI3_1 [get_bd_intf_pins S_AXI3] [get_bd_intf_pins pr_isolation_limited/S_AXI3]
  connect_bd_intf_net -intf_net S_AXI4_1 [get_bd_intf_pins S_AXI4] [get_bd_intf_pins featureid/S_AXI]
  connect_bd_intf_net -intf_net S_AXI5_1 [get_bd_intf_pins S_AXI5] [get_bd_intf_pins pr_isolation_limited/S_AXI4]
  connect_bd_intf_net -intf_net S_AXI6_1 [get_bd_intf_pins S_AXI6] [get_bd_intf_pins base_clocking/S_AXI]
  connect_bd_intf_net -intf_net S_AXI_1 [get_bd_intf_pins S_AXI] [get_bd_intf_pins pr_isolation_limited/S_AXI]
  connect_bd_intf_net -intf_net dma_pcie_M_AXI [get_bd_intf_pins M_AXI] [get_bd_intf_pins dma_pcie/M_AXI]
  connect_bd_intf_net -intf_net dma_pcie_M_AXI_LITE [get_bd_intf_pins M_AXI_LITE] [get_bd_intf_pins dma_pcie/M_AXI_LITE]
  connect_bd_intf_net -intf_net pr_isolation_limited_M_AXI [get_bd_intf_pins M_AXI1] [get_bd_intf_pins pr_isolation_limited/M_AXI]
  connect_bd_intf_net -intf_net pr_isolation_limited_M_AXI1 [get_bd_intf_pins M_AXI2] [get_bd_intf_pins pr_isolation_limited/M_AXI1]
  connect_bd_intf_net -intf_net pr_isolation_limited_M_AXI2 [get_bd_intf_pins M_AXI3] [get_bd_intf_pins pr_isolation_limited/M_AXI2]

  # Create port connections
  connect_bd_net -net base_clocking_IBUF_DS_ODIV2 [get_bd_pins base_clocking/IBUF_DS_ODIV2] [get_bd_pins dma_pcie/sys_clk]
  connect_bd_net -net base_clocking_IBUF_OUT [get_bd_pins base_clocking/IBUF_OUT] [get_bd_pins dma_pcie/sys_clk_gt]
  connect_bd_net -net base_clocking_clk_out1 [get_bd_pins clk_out1] [get_bd_pins base_clocking/clk_out1] [get_bd_pins pr_isolation_limited/slowest_sync_clk]
  connect_bd_net -net base_clocking_clk_out2 [get_bd_pins clk_out2] [get_bd_pins base_clocking/clk_out2] [get_bd_pins featureid/s_axi_aclk] [get_bd_pins pr_isolation_limited/slowest_sync_clk1]
  connect_bd_net -net base_clocking_clk_out3 [get_bd_pins clk_out3] [get_bd_pins base_clocking/clk_out3]
  connect_bd_net -net base_clocking_locked [get_bd_pins base_clocking/locked] [get_bd_pins pr_isolation_limited/dcm_locked]
  connect_bd_net -net base_clocking_locked1 [get_bd_pins locked] [get_bd_pins base_clocking/locked1] [get_bd_pins pr_isolation_limited/dcm_locked1]
  connect_bd_net -net base_tieoffs_dout [get_bd_pins base_clocking/BUFG_GT_CEMASK] [get_bd_pins base_clocking/BUFG_GT_CLR] [get_bd_pins base_clocking/BUFG_GT_CLRMASK] [get_bd_pins base_tieoffs/dout]
  connect_bd_net -net base_tieoffs_dout1 [get_bd_pins base_clocking/BUFG_GT_DIV] [get_bd_pins base_tieoffs/dout1]
  connect_bd_net -net base_tieoffs_dout2 [get_bd_pins base_clocking/BUFG_GT_CE] [get_bd_pins base_tieoffs/dout2]
  connect_bd_net -net dma_pcie_axi_aclk [get_bd_pins axi_aclk] [get_bd_pins dma_pcie/axi_aclk]
  connect_bd_net -net dma_pcie_axi_aresetn [get_bd_pins axi_aresetn] [get_bd_pins dma_pcie/axi_aresetn]
  connect_bd_net -net dma_pcie_user_lnk_up [get_bd_pins user_lnk_up] [get_bd_pins dma_pcie/user_lnk_up]
  connect_bd_net -net ext_reset_in_1 [get_bd_pins ext_reset_in] [get_bd_pins base_clocking/s_axi_aresetn] [get_bd_pins featureid/s_axi_aresetn] [get_bd_pins pr_isolation_limited/ext_reset_in]
  connect_bd_net -net gpio_io_i_1 [get_bd_pins gpio_io_i] [get_bd_pins pr_isolation_limited/gpio_io_i]
  connect_bd_net -net pr_isolation_limited_interconnect_aresetn [get_bd_pins interconnect_aresetn] [get_bd_pins pr_isolation_limited/interconnect_aresetn]
  connect_bd_net -net pr_isolation_limited_interconnect_aresetn1 [get_bd_pins interconnect_aresetn1] [get_bd_pins pr_isolation_limited/interconnect_aresetn1]
  connect_bd_net -net sys_rst_n_1 [get_bd_pins sys_rst_n] [get_bd_pins base_clocking/ext_reset_in] [get_bd_pins dma_pcie/sys_rst_n]

  # Restore current instance
  current_bd_instance $oldCurInst
}


# Procedure to create entire design; Provide argument to make
# procedure reusable. If parentCell is "", will use root.
proc create_root_design { parentCell } {

  variable script_folder

  if { $parentCell eq "" } {
     set parentCell [get_bd_cells /]
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_msg_id "BD_TCL-100" "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_msg_id "BD_TCL-101" "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj


  # Create interface ports
  set c0_ddr3 [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:ddrx_rtl:1.0 c0_ddr3 ]
  set c0_sys [ create_bd_intf_port -mode Slave -vlnv xilinx.com:interface:diff_clock_rtl:1.0 c0_sys ]
  set_property -dict [ list \
CONFIG.FREQ_HZ {400000000} \
 ] $c0_sys
  set c1_ddr3 [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:ddrx_rtl:1.0 c1_ddr3 ]
  set c1_sys [ create_bd_intf_port -mode Slave -vlnv xilinx.com:interface:diff_clock_rtl:1.0 c1_sys ]
  set_property -dict [ list \
CONFIG.FREQ_HZ {400000000} \
 ] $c1_sys
  set pcie_7x_mgt [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:pcie_7x_mgt_rtl:1.0 pcie_7x_mgt ]
  set ref_clk [ create_bd_intf_port -mode Slave -vlnv xilinx.com:interface:diff_clock_rtl:1.0 ref_clk ]
  set_property -dict [ list \
CONFIG.FREQ_HZ {100000000} \
 ] $ref_clk

  # Create ports
  set c0_ddr3_dm [ create_bd_port -dir O -from 8 -to 0 c0_ddr3_dm ]
  set c1_ddr3_dm [ create_bd_port -dir O -from 8 -to 0 c1_ddr3_dm ]
  set flash_A [ create_bd_port -dir O -from 26 -to 1 flash_A ]
  set flash_ADV_N [ create_bd_port -dir O flash_ADV_N ]
  set flash_DQ [ create_bd_port -dir IO -from 15 -to 4 flash_DQ ]
  set flash_OE_N [ create_bd_port -dir O flash_OE_N ]
  set flash_WE_N [ create_bd_port -dir O flash_WE_N ]
  set init_calib_complete [ create_bd_port -dir O -from 0 -to 0 init_calib_complete ]
  set led_0 [ create_bd_port -dir O led_0 ]
  set perst_n [ create_bd_port -dir I -type rst perst_n ]
  set_property -dict [ list \
CONFIG.POLARITY {ACTIVE_LOW} \
 ] $perst_n

  # Create instance: base_region
  create_hier_cell_base_region [current_bd_instance .] base_region

  # Create instance: expanded_region
  create_hier_cell_expanded_region [current_bd_instance .] expanded_region

  # Create interface connections
  connect_bd_intf_net -intf_net base_region_M_AXI [get_bd_intf_pins base_region/M_AXI] [get_bd_intf_pins expanded_region/S00_AXI1]
  connect_bd_intf_net -intf_net base_region_M_AXI1 [get_bd_intf_pins base_region/M_AXI1] [get_bd_intf_pins expanded_region/S_AXI]
  connect_bd_intf_net -intf_net base_region_M_AXI2 [get_bd_intf_pins base_region/M_AXI2] [get_bd_intf_pins expanded_region/S01_AXI]
  connect_bd_intf_net -intf_net base_region_M_AXI3 [get_bd_intf_pins base_region/M_AXI3] [get_bd_intf_pins expanded_region/S02_AXI]
  connect_bd_intf_net -intf_net base_region_M_AXI_LITE [get_bd_intf_pins base_region/M_AXI_LITE] [get_bd_intf_pins expanded_region/S00_AXI]
  connect_bd_intf_net -intf_net base_region_pcie_mgt [get_bd_intf_ports pcie_7x_mgt] [get_bd_intf_pins base_region/pcie_mgt]
  connect_bd_intf_net -intf_net c0_sys_1 [get_bd_intf_ports c0_sys] [get_bd_intf_pins expanded_region/C0_SYS_CLK1]
  connect_bd_intf_net -intf_net c1_sys_1 [get_bd_intf_ports c1_sys] [get_bd_intf_pins expanded_region/C0_SYS_CLK]
  connect_bd_intf_net -intf_net expanded_region_C0_DDR3 [get_bd_intf_ports c1_ddr3] [get_bd_intf_pins expanded_region/C0_DDR3]
  connect_bd_intf_net -intf_net expanded_region_C0_DDR4 [get_bd_intf_ports c0_ddr3] [get_bd_intf_pins expanded_region/C0_DDR4]
  connect_bd_intf_net -intf_net expanded_region_M00_AXI [get_bd_intf_pins base_region/S_AXI] [get_bd_intf_pins expanded_region/M00_AXI]
  connect_bd_intf_net -intf_net expanded_region_M01_AXI [get_bd_intf_pins base_region/S_AXI1] [get_bd_intf_pins expanded_region/M01_AXI]
  connect_bd_intf_net -intf_net expanded_region_M05_AXI [get_bd_intf_pins base_region/S_AXI2] [get_bd_intf_pins expanded_region/M05_AXI]
  connect_bd_intf_net -intf_net expanded_region_M06_AXI [get_bd_intf_pins base_region/S_AXI3] [get_bd_intf_pins expanded_region/M06_AXI]
  connect_bd_intf_net -intf_net expanded_region_M07_AXI [get_bd_intf_pins base_region/S_AXI4] [get_bd_intf_pins expanded_region/M07_AXI]
  connect_bd_intf_net -intf_net expanded_region_M08_AXI [get_bd_intf_pins base_region/S_AXI5] [get_bd_intf_pins expanded_region/M08_AXI]
  connect_bd_intf_net -intf_net expanded_region_M09_AXI [get_bd_intf_pins base_region/S_AXI6] [get_bd_intf_pins expanded_region/M09_AXI]
  connect_bd_intf_net -intf_net ref_clk_1 [get_bd_intf_ports ref_clk] [get_bd_intf_pins base_region/CLK_IN_D]

  # Create port connections
  connect_bd_net -net Net [get_bd_ports flash_DQ] [get_bd_pins expanded_region/flash_DQ]
  connect_bd_net -net base_region_axi_aclk [get_bd_pins base_region/axi_aclk] [get_bd_pins expanded_region/S00_ACLK]
  connect_bd_net -net base_region_axi_aresetn [get_bd_pins base_region/axi_aresetn] [get_bd_pins expanded_region/core_aresetn]
  connect_bd_net -net base_region_clk_out1 [get_bd_pins base_region/clk_out1] [get_bd_pins expanded_region/KERNEL_CLK]
  connect_bd_net -net base_region_clk_out2 [get_bd_pins base_region/clk_out2] [get_bd_pins expanded_region/ACLK]
  connect_bd_net -net base_region_clk_out3 [get_bd_pins base_region/clk_out3] [get_bd_pins expanded_region/flash_clk]
  connect_bd_net -net base_region_interconnect_aresetn [get_bd_pins base_region/interconnect_aresetn] [get_bd_pins expanded_region/KERNEL_RESET]
  connect_bd_net -net base_region_interconnect_aresetn1 [get_bd_pins base_region/interconnect_aresetn1] [get_bd_pins expanded_region/INTERCONNECT_RESET]
  connect_bd_net -net base_region_locked [get_bd_pins base_region/locked] [get_bd_pins expanded_region/dcm_locked]
  connect_bd_net -net base_region_user_lnk_up [get_bd_ports led_0] [get_bd_pins base_region/user_lnk_up]
  connect_bd_net -net expanded_region_Res [get_bd_ports init_calib_complete] [get_bd_pins base_region/gpio_io_i] [get_bd_pins expanded_region/Res]
  connect_bd_net -net expanded_region_dout [get_bd_ports c0_ddr3_dm] [get_bd_ports c1_ddr3_dm] [get_bd_pins expanded_region/dout]
  connect_bd_net -net expanded_region_flash_A [get_bd_ports flash_A] [get_bd_pins expanded_region/flash_A]
  connect_bd_net -net expanded_region_flash_ADV_N [get_bd_ports flash_ADV_N] [get_bd_pins expanded_region/flash_ADV_N]
  connect_bd_net -net expanded_region_flash_OE_N [get_bd_ports flash_OE_N] [get_bd_pins expanded_region/flash_OE_N]
  connect_bd_net -net expanded_region_flash_WE_N [get_bd_ports flash_WE_N] [get_bd_pins expanded_region/flash_WE_N]
  connect_bd_net -net expanded_region_interconnect_aresetn1 [get_bd_pins base_region/ext_reset_in] [get_bd_pins expanded_region/interconnect_aresetn1]
  connect_bd_net -net perst_n_1 [get_bd_ports perst_n] [get_bd_pins base_region/sys_rst_n] [get_bd_pins expanded_region/Op1]

  # Create address segments
  create_bd_addr_seg -range 0x00010000 -offset 0x00050000 [get_bd_addr_spaces base_region/dma_pcie/M_AXI_LITE] [get_bd_addr_segs base_region/base_clocking/clkwiz_kernel/s_axi_lite/Reg] seg_dma_clkwiz_kernel
  create_bd_addr_seg -range 0x00001000 -offset 0x00032000 [get_bd_addr_spaces base_region/dma_pcie/M_AXI_LITE] [get_bd_addr_segs base_region/pr_isolation_limited/ddr_calib_status/S_AXI/Reg] seg_dma_ddr_calib_status
  create_bd_addr_seg -range 0x000200000000 -offset 0x00000000 [get_bd_addr_spaces base_region/dma_pcie/M_AXI] [get_bd_addr_segs expanded_region/memory/ddrmem/C0_DDR3_MEMORY_MAP/C0_DDR3_ADDRESS_BLOCK] seg_dma_ddrmem1_addr
  create_bd_addr_seg -range 0x00010000 -offset 0x00060000 [get_bd_addr_spaces base_region/dma_pcie/M_AXI_LITE] [get_bd_addr_segs expanded_region/memory/ddrmem/C0_DDR3_MEMORY_MAP_CTRL/C0_REG] seg_dma_ddrmem1_ctrl
  create_bd_addr_seg -range 0x000200000000 -offset 0x000200000000 [get_bd_addr_spaces base_region/dma_pcie/M_AXI] [get_bd_addr_segs expanded_region/memory/ddrmem_2/C0_DDR3_MEMORY_MAP/C0_DDR3_ADDRESS_BLOCK] seg_dma_ddrmem2_addr
  create_bd_addr_seg -range 0x00010000 -offset 0x00070000 [get_bd_addr_spaces base_region/dma_pcie/M_AXI_LITE] [get_bd_addr_segs expanded_region/memory/ddrmem_2/C0_DDR3_MEMORY_MAP_CTRL/C0_REG] seg_dma_ddrmem2_ctrl
  create_bd_addr_seg -range 0x00001000 -offset 0x00031000 [get_bd_addr_spaces base_region/dma_pcie/M_AXI_LITE] [get_bd_addr_segs base_region/featureid/gpio_featureid/S_AXI/Reg] seg_dma_featureid
  create_bd_addr_seg -range 0x00010000 -offset 0x00040000 [get_bd_addr_spaces base_region/dma_pcie/M_AXI_LITE] [get_bd_addr_segs expanded_region/pr_support_limited/flash_programmer/S_AXI/reg0] seg_dma_flashprog
  create_bd_addr_seg -range 0x00001000 -offset 0x00030000 [get_bd_addr_spaces base_region/dma_pcie/M_AXI_LITE] [get_bd_addr_segs base_region/pr_isolation_limited/gate_pr/S_AXI/Reg] seg_dma_gate_pr
  create_bd_addr_seg -range 0x00010000 -offset 0x00000000 [get_bd_addr_spaces base_region/dma_pcie/M_AXI_LITE] [get_bd_addr_segs expanded_region/u_ocl_region/S_AXI/Reg0] seg_dma_oclregion1
  create_bd_addr_seg -range 0x00010000 -offset 0x00010000 [get_bd_addr_spaces base_region/dma_pcie/M_AXI_LITE] [get_bd_addr_segs expanded_region/u_ocl_region/S_AXI/Reg1] seg_dma_oclregion2
  create_bd_addr_seg -range 0x00010000 -offset 0x00100000 [get_bd_addr_spaces base_region/dma_pcie/M_AXI_LITE] [get_bd_addr_segs expanded_region/apm_sys/xilmonitor_apm/S_AXI/Reg] seg_dma_xilmonitor_apm
  create_bd_addr_seg -range 0x00001000 -offset 0x00110000 [get_bd_addr_spaces base_region/dma_pcie/M_AXI_LITE] [get_bd_addr_segs expanded_region/apm_sys/xilmonitor_fifo0/S_AXI/Mem0] seg_dma_xilmonitor_fifo0
  create_bd_addr_seg -range 0x000100000000 -offset 0x002000000000 [get_bd_addr_spaces base_region/dma_pcie/M_AXI] [get_bd_addr_segs expanded_region/apm_sys/xilmonitor_fifo0/S_AXI_FULL/Mem1] seg_dma_xilmonitor_fifo0_mem1
  create_bd_addr_seg -range 0x000200000000 -offset 0x00000000 [get_bd_addr_spaces expanded_region/u_ocl_region/M00_AXI] [get_bd_addr_segs expanded_region/memory/ddrmem/C0_DDR3_MEMORY_MAP/C0_DDR3_ADDRESS_BLOCK] seg_oclregion1_ddrmem1_addr
  create_bd_addr_seg -range 0x000200000000 -offset 0x000200000000 [get_bd_addr_spaces expanded_region/u_ocl_region/M00_AXI] [get_bd_addr_segs expanded_region/memory/ddrmem_2/C0_DDR3_MEMORY_MAP/C0_DDR3_ADDRESS_BLOCK] seg_oclregion1_ddrmem2_addr
  create_bd_addr_seg -range 0x000200000000 -offset 0x00000000 [get_bd_addr_spaces expanded_region/u_ocl_region/M01_AXI] [get_bd_addr_segs expanded_region/memory/ddrmem/C0_DDR3_MEMORY_MAP/C0_DDR3_ADDRESS_BLOCK] seg_oclregion2_ddrmem1_addr
  create_bd_addr_seg -range 0x000200000000 -offset 0x000200000000 [get_bd_addr_spaces expanded_region/u_ocl_region/M01_AXI] [get_bd_addr_segs expanded_region/memory/ddrmem_2/C0_DDR3_MEMORY_MAP/C0_DDR3_ADDRESS_BLOCK] seg_oclregion2_ddrmem2_addr

  # Exclude Address Segments
  create_bd_addr_seg -range 0x000100000000 -offset 0x002000000000 [get_bd_addr_spaces expanded_region/u_ocl_region/M00_AXI] [get_bd_addr_segs expanded_region/apm_sys/xilmonitor_fifo0/S_AXI_FULL/Mem1] SEG_xilmonitor_fifo0_Mem1
  exclude_bd_addr_seg [get_bd_addr_segs expanded_region/u_ocl_region/M00_AXI/SEG_xilmonitor_fifo0_Mem1]

  create_bd_addr_seg -range 0x000100000000 -offset 0x002000000000 [get_bd_addr_spaces expanded_region/u_ocl_region/M01_AXI] [get_bd_addr_segs expanded_region/apm_sys/xilmonitor_fifo0/S_AXI_FULL/Mem1] SEG_xilmonitor_fifo0_Mem1
  exclude_bd_addr_seg [get_bd_addr_segs expanded_region/u_ocl_region/M01_AXI/SEG_xilmonitor_fifo0_Mem1]


  # Perform GUI Layout
  regenerate_bd_layout -layout_string {
   guistr: "# # String gsaved with Nlview 6.6.5b  2016-09-06 bk=1.3687 VDI=39 GEI=35 GUI=JA:1.6
#  -string -flagsOSRD
preplace port ref_clk -pg 1 -y 140 -defaultsOSRD
preplace port flash_OE_N -pg 1 -y 330 -defaultsOSRD
preplace port flash_ADV_N -pg 1 -y 290 -defaultsOSRD
preplace port perst_n -pg 1 -y 40 -defaultsOSRD
preplace port led_0 -pg 1 -y 530 -defaultsOSRD
preplace port c1_ddr3 -pg 1 -y 70 -defaultsOSRD
preplace port c0_sys -pg 1 -y 0 -defaultsOSRD
preplace port c0_ddr3 -pg 1 -y 90 -defaultsOSRD
preplace port flash_WE_N -pg 1 -y 350 -defaultsOSRD
preplace port c1_sys -pg 1 -y 20 -defaultsOSRD
preplace port pcie_7x_mgt -pg 1 -y 10 -defaultsOSRD
preplace portBus flash_DQ -pg 1 -y 310 -defaultsOSRD
preplace portBus c0_ddr3_dm -pg 1 -y 230 -defaultsOSRD
preplace portBus flash_A -pg 1 -y 270 -defaultsOSRD
preplace portBus init_calib_complete -pg 1 -y 550 -defaultsOSRD
preplace portBus c1_ddr3_dm -pg 1 -y 250 -defaultsOSRD
preplace inst base_region -pg 1 -lvl 1 -y 240 -defaultsOSRD
preplace inst expanded_region -pg 1 -lvl 2 -y 230 -defaultsOSRD
preplace netloc base_region_interconnect_aresetn 1 1 1 N
preplace netloc base_region_clk_out3 1 1 1 N
preplace netloc base_region_locked 1 1 1 N
preplace netloc expanded_region_M09_AXI 1 0 3 50 480 NJ 480 940
preplace netloc base_region_axi_aclk 1 1 1 N
preplace netloc c0_sys_1 1 0 2 NJ 0 440J
preplace netloc ref_clk_1 1 0 1 NJ
preplace netloc base_region_M_AXI1 1 1 1 N
preplace netloc base_region_M_AXI 1 1 1 N
preplace netloc expanded_region_Res 1 0 3 60 490 NJ 490 980
preplace netloc base_region_M_AXI2 1 1 1 N
preplace netloc base_region_M_AXI_LITE 1 1 1 N
preplace netloc expanded_region_flash_A 1 2 1 NJ
preplace netloc expanded_region_M06_AXI 1 0 3 80 440 NJ 440 920
preplace netloc base_region_M_AXI3 1 1 1 N
preplace netloc expanded_region_M00_AXI 1 0 3 20 450 NJ 450 970
preplace netloc base_region_user_lnk_up 1 1 2 440J 530 NJ
preplace netloc expanded_region_flash_OE_N 1 2 1 NJ
preplace netloc expanded_region_M05_AXI 1 0 3 80 10 NJ 10 920
preplace netloc expanded_region_interconnect_aresetn1 1 0 3 70 500 NJ 500 930
preplace netloc expanded_region_dout 1 2 1 980
preplace netloc c1_sys_1 1 0 2 NJ 20 470J
preplace netloc expanded_region_M01_AXI 1 0 3 30 -10 NJ -10 940
preplace netloc perst_n_1 1 0 2 10 40 450J
preplace netloc base_region_pcie_mgt 1 1 2 460J 0 970J
preplace netloc base_region_interconnect_aresetn1 1 1 1 N
preplace netloc expanded_region_flash_WE_N 1 2 1 NJ
preplace netloc expanded_region_C0_DDR3 1 2 1 NJ
preplace netloc expanded_region_M07_AXI 1 0 3 30 460 NJ 460 960
preplace netloc base_region_axi_aresetn 1 1 1 N
preplace netloc Net 1 2 1 NJ
preplace netloc expanded_region_flash_ADV_N 1 2 1 NJ
preplace netloc expanded_region_C0_DDR4 1 2 1 NJ
preplace netloc expanded_region_M08_AXI 1 0 3 40 470 NJ 470 950
preplace netloc base_region_clk_out1 1 1 1 N
preplace netloc base_region_clk_out2 1 1 1 N
levelinfo -pg 1 -10 270 710 1020 -top -20 -bot 570
",
}

  # Restore current instance
  current_bd_instance $oldCurInst

  save_bd_design
}
# End of create_root_design()


##################################################################
# MAIN FLOW
##################################################################

create_root_design ""


