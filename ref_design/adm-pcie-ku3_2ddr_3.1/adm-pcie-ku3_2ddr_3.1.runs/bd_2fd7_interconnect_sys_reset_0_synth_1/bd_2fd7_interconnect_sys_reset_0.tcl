# 
# Synthesis run script generated by Vivado
# 

set_msg_config -id {HDL 9-1061} -limit 100000
set_msg_config -id {HDL 9-1654} -limit 100000
set_msg_config  -ruleid {3}  -id {[BD 41-1306]}  -suppress 
set_msg_config  -ruleid {4}  -id {[BD 41-1271]}  -suppress 
set_msg_config -msgmgr_mode ooc_run
create_project -in_memory -part xcku060-ffva1156-2-e

set_param project.singleFileAddWarning.threshold 0
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_msg_config -source 4 -id {IP_Flow 19-2162} -severity warning -new_severity info
set_property webtalk.parent_dir /home/joshbohde/code/nerabus/refdesign_test/adm-pcie-ku3_2ddr_3.1/adm-pcie-ku3_2ddr_3.1.cache/wt [current_project]
set_property parent.project_path /home/joshbohde/code/nerabus/refdesign_test/adm-pcie-ku3_2ddr_3.1/adm-pcie-ku3_2ddr_3.1.xpr [current_project]
set_property XPM_LIBRARIES {XPM_CDC XPM_FIFO XPM_MEMORY} [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language Verilog [current_project]
set_property board_part alpha-data.com:adm-pcie3-ku3:part0:1.0 [current_project]
set_property ip_repo_paths {
  /home/joshbohde/code/nerabus/refdesign_test/adm-pcie-ku3_2ddr_3.1/adm-pcie-ku3_2ddr_3.1.ipdefs/util_ds_buf_v2_1_0
  /home/joshbohde/code/nerabus/refdesign_test/adm-pcie-ku3_2ddr_3.1/adm-pcie-ku3_2ddr_3.1.ipdefs/AXI_to_BPI_v1_0__kintexu_0
} [current_project]
set_property ip_output_repo /home/joshbohde/code/nerabus/refdesign_test/adm-pcie-ku3_2ddr_3.1/adm-pcie-ku3_2ddr_3.1.cache/ip [current_project]
set_property ip_cache_permissions {read write} [current_project]
read_ip -quiet /home/joshbohde/code/nerabus/refdesign_test/adm-pcie-ku3_2ddr_3.1/adm-pcie-ku3_2ddr_3.1.srcs/sources_1/bd/xcl_design/ip/xcl_design_u_ocl_region_0/bd_0/ip/ip_8/bd_2fd7_interconnect_sys_reset_0.xci
set_property is_locked true [get_files /home/joshbohde/code/nerabus/refdesign_test/adm-pcie-ku3_2ddr_3.1/adm-pcie-ku3_2ddr_3.1.srcs/sources_1/bd/xcl_design/ip/xcl_design_u_ocl_region_0/bd_0/ip/ip_8/bd_2fd7_interconnect_sys_reset_0.xci]

foreach dcp [get_files -quiet -all *.dcp] {
  set_property used_in_implementation false $dcp
}
read_xdc dont_touch.xdc
set_property used_in_implementation false [get_files dont_touch.xdc]

set cached_ip [config_ip_cache -export -no_bom -use_project_ipc -dir /home/joshbohde/code/nerabus/refdesign_test/adm-pcie-ku3_2ddr_3.1/adm-pcie-ku3_2ddr_3.1.runs/bd_2fd7_interconnect_sys_reset_0_synth_1 -new_name bd_2fd7_interconnect_sys_reset_0 -ip [get_ips bd_2fd7_interconnect_sys_reset_0]]

if { $cached_ip eq {} } {

synth_design -top bd_2fd7_interconnect_sys_reset_0 -part xcku060-ffva1156-2-e -mode out_of_context

#---------------------------------------------------------
# Generate Checkpoint/Stub/Simulation Files For IP Cache
#---------------------------------------------------------
catch {
 write_checkpoint -force -noxdef -rename_prefix bd_2fd7_interconnect_sys_reset_0_ bd_2fd7_interconnect_sys_reset_0.dcp

 set ipCachedFiles {}
 write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ bd_2fd7_interconnect_sys_reset_0_stub.v
 lappend ipCachedFiles bd_2fd7_interconnect_sys_reset_0_stub.v

 write_vhdl -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ bd_2fd7_interconnect_sys_reset_0_stub.vhdl
 lappend ipCachedFiles bd_2fd7_interconnect_sys_reset_0_stub.vhdl

 write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ bd_2fd7_interconnect_sys_reset_0_sim_netlist.v
 lappend ipCachedFiles bd_2fd7_interconnect_sys_reset_0_sim_netlist.v

 write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ bd_2fd7_interconnect_sys_reset_0_sim_netlist.vhdl
 lappend ipCachedFiles bd_2fd7_interconnect_sys_reset_0_sim_netlist.vhdl

 config_ip_cache -add -dcp bd_2fd7_interconnect_sys_reset_0.dcp -move_files $ipCachedFiles -use_project_ipc -ip [get_ips bd_2fd7_interconnect_sys_reset_0]
}

rename_ref -prefix_all bd_2fd7_interconnect_sys_reset_0_

write_checkpoint -force -noxdef bd_2fd7_interconnect_sys_reset_0.dcp

catch { report_utilization -file bd_2fd7_interconnect_sys_reset_0_utilization_synth.rpt -pb bd_2fd7_interconnect_sys_reset_0_utilization_synth.pb }

if { [catch {
  file copy -force /home/joshbohde/code/nerabus/refdesign_test/adm-pcie-ku3_2ddr_3.1/adm-pcie-ku3_2ddr_3.1.runs/bd_2fd7_interconnect_sys_reset_0_synth_1/bd_2fd7_interconnect_sys_reset_0.dcp /home/joshbohde/code/nerabus/refdesign_test/adm-pcie-ku3_2ddr_3.1/adm-pcie-ku3_2ddr_3.1.srcs/sources_1/bd/xcl_design/ip/xcl_design_u_ocl_region_0/bd_0/ip/ip_8/bd_2fd7_interconnect_sys_reset_0.dcp
} _RESULT ] } { 
  send_msg_id runtcl-3 error "ERROR: Unable to successfully create or copy the sub-design checkpoint file."
  error "ERROR: Unable to successfully create or copy the sub-design checkpoint file."
}

if { [catch {
  write_verilog -force -mode synth_stub /home/joshbohde/code/nerabus/refdesign_test/adm-pcie-ku3_2ddr_3.1/adm-pcie-ku3_2ddr_3.1.srcs/sources_1/bd/xcl_design/ip/xcl_design_u_ocl_region_0/bd_0/ip/ip_8/bd_2fd7_interconnect_sys_reset_0_stub.v
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create a Verilog synthesis stub for the sub-design. This may lead to errors in top level synthesis of the design. Error reported: $_RESULT"
}

if { [catch {
  write_vhdl -force -mode synth_stub /home/joshbohde/code/nerabus/refdesign_test/adm-pcie-ku3_2ddr_3.1/adm-pcie-ku3_2ddr_3.1.srcs/sources_1/bd/xcl_design/ip/xcl_design_u_ocl_region_0/bd_0/ip/ip_8/bd_2fd7_interconnect_sys_reset_0_stub.vhdl
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create a VHDL synthesis stub for the sub-design. This may lead to errors in top level synthesis of the design. Error reported: $_RESULT"
}

if { [catch {
  write_verilog -force -mode funcsim /home/joshbohde/code/nerabus/refdesign_test/adm-pcie-ku3_2ddr_3.1/adm-pcie-ku3_2ddr_3.1.srcs/sources_1/bd/xcl_design/ip/xcl_design_u_ocl_region_0/bd_0/ip/ip_8/bd_2fd7_interconnect_sys_reset_0_sim_netlist.v
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create the Verilog functional simulation sub-design file. Post-Synthesis Functional Simulation with this file may not be possible or may give incorrect results. Error reported: $_RESULT"
}

if { [catch {
  write_vhdl -force -mode funcsim /home/joshbohde/code/nerabus/refdesign_test/adm-pcie-ku3_2ddr_3.1/adm-pcie-ku3_2ddr_3.1.srcs/sources_1/bd/xcl_design/ip/xcl_design_u_ocl_region_0/bd_0/ip/ip_8/bd_2fd7_interconnect_sys_reset_0_sim_netlist.vhdl
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create the VHDL functional simulation sub-design file. Post-Synthesis Functional Simulation with this file may not be possible or may give incorrect results. Error reported: $_RESULT"
}


} else {


if { [catch {
  file copy -force /home/joshbohde/code/nerabus/refdesign_test/adm-pcie-ku3_2ddr_3.1/adm-pcie-ku3_2ddr_3.1.runs/bd_2fd7_interconnect_sys_reset_0_synth_1/bd_2fd7_interconnect_sys_reset_0.dcp /home/joshbohde/code/nerabus/refdesign_test/adm-pcie-ku3_2ddr_3.1/adm-pcie-ku3_2ddr_3.1.srcs/sources_1/bd/xcl_design/ip/xcl_design_u_ocl_region_0/bd_0/ip/ip_8/bd_2fd7_interconnect_sys_reset_0.dcp
} _RESULT ] } { 
  send_msg_id runtcl-3 error "ERROR: Unable to successfully create or copy the sub-design checkpoint file."
  error "ERROR: Unable to successfully create or copy the sub-design checkpoint file."
}

if { [catch {
  file rename -force /home/joshbohde/code/nerabus/refdesign_test/adm-pcie-ku3_2ddr_3.1/adm-pcie-ku3_2ddr_3.1.runs/bd_2fd7_interconnect_sys_reset_0_synth_1/bd_2fd7_interconnect_sys_reset_0_stub.v /home/joshbohde/code/nerabus/refdesign_test/adm-pcie-ku3_2ddr_3.1/adm-pcie-ku3_2ddr_3.1.srcs/sources_1/bd/xcl_design/ip/xcl_design_u_ocl_region_0/bd_0/ip/ip_8/bd_2fd7_interconnect_sys_reset_0_stub.v
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create a Verilog synthesis stub for the sub-design. This may lead to errors in top level synthesis of the design. Error reported: $_RESULT"
}

if { [catch {
  file rename -force /home/joshbohde/code/nerabus/refdesign_test/adm-pcie-ku3_2ddr_3.1/adm-pcie-ku3_2ddr_3.1.runs/bd_2fd7_interconnect_sys_reset_0_synth_1/bd_2fd7_interconnect_sys_reset_0_stub.vhdl /home/joshbohde/code/nerabus/refdesign_test/adm-pcie-ku3_2ddr_3.1/adm-pcie-ku3_2ddr_3.1.srcs/sources_1/bd/xcl_design/ip/xcl_design_u_ocl_region_0/bd_0/ip/ip_8/bd_2fd7_interconnect_sys_reset_0_stub.vhdl
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create a VHDL synthesis stub for the sub-design. This may lead to errors in top level synthesis of the design. Error reported: $_RESULT"
}

if { [catch {
  file rename -force /home/joshbohde/code/nerabus/refdesign_test/adm-pcie-ku3_2ddr_3.1/adm-pcie-ku3_2ddr_3.1.runs/bd_2fd7_interconnect_sys_reset_0_synth_1/bd_2fd7_interconnect_sys_reset_0_sim_netlist.v /home/joshbohde/code/nerabus/refdesign_test/adm-pcie-ku3_2ddr_3.1/adm-pcie-ku3_2ddr_3.1.srcs/sources_1/bd/xcl_design/ip/xcl_design_u_ocl_region_0/bd_0/ip/ip_8/bd_2fd7_interconnect_sys_reset_0_sim_netlist.v
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create the Verilog functional simulation sub-design file. Post-Synthesis Functional Simulation with this file may not be possible or may give incorrect results. Error reported: $_RESULT"
}

if { [catch {
  file rename -force /home/joshbohde/code/nerabus/refdesign_test/adm-pcie-ku3_2ddr_3.1/adm-pcie-ku3_2ddr_3.1.runs/bd_2fd7_interconnect_sys_reset_0_synth_1/bd_2fd7_interconnect_sys_reset_0_sim_netlist.vhdl /home/joshbohde/code/nerabus/refdesign_test/adm-pcie-ku3_2ddr_3.1/adm-pcie-ku3_2ddr_3.1.srcs/sources_1/bd/xcl_design/ip/xcl_design_u_ocl_region_0/bd_0/ip/ip_8/bd_2fd7_interconnect_sys_reset_0_sim_netlist.vhdl
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create the VHDL functional simulation sub-design file. Post-Synthesis Functional Simulation with this file may not be possible or may give incorrect results. Error reported: $_RESULT"
}

}; # end if cached_ip 

if {[file isdir /home/joshbohde/code/nerabus/refdesign_test/adm-pcie-ku3_2ddr_3.1/adm-pcie-ku3_2ddr_3.1.ip_user_files/ip/bd_2fd7_interconnect_sys_reset_0]} {
  catch { 
    file copy -force /home/joshbohde/code/nerabus/refdesign_test/adm-pcie-ku3_2ddr_3.1/adm-pcie-ku3_2ddr_3.1.srcs/sources_1/bd/xcl_design/ip/xcl_design_u_ocl_region_0/bd_0/ip/ip_8/bd_2fd7_interconnect_sys_reset_0_stub.v /home/joshbohde/code/nerabus/refdesign_test/adm-pcie-ku3_2ddr_3.1/adm-pcie-ku3_2ddr_3.1.ip_user_files/ip/bd_2fd7_interconnect_sys_reset_0
  }
}

if {[file isdir /home/joshbohde/code/nerabus/refdesign_test/adm-pcie-ku3_2ddr_3.1/adm-pcie-ku3_2ddr_3.1.ip_user_files/ip/bd_2fd7_interconnect_sys_reset_0]} {
  catch { 
    file copy -force /home/joshbohde/code/nerabus/refdesign_test/adm-pcie-ku3_2ddr_3.1/adm-pcie-ku3_2ddr_3.1.srcs/sources_1/bd/xcl_design/ip/xcl_design_u_ocl_region_0/bd_0/ip/ip_8/bd_2fd7_interconnect_sys_reset_0_stub.vhdl /home/joshbohde/code/nerabus/refdesign_test/adm-pcie-ku3_2ddr_3.1/adm-pcie-ku3_2ddr_3.1.ip_user_files/ip/bd_2fd7_interconnect_sys_reset_0
  }
}
