#!/bin/bash

exec 2>~/.Xlog


# touchpad buttons config
synclient TapButton1=1 TapButton2=3 TapButton3=2

# info in the status bar
#sh ~/.scripts/xsetloop.sh &
slstatus &

# fade mouse if inactive after N seconds
#unclutter -grab -idle 3 &

light-locker &

# recompile dwm, st and probably other stuff with new theme(and maybe new config.h)
#setbg /home/mathway/pics/wals/zerotwo2.jpg
xwallpaper --zoom /home/mathway/pics/wals/gentoo_cool.jpg


# setting PWD to home directory
cd

# disable touchpad while typing
syndaemon -d -t

# fade lcd when power is too low
sudo powermon -d -min 55% &

# starting X composite manager
# in order to do some funny stuff
# (i.e making background in clients transparent)

compton &

# smart way to run dwm
#exec dbus-launch --sh-syntax --exit-with-session dwm

while true; do
      dwm
done
