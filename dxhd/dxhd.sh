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
dmenu_run -b -x 5 -y 15 -z 700 -l 10 -nb "#282a36" -sb "#44475a" -sf "#bd93f9" -nf "#6272a4" -fn Ubuntu

#super + a
./Script/dmenu/test1.sh

#super + b
librewolf

#super + alt + e
nautilus

#super + alt + r
st -e ranger

#super + alt + s
st -e pulsemixer

#super + shift + s
./Script/bookmarks.sh
