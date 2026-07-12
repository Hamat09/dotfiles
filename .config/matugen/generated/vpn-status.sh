#!/bin/bash
status=$(warp-cli status)
if [[ "$status" == *"Connected"* ]]; then
  echo '{"text": "<span color=\"#981e1a\">VPN</span> | <span color=\"#5e524e\">CONNECTED</span>", "class": "connected"}'
else
  echo '{"text": "<span color=\"#981e1a\">VPN</span> | <span color=\"#a7945a\">DISCONNECTED</span>", "class": "disconnected"}'
fi
