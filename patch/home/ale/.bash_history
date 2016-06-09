vim start_system.1.sh 
less ~/script_temp/home/ale/start_whole_system.sh 
vim start_system.1.sh 
sudo systemctl daemon-reload 
sudo systemctl isolate graphical.target 
sudo systemctl isolate score.target 
vim start_system.1.sh 
less /etc/systemd/system/start_system.service 
vim start_system.1.sh 
less ~/script_temp/home/ale/scripts/splashscreen_functions.sh 
less ~/script_temp/home/ale/scripts.original/splashscreen_functions.sh 
less ~/script_temp/home/ale/scripts.original/
less ~/script_temp/home/ale/splashscreen.nw 
vim /tmp/prev/home.list 
sed -i /tmp/prev/home.list -e '/.*home\/ale\/script_temp.*/d'
vim /tmp/prev/home.list 
snapshot 
ls
exit
reset
echo $HOME
reset
exit
reset
sudo systemctl isolate multi-user.target
ll
cat /etc/systemd/logind.conf
systemd-delta 
cat /lib/systemd/system/systemd-timesyncd.service
cat /lib/systemd/system/rc-local.service
systemd-delta 
man system.unit
reset
man systemd.unit 
ll
ll .config/
ll .config/htop/
cat .config/htop/htoprc 
cd .config/
mkdir systemd
ll
cat $XDG_CONFIG_HOME
at $XDG_CONFIG_HOME
cat $XDG_CONFIG_HOME
echo $XDG_CONFIG_HOME
sudo systemctl set-default 
sudo systemctl isolate score.target 
sudo systemctl set-default graphical.target 
echo ${HOME}
sudo systemctl isolate graphical.target 
xterm &
DISPLAY=:0 xterm &
cd .config/
ll
cd systemd/
ll
sudo mv /lib/systemd/system/score.target .
ll
chown ale:ale score.target 
sudo chown ale:ale score.target 
ll
echo ${HOME}
echo ${XDG_CONFIG_PATH}
echo ${XDG_CONFIG_HOME}
echo ${XDG_DATA_HOME}
cd .config/
ll
cd systemd/
ll
cat score.target 
sudo systemctl daemon-reload 
sudo mv /etc/systemd/system/score.target.wants .
sudo mv /etc/systemd/system/start_system.service .
ll
sudo systemctl daemon-reload 
sudo systemctl set-default score.target
sudo systemctl reboot 
echo ${HOME}
echo 
echo ${XDG_CONFIG_HOME}
cat /etc/systemd/
ll /etc/systemd/
cd /etc/systemd/
ll user
reset
sudo systemctl isolate score.target
systemctl status score.target
cd .config/systemd/
ll
ll score.target
systemctl status start_system.service
sudo mv start_system.service score.target.wants /etc/systemd/user
ll /etc/systemd/user
ll
sudo mv score.target /lib/systemd/system/
sudo systemctl daemon-reload 
sudo systemctl status start_whole_system.service
sudo systemctl status start_system.service
sudo systemctl reboot 
reset
ll
sudo systemctl status start_system.service
ll
sudo mv /etc/systemd/user/s* /etc/systemd/system/
sudo systemctl daemon-reload 
sudo systemctl status start_system.service 
sudo systemctl isolate multi-user.target 
cat /etc/systemd/system/start_system.service 
cat /home/ale/script_systemd/home/ale/start_system.1.sh
ct /home/ale/script_systemd/home/ale/start_system.1.sh
vim /home/ale/script_systemd/home/ale/start_system.1.sh
sudo apt update 
journalctl --disk-usage 
journalctl --list-boots 
dpkg -l | grep qt
dpkg -l 
dpkg -l | grep qt
dpkg -l | grep libq
dpkg -l | grep libsf
sudo apt install libsfml-graphics2.3v5 
sudo apt install libfreetype6
sudo systemctl isolate score.target 
ll
./splashscreen 
sudo apt install update-
sudo apt install update
sudo apt update 
sudo apt install libcpprest2.8 
./splashscreen 
DISPLAY=:0 ./splashscreen 
reset
DISPLAY=:0 ./splashscreen 
ll
DISPLAY=:0 ./splashscreen 
ll
DISPLAY=:0 ./splashscreen 
ll
mkdir splashscreen
rm splashscreen 
mkdir splashscreen
ll
rm image*
ll
cd splashscreen/
ll
ll media/
cd ..
ll
cd splashscreen/
ll
ll media/
ll
./splashscreen 
DISPLAY=:0 ./splashscreen 
DISPLAY=:1 ./splashscreen 
DISPLAY=:0 ./splashscreen 
ll media/
DISPLAY=:0 ./splashscreen 
ll
xrandr 
DISPLAY=:0 xrandr 
DISPLAY=:0 ./splashscreen 
DISPLAY=:0 ./splashscreen &
cd ..
ll
cd script_systemd/
ll
cd opt/
ll
cd qubicaamf/
ll
cat services/
ll
cd services/
ll
cd ../bin/
cd -
ll -
ll ../bin/
ll
vim splashscreen.service
ll
cp start_system.service splashscreen.service
vim splashscreen.service 
ll /home/ale/splashscreen/splashscreen 
vim splashscreen.service 
vim start_system.service 
ll /etc/systemd/system/
ll
sudo systemctl link splashscreen.service 
sudo systemctl link 
sudo systemctl link --help
man systemctl
sudo systemctl link splashscreen.service 
sudo systemctl link ./splashscreen.service 
cd /etc/systemd/system/
ll
sudo ln -s /home/ale/script_systemd/opt/qubicaamf/services/splashscreen.service splashscreen.service
ll
sudo systemctl daemon-reload 
fg
sudo systemctl start splashs
sudo systemctl start splashscreen.service
sudo systemctl status splashscreen.service
export DISPLAY=:0
sudo systemctl status splashscreen.service
sudo systemctl stop splashscreen.service
sudo systemctl start splashscreen.service
sudo systemctl status splashscreen.service
sudo systemctl enable splashscreen.service
ll
sudo systemctl reboot 
sudo systemctl status splashscreen.service 
ll /etc/
ll
cd script_systemd/
ll
cd home/
ll
cd ale/
ll
vim start_system.1.sh 
ll
cd script_systemd/
ll
cd home/ale/
ll
vim start_system.
vim start_system.1.sh 
rm start_system.1.sh.swp
ll
rm .start_system.1.sh.swp
ll
kk
ll
sudo systemctl reboot 
sudo systemctl -b 
sudo journalctl -b
ll
systemctl status start_system.service 
ll
cd /etc/systemd/
ll
cp system/start_system.service user/start_system.service
sudo cp system/start_system.service user/start_system.service
ll
cd system/
ll
cd ..
ll user
sudo rm system/start_system.service 
sudo cp system/splashscreen.service user/
ll user
cd system/
ll
ll score.target.wants/
cd -
sudo mv system/score.target.wants/ user
ll user
ll user/score.target.wants/
ll system
sudo rm system/splashscreen.service 
sudo systemctl daemon-reload 
sudo systemctl status start_system.service
ll
sudo mv user/* system/
ll user
ll system
ll
cd system/
ll
sudo rm splashscreen.service start_system.service
sudo ln -s /home/ale/script_systemd/opt/qubicaamf/services/start_system.service  start_system.service
sudo ln -s /home/ale/script_systemd/opt/qubicaamf/services/splashscreen.service splashscreen.service
sudo systemctl daemon-reki
sudo systemctl daemon-reload 
systemctl status start_system.service 
systemctl status splashscreen.service 
vim start_system.service
vim splashscreen.service 
sudo systemctl status splashscreen.service
sudo systemctl start splashscreen.service
sudo systemctl status splashscreen.service
vim splashscreen.service 
echo ${XAUTHORITY}
ll ~
vim splashscreen.service 
sudo systemctl daemon-reload 
sudo systemctl start splashscreen.service
sudo systemctl stop splashscreen.service 
sudo systemctl start splashscreen.service
sudo systemctl enable splashscreen.service
ll
cd score.target.wants/
ll
ln -s /home/ale/script_systemd/opt/qubicaamf/services/splashscreen.service splashscreen.service
sudo ln -s /home/ale/script_systemd/opt/qubicaamf/services/splashscreen.service splashscreen.service
ll
sudo systemctl reboot 
sudo systemctl status splashscreen.service 
sudo systemctl enable splashscreen.service 
ll script_systemd/opt/qubicaamf/
ll
cd script_systemd/opt/qubicaamf/
ll
cd services/
ll
vim start_system.service 
cat start_system.service 
cat splashscreen.service 
vim splashscreen.service 
systemctl list-dependencies score.target 
ll
systemctl start splashscreen.service 
sudo systemctl start splashscreen.service 
sudo systemctl stop splashscreen.service 
killall splashscreen 
sudo killall splashscreen 
sudo systemctl reboot 
sudo systemctl start splashscreen.service 
sudo systemctl stop splashscreen.service 
sudo systemctl start splashscreen.service 
sudo systemctl stop splashscreen.service 
sudo systemctl start splashscreen.service 
sudo systemctl stop splashscreen.service 
sudo systemctl enable start_system.service
cd /etc/systemd/system/
ll
sudo rm splashscreen.service start_system.service
cp /home/ale/script_systemd/opt/qubicaamf/services/start_system.service /home/ale/script_systemd/opt/qubicaamf/services/splashscreen.service .
sudo cp /home/ale/script_systemd/opt/qubicaamf/services/start_system.service /home/ale/script_systemd/opt/qubicaamf/services/splashscreen.service .
ll
sudo cp -r score.target.wants score.target.wants2
sudo rm -fr score.target.wants/*
ll score.target.wants/
sudo systemctl daemon-reload 
sudo systemctl enable splashscreen.service
sudo systemctl start_system.service
sudo systemctl enable start_system.service
ll score.target.wants
sudo systemctl reboot 
systemctl is-enabled splashscreen.service 
systemctl is-active splashscreen.service 
journalctl -b
journalctl -b -u splashscreen.service 
journalctl -b 
journalctl -b -u start_system.service 
systemctl get-default 
systemctl set-default score.target 
sudo systemctl reboot 
cd splashscreen/
echo $DISPLAY
journalctl -b -u splashscreen.service 
systemctl is-active splashscreen.service 
systemctl is-enabled splashscreen.service 
systemctl --version
systemd-analyze
systemd-analyze blame
systemd-analyze critical-chain 
systemd --user
sudo systemd --user
sudo systemd --user ale
systemd --user
sudo systemd --user
sudo systemctl disable splashscreen.service 
sudo rm -r /etc/systemd/system/score.target.wants2/splashscreen.service.
sudo rm -fr /etc/systemd/system/score.target.wants2
sudo systemctl restart 
sudo systemctl reboot 
cat /etc/systemd/system/splashscreen.service 
cat /lib/systemd/system/graphical.target
cat /lib/systemd/system/score.target 
sudo vim /lib/systemd/system/s
cat /lib/systemd/system/score.target 
sudo systemctl shutdown
sudo systemctl poweroff 
sudo systemctl isolate multi-user.target 
sudo systemctl isolate score.target
ll
cd tmp
ll
journalctl -b -u splashscreen.service 
vim splashscreen/splashscreen.sh 
sudo systemctl reboot 
cat /lib/systemd/system/graphical.target
ll /tmp/
cd /etc/X11/
ll
cat default-display-manager 
reset && sudo find / -type f -name "*systemd-user.sh"
cd 
sudo systemctl --user enable splashscreen.service
cat /dev/tty6
sudo cat /dev/tty6
ll /lib/systemd/system
cd /lib/systemd/system
ll
cat user@.service
sudo cp score.target qamf.target
sudo systemctl set-default qamf.target 
sudo vim qamf.target 
cd /etc/systemd/system/
ll
ll score.target.wants/
sudo vim start_system.service 
sudo mv start_system.service qamf_system.service
sudo vim qamf_system.service
cat /home/ale/script_systemd/opt/qubicaamf/services/start_system.service
sudo vim qamf_system.service
cd 
cd .config/
ll
cd systemd/
ll
mkdir user
cd user/
ll
mv /etc/systemd/system/qamf_system.service .
sudo mv /etc/systemd/system/qamf_system.service .
ll
chown ale:ale qamf_system.service 
sudo chown ale:ale qamf_system.service 
l
ll
sudo systemctl daemon-reload 
systemctl --user enable qamf_system.service 
cat /home/ale/.config/systemd/user/qamf.target.wants/qamf_system.service
ll
ll qamf.target.wants/
cat /home/ale/.config/systemd/user/qamf_system.service
ll /home/ale/script_systemd/home/ale/start_system.1.sh
ll /home/ale/script_systemd/home/ale/stop_system.1.sh
ll /home/ale/script_systemd/home/ale/start_system.cfg
cat /home/ale/script_systemd/home/ale/start_system.cfg
vim /home/ale/script_systemd/home/ale/start_system.1.sh
sudo systemctl reboot 
systemctl show
systemctl show qamf.target 
systemctl status qamf.target 
journalctl -b -u qamf.service
less /var/log/syslog -b -u qamf.service
systemctl status qamf.service
sudo systemctl status qamf.service
systemctl start qamf_system.service
sudo systemctl daemon-reload 
systemctl start qamf_system.service
strace systemctl start qamf_system.service
systemctl edit qamf_system.service
systemctl list-units
systemctl list-units | grep pulse
systemctl list-units | grep pci
systemctl list-units | grep pul
systemd-analyze
systemd-analyze blame 
pulseaudio 
ll
./mplayerSx.sh Daniela_Tamayo.mp4 
alsamixer 
systemctl list-units | grep pul
history | user
history | grep user
systemctl --user enable qamf_system.service
cd .config/systemd/user
ll
cat qamf
cat qamf_system.service 
ll qamf.target.wants/
cd ..
ll
cd user/
ll
sudo mv qamf_system.service qamf-system.service
sudo rm -r qamf.target.wants/
ll
sudo systemctl daemon-reload 
ll
ll /etc/systemd/system
ll /lib/systemd/system/ssh.service
ll
find ~ -type f -name pulseaudio.service
sudo find / -type f -name pulseaudio.service
systemctl --user show pulseaudio.service 
systemctl --user edit pulseaudio.service 
ll /etc/systemd/user/
sudo find / -type f -name pulseaudio.service
ll /usr/lib/systemd/user/pulseaudio.service
systemctl status pulseaudio.service
systemctl --user status pulseaudio.service
systemctl --user status qamf-system.service 
systemctl --user start qamf-system.service 
ll /var/log/syslog
less /var/log/syslog
date
sudo systemctl reboot 
reset
systemd-analyze dot --user --order
systemd-analyze dot | dot -Tsvg > systemd.svg'!
'
ll /tmp/
ll
systemctl --user status pulseaudio.service
cd .config/systemd/user/
ll
sudo mv qamf-system.service /usr/lib/systemd/user/
ll /usr/lib/systemd/user
cat /lib/systemd/system/sockets.target
cat pulseaudio.socket
ll
cd /usr/lib/systemd/user
ll
cat pulseaudio.socket
ll
cat sockets.target 
cat pulseaudio.socket 
cat pulseaudio.service 
sudo systemctl daemon-reload 
ll
sudo systemctl --user start qamf-system.service 
ll ~/.config/systemd/user/
rm -r ~/.config/systemd/
systemctl daemon-reload 
ll
kk
cat sound.target 
cat basic.target 
sudo vim qamf-system.service 
ll
cat timers.target 
cat pulseaudio.service
vim qamf-system.service 
sudo systemctl --user enable qamf-system.service 
sudo systemctl reboot 
less /var/log/syslog
cat /home/ale/script_systemd/home/ale/start_system.1.sh
sudo systemctl shutdown
sudo systemctl poweroff 
cd /etc/systemd/
ls
find . -anewer 
touch /tmp/a
touch /tmp/a --date may 24
man touch
touch /tmp/a --date="may 24"
sudoo find . -anewwr /tmp/a
sudo find . -anewwr /tmp/a
sudo find . -anewer /tmp/a
ls -al system/multi-user.target.wants/rsyslog.service 
ls -al /tmp/a
sudo find . -newer /tmp/a
ls -al user
ls -al timesyncd.conf
less timesyncd.conf
ls /usr/local/
ls /usr/local/bin/
less /usr/local/bin/snapshot 
ls /tmp/
sudo vim /usr/local/bin/snapshot 
ls /home/ale/
ls /home/ale/.local/
ls /home/ale/.local/share/
cd /home/ale/
mkdir .5hd
sudo vim /usr/local/bin/snapshot 
cd/usr/local/bin/
ls
cd /usr/local/bin/
ls
less createDiff 
sudo vim createDiff 
snapshot 
ls -al /home/ale/.5hd/
ls -al /home/ale/.5hd/curr/
ls
cd /etc/systemd/
ls
cd system/
ls
touch /tmp/a --date="may 10"
sudo find . -newer /tmp/a
ls -al 
startx
ll /etc/nodm
cat /etc/X11/default-display-manager 
sudo vim /etc/X11/default-display-manager 
/usr/sbin/nodm
sudo systemctl reboot 
sudo nodm
startx
cat /etc/default/nodm 
sudo vim /etc/default/nodm 
sudo systemctl reboot 
xrandr 
DISPLAY=:0 xrandr 
sudo vim /etc/default/nodm 
sudo apt purge lightdm9
sudo apt purge lightdm*
sudo apt autoremove 
vim .config/awesome/themes/qamf/theme.lua 
sudo systemctl restart nodm.service
sudo systemctl reboot 
ll
awesome
DISPLAY=:0 awesome
sudo apt install lightdm
sudo vim /etc/default/nodm 
cat /etc/X11/Xsession
cd /etc/
ll
cd init
ll
cat lightdm.override
cat hostname.conf
cd .
cd ..
find . -type f -name "tty*.conf"
sudo find . -type f -name "tty*.conf"
sudo find . -type f -name "tty*"
sudo find / -type f -name "tty*"
cat /usr/share/terminfo/t/tty37
sudo apt install lightdm
sudo apt install awesome
sudo vim /etc/default/nodm 
sudo systemctl stop nodm.service
sudo systemctl start nodm.service
sudo systemctl stop nodm.service
sudo apt install slim
sudo apt purge nodm
sudo systemctl disable nodm.service
sudo systemctl enable slim
sudo vim ~/.xinitrc
chmod -x ~/.xinitrc
sudo chmod -x ~/.xinitrc
sudo chown ale:ale /home/ale/.xinitrc
ll
cat /etc/slim.conf
sudo vim /etc/slim.conf
sudo systemctl reboot 
nodm sta
sudo nodm start
less /var/log/slim.log 
ll /usr/bin/X11/X
cat /var/log/Xorg.0.log
less /var/log/Xorg.0.log
htop 
ll /usr/bin/xauth 
ll
killall Xorg 
sudo killall Xorg 
htop 
ll /var/run/slim.auth
cat /var/run/slim.auth
sudo cat /var/run/slim.auth
bin/bash -login /etc/X11/Xsession
xterm
DISPLAY=:0 xterm 
/usr/bin/xterm -C -fg white -bg black +sb -T "Console login" -e /bin/sh -c "/bin/cat /etc/issue.net; exec /bin/login"
DISPLAY=:0 /usr/bin/xterm -C -fg white -bg black +sb -T "Console login" -e /bin/sh -c "/bin/cat /etc/issue.net; exec /bin/login"
sudo vim /etc/slim.conf
sudo vim /etc/X11/default-display-manager 
sudo systemctl restart slim.service
sudo vim /etc/slim.conf
sudo reboot 
startx
man dpk
man dpkg
sudo strace dpkg --set-selections < result 
sudo dpkg --set-selections < result 
sudo strace dpkg --set-selections < result 
hexdump -C result | less
sudo dpkg --set-selections < result 
less -N result 
hexdump -C resulte | less
hexdump -C result2 | less
sudo dpkg --set-selections < result2
sudo apt-get install dselect
sudo dpkg --set-selections < result2
sudo aptitude
sudo dselect
sudo dpkg --set-selections < result2
sudo apt purge ed
sudo dpkg --set-selections < result2
cat result2 | grep ed
exit
htop
sudo vim /etc/slim.conf
ps auxwwwww
less /var/log/syslog
dpkg --get-selections 
sudo apt install lightdm
man dpkg
udo dpkg --get-selections > selections
sudo dpkg --get-selections > selections
cat selections 
qq
ll
cat result 
dpkg --set-selections < result 
sudo dpkg --set-selections < result 
sudo apt update 
sudo dpkg --set-selections < result 
cat result 
vim result 
sudo apt install Desired=Unknown/Install/Remove/Purge/Hold
| Status=Not/Inst/Conf-files/Unpacked/halF-conf/Half-inst/trig-aWait/Trig-pend
|/ Err?=(none)/Reinst-required (Status,Err: uppercase=bad)
||/ Name                                Version                         Architecture Description
+++-===================================-===============================-============-===============================================================================
ii  acl                                 2.2.52-3                        amd64        Access control list utilities
ii  adduser                             3.113+nmu3ubuntu4               all          add and remove users and groups
ii  adwaita-icon-theme                  3.18.0-2ubuntu3                 all          default icon theme of GNOME (small subset)
ii  apparmor                            2.10.95-0ubuntu2                amd64        user-space parser utility for AppArmor
ii  apport                              2.20.1-0ubuntu2                 all          automatically generate crash reports for debugging
ii  apport-symptoms                     0.20                            all          symptom scripts for apport
ii  apt                                 1.2.10ubuntu1                   amd64        commandline package manager
ii  apt-transport-https                 1.2.10ubuntu1                   amd64        https download transport for APT
ii  apt-utils                           1.2.10ubuntu1                   amd64        package management related utility programs
ii  at                                  3.1.18-2ubuntu1                 amd64        Delayed job execution and batch processing
ii  at-spi2-core                        2.18.3-4ubuntu1                 amd64        Assistive Technology Service Provider Interface (dbus core)
ii  awesome                             3.5.6-1build1                   amd64        highly configurable X window manager
ii  base-files                          9.4ubuntu4                      amd64        Debian base system miscellaneous files
ii  base-passwd                         3.5.39                          amd64        Debian base system master password and group files
ii  bash                                4.3-14ubuntu1                   amd64        GNU Bourne Again SHell
ii  bash-completion                     1:2.1-4.2ubuntu1                all          programmable completion for the bash shell
ii  bcache-tools                        1.0.8-2                         amd64        bcache userspace tools
ii  bind9-host                          1:9.10.3.dfsg.P4-8ubuntu1       amd64        Version of 'host' bundled with BIND 9.X
ii  bsdmainutils                        9.0.6ubuntu3                    amd64        collection of more utilities from FreeBSD
ii  bsdutils                            1:2.27.1-6ubuntu3               amd64        basic utilities from 4.4BSD-Lite
ii  btrfs-tools                         4.4-1                           amd64        Checksumming Copy on Write Filesystem utilities
ii  busybox-initramfs                   1:1.22.0-15ubuntu1              amd64        Standalone shell setup for initramfs
ii  busybox-static                      1:1.22.0-15ubuntu1              amd64        Standalone rescue shell with tons of builtin utilities
ii  byobu                               5.106-0ubuntu1                  all          text window manager, shell multiplexer, integrated DevOps environment
ii  bzip2                               1.0.6-8                         amd64        high-quality block-sorting file compressor - utilities
ii  ca-certificates                     20160104ubuntu1                 all          Common CA certificates
ii  cloud-guest-utils                   0.27-0ubuntu24                  all          cloud guest utilities
ii  cloud-initramfs-copymods            0.27ubuntu1                     all          copy initramfs modules into root filesystem for later use
ii  cloud-initramfs-dyn-netconf         0.27ubuntu1                     all          write a network interface file in /run for BOOTIF
ii  colord                              1.2.12-1ubuntu1                 amd64        system service to manage device colour profiles -- system daemon
ii  colord-data                         1.2.12-1ubuntu1                 all          system service to manage device colour profiles -- data files
ii  command-not-found                   0.3ubuntu16.04                  all          Suggest installation of packages in interactive bash sessions
ii  command-not-found-data              0.3ubuntu16.04                  amd64        Set of data files for command-not-found.
ii  console-setup                       1.108ubuntu15                   all          console font and keymap setup program
ii  console-setup-linux                 1.108ubuntu15                   all          Linux specific part of console-setup
ii  coreutils                           8.25-2ubuntu2                   amd64        GNU core utilities
ii  cpio                                2.11+dfsg-5ubuntu1              amd64        GNU cpio -- a program to manage archives of files
ii  cpp                                 4:5.3.1-1ubuntu1                amd64        GNU C preprocessor (cpp)
ii  cpp-5                               5.3.1-14ubuntu2                 amd64        GNU C preprocessor
ii  crda                                3.13-1                          amd64        wireless Central Regulatory Domain Agent
ii  cron                                3.0pl1-128ubuntu2               amd64        process scheduling daemon
ii  cryptsetup                          2:1.6.6-5ubuntu2                amd64        disk encryption support - startup scripts
ii  cryptsetup-bin                      2:1.6.6-5ubuntu2                amd64        disk encryption support - command line tools
ii  curl                                7.47.0-1ubuntu2                 amd64        command line tool for transferring data with URL syntax
ii  dash                                0.5.8-2.1ubuntu2                amd64        POSIX-compliant shell
ii  dbus                                1.10.6-1ubuntu3                 amd64        simple interprocess messaging system (daemon and utilities)
ii  dbus-x11                            1.10.6-1ubuntu3                 amd64        simple interprocess messaging system (X11 deps)
ii  dconf-gsettings-backend:amd64       0.24.0-2                        amd64        simple configuration storage system - GSettings back-end
ii  dconf-service                       0.24.0-2                        amd64        simple configuration storage system - D-Bus service
ii  debconf                             1.5.58ubuntu1                   all          Debian configuration management system
ii  debconf-i18n                        1.5.58ubuntu1                   all          full internationalization support for debconf
ii  debianutils                         4.7                             amd64        Miscellaneous utilities specific to Debian
ii  desktop-base                        8.0.2ubuntu1                    all          common files for the Debian Desktop
ii  dh-python                           2.20151103ubuntu1               all          Debian helper tools for packaging Python libraries and applications
ii  diffutils                           1:3.3-3                         amd64        File comparison utilities
ii  distro-info-data                    0.28ubuntu0.1                   all          information about the distributions' releases (data files)
ii  dmeventd                            2:1.02.110-1ubuntu10            amd64        Linux Kernel Device Mapper event daemon
ii  dmidecode                           3.0-2                           amd64        SMBIOS/DMI table decoder
ii  dmsetup                             2:1.02.110-1ubuntu10            amd64        Linux Kernel Device Mapper userspace library
ii  dns-root-data                       2015052300+h+1                  all          DNS root data including root zone and DNSSEC key
ii  dnsmasq-base                        2.75-1                          amd64        Small caching DNS proxy and DHCP/TFTP server
ii  dnsutils                            1:9.10.3.dfsg.P4-8ubuntu1       amd64        Clients provided with BIND
ii  dosfstools                          3.0.28-2                        amd64        utilities for making and checking MS-DOS FAT filesystems
ii  dpkg                                1.18.4ubuntu1                   amd64        Debian package management system
ii  e2fslibs:amd64                      1.42.13-1ubuntu1                amd64        ext2/ext3/ext4 file system libraries
ii  e2fsprogs                           1.42.13-1ubuntu1                amd64        ext2/ext3/ext4 file system utilities
ii  ed                                  1.10-2                          amd64        classic UNIX line editor
ii  efibootmgr                          0.12-4                          amd64        Interact with the EFI Boot Manager
ii  eject                               2.1.5+deb1+cvs20081104-13.1     amd64        ejects CDs and operates CD-Changers under Linux
ii  ethtool                             1:4.5-1                         amd64        display or change Ethernet device settings
ii  feh                                 2.14-1                          amd64        imlib2 based image viewer
ii  file                                1:5.25-2ubuntu1                 amd64        Determines file type using "magic" numbers
ii  findutils                           4.6.0+git+20160126-2            amd64        utilities for finding files--find, xargs
ii  fontconfig                          2.11.94-0ubuntu1                amd64        generic font configuration library - support binaries
ii  fontconfig-config                   2.11.94-0ubuntu1                all          generic font configuration library - configuration
ii  fonts-dejavu-core                   2.35-1                          all          Vera font family derivate with additional characters
ii  fonts-ubuntu-font-family-console    1:0.83-0ubuntu2                 all          Ubuntu Font Family Linux console fonts, sans-serif monospace
ii  friendly-recovery                   0.2.31                          all          Make recovery more user-friendly
ii  ftp                                 0.17-33                         amd64        classical file transfer client
ii  fuse                                2.9.4-1ubuntu3                  amd64        Filesystem in Userspace
ii  gawk                                1:4.1.3+dfsg-0.1                amd64        GNU awk, a pattern scanning and processing language
ii  gcc-5-base:amd64                    5.3.1-14ubuntu2                 amd64        GCC, the GNU Compiler Collection (base package)
ii  gcc-6-base:amd64                    6.0.1-0ubuntu1                  amd64        GCC, the GNU Compiler Collection (base package)
ii  geoip-database                      20160408-1                      all          IP lookup command line tools that use the GeoIP library (country database)
ii  gettext-base                        0.19.7-2ubuntu3                 amd64        GNU Internationalization utilities for the base system
ii  gir1.2-freedesktop:amd64            1.46.0-3ubuntu1                 amd64        Introspection data for some FreeDesktop components
ii  gir1.2-glib-2.0:amd64               1.46.0-3ubuntu1                 amd64        Introspection data for GLib, GObject, Gio and GModule
ii  gir1.2-pango-1.0:amd64              1.38.1-1                        amd64        Layout and rendering of internationalized text - gir bindings
ii  git                                 1:2.7.4-0ubuntu1                amd64        fast, scalable, distributed revision control system
ii  git-man                             1:2.7.4-0ubuntu1                all          fast, scalable, distributed revision control system (manual pages)
ii  glib-networking:amd64               2.48.0-1                        amd64        network-related giomodules for GLib
ii  glib-networking-common              2.48.0-1                        all          network-related giomodules for GLib - data files
ii  glib-networking-services            2.48.0-1                        amd64        network-related giomodules for GLib - D-Bus services
ii  gnupg                               1.4.20-1ubuntu3                 amd64        GNU privacy guard - a free PGP replacement
ii  gpgv                                1.4.20-1ubuntu3                 amd64        GNU privacy guard - signature verification tool
ii  grep                                2.24-1                          amd64        GNU grep, egrep and fgrep
ii  groff-base                          1.22.3-7                        amd64        GNU troff text-formatting system (base system components)
ii  grub-common                         2.02~beta2-36ubuntu3            amd64        GRand Unified Bootloader (common files)
ii  grub-efi-amd64                      2.02~beta2-36ubuntu3            amd64        GRand Unified Bootloader, version 2 (EFI-AMD64 version)
ii  grub-efi-amd64-bin                  2.02~beta2-36ubuntu3            amd64        GRand Unified Bootloader, version 2 (EFI-AMD64 binaries)
ii  grub-efi-amd64-signed               1.66+2.02~beta2-36ubuntu3       amd64        GRand Unified Bootloader, version 2 (EFI-AMD64 version, signed)
ii  grub-legacy-ec2                     0.7.7~bzr1212-0ubuntu1          all          Handles update-grub for ec2 instances
ii  grub2-common                        2.02~beta2-36ubuntu3            amd64        GRand Unified Bootloader (common files for version 2)
ii  gsettings-desktop-schemas           3.18.1-1ubuntu1                 all          GSettings desktop-wide schemas
ii  gzip                                1.6-4ubuntu1                    amd64        GNU compression utilities
ii  hdparm                              9.48+ds-1                       amd64        tune hard disk parameters for high performance
ii  hicolor-icon-theme                  0.15-0ubuntu1                   all          default fallback theme for FreeDesktop.org icon themes
ii  hostname                            3.16ubuntu2                     amd64        utility to set/show the host name or domain name
ii  humanity-icon-theme                 0.6.10                          all          Humanity Icon theme
ii  ifenslave                           2.7ubuntu1                      all          configure network interfaces for parallel routing (bonding)
ii  ifupdown                            0.8.10ubuntu1                   amd64        high level tools to configure network interfaces
ii  info                                6.1.0.dfsg.1-5                  amd64        Standalone GNU Info documentation browser
ii  init                                1.29ubuntu1                     amd64        System-V-like init utilities - metapackage
ii  init-system-helpers                 1.29ubuntu1                     all          helper tools for all init systems
ii  initramfs-tools                     0.122ubuntu8                    all          generic modular initramfs generator (automation)
ii  initramfs-tools-bin                 0.122ubuntu8                    amd64        binaries used by initramfs-tools
ii  initramfs-tools-core                0.122ubuntu8                    all          generic modular initramfs generator (core tools)
ii  initscripts                         2.88dsf-59.3ubuntu2             amd64        scripts for initializing and shutting down the system
ii  insserv                             1.14.0-5ubuntu3                 amd64        boot sequence organizer using LSB init.d script dependency information
ii  install-info                        6.1.0.dfsg.1-5                  amd64        Manage installed documentation in info format
ii  installation-report                 2.60ubuntu1                     all          system installation report
ii  iproute2                            4.3.0-1ubuntu3                  amd64        networking and traffic control tools
ii  iptables                            1.6.0-2ubuntu3                  amd64        administration tools for packet filtering and NAT
ii  iputils-ping                        3:20121221-5ubuntu2             amd64        Tools to test the reachability of network hosts
ii  iputils-tracepath                   3:20121221-5ubuntu2             amd64        Tools to trace the network path to a remote host
ii  irqbalance                          1.1.0-2ubuntu1                  amd64        Daemon to balance interrupts for SMP systems
ii  isc-dhcp-client                     4.3.3-5ubuntu12                 amd64        DHCP client for automatically obtaining an IP address
ii  isc-dhcp-common                     4.3.3-5ubuntu12                 amd64        common files used by all of the isc-dhcp packages
ii  iso-codes                           3.65-1                          all          ISO language, territory, currency, script codes and their translations
ii  iw                                  3.17-1                          amd64        tool for configuring Linux wireless devices
ii  kbd                                 1.15.5-1ubuntu4                 amd64        Linux console font and keytable utilities
ii  keyboard-configuration              1.108ubuntu15                   all          system-wide keyboard preferences
ii  klibc-utils                         2.0.4-8ubuntu1                  amd64        small utilities built with klibc for early boot
ii  kmod                                22-1ubuntu4                     amd64        tools for managing Linux kernel modules
ii  krb5-locales                        1.13.2+dfsg-5                   all          Internationalization support for MIT Kerberos
ii  language-pack-en                    1:16.04+20160415                all          translation updates for language English
ii  language-pack-en-base               1:16.04+20160415                all          translations for language English
ii  less                                481-2.1                         amd64        pager program similar to more
ii  libacl1:amd64                       2.2.52-3                        amd64        Access control list shared library
ii  libapparmor-perl                    2.10.95-0ubuntu2                amd64        AppArmor library Perl bindings
ii  libapparmor1:amd64                  2.10.95-0ubuntu2                amd64        changehat AppArmor library
ii  libapt-inst2.0:amd64                1.2.10ubuntu1                   amd64        deb package format runtime library
ii  libapt-pkg5.0:amd64                 1.2.10ubuntu1                   amd64        package management runtime library
ii  libasn1-8-heimdal:amd64             1.7~git20150920+dfsg-4ubuntu1   amd64        Heimdal Kerberos - ASN.1 library
ii  libasound2:amd64                    1.1.0-0ubuntu1                  amd64        shared library for ALSA applications
ii  libasound2-data                     1.1.0-0ubuntu1                  all          Configuration files and profiles for ALSA drivers
ii  libasprintf0v5:amd64                0.19.7-2ubuntu3                 amd64        GNU library to use fprintf and friends in C++
ii  libasyncns0:amd64                   0.8-5build1                     amd64        Asynchronous name service query library
ii  libatk-bridge2.0-0:amd64            2.18.1-2ubuntu1                 amd64        AT-SPI 2 toolkit bridge - shared library
ii  libatk1.0-0:amd64                   2.18.0-1                        amd64        ATK accessibility toolkit
ii  libatk1.0-data                      2.18.0-1                        all          Common files for the ATK accessibility toolkit
ii  libatm1:amd64                       1:2.5.1-1.5                     amd64        shared library for ATM (Asynchronous Transfer Mode)
ii  libatspi2.0-0:amd64                 2.18.3-4ubuntu1                 amd64        Assistive Technology Service Provider Interface - shared library
ii  libattr1:amd64                      1:2.4.47-2                      amd64        Extended attribute shared library
ii  libaudit-common                     1:2.4.5-1ubuntu2                all          Dynamic library for security auditing - common files
ii  libaudit1:amd64                     1:2.4.5-1ubuntu2                amd64        Dynamic library for security auditing
ii  libavahi-client3:amd64              0.6.32~rc+dfsg-1ubuntu2         amd64        Avahi client library
ii  libavahi-common-data:amd64          0.6.32~rc+dfsg-1ubuntu2         amd64        Avahi common data files
ii  libavahi-common3:amd64              0.6.32~rc+dfsg-1ubuntu2         amd64        Avahi common library
ii  libbind9-140:amd64                  1:9.10.3.dfsg.P4-8ubuntu1       amd64        BIND9 Shared Library used by BIND
ii  libblkid1:amd64                     2.27.1-6ubuntu3                 amd64        block device ID library
ii  libboost-filesystem1.58.0:amd64     1.58.0+dfsg-5ubuntu3            amd64        filesystem operations (portable paths, iteration over directories, etc) in C++
ii  libboost-system1.58.0:amd64         1.58.0+dfsg-5ubuntu3            amd64        Operating system (e.g. diagnostics support) library
ii  libbsd0:amd64                       0.8.2-1                         amd64        utility functions from BSD systems - shared library
ii  libbz2-1.0:amd64                    1.0.6-8                         amd64        high-quality block-sorting file compressor library - runtime
ii  libc-bin                            2.23-0ubuntu3                   amd64        GNU C Library: Binaries
ii  libc6:amd64                         2.23-0ubuntu3                   amd64        GNU C Library: Shared libraries
ii  libcairo-gobject2:amd64             1.14.6-1                        amd64        Cairo 2D vector graphics library (GObject library)
ii  libcairo2:amd64                     1.14.6-1                        amd64        Cairo 2D vector graphics library
ii  libcap-ng0:amd64                    0.7.7-1                         amd64        An alternate POSIX capabilities library
ii  libcap2:amd64                       1:2.24-12                       amd64        POSIX 1003.1e capabilities (library)
ii  libcap2-bin                         1:2.24-12                       amd64        POSIX 1003.1e capabilities (utilities)
ii  libcolord2:amd64                    1.2.12-1ubuntu1                 amd64        system service to manage device colour profiles -- runtime
ii  libcolorhug2:amd64                  1.2.12-1ubuntu1                 amd64        library to access the ColorHug colourimeter -- runtime
ii  libcomerr2:amd64                    1.42.13-1ubuntu1                amd64        common error description library
ii  libcroco3:amd64                     0.6.11-1                        amd64        Cascading Style Sheet (CSS) parsing and manipulation toolkit
ii  libcryptsetup4:amd64                2:1.6.6-5ubuntu2                amd64        disk encryption support - shared library
ii  libcups2:amd64                      2.1.3-4                         amd64        Common UNIX Printing System(tm) - Core library
ii  libcurl3:amd64                      7.47.0-1ubuntu2                 amd64        easy-to-use client-side URL transfer library (OpenSSL flavour)
ii  libcurl3-gnutls:amd64               7.47.0-1ubuntu2                 amd64        easy-to-use client-side URL transfer library (GnuTLS flavour)
ii  libdatrie1:amd64                    0.2.10-2                        amd64        Double-array trie library
ii  libdb5.3:amd64                      5.3.28-11                       amd64        Berkeley v5.3 Database Libraries [runtime]
ii  libdbus-1-3:amd64                   1.10.6-1ubuntu3                 amd64        simple interprocess messaging system (library)
ii  libdbus-glib-1-2:amd64              0.106-1                         amd64        simple interprocess messaging system (GLib-based shared library)
ii  libdconf1:amd64                     0.24.0-2                        amd64        simple configuration storage system - runtime library
ii  libdebconfclient0:amd64             0.198ubuntu1                    amd64        Debian Configuration Management System (C-implementation library)
ii  libdevmapper-event1.02.1:amd64      2:1.02.110-1ubuntu10            amd64        Linux Kernel Device Mapper event support library
ii  libdevmapper1.02.1:amd64            2:1.02.110-1ubuntu10            amd64        Linux Kernel Device Mapper userspace library
ii  libdns-export162                    1:9.10.3.dfsg.P4-8ubuntu1       amd64        Exported DNS Shared Library
ii  libdns162:amd64                     1:9.10.3.dfsg.P4-8ubuntu1       amd64        DNS Shared Library used by BIND
ii  libdrm-amdgpu1:amd64                2.4.67-1                        amd64        Userspace interface to amdgpu-specific kernel DRM services -- runtime
ii  libdrm-intel1:amd64                 2.4.67-1                        amd64        Userspace interface to intel-specific kernel DRM services -- runtime
ii  libdrm-nouveau2:amd64               2.4.67-1                        amd64        Userspace interface to nouveau-specific kernel DRM services -- runtime
ii  libdrm-radeon1:amd64                2.4.67-1                        amd64        Userspace interface to radeon-specific kernel DRM services -- runtime
ii  libdrm2:amd64                       2.4.67-1                        amd64        Userspace interface to kernel DRM services -- runtime
ii  libdumbnet1:amd64                   1.12-7                          amd64        dumb, portable networking library -- shared library
ii  libedit2:amd64                      3.1-20150325-1ubuntu2           amd64        BSD editline and history libraries
ii  libefivar0:amd64                    0.23-2                          amd64        Library to manage UEFI variables
ii  libegl1-mesa:amd64                  11.2.0-1ubuntu2                 amd64        free implementation of the EGL API -- runtime
ii  libelf1:amd64                       0.165-3ubuntu1                  amd64        library to read and write ELF files
ii  libepoxy0:amd64                     1.3.1-1                         amd64        OpenGL function pointer management library
ii  liberror-perl                       0.17-1.2                        all          Perl module for error/exception handling in an OO-ish way
ii  libestr0                            0.1.10-1                        amd64        Helper functions for handling strings (lib)
ii  libevdev2:amd64                     1.4.6+dfsg-1                    amd64        wrapper library for evdev devices
ii  libevent-2.0-5:amd64                2.0.21-stable-2                 amd64        Asynchronous event notification library
ii  libexif12:amd64                     0.6.21-2                        amd64        library to parse EXIF files
ii  libexpat1:amd64                     2.1.0-7                         amd64        XML parsing C library - runtime library
ii  libfdisk1:amd64                     2.27.1-6ubuntu3                 amd64        fdisk partitioning library
ii  libffi6:amd64                       3.2.1-4                         amd64        Foreign Function Interface library runtime
ii  libflac8:amd64                      1.3.1-4                         amd64        Free Lossless Audio Codec - runtime C library
ii  libfontconfig1:amd64                2.11.94-0ubuntu1                amd64        generic font configuration library - runtime
ii  libfontenc1:amd64                   1:1.1.3-1                       amd64        X11 font encoding library
ii  libfreetype6:amd64                  2.6.1-0.1ubuntu2                amd64        FreeType 2 font engine, shared library files
ii  libfribidi0:amd64                   0.19.7-1                        amd64        Free Implementation of the Unicode BiDi algorithm
ii  libfuse2:amd64                      2.9.4-1ubuntu3                  amd64        Filesystem in Userspace (library)
ii  libgbm1:amd64                       11.2.0-1ubuntu2                 amd64        generic buffer management API -- runtime
ii  libgcc1:amd64                       1:6.0.1-0ubuntu1                amd64        GCC support library
ii  libgcrypt20:amd64                   1.6.5-2                         amd64        LGPL Crypto library - runtime library
ii  libgd3:amd64                        2.1.1-4build2                   amd64        GD Graphics Library
ii  libgdbm3:amd64                      1.8.3-13.1                      amd64        GNU dbm database routines (runtime version)
ii  libgdk-pixbuf2.0-0:amd64            2.32.2-1ubuntu1                 amd64        GDK Pixbuf library
ii  libgdk-pixbuf2.0-common             2.32.2-1ubuntu1                 all          GDK Pixbuf library - data files
ii  libgeoip1:amd64                     1.6.9-1                         amd64        non-DNS IP-to-country resolver library
ii  libgif7:amd64                       5.1.2-0.2                       amd64        library for GIF images (library)
ii  libgirepository-1.0-1:amd64         1.46.0-3ubuntu1                 amd64        Library for handling GObject introspection data (runtime library)
ii  libgl1-mesa-dri:amd64               11.2.0-1ubuntu2                 amd64        free implementation of the OpenGL API -- DRI modules
ii  libgl1-mesa-glx:amd64               11.2.0-1ubuntu2                 amd64        free implementation of the OpenGL API -- GLX runtime
ii  libglapi-mesa:amd64                 11.2.0-1ubuntu2                 amd64        free implementation of the GL API -- shared library
ii  libglib2.0-0:amd64                  2.48.0-1ubuntu4                 amd64        GLib library of C routines
ii  libglib2.0-bin                      2.48.0-1ubuntu4                 amd64        Programs for the GLib library
ii  libglib2.0-data                     2.48.0-1ubuntu4                 all          Common files for GLib library
ii  libgmp10:amd64                      2:6.1.0+dfsg-2                  amd64        Multiprecision arithmetic library
ii  libgnutls-openssl27:amd64           3.4.10-4ubuntu1                 amd64        GNU TLS library - OpenSSL wrapper
ii  libgnutls30:amd64                   3.4.10-4ubuntu1                 amd64        GNU TLS library - main runtime library
ii  libgpg-error0:amd64                 1.21-2ubuntu1                   amd64        library for common error values and messages in GnuPG components
ii  libgphoto2-6:amd64                  2.5.9-3                         amd64        gphoto2 digital camera library
ii  libgphoto2-l10n                     2.5.9-3                         all          gphoto2 digital camera library - localized messages
ii  libgphoto2-port12:amd64             2.5.9-3                         amd64        gphoto2 digital camera port library
ii  libgpm2:amd64                       1.20.4-6.1                      amd64        General Purpose Mouse - shared library
ii  libgraphite2-3:amd64                1.3.6-1ubuntu1                  amd64        Font rendering engine for Complex Scripts -- library
ii  libgssapi-krb5-2:amd64              1.13.2+dfsg-5                   amd64        MIT Kerberos runtime libraries - krb5 GSS-API Mechanism
ii  libgssapi3-heimdal:amd64            1.7~git20150920+dfsg-4ubuntu1   amd64        Heimdal Kerberos - GSSAPI support library
ii  libgtk-3-0:amd64                    3.18.9-1ubuntu3                 amd64        GTK+ graphical user interface library
ii  libgtk-3-bin                        3.18.9-1ubuntu3                 amd64        programs for the GTK+ graphical user interface library
ii  libgtk-3-common                     3.18.9-1ubuntu3                 all          common files for the GTK+ graphical user interface library
rc  libgtk2.0-0:amd64                   2.24.30-1ubuntu1                amd64        GTK+ graphical user interface library
rc  libgtk2.0-common                    2.24.30-1ubuntu1                all          common files for the GTK+ graphical user interface library
ii  libgudev-1.0-0:amd64                1:230-2                         amd64        GObject-based wrapper library for libudev
ii  libgusb2:amd64                      0.2.9-0ubuntu1                  amd64        GLib wrapper around libusb1
ii  libharfbuzz0b:amd64                 1.0.1-1build2                   amd64        OpenType text shaping engine (shared library)
ii  libhcrypto4-heimdal:amd64           1.7~git20150920+dfsg-4ubuntu1   amd64        Heimdal Kerberos - crypto library
ii  libheimbase1-heimdal:amd64          1.7~git20150920+dfsg-4ubuntu1   amd64        Heimdal Kerberos - Base library
ii  libheimntlm0-heimdal:amd64          1.7~git20150920+dfsg-4ubuntu1   amd64        Heimdal Kerberos - NTLM support library
ii  libhogweed4:amd64                   3.2-1                           amd64        low level cryptographic library (public-key cryptos)
ii  libhx509-5-heimdal:amd64            1.7~git20150920+dfsg-4ubuntu1   amd64        Heimdal Kerberos - X509 support library
ii  libice6:amd64                       2:1.0.9-1                       amd64        X11 Inter-Client Exchange library
ii  libicu55:amd64                      55.1-7                          amd64        International Components for Unicode
ii  libid3tag0                          0.15.1b-11                      amd64        ID3 tag reading library from the MAD project
ii  libidn11:amd64                      1.32-3ubuntu1                   amd64        GNU Libidn library, implementation of IETF IDN specifications
ii  libido3-0.1-0:amd64                 13.10.0+15.10.20151002-0ubuntu1 amd64        Shared library providing extra gtk menu items for display in
ii  libieee1284-3:amd64                 0.2.11-12                       amd64        cross-platform library for parallel port access
ii  libimlib2:amd64                     1.4.7-1build1                   amd64        image loading, rendering, saving library
ii  libindicator3-7                     12.10.2+16.04.20151208-0ubuntu1 amd64        panel indicator applet - shared library
ii  libisc-export160                    1:9.10.3.dfsg.P4-8ubuntu1       amd64        Exported ISC Shared Library
ii  libisc160:amd64                     1:9.10.3.dfsg.P4-8ubuntu1       amd64        ISC Shared Library used by BIND
ii  libisccc140:amd64                   1:9.10.3.dfsg.P4-8ubuntu1       amd64        Command Channel Library used by BIND
ii  libisccfg140:amd64                  1:9.10.3.dfsg.P4-8ubuntu1       amd64        Config File Handling Library used by BIND
ii  libisl15:amd64                      0.16.1-1                        amd64        manipulating sets and relations of integer points bounded by linear constraints
ii  libjbig0:amd64                      2.1-3.1                         amd64        JBIGkit libraries
ii  libjpeg-progs                       1:9b-1ubuntu1                   amd64        Programs for manipulating JPEG files
ii  libjpeg-turbo8:amd64                1.4.2-0ubuntu3                  amd64        IJG JPEG compliant runtime library.
ii  libjpeg8:amd64                      8c-2ubuntu8                     amd64        Independent JPEG Group's JPEG runtime library (dependency package)
ii  libjpeg9:amd64                      1:9b-1ubuntu1                   amd64        Independent JPEG Group's JPEG runtime library
ii  libjson-c2:amd64                    0.11-4ubuntu2                   amd64        JSON manipulation library - shared library
ii  libjson-glib-1.0-0:amd64            1.1.2-0ubuntu1                  amd64        GLib JSON manipulation library
ii  libjson-glib-1.0-common             1.1.2-0ubuntu1                  all          GLib JSON manipulation library (common files)
ii  libk5crypto3:amd64                  1.13.2+dfsg-5                   amd64        MIT Kerberos runtime libraries - Crypto Library
ii  libkeyutils1:amd64                  1.5.9-8ubuntu1                  amd64        Linux Key Management Utilities (library)
ii  libklibc                            2.0.4-8ubuntu1                  amd64        minimal libc subset for use with initramfs
ii  libkmod2:amd64                      22-1ubuntu4                     amd64        libkmod shared library
ii  libkrb5-26-heimdal:amd64            1.7~git20150920+dfsg-4ubuntu1   amd64        Heimdal Kerberos - libraries
ii  libkrb5-3:amd64                     1.13.2+dfsg-5                   amd64        MIT Kerberos runtime libraries
ii  libkrb5support0:amd64               1.13.2+dfsg-5                   amd64        MIT Kerberos runtime libraries - Support library
ii  liblcms2-2:amd64                    2.6-3ubuntu2                    amd64        Little CMS 2 color management library
ii  libldap-2.4-2:amd64                 2.4.42+dfsg-2ubuntu3            amd64        OpenLDAP libraries
ii  liblightdm-gobject-1-0:amd64        1.18.1-0ubuntu1                 amd64        LightDM GObject client library
ii  libllvm3.8:amd64                    1:3.8-2ubuntu3                  amd64        Modular compiler and toolchain technologies, runtime library
ii  liblocale-gettext-perl              1.07-1build1                    amd64        module using libc functions for internationalization in Perl
ii  libltdl7:amd64                      2.4.6-0.1                       amd64        System independent dlopen wrapper for GNU libtool
ii  liblua5.1-0:amd64                   5.1.5-8ubuntu1                  amd64        Shared library for the Lua interpreter version 5.1
ii  liblvm2app2.2:amd64                 2.02.133-1ubuntu10              amd64        LVM2 application library
ii  liblvm2cmd2.02:amd64                2.02.133-1ubuntu10              amd64        LVM2 command library
ii  liblwres141:amd64                   1:9.10.3.dfsg.P4-8ubuntu1       amd64        Lightweight Resolver Library used by BIND
ii  liblz4-1:amd64                      0.0~r131-2ubuntu2               amd64        Fast LZ compression algorithm library - runtime
ii  liblzma5:amd64                      5.1.1alpha+20120614-2ubuntu2    amd64        XZ-format compression library
ii  liblzo2-2:amd64                     2.08-1.2                        amd64        data compression library
ii  libmagic1:amd64                     1:5.25-2ubuntu1                 amd64        File type determination library using "magic" numbers
ii  libmirclient9:amd64                 0.21.0+16.04.20160330-0ubuntu1  amd64        Display server for Ubuntu - client library
ii  libmircommon5:amd64                 0.21.0+16.04.20160330-0ubuntu1  amd64        Display server for Ubuntu - shared library
ii  libmirprotobuf3:amd64               0.21.0+16.04.20160330-0ubuntu1  amd64        Display server for Ubuntu - RPC definitions
ii  libmnl0:amd64                       1.0.3-5                         amd64        minimalistic Netlink communication library
ii  libmount1:amd64                     2.27.1-6ubuntu3                 amd64        device mounting library
ii  libmpc3:amd64                       1.0.3-1                         amd64        multiple precision complex floating-point library
ii  libmpdec2:amd64                     2.4.2-1                         amd64        library for decimal floating point arithmetic (runtime library)
ii  libmpfr4:amd64                      3.1.4-1                         amd64        multiple precision floating-point computation
ii  libmspack0:amd64                    0.5-1                           amd64        library for Microsoft compression formats (shared library)
ii  libmtdev1:amd64                     1.1.5-1ubuntu2                  amd64        Multitouch Protocol Translation Library - shared library
ii  libncurses5:amd64                   6.0+20160213-1ubuntu1           amd64        shared libraries for terminal handling
ii  libncursesw5:amd64                  6.0+20160213-1ubuntu1           amd64        shared libraries for terminal handling (wide character support)
ii  libnetfilter-conntrack3:amd64       1.0.5-1                         amd64        Netfilter netlink-conntrack library
ii  libnettle6:amd64                    3.2-1                           amd64        low level cryptographic library (symmetric and one-way cryptos)
ii  libnewt0.52:amd64                   0.52.18-1ubuntu2                amd64        Not Erik's Windowing Toolkit - text mode windowing with slang
ii  libnfnetlink0:amd64                 1.0.1-3                         amd64        Netfilter netlink library
ii  libnih1:amd64                       1.0.3-4.3ubuntu1                amd64        NIH Utility Library
ii  libnl-3-200:amd64                   3.2.27-1                        amd64        library for dealing with netlink sockets
ii  libnl-genl-3-200:amd64              3.2.27-1                        amd64        library for dealing with netlink sockets - generic netlink
ii  libnuma1:amd64                      2.0.11-1ubuntu1                 amd64        Libraries for controlling NUMA policy
ii  libogg0:amd64                       1.3.2-1                         amd64        Ogg bitstream library
ii  libp11-kit0:amd64                   0.23.2-3                        amd64        Library for loading and coordinating access to PKCS#11 modules - runtime
ii  libpam-modules:amd64                1.1.8-3.2ubuntu2                amd64        Pluggable Authentication Modules for PAM
ii  libpam-modules-bin                  1.1.8-3.2ubuntu2                amd64        Pluggable Authentication Modules for PAM - helper binaries
ii  libpam-runtime                      1.1.8-3.2ubuntu2                all          Runtime support for the PAM library
ii  libpam-systemd:amd64                229-4ubuntu5                    amd64        system and service manager - PAM module
ii  libpam0g:amd64                      1.1.8-3.2ubuntu2                amd64        Pluggable Authentication Modules library
ii  libpango-1.0-0:amd64                1.38.1-1                        amd64        Layout and rendering of internationalized text
ii  libpangocairo-1.0-0:amd64           1.38.1-1                        amd64        Layout and rendering of internationalized text
ii  libpangoft2-1.0-0:amd64             1.38.1-1                        amd64        Layout and rendering of internationalized text
ii  libpangoxft-1.0-0:amd64             1.38.1-1                        amd64        Layout and rendering of internationalized text
ii  libparted2:amd64                    3.2-15                          amd64        disk partition manipulator - shared library
ii  libpcap0.8:amd64                    1.7.4-2                         amd64        system interface for user-level packet capture
ii  libpci3:amd64                       1:3.3.1-1.1ubuntu1              amd64        Linux PCI Utilities (shared library)
ii  libpciaccess0:amd64                 0.13.4-1                        amd64        Generic PCI access library for X
ii  libpcre3:amd64                      2:8.38-3.1                      amd64        Perl 5 Compatible Regular Expression Library - runtime files
ii  libperl5.22:amd64                   5.22.1-9                        amd64        shared Perl library
ii  libpipeline1:amd64                  1.4.1-2                         amd64        pipeline manipulation library
ii  libpixman-1-0:amd64                 0.33.6-1                        amd64        pixel-manipulation library for X and cairo
ii  libplymouth4:amd64                  0.9.2-3ubuntu13                 amd64        graphical boot animation and logger - shared libraries
ii  libpng12-0:amd64                    1.2.54-1ubuntu1                 amd64        PNG library - runtime
ii  libpolkit-agent-1-0:amd64           0.105-14.1                      amd64        PolicyKit Authentication Agent API
ii  libpolkit-backend-1-0:amd64         0.105-14.1                      amd64        PolicyKit backend API
ii  libpolkit-gobject-1-0:amd64         0.105-14.1                      amd64        PolicyKit Authorization API
ii  libpopt0:amd64                      1.16-10                         amd64        lib for parsing cmdline parameters
ii  libprocps4:amd64                    2:3.3.10-4ubuntu2               amd64        library for accessing process information from /proc
ii  libprotobuf-lite9v5:amd64           2.6.1-1.3                       amd64        protocol buffers C++ library (lite version)
ii  libproxy1v5:amd64                   0.4.11-5ubuntu1                 amd64        automatic proxy configuration management library (shared)
ii  libpulse0:amd64                     1:8.0-0ubuntu3                  amd64        PulseAudio client libraries
ii  libpython3-stdlib:amd64             3.5.1-3                         amd64        interactive high-level object-oriented language (default python3 version)
ii  libpython3.5-minimal:amd64          3.5.1-10                        amd64        Minimal subset of the Python language (version 3.5)
ii  libpython3.5-stdlib:amd64           3.5.1-10                        amd64        Interactive high-level object-oriented language (standard library, version 3.5)
ii  libreadline5:amd64                  5.2+dfsg-3build1                amd64        GNU readline and history libraries, run-time libraries
ii  libreadline6:amd64                  6.3-8ubuntu2                    amd64        GNU readline and history libraries, run-time libraries
ii  librest-0.7-0:amd64                 0.7.93-1                        amd64        REST service access library
ii  libroken18-heimdal:amd64            1.7~git20150920+dfsg-4ubuntu1   amd64        Heimdal Kerberos - roken support library
ii  librsvg2-2:amd64                    2.40.13-3                       amd64        SAX-based renderer library for SVG files (runtime)
ii  librsvg2-common:amd64               2.40.13-3                       amd64        SAX-based renderer library for SVG files (extra runtime)
ii  librtmp1:amd64                      2.4+20151223.gitfa8646d-1build1 amd64        toolkit for RTMP streams (shared library)
ii  libsane:amd64                       1.0.25+git20150528-1ubuntu2     amd64        API library for scanners
ii  libsane-common                      1.0.25+git20150528-1ubuntu2     all          API library for scanners -- documentation and support files
ii  libsasl2-2:amd64                    2.1.26.dfsg1-14build1           amd64        Cyrus SASL - authentication abstraction library
ii  libsasl2-modules:amd64              2.1.26.dfsg1-14build1           amd64        Cyrus SASL - pluggable authentication modules
ii  libsasl2-modules-db:amd64           2.1.26.dfsg1-14build1           amd64        Cyrus SASL - pluggable authentication modules (DB)
ii  libsdl2-2.0-0:amd64                 2.0.4+dfsg1-2ubuntu2            amd64        Simple DirectMedia Layer
ii  libseccomp2:amd64                   2.2.3-3ubuntu3                  amd64        high level interface to Linux seccomp filter
ii  libselinux1:amd64                   2.4-3build2                     amd64        SELinux runtime shared libraries
ii  libsemanage-common                  2.3-1build3                     all          Common files for SELinux policy management libraries
ii  libsemanage1:amd64                  2.3-1build3                     amd64        SELinux policy management library
ii  libsepol1:amd64                     2.4-2                           amd64        SELinux library for manipulating binary security policies
ii  libsigsegv2:amd64                   2.10-4                          amd64        Library for handling page faults in a portable way
ii  libslang2:amd64                     2.3.0-2ubuntu1                  amd64        S-Lang programming library - runtime version
ii  libsm6:amd64                        2:1.2.2-1                       amd64        X11 Session Management library
ii  libsmartcols1:amd64                 2.27.1-6ubuntu3                 amd64        smart column output alignment library
ii  libsndfile1:amd64                   1.0.25-10                       amd64        Library for reading/writing audio files
ii  libsndio6.1:amd64                   1.1.0-2                         amd64        Small audio and MIDI framework from OpenBSD, runtime libraries
ii  libsoup-gnome2.4-1:amd64            2.52.2-1ubuntu0.1               amd64        HTTP library implementation in C -- GNOME support library
ii  libsoup2.4-1:amd64                  2.52.2-1ubuntu0.1               amd64        HTTP library implementation in C -- Shared library
ii  libsqlite3-0:amd64                  3.11.0-1ubuntu1                 amd64        SQLite 3 shared library
ii  libss2:amd64                        1.42.13-1ubuntu1                amd64        command-line interface parsing library
ii  libssl1.0.0:amd64                   1.0.2g-1ubuntu4.1               amd64        Secure Sockets Layer toolkit - shared libraries
ii  libstartup-notification0:amd64      0.12-4build1                    amd64        library for program launch feedback (shared library)
ii  libstdc++6:amd64                    5.3.1-14ubuntu2                 amd64        GNU Standard C++ Library v3
ii  libsystemd0:amd64                   229-4ubuntu5                    amd64        systemd utility library
ii  libtasn1-6:amd64                    4.7-3ubuntu0.16.04.1            amd64        Manage ASN.1 structures (runtime)
ii  libtext-charwidth-perl              0.04-7build5                    amd64        get display widths of characters on the terminal
ii  libtext-iconv-perl                  1.7-5build4                     amd64        converts between character sets in Perl
ii  libtext-wrapi18n-perl               0.06-7.1                        all          internationalized substitute of Text::Wrap
ii  libthai-data                        0.1.24-2                        all          Data files for Thai language support library
ii  libthai0:amd64                      0.1.24-2                        amd64        Thai language support library
ii  libtiff5:amd64                      4.0.6-1                         amd64        Tag Image File Format (TIFF) library
ii  libtinfo5:amd64                     6.0+20160213-1ubuntu1           amd64        shared low-level terminfo library for terminal handling
ii  libtxc-dxtn-s2tc0:amd64             0~git20131104-1.1               amd64        Texture compression library for Mesa
ii  libudev1:amd64                      229-4ubuntu5                    amd64        libudev shared library
ii  libusb-0.1-4:amd64                  2:0.1.12-28                     amd64        userspace USB programming library
ii  libusb-1.0-0:amd64                  2:1.0.20-1                      amd64        userspace USB programming library
ii  libustr-1.0-1:amd64                 1.0.4-5                         amd64        Micro string library: shared library
ii  libutempter0:amd64                  1.1.6-3                         amd64        privileged helper for utmp/wtmp updates (runtime)
ii  libuuid1:amd64                      2.27.1-6ubuntu3                 amd64        Universally Unique ID library
ii  libvorbis0a:amd64                   1.3.5-3                         amd64        decoder library for Vorbis General Audio Compression Codec
ii  libvorbisenc2:amd64                 1.3.5-3                         amd64        encoder library for Vorbis General Audio Compression Codec
ii  libvpx3:amd64                       1.5.0-2ubuntu1                  amd64        VP8 and VP9 video codec (shared library)
ii  libwayland-client0:amd64            1.9.0-1                         amd64        wayland compositor infrastructure - client library
ii  libwayland-cursor0:amd64            1.9.0-1                         amd64        wayland compositor infrastructure - cursor library
ii  libwayland-egl1-mesa:amd64          11.2.0-1ubuntu2                 amd64        implementation of the Wayland EGL platform -- runtime
ii  libwayland-server0:amd64            1.9.0-1                         amd64        wayland compositor infrastructure - server library
ii  libwind0-heimdal:amd64              1.7~git20150920+dfsg-4ubuntu1   amd64        Heimdal Kerberos - stringprep implementation
ii  libwrap0:amd64                      7.6.q-25                        amd64        Wietse Venema's TCP wrappers library
ii  libx11-6:amd64                      2:1.6.3-1ubuntu2                amd64        X11 client-side library
ii  libx11-data                         2:1.6.3-1ubuntu2                all          X11 client-side library
ii  libx11-xcb1:amd64                   2:1.6.3-1ubuntu2                amd64        Xlib/XCB interface library
ii  libxau6:amd64                       1:1.0.8-1                       amd64        X11 authorisation library
ii  libxaw7:amd64                       2:1.0.13-1                      amd64        X11 Athena Widget library
ii  libxcb-cursor0:amd64                0.1.1-3ubuntu1                  amd64        utility libraries for X C Binding -- cursor
ii  libxcb-dri2-0:amd64                 1.11.1-1ubuntu1                 amd64        X C Binding, dri2 extension
ii  libxcb-dri3-0:amd64                 1.11.1-1ubuntu1                 amd64        X C Binding, dri3 extension
ii  libxcb-glx0:amd64                   1.11.1-1ubuntu1                 amd64        X C Binding, glx extension
ii  libxcb-icccm4:amd64                 0.4.1-1ubuntu1                  amd64        utility libraries for X C Binding -- icccm
ii  libxcb-image0:amd64                 0.4.0-1build1                   amd64        utility libraries for X C Binding -- image
ii  libxcb-keysyms1:amd64               0.4.0-1                         amd64        utility libraries for X C Binding -- keysyms
ii  libxcb-present0:amd64               1.11.1-1ubuntu1                 amd64        X C Binding, present extension
ii  libxcb-randr0:amd64                 1.11.1-1ubuntu1                 amd64        X C Binding, randr extension
ii  libxcb-render-util0:amd64           0.3.9-1                         amd64        utility libraries for X C Binding -- render-util
ii  libxcb-render0:amd64                1.11.1-1ubuntu1                 amd64        X C Binding, render extension
ii  libxcb-shape0:amd64                 1.11.1-1ubuntu1                 amd64        X C Binding, shape extension
ii  libxcb-shm0:amd64                   1.11.1-1ubuntu1                 amd64        X C Binding, shm extension
ii  libxcb-sync1:amd64                  1.11.1-1ubuntu1                 amd64        X C Binding, sync extension
ii  libxcb-util1:amd64                  0.4.0-0ubuntu3                  amd64        utility libraries for X C Binding -- atom, aux and event
ii  libxcb-xfixes0:amd64                1.11.1-1ubuntu1                 amd64        X C Binding, xfixes extension
ii  libxcb-xinerama0:amd64              1.11.1-1ubuntu1                 amd64        X C Binding, xinerama extension
ii  libxcb-xtest0:amd64                 1.11.1-1ubuntu1                 amd64        X C Binding, xtest extension
ii  libxcb1:amd64                       1.11.1-1ubuntu1                 amd64        X C Binding
ii  libxcomposite1:amd64                1:0.4.4-1                       amd64        X11 Composite extension library
ii  libxcursor1:amd64                   1:1.1.14-1                      amd64        X cursor management library
ii  libxdamage1:amd64                   1:1.1.4-2                       amd64        X11 damaged region extension library
ii  libxdg-basedir1                     1.2.0-1                         amd64        Implementation of the XDG Base Directory Specifications
ii  libxdmcp6:amd64                     1:1.1.2-1.1                     amd64        X11 Display Manager Control Protocol library
ii  libxext6:amd64                      2:1.3.3-1                       amd64        X11 miscellaneous extension library
ii  libxfixes3:amd64                    1:5.0.1-2                       amd64        X11 miscellaneous 'fixes' extension library
ii  libxfont1:amd64                     1:1.5.1-1                       amd64        X11 font rasterisation library
ii  libxft2:amd64                       2.3.2-1                         amd64        FreeType-based font drawing library for X
ii  libxi6:amd64                        2:1.7.6-1                       amd64        X11 Input extension library
ii  libxinerama1:amd64                  2:1.1.3-1                       amd64        X11 Xinerama extension library
ii  libxkbcommon0:amd64                 0.5.0-1ubuntu2                  amd64        library interface to the XKB compiler - shared library
ii  libxkbfile1:amd64                   1:1.0.9-0ubuntu1                amd64        X11 keyboard file manipulation library
ii  libxklavier16:amd64                 5.4-0ubuntu2                    amd64        X Keyboard Extension high-level API
ii  libxml2:amd64                       2.9.3+dfsg1-1                   amd64        GNOME XML library
ii  libxmu6:amd64                       2:1.1.2-2                       amd64        X11 miscellaneous utility library
ii  libxmuu1:amd64                      2:1.1.2-2                       amd64        X11 miscellaneous micro-utility library
ii  libxpm4:amd64                       1:3.5.11-1                      amd64        X11 pixmap library
ii  libxrandr2:amd64                    2:1.5.0-1                       amd64        X11 RandR extension library
ii  libxrender1:amd64                   1:0.9.9-0ubuntu1                amd64        X Rendering Extension client library
ii  libxshmfence1:amd64                 1.2-1                           amd64        X shared memory fences - shared library
ii  libxss1:amd64                       1:1.2.2-1                       amd64        X11 Screen Saver extension library
ii  libxt6:amd64                        1:1.1.5-0ubuntu1                amd64        X11 toolkit intrinsics library
ii  libxtables11:amd64                  1.6.0-2ubuntu3                  amd64        netfilter xtables library
ii  libxtst6:amd64                      2:1.2.2-1                       amd64        X11 Testing -- Record extension library
ii  libxv1:amd64                        2:1.0.10-1                      amd64        X11 Video extension library
ii  libxvmc1:amd64                      2:1.0.9-1ubuntu1                amd64        X11 Video extension library
ii  libxxf86dga1:amd64                  2:1.1.4-1                       amd64        X11 Direct Graphics Access extension library
ii  libxxf86vm1:amd64                   1:1.1.4-1                       amd64        X11 XFree86 video mode extension library
ii  lightdm                             1.18.1-0ubuntu1                 amd64        Display Manager
ii  lightdm-gtk-greeter                 2.0.1-2ubuntu4                  amd64        simple display manager (GTK+ greeter)
ii  linux-base                          4.0ubuntu1                      all          Linux image base package
ii  linux-firmware                      1.157                           all          Firmware for Linux kernel drivers
ii  linux-headers-4.4.0-22              4.4.0-22.39                     all          Header files related to Linux kernel version 4.4.0
ii  linux-headers-4.4.0-22-generic      4.4.0-22.39                     amd64        Linux kernel headers for version 4.4.0 on 64 bit x86 SMP
ii  linux-headers-generic               4.4.0.22.23                     amd64        Generic Linux kernel headers
ii  linux-image-4.4.0-22-generic        4.4.0-22.39                     amd64        Linux kernel image for version 4.4.0 on 64 bit x86 SMP
ii  linux-image-extra-4.4.0-22-generic  4.4.0-22.39                     amd64        Linux kernel extra modules for version 4.4.0 on 64 bit x86 SMP
ii  linux-signed-generic                4.4.0.22.23                     amd64        Complete Signed Generic Linux kernel and headers
ii  linux-signed-image-4.4.0-22-generic 4.4.0-22.39                     amd64        Signed kernel image generic
ii  linux-signed-image-generic          4.4.0.22.23                     amd64        Signed Generic Linux kernel image
ii  locales                             2.23-0ubuntu3                   all          GNU C Library: National Language (locale) data [support]
ii  login                               1:4.2-3.1ubuntu5                amd64        system login tools
ii  logrotate                           3.8.7-2ubuntu2                  amd64        Log rotation utility
ii  lsb-base                            9.20160110                      all          Linux Standard Base init script functionality
ii  lsb-release                         9.20160110                      all          Linux Standard Base version reporting utility
ii  lshw                                02.17-1.1ubuntu3                amd64        information about hardware configuration
ii  lsof                                4.89+dfsg-0.1                   amd64        Utility to list open files
ii  ltrace                              0.7.3-5.1ubuntu4                amd64        Tracks runtime library calls in dynamically linked programs
ii  lua-lgi:amd64                       0.9.0.20151101.git.885af4-1     amd64        Lua bridge to GObject based libraries
ii  lvm2                                2.02.133-1ubuntu10              amd64        Linux Logical Volume Manager
ii  lxd-client                          2.0.0-0ubuntu4                  amd64        Container hypervisor based on LXC - client
ii  makedev                             2.3.1-93ubuntu1                 all          creates device files in /dev
ii  man-db                              2.7.5-1                         amd64        on-line manual pager
ii  manpages                            4.04-2                          all          Manual pages about using a GNU/Linux system
ii  mawk                                1.3.3-17ubuntu2                 amd64        a pattern scanning and text processing language
ii  menu                                2.1.47ubuntu1                   amd64        generates programs menu for all menu-aware applications
ii  mime-support                        3.59ubuntu1                     all          MIME files 'mime.types' & 'mailcap', and support programs
ii  mlocate                             0.26-1ubuntu2                   amd64        quickly find files on the filesystem based on their name
ii  mokutil                             0.3.0-0ubuntu3                  amd64        tools for manipulating machine owner keys
ii  mount                               2.27.1-6ubuntu3                 amd64        tools for mounting and manipulating filesystems
ii  mtr-tiny                            0.86-1                          amd64        Full screen ncurses traceroute tool
ii  multiarch-support                   2.23-0ubuntu3                   amd64        Transitional package to ensure multiarch compatibility
ii  nano                                2.5.3-2                         amd64        small, friendly text editor inspired by Pico
ii  ncurses-base                        6.0+20160213-1ubuntu1           all          basic terminal type definitions
ii  ncurses-bin                         6.0+20160213-1ubuntu1           amd64        terminal-related programs and man pages
ii  ncurses-term                        6.0+20160213-1ubuntu1           all          additional terminal type definitions
ii  net-tools                           1.60-26ubuntu1                  amd64        NET-3 networking toolkit
ii  netbase                             5.3                             all          Basic TCP/IP networking system
ii  netcat-openbsd                      1.105-7ubuntu1                  amd64        TCP/IP swiss army knife
ii  ntfs-3g                             1:2015.3.14AR.1-1build1         amd64        read/write NTFS driver for FUSE
ii  open-iscsi                          2.0.873+git0.3b4b4500-14ubuntu3 amd64        iSCSI initiator tools
ii  openssh-client                      1:7.2p2-4ubuntu1                amd64        secure shell (SSH) client, for secure access to remote machines
ii  openssh-server                      1:7.2p2-4ubuntu1                amd64        secure shell (SSH) server, for secure access from remote machines
ii  openssh-sftp-server                 1:7.2p2-4ubuntu1                amd64        secure shell (SSH) sftp server module, for SFTP access from remote machines
ii  openssl                             1.0.2g-1ubuntu4.1               amd64        Secure Sockets Layer toolkit - cryptographic utility
ii  os-prober                           1.70ubuntu3                     amd64        utility to detect other OSes on a set of drives
ii  overlayroot                         0.27ubuntu1                     all          use an overlayfs on top of a read-only root filesystem
ii  parted                              3.2-15                          amd64        disk partition manipulator
ii  passwd                              1:4.2-3.1ubuntu5                amd64        change and administer password and group data
ii  pastebinit                          1.5-1                           all          command-line pastebin client
ii  patch                               2.7.5-1                         amd64        Apply a diff file to an original
ii  pciutils                            1:3.3.1-1.1ubuntu1              amd64        Linux PCI Utilities
ii  perl                                5.22.1-9                        amd64        Larry Wall's Practical Extraction and Report Language
ii  perl-base                           5.22.1-9                        amd64        minimal Perl system
ii  perl-modules-5.22                   5.22.1-9                        all          Core Perl modules
ii  plymouth                            0.9.2-3ubuntu13                 amd64        boot animation, logger and I/O multiplexer
ii  plymouth-label                      0.9.2-3ubuntu13                 amd64        boot animation, logger and I/O multiplexer - label control
ii  plymouth-theme-ubuntu-text          0.9.2-3ubuntu13                 amd64        boot animation, logger and I/O multiplexer - ubuntu text theme
ii  plymouth-themes                     0.9.2-3ubuntu13                 amd64        boot animation, logger and I/O multiplexer - themes
ii  policykit-1                         0.105-14.1                      amd64        framework for managing administrative policies and privileges
ii  popularity-contest                  1.64ubuntu2                     all          Vote for your favourite packages automatically
ii  powermgmt-base                      1.31+nmu1                       all          Common utils and configs for power management
ii  procps                              2:3.3.10-4ubuntu2               amd64        /proc file system utilities
ii  psmisc                              22.21-2.1build1                 amd64        utilities that use the proc file system
ii  python-apt-common                   1.1.0~beta1build1               all          Python interface to libapt-pkg (locales)
ii  python3                             3.5.1-3                         amd64        interactive high-level object-oriented language (default python3 version)
ii  python3-apport                      2.20.1-0ubuntu2                 all          Python 3 library for Apport crash report handling
ii  python3-apt                         1.1.0~beta1build1               amd64        Python 3 interface to libapt-pkg
ii  python3-chardet                     2.3.0-2                         all          universal character encoding detector for Python3
ii  python3-commandnotfound             0.3ubuntu16.04                  all          Python 3 bindings for command-not-found.
ii  python3-dbus                        1.2.0-3                         amd64        simple interprocess messaging system (Python 3 interface)
ii  python3-debian                      0.1.27ubuntu2                   all          Python 3 modules to work with Debian-related data formats
ii  python3-distupgrade                 1:16.04.14                      all          manage release upgrades
ii  python3-gdbm:amd64                  3.5.1-1                         amd64        GNU dbm database support for Python 3.x
ii  python3-gi                          3.20.0-0ubuntu1                 amd64        Python 3 bindings for gobject-introspection libraries
ii  python3-minimal                     3.5.1-3                         amd64        minimal subset of the Python language (default python3 version)
ii  python3-newt                        0.52.18-1ubuntu2                amd64        NEWT module for Python3
ii  python3-pkg-resources               20.7.0-1                        all          Package Discovery and Resource Access using pkg_resources
ii  python3-problem-report              2.20.1-0ubuntu2                 all          Python 3 library to handle problem reports
ii  python3-pycurl                      7.43.0-1ubuntu1                 amd64        Python bindings to libcurl (Python 3)
ii  python3-requests                    2.9.1-3                         all          elegant and simple HTTP library for Python3, built for human beings
ii  python3-six                         1.10.0-3                        all          Python 2 and 3 compatibility library (Python 3 interface)
ii  python3-software-properties         0.96.20                         all          manage the repositories that you install software from
ii  python3-systemd                     231-2build1                     amd64        Python 3 bindings for systemd
ii  python3-update-manager              1:16.04.3                       all          python 3.x module for update-manager
ii  python3-urllib3                     1.13.1-2                        all          HTTP library with thread-safe connection pooling for Python3
ii  python3.5                           3.5.1-10                        amd64        Interactive high-level object-oriented language (version 3.5)
ii  python3.5-minimal                   3.5.1-10                        amd64        Minimal subset of the Python language (version 3.5)
ii  readline-common                     6.3-8ubuntu2                    all          GNU readline and history libraries, common files
ii  rename                              0.20-4                          all          Perl extension for renaming multiple files
ii  resolvconf                          1.78ubuntu2                     all          name server information handler
ii  rsync                               3.1.1-3ubuntu1                  amd64        fast, versatile, remote (and local) file-copying tool
ii  rsyslog                             8.16.0-1ubuntu3                 amd64        reliable system and kernel logging daemon
ii  run-one                             1.17-0ubuntu1                   all          run just one instance of a command and its args at a time
ii  sbsigntool                          0.6-0ubuntu10                   amd64        utility for signing and verifying files for UEFI Secure Boot
ii  secureboot-db                       1.1                             amd64        Secure Boot updates for DB and DBX
ii  sed                                 4.2.2-7                         amd64        The GNU sed stream editor
ii  sensible-utils                      0.0.9                           all          Utilities for sensible alternative selection
ii  sgml-base                           1.26+nmu4ubuntu1                all          SGML infrastructure and SGML catalog file support
ii  shared-mime-info                    1.5-2                           amd64        FreeDesktop.org shared MIME database and spec
ii  shim                                0.8-0ubuntu2                    amd64        boot loader to chain-load signed boot loaders under Secure Boot
ii  shim-signed                         1.12+0.8-0ubuntu2               amd64        Secure Boot chain-loading bootloader (Microsoft-signed binary)
ii  snapd                               2.0.2                           amd64        Tool to interact with Ubuntu Core Snappy.
ii  software-properties-common          0.96.20                         all          manage the repositories that you install software from (common)
ii  sosreport                           3.2+git276-g7da50d6-3ubuntu1    amd64        Set of tools to gather troubleshooting data from a system
ii  squashfs-tools                      1:4.3-3ubuntu2                  amd64        Tool to create and append to squashfs filesystems
ii  ssh-import-id                       5.5-0ubuntu1                    all          securely retrieve an SSH public key and install it locally
ii  strace                              4.11-1ubuntu3                   amd64        System call tracer
ii  sudo                                1.8.16-0ubuntu1.1               amd64        Provide limited super user privileges to specific users
ii  systemd                             229-4ubuntu5                    amd64        system and service manager
ii  systemd-sysv                        229-4ubuntu5                    amd64        system and service manager - SysV links
ii  sysv-rc                             2.88dsf-59.3ubuntu2             all          System-V-like runlevel change mechanism
ii  sysvinit-utils                      2.88dsf-59.3ubuntu2             amd64        System-V-like utilities
ii  tar                                 1.28-2.1                        amd64        GNU version of the tar archiving utility
ii  tcpd                                7.6.q-25                        amd64        Wietse Venema's TCP wrapper utilities
ii  tcpdump                             4.7.4-1ubuntu1                  amd64        command-line network traffic analyzer
ii  telnet                              0.17-40                         amd64        basic telnet client
ii  time                                1.7-25.1                        amd64        GNU time program for measuring CPU resource usage
ii  tmux                                2.1-3build1                     amd64        terminal multiplexer
ii  ttf-ubuntu-font-family              1:0.83-0ubuntu2                 all          Ubuntu Font Family, sans-serif typeface hinted for clarity
ii  tzdata                              2016d-0ubuntu0.16.04            all          time zone and daylight-saving time data
ii  ubuntu-cloudimage-keyring           2013.11.11                      all          GnuPG keys of the Ubuntu Cloud Image builder
ii  ubuntu-core-launcher                1.0.27.1                        amd64        Launcher for ubuntu-core (snappy) apps
ii  ubuntu-keyring                      2012.05.19                      all          GnuPG keys of the Ubuntu archive
ii  ubuntu-minimal                      1.361                           amd64        Minimal core of Ubuntu
ii  ubuntu-mono                         14.04+16.04.20160415-0ubuntu1   all          Ubuntu Mono Icon theme
ii  ubuntu-release-upgrader-core        1:16.04.14                      all          manage release upgrades
ii  ucf                                 3.0036                          all          Update Configuration File(s): preserve user changes to config files
ii  udev                                229-4ubuntu5                    amd64        /dev/ and hotplug management daemon
ii  ufw                                 0.35-0ubuntu2                   all          program for managing a Netfilter firewall
ii  uidmap                              1:4.2-3.1ubuntu5                amd64        programs to help use subuids
ii  unattended-upgrades                 0.90                            all          automatic installation of security upgrades
ii  update-manager-core                 1:16.04.3                       all          manage release upgrades
ii  update-notifier-common              3.168                           all          Files shared between update-notifier and other packages
ii  ureadahead                          0.100.0-19                      amd64        Read required files in advance
ii  usbutils                            1:007-4                         amd64        Linux USB utilities
ii  util-linux                          2.27.1-6ubuntu3                 amd64        miscellaneous system utilities
ii  uuid-runtime                        2.27.1-6ubuntu3                 amd64        runtime components for the Universally Unique ID library
vim sadasd
sudo apt install colord-data 
sudo dpkg --set-selections < result 
vim result 
cat result 
sudo dpkg --set-selections < result 
sudo apt install ed
sudo dpkg --set-selections < result 
sudo apt install dconf-gsettings-backend dconf-service glib-networking gsettings-desktop-schemas hicolor-icon-theme libboost-filesystem1.58.0 libcolord2 libgd3 libmircommon5
sudo dpkg --set-selections < result 
sudo apt install libatk-bridge2.0-0 libatk1.0-0 libatk1.0-data libatspi2.0-0 libcairo-gobject2 libindicator3-7 libjson-glib-1.0-0 libjson-glib-1.0-common libmirclient9 libmirprotobuf3 libprotobuf-lite9v5 libsoup-gnome2.4-1 libsoup2.4-1 libxklavier16 
sudo dpkg --set-selections < result 
sudo dpkg --get-selections
sudo dpkg --get-selections > result2
sudo apt purge ed
man dpkg
sudo apt install lightdm
sudo apt install 
sudo apt install lightdm
sudo systemctl reboot 
ls
sudo apt-get install --no-reommends $(cat install.packages)
sudo apt-get install --no-recommends $(cat install.packages)
man apt-get
sudo apt-get install --no-install-recommends $(cat install.packages)
sudo apt purge libgtk2.0-0:amd64 libgtk2.0-common 
dpkg -l > listaAttuale
exit
dpkg-reconfigure lightdm 
sudo dpkg-reconfigure lightdm 
sudo apt install xserver-xorg-video-intel
cat /etc/lightdm/lightdm.conf 
sudo vim /etc/lightdm/lightdm.conf 
dpkg -l | grep intel
df -H
df -h
reset
sudo apt purge unity-*
sudo systemctl reboot 
apt show pinentry
apt show pinentry-gnome3 
vim tolti.filter
man apt
sudo apt purge accountsservice 
sudo apt autoremove 
df -h
sudo apt purge avahi-daemon 
sudo apt purge dconf-gsettings-backend 
sudo apt purge desktop-base desktop-file-utils 
sudo apt purge dselect elvis gnome-keyring 
sudo apt purge ppp
sudo apt autoremove 
sudo apt install mplayer
sudo apt purge upstart 
sudo apt purge `cat tolti.filter`
cat tolti.filter 
sudo apt purge `cat tolti.filter`
vim tolti.filter 
sudo apt purge `cat tolti.filter`
df -h
sudo apt purge python2.7
sudo apt autoremove 
df -h
sudo apt purge byobu
reset
sudo apt purge crda
sudo apt purge wireless-crda
sudo apt autoremove 
sudo apt update 
sudo apt purge crda
sudo apt purge `cat tolti.filter | head -10`
reset
sudo apt purge `cat tolti.filter | head -10`
sudo apt purge pptp-linux
sudo apt python-minimal
sudo apt purge python-minimal
sudo apt purge python3-aptdaemon
sudo apt purge `cat tolti.filter | head -1`
while line in `cat tolti.filter` do echo $line
while line in `cat tolti.filter` do echo $line done
while line in `cat tolti.filter` do; echo $line done
while line in `cat tolti.filter` do echo $line done;
while line in `cat tolti.filter`; do echo $line done
while line in `cat tolti.filter` ; do echo $line done
while line in `cat tolti.filter` ; do; echo $line done;
while line in `cat tolti.filter` ; do echo $line; done
cat tolti.filter
while line in `cat tolti.filter`; do echo $line; done
while read line; do echo $line; done < tolti.filter
while read line; do sudo apt purge $line; done < tolti.filter
while read line; do echo "REMOVING $line"; sudo apt purge $line; done < tolti.filter
while read line; do echo "REMOVING $line"; sudo apt purge $line; echo; done < tolti.filter
sudo apt purge gdisk
while read line; do echo "REMOVING $line"; sudo apt purge $line; echo; done < tolti.filter
vim tolti.filter
while read line; do echo "REMOVING $line"; sudo apt purge $line; echo; done < tolti.filter
sudo apt purge gcr
while read line; do echo "REMOVING $line"; sudo apt purge $line; echo; done < tolti.filter
while read line; do echo "REMOVING $line"; sudo apt purge $line; echo; done < tolti.filter2
rm tolti.filter
cp tolti.filter2 tolti.filter
vim tolti.filter
cp tolti.filter2 tolti.filter
vim tolti.filter
while read line; do echo "REMOVING $line"; sudo apt purge $line; echo; done < tolti.filter2
reset && while read line; do echo "REMOVING $line"; sudo apt purge $line; echo; done < tolti.filter
sudo apt purge gnome-bluetooth
while read line; do echo "REMOVING $line"; sudo apt purge $line; echo; done < tolti.filter
sudo apt purge gnome-user-share
while read line; do echo "REMOVING $line"; sudo apt purge $line; read a; echo; done < tolti.filter
sudo apt purge indicator-applet indicator-datetime 
while read line; do echo "REMOVING $line"; sudo apt purge $line; done < tolti.filter
while read line; do echo "REMOVING $line"; echo $line | xargs sudo apt purge ; done < tolti.filter
set-x;while read line; do echo "REMOVING $line"; echo $line | xargs sudo apt-get purge ; done < tolti.filter
set -x;while read line; do echo "REMOVING $line"; echo $line | xargs sudo apt-get purge ; done < tolti.filter
man apt-get
set +x
sudo apt-get purge $(cat tolti.filter | head -5)
sudo apt-get purge $(cat tolti.filter | head -5 | tail -5)
sudo apt-get purge $(cat tolti.filter | head -10 | tail -5)
sudo apt-get purge $(cat tolti.filter | head -15 | tail -5)
sudo apt-get purge $(cat tolti.filter | head -20 | tail -5)
sudo apt-get purge $(cat tolti.filter | head -25 | tail -5)
apt show im-config
sudo apt-get purge $(cat tolti.filter | head -30 | tail -5)
sudo apt-get purge $(cat tolti.filter | head -35 | tail -5)
sudo apt-get purge $(cat tolti.filter | head -40 | tail -5)
apt show libaacs0
sudo apt purge libaacs0
sudo apt-get purge $(cat tolti.filter | head -40 | tail -5)
sudo apt-get purge $(cat tolti.filter | head -45 | tail -5)
apt show libappindicator3-1
sudo apt-get purge $(cat tolti.filter | head -50 | tail -5)
sudo apt-get purge $(cat tolti.filter | head -55 | tail -5)
sudo apt-get purge $(cat tolti.filter | head -60 | tail -5)
sudo apt-get purge $(cat tolti.filter | head -65 | tail -5)
sudo apt-get purge $(cat tolti.filter | head -70 | tail -5)
sudo apt-get purge $(cat tolti.filter | head -75 | tail -5)
sudo apt-get purge $(cat tolti.filter | head -80 | tail -5)
sudo apt-get purge $(cat tolti.filter | head -90 | tail -10)
sudo apt-get purge $(cat tolti.filter | head -100 | tail -10)
sudo apt-get purge $(cat tolti.filter | head -110 | tail -10)
sudo apt-get purge $(cat tolti.filter | head -120 | tail -10)
sudo apt-get purge $(cat tolti.filter | head -130 | tail -10)
sudo apt-get purge $(cat tolti.filter | head -140 | tail -10)
sudo apt-get purge $(cat tolti.filter | head -150 | tail -10)
sudo apt-get purge $(cat tolti.filter | head -160 | tail -10)
sudo apt-get purge $(cat tolti.filter | head -170 | tail -10)
sudo apt-get purge $(cat tolti.filter | head -180 | tail -10)
sudo apt-get purge $(cat tolti.filter | head -200 | tail -20)
sudo apt-get purge $(cat tolti.filter | head -220 | tail -20)
sudo apt-get purge $(cat tolti.filter | head -240 | tail -20)
sudo apt-get purge $(cat tolti.filter | head -260 | tail -20)
sudo apt-get purge $(cat tolti.filter | head -280 | tail -20)
sudo apt autoremove 
sudo apt autoclean
sudo apt upgrade 
sudo apt dist-upgrade 
ls /var/cache/apt/archives/
ls /var/cache/apt/
cat /var/cache/apt/pkgcache.bin 
cat /var/cache/apt/srcpkgcache.bin 
cat /var/lib/apt/lists/
cat /var/lib/apt/lists/archive.ubuntu.com_ubuntu_dists_xenial_restricted_i18n_Translation-en
dpkg -l 
sudo vim /usr/local/bin/snapshot 
snapshot 
bg
less .5hd/prev/packages.list 
bg
tail -5 .5hd/prev/packages.list 
ls
cd .5hd/
ls
ls -al
mkdir tmp
rm -r tmp/
mv curr/ tmp
cp -r prev/ curr
cp -r tmp/* prev/*
ls prev/
cp -r tmp/* prev/
rm -r tmp/
top
du -hs .
ll
cd ..
df -h
htop 
htop --version 
ps
man ps
ps ax
ps ax | grep ligh
/usr/sbin/lightdm --show-config
cat cat /usr/share/lightdm/lightdm.conf.d/50-disable-log-backup.conf
cat /usr/share/lightdm/lightdm.conf.d/50-greeter-wrapper.conf
cat /usr/share/lightdm/lightdm.conf.d/50-guest-wrapper.conf
sudo apt purge lightdm
sudo apt autoremove 
sudo apt --list-upgradable
sudo apt --list-upgra
sudo apt list 
ll
cd script_systemd/
ll
cd home/ale/
ll
find / -type f -name "tty*.conf"
sudo find / -type f -name "tty*.conf"
sudo find / -type f -name "*tty*.conf"
sudo find / -type f -name "*tty*"
cd /lib/systemd/system/
ll
cat getty@.service 
cd 
ll
vim .xprofile 
cdl /etc/systemd/system
cd /etc/systemd/system
sudo systemctl set-default graphical.target 
ll
sudo systemctl disable splashscreen.service 
ll
sudo rm -fr dbus-org.bluez.service splashscreen.service score.target.wants/ dbus-org.bluez.service dbus-org.freedesktop.ModemManager1.service dbus-org.freedesktop.nm-dispatcher.service 
ll
cd /lib/systemd/system
ll
touch /tmp/a 
touch /tmp/a --date="25 May"
touch /tmp/a --date="25 Massy"
touch /tmp/a --date="25 May"
find . -newer /tmp/a 
touch /tmp/a --date="06 June"
find . -newer /tmp/a 
rm ./qamf.target
sud rm ./qamf.target score.target 
sudo rm ./qamf.target score.target 
cd -
find . -newer /tmp/a 
cat ./display-manager.service
ll ./network-online.target.wants
sudo rm NetworkManager-wait-online.service
ll ./sockets.target.wants
ll ./NetworkManager-wait-online.service
ll ./bluetooth.target.wants
sudo rm -r ./bluetooth.target.wants
ll ./ModemManager.service
ll ./bluetooth.service
ll ./multi-user.target.wants/ModemManager.service
dpkg -S /lib/systemd/system/ModemManager.service
dpkg -S ./multi-user.target.wants/ModemManager.service
dpkg -S bluetooth.service
sudo rm bluetooth.service ./ModemManager.service ./bluetooth.service ./multi-user.target.wants/ModemManager.service
find . -newer /tmp/a 
ll ./NetworkManager.service
sudo rm -fr ./NetworkManager.service ./multi-user.target.wants/NetworkManager.service ./NetworkManager-dispatcher.service
find . -newer /tmp/a 
ll ./network-online.target.wants
sudo rm -fr NetworkManager-wait-online.service
sudo rm -fr ./network-online.target.wants/NetworkManager-wait-online.service
ll ./network-online.target.wants
find . -newer /tmp/a 
ll ./default.target
ll ./sockets.target.wants
ll ./multi-user.target.wants
sudo find /usr -type f -name "*.service"
cat /usr/lib/systemd/user/qamf-system.service
sudo rm /usr/lib/systemd/user/qamf-system.service
cd /usr/lib/systemd/user
find . -newer /tmp/a 
sudo rm -fr qamf.target 
find . -newer /tmp/a 
cd /etc/
find . -newer /tmp/a 
cat ./X11/default-display-manager
cat ./NetworkManager
cd ./NetworkManager
ll
cat NetworkManager.conf 
ll lib/systemd/system/slim.service
ll /lib/systemd/system/slim.service
rm -fr lib/systemd/system/slim.service
ll /lib/systemd/system/snapd.service
ll /etc/.slim.conf.swp
cat /etc/.slim.conf.swp
sudo rm /etc/.slim.conf.swp
less /usr/local/bin/snapshot 
cd /etc/
ls
cd systemd/
ls
cd system/
ls
less /etc/
ls
cd /etc/
ls
ls rc2.d/
cd systemd/
ls
cd system/
ls
ls -al
sudpo rm NetworkManager.service  NetworkManager-dispatcher.service 
sudo rm NetworkManager.service  NetworkManager-dispatcher.service 
ls
ls -al
find -L .
find -H .
less /usr/local/bin/snapshot 
cd /home/ale/
ls
rm result result2
rm listaAttuale 
rm install.packages 
rm selections 
rm tolti.filter*
ls
less .xinitrc 
mv .xinitrc .xinitrc.orig
sudo reboot
htop 
top
df -h
dpkg -l 
dpkg -l | less
sudo apt purge libwayland-dev 
dpkg -l | less
cat tolti.filter 
reset && cat tolti.filter 
reset && cat tolti.filter.orig
cp tolti.filter tolti.filter2
vim tolti.filter
cat tolti.filter
dpkg -l | less
vim tolti.filter
cat /etc/lightdm/lightdm.conf 
ll
./mplayerDx.sh Daniela_Tamayo.mp4 
cat mplayerSx.sh 
DISPLAY=:0 mplayer -profile qubica-sx-audio -screen 0 -loop 0 Daniela_Tamayo.mp4 
sudo apt install mplayer
./mplayerDx.sh Daniela_Tamayo.mp4 
ll
cd splashscreen/
ll
cat splashscreen
62;c
cat splashscreen.sh 
./splashscreen
DISPLAY=:0 ./splashscreen
ll
ll media/
ll media/image
ll media/image.png 
ff
fg
dstat
sudo apt install dstat 
dstat 
htop 
rm .xinitrc.orig 
cat .xsession-errors
cat .xsession-errors.old 
ls /usr/local/bin/createDiff 
less /usr/local/bin/createDiff 
cd .5hd/
LS
ls
ls curr/
ls prev/
cp -r curr/* prev/
less /usr/local/bin/createDiff 
cd ..
ls
less .xprofile 
ls script
ls scripts/
ls scripts
cd script_systemd/
ls
ls home/
cd ..
ls
ls script_temp/
diff -aqr script_temp/ script_systemd/
find . | grep 5HD_VER
less  script_temp/home/ale/awesome_config/
ls script_systemd/opt/qubicaamf/
cat script_systemd/opt/qubicaamf/system_option.conf 
rm script_systemd/opt/qubicaamf/system_option.conf 
ls
rm -r script_temp/
ls splashscreen/
ls script
ls scripts/
rm - script_systemd/DEBIAN/
cd script_systemd/
ls
rm -r DEBIAN/
ls home/ale/
rm -r home/ale/scripts.original/
ls
ls opt/
ls
cd ..
ls
ls splashscreen/
cd .5hd/
vim .bash.completion
cd ..
vim foo
chmod +x foo 
. .5hd/.bash.completion 
vim .bash.completion
ls
rm foo 
rm .5hd/.bash.completion 
ls --
ls
ls script_systemd/
cd script_systemd/
ls
cd home/ale/
ls
ls script-s
ls script_systemd/
ls
cd ,,
cd ..
ls
cd home/ale/
ls
cd script_systemd/
ls
rm -R DEBIAN/
ls
cd ..
ls
cd ..
ls
cd ..
mv script_systemd/ script_systemd.porcaio
ls
diff -aqr script_systemd.porcaio/ script_systemd
ls
ls script_systemd/home/ale/
ls script_systemd/home/ale/script_systemd/
ls script_systemd
cd script_systemd
cd home/ale/
ls
ls script_systemd/
ls script_temp/
rm -r script_temp/
ls
mv script_systemd/ scripts
ls
cd ..
ls
cd ..
ls
ls etc/
cd ..
ls
mv script_systemd qamfDeveloproot
mv qamfDeveloproot/ qamfDevelopRoot/
ls
mv scripts originalScripts
diff -aqr script_systemd.porcaio/ qamfDevelopRoot/
find qamfDevelopRoot/ | grep xterm
ls qamfDevelopRoot/home/ale/scripts/
cd qamfDevelopRoot/home/ale/scripts/
ls
ls opt/
ls opt/qubicaamf/bin/
rm -r opt/qubicaamf/services/start_system.service 
cat opt/qubicaamf/bin/set-viewport 
rm -r opt/qubicaamf/bin/set-viewport 
ls
find opt/
ls
ls home/ale/
ls home/ale/scripts.original/
rm -r home/ale/scripts.original/
ls home/ale/scripts/
cd ..
ls
cd ..
ls
cd home/ale/
ls
cd scripts/
ls
ls home/ale/scripts/
ls
ls home/ale/nReboot 
lesss home/ale/nReboot 
less home/ale/nReboot 
ls home/ale/
less home/ale/start_whole_system.sh 
less home/ale/fake_start.sh 
ls
ls home/ale/
cd ..
ls
mv scripts/home/ale/* .
ls
ls home/ale/
ls
ls scripts/home/ale/
ls scripts/home/ale/scripts/
ls
ls scripts/
mv scripts/home/ale/scripts/* scripts/
ls scripts/home/ale/
ls -al scripts/home/ale/
ls -al scripts/home/ale/.config/
ls -al scripts/home/ale/.config/5hd/
ls -al scripts/home/ale/.config/conf_cache/
ls -al scripts/home/ale/.config/pulse/
ls
ls matrix/
ls
ls scripts/
ls scripts/home/ale/scripts/
ls
cd ..
lls
ls
diff -aqr . qamfDevelopRoot/home/ale/
diff -aqr .config/ qamfDevelopRoot/home/ale/.config/
diff -aqr .mplayer/ qamfDevelopRoot/home/ale/.mplayer/
diff -aqr .local/ qamfDevelopRoot/home/ale/.local/
ls
less /etc/X11/xorg.conf.d/11-device-edid.conf 
ls
ls /opt/
sudo vim /usr/local/bin/snapshot 
ls
mv start_whole_system.sh stop_whole_system.sh /opt/qubicaamf/scripts/
ls
mv apt_proxy.sh /opt/qubicaamf/scripts/
ls
mv edid.bin /opt/qubicaamf/edid/
mv nReboot /opt/qubicaamf/scripts/
sudo vim /etc/X11/xorg.conf.d/11-device-edid.conf 
ls
mv http_proxy.sh /opt/qubicaamf/scripts/
ls
less test.sh 
cat test.sh 
ls
less fake_start.sh 
vim fake_start.sh 
vim .xprofile 
ls scripts/
ls
ls scripts/
ls
ls originalScripts/
less originalScripts/transform_sx 
sudo vim /etc/X11/xorg.conf.d/11-device-edid.conf 
ls
ls originalScripts/
rm -r originalScripts/
ls
ls scripts/
ls
vim .xprofile 
ls
vim .xprofile 
sudo systemctl reboot 
journalctl -b
grep -nr CONFIG_FOLDER
vim /opt/qubicaamf/scripts/start_whole_system.sh 
cd /usr/local/bin/
ll
mv splashscreen/splashscreen .
ll
sudo mv splashscreen/splashscreen .
sudo mv splashscreen/splashscreen splashscreen
ll
cp splashscreen/splashscreen splashscreen/
sudo mv monitor-hotplug.sh monitor-hotplug
ll
cat monitor-hotplug 
vim /etc/X11/xorg.conf.d/10-monitor.conf 
sudo vim /etc/X11/xorg.conf.d/10-monitor.conf 
ll
mv splashscreen/ splashscreen.pp
sudo mv splashscreen/ splashscreen.pp
ll
sudo mv splashscreen.pp/splashscreen .
ll
ll ~/
ll
sudo rm -fr splashscreen
ll
cat splashscreen.pp/splashscreen.sh 
ll
rm -r splashscreen.pp/
ll splashscreen.pp/
sudo rm -r splashscreen.pp/
sudo mv ~/splashscreen .
ll
cd
splashscreen 
DISPLAY=:0 splashscreen 
sudo mv ~/splashscreen .
sudo mv ~/splashscreen /usr/local/bin/
DISPLAY=:0 splashscreen 
ll /usr/local/share/
sudo mkdir splashscreen
cd splashscreen/
cd ..
ll
cd splashscreen/
mkdir media
ll
cd ..
ll
rm splashscreen/
sudo rm -r splashscreen/
mkdir splashscreen
cd splashscreen/
mkdir media
cd 
sudo mv splashscreen/splashscreen /usr/local/bin/
DISPLAY=:0 splashscreen 
ll splashscreen/media/
ll
ll splashscreen/
rm convert2BinCArray convert_to_hex_binary font.bin font_rev.ttf font.ttf  image2.gif image2.png image.png
cd splashscreen/ && rm convert2BinCArray convert_to_hex_binary font.bin font_rev.ttf font.ttf  image2.gif image2.png image.png
ll
ll media/
rm -r media/
ll media/
DISPLAY=:0 splashscreen 
cd
sudo mv splashscreen/splashscreen /usr/local/bin/
DISPLAY=:0 splashscreen 
DISPLAY=:0 splashscreen sx
DISPLAY=:0 splashscreen dx
ll
./xtermDx.sh 
fd
fg
./xtermSx.sh 
ll
sudo mv splashscreen/splashscreen /usr/local/bin/
DISPLAY=:0 splashscreen dx
DISPLAY=:0 splashscreen 
DISPLAY=:0 splashscreen sx
sudo mv splashscreen/splashscreen /usr/local/bin/
DISPLAY=:0 splashscreen sx
DISPLAY=:0 splashscreen dx
sudo mv splashscreen/splashscreen /usr/local/bin/
DISPLAY=:0 splashscreen sx
sudo mv splashscreen/splashscreen /usr/local/bin/
DISPLAY=:0 splashscreen sx
DISPLAY=:0 splashscreen sx &
DISPLAY=:0 splashscreen dx &
fg
DISPLAY=:0 splashscreen dx &
fg

sudo mv splashscreen/splashscreen /usr/local/bin/
DISPLAY=:0 splashscreen dx
sudo mv splashscreen/splashscreen /usr/local/bin/
DISPLAY=:0 splashscreen dx
DISPLAY=:0 splashscreen 
sudo mv splashscreen/splashscreen /usr/local/bin/
DISPLAY=:0 splashscreen 
sudo mv splashscreen/splashscreen /usr/local/bin/
DISPLAY=:0 splashscreen 
sudo systemctl reboot 
journalctl 
journalctl  -f
cd /opt/qubicaamf/
ls
grep -rn CONFIG_FOLD *
cd /home/ale/
vim fake_start.sh 
ls
sudo systemctl restart lightdm.service 
journalctl -f &
jobs
sudo systemctl restart lightdm.service 
jobs
fg 1
lll
ll
