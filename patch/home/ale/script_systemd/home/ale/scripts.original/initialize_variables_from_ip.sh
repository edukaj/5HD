#!/bin/bash

echo "initialize_variables_from_ip - start... " | ${TEE}

OCTECT=$(echo $IP | awk 'BEGIN {FS="."} {print $4}')
BOX=${OCTECT:1}
MAC=`M=$(ifconfig eth0 | grep -o -E '([[:xdigit:]]{1,2}:){5}[[:xdigit:]]{1,2}');echo ${M//:/}`
SN=$(printf "%d\n" 0x${MAC:8});
HUB_IP=${IP/.216./.217.}
IS_SCORE=$([[ $OCTECT -ge 101 && $OCTECT -le 199 ]] && echo 1 || echo 0)
IS_SCORE_MODIFIED=$([ ${IS_SCORE} -ne ${LAST_VALID_WAS_SCORE} ] && echo 1 || echo 0)
UPDATE_SERVER_PORT=9999
UPDATE_FILE_NAME="update.$OCTECT"
NEXT_UPDATE_FILE="/tmp/$UPDATE_FILE_NAME"
BASEIMAGE_VERSION_FILE_NAME="4hd_image_base/version"
NEXT_BASEIMAGE_VERSION_FILE="/tmp/version"

echo "initialize_variables_from_ip - end " | ${TEE}
