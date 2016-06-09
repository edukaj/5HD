#!/bin/bash

sudo killall dhclient
ifconfig ${DEFAULT_NETWORK_INTERFACE} | grep "inet addr" 1>/dev/null
if [ $? -eq 0 ]; then
  IP=$(x=$(ifconfig ${DEFAULT_NETWORK_INTERFACE}) && x=${x#*inet addr:} && echo ${x%% *})
  echo "get_local_ip - ${DEFAULT_NETWORK_INTERFACE} has IP ${IP}. Killing dhclient" | ${TEE}
  IS_STANDALONE=0
  return 0
fi
echo "getLocalIP - ${DEFAULT_NETWORK_INTERFACE} has NOT an IP!" | ${TEE}
if [ ${LAST_VALID_WAS_SCORE} -eq 0 ]; then
  echo "get_local_ip - last IP was not a score!" | ${TEE}
  sudo dhclient -nw ${DEFAULT_NETWORK_INTERFACE}
  return -1
fi
sudo rm /var/lib/dhcp/dhclient.*leases
IP="192.0.216.$LAST_VALID_OCTECT"
echo "get_local_ip - last IP octect was ${LAST_VALID_OCTECT}: using ${IP}" | ${TEE}
sudo ifconfig ${DEFAULT_NETWORK_INTERFACE} $IP netmask 255.255.248.0
sudo route add default gw 192.0.216.1
sudo dhclient -nw ${DEFAULT_NETWORK_INTERFACE}

#serve alla vtnt per mostare lo sfondo rosso
touch /tmp/sonoStandAlone 

IS_STANDALONE=1
return 0
