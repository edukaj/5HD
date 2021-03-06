#!/bin/bash

if [ ${IS_SCORE} -eq 0 ]; then
  echo "init_hub - Nothing to do: IS_SCORE = 0" | ${TEE}
  return
fi
if [ ! -f ${MATRIX_BIN_FOLDER}/hubInit ]; then
  echo "init_hub - hubInit not found!" | ${TEE}
  return
fi
if [ -f /tmp/hub_upload_report ]; then
  echo "init_hub - Hub is already initialized" | ${TEE}
  return
fi
echo "init_hub - Initializing hub (if hub has new programs, 5hd will be rebooted)" | ${TEE}
sync
${MATRIX_BIN_FOLDER}/hubInit ${HUB_IP}
