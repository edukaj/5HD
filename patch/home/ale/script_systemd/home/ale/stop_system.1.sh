#!/bin/bash
TEE="logger -t stop_system "
echo "Stopped all services"  | ${TEE}
exit 0
