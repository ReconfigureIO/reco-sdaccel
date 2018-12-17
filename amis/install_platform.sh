#!/bin/bash
set -eux

# This script runs during our AMI build process run with "hashicorp packer".

# This script grabs the AWS FPGA development repository and runs the install
# process. The important effects of this script are:

# * To obtain the "vivado platform" and install it into the
#   /opt/Xilinx/SDx/platforms directory.
# * To put the aws-fpga repository at /opt/Xilinx/aws-fpga, so that
#   sdaccel_setup.sh can be sourced during our AFI build.

# These variables need updating when we change the SDK/HDK version. RIO_ prefix
# to avoid risk of interference with AWS environment variables since this script
# shares its environment with AWS scripts.
RIO_AWS_FPGA_VERSION=1.4.5
RIO_SDX_VERSION=2018.2.op2258646
RIO_SDX_AWS_PLATFORM=xilinx_aws-vu9p-f1-04261818_dynamic_5_0

export XILINX_SDX=/opt/Xilinx/SDx/${RIO_SDX_VERSION}

# Grab the aws-fpga repository and put it in /opt/Xilinx/aws-fpga.
# Location is not ideal, it is chosen because that is what is bind mounted into
# our docker containers. Hopefully at some point we don't require this to be
# available, or we move it to a more sensible location.
{
    wget \
        --quiet \
        --output-document=aws-fpga-${RIO_AWS_FPGA_VERSION}.zip \
        https://github.com/aws/aws-fpga/archive/v${RIO_AWS_FPGA_VERSION}.zip

    unzip -q aws-fpga-${RIO_AWS_FPGA_VERSION}.zip

    mv ./aws-fpga-${RIO_AWS_FPGA_VERSION}/ /opt/Xilinx/aws-fpga
}

# Run sdaccel_setup.sh, which has a side effect of downloading the platforms
# from the internet and setting various environment variables (which we don't
# about at this point).
cd /opt/Xilinx/aws-fpga
{
    # Beware, must disable `set -eu` for running code from elsewhere...
    set +eu

    source sdaccel_setup.sh

    set -eu
}

# Copy the platform to the /opt/Xilinx/SDx/platforms/<platform name> directory.
cp --recursive \
    "SDAccel/aws_platform/${RIO_SDX_AWS_PLATFORM}/" \
    "$XILINX_SDX/platforms/"
