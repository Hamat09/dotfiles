#!/bin/bash
status=$(warp-cli status)
if [[ "$status" == *"Connected"* ]]; then
  echo '{"text": "<span color=\"#7a838a\">VPN</span> | <span color=\"#6f7984\">CONNECTED</span>", "class": "connected"}'
else
  echo '{"text": "<span color=\"#7a838a\">VPN</span> | <span color=\"#c9b6a5\">DISCONNECTED</span>", "class": "disconnected"}'
fi
