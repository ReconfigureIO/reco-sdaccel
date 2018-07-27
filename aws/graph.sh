#!/bin/bash
set -e
export PATH=$XILINX_SDX/bin:$XILINX_VIVADO/bin:$XILINX_SDX/runtime/bin:$PATH
source "/opt/sdaccel-builder/settings.sh"

S3_ARGS=""
if [[ -n "$S3_ENDPOINT" ]]; then
    S3_ARGS="--endpoint=$S3_ENDPOINT"
fi

function post_event {
    curl -XPOST -H "Content-Type: application/json"  -d '{"status": "'"$1"'", "message": "'"$2"'", "code": '${3-0}'}' "$CALLBACK_URL" &> /dev/null
}

post_event STARTED

set +e
aws s3 cp --quiet $S3_ARGS "$INPUT_URL" - | tar zxf - --transform='s,\\,/,g' --show-transformed-names

exit="$?"

if [ $exit -ne 0 ]; then
    post_event ERRORED "Source code download failed"
    exit "$exit"
fi

timeout -k 1m 30m /opt/sdaccel-builder/sdaccel-builder graph

exit="$?"

if [ $exit -ne 0 ]; then
    if [ $exit -eq 124 ]; then
        post_event ERRORED "Graph generation timed out" "$exit"
    else
        post_event ERRORED "Unknown error" "$exit"
    fi
    exit "$exit"
fi

gzip -q main-graph.pdf
aws s3 cp --quiet $S3_ARGS "main-graph.pdf.gz" "$OUTPUT_URL"

exit="$?"

if [ $exit -ne 0 ]; then
    post_event ERRORED "Graph upload failed" "$exit"
    exit "$exit"
fi

post_event COMPLETED
