TEE="logger -t stop_system "
SERVICESPATH="/opt/qubicaamf/services/"

if [ ! -d "${SERVICESPATH}" ]; then
  echo "No services found in ${SERVICESPATH}" | ${TEE}
else
  cd ${SERVICESPATH}
  for DIR in */; do
    echo "Stopping services in ${DIR}"  | ${TEE}
    ( cd ${DIR} ; sudo ./stop.sh >/dev/null 2>&1 ) &
  done
  cd -
fi

echo "Stopped all services in ${SERVICESPATH}"  | ${TEE}
# score
if [ -d "/matrix/bin" ]; then
  /matrix/bin/end
  echo "Stopped matrix"  | ${TEE}
fi

