#!/bin/sh

#super + return
st

#XF86MonBrightnessUp
sudo bl -i

#XF86MonBrightnessDown
sudo bl -d

#XF86AudioMicMute
pactl set-source-mute 1 toggle

#super + d
dmenu_run -b -x 5 -y 15 -z 700 -l 10 -nb "#282828" -sb "#fabd2f" -sf "#282828" -nf "#ebdbb2" -fn Ubuntu

#super + a
./Script/dmenu/test1.sh

#super + b
librewolf

#super + alt + e
nautilus

#super + alt + r
st -e ranger

#super + a
st -e ranger ~/Videos/anime

#super + alt + s
st -e pulsemixer

#super + shift + d
discord

#super + shift + s
./Script/bookmarks.sh
