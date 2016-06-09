#!/bin/bash

if [ ${IS_STANDALONE} -eq 1 ]; then
  echo "set_last_valid_ip - nothing to do because is standalone" | ${TEE}
  return
fi
echo "set_last_valid_ip - setting ${IP} in ${LAST_VALID_IP_FILE}" | ${TEE}
echo ${IP} > ${LAST_VALID_IP_FILE}
