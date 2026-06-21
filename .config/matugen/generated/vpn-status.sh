#!/bin/bash
status=$(warp-cli status)
if [[ "$status" == *"Connected"* ]]; then
  echo '{"text": "<span color=\"#54d5ff\">VPN</span> | <span color=\"#54d5ff\">CONNECTED</span>", "class": "connected"}'
else
  echo '{"text": "<span color=\"#54d5ff\">VPN</span> | <span color=\"#54d5ff\">DISCONNECTED</span>", "class": "disconnected"}'
fi
