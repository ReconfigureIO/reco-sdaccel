#
# (c) 2017 ReconfigureIO
#
# <COPYRIGHT TERMS>
#

#
# Vivado TCL batch script which attempts to build an SDAccel kernel from a block 
# of generated action code. The script takes an arbitrary number of command line 
# arguments:
#
# -vendor <vendor_name>
#   This is the vendor name which is to be used as the 'vendor' field of the 
#   Xilinx VLNV IP core identifier, and will typically be the fully qualified
#   domain name associated with the vendor (eg, 'reconfigure.io'). This option 
#   is mandatory.
# -library <library_name>
#   This is the vendor library name associated with the 'library' field of the
#   Xilinx VLNV IP core identifier, and will typically be a dot separated 
#   hierarchical path (eg, sdaccel.golang.libname). This option is mandatory.
# -name <module_name> 
#   This is the name which is to be used to identify the toplevel module when 
#   wrapping the RTL as a SDAccel kernel object. It should be a valid Verilog 
#   module name which is unique to a specific SDAccel kernel function. The 
#   specified name will also be used as the 'name' field of the Xilinx VLNV IP 
#   core identifier. This option is mandatory.
# -version <version_number>
#   This is the version number which is included in the Xilinx VLNV IP core
#   identifier. It should be a dot separated version number that consists of a 
#   major and minor version number (eg, 2.42). This option is mandatory.
# -action_source_file <source_file> 
#   This is a path to the generated action code source, which should be a single 
#   Verilog file containing all the modules required. This option is mandatory.
# -wrapper_source_dir <wrapper_dir>
#   This is a path to the SDAccel wrapper source code directory, which contains
#   the Verilog source code files to be included in the build. If not specified,
#   the 'verilog' subdirectory will be used.
# -build_dir <build_dir> 
#   This is a path to the netlist build directory, into which the output netlist 
#   will be placed. If not specified, the current directory will be used. 
# -mem_type [nomem|gmem] 
#   This is a string which specifies the memory access types supported by the 
#   generated action code. This may be 'nomem' if the action code does not need 
#   to access external memory and 'gmem' if the action code needs to access the 
#   global memory area on the accelerator card. This option is not mandatory and 
#   has the default value of 'nomem'.
#
# The build script can be run from the command line using the Vivado batch mode
# as follows, where <tcl_script_args> is replaced by the arguments specified 
# above.
# 
# > vivado -mode batch -source <this_script_name> -tclargs <tcl_script_args>
#

# Specify default parameter values.
set actionMemType "nomem"
set wrapperCodePath "verilog"

#
# Extract the TCL command line arguments.
#
set argIndex 0
while {$argIndex < $argc} {
  set arg [lindex $argv $argIndex]
  incr argIndex
  switch $arg {
    "-vendor" {
      set vendorName [lindex $argv $argIndex]
      incr argIndex
    }
    "-library" {
      set libraryName [lindex $argv $argIndex]
      incr argIndex
    }
    "-name" {
      set kernelName [lindex $argv $argIndex]
      incr argIndex
    }
    "-version" {
      set versionNumber [lindex $argv $argIndex]
      incr argIndex
    }
    "-build_dir" {
      set buildDirPath [lindex $argv $argIndex]     
      incr argIndex
    }
    "-mem_type" {
      set actionMemType [lindex $argv $argIndex]
      incr argIndex
    }
    "-action_source_file" {
      set sourceFileName [lindex $argv $argIndex]           
      incr argIndex
    }
    "-wrapper_source_dir" {
      set wrapperCodePath [lindex $argv $argIndex]          
      incr argIndex
    }     
    default {
      puts "Invalid TCL batch script argument : $arg"
      exit -1
    }     
  }
}

#
# Check for valid VLNV settings.
# TODO: Currently assumes valid format if present.
#
if {0 == [info exists vendorName]} {
  puts "Missing VLNV -vendor argument"
  exit -1
}
if {0 == [info exists libraryName]} {
  puts "Missing VLNV -library argument"
  exit -1
}
if {0 == [info exists kernelName]} {
  puts "Missing VLNV -name argument"
  exit -1
}
if {0 == [info exists versionNumber]} {
  puts "Missing VLNV -version argument"
  exit -1
}

#
# Change to the specified build directory if required, with fully qualified
# directory path.
#
if {0 != [info exists buildDirPath]} {
  file mkdir $buildDirPath
  if {[catch {cd $buildDirPath} errMsg]} {
    puts $errMsg          
    puts "Invalid TCL batch script build directory : $buildDirPath"       
    exit -1
  }
}
set buildDirPath [pwd]  

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
  -mode out_of_context \
  -no_lc \
  -keep_equivalent_registers \
  -top [lindex [find_top] 0]

#
# Prefix all the module names with the unique kernel name string.
#
set moduleName "${vendorName}_${libraryName}_${kernelName}_${versionNumber}"
regsub -all "\\." $moduleName "_" moduleName
rename_ref -prefix_all "${moduleName}_"
rename_ref -ref [lindex [find_top] 0] -to $moduleName

#
# Write out the Verilog netlist, with a renamed kernel toplevel module.
#
write_verilog -force "${moduleName}.v"

#
# Automatically infer the Vivado IP core from the generated Verilog file.
#
ipx::infer_core -verbose \
  -set_current true \
  -block_ip \
  -vendor $vendorName \
  -library $libraryName \
  -name $kernelName \
  -version $versionNumber \
  -taxonomy /SDAccel/Kernel \
  $buildDirPath
ipx::sdaccel::check_ip

#
# TODO: these are dummy arguments.
#
ipx::sdaccel::set_arg_order test_arg1 test_arg2
ipx::sdaccel::set_arg_info test_arg1 s_axi_control local 4 4
ipx::sdaccel::set_arg_info test_arg2 s_axi_control local 8 4

#
# Write out the SDAccel kernel information file for the current IP core.
#
ipx::sdaccel::write_kernel_info

#
# Package the SDAccel kernel object files.
#
package_xo -verbose \
  -kernel_name $moduleName \
  -kernel_xml [file join $buildDirPath kernel_info.xml] \
  -ip_directory $buildDirPath \
  -xo_path [file join $buildDirPath $moduleName]
