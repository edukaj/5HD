#!/bin/bash

getMxServerFromLease()
{
  local well=0
  dhcpServerIP=$(grep -m1 dhcp-server-identifier /var/lib/dhcp/dhclient.*leases | awk  -F'[ ;]' '{print $5}')
  if [ -n ${dhcpServerIP} ]
  then
    MXSERVER_IP=${dhcpServerIP}
    echo "get_mxserver_ip - DhcpServer IP found on leases file: ${MXSERVER_IP}" | ${TEE}
    well=1  
  fi
  sudo rm /var/lib/dhcp/dhclient.*leases
  
  [ $well -eq 1 ] && return 0
  return 1
}

getMxServerFromSyslog()
{  
  dhcpServerIP=$(cat /var/log/syslog | grep DHCPOFFER | tail -1 | sed -n -e 's/^.*from //p')
  if [ -n ${dhcpServerIP} ]
  then
    MXSERVER_IP=${dhcpServerIP}
    echo "get_mxserver_ip - DhcpServer IP found on syslog: ${MXSERVER_IP}" | ${TEE}
    return 0
  fi

  return 1 
}

checkIfStandAlone()
{
  if [ ${IS_STANDALONE} -eq 1 ]
  then
    MXSERVER_IP=192.0.216.1
    echo "get_mxserver_ip - IS_STANDALONE: using ${MXSERVER_IP} !!!" | ${TEE}
    return 0
  fi
  
  return 1
}

normalIpRecognition()
{
  checkIfStandAlone
  ret=$?
  if [ $ret -ne 0 ]
  then
    getMxServerFromLease
    ret=$?
  fi

  if [ $ret -ne 0 ]
  then
    getMxServerFromSyslog
    ret=$?
  fi

  if [ $ret -ne 0 ]
  then
    MXSERVER_IP=192.168.216.1
    echo "get_mxserver_ip - Cannot retrieve DhcpServer IP: using ${MXSERVER_IP} !!!" | ${TEE}
  fi
}

forcedIprecognition()
{
  MXSERVER_IP=${FORCE_MXSERVER_IP}
  echo "Forcing mxserver ip to ${MXSERVER_IP} as indicated from params" | ${TEE}
}

if  [ -z "${FORCE_MXSERVER_IP}" ]
then
  normalIpRecognition
else
  forcedIprecognition
fi