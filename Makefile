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

.PHONY: all clean package/reco package/jarvice

all: build/reco-sdaccel build/jarvice-tools

package: dist/${NAME}-${VERSION}.tar.gz

package/jarvice: dist/${NAME}-${VERSION}-jarvice.tar.gz

bundle/reco: build/reco-sdaccel

bundle/jarvice: build/jarvice

build/reco:
	mkdir -p build/reco

dist:
	mkdir -p dist

build-jarvice:
	mkdir -p build/jarvice

jarvice: 
	cd jarvice
	cp ./* ../build-jarvice/

build/reco-sdaccel: build/reco reco-sdaccel
	cp reco-sdaccel build

build/jarvice-tools: build-jarvice jarvice

dist/reco-${NAME}-${VERSION}.tar.gz: bundle-reco dist-reco
	cd build && tar czf ../$@ *

dist/jarvice-${NAME}-${VERSION}.tar.gz: bundle-jarvice dist-jarvice
	cd build && tar czf ../$@ *

clean:
	rm -rf build
	rm -rf dist

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

release: dist/${NAME}-${VERSION}.tar.gz
	aws s3 cp "dist/${NAME}-${VERSION}.tar.gz" "s3://nerabus/$(NAME)/releases/$(NAME)-$(VERSION).tar.gz"
	hub release create -d -F "RELEASE.md" -a "dist/${NAME}-${VERSION}.tar.gz" "$(VERSION)"
