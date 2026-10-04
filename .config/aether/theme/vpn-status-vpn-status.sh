#!/bin/bash
status=$(warp-cli status)
if [[ "$status" == *"Connected"* ]]; then
  echo '{"text": "<span color=\"#abc8a1\">VPN</span> | <span color=\"#cba17d\">CONNECTED</span>", "class": "connected"}'
else
  echo '{"text": "<span color=\"#abc8a1\">VPN</span> | <span color=\"#c4aac7\">DISCONNECTED</span>", "class": "disconnected"}'
fi
