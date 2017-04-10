#!/bin/bash
set -e

SHA=$(git rev-parse HEAD)
mkdir -p benchmarks/repository benchmarks/logs

# Join intermediate log files
cat bench_tmp/* > benchmarks/logs/"$SHA".log

# Upload local logs
aws s3 sync benchmarks/logs s3://nerabus/reco-sdaccel/benchmarks/
