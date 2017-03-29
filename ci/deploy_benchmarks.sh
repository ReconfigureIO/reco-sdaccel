#!/bin/bash
mkdir -p benchmarks/repository
docker run -v "$PWD":/mnt -w /mnt/benchmarks "parfunc/gipeda:latest" gipeda
aws s3 sync benchmarks/site s3://perf.reconfigureio-infra.com/reco-sdaccel/
