#!/bin/bash

SPLASHSCREEN_PID=`pgrep splashscreen`
[ -z "${SPLASHSCREEN_PID}" ] && SPLASHSCREEN_PID=0

function splashscreen_show {
    SPLASHSCREEN_IP=$([ ! -z ${IP} ] && echo ${IP} || echo 127.0.0.1)
    SPLASHSCREEN_SN=$([ ! -z ${SN} ] && echo ${SN} || echo 0)
    
    [ ${SPLASHSCREEN_PID} -ne 0 ] && { echo "splashscreen already opened" | ${TEE}; return; }
    
    ( { [ ${VERBOSE} -eq 0 ] && ( DISPLAY=:0 splashscreen >/dev/null 2>&1 ); } || ( DISPLAY=:0 splashscreen  | ${TEE} ) ) &
    
    SPLASHSCREEN_PID=`pgrep splashscreen`
    echo "splashscreen created with pid ${SPLASHSCREEN_PID}" | ${TEE}
    sleep 2
}

function splashscreen_message {
  SPLASH_MESSAGE=$1
  SPLASH_MESSAGE_COLOR=$2
    
  curl --data "show=true&message=${SPLASHSCREEN_SN}: ${SPLASH_MESSAGE}&color=${SPLASH_MESSAGE_COLOR}" ${SPLASHSCREEN_IP}:6543/splashscreen
  echo "$SPLASHSCREEN_IP-$SPLASHSCREEN_SN:$SPLASH_MESSAGE" | ${TEE}
}

function splashscreen_hide {
  echo "Hiding splashscreen" | ${TEE}
  curl --data "show=true&message=${SPLASHSCREEN_SN}:OK BOOT REQUIRED&color=cyan" ${SPLASHSCREEN_IP}:6543/splashscreen
}

function splashscreen_close {
  echo "Closing splashscreen" | ${TEE}
  killall splashscreen
}