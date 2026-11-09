#!/bin/bash
status=$(warp-cli status)
if [[ "$status" == *"Connected"* ]]; then
  echo '{"text": "<span color=\"#b4b0af\">VPN</span> | <span color=\"#9ba19c\">CONNECTED</span>", "class": "connected"}'
else
  echo '{"text": "<span color=\"#b4b0af\">VPN</span> | <span color=\"#acc7c7\">DISCONNECTED</span>", "class": "disconnected"}'
fi
