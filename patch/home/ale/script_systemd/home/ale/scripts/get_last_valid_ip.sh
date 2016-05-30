#!/bin/bash

if [ ! -f $LAST_VALID_IP_FILE ]; then
  echo "get_last_valid_ip - file ${LAST_VALID_IP_FILE} does NOT exist: nothing to do" | ${TEE}
  LAST_VALID_WAS_SCORE=0
  return
fi

LAST_VALID_OCTECT=$(cat $LAST_VALID_IP_FILE | awk 'BEGIN {FS="."} {print $4}')
LAST_VALID_WAS_SCORE=$( [[ $LAST_VALID_OCTECT -ge 101 && $LAST_VALID_OCTECT -le 199 ]] && echo 1 || echo 0)
echo "get_last_valid_ip - Last valid octect was ${LAST_VALID_OCTECT} LAST_VALID_WAS_SCORE:${LAST_VALID_WAS_SCORE}" | ${TEE}
