#!/bin/bash
status=$(warp-cli status)
if [[ "$status" == *"Connected"* ]]; then
  echo '{"text": "<span color=\"#4F1139\">VPN</span> | <span color=\"#A11F45\">CONNECTED</span>", "class": "connected"}'
else
  echo '{"text": "<span color=\"#4F1139\">VPN</span> | <span color=\"#A11F45\">DISCONNECTED</span>", "class": "disconnected"}'
fi
