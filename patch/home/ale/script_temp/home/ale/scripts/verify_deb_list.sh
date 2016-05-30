# should be executed with . verify_deb_list.sh

if [ ! -d ${CONFIG_FOLDER} ]; then
  mkdir -p ${CONFIG_FOLDER}
fi

LOGGER_TAG=$(basename ${BASH_SOURCE[0]})
WGET=`which wget`
MKTEMP=`which mktemp`
DPKG=`which dpkg`
SUDO=`which sudo`

saveDebList()
{
  local RESOURCE_FOLDER=$1
  local REPO_SERVER_IP=$2
  local HTTP_SERVER_PORT=$3

  local LOCAL_DEB_LIST_NAME="${RESOURCE_FOLDER}_deb_list.txt"
  local LOCAL_DEB_LIST_FILE="/tmp/${LOCAL_DEB_LIST_NAME}"
  rm ${LOCAL_DEB_LIST_FILE}

  local CONFIG_DEB_LIST_FILE="${CONFIG_FOLDER}/${LOCAL_DEB_LIST_NAME}"

  if [ -f ${CONFIG_DEB_LIST_FILE} ];
  then
    logger -s -t ${LOGGER_TAG} "File ${CONFIG_DEB_LIST_FILE} already exist."
    return 0
  fi

  local OUTPUT_FILE=${LOCAL_DEB_LIST_FILE}
  local DEB_LIST_FILENAME=${RESOURCE_FOLDER}/deb_list.txt

  logger -s -t ${LOGGER_TAG} "Download http://${REPO_SERVER_IP}:${HTTP_SERVER_PORT}/${DEB_LIST_FILENAME} ..."
  ${WGET} "http://${REPO_SERVER_IP}:${HTTP_SERVER_PORT}/${DEB_LIST_FILENAME}" -O ${OUTPUT_FILE}
  local wget_ret=$?
  if [ ${wget_ret} -ne 0 ]
  then
    logger -s -t ${LOGGER_TAG} "Error getting file $OUTPUT_FILE: $ret, unable to save file ..."
    exit 1
  fi
  logger -s -t ${LOGGER_TAG} "Save deb list after upgrade from ${PWD} ..."
  echo "cp -f ${LOCAL_DEB_LIST_FILE} ${CONFIG_DEB_LIST_FILE}" | logger -s -t ${LOGGER_TAG}
  cp -f ${LOCAL_DEB_LIST_FILE} ${CONFIG_DEB_LIST_FILE} 2>&1 | logger -s -t ${LOGGER_TAG}
}

saveDebList "mhd_distribution" ${CONQSERVER_IP} ${UPDATE_SERVER_PORT}
[ ${IS_SCORE} -eq 1 ] && saveDebList "shd_distribution" ${CONQSERVER_IP} ${UPDATE_SERVER_PORT}
