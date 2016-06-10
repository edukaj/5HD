#!/bin/bash

INFO_FILE=/tmp/5hd.info

(
    echo "mac=$MAC"
    echo "serial-number=$SN"
    echo "mms-server=${CONQSERVER_IP}"
    echo "ip=$IP"
    echo "standAlone=0"
    [ -f ${LAST_UPDATE_FILE} ] && echo -en "update=$(cat ${LAST_UPDATE_FILE})\n" 
) > ${INFO_FILE}
