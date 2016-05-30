#!/bin/bash

TEE="logger -s -t awesome_config"
RC_LUA=/home/ale/.config/awesome/rc.lua
RC_LUA_TEMPLATE=/home/ale/awesome_config/rc.lua.template
MONITOR_SX=2
MONITOR_DX=1
SLEEP_BEFORE=1
SLEEP_RETRY=5
SLEEP_AFTER=1
MAX_ATTEMPTS=4

function deploy_rc_lua {
	cp ${RC_LUA_TEMPLATE} ${RC_LUA}
	sed -i "s/__MONITOR_SX__/${MONITOR_SX}/g" ${RC_LUA}
	sed -i "s/__MONITOR_DX__/${MONITOR_DX}/g" ${RC_LUA}
}

function reload_nvidia_configuration {
	local ATTEMPT=$1
	local NVIDIA_SETTING_RC=~/.nvidia-settings-rc
	local DEFAULT_VIEWPORT="0/CurrentMetaMode=DFP-0: 1280x720 +0+0 { ViewPortIn=1280x720, ViewPortOut=1280x720+0+0 }, DFP-1: 1280x720 +1280+0 { ViewPortIn=1280x720, ViewPortOut=1280x720+0+0 }"

	if [ ! -f ${NVIDIA_SETTING_RC} ]; then
		echo "[${ATTEMPT}] create default .nvidia-settings-rc" | ${TEE}
		echo ${DEFAULT_VIEWPORT} > ${NVIDIA_SETTING_RC}
	fi

	echo "[${ATTEMPT}] reload nvidia configuration..." | ${TEE}
	DISPLAY=:0 nvidia-settings --load-config-only
	sleep 0.5
}

function check_nvidia_configuration {
	export DISPLAY=:0
	ATTEMPT=1
	CHECKING_CONFIGURATION=1

	while [[ ${CHECKING_CONFIGURATION} -eq 1 ]]; do

		reload_nvidia_configuration	${ATTEMPT}
		NV_QUERY=$(nvidia-settings -q CurrentMetaMode 2>/dev/null)
		echo "[${ATTEMPT}] --- nvidia query ---" | ${TEE}
		echo "[${ATTEMPT}] " ${NV_QUERY} | ${TEE}
		echo "[${ATTEMPT}] --------------------" | ${TEE}

		IS_STANDARD=$(echo ${NV_QUERY} | egrep "nv-control.*DPY-2.*DPY-1" > /dev/null; echo $?)
		echo "[${ATTEMPT}] nvidia query for STANDARD returns: ${IS_STANDARD} (0 found, 1 not found)" | ${TEE}

		IS_REVERSED=$(echo ${NV_QUERY} | egrep "nv-control.*DPY-1.*DPY-2" > /dev/null; echo $?)
		echo "[${ATTEMPT}] nvidia query for REVERSED returns: ${IS_REVERSED} (0 found, 1 not found)" | ${TEE}

		if [[ ${IS_STANDARD} -ne 0 && ${IS_REVERSED} -ne 0 && ${ATTEMPT} -lt ${MAX_ATTEMPTS} ]]; then
			echo "[${ATTEMPT}] No valid monitor configuration found...try again!" | ${TEE}
			sleep ${SLEEP_RETRY}
			let ATTEMPT="${ATTEMPT} + 1"
		else
			CHECKING_CONFIGURATION=0
		fi
	done

	if [ ${IS_STANDARD} -eq 0 ]; then
        	echo "[${ATTEMPT}] Use monitor configuration: 2-1 (STANDARD)" | ${TEE}
	        MONITOR_SX=2
	        MONITOR_DX=1
	fi

	if [ ${IS_REVERSED} -eq 0 ]; then
            echo "[${ATTEMPT}] Use monitor configuration: 1-2 (REVERSED)" | ${TEE}
            MONITOR_SX=1
            MONITOR_DX=2
        fi

	if [[ ${IS_STANDARD} -ne 0 && ${IS_REVERSED} -ne 0 ]]; then
		echo "[${ATTEMPT}] No valid monitor configuration found. Use default: 2-1 (STANDARD)" | $TEE
	fi
}

sleep ${SLEEP_BEFORE}
check_nvidia_configuration
deploy_rc_lua
sleep ${SLEEP_AFTER}
