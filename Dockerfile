FROM debian:jessie
RUN apt-get update && apt-get install -y --no-install-recommends \
		make \
        libgtk2.0-dev \
        python-pip \
        groff \
        gcc \
	&& rm -rf /var/lib/apt/lists/* \
    && pip install awscli
COPY build/reco /opt/sdaccel-builder
COPY aws/*.sh /opt/
WORKDIR /mnt
