#!/bin/bash

sudo service rsyslog stop

sudo chown root:syslog /var/log	
sudo chmod 775 /var/log

sudo chmod a+rw -R /var/log

sudo service rsyslog start
