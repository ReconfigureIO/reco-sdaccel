FROM debian:jessie
RUN apt-get update && apt-get install -y --no-install-recommends \
		make \
        libgtk2.0-dev \
        python-pip \
        groff \
        gcc \
        curl \
        zip \
        unzip \
        time \
        rsync \
        python-yaml \
        python3 \
        graphviz \
	&& rm -rf /var/lib/apt/lists/* \
    && pip install awscli
COPY build/reco /opt/sdaccel-builder
COPY aws/*.sh /opt/
ENV USER=root
RUN aws configure set default.region us-east-1
WORKDIR /mnt
