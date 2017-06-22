#
# (c) 2017 ReconfigureIO
#
# <COPYRIGHT TERMS>
#

#
# Generate reports of kernel resource usage for end-user feedback.
# Produces structured JSON for use in the API.
#
proc sda_kernel_report {moduleName partName} {
  sda_kernel_report_summary $moduleName $partName
  sda_kernel_report_hierarchy $moduleName $partName
}

#
# Processes a summary table row, returning a list of key/value pairs for the
# various entries.
#
proc parse_summary_table_row {tableRow} {
  set columns [split $tableRow "|"]
  set kvDescription [list "&" "description" [string trim [lindex $columns 1] " *"]]
  set kvUsed [list "%" "used" [string trim [lindex $columns 2]]]
  set kvAvailable [list "%" "available" [string trim [lindex $columns 3]]]
  set kvUtilisation [list "%" "utilisation" [string trim [lindex $columns 4] " <"]]
  return [list $kvDescription $kvUsed $kvAvailable $kvUtilisation]
}

#
# Generates utilisation summary report.
#
proc sda_kernel_report_summary {moduleName partName} {

  # Specify the relative weightings of the different resources.
  set utilWeightReg 1
  set utilWeightLut 4
  set utilWeightDsp 64
  set utilWeightBram 256
  set utilWeightUram 1024

  # Specify the list of hierarchical key/value pairs for the report.
  set kvModuleName [list "&" "moduleName" $moduleName]
  set kvDeviceName [list "&" "partName" $partName]
  set kvList [list $kvModuleName $kvDeviceName]

  # Track the current report parsing phase.
  set parsingPhase 1
  set lineCount 0
  set utilNumerator 0
  set utilDenominator 0

  # Capture the Vivado utilisation report as a TCL string and iterate over each
  # line in the report.
  set report [report_utilization -quiet -return_string -no_primitives -omit_locs]
  foreach reportLine [split $report "\n"] {

    # Discard header and contents section.
    if {$parsingPhase == 1} {
      if {$lineCount < 27} {
        incr lineCount
      } else {
        incr parsingPhase
        set lineCount 0
      }

    # Extract the numbers for the CLB logic section.
    } elseif {$parsingPhase == 2} {
      if {$reportLine == "1. CLB Logic"} {
        set toplevelList {}
        set detailList {}
        set lineCount 0
      } else {
        incr lineCount
      }
      if {$lineCount == 6} {
        set toplevelList [parse_summary_table_row $reportLine]
        set lutsUsed [lindex [lindex $toplevelList 1] 2]
        set lutsAvailable [lindex [lindex $toplevelList 2] 2]
        incr utilNumerator [expr $utilWeightLut * $lutsUsed]
        incr utilDenominator [expr $utilWeightLut * $lutsAvailable]
      } elseif {$lineCount == 7} {
        set lutLogicList [parse_summary_table_row $reportLine]
        lappend detailList [list "@" "lutLogic" $lutLogicList]
      } elseif {$lineCount == 8} {
        set lutMemoryList [parse_summary_table_row $reportLine]
        lappend detailList [list "@" "lutMemory" $lutMemoryList]
        lappend toplevelList [list "@" "detail" $detailList]
        lappend kvList [list "@" "lutSummary" $toplevelList]
        set toplevelList {}
        set detailList {}
      } elseif {$lineCount == 11} {
        set toplevelList [parse_summary_table_row $reportLine]
        set regsUsed [lindex [lindex $toplevelList 1] 2]
        set regsAvailable [lindex [lindex $toplevelList 2] 2]
        incr utilNumerator [expr $utilWeightReg * $regsUsed]
        incr utilDenominator [expr $utilWeightReg * $regsAvailable]
      } elseif {$lineCount == 12} {
        set regFlopList [parse_summary_table_row $reportLine]
        lappend detailList [list "@" "regFlipFlop" $regFlopList]
      } elseif {$lineCount == 13} {
        set regLatchList [parse_summary_table_row $reportLine]
        lappend detailList [list "@" "regLatch" $regLatchList]
        lappend toplevelList [list "@" "detail" $detailList]
        lappend kvList [list "@" "regSummary" $toplevelList]
      } elseif {$lineCount == 19} {
        incr parsingPhase
      }

    # Extract the numbers for the block RAM section
    } elseif {$parsingPhase == 3} {
      if {$reportLine == "2. BLOCKRAM"} {
        set toplevelList {}
        set detailList {}
        set lineCount 0
      } else {
        incr lineCount
      }
      if {$lineCount == 6} {
        set toplevelList [parse_summary_table_row $reportLine]
        set bramUsed [lindex [lindex $toplevelList 1] 2]
        set bramAvailable [lindex [lindex $toplevelList 2] 2]
        incr utilNumerator [expr $utilWeightBram * $bramUsed]
        incr utilDenominator [expr $utilWeightBram * $bramAvailable]
      } elseif {$lineCount == 7} {
        set lutLogicList [parse_summary_table_row $reportLine]
        lappend detailList [list "@" "blockRamB36" $lutLogicList]
      } elseif {$lineCount == 8} {
        set lutMemoryList [parse_summary_table_row $reportLine]
        lappend detailList [list "@" "blockRamB18" $lutMemoryList]
        lappend toplevelList [list "@" "detail" $detailList]
        lappend kvList [list "@" "blockRamSummary" $toplevelList]
        set toplevelList {}
        set detailList {}
      } elseif {$lineCount == 9} {
        set toplevelList [parse_summary_table_row $reportLine]
        set uramUsed [lindex [lindex $toplevelList 1] 2]
        set uramAvailable [lindex [lindex $toplevelList 2] 2]
        incr utilNumerator [expr $utilWeightUram * $uramUsed]
        incr utilDenominator [expr $utilWeightUram * $uramAvailable]
        lappend kvList [list "@" "ultraRamSummary" $toplevelList]
      } elseif {$lineCount == 11} {
        incr parsingPhase
      }

    # Extract the numbers for the DSP section.
    } elseif {$parsingPhase == 4} {
      if {$reportLine == "3. ARITHMETIC"} {
        set lineCount 0
      } else {
        incr lineCount
      }
      if {$lineCount == 6} {
        set toplevelList [parse_summary_table_row $reportLine]
        set dspsUsed [lindex [lindex $toplevelList 1] 2]
        set dspsAvailable [lindex [lindex $toplevelList 2] 2]
        incr utilNumerator [expr $utilWeightDsp * $dspsUsed]
        incr utilDenominator [expr $utilWeightDsp * $dspsAvailable]
        lappend kvList [list "@" "dspBlockSummary" $toplevelList]
      } elseif {$lineCount == 8} {
        incr parsingPhase
      }
    }
  }

  # Append the weighted aggregate utilisation.
  set kvDescription [list "&" "description" "Weighted Average"]
  set kvUsed [list "%" "used" $utilNumerator]
  set kvAvailable [list "%" "available" $utilDenominator]
  set kvUtilisation [list "%" "utilisation" [
    expr round (10000.0 * $utilNumerator / $utilDenominator) / 100.0]]
  set weightedAverageList [list $kvDescription $kvUsed $kvAvailable $kvUtilisation]
  lappend kvList [list "@" "weightedAverage" $weightedAverageList]

  write_json "${moduleName}_util.json" $kvList
}

#
# Generates utilisation hierarchical report.
#
proc sda_kernel_report_hierarchy {moduleName partName} {
  # Not currently implemented.
}

#
# Writes formatted JSON to output file, given a structured key/value list.
#
proc write_json {fileName kvList} {
  set fp [open $fileName w]
  puts $fp "{"
  write_recursive_json $fp "  " $kvList
  puts $fp "}"
  close $fp
}

#
# Implement recursive JSON writes.
#
proc write_recursive_json {fp indent kvList} {
  set count 0
  set comma ","
  foreach kvEntry $kvList {
    set typeTag [lindex $kvEntry 0]
    set key [lindex $kvEntry 1]
    set val [lindex $kvEntry 2]

    set key "\"${key}\""
    incr count
    if {$count == [llength $kvList]} {
      set comma ""
    }

    # Process elements tagged as strings.
    if {$typeTag == "&"} {
      set val "\"${val}\""
      puts $fp "${indent}${key} : ${val}${comma}"

    # Process elements tagged as numbers.
    } elseif {$typeTag == "%"} {
      puts $fp "${indent}${key} : ${val}${comma}"

    # Process elements tagged as JSON objects.
    } elseif {$typeTag == "@"} {
      puts $fp "${indent}${key} : \{"
      write_recursive_json $fp "${indent}  " $val
      puts $fp "${indent}\}${comma}"
    }
  }
}
