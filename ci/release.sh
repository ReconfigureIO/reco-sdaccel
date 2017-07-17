#!/bin/bash
set -ex
VERSION="$1"
git tag "$VERSION"
git push --tags
make clean release
make VERSION=latest upload-reco-check-bundle
make update-changelog
git add -u
git commit -m "[auto] finalize release $VERSION"
git push origin master
