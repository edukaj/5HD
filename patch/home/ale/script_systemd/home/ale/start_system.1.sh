#!/bin/bash
 
logger -s -t "start system sto gran cazz" "Sono partito stronzi"
sleep 15

function detectVerbose {
	[ $VERBOSE -ne 0 ] && set -x
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



detectVerbose
showParams
log_time "START"
clean_disk_space
logger -s -t "sti gran ..." "sto uscendo"
exit 0

. ${SCRIPTS_FOLDER}/splashscreen_functions.sh
. ${SCRIPTS_FOLDER}/get_last_valid_ip.sh
. ${SCRIPTS_FOLDER}/get_local_ip.sh
if [ $? -ne 0 ]; then
  splashscreen_show
  splashscreen_message "BOOT FAILURE" "red"
  stop
fi

. ${SCRIPTS_FOLDER}/initialize_variables_from_ip.sh


splashscreen_show

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

splashscreen_hide

log_time "FINISH"

echo "Exiting from script" | ${TEE}
