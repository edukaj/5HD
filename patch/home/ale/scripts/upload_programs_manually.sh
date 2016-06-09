#!/bin/bash

if [ ${IS_SCORE_MODIFIED} -ne 1 ]; then
  return 0
fi

ping ${HUB_IP} -i 60 &>/dev/null &
splashscreen_message "PLEASE UPLOAD PROGRAMS" "red"
echo "Update manual needed - IS_SCORE modified: octect is ${OCTECT} while last valid octect was ${LAST_VALID_OCTECT}" | ${TEE}
return -1
