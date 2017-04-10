#!/bin/bash
set -e
export PATH=$XILINX_SDX/bin:$XILINX_VIVADO/bin:$PATH
source "/opt/sdaccel-builder/settings.sh"
curl -XPATCH -H "Content-Type: application/json"  -d '{"status": "PROCESSING"}' "$CALLBACK_URL" > /dev/null

set +e
aws s3 cp "$INPUT_URL" - | tar zxf -

if [ $? -ne 0 ]; then
    local exit="$?"
    curl -XPATCH -H "Content-Type: application/json"  -d '{"status": "ERROR"}' "$CALLBACK_URL" > /dev/null
    exit "$exit"
fi

/opt/sdaccel-builder/sdaccel-builder build

if [ $? -ne 0 ]; then
    local exit="$?"
    curl -XPATCH -H "Content-Type: application/json"  -d '{"status": "ERROR"}' "$CALLBACK_URL" > /dev/null
    exit "$exit"
fi

curl -XPATCH -H "Content-Type: application/json"  -d '{"status": "COMPLETED"}' "$CALLBACK_URL" > /dev/null
