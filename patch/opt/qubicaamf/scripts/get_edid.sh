#!/bin/bash

EDID_FILE_NAME="5hd.${OCTECT}"
EDID_FILE="/tmp/${EDID_FILE_NAME}"
EDID_FOLDER="${OPT_QUBICAAMF_FOLDER}/monitor/edid"
SET_VIEWPORT_SCRIPT="${OPT_QUBICAAMF_FOLDER}/scripts/set-viewport"
SET_TRANSFORM_SCRIPT="${OPT_QUBICAAMF_FOLDER}/scripts/set-transform"

echo "get_edid - Checking for file ${EDID_FILE_NAME} on ConqServer" | ${TEE}
[ -f ${EDID_FILE} ] && rm ${EDID_FILE}
wget ${CONQSERVER_IP}:${UPDATE_SERVER_PORT}/${EDID_FILE_NAME} -T 5 -t 2 -w 1  -P /tmp/
if [ $? -ne 0 ]; then
  echo "get_edid - Not found file ${EDID_FILE_NAME} on ${CONQSERVER_IP}:${UPDATE_SERVER_PORT}" | ${TEE}
  return 0;
fi
reboot_needed=0
for i in sx dx
do
  edidParam=$(x=$(cat ${EDID_FILE} | grep edid.$i); [ $? -eq 0 ] && echo ${x##*=} | tr -d '\r' )
  if [ -z $edidParam ]; then
    echo "get_edid - Not found edid info for side $i" | ${TEE}
    continue;
  fi
  edidFile="/tmp/$(basename $edidParam)"
  [ -f ${edidFile} ] && rm ${edidFile}
  wget ${CONQSERVER_IP}:${UPDATE_SERVER_PORT}/$edidParam -T 5 -t 2 -w 1 -P /tmp -nd
  if [ $? -ne 0 ]; then
    echo "get_edid - Not found file $edidParam" | ${TEE}
    continue;
  fi
  diff -aq ${EDID_FOLDER}/edid_$i.bin $edidFile 1>/dev/null
  if [ $? -eq 0 ]; then
    echo "get_edid - File $edidFile is the same as ${EDID_FOLDER}/edid_$i.bin" | ${TEE}
  else
    echo "get_edid - File $edidFile differs from ${EDID_FOLDER}/edid_$i.bin" | ${TEE}
    sudo cp $edidFile ${EDID_FOLDER}/edid_$i.bin || echo "get_edid - $edidFile copy error" | ${TEE}
    reboot_needed=1
  fi
  rm -f $edidFile
done
for i in sx dx
do
  sizeParam=$(x=$(cat ${EDID_FILE} | grep size.$i); [ $? -eq 0 ] && echo ${x##*=} | tr -d '\r' )
  if [ -z $sizeParam ]; then
    echo "get_edid - Not found size info for side $i" | ${TEE}
    continue;
  fi
  echo "get_edid - Using Size $sizeParam for side $i" | ${TEE}
  ${SET_VIEWPORT_SCRIPT} $i $sizeParam
done

${SET_TRANSFORM_SCRIPT}

return ${reboot_needed}
