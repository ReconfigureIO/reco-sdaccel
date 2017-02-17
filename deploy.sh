#!/bin/bash

set -e

# shellcheck source=/dev/null
source "${CONFIG_FILE:-$HOME/.jarvice}"

lftp "sftp://$USERNAME:$API_KEY@drop.jarvice.com" -e "set sftp:auto-confirm yes; put $1; quit"
