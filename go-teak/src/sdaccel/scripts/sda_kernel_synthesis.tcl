#
# (c) 2017 ReconfigureIO
#
# <COPYRIGHT TERMS>
#

#
# Implements TCL function for synthesising an SDA kernel instance, with the 
# output being a Xilinx Verilog netlist featuring uniquified module names.
#

proc sda_kernel_synthesis {
  sourceFileName moduleName actionMemType wrapperCodePath partName} {
        
#
# Load the file containing the generated action code.
#
if {0 == [info exists sourceFileName]} {
  puts "Mandatory TCL batch script '-source' argument not present."
  exit -1
}
add_files -norecurse $sourceFileName

#
# Load the appropriate action code wrapper and utility modules.
#
switch $actionMemType {
  "nomem" {
    add_files -norecurse [file join $wrapperCodePath sda_kernel_wrapper_nomem.v]
  }
  "gmem" {
    add_files -norecurse [file join $wrapperCodePath sda_kernel_wrapper_gmem.v]
  }
  default {
    puts "Invalid TCL batch script 'mem_type' specified : $actionMemType."
    exit -1
  }
}
add_files -norecurse [file join $wrapperCodePath sda_kernel_ctrl_reg.v]
add_files -norecurse [file join $wrapperCodePath sda_kernel_ctrl_reg_sel.v]
add_files -norecurse [file join $wrapperCodePath action_reset_handler.v]

#
# Generate the synthesised netlist for the IP core.
#
synth_design \
  -part $partName \
  -mode out_of_context \
  -no_lc \
  -keep_equivalent_registers \
  -top [lindex [find_top] 0]

#
# Prefix all the module names with the unique kernel name string.
#
rename_ref -prefix_all "${moduleName}_"
rename_ref -ref [lindex [find_top] 0] -to $moduleName

#
# Write out the Verilog netlist, with a renamed kernel toplevel module.
#
write_verilog -force "${moduleName}.v"  

}
