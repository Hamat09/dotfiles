#!/bin/bash
status=$(warp-cli status)
if [[ "$status" == *"Connected"* ]]; then
  echo '{"text": "<span color=\"#b26e5e\">VPN</span> | <span color=\"#c3978c\">CONNECTED</span>", "class": "connected"}'
else
  echo '{"text": "<span color=\"#b26e5e\">VPN</span> | <span color=\"#2e3645\">DISCONNECTED</span>", "class": "disconnected"}'
fi
