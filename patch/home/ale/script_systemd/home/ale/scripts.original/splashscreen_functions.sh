#!/bin/bash

function splashscreen_show {
  if [ -L /usr/bin/mms-viewer ]
  then
    SPLASHSCREEN_IP=$([ ! -z ${IP} ] && echo ${IP} || echo 127.0.0.1)
    SPLASHSCREEN_SN=$([ ! -z ${SN} ] && echo ${SN} || echo 0)
    SPLASHSCREEN_NW=/home/ale/splashscreen.nw
    ( DISPLAY=:0 mms-viewer ${SPLASHSCREEN_NW} ${SPLASHSCREEN_SN} ${SPLASHSCREEN_IP} >/dev/null 2>&1 ) &
    sleep 5
  fi
}

function splashscreen_message {
  SPLASH_MESSAGE=$1
  SPLASH_MESSAGE_COLOR=$2
  wget "http://127.0.0.1:8811/message?color=$SPLASH_MESSAGE_COLOR&message=$SPLASH_MESSAGE" -O /dev/null
}

function splashscreen_hide {
  wget "http://127.0.0.1:8811/quit" -O /dev/null
  sleep 1
  [[ `pidof nw` ]] && killall -9 nw > /dev/null 2>&1
}
