#!/bin/bash

set -e

NUMBER=$(./reco-jarvice/reco-jarvice run-script reco-jarvice/examples/sshd.sh)

ERROR=dummy
while [ "$ERROR" != "null" ]
do
    # shellcheck source=/dev/null
    source "${CONFIG_FILE:-$HOME/.jarvice}"

    CONNECTION_INFO=$(jarvice_cli connect -username "$USERNAME" -apikey "$API_KEY" -number "$NUMBER")
    ERROR=$(echo "$CONNECTION_INFO" | jq -r ".error")
done

ADDRESS=$(echo "$CONNECTION_INFO" | jq -r ".address")
PASS=$(echo "$CONNECTION_INFO" | jq -r ".password")
export ANSIBLE_HOST_KEY_CHECKING=False

set +e
sshpass -p "$PASS" ansible-playbook -v -u nimbix --ask-pass playbooks/deploy.yml --ssh-common-args="-o UserKnownHostsFile=/dev/null" --extra-vars="variable_host=$ADDRESS archive=$2 version=$1"
RET=$?
./reco-jarvice/reco-jarvice shutdown "$NUMBER"
$RET || exit $RET
