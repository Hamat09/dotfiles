#!/bin/bash
status=$(warp-cli status)
if [[ "$status" == *"Connected"* ]]; then
  echo '{"text": "<span color=\"#3e8fb0\">VPN</span> | <span color=\"#eb6f92\">CONNECTED</span>", "class": "connected"}'
else
  echo '{"text": "<span color=\"#3e8fb0\">VPN</span> | <span color=\"#c4a7e7\">DISCONNECTED</span>", "class": "disconnected"}'
fi
