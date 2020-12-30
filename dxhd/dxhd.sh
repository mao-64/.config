#!/bin/sh

#super + return
st

#XF86MonBrightnessUp
sudo bl.sh -u 10

#XF86MonBrightnessDown
sudo bl.sh -d 10

#XF86AudioMicMute
pactl set-source-mute 1 toggle

#super + d
dmenu_run -b -x 5 -y 15 -z 700 -l 10 -nb "#2E3440" -sb "#fffcfb" -sf "#282a36" -nf "#f8f8f2" -fn Ubuntu

#super + alt + f
firefox

#super + alt + e
nautilus

#super + alt + r
st -e ranger

#super + s
./testing/ifdk.sh
