#!/bin/bash
status=$(warp-cli status)
if [[ "$status" == *"Connected"* ]]; then
  echo '{"text": "<span color=\"#f4af74\">VPN</span> | <span color=\"#c47e6f\">CONNECTED</span>", "class": "connected"}'
else
  echo '{"text": "<span color=\"#f4af74\">VPN</span> | <span color=\"#ea888e\">DISCONNECTED</span>", "class": "disconnected"}'
fi
