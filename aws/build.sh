#!/bin/bash
set -e
export PATH=$XILINX_SDX/bin:$XILINX_VIVADO/bin:$XILINX_SDX/runtime/bin:$PATH
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
    aws s3 cp "artifacts.zip" "$OUTPUT_URL"

    curl -XPOST -H "Content-Type: application/json"  -d '{"status": "ERRORED"}' "$CALLBACK_URL" &> /dev/null
    exit "$exit"
fi


cd .reco-work/sdaccel/dist
/opt/package_dcp.sh -k kernel_test -e `which cat`
aws s3 cp *.Developer_CL.tar "s3://$DCP_BUCKET/$DCP_KEY"
aws ec2 create-fpga-image \
        --name kernel_test \
        --description "stub info for amazon" \
        --input-storage-location Bucket="$DCP_BUCKET",Key="$DCP_KEY" \
        --logs-storage-location Bucket="$LOG_BUCKET",Key="$LOG_KEY"
cd -

zip -qr dist.zip /tmp/workspace/.reco-work/sdaccel/dist
aws s3 cp "dist.zip" "$OUTPUT_URL"

curl -XPOST -H "Content-Type: application/json"  -d '{"status": "COMPLETED"}' "$CALLBACK_URL" &> /dev/null
