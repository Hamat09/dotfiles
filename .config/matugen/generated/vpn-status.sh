#!/bin/bash
status=$(warp-cli status)
if [[ "$status" == *"Connected"* ]]; then
  echo '{"text": "<span color=\"#a11f44\">VPN</span> | <span color=\"#3c3f5f\">CONNECTED</span>", "class": "connected"}'
else
  echo '{"text": "<span color=\"#a11f44\">VPN</span> | <span color=\"#f22e4f\">DISCONNECTED</span>", "class": "disconnected"}'
fi
