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

SDACCEL_WRAPPER_VERSION := v0.3.1-pre
GO_VERSION := 1.7.4

.PHONY: clean all bundle/reco bundle/jarvice bundle/workflows release update-changelog package/*

all: package/reco package/jarvice

package/reco: dist/${NAME}-${VERSION}.tar.gz

package/jarvice: dist/${NAME}-jarvice-${VERSION}.tar.gz

bundle/reco: build/reco/reco-sdaccel build/reco/reco-sdaccel.mk build/reco/go-teak build/reco/go build/reco/eTeak build/reco/go-root bundle/reco/workflows build/reco/settings.sh

bundle/jarvice: build/jarvice/jarvice

build/reco:
	mkdir -p build/reco

dist:
	mkdir -p dist

build/jarvice:
	mkdir -p build/jarvice

WORKFLOW_SOURCES := $(shell find workflows -type f)
TARGETS:= $(patsubst workflows/%,build/reco/workflows/%,$(WORKFLOW_SOURCES))

build/reco/settings.sh: settings.sh build/reco
	cp $< $@

build/reco/workflows:
	mkdir -p $@

build/reco/workflows/%: workflows/% build/reco/workflows
	cp $< $@
	sed -i "1s;^;export VERSION=${VERSION}\n\n;" $@
	chmod +x $@

bundle/reco/workflows: $(TARGETS)

build/reco/reco-sdaccel: build/reco
	cp reco-sdaccel build/reco

build/reco/reco-sdaccel.mk: build/reco
	cp reco-sdaccel.mk build/reco

build/reco/eTeak: build/reco eTeak/go-teak-sdaccel
	cp -R eTeak build/reco
	touch $@

build/reco/go-teak: build/reco
	cp -R go-teak build/reco

build/reco/go: build/reco
	cp -R go build/reco

build/jarvice/jarvice: build/jarvice jarvice/jarvice
	cp -r jarvice/* build/jarvice/
	sed -i "2s;^;export VERSION=${VERSION}\n;" $@
	chmod +x $@

dist/${NAME}-${VERSION}.tar.gz: bundle/reco dist
	cd build/reco && tar czf ../../$@ *

dist/${NAME}-jarvice-${VERSION}.tar.gz: bundle/jarvice dist
	cd build/jarvice && tar czf ../../$@ *

clean:
	rm -rf build dist downloads eTeak

deploy: dist/${NAME}-${VERSION}.tar.gz
	./deploy.sh ${VERSION} ${PWD}/$<

downloads:
	mkdir -p downloads

downloads/eTeak-${SDACCEL_WRAPPER_VERSION}-linux-x86_64-release.tar.gz: downloads
	aws s3 cp "s3://nerabus/eTeak/releases/eTeak-${SDACCEL_WRAPPER_VERSION}-x86_64-unknown-linux-release.tar.gz" $@
	# So that it won't download again
	touch $@

downloads/go-${GO_VERSION}.linux-amd64.tar.gz: downloads
	wget -O $@ https://storage.googleapis.com/golang/go${GO_VERSION}.linux-amd64.tar.gz
	# So that it won't download again
	touch $@

build/reco/go-root: downloads/go-${GO_VERSION}.linux-amd64.tar.gz build/reco
	mkdir -p $@
	tar -xf $< -C $@ --strip-components=1
	touch $@

eTeak:
	mkdir -p eTeak

eTeak/go-teak-sdaccel: eTeak downloads/eTeak-${SDACCEL_WRAPPER_VERSION}-linux-x86_64-release.tar.gz
	tar -xf "downloads/eTeak-${SDACCEL_WRAPPER_VERSION}-linux-x86_64-release.tar.gz" -C eTeak
	# So that it won't download again
	touch $@

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
