#!/bin/bash

APT_CONF="/etc/apt/apt.conf"

remove()
{
	if [ -f ${APT_CONF} ]; then
		echo "removing apt proxy..."
		sudo rm ${APT_CONF}
		echo "done."
		exit 0
	fi
}

install()
{
	HW_INFO=/tmp/5hd.info

	if [ ! -f ${HW_INFO} ]; then
		echo "error: unable to locate ${HW_INFO}"
		exit 1
	fi

	CONQSERVER_IP=$(x=`cat ${HW_INFO} | grep mms-server`; echo ${x/mms-server=/})
	PROXY_ENDPOINT="${CONQSERVER_IP}:8093"
	TMP_APT_CONF="/tmp/apt.conf"

	echo "adding apt proxy ${PROXY_ENDPOINT}..."

	echo "Acquire::http::proxy \"http://${PROXY_ENDPOINT}\";" > ${TMP_APT_CONF}
	echo "Acquire::https::proxy \"https://${PROXY_ENDPOINT}\";" >> ${TMP_APT_CONF}
	sudo cp ${TMP_APT_CONF} ${APT_CONF}

	echo "updating apt..."

	sudo apt-get update

	echo "done."
	exit 0
}

if [ "$1" == "install" ] ; then
	install
fi

if [ "$1" == "remove" ] ; then
	remove
fi

echo "Using:"
echo "apt_proxy install|remove"
