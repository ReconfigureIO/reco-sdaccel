FROM debian:jessie
RUN apt-get update && apt-get install -y --no-install-recommends \
		make \
        libgtk2.0-dev \
        python-pip \
        groff \
        gcc \
        bc \
        curl \
        zip \
        unzip \
        time \
        rsync \
        python3-yaml \
        python3 \
        graphviz \
	&& rm -rf /var/lib/apt/lists/* \
    && pip install awscli \
    && curl -L /usr/bin/jq https://github.com/stedolan/jq/releases/download/jq-1.5/jq-linux64 > /usr/bin/jq \
    && chmod +x /usr/bin/jq
COPY build/reco /opt/sdaccel-builder
COPY aws/*.sh /opt/
ENV USER=root
RUN aws configure set default.region us-east-1
WORKDIR /mnt
