#!/bin/bash

INFO_FILE=/tmp/5hd.info
echo "mac=$MAC" > $INFO_FILE
echo "serial-number=$SN" >> $INFO_FILE
echo "mms-server=${CONQSERVER_IP}" >> $INFO_FILE
echo "ip=$IP" >> $INFO_FILE
echo "standAlone=0" >> $INFO_FILE
[ -f ${LAST_UPDATE_FILE} ] && echo -en "update=$(cat ${LAST_UPDATE_FILE})\n" >> $INFO_FILE
