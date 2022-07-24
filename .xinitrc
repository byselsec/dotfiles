#!/bin/bash

exec 2>~/.Xlog

source ~/.profile

# keyboard lang
setxkbmap -option grp:win_space_toggle us,ru

# touchpad buttons config
synclient TapButton1=1 TapButton2=3 TapButton3=2

# info in the status bar
#sh ~/.scripts/xsetloop.sh &
slstatus &

# fade mouse if inactive after N seconds
#unclutter -grab -idle 3 &

# screen lock
light-locker &

# wifi systray applet
nm-applet &

# recompile dwm, st and probably other stuff with new theme(and maybe new config.h)
#setbg /home/mathway/pics/wals/kali-ascii.png 
xwallpaper --zoom /home/mathway/pics/wals/kali-ascii.png


# setting PWD to home directory
cd

# disable touchpad while typing
syndaemon -d -t

# natural scrolling for touchpad
synclient VertScrollDelta=-70
synclient HorizScrollDelta=-70

# fade lcd when power is too low
sudo powermon -d -min 20% &

# starting X composite manager
# in order to do some funny stuff
# (i.e making background in clients transparent)

compton &

# smart way to run dwm

while true; do
    dbus-launch --sh-syntax --exit-with-session dwm
done
