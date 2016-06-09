#!/bin/bash

function splashscreen_show {
    SPLASHSCREEN_IP=$([ ! -z ${IP} ] && echo ${IP} || echo 127.0.0.1)
    SPLASHSCREEN_SN=$([ ! -z ${SN} ] && echo ${SN} || echo 0)
}

function splashscreen_message {
  SPLASH_MESSAGE=$1
  SPLASH_MESSAGE_COLOR=$2
  echo "$SPLASHSCREEN_IP-$SPLASHSCREEN_SN:$SPLASH_MESSAGE" | ${TEE}
}

function splashscreen_hide {
  echo "Hiding splashscreen" | ${TEE}
}
