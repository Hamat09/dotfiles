#!/bin/bash
status=$(warp-cli status)
if [[ "$status" == *"Connected"* ]]; then
  echo '{"text": "<span color=\"#019ca7\">VPN</span> | <span color=\"#f9d26c\">CONNECTED</span>", "class": "connected"}'
else
  echo '{"text": "<span color=\"#019ca7\">VPN</span> | <span color=\"#1bb7be\">DISCONNECTED</span>", "class": "disconnected"}'
fi
