#!/usr/bin/env bash
set -euo pipefail
IFS=$'\n\t'

NAME=$1
EXAMPLE=$2
BENCH=$3
SHA=$4

ERRFILE=$(mktemp --suffix ".log")

cd "examples/$NAME"
NUMBER=$(../../reco-jarvice/reco-jarvice build 2>$ERRFILE)
cat $ERRFILE

mkdir -p ../../bench_tmp
TMPFILE=$(mktemp --suffix ".log" -p ../../bench_tmp)
cat $ERRFILE | grep "verilog," -A2 | awk -F"," "{print \"buildTime/\" \$1 \"/$NAME\" \";\" \$2}" | tee -a "$TMPFILE"
rm $ERRFILE
../../reco-jarvice/reco-jarvice run "$NUMBER" "$EXAMPLE"
../../reco-jarvice/reco-jarvice run "$NUMBER" "bench-$BENCH" 2>&1 | tee -a "$TMPFILE"
