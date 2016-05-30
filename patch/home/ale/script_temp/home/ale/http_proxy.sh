#!/bin/bash

remove()
{
    if [ -f ${APT_CONF} ]; then
            echo "removing http/https proxy..."
            unset http_proxy HTTP_PROXY https_proxy HTTPS_PROXY
            echo "done."
    fi
}

install()
{
    HW_INFO=/tmp/5hd.info

    if [ ! -f ${HW_INFO} ]; then
            echo "error: unable to locate ${HW_INFO}"
            return
    fi

    CONQSERVER_IP=$(x=`cat ${HW_INFO} | grep mms-server`; echo ${x/mms-server=/})
    PROXY_ENDPOINT="http://${CONQSERVER_IP}:8093"

    echo "setting http/https proxy ${PROXY_ENDPOINT}..."

    http_proxy=${PROXY_ENDPOINT}
    HTTP_PROXY=${PROXY_ENDPOINT}
    https_proxy=${PROXY_ENDPOINT}
    HTTPS_PROXY=${PROXY_ENDPOINT}
    export http_proxy HTTP_PROXY https_proxy HTTPS_PROXY

    echo "done."
}

if [ "$0" != "-bash" ]; then
    echo "Using:"
    echo ". http_proxy install|remove"
    exit 1
fi

if [ "$1" == "install" ] ; then
    install
    return
fi

if [ "$1" == "remove" ] ; then
    remove
    return
fi

echo "Using:"
echo ". http_proxy install|remove"
