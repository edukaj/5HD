#!/bin/bash

OLDSECONDS=${SECONDS}
sudo -- ${OPT_QUBICAAMF_FOLDER}/lantime/lantime ${MXSERVER_IP} 2>&1 | ${TEE}
let SECONDS=$OLDSECONDS
log_time "LANTIME"
