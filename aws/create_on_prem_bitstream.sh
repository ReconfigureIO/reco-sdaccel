#!/bin/bash

if [ "$1" == "" ]
then
  echo "ERROR: invalid usage"
  exit 1
fi

while [ "$1" != "" ]; do
    PARAM=`echo $1 | awk -F= '{print $1}'`
    VALUE=`echo $1 | awk -F= '{print $2}'`
    case $PARAM in
        --s3-endpoint)
            s3_endpoint=$VALUE
            ;;
        --s3-url)
            s3_url=$VALUE
            ;;
        *)
            echo "ERROR: unknown parameter \"$PARAM\""
            exit 1
            ;;
    esac
    shift
done

zip -qr artifacts.zip /tmp/workspace/.reco-work
aws s3 cp --quiet --endpoint="$s3_endpoint" "artifacts.zip" "$s3_url"
