#!/bin/bash

if [ ${IS_SCORE} -eq 0 ]; then
    echo "get_hw_files - Nothing to do: IS_SCORE = 0" | ${TEE}
    return
fi
DIRECTORY_HW=/mnt/rw
FILE_TFTP_ERROR=/tmp/.hwParamCode
if [ ! -d $DIRECTORY_HW ]; then
  mkdir $DIRECTORY_HW ||
  {
    echo "get_hw_files - Unable to create dir $DIRECTORY_HW" | ${TEE}
    return
  }
fi
rm -rf $DIRECTORY_HW/*
number=$(lenParam=${#OCTECT};echo ${OCTECT:lenParam-2})
hwparamToGet=hwparam$number
hwresetToGet=hwreset$number
for hwToGet in $hwparamToGet $hwresetToGet
do
  rm -f $hwToGet
  echo "get_hw_files - Getting $hwToGet" | ${TEE}
  tftp $MXSERVER_IP > $FILE_TFTP_ERROR << EOF
bin
get $hwToGet
EOF
  cat $FILE_TFTP_ERROR | egrep "Error|Transfer timed" 1>/dev/null
  if [ $? -eq 0 ]; then
    echo "get_hw_files - Error getting file $hwToGet" | ${TEE}
  elif [ -f $hwToGet ]; then
    echo "get_hw_files - Moving file $hwToGet to $DIRECTORY_HW" | ${TEE}
    mv $hwToGet $DIRECTORY_HW/
  fi
  rm -f $FILE_TFTP_ERROR $hwToGet
done
