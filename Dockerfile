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
        # required by sdaccel_setup.sh \
        git \
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
        # required by sdaccel_setup.sh \
        sudo \
        time \
        zip \
        unzip

# Needed for sdaccel_setup.sh
RUN mkdir -p /etc/OpenCL/vendors

COPY build/reco /opt/sdaccel-builder
COPY aws/*.sh /opt/

ENV USER=root AWS_DEFAULT_REGION=us-east-1

WORKDIR /mnt

COPY examples /mnt/examples

# Vivado doesn't support dash as /bin/sh, it expects bash.
RUN echo "dash dash/sh boolean false" | debconf-set-selections \
 && dpkg-reconfigure dash

# Workaround for Vivado's compiler not looking in the right place...
RUN find /usr/include/x86_64-linux-gnu/ -type d -exec bash -c 'mkdir -p /usr/include/${1#/usr/include/x86_64-linux-gnu/}' -- {} \; \
  && find /usr/include/x86_64-linux-gnu/ -iname '*.h' -exec bash -c 'ln -sf $1 /usr/include/${1#/usr/include/x86_64-linux-gnu/}' -- {} \;