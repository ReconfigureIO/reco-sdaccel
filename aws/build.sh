#!/bin/bash
set -e
export PATH=$XILINX_SDX/bin:$XILINX_VIVADO/bin:$PATH
source "/opt/sdaccel-builder/settings.sh"
curl -XPOST -H "Content-Type: application/json"  -d '{"status": "STARTED"}' "$CALLBACK_URL" &> /dev/null

set +e
aws s3 cp "$INPUT_URL" - | tar zxf -

exit="$?"

if [ $exit -ne 0 ]; then
    curl -XPOST -H "Content-Type: application/json"  -d '{"status": "ERRORED"}' "$CALLBACK_URL" &> /dev/null
    exit "$exit"
fi

/opt/sdaccel-builder/sdaccel-builder image

exit="$?"

if [ $exit -ne 0 ]; then
    zip -qr artifacts.zip /tmp/workspace/.reco-work
    aws s3 cp "artifacts.zip" "$INPUT_URL.artifacts.zip"

    curl -XPOST -H "Content-Type: application/json"  -d '{"status": "ERRORED"}' "$CALLBACK_URL" &> /dev/null
    exit "$exit"
fi

curl -XPOST -H "Content-Type: application/json"  -d '{"status": "ERRORED"}' "$CALLBACK_URL" &> /dev/null