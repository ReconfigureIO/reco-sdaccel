FROM debian:jessie
RUN apt-get update && apt-get install -y --no-install-recommends \
		make \
        libgtk2.0-dev \
	&& rm -rf /var/lib/apt/lists/*
COPY build/reco /opt/sdaccel-builder
WORKDIR /mnt
