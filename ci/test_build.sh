#!/usr/bin/env bash
set -euo pipefail
IFS=$'\n\t'

NAME=$1
EXAMPLE=$2
BENCH=$3
SHA=$4

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
export PATH="$DIR:$PATH"

ERRFILE=$(mktemp --suffix ".log")

cd "examples/$NAME"
set +e
NUMBER=$(../../reco-aws/reco-aws build 2>$ERRFILE)

exit="$?"
cat $ERRFILE

if [ $exit -ne 0 ]; then
    exit "$exit"
fi
set -e

mkdir -p ../../bench_tmp

# write build report to a tmp file for later pickup
TMPFILE=$(mktemp --suffix ".log" -p ../../bench_tmp)
reco-aws download-build-report "$NUMBER" | format_build_report.sh "$NAME" | tee -a "$TMPFILE"

rm $ERRFILE
