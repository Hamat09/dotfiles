#!/bin/bash
status=$(warp-cli status)
if [[ "$status" == *"Connected"* ]]; then
  echo '{"text": "<span color=\"#534f47\">VPN</span> | <span color=\"#573f3f\">CONNECTED</span>", "class": "connected"}'
else
  echo '{"text": "<span color=\"#534f47\">VPN</span> | <span color=\"#c2382f\">DISCONNECTED</span>", "class": "disconnected"}'
fi
