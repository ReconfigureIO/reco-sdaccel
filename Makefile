# variable definitions
NAME := reco-sdaccel
DESC := build scripts for integrating eTeak & SDAccel
PREFIX ?= usr/local
VERSION := $(shell git describe --tags --always --dirty)
BUILDTIME := $(shell date -u +"%Y-%m-%dT%H:%M:%SZ")
BUILDDATE := $(shell date -u +"%B %d, %Y")
BUILDER := $(shell echo "`git config user.name` <`git config user.email`>")
PKG_RELEASE ?= 1
PROJECT_URL := "https://github.com/ReconfigueIO/$(NAME)"

USERNAME=reconfigureio
API_KEY=cbe26de4b61a41d19700089ea948335057ca9072

.PHONY: clean all bundle/reco bundle/jarvice bundle/workflows release update-changelog package/*

all: package/reco package/jarvice

package/reco: dist/${NAME}-${VERSION}.tar.gz

package/jarvice: dist/${NAME}-jarvice-${VERSION}.tar.gz

bundle/reco: build/reco/reco-sdaccel build/reco/go-teak

bundle/jarvice: build/jarvice/jarvice

build/reco:
	mkdir -p build/reco

dist:
	mkdir -p dist

build/jarvice:
	mkdir -p build/jarvice

WORKFLOW_SOURCES := $(shell find workflows -type f)
TARGETS:= $(patsubst workflows/%,build/workflows/%,$(WORKFLOW_SOURCES))

build/workflows:
	mkdir -p build/workflows

build/workflows/%: workflows/% build/workflows
	cp $< $@
	sed -i "1s;^;export VERSION=${VERSION}\n\n;" $@
	chmod +x $@

bundle/workflows: $(TARGETS)

build/reco/reco-sdaccel: build/reco
	cp reco-sdaccel build/reco

build/reco/go-teak: build/reco
	cp -R go-teak build/reco

build/jarvice/jarvice: build/jarvice jarvice/jarvice
	cp -r jarvice/* build/jarvice/

dist/${NAME}-${VERSION}.tar.gz: bundle/reco dist
	cd build/reco && tar czf ../../$@ *

dist/${NAME}-jarvice-${VERSION}.tar.gz: bundle/jarvice dist
	cd build/jarvice && tar czf ../../$@ *

clean:
	rm -rf build dist

deploy: bundle/workflows bundle/reco
	lftp "sftp://${USERNAME}:${API_KEY}@drop.jarvice.com" -e "set sftp:auto-confirm yes; mirror --reverse build/reco reco/${VERSION}; quit"
	lftp "sftp://${USERNAME}:${API_KEY}@drop.jarvice.com" -e "mirror --reverse build/workflows workflows/${VERSION}; quit"

update-changelog:
	tail -n +3 RELEASE.md > next.md
	echo "" >> next.md
	cat CHANGELOG.md >> next.md
	mv next.md CHANGELOG.md
	@echo "$(NAME) $(NEXT_RELEASE)" > RELEASE.md
	@echo "" >> RELEASE.md
	@echo "# $(NAME) $(NEXT_RELEASE)" >> RELEASE.md
	@echo "" >> RELEASE.md
	@echo "## Features" >> RELEASE.md
	@echo "" >> RELEASE.md
	@echo "## Bugfixes" >> RELEASE.md

release: dist/${NAME}-${VERSION}.tar.gz dist/${NAME}-jarvice-${VERSION}.tar.gz
	aws s3 cp "dist/${NAME}-${VERSION}.tar.gz" "s3://nerabus/$(NAME)/releases/$(NAME)-$(VERSION).tar.gz"
	aws s3 cp "dist/${NAME}-jarvice-${VERSION}.tar.gz" "s3://nerabus/$(NAME)/releases/$(NAME)-jarvice-$(VERSION).tar.gz"
	hub release create -d -F "RELEASE.md" -a "dist/${NAME}-${VERSION}.tar.gz" "dist/${NAME}-jarvice-${VERSION}.tar.gz" "$(VERSION)"
