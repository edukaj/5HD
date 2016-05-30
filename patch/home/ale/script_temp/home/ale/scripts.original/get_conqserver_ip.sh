#!/bin/bash

CONQSERVER_IP=${MXSERVER_IP}
if [ ${IS_STANDALONE} -eq 1 ]; then
  echo "get_conqserver_ip - IS_STANDALONE: using ${CONQSERVER_IP} !!!" | ${TEE}
  return
fi
for ((i=1;i<=3;i++)); do
  response=$(echo -e "n05\0" | netcat -q 3 -uv -w 3 $MXSERVER_IP 10000)
  if [ ! -z ${response} ]; then
    CONQSERVER_IP=$(echo ${response} | sed s/'n\*'/' '/ | awk 'BEGIN {FS="."} ; {print $2"."$3"."$4"."$5}') 
    echo "get_conqserver_ip - Received IP: ${CONQSERVER_IP}" | ${TEE}
    return
  fi
  echo "get_conqserver_ip - No IP received ($i)" | ${TEE}
done
echo "get_conqserver_ip - IP Assigned is ${CONQSERVER_IP}" | ${TEE}
