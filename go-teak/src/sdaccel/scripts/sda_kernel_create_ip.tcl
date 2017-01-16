#
# (c) 2017 ReconfigureIO
#
# <COPYRIGHT TERMS>
#

#
# Implements TCL function for packaging the code as a Vivado IP core, with the 
# input being a synthesised Verilog netlist and the output consisting of the
# required Vivado IP core definition files in the build directory.
#

# Include Xilinx SDAccel packaging utility commands.
source [file join [file dirname [info script]] sda_kernel_xilinx_utils.tcl] 

proc sda_kernel_create_ip {
  vendorName libraryName kernelName versionNumber buildDirPath} {

#
# Automatically infer the Vivado IP core from the generated Verilog file.
# This provides the IP template definition to which the detailed settings
# can be added.
#
set ipCoreRef [\
  ipx::infer_core -verbose \
  -set_current true \
  -block_ip \
  -vendor $vendorName \
  -library $libraryName \
  -name $kernelName \
  -version $versionNumber \
  -taxonomy /SDAccel/Kernel \
  $buildDirPath]

#
# Specify the common register layout for the AXI control bus. This lists all 
# the registers which are implemented in the SDAccel wrapper code.
#
set sAxiControlRegisters {
  { 0x00 CTRL RW 0x0 "Control signals" {
    { 0 1 AP_START RW 0 "Control signal register for 'AP_START'" }
    { 1 1 AP_DONE  R  0 "Control signal register for 'AP_DONE'" }
    { 2 1 AP_IDLE  R  0 "Control signal register for 'AP_IDLE'" }
  }}
}

#
# Attach AXI control bus register definitions. This assumes that a single memory 
# map has already been inferred for the slave interface, but the address block
# needs to be replaced with one that defines the registers.
#
add_registers $sAxiControlRegisters s_axi_control

#
# Save the updated IP core information.
#
ipx::check_integrity $ipCoreRef
ipx::save_core

}
