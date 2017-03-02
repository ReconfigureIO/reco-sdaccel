#!/bin/bash
set -ex
VERSION="$1"
BRANCH=bump/update-sdaccel-to-$VERSION
git checkout -b "$BRANCH"
sed -i "s/^SDACCEL_WRAPPER_VERSION\ :=.*/SDACCEL_WRAPPER_VERSION\ :=\ ${VERSION}/g" Makefile
sed -i "s/defaultValue:\ 'v*.*.*'/defaultValue:\ '${VERSION}'/g" Jenkinsfile
git add Makefile
git commit -m "[auto] update sdaccel wrapper to ${VERSION}"
git push -u origin "$BRANCH"
hub pull-request -m "[auto] bump donut to $VERSION"
