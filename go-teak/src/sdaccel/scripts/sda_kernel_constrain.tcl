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
  foreach top_cell [get_cells -filter "!IS_PRIMITIVE"] {
    apply_constraints $top_cell
  }

  # Write out the generated relative placement constraints.
  write_xdc -force -exclude_timing "${moduleName}.xdc"
}

#
# Recursively applies constraints to hierarchical instances.
#
proc apply_constraints {instance} {
  set module_name [get_property REF_NAME $instance]

  # Determine if the current instance is a SELF buffer that can have constraints
  # applied.
  if [string match "*selfW2R1Buffer*" $module_name] {
    apply_self_buffer_w2r1_constraints $instance

  # Attempt to apply constraints to child instances.
  } else {
    set child_cells [get_cells -quiet -hierarchical -filter "!IS_PRIMITIVE && PARENT == $instance"]
    foreach child_cell $child_cells {
      apply_constraints $child_cell
    }
  }
}

#
# Sort all cells in a list which match the specified pattern.
#
proc get_sorted_cells {cells pattern} {
  set filtered_cells {}
  foreach cell $cells {
    set cell_name [get_property NAME $cell]
    if [string match $pattern $cell_name] {
      lappend filtered_cells $cell
    }
  }
  return [lsort -dictionary $filtered_cells]
}

#
# Set the BEL property on a register cell.
#
proc set_fdre_bel {reg_cell offset} {
  if {$offset == 0} {
    set_property BEL AFF $reg_cell
  } elseif {$offset == 1} {
    set_property BEL BFF $reg_cell
  } elseif {$offset == 2} {
    set_property BEL CFF $reg_cell
  } elseif {$offset == 3} {
    set_property BEL DFF $reg_cell
  } elseif {$offset == 4} {
    set_property BEL EFF $reg_cell
  } elseif {$offset == 5} {
    set_property BEL FFF $reg_cell
  } elseif {$offset == 6} {
    set_property BEL GFF $reg_cell
  } elseif {$offset == 7} {
    set_property BEL HFF $reg_cell
  }
}

#
# Apply SELF buffer constraints for W2R1 form.
#
proc apply_self_buffer_w2r1_constraints {instance} {
  set instance_name [get_property NAME $instance]
  set module_name [get_property REF_NAME $instance]
  puts "Constraining $instance_name : $module_name"

  # Get the register A and register B instance lists.
  set cells [get_cells -quiet -hierarchical -filter "REF_NAME == FDRE && PARENT == $instance"]
  set reg_a_cells [get_sorted_cells $cells "*dataRegA_q_reg\\\[*"]
  set reg_b_cells [get_sorted_cells $cells "*dataRegB_q_reg\\\[*"]

  # Create the relative placement list for register A and register B.
  set rloc_list {}
  set bel_count 0
  set slice_count 0

  foreach reg_a_cell $reg_a_cells reg_b_cell $reg_b_cells {

    # Fix register A positions if possible.
    if {$reg_a_cell != {}} {
      lappend rloc_list [get_property NAME $reg_a_cell]
      lappend rloc_list "X0Y$slice_count"
      set_fdre_bel $reg_a_cell $bel_count
    }

    # Fix register B positions if possible.
    if {$reg_b_cell != {}} {
      lappend rloc_list [get_property NAME $reg_b_cell]
      lappend rloc_list "X1Y$slice_count"
      set_fdre_bel $reg_b_cell $bel_count
    }

    if {$bel_count == 7} {
      set bel_count 0
      incr slice_count
    } else {
      incr bel_count
    }
  }

  # Create the relative placement macro.
  if {[llength $rloc_list] != 0} {
    set macro_name "rpm_$instance_name"
    create_macro $macro_name
    update_macro $macro_name $rloc_list
  }
}

