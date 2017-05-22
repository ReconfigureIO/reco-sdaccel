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
# Get list of driver LUTs for a set of register cells.
#
proc get_driver_luts {fdreCells} {
  set lutCells {}
  foreach fdreCell $fdreCells {
    set driverNet [get_nets -segments -of_objects [get_pins $fdreCell/D]]
    set driverPin [get_pins -quiet -of_objects $driverNet -filter "REF_NAME =~ LUT* && DIRECTION == OUT"]

    # Net must be driven 1:1 by a LUT which isn't already constrained or part
    # of a combined LUT.
    if {$driverPin == {}} {
      set driverCell {}
    } else {
      set driverCellName [get_property NAME [get_cells -of_object $driverPin]]
      set driverCell [get_cells -quiet $driverCellName]
      set currentLnm [get_property HLUTNM $driverCell]
      set currentBel [get_property BEL $driverCell]
      if {$currentLnm != {} || $currentBel != {}} {
        set driverCell {}
      }
      set loadPins [get_pins -quiet -of_objects $driverNet -filter "IS_PRIMITIVE && DIRECTION == IN"]
      if {[llength $loadPins] != 1} {
        set driverCell {}
      }
    }
    lappend lutCells $driverCell
  }
  return $lutCells
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
# Apply SELF fork control constraints.
#
proc apply_self_fork_control_constraints {instance rlocIndex} {
  set instanceName [get_property NAME $instance]
  set moduleName [get_property REF_NAME $instance]
  puts "Constraining ${instanceName} : ${moduleName}"

  # Get the register instance list.
  set cells [get_cells -quiet -hierarchical -filter "IS_PRIMITIVE && IS_SEQUENTIAL && PARENT == $instance"]
  set ctrlRegCells [get_sorted_cells $cells "*_q_reg\\\[*"]
  set ctrlLutCells [get_driver_luts $ctrlRegCells]

  # Create the relative placement list for the control registers.
  set rlocList {}
  set belCount 0
  set sliceCount 0

  foreach regCell $ctrlRegCells lutCell $ctrlLutCells {
    if {$regCell != {}} {
      lappend rlocList [get_property NAME $regCell]
      lappend rlocList "X${rlocIndex}Y${sliceCount}"
      set_fdre_bel1 $regCell $belCount
    }
    if {$lutCell != {}} {
      lappend rlocList [get_property NAME $lutCell]
      lappend rlocList "X${rlocIndex}Y${sliceCount}"
      set_lut_bel $lutCell $belCount
    }

    if {$belCount == 7} {
      set belCount 0
      incr sliceCount
    } else {
      incr belCount
    }
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
# Apply SELF buffer constraints for W1R1T form.
#
proc apply_self_buffer_w1r1t_constraints {instance rlocIndex} {
  set instanceName [get_property NAME $instance]
  set moduleName [get_property REF_NAME $instance]
  puts "Constraining ${instanceName} : ${moduleName}"

  # Get the register instance list.
  set cells [get_cells -quiet -hierarchical -filter "IS_PRIMITIVE && IS_SEQUENTIAL && PARENT == $instance"]
  set dataRegCells [get_sorted_cells $cells "*dataReg_q_reg\\\[*"]
  set dataLutCells [get_driver_luts $dataRegCells]

  # Create the relative placement list for the data register.
  set rlocList {}
  set belCount 0
  set sliceCount 0

  foreach regCell $dataRegCells lutCell $dataLutCells {

    # Fix data register positions if possible.
    if {$regCell != {}} {
      lappend rlocList [get_property NAME $regCell]
      lappend rlocList "X${rlocIndex}Y${sliceCount}"
      set_fdre_bel1 $regCell $belCount
    }

    # Fix the input LUT positions if possible.
    if {$lutCell != {}} {
      lappend rlocList [get_property NAME $lutCell]
      lappend rlocList "X${rlocIndex}Y${sliceCount}"
      set_lut_bel $lutCell $belCount
    }

    if {$belCount == 7} {
      set belCount 0
      incr sliceCount
    } else {
      incr belCount
    }
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
  set regBLuts [get_driver_luts $regBCells]

  # Create the relative placement list for register A and register B.
  set rlocList {}
  set belCount 0
  set sliceCount 0

  foreach regACell $regACells regBCell $regBCells regBLut $regBLuts {

    # Fix register A positions if possible.
    if {$regACell != {}} {
      lappend rlocList [get_property NAME $regACell]
      lappend rlocList "X${rlocIndex}Y${sliceCount}"
      set_fdre_bel1 $regACell $belCount
    }

    # Fix register B positions if possible.
    if {$regBCell != {}} {
      lappend rlocList [get_property NAME $regBCell]
      lappend rlocList "X${rlocIndex}Y${sliceCount}"
      set_fdre_bel2 $regBCell $belCount
    }

    # Fix the register B input LUT positions if possible.
    if {$regBLut != {}} {
      lappend rlocList [get_property NAME $regBLut]
      lappend rlocList "X${rlocIndex}Y${sliceCount}"
      set_lut_bel $regBLut $belCount
    }

    if {$belCount == 7} {
      set belCount 0
      incr sliceCount
    } else {
      incr belCount
    }
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
# Apply SELF variable component constraints.
#
proc apply_self_var_scalar_constraints {instance rlocIndex} {
  set instanceName [get_property NAME $instance]
  set moduleName [get_property REF_NAME $instance]
  puts "Constraining ${instanceName} : ${moduleName}"

  # Get the data and optional enable registers as a single list.
  set cells [get_cells -quiet -hierarchical -filter "IS_PRIMITIVE && IS_SEQUENTIAL && PARENT == $instance"]
  set regCells [get_sorted_cells $cells "*_q_reg\\\[*"]
  set lutCells [get_driver_luts $regCells]

  # Create the relative placement list for the write and enable registers.
  set rlocList {}
  set belCount 0
  set sliceCount 0

  foreach regCell $regCells lutCell $lutCells {

    # Fix register positions if possible.
    if {$regCell != {}} {
      lappend rlocList [get_property NAME $regCell]
      lappend rlocList "X${rlocIndex}Y${sliceCount}"
      set_fdre_bel1 $regCell $belCount
    }

    # Fix the input LUT positions if possible.
    if {$lutCell != {}} {
      lappend rlocList [get_property NAME $lutCell]
      lappend rlocList "X${rlocIndex}Y${sliceCount}"
      set_lut_bel $lutCell $belCount
    }

    if {$belCount == 7} {
      set belCount 0
      incr sliceCount
    } else {
      incr belCount
    }
  }

  # Return relative placement list to be included in SELF variable macro.
  return $rlocList
}

