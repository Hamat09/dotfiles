#!/usr/bin/env bash

# Define options
options="   Balanced\n   Power-Saver\n   Performance"

# Run rofi
chosen="$(echo -e "$options" | rofi -dmenu -p "Power Profile" -i -l 3)"

# Case statement to execute command based on selection
case $chosen in
*Balanced)
  powerprofilesctl set balanced
  notify-send "Power Profile" "Balanced"
  ;;
*Power-Saver)
  powerprofilesctl set power-saver
  notify-send "Power Profile" "Power-Saver"
  ;;
*Performance)
  powerprofilesctl set performance
  notify-send "Power Profile" "Performance"
  ;;
esac
