#!/bin/bash
status=$(warp-cli status)
if [[ "$status" == *"Connected"* ]]; then
  echo '{"text": "<span color=\"#537e9c\">VPN</span> | <span color=\"#e1404a\">CONNECTED</span>", "class": "connected"}'
else
  echo '{"text": "<span color=\"#537e9c\">VPN</span> | <span color=\"#83799b\">DISCONNECTED</span>", "class": "disconnected"}'
fi
