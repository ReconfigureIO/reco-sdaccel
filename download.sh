#!/bin/bash
set -ex

SDACCEL_WRAPPER_VERSION=PR-165

aws s3 cp "s3://nerabus/eTeak/eTeak-$SDACCEL_WRAPPER_VERSION-linux-x86_64-release.tar.gz" .
rm -rf sdaccel || true
tar -xf "eTeak-$SDACCEL_WRAPPER_VERSION-linux-x86_64-release.tar.gz"
