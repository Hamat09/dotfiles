#!/bin/bash
status=$(warp-cli status)
if [[ "$status" == *"Connected"* ]]; then
  echo '{"text": "<span color=\"#a36194\">VPN</span> | <span color=\"#833d83\">CONNECTED</span>", "class": "connected"}'
else
  echo '{"text": "<span color=\"#a36194\">VPN</span> | <span color=\"#d1728e\">DISCONNECTED</span>", "class": "disconnected"}'
fi
