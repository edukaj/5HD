#!/bin/bash

OLDSECONDS=${SECONDS}
sudo -- /opt/qubicaamf/lantime/lantime ${MXSERVER_IP} 2>&1 | ${TEE}
let SECONDS=$OLDSECONDS
log_time "LANTIME"
