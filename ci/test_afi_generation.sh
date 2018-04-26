#!/usr/bin/env bash
set -euxo pipefail
IFS=$'\n\t'

NAME=$1
EXAMPLE=$2
BENCH=$3
SHA=$4

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
# Add in the the local scripts, and reco-aws to the PATH
export PATH="$DIR:$DIR/../reco-aws:$PATH"
which reco-aws > /dev/null || (echo "reco-aws not found on PATH" && exit 1)
which format_build_report.sh > /dev/null || (echo "format_build_report.sh not found on PATH" && exit 1)

ERRFILE=$(mktemp --suffix ".log")

cd "examples/$NAME"
set +e
export GENERATE_AFI=yes
NUMBER=$(reco-aws build 2>$ERRFILE)

exit="$?"
cat $ERRFILE

if [ $exit -ne 0 ]; then
    exit "$exit"
fi
set -e

mkdir -p ../../bench_tmp

# write build report to a tmp file for later pickup
TMPFILE=$(mktemp --suffix ".log" -p ../../bench_tmp)
reco-aws download-report "$NUMBER" | format_build_report.sh "$NAME" | tee -a "$TMPFILE"

rm "$ERRFILE"
reco-aws run "$NUMBER" "$EXAMPLE"
reco-aws run "$NUMBER" "bench-$BENCH" 2>&1 | tee -a "$TMPFILE"
