# variable definitions
NAME := sdaccel-builder
DESC := build scripts for integrating eTeak & SDAccel
PREFIX ?= usr/local
VERSION := $(shell git describe --tags --always --dirty)
BUILDTIME := $(shell date -u +"%Y-%m-%dT%H:%M:%SZ")
BUILDDATE := $(shell date -u +"%B %d, %Y")
BUILDER := $(shell echo "`git config user.name` <`git config user.email`>")
PKG_RELEASE ?= 1
PROJECT_URL := https://github.com/ReconfigueIO/$(NAME)

DOCKER_NAME := $(NAME)
DEPLOY_NAME := f1-staging-deploy

DOCKER_REMOTE := 398048034572.dkr.ecr.us-east-1.amazonaws.com/reconfigureio/build-framework/$(NAME)
DEPLOY_REMOTE := 398048034572.dkr.ecr.us-east-1.amazonaws.com/reconfigureio/build-framework/$(DEPLOY_NAME)

PUBLISHED_DOCKER := ${DOCKER_REMOTE}:${VERSION}
PUBLISHED_DEPLOY := ${DEPLOY_REMOTE}:${VERSION}

JOB_DEFINITION := sdaccel-builder-build-staging

BATCH_JOB := $(shell cat aws/batch.json | jq '.containerProperties.image = "${PUBLISHED_DOCKER}" | .jobDefinitionName = "${JOB_DEFINITION}"')
DEPLOY_JOB := $(shell cat aws/deploy.json | jq '.containerProperties.image = "${PUBLISHED_DEPLOY}"')

export SDACCEL_WRAPPER_VERSION := 0.16.13

GO_VERSION := 1.7.4

.PHONY: clean all bundle/reco bundle/reco-jarvice bundle/workflows release update-changelog package/* deploy deploy-all docker-image upload aws build-docs upload-docs upload-docker test

all: package/reco package/reco-jarvice

print-% : ; @echo $($*)

test:
	find examples/ -maxdepth 1 -mindepth 1 -type d | PATH=$$PWD:$$PWD/ci/:$$PATH xargs -L1 test.sh

package/reco: dist/${NAME}-${VERSION}.tar.gz

package/reco-jarvice: dist/${NAME}-deploy-${VERSION}.tar.gz

bundle/reco: build/reco/sdaccel-builder build/reco/sdaccel-builder.mk build/reco/go-teak build/reco/go build/reco/eTeak build/reco/go-root bundle/reco/workflows build/reco/settings.sh

bundle/reco-jarvice: build/reco-jarvice/reco-jarvice

build/reco:
	mkdir -p build/reco

dist:
	mkdir -p dist

build/deploy:
	mkdir -p build/deploy

build/reco-jarvice:
	mkdir -p build/reco-jarvice

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

build/reco/sdaccel-builder: sdaccel-builder | build/reco
	cp sdaccel-builder build/reco

build/reco/sdaccel-builder.mk: sdaccel-builder.mk | build/reco
	cp sdaccel-builder.mk build/reco

build/reco/eTeak: build/reco eTeak/go-teak-sdaccel
	cp -R eTeak build/reco
	touch $@

build/reco/go-teak: build/reco
	cp -R go-teak build/reco

build/reco/go: build/reco
	cp -R go build/reco

build/reco-jarvice/reco-jarvice: build/reco-jarvice reco-jarvice/reco-jarvice
	cp -r reco-jarvice/* build/reco-jarvice/
	sed -i "2s;^;export VERSION=${VERSION}\n;" $@
	chmod +x $@

# deployment bundle for Jarvice
build/deploy/${NAME}-${VERSION}.tar.gz: bundle/reco build/deploy
	cd build/reco && tar czf ../../$@ *

build/deploy/${VERSION}/workflows: bundle/reco/workflows build/deploy
	mkdir -p $@
	cp build/reco/workflows/* $@

dist/${NAME}-${VERSION}.tar.gz: bundle/reco dist
	cd build/reco && tar czf ../../$@ *

dist/${NAME}-deploy-${VERSION}.tar.gz: build/deploy/${NAME}-${VERSION}.tar.gz build/deploy/${VERSION}/workflows dist
	cd build/deploy && tar czf ../../$@ *

dist/${NAME}-reco-jarvice-${VERSION}.tar.gz: bundle/reco-jarvice dist
	cd build/reco-jarvice && tar czf ../../$@ *

clean:
	rm -rf build dist downloads eTeak docs
	$(MAKE) -C reco-check-bundle clean

deploy: build/deploy/${NAME}-${VERSION}.tar.gz build/deploy/${VERSION}/workflows
	./deploy.sh $<

downloads:
	mkdir -p downloads

downloads/eTeak-${SDACCEL_WRAPPER_VERSION}-linux-x86_64-release.tar.gz: | downloads
	aws s3 cp --quiet "s3://nerabus/eTeak/releases/eTeak-${SDACCEL_WRAPPER_VERSION}-x86_64-unknown-linux-release.tar.gz" $@
	# So that it won't download again
	touch $@

downloads/go-${GO_VERSION}.linux-amd64.tar.gz: | downloads
	wget -O $@ https://storage.googleapis.com/golang/go${GO_VERSION}.linux-amd64.tar.gz
	# So that it won't download again
	touch $@

build/reco/go-root: downloads/go-${GO_VERSION}.linux-amd64.tar.gz build/reco
	mkdir -p $@
	tar -xf $< -C $@ --strip-components=1
	touch $@

eTeak:
	mkdir -p eTeak

eTeak/go-teak-sdaccel: | eTeak downloads/eTeak-${SDACCEL_WRAPPER_VERSION}-linux-x86_64-release.tar.gz
	tar -xf "downloads/eTeak-${SDACCEL_WRAPPER_VERSION}-linux-x86_64-release.tar.gz" -C eTeak
	# So that it won't download again
	touch $@

docs:
	mkdir -p docs

build-docs: | eTeak/go-teak-sdaccel docs
	GOROOT=$$PWD/eTeak/go/ GOPATH=$$PWD/go-teak ./scripts/gendoc.sh docs/kernel
	GOROOT=$$PWD/go/ ./scripts/gendoc.sh docs/host

update-changelog:
	sed -i 's/$$VERSION/$(VERSION)/' RELEASE.md
	tail -n +3 RELEASE.md > next.md
	echo "" >> next.md
	cat CHANGELOG.md >> next.md
	mv next.md CHANGELOG.md
	@echo '$(NAME) $$VERSION' > RELEASE.md
	@echo "" >> RELEASE.md
	@echo '# $(NAME) $$VERSION' >> RELEASE.md
	@echo "" >> RELEASE.md
	@echo "## Features" >> RELEASE.md
	@echo "" >> RELEASE.md
	@echo "## Bugfixes" >> RELEASE.md

docker-image: bundle/reco
	docker build -t $(DOCKER_NAME):latest .
	docker build -t $(DEPLOY_NAME):latest docker-staging-deploy

upload-docs: build-docs
	aws s3 sync docs "s3://godoc.reconfigure.io/${VERSION}/"

upload-docker: docker-image
	docker tag $(DOCKER_NAME):latest ${PUBLISHED_DOCKER}
	docker tag $(DEPLOY_NAME):latest ${PUBLISHED_DEPLOY}
	$$(aws ecr get-login --region us-east-1)
	docker push ${PUBLISHED_DOCKER}
	docker push ${PUBLISHED_DEPLOY}

upload: dist/${NAME}-${VERSION}.tar.gz dist/${NAME}-reco-jarvice-${VERSION}.tar.gz dist/${NAME}-deploy-${VERSION}.tar.gz upload-docs docker-image
	aws s3 cp --quiet "dist/${NAME}-${VERSION}.tar.gz" "s3://nerabus/$(NAME)/releases/$(NAME)-$(VERSION).tar.gz"
	aws s3 cp --quiet "dist/${NAME}-deploy-${VERSION}.tar.gz" "s3://nerabus/$(NAME)/releases/$(NAME)-deploy-$(VERSION).tar.gz"
	aws s3 cp --quiet "dist/${NAME}-reco-jarvice-${VERSION}.tar.gz" "s3://nerabus/$(NAME)/releases/$(NAME)-reco-jarvice-$(VERSION).tar.gz"

aws: upload-docker
	aws batch register-job-definition --cli-input-json '${BATCH_JOB}'
	aws batch register-job-definition --cli-input-json '${DEPLOY_JOB}'

upload-reco-check-bundle:
	$(MAKE) -C reco-check-bundle upload

release: upload-reco-check-bundle upload
	sed 's/$$VERSION/$(VERSION)/' RELEASE.md > RELEASE_NOTES.md
	hub release create -d -F "RELEASE_NOTES.md" -a "dist/${NAME}-${VERSION}.tar.gz" -a "dist/${NAME}-reco-jarvice-${VERSION}.tar.gz" -a "dist/${NAME}-deploy-${VERSION}.tar.gz" "$(VERSION)"
	rm RELEASE_NOTES.md
