#!/bin/bash
status=$(warp-cli status)
if [[ "$status" == *"Connected"* ]]; then
  echo '{"text": "<span color=\"#d80239\">VPN</span> | <span color=\"#a20831\">CONNECTED</span>", "class": "connected"}'
else
  echo '{"text": "<span color=\"#d80239\">VPN</span> | <span color=\"#8b8b8b\">DISCONNECTED</span>", "class": "disconnected"}'
fi
