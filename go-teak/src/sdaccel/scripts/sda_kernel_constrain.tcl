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

  # Determine if the current instance is a shift operation.
  } elseif [string match "*selfShift*" $moduleName] {
    set rlocList [apply_self_op_shift_constraints $instance $rlocIndex]

  # Determine if the current instance is an unsigned division component.
  } elseif [string match "*selfDivUnsigned*" $moduleName] {
    set rlocList [apply_self_op_udiv_constraints $instance $rlocIndex]

  # Determine if the current instance is a signed division component.
  } elseif [string match "*selfDivSigned*" $moduleName] {
    set rlocList [apply_self_op_sdiv_constraints $instance $rlocIndex]

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
proc cleanup_lut_cell {lutCell} {
  if [string match "LUT?" [get_property REF_NAME $lutCell]] {
    if {[get_property HLUTNM $lutCell] != {}} {
      set_property HLUTNM {} $lutCell
    }
    if {[get_property SOFT_HLUTNM $lutCell] != {}} {
      set_property SOFT_HLUTNM {} $lutCell
    }
    if {[get_property RLOC $lutCell] != {}} {
      return {}
    } else {
      set lutCellName [get_property NAME $lutCell]
      return [get_cell $lutCellName]
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
  set lutDriverCell [cleanup_lut_cell $driverCell]
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
# Implements BEL locking for register cells when they are a direct pipeline
# stage.
#
proc set_pipeline_bels_x8 {regCells} {
  set regCellCount 0
  foreach regCell $regCells {
    set_fdre_bel2 $regCell $regCellCount
    if {$regCellCount == 7} {
      set regCellCount 0
    } else {
      incr regCellCount
    }
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
# Perform a check on all specified register cells to ensure that they have the
# same SR and CE inputs, such that they can be placed in the same column of
# slices.
#
proc check_vector_valid {regCells} {
  set srDriverNet {}
  set ceDriverNet {}

  foreach regCell $regCells {
    set srPin [get_pins $regCell/SR]
    if {$srPin != {}} {
      set srNet [get_nets -of_objects $srPin]
      if {$srDriverNet == {}} {
        set srDriverNet $srNet
      } elseif {$srDriverNet != $srNet} {
        puts "Mismatched vector SR drivers for $regCell ($srNet $srDriverNet)"
        return 0
      }
    }
    set cePin [get_pins $regCell/CE]
    if {$cePin != {}} {
      set ceNet [get_nets -of_objects $cePin]
      if {$ceDriverNet == {}} {
        set ceDriverNet $ceNet
      } elseif {$ceDriverNet != $ceNet} {
        puts "Mismatched vector CE drivers for $regCell ($ceNet $ceDriverNet)"
        return 0
      }
    }
  }
  return 1
}

#
# Generates a list of relative placement constraints for a vector segment of
# register cells. This also includes constraints on the register input LUTs if
# possible.
# The number of registers packed into each slice is as follows:
#   8 - If no register inputs are sourced from LUTs.
#   8 - If at least one register input is sourced from a standard LUT.
#   4 - If at least one register input is sourced from an F7 LUT MUX.
#   2 - If at least one register input is sourced from an F8 LUT MUX.
#   1 - If at least one register input is sourced from an F9 LUT MUX.
# Note that in order to allow registers without LUT drivers to be interleaved
# with registers that are driven by LUTs, these use FDRE BEL position 2, where
# all other forms use FDRE BEL position 1.
#
proc get_vector_segment_placement {regCells rlocXIndex rlocYIndexName} {
  upvar 1 $rlocYIndexName rlocYIndex
  set fanInCellList {}
  set isDirectPipeline 1
  set regCellsPerSlice 8

  # Don't attempt to constrain vectors with mismatched SR or CE drivers.
  if {[check_vector_valid $regCells] == 0} {
    return {}
  }

  # Create a list of driver cells for each register cell.
  foreach regCell $regCells {
    set driverCell [get_driver_cell $regCell]
    set fanInCells [get_fan_in_cells $driverCell]
    lappend fanInCellList $fanInCells

    # Get number of register cells per slice, based on the driver cell type.
    if {$fanInCells != {}} {
      set driverCellType [get_property REF_NAME $driverCell]
      if [string match "LUT?" $driverCellType] {
        set isDirectPipeline 0
        if {$regCellsPerSlice > 8} {
          set regCellsPerSlice 8
        }
      } elseif [string match "MUXF7" $driverCellType] {
        set isDirectPipeline 0
        if {$regCellsPerSlice > 4} {
          set regCellsPerSlice 4
        }
      } elseif [string match "MUXF8" $driverCellType] {
        set isDirectPipeline 0
        if {$regCellsPerSlice > 2} {
          set regCellsPerSlice 2
        }
      } elseif [string match "MUXF9" $driverCellType] {
        set isDirectPipeline 0
        if {$regCellsPerSlice > 1} {
          set regCellsPerSlice 1
        }
      }
    }
  }

  # Apply BEL constraints to register cells and their immediate LUT drivers.
  if {$isDirectPipeline != 0} {
    set_pipeline_bels_x8 $regCells
  } elseif {$regCellsPerSlice == 8} {
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
  set sliceCount $rlocYIndex
  set rlocList {}
  foreach regCell $regCells fanInCells $fanInCellList {
    lappend rlocList [get_property NAME $regCell]
    lappend rlocList "X${rlocXIndex}Y${sliceCount}"
    foreach fanInCell $fanInCells {
      lappend rlocList [get_property NAME $fanInCell]
      lappend rlocList "X${rlocXIndex}Y${sliceCount}"
    }
    incr regCellCount
    if {$regCellCount >= $regCellsPerSlice} {
      set regCellCount 0
      incr sliceCount
    }
  }
  if {$regCellCount != 0} {
    incr sliceCount
  }
  set rlocYIndex $sliceCount
  return $rlocList
}

#
# Gets the placement for a single contiguous vector of register cells.
#
proc get_vector_placement {regCells rlocIndex} {
  set rlocYIndex 0
  set rlocList [get_vector_segment_placement $regCells $rlocIndex rlocYIndex]
  return $rlocList
}

#
# Gets the placement for a vector of register cells consisting of a number of
# independent segments. This allows register cells with different CE and SR
# handling to be included in the same vector location.
#
proc get_segmented_vector_placement {regCellSegments rlocIndex} {
  set rlocYIndex 0
  set rlocList {}
  foreach regCellSet $regCellSegments {
    set rlocList [concat $rlocList [
      get_vector_segment_placement $regCellSet $rlocIndex rlocYIndex]]
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
  foreach candidateCell $lutCells {
    set lutCell [cleanup_lut_cell $candidateCell]
    if {$lutCell != {}} {
      lappend rlocList [get_property NAME $lutCell]
      lappend rlocList "X${rlocIndex}Y${sliceCount}"
      set_lut_bel $lutCell $lutCellCount
      incr lutCellCount
      if {$lutCellCount >= 8} {
        set lutCellCount 0
        incr sliceCount
      }
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
  set rlocList {}
  if {$regACells != {}} {
    set rlocList [concat $rlocList [get_vector_placement $regACells $rlocIndex]]
    incr rlocIndex
  }
  if {$regBCells != {}} {
    set rlocList [concat $rlocList [get_vector_placement $regBCells $rlocIndex]]
    incr rlocIndex
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

  # Create the relative placement list for those operand inputs which are still
  # part of the multiplier hierarchy.
  set rlocList {}
  if {$opARegCells != {}} {
    set rlocList [concat $rlocList [get_vector_placement $opARegCells $rlocIndex]]
    incr rlocIndex
  }
  if {$opBRegCells != {}} {
    set rlocList [concat $rlocList [get_vector_placement $opBRegCells $rlocIndex]]
    incr rlocIndex
  }

  # Create the reslative placement list for the combinatorial logic and output
  # registers which are still part of the multiplier hierarchy.
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

#
# Applies SELF shift operator constraints.
#
proc apply_self_op_shift_constraints {instance rlocIndex} {
  set instanceName [get_property NAME $instance]
  set moduleName [get_property REF_NAME $instance]
  puts "Constraining ${instanceName} : ${moduleName}"

  # Get the barrel shifter input register cells.
  set regCells [get_cells -quiet -hierarchical -filter "IS_PRIMITIVE && IS_SEQUENTIAL && PARENT == $instance"]
  set opRegCells [get_sorted_cells $regCells "*operandData_q_reg\\\[*"]
  set saRegCells [get_sorted_cells $regCells "*shiftAmount_q_reg\\\[*"]
  set saRegCells [concat $saRegCells [get_sorted_cells $regCells "*postShiftBits_q_reg\\\[*"]]

  # Get the output register cells. These are split into two segments due to
  # potential differences in reset handling.
  set olRegCells [get_sorted_cells $regCells "*resultDataLow_q_reg\\\[*"]
  set ohRegCells [get_sorted_cells $regCells "*resultDataHigh_q_reg\\\[*"]

  # Get the LUTs which form multiple layers of combinatorial logic.
  set lutCells [get_cells -quiet -hierarchical -filter "IS_PRIMITIVE && REF_NAME =~ LUT* && PARENT == $instance"]
  set lutCellsL2 [get_sorted_cells $lutCells "*resultData*_i_2"]
  set lutCellsL3 [get_sorted_cells $lutCells "*resultData*_i_3"]

  # Build the relative placement list for the input registers.
  set rlocList {}
  if {$opRegCells != {}} {
    set rlocList [concat $rlocList [get_vector_placement $opRegCells $rlocIndex]]
    incr rlocIndex
  }
  if {$saRegCells != {}} {
    set rlocList [concat $rlocList [get_vector_placement $saRegCells $rlocIndex]]
    incr rlocIndex
  }

  # Build the relative placement list for the combinatorial logic.
  if {$lutCellsL3 != {}} {
    set rlocList [concat $rlocList [get_lut_array_placement $lutCellsL3 $rlocIndex]]
    incr rlocIndex
  }
  if {$lutCellsL2 != {}} {
    set rlocList [concat $rlocList [get_lut_array_placement $lutCellsL2 $rlocIndex]]
    incr rlocIndex
  }

  # Build the relative placement list for the output registers.
  if {$olRegCells != {} && $ohRegCells != {}} {
    set segmentList {}
    lappend segmentList $olRegCells $ohRegCells
    set rlocList [concat $rlocList [get_segmented_vector_placement $segmentList $rlocIndex]]
    incr rlocIndex
  } elseif {$olRegCells != {}} {
    set rlocList [concat $rlocList [get_vector_placement $olRegCells $rlocIndex]]
    incr rlocIndex
  } elseif {$ohRegCells != {}} {
    set rlocList [concat $rlocList [get_vector_placement $ohRegCells $rlocIndex]]
    incr rlocIndex
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

#
# Get common constraints for both signed and unsigned division.
#
proc create_common_div_constraints {instance rlocIndexName} {
  upvar 1 $rlocIndexName rlocIndex

  # Get the common division register cells.
  set regCells [get_cells -quiet -hierarchical -filter "IS_PRIMITIVE && IS_SEQUENTIAL && PARENT == $instance"]
  set divdRegCells [get_sorted_cells $regCells "*dividendData_q_reg\\\[*"]
  set divsRegCells [get_sorted_cells $regCells "*divisorData_q_reg\\\[*"]
  set currentDivsRegCells [get_sorted_cells $regCells "*currentDivisor_q_reg\\\[*"]
  set shiftLowRegCells [get_sorted_cells $regCells "*shiftValueLow_q_reg\\\[*"]
  set shiftHighRegCells [get_sorted_cells $regCells "*shiftValueHigh_q_reg\\\[*"]
  set quotientRegCells [get_sorted_cells $regCells "*quotientValue_q_reg\\\[*"]
  set resultDivRegCells [get_sorted_cells $regCells "*resultDivData_q_reg\\\[*"]
  set resultModRegCells [get_sorted_cells $regCells "*resultModData_q_reg\\\[*"]

  # Create the relative placement list for the operand inputs.
  set rlocList {}
  if {$divdRegCells != {}} {
    set rlocList [concat $rlocList [get_vector_placement $divdRegCells $rlocIndex]]
    incr rlocIndex
  }
  if {$divsRegCells != {}} {
    set rlocList [concat $rlocList [get_vector_placement $divsRegCells $rlocIndex]]
    incr rlocIndex
  }

  # Create the relative placement list for the internal state signals.
  if {$currentDivsRegCells != {}} {
    set rlocList [concat $rlocList [get_vector_placement $currentDivsRegCells $rlocIndex]]
    incr rlocIndex
  }
  if {$shiftLowRegCells != {}} {
    set rlocList [concat $rlocList [get_vector_placement $shiftLowRegCells $rlocIndex]]
    incr rlocIndex
  }
  if {$shiftHighRegCells != {}} {
    set rlocList [concat $rlocList [get_vector_placement $shiftHighRegCells $rlocIndex]]
    incr rlocIndex
  }
  if {$quotientRegCells != {}} {
    set rlocList [concat $rlocList [get_vector_placement $quotientRegCells $rlocIndex]]
    incr rlocIndex
  }

  # Create the relative placement list for the result registers.
  if {$resultDivRegCells != {}} {
    set rlocList [concat $rlocList [get_vector_placement $resultDivRegCells $rlocIndex]]
    incr rlocIndex
  }
  if {$resultModRegCells != {}} {
    set rlocList [concat $rlocList [get_vector_placement $resultModRegCells $rlocIndex]]
    incr rlocIndex
  }
  return $rlocList
}

#
# Apply unsigned division constraints.
#
proc apply_self_op_udiv_constraints {instance rlocIndex} {
  set instanceName [get_property NAME $instance]
  set moduleName [get_property REF_NAME $instance]
  puts "Constraining ${instanceName} : ${moduleName}"

  # Create the relative placement macro.
  set rlocList [create_common_div_constraints $instance rlocIndex]
  if {[llength $rlocList] != 0} {
    set macroName "rpm_${instanceName}"
    create_macro $macroName
    update_macro $macroName $rlocList
  }

  # Return empty set of relative placements.
  return {}
}

#
# Apply signed division constraints.
#
proc apply_self_op_sdiv_constraints {instance rlocIndex} {
  set instanceName [get_property NAME $instance]
  set moduleName [get_property REF_NAME $instance]
  puts "Constraining ${instanceName} : ${moduleName}"

  # Get the signed division register cells.
  set regCells [get_cells -quiet -hierarchical -filter "IS_PRIMITIVE && IS_SEQUENTIAL && PARENT == $instance"]
  set divdRegCells [get_sorted_cells $regCells "*dividendData_q_reg\\\[*"]
  set divsRegCells [get_sorted_cells $regCells "*divisorData_q_reg\\\[*"]
  set resultDivRegCells [get_sorted_cells $regCells "*resultDivData_q_reg\\\[*"]
  set resultModRegCells [get_sorted_cells $regCells "*resultModData_q_reg\\\[*"]

  # Create the relative placement list for the operand inputs.
  set rlocList {}
  if {$divdRegCells != {}} {
    set rlocList [concat $rlocList [get_vector_placement $divdRegCells $rlocIndex]]
    incr rlocIndex
  }
  if {$divsRegCells != {}} {
    set rlocList [concat $rlocList [get_vector_placement $divsRegCells $rlocIndex]]
    incr rlocIndex
  }

  # Get constraints for underlying unsigned division component.
  set divuInstance [get_cells -quiet -hierarchical -filter "REF_NAME =~ *selfDivUnsigned* && PARENT == $instance"]
  set rlocList [concat $rlocList [create_common_div_constraints $divuInstance rlocIndex]]

  # Create the relative placement list for the result registers.
  if {$resultDivRegCells != {}} {
    set rlocList [concat $rlocList [get_vector_placement $resultDivRegCells $rlocIndex]]
    incr rlocIndex
  }
  if {$resultModRegCells != {}} {
    set rlocList [concat $rlocList [get_vector_placement $resultModRegCells $rlocIndex]]
    incr rlocIndex
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
