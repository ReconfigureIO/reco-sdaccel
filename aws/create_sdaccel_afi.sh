#!/bin/bash

#
# Copyright 2015-2016 Amazon.com, Inc. or its affiliates. All Rights Reserved.
#
# Licensed under the Apache License, Version 2.0 (the "License"). You may
# not use this file except in compliance with the License. A copy of the
# License is located at
#
#     http://aws.amazon.com/apache2.0/
#
# or in the "license" file accompanying this file. This file is distributed
# on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either
# express or implied. See the License for the specific language governing
# permissions and limitations under the License.
#
script=${BASH_SOURCE[0]}
#if [ $script == $0 ]; then
#  echo "ERROR: You must source this script"
#  exit 2
#fi
full_script=$(readlink -f $script)
script_name=$(basename $full_script)
script_dir=$(dirname $full_script)

debug=0

function info_msg {
  echo -e "AWS FPGA-SDK-INFO: $1"
}

function debug_msg {
  if [[ $debug == 0 ]]; then
    return
  fi
  echo -e "AWS FPGA-SDK-DEBUG: $1"
}

function err_msg {
  echo -e >&2 "AWS FPGA-SDK-ERROR: $1"
}

function usage {
  echo -e "USAGE: $script_name [-d|-debug] [-h|-help] [-s3_bucket=<bucket_name>] [-s3_dcp_key=<S3_folder_of_dcp>] [-s3_logs_key=<S3_folder_of_logs>] [-xclbin=<xclbin_name>] [-o=<awsxclbin_name>] [-awsprofile=<aws_profile_name>]"
}
#FIXME -o

function help {
  info_msg "$script_name"
  info_msg " "
  info_msg "Sets up the environment for AWS FPGA SDAccel tools."
  info_msg " "
  info_msg "sdaccel_setup.sh script will:"
  info_msg "  (1) check if Xilinx's vivado is installed,"
  echo " "
  usage
}

#TODO
#Check aws cli is installed
#Change to dynamic clock freq, remove clock recipe
#Grab HDK version from github file
#Grab Shell version from github file
#Is deviceID and vendorID correct?


if [ "$1" == "" ]
then
  echo "ERROR: invalid usage"
  usage
  exit 1
fi

while [ "$1" != "" ]; do
    PARAM=`echo $1 | awk -F= '{print $1}'`
    VALUE=`echo $1 | awk -F= '{print $2}'`
    case $PARAM in
        -h | --help)
            usage
            exit
            ;;
        -xclbin)
            xclbin=$VALUE
            ;;
        -o)
            awsxclbin=$VALUE
            ;;
        -aws_profile_name)
            aws_profile_name=$VALUE
            ;;
        -s3_bucket)
            s3_bucket=$VALUE
            ;;
        -s3_logs_key)
            s3_logs=$VALUE
            ;;
        -s3_dcp_key)
            s3_dcps=$VALUE
            ;;
        *)
            echo "ERROR: unknown parameter \"$PARAM\""
            usage
            exit 1
            ;;
    esac
    shift
done

if [[ -e "$xclbin" ]]
then
    echo "Found '$xclbin'"
else
    echo "Error: File '$xclbin' is not found"
    exit 1
fi

if [[ -e "$awsxclbin" ]]
then
    echo "Error: File '$awsxclbin' already exists"
    exit 1
fi

if [ "$s3_bucket" == "" ]
then
  echo "ERROR: invalid s3_bucket"
  usage
  exit 1
fi

if [ "$s3_logs" == "" ]
then
  echo "ERROR: invalid s3_logs key"
  usage
  exit 1
fi

if [ "$s3_dcps" == "" ]
then
  echo "ERROR: invalid s3_dcps key"
  usage
  exit 1
fi

echo $xclbin
echo $awsxclbin
echo $aws_profile_name
echo $s3_bucket
echo $s3_logs
echo $s3_dcps

timestamp=$(date +"%y_%m_%d-%H%M%S")

#Steps
#1. Strip XCLBIN to get DCP for ingestion
#2. Create Manifest file
#3. Prepare ingestion tar file
#4. Call create-fpga-image
#5. Manipulate the AFI ID
#6. Create awsxclbin

#STEP 1
#Strip XCLBIN to get DCP for ingestion
$XILINX_SDX/runtime/bin/xclbinsplit -o ${timestamp} $xclbin
if [[ -e "${timestamp}-primary.bit" ]]
then
    echo "Found ${timestamp}-primary.bit"
else
    echo "Error: File ${timestamp}-primary.bit is not found"
    exit 1
fi
if [[ -e "${timestamp}-xclbin.xml" ]]
then
    echo "Found ${timestamp}-xclbin.xml"
else
    echo "Error: File ${timestamp}-xclbin.xml is not found"
    exit 1
fi
mkdir to_aws
cp ${timestamp}-primary.bit to_aws/${timestamp}_SH_CL_routed.dcp

#STEP 2
#Create Manifest file
strategy=DEFAULT
clock_recipe_a=A0
clock_recipe_b=B0
clock_recipe_c=C0
hdk_version=1.3.0
#FIXME hdk_version=$(grep 'HDK_VERSION' $HDK_DIR/hdk_version.txt | sed 's/=/ /g' | awk '{print $2}')
shell_version=0x071417d3
#FIXME shell_version=$(grep 'SHELL_VERSION' $HDK_SHELL_DIR/shell_version.txt | sed 's/=/ /g' | awk '{print $2}')
device_id=0xF000
vendor_id=0x1D0F
#FIXME id0_version=$(grep 'CL_SH_ID0' $CL_DIR/design/cl_id_defines.vh | grep 'define' | sed 's/_//g' | awk -F "h" '{print $2}')
#FIXME device_id="0x${id0_version:0:4}";
#FIXME vendor_id="0x${id0_version:4:4}";
subsystem_id=0x1D51
subsystem_vendor_id=0xFEDD
#FIXME id1_version=$(grep 'CL_SH_ID1' $CL_DIR/design/cl_id_defines.vh | grep 'define' | sed 's/_//g' | awk -F "h" '{print $2}')
#FIXME subsystem_id="0x${id1_version:0:4}";
#FIXME subsystem_vendor_id="0x${id1_version:4:4}";

clock_main_a0=$(echo 'cat //project/platform/device/systemClocks/clock/@frequency' | xmllint --shell "${timestamp}-xclbin.xml" | grep -v ">" | cut -f 2 -d "=" | tr -d MHz\" | xargs printf "%.0f");
clock_extra_b0=$(echo 'cat //project/platform/device/core/kernelClocks/clock[2]/@frequency' | xmllint --shell "${timestamp}-xclbin.xml" | grep -v ">" | cut -f 2 -d "=" | tr -d MHz\" | xargs printf "%.0f");
clock_extra_c0=$(echo 'cat //project/platform/device/core/kernelClocks/clock[1]/@frequency' | xmllint --shell "${timestamp}-xclbin.xml" | grep -v ">" | cut -f 2 -d "=" | tr -d MHz\" | xargs printf "%.0f");

echo "$clock_main_a0"
echo "$clock_extra_b0"
echo "$clock_extra_c0"

hash=$( sha256sum  to_aws/${timestamp}_SH_CL_routed.dcp | awk '{ print $1 }' )
FILENAME="${timestamp}_manifest.txt"
exec 3<>$FILENAME
echo "manifest_format_version=1" >&3
echo "pci_vendor_id=$vendor_id" >&3
echo "pci_device_id=$device_id" >&3
echo "pci_subsystem_id=$subsystem_id" >&3
echo "pci_subsystem_vendor_id=$subsystem_vendor_id" >&3
echo "dcp_hash=$hash" >&3
echo "shell_version=$shell_version" >&3
echo "dcp_file_name=${timestamp}_SH_CL_routed.dcp" >&3
echo "hdk_version=$hdk_version" >&3
echo "date=$timestamp" >&3
#echo "clock_recipe_a=$clock_recipe_a" >&3
#echo "clock_recipe_b=$clock_recipe_b" >&3
#echo "clock_recipe_c=$clock_recipe_c" >&3
echo "clock_main_a0=$clock_main_a0" >&3
echo "clock_extra_b0=$clock_extra_b0" >&3
echo "clock_extra_c0=$clock_extra_c0" >&3
exec 3>&-
exec 3>&-

if [[ -e "$FILENAME" ]]
then
    echo "Found '$FILENAME'"
else
    echo "Error: File '$FILENAME' is not found"
    exit 1
fi
cp $FILENAME to_aws/$FILENAME


#STEP 3
#Prepare ingestion
tar -cf ${timestamp}_Developer_SDAccel_Kernel.tar to_aws/${timestamp}_SH_CL_routed.dcp to_aws/${timestamp}_manifest.txt


#STEP 4
#Call create-fpga-image
if [ "$aws_profile_name" == "" ]
then
  aws s3 cp --quiet ${timestamp}_Developer_SDAccel_Kernel.tar s3://${s3_bucket}/${s3_dcps}/
  aws ec2 create-fpga-image --name ${xclbin} --description ${xclbin} --input-storage-location Bucket=${s3_bucket},Key=${s3_dcps}/${timestamp}_Developer_SDAccel_Kernel.tar --logs-storage-location Bucket=${s3_bucket},Key=${s3_logs} > ${timestamp}_afi_id.txt
else
  aws s3 --profile ${aws_profile_name} cp ${timestamp}_Developer_SDAccel_Kernel.tar s3://${s3_bucket}/${s3_dcps}/
  aws ec2 --profile ${aws_profile_name} create-fpga-image --name ${xclbin} --description ${xclbin} --input-storage-location Bucket=${s3_bucket},Key=${s3_dcps}/${timestamp}_Developer_SDAccel_Kernel.tar --logs-storage-location Bucket=${s3_bucket},Key=${s3_logs} > ${timestamp}_afi_id.txt
fi

#STEP 5
#Manipulate the AFI ID
#FIXME make sure the text does not have a newline
test=`grep agfi ${timestamp}_afi_id.txt | awk -F: '{print $2}' | sed 's/ \"//g' | sed 's/\".*//g' | sed ':a;N;$!ba;s/\n/ /g'`
echo -n $test > ${timestamp}_agfi_id.txt

#STEP 6
#Create .awsxclbin
$XILINX_SDX/runtime/bin/xclbincat -b ${timestamp}_agfi_id.txt -m ${timestamp}-xclbin.xml -n header.bin -o ${awsxclbin}.awsxclbin

#TODO - Should we poll describe API and block (add option)
