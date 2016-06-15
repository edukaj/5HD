#!/bin/bash
BACKGROUND=${BACKGROUND:-1}
if [ $BACKGROUND -eq 1 ]
then
	DISPLAY=:0 mplayer -profile qubica-dx-audio -screen 1 Daniela_Tamayo.mp4 -loop 0 </dev/null >/dev/null 2>&1 &
else
	DISPLAY=:0 mplayer -profile qubica-dx-audio -screen 1 Daniela_Tamayo.mp4 -loop 0
fi
exit 0

