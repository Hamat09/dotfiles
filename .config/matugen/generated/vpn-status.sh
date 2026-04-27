#!/bin/bash
status=$(warp-cli status)
if [[ "$status" == *"Connected"* ]]; then
  echo '{"text": "<span color=\"#067cad\">VPN</span> | <span color=\"#ffc500\">CONNECTED</span>", "class": "connected"}'
else
  echo '{"text": "<span color=\"#067cad\">VPN</span> | <span color=\"#5d949d\">DISCONNECTED</span>", "class": "disconnected"}'
fi
