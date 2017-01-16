#
# (c) 2017 ReconfigureIO
#
# <COPYRIGHT TERMS>
#

#
# Implements SDAccel kernel packaging phase.
#
proc sda_kernel_packaging {moduleName vendorName libraryName kernelName 
  versionNumber ipDirPath pkgDirPath} {

#
# Open Kernel skeleton XML file and append common header fields.
#
set kernelXmlFileName [file join $pkgDirPath "kernel_common.xml"]
set fileId [open $kernelXmlFileName "w"]
puts $fileId "<?xml version=\"1.0\" encoding=\"UTF-8\"?>"
puts $fileId "<root versionMajor=\"1\" versionMinor=\"0\">"

#
# Write the kernel information.
#
puts $fileId "<kernel name=\"${moduleName}\""
puts $fileId "    language=\"ip\""
puts $fileId "    vlnv=\"${vendorName}:${libraryName}:${kernelName}:${versionNumber}\""
puts $fileId "    attributes=\"\""
puts $fileId "    preferredWorkGroupSizeMultiple=\"0\""
puts $fileId "    workGroupSize=\"1\">"

#
# Define the AXI control port and master memory interface. These are currently
# hard-coded to match the bus parameters on the stub interface.
#
puts $fileId "    <ports>"
puts $fileId "    <port name=\"m_axi_gmem\""
puts $fileId "        mode=\"master\""
puts $fileId "        range=\"0xFFFFFFFFFFF\""
puts $fileId "        dataWidth=\"512\""
puts $fileId "        portType=\"addressable\""
puts $fileId "        base=\"0x0\"/>"
puts $fileId "    <port name=\"s_axi_control\""
puts $fileId "        mode=\"slave\""
puts $fileId "        range=\"0xFF\""
puts $fileId "        dataWidth=\"32\""
puts $fileId "        portType=\"addressable\""
puts $fileId "        base=\"0x0\"/>"
puts $fileId "    </ports>"

#
# Write common XML footer with no common arguments and close file.
#
puts $fileId "    <args>"
puts $fileId "    </args>"
puts $fileId "</kernel>"
puts $fileId "</root>"
close $fileId

#
# Perform SDAccel kernel packaging.
# TODO: Include valid argument fields.
# TODO: If support for inter-kernel AXI stream pipes is required, the 
# corresponding definitions need to be included here.
#
set kernelPackageName [file join $pkgDirPath "${moduleName}.xo"]
package_xo -xo_path $kernelPackageName -kernel_name $moduleName \
  -kernel_xml $kernelXmlFileName -ip_directory $ipDirPath

}
