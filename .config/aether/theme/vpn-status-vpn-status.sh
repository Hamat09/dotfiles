#!/bin/bash
status=$(warp-cli status)
if [[ "$status" == *"Connected"* ]]; then
  echo '{"text": "<span color=\"#dad61a\">VPN</span> | <span color=\"#a19e18\">CONNECTED</span>", "class": "connected"}'
else
  echo '{"text": "<span color=\"#dad61a\">VPN</span> | <span color=\"#5f9ba8\">DISCONNECTED</span>", "class": "disconnected"}'
fi
