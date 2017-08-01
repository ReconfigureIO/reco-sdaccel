FROM reconfigureio/docker-aws-fpga-runtime:latest
RUN apt-get update && apt-get install -y --no-install-recommends \
		python-pip \
		unzip \
    && pip install awscli
COPY run.sh /run.sh
