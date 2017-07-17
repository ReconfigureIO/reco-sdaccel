# variable definitions
NAME := reco-check-bundle
DESC := bundled examples & reco-check
VERSION := $(shell git describe --tags --always --dirty)
BUILDTIME := $(shell date -u +"%Y-%m-%dT%H:%M:%SZ")
BUILDDATE := $(shell date -u +"%B %d, %Y")
BUILDER := $(shell echo "`git config user.name` <`git config user.email`>")
PROJECT_URL := https://github.com/ReconfigueIO/reco-sdaccel

SDACCEL_WRAPPER_VERSION :=

TARGETS = x86_64-unknown-linux x86_64-apple-darwin x86_64-pc-windows-msvc
RELEASE_TARGETS := $(patsubst %,releases/${NAME}-${VERSION}-%.zip,$(TARGETS))

.PHONY: all clean clean-all build/* upload

all: $(RELEASE_TARGETS)

$(patsubst %,build/%,$(TARGETS)): build/%: dist/%/bin dist/%/gopath

clean:
	rm -rf dist releases

downloads:
	mkdir -p downloads

$(patsubst %,dist/%,$(TARGETS)): dist/%:
	mkdir -p $@

downloads/reco-check-${SDACCEL_WRAPPER_VERSION}-%.tar.gz: | downloads
	aws s3 cp "s3://reconfigure.io/reco-check/releases/reco-check-${SDACCEL_WRAPPER_VERSION}-$*-release.tar.gz" $@

dist/%/bin: downloads/reco-check-${SDACCEL_WRAPPER_VERSION}-%.tar.gz | dist/%
	mkdir -p $@
	tar -xf $< -C $@

KERNEL_LIBS := $(shell find ../go-teak/ -type f -name "*.go")

dist/%/gopath: $(KERNEL_LIBS) | dist/%
	rsync -a --exclude="*.v" --exclude="*.tcl" --exclude="*.md" --prune-empty-dirs ../go-teak/ $@

releases:
	mkdir -p releases

$(RELEASE_TARGETS): releases/${NAME}-${VERSION}-%.zip: dist/%/gopath dist/%/bin | releases
	cd dist/$* && zip -r $(CURDIR)/$@ *

upload: $(RELEASE_TARGETS)
	aws s3 sync --acl public-read releases "s3://reconfigure.io/reco-check/bundles/"
