#!/bin/bash
status=$(warp-cli status)
if [[ "$status" == *"Connected"* ]]; then
  echo '{"text": "<span color=\"#5b3b2d\">VPN</span> | <span color=\"#550706\">CONNECTED</span>", "class": "connected"}'
else
  echo '{"text": "<span color=\"#5b3b2d\">VPN</span> | <span color=\"#97251f\">DISCONNECTED</span>", "class": "disconnected"}'
fi
