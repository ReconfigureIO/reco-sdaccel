#!/bin/bash
set -e
export PATH=$XILINX_SDX/bin:$XILINX_VIVADO/bin:$PATH
source "/opt/sdaccel-builder/settings.sh"

aws s3 cp "$INPUT_URL" - | tar zxf -
/opt/sdaccel-builder/sdaccel-builder simulate "$@CMD"
