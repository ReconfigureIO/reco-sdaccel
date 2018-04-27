#!/bin/bash

name="$1"

inp=$(cat)

# e.g. buildTime/verilog/histogram-parallel
echo "$inp" | jq -r ".timing | .[] | [[\"buildTime/\" + .step + \"/$1\", .seconds], [\"memory/\" + .step + \"/$1\", .kb]] | .[] | @tsv" | sed -e "s/\t/;/"

# e.g. DSPs/used/histogram-parallel
echo "$inp" | jq -r "[.lutSummary, .regSummary, .blockRamSummary, .ultraRamSummary, .dspBlockSummary] | .[] | [[.description + \"/used/$1\", .used], [.description + \"/percentage/$1\", .utilisation]] | .[] | @tsv" | sed -e "s/\t/;/"
