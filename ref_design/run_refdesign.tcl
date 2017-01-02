# To apply final settings and build, source this script within Vivado when the adm-pcie-ku3_2ddr project is open.

set_property dsa.description       "REFERENCE DESIGN FOR Alpha Data ADM-PCIE-KU3 Partial Reconfiguration Dual DIMM PCIe Gen3 XDMA" [current_project]
set_property dsa.name              "2ddr"         [current_project]
set_property dsa.board_id          "adm-pcie-ku3" [current_project]
set_property dsa.vendor            "xilinx"       [current_project]
set_property dsa.version           "3.1"          [current_project]
set_property dsa.host_architecture "x86_64"       [current_project]

if {![info exists ::env(XILINX_SDACCEL)]} {
  set errmsg "ERROR"
  error "${errmsg}: XILINX_SDACCEL environment variable not set"
}
set_property dsa.drivers                "$::env(XILINX_SDACCEL)/data/sdaccel/pcie/x86_64/libxcldrv.so" [current_project]
set_property dsa.lin_driver_src_archive "$::env(XILINX_SDACCEL)/data/sdaccel/pcie/src/xcldma.zip"      [current_project]

set src_pwd [pwd]
set_property STEPS.PLACE_DESIGN.TCL.PRE ${src_pwd}/common/misc/adm-pcie3-ku3_2ddr_preplace.tcl [get_runs impl_1]

update_compile_order -fileset sources_1
update_compile_order -fileset sim_1
generate_target all [get_files xcl_design.bd]
launch_runs synth_1 -jobs 8
wait_on_run synth_1
launch_runs impl_1
wait_on_run impl_1
open_run impl_1
write_dsa -force -include_bit
validate_dsa xilinx_adm-pcie-ku3_2ddr_3_1.dsa -verbose
