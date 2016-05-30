#!/bin/bash
#set -x

LOGGER_TAG=$(basename ${BASH_SOURCE[0]})
WGET=`which wget`
MKTEMP=`which mktemp`
DPKG=`which dpkg`
SUDO=`which sudo`

MXSERVER_MESSAGE_INSTALLING_PACKAGES="Installing packages"
MXSERVER_MESSAGE_UPGRADE_DONE="Upgrade done"
MXSERVER_MESSAGE_ERROR="UPGRADE_ERROR"

MXSERVER_IP=$1
MXSERVER_PORT=8086
CONQSERVER_IP=$2
CONQSERVER_PORT=9999
IS_SCORE=$3
CONFIG_FOLDER=$4

SOME_PACKAGE_HAS_BEEN_INSTALLED=0
setSomePackageHasBeenInstalled()
{
	SOME_PACKAGE_HAS_BEEN_INSTALLED=1
}

sendMessageToMxServer ()
{
	echo "$1" | netcat -uv -w 1 $MXSERVER_IP $MXSERVER_PORT
}

MXSERVER_ALIVE_PROCESS_KEEPER=0
startMxServerAliveKeeper()
{
    (while [ 1 ]
    do
            sendMessageToMxServer "$MXSERVER_MESSAGE_INSTALLING_PACKAGES"
            sendMessageToMxServer "Just to keep alive.."
            sleep 30
    done) &
    MXSERVER_ALIVE_PROCESS_KEEPER=$!
    echo "Start notifying mxserver to avoid timeout expiration ${XSERVER_ALIVE_PROCESS_KEEPER}"
}

stopMxServerAliveKeeper()
{
	kill -9 ${MXSERVER_ALIVE_PROCESS_KEEPER}
}

sendUpgradeCompletedMessageToMxServer()
{
	sendMessageToMxServer "$MXSERVER_MESSAGE_UPGRADE_DONE"
}

sendUpgradeErrorMessageToMxServer()
{
	sendMessageToMxServer "$MXSERVER_MESSAGE_ERROR"
}

interrupt_procedure()
{
	local ERR_CODE=$1
	stopMxServerAliveKeeper
	sleep 1
	sendUpgradeErrorMessageToMxServer

	echo "*** UPDATE FAILED ***" | logger -s -t $LOGGER_TAG
	exit ${ERR_CODE}
}

buildPackageCollection()
{
	#print version of files
	remoteDebListNameArray=( )
	remoteDebListVersionArray=( )
	remoteDebListPackageArray=( )


	indexInPack=0
	while read line
	do
		#echo line is $line
#		echo $line | grep ":" &>/dev/null
#		noVersion=$?
#		remoteFile="${line%%:*}"
#		if [ $noVersion -eq 0 ]
#		then
#			remoteVersion="${line##*:}"
#		else
#			remoteVersion=""
#		fi


		IFS=':' read -a tokens <<< "$line"
		local remoteFileName=${tokens[0]}
		local remoteFileVersion=${tokens[1]}
		local remotePackageName=${tokens[2]}

		# ALL FIELDS NEED TO BE NOT EMPTY, ELSE ABORT PROCEDURE
		if [ -z "$remoteFileName" ]
		then
			logger -s -t $LOGGER_TAG "Expected file name for remote resource"
			interrupt_procedure 1
		elif [ -z "$remoteFileVersion" ]
		then
			logger -s -t $LOGGER_TAG "Expected version attribute for remote resource"
			interrupt_procedure 1
		elif [ -z "$remotePackageName" ]
		then
			logger -s -t $LOGGER_TAG "Expected package name attribute for remote resource"
			interrupt_procedure 1
		fi

		logger -s -t $LOGGER_TAG "Remote file: $remoteFileName, version $remoteFileVersion, package name: $remotePackageName"

		remoteDebListNameArray[$indexInPack]=$remoteFileName
		remoteDebListVersionArray[$indexInPack]=$remoteFileVersion
		remoteDebListPackageArray[$indexInPack]=$remotePackageName

		let indexInPack="$indexInPack + 1"
		echo -en "\n************************\n"
	done < $1
	echo all are ${remoteDebListNameArray[*]}
}

filterOnReallyRequiredPackages()
{
	myIndex=0
	strictlyRequiredPackages=( )
	for ((i=0; i<${#remoteDebListNameArray[@]}; i++))
	do
		local remoteDebFile=${remoteDebListNameArray[$i]}
		local remoteDebFileVersion=${remoteDebListVersionArray[$i]}
		local packageName=${remoteDebListPackageArray[$i]}

		logger -s -t $LOGGER_TAG "Checking for local package ${packageName}"

		#versione="$(apt-cache show ${remoteDebListNameArray[$i]} 2>/dev/null | grep "Version: " | awk '{print $2}')"


		local package_info="$(dpkg -s ${packageName})"
		local versione=$(echo "${package_info}" | grep "Version: " | awk '{ print $2  }')
		local package_status=$(echo "${package_info}" | grep "Status: " | awk ' BEGIN{FS=": "} {print $2} ')

		#echo "Verifying... " ${packageName}
		#vers1=$(${DPKG} -l | grep -w ${packageName})
		#vers2=`echo ${vers1} | awk '{ print $2 " " $3 }'`
		#vers3=`echo ${vers2} | grep -w ${packageName}`
		#vers4=`echo ${vers3} | awk '{ print $2 }'`
		#versione=${vers4}
		#echo "versione is: ${vers4}"

		needInstall=1
		if [ -z "$versione" ]
		then
			logger -s -t $LOGGER_TAG "It is not installed"
		elif [ "$versione" != "${remoteDebFileVersion}" ]
		then
			logger -s -t $LOGGER_TAG "Local version $versione is different"
		elif [ "${package_status}" != "install ok installed" ]
		then
			logger -s -t $LOGGER_TAG "Package ${packageName} is not installed properly (${package_status})"
		else
			logger -s -t $LOGGER_TAG "Remote package is already installed"
			needInstall=0
		fi
		if [ $needInstall -eq 1 ]
		then
			logger -s -t $LOGGER_TAG "Adding ${remoteDebFile}"
			strictlyRequiredPackages[$myIndex]="${remoteDebFile}"
			let myIndex="$myIndex + 1"
		fi
		echo -en "************************\n"
	done
	#echo lista aggiornata ${strictlyRequiredPackages[*]}

	#strToDpkg=""
	#for ((i=0; i<${#strictlyRequiredPackages[@]}; i++))
	#do
	#	strToDpkg="$strToDpkg ${strictlyRequiredPackages[$i]}"
	#done
	#here you have still to get all deb with wget !!!!
	#echo "I would call \"dpkg -i $strToDpkg\" "
}

notifyDownloadFailure()
{
	# Notify by curl (post rest) about the download failed
	echo notifying failure
}

checkRemoteEndpoint()
{
	local ENDPOINT_IP=$1

	ping -c 1 $ENDPOINT_IP &>/dev/null
	if [ $? -ne 0 ]
	then
		logger -s -t $LOGGER_TAG "End point at address $ENDPOINT_IP is not reacheable; aborting procedure"
		interrupt_procedure 1
	fi
}

downloadDebList()
{
	local RESOURCE_FOLDER=$1
	local REPO_SERVER_IP=$2
	local HTTP_SERVER_PORT=$3
	local OUTPUT_FILE=$4

	local DEB_LIST_FILENAME=${RESOURCE_FOLDER}/deb_list.txt

	${WGET} "http://${REPO_SERVER_IP}:${HTTP_SERVER_PORT}/${DEB_LIST_FILENAME}" -O ${OUTPUT_FILE}
	local wget_ret=$?
	if [ ${wget_ret} -ne 0 ]
	then
		logger -s -t $LOGGER_TAG "Error getting file $OUTPUT_FILE: $ret, aborting procedure"
		notifyDownloadFailure $REPO_SERVER_IP
		interrupt_procedure 1
	fi
}

downloadRequiredPackages()
{
	local RESOURCE_FOLDER=$1

	echo "rm -rf *"

	strToDpkg=""
	for ((i=0; i<${#strictlyRequiredPackages[@]}; i++))
	do
		#strToDpkg="$strToDpkg ${strictlyRequiredPackages[$i]}"
		local RESOURCE_NAME=${RESOURCE_FOLDER}/${strictlyRequiredPackages[$i]}
		local CMD="${WGET} "http://${REPO_SERVER_IP}:${HTTP_SERVER_PORT}/${RESOURCE_NAME}""
		echo ${CMD}
		`${CMD}`

        local wget_ret=$?
        if [ ${wget_ret} -ne 0 ]
        then
                logger -s -t $LOGGER_TAG "Error getting file ${RESOURCE_NAME}: $ret, aborting procedure"
                notifyDownloadFailure $REPO_SERVER_IP
                interrupt_procedure 1
        fi

	done
}

installAllPackages()
{
	${SUDO} ${DPKG} -i *.deb 2>&1 | logger -s -t $LOGGER_TAG
	DKPG_RETVAL=${PIPESTATUS[0]}
	return ${DKPG_RETVAL}
}

updatePackages()
{
	local RESOURCE_FOLDER=$1
	local REPO_SERVER_IP=$2
	local HTTP_SERVER_PORT=$3

	logger -s -t $LOGGER_TAG "Looking for file $1 on server $REPO_SERVER_IP"
	checkRemoteEndpoint ${REPO_SERVER_IP}

	LOCAL_DEB_LIST_NAME="${RESOURCE_FOLDER}_deb_list.txt"
	LOCAL_DEB_LIST_FILE="/tmp/${LOCAL_DEB_LIST_NAME}"
	rm ${LOCAL_DEB_LIST_FILE}

	downloadDebList ${RESOURCE_FOLDER} ${REPO_SERVER_IP} ${HTTP_SERVER_PORT} ${LOCAL_DEB_LIST_FILE}

	buildPackageCollection $LOCAL_DEB_LIST_FILE
	filterOnReallyRequiredPackages

	if [ ${#strictlyRequiredPackages[@]} -gt 0 ]
	then
		LOCAL_DEB_FOLDER=`${MKTEMP} -d /tmp/deblist-XXXX`
		pushd $LOCAL_DEB_FOLDER

		downloadRequiredPackages ${RESOURCE_FOLDER}
		installAllPackages
		local INST_RET=$?

		if [ ${INST_RET} -ne 0 ]
		then
			logger -s -t $LOGGER_TAG "installAllPackages failed with error ${INST_RET}; aborting procedure"
			interrupt_procedure 1
		else
			setSomePackageHasBeenInstalled
			local CONFIG_DEB_LIST_FILE="${CONFIG_FOLDER}/${LOCAL_DEB_LIST_NAME}"
			logger -s -t $LOGGER_TAG "Save deb list after upgrade from ${PWD} ..."
			echo "cp -f ${LOCAL_DEB_LIST_FILE} ${CONFIG_DEB_LIST_FILE}" | logger -s -t $LOGGER_TAG
			cp -f ${LOCAL_DEB_LIST_FILE} ${CONFIG_DEB_LIST_FILE} 2>&1 | logger -s -t $LOGGER_TAG
		fi

		popd
	fi
}

run()
{
	echo "*** Checking for update debs from ${CONQSERVER_IP} ***" | logger -s -t $LOGGER_TAG

	startMxServerAliveKeeper
	updatePackages "mhd_distribution" ${CONQSERVER_IP} ${CONQSERVER_PORT}
	[ ${IS_SCORE} -eq 1 ] && updatePackages "shd_distribution" ${CONQSERVER_IP} ${CONQSERVER_PORT}

	stopMxServerAliveKeeper
	sendUpgradeCompletedMessageToMxServer

	echo "*** UPDATE COMPLETED ***" | logger -s -t $LOGGER_TAG

	if [ ${SOME_PACKAGE_HAS_BEEN_INSTALLED} -gt 0 ]
	then
		echo "Some package has been installed." | logger -s -t $LOGGER_TAG
		#exit -1
	fi
	exit 0
}

run
