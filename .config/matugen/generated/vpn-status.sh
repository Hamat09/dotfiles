#!/bin/bash
status=$(warp-cli status)
if [[ "$status" == *"Connected"* ]]; then
  echo '{"text": "<span color=\"#6888a7\">VPN</span> | <span color=\"#b77985\">CONNECTED</span>", "class": "connected"}'
else
  echo '{"text": "<span color=\"#6888a7\">VPN</span> | <span color=\"#9897a5\">DISCONNECTED</span>", "class": "disconnected"}'
fi
