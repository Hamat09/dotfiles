#!/bin/bash
status=$(warp-cli status)
if [[ "$status" == *"Connected"* ]]; then
  echo '{"text": "<span color=\"#83b7ca\">VPN</span> | <span color=\"#e3c8a7\">CONNECTED</span>", "class": "connected"}'
else
  echo '{"text": "<span color=\"#83b7ca\">VPN</span> | <span color=\"#95a3d0\">DISCONNECTED</span>", "class": "disconnected"}'
fi
