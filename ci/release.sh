#!/bin/bash
set -ex
VERSION="$1"
git tag "$VERSION"
git push --tags
# Push production aws batch jobs as well as publish the release
make JOB_DEFINITION=sdaccel-builder-build clean aws release
make VERSION=latest upload-reco-check-bundle
make update-changelog
git add -u
git commit -m "[auto] finalize release $VERSION"
git push origin master
