#!/bin/bash
PA_COMMAND="pactl info"

if [ $# -eq 0 ]; then
	echo "-----------------------------------------"
    echo "Use: ./query_pulseaudio.sh <PA_COMMAND>"  
    echo "" 
    echo "Examples:"
    echo "./query_pulseaudio.sh pacmd list-sinks"  
    echo "./query_pulseaudio.sh pactl list sinks"
    echo "./query_pulseaudio.sh pulseaudio -k"
    echo "-----------------------------------------"
    echo "using default PA_COMMAND '$PA_COMMAND'"
    echo ""
else
	PA_COMMAND=$@
fi
echo $PA_COMMAND

TEMP=$XDG_RUNTIME_DIR
unset XDG_RUNTIME_DIR
$PA_COMMAND
XDG_RUNTIME_DIR=$TEMP

