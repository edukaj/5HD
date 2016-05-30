#!/bin/bash

if [ ${IS_STANDALONE} -eq 1 ]; then
  echo "Update not needed - IS_STANDALONE = 1" | ${TEE}
  return 0
fi
echo "Update - Checking for file $UPDATE_FILE_NAME on ConqServer" | ${TEE}
[ -f ${NEXT_UPDATE_FILE} ] && rm ${NEXT_UPDATE_FILE}
wget $CONQSERVER_IP:$UPDATE_SERVER_PORT/$UPDATE_FILE_NAME -P /tmp/
if [ $? -ne 0 ]; then
  echo "Update not needed - Not found file $UPDATE_FILE_NAME on $CONQSERVER_IP:$UPDATE_SERVER_PORT" | ${TEE}
  return 0
fi
if [ ! -f $LAST_UPDATE_FILE ]; then
  echo "Update needed - Not found file $LAST_UPDATE_FILE" | ${TEE}
  return 1
fi
diff $LAST_UPDATE_FILE $NEXT_UPDATE_FILE 1>/dev/null
if [ $? -ne 0 ]; then
  echo "Update needed - Files $LAST_UPDATE_FILE and $NEXT_UPDATE_FILE are different" | ${TEE}
  return 1
fi
echo "Update not needed - Files $LAST_UPDATE_FILE and $NEXT_UPDATE_FILE are equal" | ${TEE}
return 0
