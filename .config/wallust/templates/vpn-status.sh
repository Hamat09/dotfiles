#!/bin/bash
status=$(warp-cli status)
if [[ "$status" == *"Connected"* ]]; then
  echo '{"text": "<span color=\"{{color2}}\">VPN</span> | <span color=\"{{color5}}\">CONNECTED</span>", "class": "connected"}'
else
  echo '{"text": "<span color=\"{{color2}}\">VPN</span> | <span color=\"{{color5}}\">DISCONNECTED</span>", "class": "disconnected"}'
fi
