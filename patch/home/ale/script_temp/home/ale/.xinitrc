TEE="logger -s -t XINITRC"

echo "configuring nvidia-settings and building rc.lua" | ${TEE}
/home/ale/awesome_config/build_rc_lua.sh

/usr/bin/xset -dpms
/usr/bin/xset s off
/usr/bin/awsetbg -f /home/ale/black.jpg

# ma questa riga serve a qualcosa???
( sleep 3 ; /usr/bin/xsetroot ) &

( sleep 5 ; echo "starting start_whole_system" | ${TEE} ; /home/ale/start_whole_system.sh ) &

/usr/bin/amixer cset numid=56,iface=MIXER,name="IEC958 Playback Switch" 1

echo "starting awesome" | ${TEE}
exec /usr/bin/awesome
