#!/bin/bash

set -eu
set -o pipefail

main() {
    local imageid="$1"
    local environment="$2"

    local base_config='{
        "serviceRole": "arn:aws:iam::398048034572:role/service-role/AWSBatchServiceRole",
        "computeResources": {
            "subnets": [
                "subnet-34620d38",
                "subnet-f0542d95",
                "subnet-b28a6d8e",
                "subnet-9829fdd1",
                "subnet-d4f511f9",
                "subnet-22acb67a"
            ],
            "spotIamFleetRole": "arn:aws:iam::398048034572:role/spotFleetRole",
            "tags": {},
            "desiredvCpus": 0,
            "minvCpus": 0,
            "instanceTypes": [
                "optimal"
            ],
            "imageId": "",
            "bidPercentage": 100,
            "instanceRole": "arn:aws:iam::398048034572:instance-profile/ecsInstanceRole",
            "maxvCpus": 64,
            "securityGroupIds": [
                "sg-8a1b9cf0"
            ],
            "type": "SPOT"
        },
        "computeEnvironmentName": "",
        "type": "MANAGED"
    }
    '

    local jq_prog="
        .computeEnvironmentName = \"${environment}-build-$(date -u +'%s')\" |
        .computeResources.imageId = \"${imageid}\"
    "

    local config=$(
        echo "$base_config" |
            jq "$jq_prog"
    )
    # echo "$config"

    aws batch create-compute-environment --cli-input-json "$config"
}

main "$@"
