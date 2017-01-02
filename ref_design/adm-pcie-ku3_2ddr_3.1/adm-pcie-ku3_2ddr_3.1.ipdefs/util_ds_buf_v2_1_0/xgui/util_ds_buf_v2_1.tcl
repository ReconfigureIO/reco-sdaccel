#Definitional proc to organize widgets for parameters.
package require xilinx::board 1.0
namespace import ::xilinx::board::*
proc init_gui { IPINST } {
	##############################################################################
  add_board_tab $IPINST -display_name { DIFF_CLK_IN_BOARD_INTERFACE "DIFF_CLK_IN for IBUFDS and IBUFDSGTE only" }
	##############################################################################
	set Page0 [ ipgui::add_page $IPINST  -name "Page 0" -layout vertical]
	set Component_Name [ ipgui::add_param  $IPINST  -parent  $Page0  -name Component_Name ]
	set C_SIZE [ipgui::add_param $IPINST -parent $Page0 -name C_SIZE ]
	set C_BUF_TYPE [ipgui::add_param $IPINST -parent $Page0 -name C_BUF_TYPE -widget radioGroup]
}

proc init_params {IPINST PARAM_VALUE.DIFF_CLK_IN_BOARD_INTERFACE} {
  set_property preset_proc "DIFF_CLK_IN_BOARD_INTERFACE_PRESET" ${PARAM_VALUE.DIFF_CLK_IN_BOARD_INTERFACE}
  ipgui::update_params $IPINST -params_list {PARAM_VALUE.DIFF_CLK_IN_BOARD_INTERFACE}
}

proc DIFF_CLK_IN_BOARD_INTERFACE_PRESET {IPINST PRESET_VALUE} {
  if { $PRESET_VALUE == "Custom" } {
    return ""
  }
  set board [::ipxit::get_project_property BOARD]
  set vlnv [get_property ipdef $IPINST] 
  set preset_params [::xilinx::board::board_ip_presets $vlnv $PRESET_VALUE $board]
  if { $preset_params != "" } {
    return $preset_params
  } else {
    return ""
  }
}

proc update_PARAM_VALUE.C_SIZE { PARAM_VALUE.C_SIZE PARAM_VALUE.DIFF_CLK_IN_BOARD_INTERFACE} {
	# Procedure called to update C_SIZE when any of the dependent parameters in the arguments change
  set boardIfName [get_property value ${PARAM_VALUE.DIFF_CLK_IN_BOARD_INTERFACE}]
  if { $boardIfName ne "Custom"} {
    set_property enabled false ${PARAM_VALUE.C_SIZE}
  } else {
    set_property enabled true ${PARAM_VALUE.C_SIZE}
  }
}

proc validate_PARAM_VALUE.C_SIZE { PARAM_VALUE.C_SIZE } {
	# Procedure called to validate C_SIZE
	return true
}

proc update_PARAM_VALUE.C_BUF_TYPE { PARAM_VALUE.C_BUF_TYPE PROJECT_PARAM.ARCHITECTURE PARAM_VALUE.DIFF_CLK_IN_BOARD_INTERFACE} {
  # Procedure called to update C_BUF_TYPE when any of the dependent parameters in the arguments change
  if {${PROJECT_PARAM.ARCHITECTURE} == "kintexu" || \
      ${PROJECT_PARAM.ARCHITECTURE} == "virtexu" || \
      ${PROJECT_PARAM.ARCHITECTURE} == "kintexuplus" || \
      ${PROJECT_PARAM.ARCHITECTURE} == "virtexuplus" || \
      ${PROJECT_PARAM.ARCHITECTURE} == "zynquplus" } {
      set_property range "IBUFDS,OBUFDS,IOBUFDS,IBUFDSGTE,BUFG,BUFGCE,BUFG_GT" ${PARAM_VALUE.C_BUF_TYPE}
  }
  set boardIfName [get_property value ${PARAM_VALUE.DIFF_CLK_IN_BOARD_INTERFACE}]
  if { $boardIfName ne "Custom"} {
  set_property enabled false ${PARAM_VALUE.C_BUF_TYPE}
  } else {
    set_property enabled true ${PARAM_VALUE.C_BUF_TYPE}
  }

}


proc update_MODELPARAM_VALUE.C_BUF_TYPE { MODELPARAM_VALUE.C_BUF_TYPE PARAM_VALUE.C_BUF_TYPE } {
  set devicefamily [get_project_property ARCHITECTURE]
  set buftype [get_property value ${PARAM_VALUE.C_BUF_TYPE}]

  if { [string match -nocase IBUFDSGTE ${buftype}] } {
     if { [string match -nocase *kintexuplus* ${devicefamily}] ||
          [string match -nocase *virtexuplus* ${devicefamily}] ||
          [string match -nocase *zynquplus* ${devicefamily}] } {
       set buftype "ibufdsgte4"
     } elseif { [string match -nocase *kintexu* ${devicefamily}] ||
          [string match -nocase *virtexu* ${devicefamily}] } {
       set buftype "ibufdsgte3"
     } else {
       set buftype "ibufdsgte2"
     }
  }

  # Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
  set_property value ${buftype} ${MODELPARAM_VALUE.C_BUF_TYPE}
}

proc update_MODELPARAM_VALUE.C_SIZE { MODELPARAM_VALUE.C_SIZE PARAM_VALUE.C_SIZE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_SIZE}] ${MODELPARAM_VALUE.C_SIZE}
}


#proc update_PARAM_VALUE.DIFF_CLK_IN_BOARD_INTERFACE {MODELPARAM_VALUE.C_BUF_TYPE PARAM_VALUE.C_BUF_TYPE IPINST PARAM_VALUE.DIFF_CLK_IN_BOARD_INTERFACE PARAM_VALUE.USE_BOARD_FLOW PROJECT_PARAM.BOARD} {
proc update_PARAM_VALUE.DIFF_CLK_IN_BOARD_INTERFACE {IPINST PARAM_VALUE.DIFF_CLK_IN_BOARD_INTERFACE} {
#set buftype [get_property value ${PARAM_VALUE.C_BUF_TYPE}]
#if {$buftype == "IBUFDS" || "IBUFDSGTE"} {
    set param_range [get_board_interface_param_range $IPINST -name "DIFF_CLK_IN_BOARD_INTERFACE"]
    set_property range $param_range ${PARAM_VALUE.DIFF_CLK_IN_BOARD_INTERFACE}
#} else {
#    set_property range "custom" ${PARAM_VALUE.DIFF_CLK_IN_BOARD_INTERFACE}
#}
}

#proc DIFF_CLK_IN_BOARD_INTERFACE_updated {IPINST} {
#    if { [get_project_property BOARD] != "" && [get_param_value DIFF_CLK_IN_BOARD_INTERFACE] != "Custom" } {
#        set_property value [get_param_value DIFF_CLK_IN_BOARD_INTERFACE] [ipgui::get_paramspec DIFF_CLK_IN_BOARD_INTERFACE -of $IPINST] 
#    }
#}



