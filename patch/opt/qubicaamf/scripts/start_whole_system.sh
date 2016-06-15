#!/bin/bash

HOME_FOLDER=${HOME_FOLDER:-"/opt/qubicaamf"}
TEE="logger -t start_system "
SCRIPTS_FOLDER="${HOME_FOLDER}/scripts"
CONFIG_FOLDER="${HOME_FOLDER}/config"
OPT_QUBICAAMF_FOLDER=${OPT_QUBICAAMF_FOLDER:-${HOME_FOLDER}}
SERVICES_FOLDER="${OPT_QUBICAAMF_FOLDER}/services"
LAST_UPDATE_FILE="$CONFIG_FOLDER/update"
LAST_VALID_IP_FILE="$CONFIG_FOLDER/lastIp"
CURRENT_BASEIMAGE_VERSION_FILE="${OPT_QUBICAAMF_FOLDER}/HD_VERSION"
VERBOSE=${VERBOSE:-0}
DEFAULT_NETWORK_INTERFACE=${DEFAULT_NETWORK_INTERFACE:-"enp1s0"}
FORCE_MXSERVER_IP=${FORCE_MXSERVER_IP:-""}
FORCE_CONQUEROR_IP=${FORCE_CONQUEROR_IP:-""}
MATRIX_BIN_FOLDER=${MATRIX_BIN_FOLDER:-"/matrix/bin"}
FAKE_REBOOT=${FAKE_REBOOT:-0}

function detectVerbose {
	[ $VERBOSE -ne 0 ] && set -x
}

function showParams {
	[ $VERBOSE -eq 0 ] && return 0
	echo Home folder is ${HOME_FOLDER} | ${TEE}
  echo CONFIG_FOLDER is ${CONFIG_FOLDER} | ${TEE}
  echo DEFAULT_NETWORK_INTERFACE is ${DEFAULT_NETWORK_INTERFACE} | ${TEE}
  echo OPT_QUBICAAMF_FOLDER is ${OPT_QUBICAAMF_FOLDER} | ${TEE}
}


function logFolderCheck {
	if [ ! -e ${LAST_UPDATE_FILE} ]
	then
		${SCRIPTS_FOLDER}/give_log_folder_correct_privileges.sh
	fi
}

function clean_disk_space {
	#rimozione dei file di cache di apt in /var/cache
	APTCACHEBINS=(/var/cache/apt/srcpkgcache.bin /var/cache/apt/pkgcache.bin)
	for CACHEBIN in $APTCACHEBINS ; do
		if [ -e $CACHEBIN ]; then
			sudo rm -f $CACHEBIN
		fi
	done

	# rimozione dei file .list di apt
	APTLISTFILES=/var/lib/apt/lists
	# nessun bisogno di fare controlli siccome verrebbero rigeneerati automaticamente a ogni invocazione di apt-get
	sudo find $APTLISTFILES -mindepth 1 -delete
}

function log_time {
	echo "Current running time at stage ${1} : ${SECONDS} sec" | ${TEE}
}

function initService {
  local DIR=$1
  local PARAM=$2
  if [ ! -d ${DIR} ]; then
    echo "initService - Not found service in ${DIR} " | ${TEE}
    return
  fi
  if [ -z ${PARAM}]; then
    echo "initService - Start service in ${DIR} " | ${TEE}
  else
    echo "initService - Start service in ${DIR} with param ${PARAM}" | ${TEE}
  fi
  ( cd ${DIR} ;  ./start.sh ${PARAM} >/dev/null 2>&1 ) &
}

function restart {
  echo "Reboot needed !!!" | ${TEE}
  splashscreen_close
  [ ${FAKE_REBOOT} -eq 0 ] && ${SCRIPTS_FOLDER}/nReboot
  exit 0
}

function stop {
  echo "Exiting for waiting user action !!!" | ${TEE}
  . ${SCRIPTS_FOLDER}/init_hub.sh
  initService ${SERVICES_FOLDER}/net-reset
  initService ${SERVICES_FOLDER}/autoreset
  exit 0
}

function initServices {
  if [ ! -d "${SERVICES_FOLDER}" ]; then
    echo "initServices - No services found in ${SERVICES_FOLDER}" | ${TEE}
    return 0;
  fi
  cd ${SERVICES_FOLDER}
  if [ ${IS_SCORE} -eq 0 ]; then
    echo "initServices - Launching MMS services: IS_SCORE = 0" | ${TEE}
    initService mms-server
    initService net-reset
    initService node_apps 0
    initService uftp
  else
    echo "initServices - Launching all services: IS_SCORE = 1" | ${TEE}
    for DIR in */; do
      initService ${DIR}
    done
  fi
  cd -
  log_time "LAUNCHED_SERVICES"
}

function initApp {
  if [ ${IS_SCORE} -eq 0 ]; then
    echo "initApp - writing on mmsSocks: IS_SCORE = 0" | ${TEE}
    (. ${SCRIPTS_FOLDER}/write_on_mmsSock.sh sx) &
    (. ${SCRIPTS_FOLDER}/write_on_mmsSock.sh dx) &
    return 0;
  fi
  if [ -d "${MATRIX_BIN_FOLDER}" ]; then
    cd ${MATRIX_BIN_FOLDER}
    ./go
    echo "initApp - matrix go!!!" | ${TEE}
  else
    echo "initApp - matrix go not found!" | ${TEE}
  fi
}

. ${SCRIPTS_FOLDER}/get_last_valid_ip.sh
. ${SCRIPTS_FOLDER}/get_local_ip.sh
. ${SCRIPTS_FOLDER}/initialize_variables_from_ip.sh

. ${SCRIPTS_FOLDER}/splashscreen_functions.sh
splashscreen_show

detectVerbose
showParams
log_time "START"
#enable next call if needed
#logFolderCheck
clean_disk_space

if [ $? -ne 0 ]; then
  splashscreen_show
  splashscreen_message "BOOT FAILURE" "red"
  stop
fi



splashscreen_show

[ ${IS_SCORE} -ne 0 ] && splashscreen_message "SCORE BOOTING" "cyan"
[ ${IS_SCORE} -eq 0 ] && splashscreen_message "MMS BOOTING" "cyan"
[ ${IS_STANDALONE} -eq 1 ] && splashscreen_message "STANDALONE BOOTING" "orange"


. ${SCRIPTS_FOLDER}/get_mxserver_ip.sh
. ${SCRIPTS_FOLDER}/get_conqserver_ip.sh

. ${SCRIPTS_FOLDER}/sync_to_lantime.sh
. ${SCRIPTS_FOLDER}/write_5hd_info.sh


${SCRIPTS_FOLDER}/reset_mutex.sh
${SCRIPTS_FOLDER}/configure_core_dump.sh

. ${SCRIPTS_FOLDER}/reinit_manually.sh
[ $? -ne 0 ] && stop

. ${SCRIPTS_FOLDER}/upload_programs_check.sh

if [ $? -eq 1 ]; then
  . ${SCRIPTS_FOLDER}/upload_programs.sh
  [ $? -ne 0 ] && stop

  . ${SCRIPTS_FOLDER}/set_last_valid_ip.sh
  . ${SCRIPTS_FOLDER}/init_hub.sh
  restart
else
  . ${SCRIPTS_FOLDER}/verify_deb_list.sh
fi

. ${SCRIPTS_FOLDER}/upload_programs_manually.sh
[ $? -ne 0 ] && stop

. ${SCRIPTS_FOLDER}/init_hub.sh
. ${SCRIPTS_FOLDER}/set_last_valid_ip.sh

. ${SCRIPTS_FOLDER}/init_isp.sh
[ $? -ne 0 ] && restart

. ${SCRIPTS_FOLDER}/get_edid.sh
[ $? -ne 0 ] && restart

initServices

initApp

splashscreen_close

log_time "FINISH"

echo "Exiting from script" | ${TEE}
