#!/usr/bin/env bash
set -euo pipefail
IFS=$'\n\t'

NUMBER=$1
EXAMPLE=$2
SHA=$3

mkdir -p ../../bench_tmp
TMPFILE=`mktemp --suffix ".log" -p ../../bench_tmp`
../../reco-jarvice/reco-jarvice run "$NUMBER" "bench-$EXAMPLE" 2>&1 | tee $TMPFILE
