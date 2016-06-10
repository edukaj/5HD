#!/bin/bash

if [ ${IS_SCORE} -eq 0 ]; then
    echo "get_hw_files - Nothing to do: IS_SCORE = 0" | ${TEE}
    return
fi

DIRECTORY_HW=/mnt/rw

if [ ! -d ${DIRECTORY_HW} ]; then
  mkdir ${DIRECTORY_HW} ||
  {
    echo "get_hw_files - Unable to create dir ${DIRECTORY_HW}" | ${TEE}
    return
  }
fi
rm -rf ${DIRECTORY_HW}/*
number=$(lenParam=${#OCTECT};echo ${OCTECT:lenParam-2})
hwparamToGet=hwparam${number}
hwresetToGet=hwreset${number}
for hwToGet in ${hwparamToGet} ${hwresetToGet}
do
  rm -f ${hwToGet}
  echo "get_hw_files - Getting ${hwToGet}" | ${TEE}
  curl -s ftp://${MXSERVER_IP}:/${hwToGet} -o ${hwToGet}

  if [ $? -ne 0 ]; then
    echo "get_hw_files - Error getting file ${hwToGet}" | ${TEE}
  elif [ -f ${hwToGet} ]; then
    echo "get_hw_files - Moving file ${hwToGet} to ${DIRECTORY_HW}" | ${TEE}
    mv ${hwToGet} ${DIRECTORY_HW}/
  fi
  rm -f ${hwToGet}
done
