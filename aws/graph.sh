#!/bin/bash
set -e
export PATH=$XILINX_SDX/bin:$XILINX_VIVADO/bin:$XILINX_SDX/runtime/bin:$PATH
source "/opt/sdaccel-builder/settings.sh"
curl -XPOST -H "Content-Type: application/json"  -d '{"status": "STARTED"}' "$CALLBACK_URL" &> /dev/null

set +e
aws s3 cp --quiet "$INPUT_URL" - | tar zxf - --transform='s,\\,/,g' --show-transformed-names

exit="$?"

if [ $exit -ne 0 ]; then
    curl -XPOST -H "Content-Type: application/json"  -d '{"status": "ERRORED"}' "$CALLBACK_URL" &> /dev/null
    exit "$exit"
fi

timeout -k 1m 30m /opt/sdaccel-builder/sdaccel-builder graph

exit="$?"

if [ $exit -ne 0 ]; then
    curl -XPOST -H "Content-Type: application/json"  -d '{"status": "ERRORED"}' "$CALLBACK_URL" &> /dev/null
    exit "$exit"
fi

gzip -q main-graph.pdf
aws s3 cp --quiet "main-graph.pdf.gz" "$OUTPUT_URL"

exit="$?"

if [ $exit -ne 0 ]; then
    if [ $exit -eq 124 ]; then
    	curl -XPOST -H "Content-Type: application/json"  -d '{"status": "ERRORED", "message": "Graph generation timed out", "code": 1}' "$CALLBACK_URL" &> /dev/null
    else
    	curl -XPOST -H "Content-Type: application/json"  -d '{"status": "ERRORED"}' "$CALLBACK_URL" &> /dev/null
    exit "$exit"
fi

curl -XPOST -H "Content-Type: application/json"  -d '{"status": "COMPLETED"}' "$CALLBACK_URL" &> /dev/null
