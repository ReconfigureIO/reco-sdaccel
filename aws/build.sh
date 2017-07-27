#!/bin/bash
set -e
export PATH=$XILINX_SDX/bin:$XILINX_VIVADO/bin:$XILINX_SDX/runtime/bin:$PATH
source "/opt/sdaccel-builder/settings.sh"
curl -XPOST -H "Content-Type: application/json"  -d '{"status": "STARTED"}' "$CALLBACK_URL" &> /dev/null

set +e
aws s3 cp --quiet "$INPUT_URL" - | tar zxf -

exit="$?"

if [ $exit -ne 0 ]; then
    curl -XPOST -H "Content-Type: application/json"  -d '{"status": "ERRORED"}' "$CALLBACK_URL" &> /dev/null
    exit "$exit"
fi

/opt/sdaccel-builder/sdaccel-builder cmds && /opt/sdaccel-builder/sdaccel-builder image

exit="$?"

if [ $exit -ne 0 ]; then
    zip -qr artifacts.zip /tmp/workspace/.reco-work
    aws s3 cp --quiet "artifacts.zip" "$OUTPUT_URL"

    curl -XPOST -H "Content-Type: application/json"  -d '{"status": "ERRORED"}' "$CALLBACK_URL" &> /dev/null
    exit "$exit"
fi

cat times.out


./create_sdaccel_afi.sh -s3_bucket="$DCP_BUCKET" -s3_dcp_key="$DCP_KEY" -s3_logs_key="$LOG_KEY" -xclbin=.reco-work/sdaccel/dist/xclbin/kernel_test.hw.*.xclbin -o=.reco-work/sdaccel/dist/xclbin/kernel_test.hw.*.xclbin

zip -qr dist.zip .reco-work/sdaccel/dist
aws s3 cp --quiet "dist.zip" "$OUTPUT_URL"

curl -XPOST -H "Content-Type: application/json"  -d '{"status": "COMPLETED"}' "$CALLBACK_URL" &> /dev/null
