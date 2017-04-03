#!/usr/bin/env bash
set -euo pipefail
IFS=$'\n\t'

EXAMPLE=$1
SHA=$2

cd examples/$1

mkdir -p benchmarks/logs
../../reco-jarvice/reco-jarvice test bench-$1 > benchmarks/logs/$EXAMPLE-$SHA.log


# BENCHMARKS=$(grep -A50 '\+ exec' /tmp/log | tail -n +2)
# echo $BENCHMARKS
