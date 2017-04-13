#!/bin/bash
set -e
export PATH=$XILINX_SDX/bin:$XILINX_VIVADO/bin:$PATH
source "/opt/sdaccel-builder/settings.sh"
curl -XPOST -H "Content-Type: application/json"  -d '{"status": "STARTED"}' "$CALLBACK_URL" > /dev/null

set +e
aws s3 cp "$INPUT_URL" - | tar zxf -

if [ $? -ne 0 ]; then
    exit="$?"
    curl -XPOST -H "Content-Type: application/json"  -d '{"status": "ERRORED"}' "$CALLBACK_URL" > /dev/null
    exit "$exit"
fi

/opt/sdaccel-builder/sdaccel-builder build

if [ $? -ne 0 ]; then
    exit="$?"
    curl -XPOST -H "Content-Type: application/json"  -d '{"status": "ERRORED"}' "$CALLBACK_URL" > /dev/null
    exit "$exit"
fi

curl -XPOST -H "Content-Type: application/json"  -d '{"status": "ERRORED"}' "$CALLBACK_URL" > /dev/null
