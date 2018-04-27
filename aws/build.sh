#!/bin/bash
set -e
export PATH=$XILINX_SDX/bin:$XILINX_VIVADO/bin:$XILINX_SDX/runtime/bin:$PATH
source "/opt/sdaccel-builder/settings.sh"

TIMEOUT="${TIMEOUT:-12h}"

function post_event {
    curl -XPOST -H "Content-Type: application/json"  -d '{"status": "'"$1"'", "message": "'"$2"'", "code": '${3-0}'}' "$CALLBACK_URL" &> /dev/null
}

function post_report {
    url="$1"
    file="$2"

    if [[ $url == s3:* ]] ; then
        aws s3 cp --quiet "$file" "$url" 
    else
        curl -XPOST -H "Content-Type: application/vnd.reconfigure.io/reports-v1+json" -d @"$file" "$url" &> /dev/null
    fi
}

post_event STARTED

set +e
aws s3 cp --quiet "$INPUT_URL" - | tar zxf - --transform='s,\\,/,g' --show-transformed-names

exit="$?"

if [ $exit -ne 0 ]; then
    post_event ERRORED "Source code download failed"
    exit "$exit"
fi

timeout -k 1m "$TIMEOUT" /opt/sdaccel-builder/sdaccel-builder cmds && /opt/sdaccel-builder/sdaccel-builder image

exit="$?"

if [ -n "$DEBUG_URL" ]; then
    if [ ! -d /tmp/workspace/.reco-work ]; then
        post_event ERRORED "Cmd compilation failed. Check your host-side code" "$exit"
        exit "$exit"
    else
        zip -qr artifacts.zip /tmp/workspace/.reco-work
        aws s3 cp --quiet "artifacts.zip" "$DEBUG_URL"
    fi
fi

if [ $exit -ne 0 ]; then
    if [ $exit -eq 124 ]; then
        post_event ERRORED "Build timed out" "$exit"
    else
        post_event ERRORED "Unknown error" "$exit"
    fi
    exit "$exit"
fi

if [ "$GENERATE_AFI" = "yes" ]; then
    echo "generating afi"
    create_sdaccel_afi.sh -s3_bucket="$DCP_BUCKET" -s3_dcp_key="$DCP_KEY" -s3_logs_key="$LOG_KEY" -xclbin=".reco-work/sdaccel/dist/xclbin/kernel_test.hw.$DEVICE.xclbin" -o=".reco-work/sdaccel/dist/xclbin/kernel_test.hw.$DEVICE"

    exit="$?"
    if [ $exit -ne 0 ]; then
        post_event ERRORED "Unknown error" "$exit"
    fi
    exit "$exit"

    mv ".reco-work/sdaccel/dist/xclbin/kernel_test.hw.$DEVICE.xclbin" ".reco-work/sdaccel/dist/xclbin/kernel_test.hw.$DEVICE.xclbin.raw"
    mv ".reco-work/sdaccel/dist/xclbin/kernel_test.hw.$DEVICE.awsxclbin" ".reco-work/sdaccel/dist/xclbin/kernel_test.hw.$DEVICE.xclbin"
    AGFI=$(cat ./*_agfi_id.txt)
fi

REPORT_FILE=$(find .reco-work/sdaccel/reports/ -name 'utilization.json' -print)
post_report "$REPORT_URL" "$REPORT_FILE"

zip -qr dist.zip .reco-work/sdaccel/dist
aws s3 cp --quiet "dist.zip" "$OUTPUT_URL"

if [ "$GENERATE_AFI" = "yes" ]; then
    post_event CREATING_IMAGE "$AGFI"
else
    post_event COMPLETED
fi
