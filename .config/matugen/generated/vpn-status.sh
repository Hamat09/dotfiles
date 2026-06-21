#!/bin/bash
status=$(warp-cli status)
if [[ "$status" == *"Connected"* ]]; then
  echo '{"text": "<span color=\"#715c00\">VPN</span> | <span color=\"#715c00\">CONNECTED</span>", "class": "connected"}'
else
  echo '{"text": "<span color=\"#715c00\">VPN</span> | <span color=\"#715c00\">DISCONNECTED</span>", "class": "disconnected"}'
fi
