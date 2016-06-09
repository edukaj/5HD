#!/bin/bash
#Adapt this script to your needs.
TEE="logger -s -t $(basename $0)" 
DEVICES=$(find /sys/class/drm/*/status)

#inspired by /etc/acpd/lid.sh and the function it sources

#displaynum=`ls /tmp/.X11-unix/* | sed s#/tmp/.X11-unix/X##`
#display=":$displaynum.0"
#export DISPLAY=":$displaynum.0"
export DISPLAY=:0

#uid=$(ck-list-sessions | awk 'BEGIN { unix_user = ""; } /^Session/ { unix_user = ""; } /unix-user =/ { gsub(/'\''/,"",$3); unix_user = $3; } /x11-display = '\'$display\''/ { print unix_user; exit (0); }')
#if [ -n "$uid" ]; then
#	# from https://wiki.archlinux.org/index.php/Acpid#Laptop_Monitor_Power_Off
#	export XAUTHORITY=$(ps -C Xorg -f --no-header | sed -n 's/.*-auth //; s/ -[^ ].*//; p')
#else
#  echo "unable to find an X session"
#  exit 1
#fi
export XAUTHORITY=$(ps -C Xorg -f --no-header | sed -n 's/.*-auth //; s/ -[^ ].*//; p')

#this while loop declare the $HDMI1 $VGA1 $LVDS1 and others if they are plugged in
while read l 
do 
  dir=$(dirname $l); 
  status=$(cat $l); 
  dev=$(echo $dir | cut -d\- -f 2-); 
  
  if [ $(expr match  $dev "HDMI") != "0" ]
  then
#REMOVE THE -X- part from HDMI-X-n
    dev=HDMI${dev#HDMI-?-}
  else 
    dev=$(echo $dev | tr -d '-')
  fi

  if [ "connected" == "$status" ]
  then 
    echo $dev "connected"
    declare $dev="yes"; 
  
  fi
done <<< "$DEVICES"

echo "Variables are $HDMI1 and $HDMI2" | ${TEE}
echo "XAUTHORITY is $XAUTHORITY" | ${TEE}
xset dpms force on
sleep 10 
if [[ ! -z "$HDMI1" && -z "$HDMI2" ]]
then
	${TEE} "Executing xrandr --output HDMI1 --mode 1280x720 --pos 0x0"
	xrandr --output HDMI1 --mode 1280x720 --pos 0x0
fi 


if [[ -z "$HDMI1" &&  ! -z "$HDMI2" ]]
then
	${TEE} "Executing xrandr --output HDMI2 --mode 1280x720 --pos 1280x0"
	xrandr --output HDMI2 --mode 1280x720 --pos 1280x0 
fi

if [[ ! -z "$HDMI1" && ! -z "$HDMI2" ]] 
then
	${TEE} "Executing xrandr --output HDMI1 --mode 1280x720 --pos 0x0"
	${TEE} "Executing xrandr --output HDMI2 --mode 1280x720 --pos 1280x0 --right-of HDMI1"
	xrandr --output HDMI1 --mode 1280x720 --pos 0x0
	xrandr --output HDMI2 --mode 1280x720 --pos 1280x0 --right-of HDMI1
fi

${TEE} "restarting awesome"
pkill -SIGHUP awesome 
