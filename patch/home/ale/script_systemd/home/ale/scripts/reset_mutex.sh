#!/bin/bash

ipcs -s | grep -i '0xaacc' | while read a b c d e; do ipcrm -S $a; done;
ipcs -s | grep -i '0xcacc' | while read a b c d e; do ipcrm -S $a; done;
ipcs -m | grep -i '0xaacc' | while read a b c d e; do ipcrm -M $a; done;
ipcs -m | grep -i '0xcacc' | while read a b c d e; do ipcrm -M $a; done;
