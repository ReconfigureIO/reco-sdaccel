#!/usr/bin/env bash
set -euo pipefail
IFS=$'\n\t'

NAME=$1
EXAMPLE=$2
BENCH=$3
SHA=$4

ERRFILE=$(mktemp --suffix ".log")

cd "examples/$NAME"
set +e
NUMBER=$(../../reco-aws/reco-aws build 2>$ERRFILE)

exit="$?"
cat $ERRFILE

if [ $exit -ne 0 ]; then
    exit "$exit"
fi
set -e

mkdir -p ../../bench_tmp
TMPFILE=$(mktemp --suffix ".log" -p ../../bench_tmp)
cat $ERRFILE | grep "verilog," -A2 | awk -F"," "{print \"buildTime/\" \$1 \"/$NAME\" \";\" \$2}" | tee -a "$TMPFILE"
rm $ERRFILE
../../reco-aws/reco-aws run "$NUMBER" "$EXAMPLE"
../../reco-aws/reco-aws run "$NUMBER" "bench-$BENCH" 2>&1 | tee -a "$TMPFILE"
