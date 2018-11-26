#!/bin/bash
set -e
export PATH=$XILINX_SDX/bin:$XILINX_VIVADO/bin:$PATH
source "/opt/sdaccel-builder/settings.sh"

function post_event {
    curl -XPOST -H "Content-Type: application/json"  -d '{"status": "'"$1"'", "message": "'"$2"'", "code": '${3-0}'}' "$CALLBACK_URL" &> /dev/null
}

function post_report {
    url="$1"
    file="$2"

    if [[ $url == s3:* ]] ; then
        aws s3 cp --quiet "$file" "$url"
    else
        curl -XPOST -H "Content-Type: application/vnd.reconfigure.io/reports-v1+json" -d @"$file" "$url" &> /dev/null ; true
    fi
}

post_event STARTED

set +e
aws s3 cp --quiet "$INPUT_URL" - | tar zxf - --transform='s,\\,/,g' --show-transformed-names

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
                aws s3 cp --quiet "artifacts.zip" "$OUTPUT_URL"
            fi
        fi

    	post_event ERRORED "Unknown error" "$exit"
    fi
    exit "$exit"
fi

REPORT_FILE=$(find .reco-work/sdaccel/reports/ -name 'utilization.json' -print)
post_report "$REPORT_URL" "$REPORT_FILE"

post_event COMPLETED
