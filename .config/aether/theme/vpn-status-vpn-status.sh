#!/bin/bash
status=$(warp-cli status)
if [[ "$status" == *"Connected"* ]]; then
  echo '{"text": "<span color=\"#375687\">VPN</span> | <span color=\"#c32f43\">CONNECTED</span>", "class": "connected"}'
else
  echo '{"text": "<span color=\"#375687\">VPN</span> | <span color=\"#96979a\">DISCONNECTED</span>", "class": "disconnected"}'
fi
