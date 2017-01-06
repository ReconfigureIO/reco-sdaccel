#!/bin/bash

set -e

function help {
    echo "
usage: $0 <command>

Where <command> is one of the following:

    shell   Spin up a temporary development shell in the Nimbix cloud
    stop    Stop all running jobs

    help    Display this help output
"
}

function stop {
    jarvice_cli shutdown_all
}

function shell {
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

    ansible localhost -m wait_for -a "host=$ADDRESS port=22 delay=60 timeout=320 state=started"

    sshpass -p "$PASS" ssh -o UserKnownHostsFile=/dev/null -o StrictHostKeyChecking=no "nimbix@$ADDRESS"
    jarvice_cli shutdown -number "$NUMBER"
}

function main {
    case "$1" in
        "shell")
            shell "${@:2}"
            ;;
        "stop")
            stop "${@:2}"
            ;;
        "help")
            help "$@"
            ;;

        *)
            echo "unrecognized command: $1";
            help "$@"
            exit 1
            ;;
        esac
}

main "$@"
