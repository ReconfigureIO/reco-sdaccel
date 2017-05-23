#
# (c) 2017 ReconfigureIO
#
# <COPYRIGHT TERMS>
#

#
# Apply constraints recursively from the top level instance.
#
proc sda_kernel_constrain {moduleName} {

  # Assumes current design is correctly set by synthesis script.
  set childCells [get_cells -filter "!IS_PRIMITIVE"]
  apply_group_constraints $childCells "design_toplevel"

  # Write out the generated relative placement constraints.
  write_xdc -force -exclude_timing "${moduleName}.xdc"
}

#
# Applies constraints to a group of cells at the same level of hierarchy.
#
proc apply_group_constraints {childCells groupName} {
  set rlocList {}
  set rlocIndex 0
  foreach childCell $childCells {
    set rlocNewEntries [apply_constraints $childCell $rlocIndex]
    if {[llength $rlocNewEntries] != 0} {
      set rlocList [concat $rlocList $rlocNewEntries]
      incr rlocIndex
    }
  }

  # Create the relative placement macro.
  if {[llength $rlocList] != 0} {
    set macroName "rpm_${groupName}"
    create_macro $macroName
    update_macro $macroName $rlocList
  }
}

#
# Recursively applies constraints to hierarchical instances.
#
proc apply_constraints {instance rlocIndex} {
  set instanceName [get_property NAME $instance]
  set moduleName [get_property REF_NAME $instance]
  set rlocList {}

  # Determine if the current instance is a single entry SELF toggle buffer.
  if [string match "*selfW1R1TBuffer*" $moduleName] {
    set rlocList [apply_self_buffer_w1r1t_constraints $instance $rlocIndex]

  # Determine if the current instance is a double entry SELF buffer.
  } elseif [string match "*selfW2R1Buffer*" $moduleName] {
    set rlocList [apply_self_buffer_w2r1_constraints $instance $rlocIndex]

  # Determine if the current instance is a SELF fork control component.
  } elseif [string match "*selfFlowForkControl*" $moduleName] {
    set rlocList [apply_self_fork_control_constraints $instance $rlocIndex]

  # Determine if the current instance is a SELF variable write port component.
  } elseif [string match "*selfVarScalarWPort*" $moduleName] {
    set rlocList [apply_self_var_scalar_constraints $instance $rlocIndex]

  # Determine if the current instance is a SELF variable read port component.
  } elseif [string match "*selfVarScalarRPort*" $moduleName] {
    set rlocList [apply_self_var_scalar_constraints $instance $rlocIndex]

  # Determine if the current instance is a SELF variable register component.
  } elseif [string match "*selfVarScalarReg*" $moduleName] {
    set rlocList [apply_self_var_scalar_constraints $instance $rlocIndex]

  # Attempt to apply constraints to child instances.
  } else {
    set childCells [get_cells -quiet -hierarchical -filter "!IS_PRIMITIVE && PARENT == $instance"]
    apply_group_constraints $childCells $instanceName
  }
  return $rlocList
}

#
# Sort all cells in a list which match the specified pattern.
#
proc get_sorted_cells {cells pattern} {
  set filteredCells {}
  foreach cell $cells {
    set cellName [get_property NAME $cell]
    if [string match $pattern $cellName] {
      lappend filteredCells $cell
    }
  }
  return [lsort -dictionary $filteredCells]
}

#
# Gets a list of fan-in cells which can be constrained for the same slice as
# the corresponding output register.
#
proc get_fan_in_cells {driverCell} {
  set driverCellType [get_property REF_NAME $driverCell]

  # Add fan-in LUTs which are not already constrained or part of a combined LUT.
  if [string match "LUT?" $driverCellType] {
    set isConstrained [get_property RLOC $driverCell]
    set conflict1 [get_property HLUTNM $driverCell]
    set conflict2 [get_property SOFT_HLUTNM $driverCell]
    if {$isConstrained != {} || $conflict1 != {} || $conflict2 != {}} {
      return {}
    } else {
      set driverCellName [get_property NAME $driverCell]
      return [get_cell $driverCellName]
    }

  # Add function mux cells and their fan-in cells.
  } elseif [string match "MUXF?" $driverCellType] {
    set isConstrained [get_property RLOC $driverCell]
    if {$isConstrained != {}} {
      return {}
    } else {
      set fanInCells $driverCell
      set driverNetI0 [get_nets -segments -of_objects [get_pins $driverCell/I0]]
      set driverPinI0 [get_pins -quiet -of_objects $driverNetI0 -filter "DIRECTION == OUT"]
      set driverCellI0 [get_cells -quiet -of_objects $driverPinI0 -filter "IS_PRIMITIVE"]
      set fanInCells [concat $fanInCells [get_fan_in_cells $driverCellI0]]
      set driverNetI1 [get_nets -segments -of_objects [get_pins $driverCell/I1]]
      set driverPinI1 [get_pins -quiet -of_objects $driverNetI1 -filter "DIRECTION == OUT"]
      set driverCellI1 [get_cells -quiet -of_objects $driverPinI1 -filter "IS_PRIMITIVE"]
      set fanInCells [concat $fanInCells [get_fan_in_cells $driverCellI1]]
      return $fanInCells
    }

  # Other driver cell types cannot be constrained.
  } else {
    return {}
  }
}

#
# Set the BEL property on a register cell.
#
proc set_fdre_bel {regCell offset} {
  if {$offset == 0} {
    set_property BEL AFF $regCell
  } elseif {$offset == 1} {
    set_property BEL BFF $regCell
  } elseif {$offset == 2} {
    set_property BEL CFF $regCell
  } elseif {$offset == 3} {
    set_property BEL DFF $regCell
  } elseif {$offset == 4} {
    set_property BEL EFF $regCell
  } elseif {$offset == 5} {
    set_property BEL FFF $regCell
  } elseif {$offset == 6} {
    set_property BEL GFF $regCell
  } elseif {$offset == 7} {
    set_property BEL HFF $regCell
  }
}

#
# Set the BEL property on a LUT cell.
#
proc set_lut_bel {lutCell offset} {
  if {$offset == 0} {
    set_property BEL A6LUT $lutCell
  } elseif {$offset == 1} {
    set_property BEL B6LUT $lutCell
  } elseif {$offset == 2} {
    set_property BEL C6LUT $lutCell
  } elseif {$offset == 3} {
    set_property BEL D6LUT $lutCell
  } elseif {$offset == 4} {
    set_property BEL E6LUT $lutCell
  } elseif {$offset == 5} {
    set_property BEL F6LUT $lutCell
  } elseif {$offset == 6} {
    set_property BEL G6LUT $lutCell
  } elseif {$offset == 7} {
    set_property BEL H6LUT $lutCell
  }
}

#
# Implements BEL locking for register cells and their immediate drivers when
# there are 8 registers per cell allocated.
#
proc set_driver_bels_x8 {regCells fanInCellList} {
  set regCellCount 0
  set sliceCount 0
  foreach regCell $regCells fanInCell $fanInCellList {
    set_fdre_bel $regCell $regCellCount
    if {$fanInCell != {}} {
      set_lut_bel $fanInCell $regCellCount
    }
    if {$regCellCount == 7} {
      set regCellCount 0
    } else {
      incr regCellCount
    }
  }
}

#
# Generates a list of relative placement constraints for a vector of register
# cells. This also includes constraints on the register input LUTs if possible.
# The number of registers packed into each slice is as follows:
#   16 - If no register inputs are sourced from LUTs.
#    8 - If at least one register input is sourced from a standard LUT.
#    4 - If at least one register input is sourced from an F7 LUT MUX.
#    2 - If at least one register input is sourced from an F8 LUT MUX.
#    1 - If at least one register input is sourced from an F9 LUT MUX.
#
proc get_vector_placement {regCells rlocIndex} {
  set fanInCellList {}
  set regCellsPerSlice 16

  # Create a list of driver cells for each register cell.
  foreach regCell $regCells {
    set driverNet [get_nets -segments -of_objects [get_pins $regCell/D]]
    set driverPin [get_pins -quiet -of_objects $driverNet -filter "DIRECTION == OUT"]
    set driverCell [get_cells -quiet -of_objects $driverPin -filter "IS_PRIMITIVE"]
    set fanInCells [get_fan_in_cells $driverCell]
    lappend fanInCellList $fanInCells

    # Get number of register cells per slice, based on the driver cell type.
    if {$fanInCells != {}} {
      set driverCellType [get_property REF_NAME $driverCell]
      if [string match "LUT?" $driverCellType] {
        if {$regCellsPerSlice > 8} {
          set regCellsPerSlice 8
        }
      } elseif [string match "MUXF7" $driverCellType] {
        if {$regCellsPerSlice > 4} {
          set regCellsPerSlice 4
        }
      } elseif [string match "MUXF8" $driverCellType] {
        if {$regCellsPerSlice > 2} {
          set regCellsPerSlice 2
        }
      } elseif [string match "MUXF9" $driverCellType] {
        if {$regCellsPerSlice > 1} {
          set regCellsPerSlice 1
        }
      }
    }
  }

  # Apply BEL constraints to register cells and their immediate LUT drivers.
  # We currently rely on the Xilinx placement algorithm for MUX drivers.
  if {$regCellsPerSlice == 8} {
    set_driver_bels_x8 $regCells $fanInCellList
  }

  # Assign the appropriate number of register cells and their associated fan-in
  # logic to each slice.
  set regCellCount 0
  set sliceCount 0
  set rlocList {}
  puts $fanInCellList
  foreach regCell $regCells fanInCells $fanInCellList {
    lappend rlocList [get_property NAME $regCell]
    lappend rlocList "X${rlocIndex}Y${sliceCount}"
    foreach fanInCell $fanInCells {
      lappend rlocList [get_property NAME $fanInCell]
      lappend rlocList "X${rlocIndex}Y${sliceCount}"
    }
    incr regCellCount
    if {$regCellCount >= $regCellsPerSlice} {
      set regCellCount 0
      incr sliceCount
    }
  }
  return $rlocList
}

#
# Apply SELF fork control constraints.
#
proc apply_self_fork_control_constraints {instance rlocIndex} {
  set instanceName [get_property NAME $instance]
  set moduleName [get_property REF_NAME $instance]
  puts "Constraining ${instanceName} : ${moduleName}"

  # Get the register instance list.
  set cells [get_cells -quiet -hierarchical -filter "IS_PRIMITIVE && IS_SEQUENTIAL && PARENT == $instance"]
  set ctrlRegCells [get_sorted_cells $cells "*_q_reg\\\[*"]

  # Create the relative placement list for the control registers.
  set rlocList [get_vector_placement $ctrlRegCells $rlocIndex]

  # Create the relative placement macro.
  if {[llength $rlocList] != 0} {
    set macroName "rpm_${instanceName}"
    create_macro $macroName
    update_macro $macroName $rlocList
  }

  # Return empty set of relative placements.
  return {}
}

#
# Apply SELF buffer constraints for W1R1T form.
#
proc apply_self_buffer_w1r1t_constraints {instance rlocIndex} {
  set instanceName [get_property NAME $instance]
  set moduleName [get_property REF_NAME $instance]
  puts "Constraining ${instanceName} : ${moduleName}"

  # Get the register instance list.
  set cells [get_cells -quiet -hierarchical -filter "IS_PRIMITIVE && IS_SEQUENTIAL && PARENT == $instance"]
  set dataRegCells [get_sorted_cells $cells "*dataReg_q_reg\\\[*"]

  # Create the relative placement list for the data registers.
  set rlocList [get_vector_placement $dataRegCells $rlocIndex]

  # Create the relative placement macro.
  if {[llength $rlocList] != 0} {
    set macroName "rpm_${instanceName}"
    create_macro $macroName
    update_macro $macroName $rlocList
  }

  # Return empty set of relative placements.
  return {}
}

#
# Apply SELF buffer constraints for W2R1 form.
#
proc apply_self_buffer_w2r1_constraints {instance rlocIndex} {
  set instanceName [get_property NAME $instance]
  set moduleName [get_property REF_NAME $instance]
  puts "Constraining ${instanceName} : ${moduleName}"

  # Get the register A and register B instance lists.
  set cells [get_cells -quiet -hierarchical -filter "IS_PRIMITIVE && IS_SEQUENTIAL && PARENT == $instance"]
  set regACells [get_sorted_cells $cells "*dataRegA_q_reg\\\[*"]
  set regBCells [get_sorted_cells $cells "*dataRegB_q_reg\\\[*"]

  # Create the relative placement list for the data registers.
  set rlocList [get_vector_placement $regACells $rlocIndex]
  incr rlocIndex
  set rlocList [concat $rlocList [get_vector_placement $regBCells $rlocIndex]]

  # Create the relative placement macro.
  if {[llength $rlocList] != 0} {
    set macroName "rpm_${instanceName}"
    create_macro $macroName
    update_macro $macroName $rlocList
  }

  # Return empty set of relative placements.
  return {}
}

#
# Apply SELF variable component constraints.
#
proc apply_self_var_scalar_constraints {instance rlocIndex} {
  set instanceName [get_property NAME $instance]
  set moduleName [get_property REF_NAME $instance]
  puts "Constraining ${instanceName} : ${moduleName}"

  # Get the data and optional enable registers as a single list.
  set cells [get_cells -quiet -hierarchical -filter "IS_PRIMITIVE && IS_SEQUENTIAL && PARENT == $instance"]
  set regCells [get_sorted_cells $cells "*_q_reg\\\[*"]

  # Create the relative placement list for the data registers.
  set rlocList [get_vector_placement $regCells $rlocIndex]

  # Return relative placement list to be included in SELF variable macro.
  return $rlocList
}

