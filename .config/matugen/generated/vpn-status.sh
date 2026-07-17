#!/bin/bash
status=$(warp-cli status)
if [[ "$status" == *"Connected"* ]]; then
  echo '{"text": "<span color=\"#63e1d1\">VPN</span> | <span color=\"#bc64b4\">CONNECTED</span>", "class": "connected"}'
else
  echo '{"text": "<span color=\"#63e1d1\">VPN</span> | <span color=\"#95d0ab\">DISCONNECTED</span>", "class": "disconnected"}'
fi
