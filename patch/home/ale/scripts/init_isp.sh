#!/bin/bash
echo "Fake $(basename ${BASH_SOURCE[0]}) doing nothing" | ${TEE}
return 0