#!/bin/bash
set -e
export PATH=$XILINX_SDX/bin:$XILINX_VIVADO/bin:$PATH
source "/opt/sdaccel-builder/settings.sh"
curl -XPOST -H "Content-Type: application/json"  -d '{"status": "STARTED"}' "$CALLBACK_URL" &> /dev/null

set +e
aws s3 cp --quiet "$INPUT_URL" - | tar zxf - --transform='s,\\,/,g' --show-transformed-names

if [ $? -ne 0 ]; then
    exit="$?"
    curl -XPOST -H "Content-Type: application/json"  -d '{"status": "ERRORED"}' "$CALLBACK_URL" &> /dev/null
    exit "$exit"
fi

timeout -k 1m 60m /opt/sdaccel-builder/sdaccel-builder simulate "$CMD"
exit="$?"

if [ $exit -ne 0 ]; then
    if [ $exit -eq 124 ]; then
    	curl -XPOST -H "Content-Type: application/json"  -d '{"status": "ERRORED", "message": "Simulation timed out", "code": 1}' "$CALLBACK_URL" &> /dev/null
    else
    	zip -qr artifacts.zip /tmp/workspace/.reco-work
    	aws s3 cp --quiet "artifacts.zip" "$OUTPUT_URL"

    	curl -XPOST -H "Content-Type: application/json"  -d '{"status": "ERRORED"}' "$CALLBACK_URL" &> /dev/null
    fi
    exit "$exit"
fi

cat times.out

curl -XPOST -H "Content-Type: application/json"  -d '{"status": "COMPLETED"}' "$CALLBACK_URL" &> /dev/null
