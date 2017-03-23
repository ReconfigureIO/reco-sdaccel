#!/bin/bash
set -e

export LC_ALL=C
export XILINX_SDACCEL=/opt/Xilinx/SDx/2016.3
export XILINX_SDX="$XILINX_SDACCEL"
export XILINX_VIVADO="$XILINX_SDACCEL/Vivado"
export XILINXD_LICENSE_FILE=2100@l3976.local.nimbix.net

sudo mkdir /tmp/workspace
sudo mount -t tmpfs -o size=64G,mode=0777 tmpfs /tmp/workspace

mkdir /tmp/workspace/job
cd /tmp/workspace/job
tar -xf "/data/reco/sdaccel-builder-$VERSION.tar.gz"
source "settings.sh"

JOB="$1"
cd "/data/job/$JOB"

sdaccel-builder cmds
sdaccel-builder image
