#!/bin/bash
status=$(warp-cli status)
if [[ "$status" == *"Connected"* ]]; then
  echo '{"text": "<span color=\"#93d9e0\">VPN</span> | <span color=\"#f8a18c\">CONNECTED</span>", "class": "connected"}'
else
  echo '{"text": "<span color=\"#93d9e0\">VPN</span> | <span color=\"#a89ed4\">DISCONNECTED</span>", "class": "disconnected"}'
fi
