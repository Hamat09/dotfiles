#!/bin/bash
status=$(warp-cli status)
if [[ "$status" == *"Connected"* ]]; then
  warp-cli disconnect
  notify-send "󰖂 WARP" "Disconnected"
else
  warp-cli connect
  notify-send "󰖂 WARP" "Connected"
fi
