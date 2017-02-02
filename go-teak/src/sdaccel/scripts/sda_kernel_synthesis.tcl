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
  sourceFileName moduleName actionMemType includeCodePath partName} {

#
# Load the file containing the generated action code.
#
if {0 == [info exists sourceFileName]} {
  puts "Mandatory TCL batch script '-source' argument not present."
  exit -1
}

add_files -norecurse $sourceFileName

#
# Generate the synthesised netlist for the IP core.
#
synth_design \
  -part $partName \
  -mode out_of_context \
  -no_lc \
  -keep_equivalent_registers \
  -top sda_kernel_wrapper_gmem \
  -include_dirs $includeCodePath

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
