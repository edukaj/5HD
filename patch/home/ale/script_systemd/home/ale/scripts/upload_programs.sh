#!/bin/bash

ping ${HUB_IP} -i 60 &>/dev/null &
[ ${IS_SCORE} -eq 0 ] && splashscreen_message "UPLOADING MMS PROGRAMS" "yellow" || splashscreen_message "UPLOADING PROGRAMS" "yellow"

if [ ! -d ${CONFIG_FOLDER} ]; then
  mkdir -p ${CONFIG_FOLDER}
fi

if ( ! ${SCRIPTS_FOLDER}/update_system.sh ${MXSERVER_IP} ${CONQSERVER_IP} ${IS_SCORE} ${CONFIG_FOLDER} ${UPDATE_SERVER_PORT}); then
  splashscreen_message "UPLOAD FAILED" "red"
  echo "Update failed. Manual upload needed!" | ${TEE}
  return 1
fi

. ${SCRIPTS_FOLDER}/get_hw_files.sh

cp -f ${NEXT_UPDATE_FILE} ${LAST_UPDATE_FILE}

sudo du -hs /var/cache/ | ${TEE}
sudo apt-get clean
sudo du -hs /var/cache/ | ${TEE}

. ${SCRIPTS_FOLDER}/get_edid.sh
return 0
