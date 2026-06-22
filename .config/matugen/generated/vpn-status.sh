#!/bin/bash
status=$(warp-cli status)
if [[ "$status" == *"Connected"* ]]; then
  echo '{"text": "<span color=\"#4C3148\">VPN</span> | <span color=\"#3B0B2B\">CONNECTED</span>", "class": "connected"}'
else
  echo '{"text": "<span color=\"#4C3148\">VPN</span> | <span color=\"#3B0B2B\">DISCONNECTED</span>", "class": "disconnected"}'
fi
