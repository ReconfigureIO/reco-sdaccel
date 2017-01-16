#
# (c) 2017 Xilinx
# (c) 2017 ReconfigureIO
#
# <COPYRIGHT TERMS>
#

#
# Provides a set of TCL utility commands extracted from the standard SDAccel
# build process. These are reused here for packaging the ReconfigureIO kernel
# implementations for use in the SDAccel framework.
#

package require math::bignum

#
# Something to do with register field width dependencies.
#
proc set_dependent { name value obj } {
    # {{{
   # are there any operators in the value field?
   # No, set as immediate
   # Yes, set as xpath expr
   if { [string first < $value ] != -1 || \
        [string first > $value ] != -1 || \
        [string first - $value ] != -1 || \
        [string first + $value ] != -1 || \
        [string first / $value ] != -1 || \
        [string first * $value ] != -1 } {
     set_property ${name}_dependency [ ipx::get_xpath_expression $value [ipx::current_core] ] $obj
     set_property ${name}_format long $obj
   } else {
     set_property ${name} $value $obj
     set_property ${name}_format long $obj
   }
    # }}}
}

#
# Sets register access behaviour.
#
proc set_access { access obj {is_field 0}} {
    # {{{
  # read-only, write-only, read-write, writeOnce, read-writeOnce 
  if        { $access eq "RW" } {
             set_property access "read-write" $obj
             if {$is_field} {
               set_property modified_write_value modify $obj 
             }
  } elseif { $access eq "R" } {
             set_property access "read-only" $obj
             if {$is_field} {
               set_property read_action modify $obj 
             }
  } elseif { $access eq "W" } {
             set_property access "write-only" $obj
  } elseif { $access eq "WO" } {
             set_property access "writeOnce" $obj
  } elseif { $access eq "RWO" } {
             set_property access "read-writeOnce" $obj
  } elseif { $access eq "RTOW" } {
             set_property access "read-only" $obj 
             if {$is_field} {
               set_property modified_write_value oneToToggle $obj 
               set_property read_action modify $obj 
             }
  } else {
    puts "Unmatched access type \"$access\""
  }

    # }}}
}

#
# Adds a block of registers specified in the 'registers' map to the memory map
# correspondng to the specified AXI bus name.
#
proc add_registers {registers memory_map_name} {
    # {{{
    set memory_maps [ ipx::get_memory_maps -quiet -of_objects [ ipx::current_core ] ] 
    if { $memory_maps eq "" } {
      set slaves_axi [ ipx::get_bus_interfaces -filter { ABSTRACTION_TYPE_NAME==aximm_rtl && interface_mode==slave } -of_objects [ ipx::current_core ] ]
      set slave_axi [ lindex $slaves_axi 0  ] 
      set memory_map [ ipx::add_memory_map [ get_property name $slave_axi ] [ipx::current_core ] ]
      # and point back to this memory map
      set_property  slave_memory_map_ref [get_property name $memory_map ] $slave_axi 
    } else {
      foreach memory_map_item $memory_maps {
        set memory_map_item_name [get_property name $memory_map_item]
        if {$memory_map_name eq $memory_map_item_name} {
          set memory_map $memory_map_item
        }
      }
    }
    
    set address_blocks [ ipx::get_address_blocks -quiet -of_objects $memory_map ]
    if { $address_blocks eq "" } {
      set address_block [ ipx::add_address_block [get_property name $memory_map ] $memory_map ]
      set_property base_address 0 $address_block 
      set_property range 4096 $address_block 
      set_property width 8 $address_block 
    } else {
      set address_block [ lindex $address_blocks 0 ]
    }
    
    
    foreach reg $registers {
      set offset [ lindex $reg 0 ]
      set name   [ lindex $reg 1 ]
      set access [ lindex $reg 2 ]
      set reset_val [ lindex $reg 3 ]
      set descr  [ lindex $reg 4 ]
      set fields  [ lindex $reg 5 ]
    
      # puts "Register line: [join $reg \"]"
    
      # compare offset and address range, if offset > default address rang(64k), we should expand the address range
      set address_range  [get_property range $address_block]
      set offset_value [::math::bignum::tostr  [ ::math::bignum::fromstr $offset ] ]
      while {$address_range <= $offset_value} {
          set address_range [expr $address_range * 2]
      }
    
      set_property range $address_range $address_block
      set ipx_reg [ ipx::add_register $name $address_block ]
      set_property address_offset $offset_value $ipx_reg 
      set_property size 32 $ipx_reg 
      set_property size_format long $ipx_reg 
      set_property reset_value  [::math::bignum::tostr [ ::math::bignum::fromstr $reset_val ] ] $ipx_reg 
      set_property reset_value_format long $ipx_reg 
      set_property description $descr $ipx_reg 
      set_property display_name $name $ipx_reg 
    
      # read-only, write-only, read-write, writeOnce, read-writeOnce 
      set_access $access $ipx_reg
    
      foreach field $fields {
         # puts "  field line: [join $field \"]"
         set offset [ lindex $field 0 ]
         set width [ lindex $field 1 ]
         set name [ lindex $field 2 ]
         set access [ lindex $field 3 ]
         set reset_value [ lindex $field 4 ]
         set description [ lindex $field 5 ]
    
         set ipx_field [ ipx::add_field $name $ipx_reg ]
         set_property bit_offset $offset $ipx_field
    
         set_dependent bit_width $width $ipx_field
         set_access $access $ipx_field 1
    
         #  set_property reset_value  [::math::bignum::tostr [ ::math::bignum::fromstr $offset ] ] $ipx_field 
         # set_property reset_value_format long $ipx_field 
         set_property description $description $ipx_field 
      }
    
    }

    # }}}
}

