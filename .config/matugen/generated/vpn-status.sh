#!/bin/bash
status=$(warp-cli status)
if [[ "$status" == *"Connected"* ]]; then
  echo '{"text": "<span color=\"#3c3c3c\">VPN</span> | <span color=\"#505050\">CONNECTED</span>", "class": "connected"}'
else
  echo '{"text": "<span color=\"#3c3c3c\">VPN</span> | <span color=\"#505050\">DISCONNECTED</span>", "class": "disconnected"}'
fi
