#!/bin/bash
status=$(warp-cli status)
if [[ "$status" == *"Connected"* ]]; then
  echo '{"text": "<span color=\"#9e5d5d\">VPN</span> | <span color=\"#953b6c\">CONNECTED</span>", "class": "connected"}'
else
  echo '{"text": "<span color=\"#9e5d5d\">VPN</span> | <span color=\"#553287\">DISCONNECTED</span>", "class": "disconnected"}'
fi
