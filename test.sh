#!/bin/bash

set -ex

function connect {
    JOB=$(jarvice_cli submit -j job-json.json)
    NUMBER=$(echo "$JOB" | jq -r ".number")

    ERROR=dummy
    while [ "$ERROR" != "null" ]
    do
        CONNECTION_INFO=$(jarvice_cli connect -number "$NUMBER")
        ERROR=$(echo "$CONNECTION_INFO" | jq -r ".error")
    done

    ADDRESS=$(echo "$CONNECTION_INFO" | jq -r ".address")
    PASS=$(echo "$CONNECTION_INFO" | jq -r ".password")

    sshpass -p "$PASS" ssh -o UserKnownHostsFile=/dev/null -o StrictHostKeyChecking=no "nimbix@$ADDRESS"
    jarvice_cli shutdown -number "$NUMBER"
}

connect
