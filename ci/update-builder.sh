#!/bin/bash
set -ex
VERSION="$1"
BRANCH=bump/update-sdaccel-to-$VERSION
git checkout -b "$BRANCH"
sed -i "s/^export SDACCEL_WRAPPER_VERSION\ :=.*/export SDACCEL_WRAPPER_VERSION\ :=\ ${VERSION}/g" Makefile
sed -i "s/defaultValue:\ 'v*.*.*'/defaultValue:\ '${VERSION}'/g" Jenkinsfile
git add Makefile Jenkinsfile
git commit -m "[auto] update sdaccel wrapper to ${VERSION}"
git push -u origin "$BRANCH"
hub pull-request -m "[auto] bump donut to $VERSION"
