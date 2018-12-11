# syntax = docker/dockerfile:experimental
FROM ubuntu:18.04

ENV DEBIAN_FRONTEND=noninteractive

# When DOCKER_BUILDKIT=1 is supported:
# RUN rm -f /etc/apt/apt.conf.d/docker-clean; echo 'Binary::apt::APT::Keep-Downloaded-Packages "true";' > /etc/apt/apt.conf.d/keep-cache
# RUN --mount=type=cache,target=/var/cache/apt,id=apt-cache \
#     --mount=type=cache,target=/var/lib/apt,id=apt-lib \

RUN \
    \
    apt-get update \
 && apt-get install --assume-yes --no-install-recommends \
        awscli \
        bc \
        curl \
        gcc \
        graphviz \
        groff \
        golang-go \
        jq \
        less \
        libgtk2.0-dev \
        make \
        python3 \
        python3-yaml \
        rsync \
        time \
        zip \
        unzip

COPY build/reco /opt/sdaccel-builder

COPY aws/*.sh /opt/

ENV USER=root AWS_DEFAULT_REGION=us-east-1

WORKDIR /mnt

COPY examples /mnt/examples
