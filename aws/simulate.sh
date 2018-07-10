#!/bin/bash
set -e
export PATH=$XILINX_SDX/bin:$XILINX_VIVADO/bin:$PATH
source "/opt/sdaccel-builder/settings.sh"

function post_event {
    curl -XPOST -H "Content-Type: application/json"  -d '{"status": "'"$1"'", "message": "'"$2"'", "code": '${3-0}'}' "$CALLBACK_URL" &> /dev/null
}

post_event STARTED

set +e
if [[ -n "$S3_ENDPOINT" ]]; then
    aws s3 cp --quiet --endpoint="$S3_ENDPOINT" "$INPUT_URL" - | tar zxf - --transform='s,\\,/,g' --show-transformed-names
else
    aws s3 cp --quiet "$INPUT_URL" - | tar zxf - --transform='s,\\,/,g' --show-transformed-names
fi

if [ $? -ne 0 ]; then
    exit="$?"
    post_event ERRORED "Source code download failed" "$exit"
    exit "$exit"
fi

timeout -k 1m 60m /opt/sdaccel-builder/sdaccel-builder simulate "$CMD"
exit="$?"

if [ $exit -ne 0 ]; then
    if [ $exit -eq 124 ]; then
    	post_event ERRORED "Simulation timed out" "$exit"
    else
        if [ -n "$OUTPUT_URL" ]; then
            if [ ! -d /tmp/workspace/.reco-work ]; then
                post_event ERRORED "Cmd compilation failed. Check your host-side code" "$exit"
                exit "$exit"
            else
                zip -qr artifacts.zip /tmp/workspace/.reco-work
                if [[ -n "$S3_ENDPOINT" ]]; then
                    aws s3 cp --quiet --endpoint="$S3_ENDPOINT" "artifacts.zip" "$OUTPUT_URL"
                else
                    aws s3 cp --quiet "artifacts.zip" "$OUTPUT_URL"
                fi
            fi
        fi

    	post_event ERRORED "Unknown error" "$exit"
    fi
    exit "$exit"
fi

post_event COMPLETED
