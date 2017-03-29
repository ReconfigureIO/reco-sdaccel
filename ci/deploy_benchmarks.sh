#!/bin/bash
mkdir -p benchmarks/repository
# Upload local logs
aws s3 sync benchmarks/logs s3://nerabus/reco-sdaccel/benchmarks/
# Then download them all
aws s3 sync s3://nerabus/reco-sdaccel/benchmarks/ benchmarks/logs
# Generate site
docker run -v "$PWD":/mnt -w /mnt/benchmarks "parfunc/gipeda:latest" gipeda
# Upload generated website
aws s3 sync benchmarks/site s3://perf.reconfigureio-infra.com/reco-sdaccel/
