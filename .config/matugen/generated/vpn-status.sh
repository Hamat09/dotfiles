#!/bin/bash
status=$(warp-cli status)
if [[ "$status" == *"Connected"* ]]; then
  echo '{"text": "<span color=\"#a06d98\">VPN</span> | <span color=\"#93719a\">CONNECTED</span>", "class": "connected"}'
else
  echo '{"text": "<span color=\"#a06d98\">VPN</span> | <span color=\"#a294b6\">DISCONNECTED</span>", "class": "disconnected"}'
fi
