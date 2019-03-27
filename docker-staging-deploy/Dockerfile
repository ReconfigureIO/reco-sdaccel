FROM reconfigureio/docker-aws-fpga-runtime:latest
RUN apt-get update && apt-get install -y --no-install-recommends \
	awscli
COPY run.sh /run.sh
