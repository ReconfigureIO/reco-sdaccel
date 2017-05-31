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

  # Determine if the current instance is a SELF arbiter slot component.
  } elseif [string match "*selfFlowArbiterSlot*" $moduleName] {
    set rlocList [apply_sub_component_constraints $instance $rlocIndex "*Data_q_reg\\\[*"]

  # Determine if the current instance is a SELF variable sub-component.
  } elseif [string match "*selfVarScalar*" $moduleName] {
    set rlocList [apply_sub_component_constraints $instance $rlocIndex "*Data_q_reg\\\[*"]

  # Determine if the current instance is multiplier component.
  } elseif [string match "*selfMult*" $moduleName] {
    set rlocList [apply_self_op_mult_constraints $instance $rlocIndex]

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
# Gets the driver cell for a specified register.
#
proc get_driver_cell {regCell} {
  set driverNet [get_nets -segments -of_objects [get_pins $regCell/D]]
  set driverPin [get_pins -quiet -of_objects $driverNet -filter "DIRECTION == OUT"]
  set driverCell [get_cells -quiet -of_objects $driverPin -filter "IS_PRIMITIVE"]
  set driverCellName [get_property NAME $driverCell]
  return [get_cell $driverCellName]
}

#
# Cleans up a driver LUT by removing incompatible constraints. Returns the
# cleaned up LUT cell reference or an empty reference if the cell is not a
# LUT or is already constrained.
#
proc cleanup_lut_driver_cell {driverCell} {
  if [string match "LUT?" [get_property REF_NAME $driverCell]] {
    if {[get_property HLUTNM $driverCell] != {}} {
      set_property HLUTNM {} $driverCell
    }
    if {[get_property SOFT_HLUTNM $driverCell] != {}} {
      set_property SOFT_HLUTNM {} $driverCell
    }
    if {[get_property RLOC $driverCell] != {}} {
      return {}
    } else {
      set driverCellName [get_property NAME $driverCell]
      return [get_cell $driverCellName]
    }
  } else {
    return {}
  }
}

#
# Gets a list of fan-in cells which can be constrained for the same slice as
# the corresponding output register.
#
proc get_fan_in_cells {driverCell} {

  # Add fan-in LUTs which are not already constrained, splitting combined LUTs
  # if required.
  if {$driverCell == {}} {
    return {}
  }
  set lutDriverCell [cleanup_lut_driver_cell $driverCell]
  if {$lutDriverCell != {}} {
    return $lutDriverCell

  # Add function mux cells and their fan-in cells.
  } elseif [string match "MUXF?" [get_property REF_NAME $driverCell]] {
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
# Set the BEL property on a register cell (register set 1).
#
proc set_fdre_bel1 {regCell offset} {
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
# Set the BEL property on a register cell (register set 2).
#
proc set_fdre_bel2 {regCell offset} {
  if {$offset == 0} {
    set_property BEL AFF2 $regCell
  } elseif {$offset == 1} {
    set_property BEL BFF2 $regCell
  } elseif {$offset == 2} {
    set_property BEL CFF2 $regCell
  } elseif {$offset == 3} {
    set_property BEL DFF2 $regCell
  } elseif {$offset == 4} {
    set_property BEL EFF2 $regCell
  } elseif {$offset == 5} {
    set_property BEL FFF2 $regCell
  } elseif {$offset == 6} {
    set_property BEL GFF2 $regCell
  } elseif {$offset == 7} {
    set_property BEL HFF2 $regCell
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
# Set the BEL property on a MUXF7 cell.
#
proc set_muxf7_bel {muxCell offset} {
  if {$offset == 0} {
    set_property BEL F7MUX_AB $muxCell
  } elseif {$offset == 1} {
    set_property BEL F7MUX_CD $muxCell
  } elseif {$offset == 2} {
    set_property BEL F7MUX_EF $muxCell
  } elseif {$offset == 3} {
    set_property BEL F7MUX_GH $muxCell
  }
}

#
# Set the BEL property on a MUXF8 cell.
#
proc set_muxf8_bel {muxCell offset} {
  if {$offset == 0} {
    set_property BEL F8MUX_BOT $muxCell
  } elseif {$offset == 1} {
    set_property BEL F8MUX_TOP $muxCell
  }
}

#
# Implements BEL locking for register cells and their immediate drivers when
# there are 8 registers per cell allocated.
#
proc set_driver_bels_x8 {regCells fanInCellList} {
  set regCellCount 0
  foreach regCell $regCells fanInCell $fanInCellList {
    set_fdre_bel1 $regCell $regCellCount
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
# Implements BEL locking for register cells and their immediate drivers when
# there are 4 registers per cell allocated.
#
proc set_driver_bels_x4 {regCells fanInCellList} {
  set regCellCount 0
  foreach regCell $regCells fanInCell $fanInCellList {
    set regCellOffset [expr {2 * $regCellCount + 1}]
    if {$fanInCell != {}} {
      set driverCell [get_driver_cell $regCell]
      if [string match "LUT?" [get_property REF_NAME $driverCell]] {
        set_lut_bel $driverCell $regCellOffset
      } else {
        set_muxf7_bel $driverCell $regCellCount
      }
    }
    set_fdre_bel1 $regCell $regCellOffset
    if {$regCellCount == 3} {
      set regCellCount 0
    } else {
      incr regCellCount
    }
  }
}

#
# Implements BEL locking for register cells and their immediate drivers when
# there are 2 registers per cell allocated.
#
proc set_driver_bels_x2 {regCells fanInCellList} {
  set regCellCount 0
  foreach regCell $regCells fanInCell $fanInCellList {
    set regCellOffset [expr {4 * $regCellCount + 2}]
    if {$fanInCell != {}} {
      set driverCell [get_driver_cell $regCell]
      set driverCellType [get_property REF_NAME $driverCell]
      if [string match "LUT?" $driverCellType] {
        set_lut_bel $driverCell $regCellOffset
      } elseif [string match "MUXF7" $driverCellType] {
        set regCellOffset [expr {4 * $regCellCount + 1}]
        set muxCellOffset [expr {2 * $regCellCount}]
        set_muxf7_bel $driverCell $muxCellOffset
      } else {
        set_muxf8_bel $driverCell $regCellCount
      }
    }
    set_fdre_bel1 $regCell $regCellOffset
    if {$regCellCount == 1} {
      set regCellCount 0
    } else {
      incr regCellCount
    }
  }
}

#
# Implements BEL locking for register cells and their immediate drivers when
# there are 1 register per cell allocated.
#
proc set_driver_bels_x1 {regCells fanInCellList} {
  foreach regCell $regCells fanInCell $fanInCellList {
    set regCellOffset 4
    if {$fanInCell != {}} {
      set driverCell [get_driver_cell $regCell]
      set driverCellType [get_property REF_NAME $driverCell]
      if [string match "LUT?" $driverCellType] {
        set_lut_bel $driverCell $regCellOffset
      } elseif [string match "MUXF7" $driverCellType] {
        set regCellOffset 1
        set_muxf7_bel $driverCell 0
      } elseif [string match "MUXF8" $driverCellType] {
        set regCellOffset 2
        set_muxf8_bel $driverCell 0
      } else {
        set_property BEL F9MUX $muxCell
      }
    }
    set_fdre_bel1 $regCell $regCellOffset
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
    set driverCell [get_driver_cell $regCell]
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
  if {$regCellsPerSlice == 8} {
    set_driver_bels_x8 $regCells $fanInCellList
  } elseif {$regCellsPerSlice == 4} {
    set_driver_bels_x4 $regCells $fanInCellList
  } elseif {$regCellsPerSlice == 2} {
    set_driver_bels_x2 $regCells $fanInCellList
  } elseif {$regCellsPerSlice == 1} {
    set_driver_bels_x1 $regCells $fanInCellList
  }

  # Assign the appropriate number of register cells and their associated fan-in
  # logic to each slice.
  set regCellCount 0
  set sliceCount 0
  set rlocList {}
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
# Generates a list of relative placement constraints for two interleaved
# register vectors. This includes placement constraints on the driver LUTs
# where possible. In the event that both registers at an interleaved position
# have driver LUTs, the logic associated with the first vector is constrained.
#
proc get_interleaved_vector_placement {regCells1 regCells2 rlocIndex} {

  # Always assigns interleaved vectors as 16 registers per slice.
  set regCellCount 0
  set sliceCount 0
  set rlocList {}
  foreach regCell1 $regCells1 regCell2 $regCells2 {
    set driverCell {}

    # Lock the register cells into interleaved BEL locations.
    if {$regCell1 != {}} {
      lappend rlocList [get_property NAME $regCell1]
      lappend rlocList "X${rlocIndex}Y${sliceCount}"
      set_fdre_bel1 $regCell1 $regCellCount
      set driverCell [cleanup_lut_driver_cell [get_driver_cell $regCell1]]
    }
    if {$regCell2 != {}} {
      lappend rlocList [get_property NAME $regCell2]
      lappend rlocList "X${rlocIndex}Y${sliceCount}"
      set_fdre_bel2 $regCell2 $regCellCount
      if {$driverCell == {}} {
        set driverCell [cleanup_lut_driver_cell [get_driver_cell $regCell2]]
      }
    }

    # Lock driver LUT for register cell 1 or 2, if possible.
    if {$driverCell != {}} {
      lappend rlocList [get_property NAME $driverCell]
      lappend rlocList "X${rlocIndex}Y${sliceCount}"
      set_lut_bel $driverCell $regCellCount
    }
    incr regCellCount
    if {$regCellCount >= 8} {
      set regCellCount 0
      incr sliceCount
    }
  }
  return $rlocList
}

#
# Generates a list of relative placement constraints for an array of LUT cells.
# This also includes generating BEL locking constraints.
#
proc get_lut_array_placement {lutCells rlocIndex} {
  set lutCellCount 0
  set sliceCount 0
  set rlocList {}
  foreach lutCell $lutCells {
    lappend rlocList [get_property NAME $lutCell]
    lappend rlocList "X${rlocIndex}Y${sliceCount}"
    set_lut_bel $lutCell $lutCellCount
    incr lutCellCount
    if {$lutCellCount >= 8} {
      set lutCellCount 0
      incr sliceCount
    }
  }
  return $rlocList
}

#
# Generates a list of relative placement constraints for a chain of carry cells.
# This also effectively constrains the LUT components which feed into the carry
# chain.
#
proc get_carry_chain_placement {carryCells rlocIndex} {
  set sliceCount 0
  set rlocList {}
  foreach carryCell $carryCells {
    lappend rlocList [get_property NAME $carryCell]
    lappend rlocList "X${rlocIndex}Y${sliceCount}"
    incr sliceCount
  }
  return $rlocList
}

#
# Apply constraints for a generic sub-component where all registers which match
# the specified pattern are to be included in the constraint set.
#
proc apply_sub_component_constraints {instance rlocIndex pattern} {
  set instanceName [get_property NAME $instance]
  set moduleName [get_property REF_NAME $instance]
  puts "Constraining ${instanceName} : ${moduleName}"

  # Get the data and optional enable registers as a single list.
  set cells [get_cells -quiet -hierarchical -filter "IS_PRIMITIVE && IS_SEQUENTIAL && PARENT == $instance"]
  set regCells [get_sorted_cells $cells $pattern]

  # Create the relative placement list for all the registers.
  set rlocList [get_vector_placement $regCells $rlocIndex]

  # Return relative placement list to be included in SELF variable macro.
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
  set rlocList [get_interleaved_vector_placement $regBCells $regACells $rlocIndex]

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
# Apply SELF multiplier constraints.
#
proc apply_self_op_mult_constraints {instance rlocIndex} {
  set instanceName [get_property NAME $instance]
  set moduleName [get_property REF_NAME $instance]
  puts "Constraining ${instanceName} : ${moduleName}"

  # Get the operand A, operand B and output register cells.
  set regCells [get_cells -quiet -hierarchical -filter "IS_PRIMITIVE && IS_SEQUENTIAL && PARENT == $instance"]
  set opARegCells [get_sorted_cells $regCells "*operandAData_q_reg\\\[*"]
  set opBRegCells [get_sorted_cells $regCells "*operandBData_q_reg\\\[*"]
  set outRegCells [get_sorted_cells $regCells "*resultData_q_reg\\\[*"]

  # Get the partial product LUT cells. These may be pushed into another instance
  # during synthesis, in which case we can't constrain them.
  set lutCells [get_cells -quiet -hierarchical -filter "IS_PRIMITIVE && REF_NAME =~ LUT* && PARENT == $instance"]
  set ppLutCells [get_sorted_cells $lutCells "*partialMultP3_q*"]

  # Get the result carry chain cells. These may be pushed into another instance
  # during synthesis, in which case we can't constrain them.
  set carryCells [get_cells -quiet -hierarchical -filter "IS_PRIMITIVE && REF_NAME =~ CARRY* && PARENT == $instance"]
  set outCarryCells [get_sorted_cells $carryCells "*"]

  # Create the relative placement list for those components which are still
  # part of the multiplier hierarchy.
  if {$opARegCells == {} && $opBRegCells == {}} {
    set rlocList {}
  } elseif {$opBRegCells == {}} {
    set rlocList [get_vector_placement $opARegCells $rlocIndex]
    incr rlocIndex
  } elseif {$opARegCells == {}} {
    set rlocList [get_vector_placement $opBRegCells $rlocIndex]
    incr rlocIndex
  } else {
    set rlocList [get_interleaved_vector_placement $opBRegCells $opARegCells $rlocIndex]
    incr rlocIndex
  }
  if {$ppLutCells != {}} {
    set rlocList [concat $rlocList [get_lut_array_placement $ppLutCells $rlocIndex]]
    incr rlocIndex
  }
  if {$outCarryCells != {}} {
    set rlocList [concat $rlocList [get_carry_chain_placement $outCarryCells $rlocIndex]]
    incr rlocIndex
  }
  if {$outRegCells != {}} {
    set rlocList [concat $rlocList [get_vector_placement $outRegCells $rlocIndex]]
  }

  # Create the relative placement macro.
  if {[llength $rlocList] != 0} {
    set macroName "rpm_${instanceName}"
    create_macro $macroName
    update_macro $macroName $rlocList
  }

  # Return empty set of relative placements.
  return {}
}
