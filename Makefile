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

.PHONY: bundle clean package

package: dist/${NAME}-${VERSION}.tar.gz

bundle: build/reco-sdaccel

build:
	mkdir -p build

dist:
	mkdir -p dist

build/reco-sdaccel: build reco-sdaccel
	cp reco-sdaccel build

dist/${NAME}-${VERSION}.tar.gz: bundle dist
	cd build && tar czf ../$@ *

clean:
	rm -rf build
	rm -rf dist
