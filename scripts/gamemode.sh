#!/usr/bin/env sh
HYPRGAMEMODE=$(hyprctl getoption animations:enabled | awk 'NR==1{print $2}')
if [ "$HYPRGAMEMODE" = 1 ] ; then
    powerprofilesctl set performance
    hyprctl notify 1 5000 "rgb(40a02b)" "Gamemode [ON]"
    exit
else
    powerprofilesctl set balanced
    hyprctl notify 1 5000 "rgb(d20f39)" "Gamemode [OFF]"
    hyprctl reload
    exit 0
fi
exit 1
