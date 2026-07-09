#!/bin/bash
status=$(warp-cli status)
if [[ "$status" == *"Connected"* ]]; then
  echo '{"text": "<span color=\"#3e8fcd\">VPN</span> | <span color=\"#6d8fac\">CONNECTED</span>", "class": "connected"}'
else
  echo '{"text": "<span color=\"#3e8fcd\">VPN</span> | <span color=\"#ceb4ad\">DISCONNECTED</span>", "class": "disconnected"}'
fi
