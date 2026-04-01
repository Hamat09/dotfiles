#!/bin/bash
status=$(warp-cli status)
if [[ "$status" == *"Connected"* ]]; then
  echo '{"text": "<span color=\"#897565\">VPN</span> | <span color=\"#95662d\">CONNECTED</span>", "class": "connected"}'
else
  echo '{"text": "<span color=\"#897565\">VPN</span> | <span color=\"#978876\">DISCONNECTED</span>", "class": "disconnected"}'
fi
