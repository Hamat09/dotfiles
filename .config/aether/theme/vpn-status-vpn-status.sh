#!/bin/bash
status=$(warp-cli status)
if [[ "$status" == *"Connected"* ]]; then
  echo '{"text": "<span color=\"#33718f\">VPN</span> | <span color=\"#847e49\">CONNECTED</span>", "class": "connected"}'
else
  echo '{"text": "<span color=\"#33718f\">VPN</span> | <span color=\"#67c6d6\">DISCONNECTED</span>", "class": "disconnected"}'
fi
