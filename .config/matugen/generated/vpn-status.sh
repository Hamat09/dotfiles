#!/bin/bash
status=$(warp-cli status)
if [[ "$status" == *"Connected"* ]]; then
  echo '{"text": "<span color=\"#b4ab65\">VPN</span> | <span color=\"#c49e30\">CONNECTED</span>", "class": "connected"}'
else
  echo '{"text": "<span color=\"#b4ab65\">VPN</span> | <span color=\"#4fac9f\">DISCONNECTED</span>", "class": "disconnected"}'
fi
