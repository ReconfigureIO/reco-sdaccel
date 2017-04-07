#!/bin/bash
set -e

# Download them all
aws s3 sync s3://nerabus/reco-sdaccel/benchmarks/ benchmarks/logs
# Generate site
docker run -v "$PWD":/mnt -w /mnt/benchmarks "parfunc/gipeda:latest" gipeda
# Upload generated website
aws s3 sync benchmarks/site s3://perf.reconfigureio-infra.com/reco-sdaccel/
