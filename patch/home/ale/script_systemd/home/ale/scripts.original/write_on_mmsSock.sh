#!/bin/bash

mmsSock=/tmp/mmsSock$1
cnt=0
while [ ! -p ${mmsSock} ]; do
  echo "write_on_mmsSock - ${mmsSock} not available yet (${cnt})" | ${TEE}
  sleep 2
  cnt=$((${cnt}+1))
done
echo "write_on_mmsSock - writing on ${mmsSock}..." | ${TEE}
echo 1 > ${mmsSock}
