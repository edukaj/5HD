#!/bin/bash

if [ ${IS_STANDALONE} -eq 1 ]; then
  echo "Reinit not needed - IS_STANDALONE = 1" | ${TEE}
  return 0
fi

echo "Reinit - Checking for file $BASEIMAGE_VERSION_FILE_NAME on ConqServer" | ${TEE}
wgetRetry=0
while [ ${wgetRetry} -lt 20 ]; do
  wget $CONQSERVER_IP:$UPDATE_SERVER_PORT/$BASEIMAGE_VERSION_FILE_NAME -P /tmp/
  if [ $? -ne 0 ]; then
    wgetRetry=$((${wgetRetry}+1))
    echo "Reinit - ConqServer not available yet (${wgetRetry}/20)" | ${TEE}
    splashscreen_message "CHECKING SERVER INSTALLATION" "yellow"
    sleep 9
  else
    splashscreen_message "SYSTEM BOOTING" "cyan"
    wgetRetry=200
  fi
done

if [ ${wgetRetry} -eq 20 ]; then
  echo "Reinit failure - Not found file $BASEIMAGE_VERSION_FILE_NAME on $CONQSERVER_IP:$UPDATE_SERVER_PORT" | ${TEE}
  splashscreen_message "PLEASE VERIFY SERVER INSTALLATION" "red"
  return -1
fi
if [ ! -f $CURRENT_BASEIMAGE_VERSION_FILE ]; then
  echo "Reinit needed - Not found file $CURRENT_BASEIMAGE_VERSION_FILE" | ${TEE}
  splashscreen_message "PLEASE REINITIALIZE SYSTEM" "red"
  return 1
fi
diff $CURRENT_BASEIMAGE_VERSION_FILE $NEXT_BASEIMAGE_VERSION_FILE 1>/dev/null
if [ $? -ne 0 ]; then
  echo "Reinit needed - Files $CURRENT_BASEIMAGE_VERSION_FILE and $NEXT_BASEIMAGE_VERSION_FILE are different" | ${TEE}
  splashscreen_message "PLEASE REINITIALIZE SYSTEM" "red"
  return 1
fi
echo "Reinit not needed - Files $CURRENT_BASEIMAGE_VERSION_FILE and $NEXT_BASEIMAGE_VERSION_FILE are equal" | ${TEE}
return 0
