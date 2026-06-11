#!/bin/bash
status=$(warp-cli status)
if [[ "$status" == *"Connected"* ]]; then
  echo '{"text": "<span color=\"#c4646b\">VPN</span> | <span color=\"#956566\">CONNECTED</span>", "class": "connected"}'
else
  echo '{"text": "<span color=\"#c4646b\">VPN</span> | <span color=\"#cd9b79\">DISCONNECTED</span>", "class": "disconnected"}'
fi
