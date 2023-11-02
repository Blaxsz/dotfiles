#!/bin/dash

# disable bell
xset -b

# load xterm defaults
[ -f ~/.Xresources ] && xrdb -merge ~/.Xresources

# SET XDG_RUNTIME_DIR
#mkdir /tmp/${USER}-runtime && chmod -R 0700 /tmp/${USER}-runtime
#export XDG_RUNTIME_DIR=/tmp/${USER}-runtime

# TIMEZONE
#TZ=America/Sao_Paulo

# START PROGRAMS
setxkbmap -model pc104 -layout us_intl &
/usr/local/bin/dwmblocks &
/home/darknoul/.local/bin/set-wallpaper &
exec dbus-run-session dwm
