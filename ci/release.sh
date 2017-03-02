#!/bin/bash
git tag "$VERSION"
git push --tags
make release
make update-changelog
git add -u
git ci -m "[auto] finalize release $VERSION"
git push origin master
