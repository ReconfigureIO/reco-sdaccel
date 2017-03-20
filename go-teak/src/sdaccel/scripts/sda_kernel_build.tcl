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
# -kernel_id <kernel_id>
#   This is the kernel identifier which is used to identify the toplevel module
#   when wrapping the RTL as a SDAccel kernel object. It should be a valid
#   Verilog module name which is unique to a specific SDAccel kernel function.
#   If not specified, the kernel identifier will be automatically generated by
#   concatenating the Xilinx VLNV IP core identifiers.
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
#   The specified name will be used as the 'name' field of the Xilinx VLNV IP
#   core identifier. This option is mandatory.
# -version <version_number>
#   This is the version number which is included in the Xilinx VLNV IP core
#   identifier. It should be a dot separated version number that consists of a
#   major and minor version number (eg, 2.42). This option is mandatory.
# -action_source_file <source_file>
#   This is a path to the generated action code source, which should be a single
#   Verilog file containing all the modules required. This option is mandatory.
# -include_source_dir <wrapper_dir>
#   This is a path to the included verilog source code directory, which contains
#   the Verilog source code files to be included in the build. If not specified,
#   the 'verilog' subdirectory will be used.
# -build_dir <build_dir>
#   This is a path to the netlist build directory, into which the output netlist
#   will be placed. If not specified, the current directory will be used.
# -param_args_file <args_file>
#   This specifies the parameter arguments definition file, which consists of
#   an arbitrary list of kernel arguments of the form <arg name="foo" ...../>
#   If not specified, the file 'param_args.xmldef' in the current working
#   directory will be used instead. If no suitable parameter arguments file
#   can be found, the kernel arguments section of the kernel.xml file will
#   not be populated.
# -skip_resynthesis [0|1]
#   This is a boolean flag which can be used to skip the synthesis phase of the
#   build process if a valid Verilog netlist is already present in the build
#   directory. This option is not mandatory and has the default value of 0.
# -part <part_name>
#   The part to synthesize for. If not provided, defaults to
#   "xcku115-flvf1924-1-c"
# -part_family <part_family>
#   The part family to synthesize for. If not provided, defaults to
#   "kintexu"
#
# The build script can be run from the command line using the Vivado batch mode
# as follows, where <tcl_script_args> is replaced by the arguments specified
# above.
#
# > vivado -mode batch -source <this_script_name> -tclargs <tcl_script_args>
#

# Include synthesis and packaging functions.
source [file join [file dirname [info script]] sda_kernel_synthesis.tcl]
source [file join [file dirname [info script]] sda_kernel_packaging.tcl]
source [file join [file dirname [info script]] sda_kernel_xilinx_utils.tcl]

# Specify default parameter values.
set includeCodePath "verilog"
set skipResynthesis 0
set paramArgsFileName "param_args.xmldef"

# Selects a generic Kintex Ultrascale part as the nominal target.
set partName "xcku115-flvf1924-1-c"
set partFamily "kintexu"

#
# Extract the TCL command line arguments.
#
set argIndex 0
while {$argIndex < $argc} {
  set arg [lindex $argv $argIndex]
  incr argIndex
  switch $arg {
    "-kernel_id" {
      set moduleName [lindex $argv $argIndex]
      incr argIndex
    }
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
    "-action_source_file" {
      set sourceFileName [lindex $argv $argIndex]
      incr argIndex
    }
    "-include_source_dir" {
      set includeCodePath [lindex $argv $argIndex]
      incr argIndex
    }
    "-param_args_file" {
      set paramArgsFileName [lindex $argv $argIndex]
      incr argIndex
    }
    "-skip_resynthesis" {
      set skipResynthesis [lindex $argv $argIndex]
      incr argIndex
    }
    "-part" {
      set partName [lindex $argv $argIndex]
      incr argIndex
    }
    "-part_family" {
      set partFamily [lindex $argv $argIndex]
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
set synDirPath [file join $buildDirPath syn]
set ipDirPath [file join $buildDirPath ip]

#
# Construct the unique module name if not specified.
#
if {0 == [info exists moduleName]} {
  set moduleName [string map {. _ - _} \
    ${vendorName}_${libraryName}_${kernelName}_${versionNumber}]
}

#
# Run the synthesis phase if required. This will produce a single Verilog file
# in the build directory which contains all the HDL components of the SDAccel
# kernel.
#
file mkdir $synDirPath
set synFileName [file join $synDirPath "${moduleName}.v"]
if {0 == $skipResynthesis || 0 == [file exists $synFileName]} {
  cd $synDirPath
  sda_kernel_synthesis $sourceFileName $moduleName $includeCodePath $partName
  cd $buildDirPath
}

#
# Run the Vivado IP creation phase. This will package the synthesised SDAccel
# kernel code as a standard Vivado IP core.
#
file delete -force $ipDirPath
set verilogDirName [file join $ipDirPath "hdl" "verilog"]
file mkdir $verilogDirName
file copy -force $synFileName $verilogDirName

#
# Run the standard Xilinx HLS IP packaging flow.
#
cd $ipDirPath
configure_ip_core $moduleName $vendorName $libraryName $kernelName $versionNumber $partFamily
cd $buildDirPath

#
# Run the SDAccel packaging phase. This uses the previously generated Vivado IP
# core to create an SDAccel kernel object.
#
sda_kernel_packaging $moduleName $vendorName $libraryName $kernelName \
  $versionNumber $paramArgsFileName $ipDirPath $buildDirPath
