#!/bin/bash

if [ ${IS_SCORE} -eq 0 ]; then
    echo "init_isp - Nothing to do: IS_SCORE = 0" | ${TEE}
    return 0
fi
if [ ! -f /matrix/bin/ispInit ]; then
  echo "init_isp - ispInit not found!" | ${TEE}
  return 0
fi
echo 0 >/dev/ttyS0
if [ $? -ne 0 ]; then
  echo "init_isp - Echo to ttyS0 fails, reboot needed" | ${TEE}
  return -1
fi
echo "init_isp - Echo to ttyS0 success: Trying to start ispInit" | ${TEE}
pushd /matrix/bin/
/matrix/bin/ispInit
popd
echo "init_isp - ispInit completed" | ${TEE}
return 0