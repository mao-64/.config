#!/bin/sh

#super + return
st

#XF86MonBrightnessUp
./Scripts/bl/bl.sh -i

#XF86MonBrightnessDown
./Scripts/bl/bl.sh -d

#XF86AudioMicMute
pactl set-source-mute 1 toggle

#XF86AudioLowerVolume
pactl set-sink-mute 0 false ; pactl set-sink-volume 0 -5%

#XF86AudioRaiseVolume
pactl set-sink-mute 0 false ; pactl set-sink-volume 0 +5%

#super + XF86AudioLowerVolume
pactl set-sink-mute 0 false ; pactl set-sink-volume 0 -1%

#super + XF86AudioRaiseVolume
pactl set-sink-mute 0 false ; pactl set-sink-volume 0 +1%

#XF86AudioMute
pactl set-sink-mute 0 toggle

#super + d
dmenu_run -b -x 5 -y 15 -z 700 -l 10 -nb "#282828" -sb "#fabd2f" -sf "#282828" -nf "#ebdbb2" -fn Ubuntu

#super + v
st -e ranger ~/Vault

#super + b
librewolf

#super + y
tdrop -am -w 80% -y 10% -x 10% -h 80% st

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

#super + s
tabbed surf -e
