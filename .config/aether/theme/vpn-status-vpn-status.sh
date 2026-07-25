#!/bin/bash
status=$(warp-cli status)
if [[ "$status" == *"Connected"* ]]; then
  echo '{"text": "<span color=\"#4f666c\">VPN</span> | <span color=\"#4e565e\">CONNECTED</span>", "class": "connected"}'
else
  echo '{"text": "<span color=\"#4f666c\">VPN</span> | <span color=\"#dc5959\">DISCONNECTED</span>", "class": "disconnected"}'
fi
