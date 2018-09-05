FROM ubuntu:artful

MAINTAINER Josh Bohde <josh.bohde@reconfigure.io>

RUN apt-get update && apt-get install -y --no-install-recommends \
    ca-certificates \
    curl \
    verilator \
    libfindbin-libs-perl \
    golang-go \
    shellcheck \
    make \
    jq \
    bc \
    git \
    time \
    wget \
    awscli \
    libcairo2-dev libpango1.0-dev libpangocairo-1.0-0 libgtk2.0-dev

ENV GOPATH /go
ENV PATH /mnt:$GOPATH/bin:/usr/local/go/bin:$PATH

RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"

RUN curl https://glide.sh/get | sh
