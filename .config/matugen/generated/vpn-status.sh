#!/bin/bash
status=$(warp-cli status)
if [[ "$status" == *"Connected"* ]]; then
  echo '{"text": "<span color=\"#b2d0a8\">VPN</span> | <span color=\"#9b9c76\">CONNECTED</span>", "class": "connected"}'
else
  echo '{"text": "<span color=\"#b2d0a8\">VPN</span> | <span color=\"#beaf7b\">DISCONNECTED</span>", "class": "disconnected"}'
fi
