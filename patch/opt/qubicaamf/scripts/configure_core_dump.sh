#!/bin/bash

COREDUMP_FOLDER=/var/log/core
if [ ! -d ${COREDUMP_FOLDER} ]; then
 sudo mkdir -p ${COREDUMP_FOLDER}
 sudo chown ale:ale ${COREDUMP_FOLDER}
 chmod 0755 ${COREDUMP_FOLDER} 
 echo "created coredump folder: ${COREDUMP_FOLDER}" | ${TEE}
fi

echo "${COREDUMP_FOLDER}/core.%e" | sudo tee /proc/sys/kernel/core_pattern
echo 0x7f | sudo tee /proc/self/coredump_filter