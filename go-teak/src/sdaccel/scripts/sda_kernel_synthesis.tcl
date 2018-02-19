#
# (c) 2017 ReconfigureIO
#
# <COPYRIGHT TERMS>
#

#
# Implements TCL function for synthesising an SDA kernel instance, with the
# output being a Xilinx Verilog netlist featuring uniquified module names.
#

#
# Attempt to build IP cores if present.
#
proc load_ip_cores {ipSourceDirPath buildDirPath} {
  set ipBuildDirPath [file join $buildDirPath "ip"]
  file mkdir $ipBuildDirPath
  set synthRuns {}

  # The .xci files used to generate the IP are all in the same source directory.
  set ipFileNames [glob -nocomplain -directory $ipSourceDirPath *.xci]
  foreach ipFileName $ipFileNames {
    set ipCoreName [file rootname [file tail $ipFileName]]
    file mkdir [file join $ipBuildDirPath $ipCoreName]
    file copy -force $ipFileName [file join $ipBuildDirPath $ipCoreName]
    read_ip [file join $ipBuildDirPath $ipCoreName "$ipCoreName.xci"]

    # Upgrade each IP to match the target device and then generate device files.
    upgrade_ip [get_ips $ipCoreName]
    generate_target {synthesis simulation} [get_ips $ipCoreName]

    # Using the in-memory project flow we can create multiple IP synthesis
    # runs and execute them in parallel.
    lappend synthRuns [create_ip_run [get_ips $ipCoreName]]
  }

  # Fire off the parallel IP synthesis runs.
  puts $synthRuns
  launch_runs -jobs [get_param general.maxThreads] $synthRuns
}

#
# Run main kernel synthesis in project flow.
#
proc sda_kernel_synthesis {sourceFileName moduleName
  includeCodePath libraryCodePath partName axiDataWidth} {
set_part $partName

#
# Attempt to build the IP cores if present.
# TODO: Architecture path is hard-coded here.
#
# set includeArchPath [file join $libraryCodePath ".." "SELF_arch" "xilinx" "ultrascale"]
# set ipSourceDirPath [file join $includeArchPath "ip"]
# if {0 != [file exists $ipSourceDirPath]} {
#   set libraryCodePath {$libraryCodePath $includeArchPath}
#   load_ip_cores $ipSourceDirPath [pwd]
# }

#
# Load the file containing the generated action code.
#
if {0 == [info exists sourceFileName]} {
  puts "Mandatory TCL batch script '-source' argument not present."
  exit -1
}
add_files -norecurse $sourceFileName

#
# Load all Verilog files in the imported source code directories.
#
foreach libraryCodeDir $libraryCodePath {
  add_files -quiet $libraryCodeDir
}

#
# Generate the synthesised netlist for the IP core.
#
synth_design \
  -mode out_of_context \
  -directive runtimeoptimized \
  -no_lc \
  -keep_equivalent_registers \
  -top sda_kernel_wrapper_gmem \
  -include_dirs $includeCodePath \
  -verilog_define AXI_MASTER_DATA_WIDTH=$axiDataWidth

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
