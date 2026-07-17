#!/bin/bash
status=$(warp-cli status)
if [[ "$status" == *"Connected"* ]]; then
  echo '{"text": "<span color=\"#54b65a\">VPN</span> | <span color=\"#e2c296\">CONNECTED</span>", "class": "connected"}'
else
  echo '{"text": "<span color=\"#54b65a\">VPN</span> | <span color=\"#85e0db\">DISCONNECTED</span>", "class": "disconnected"}'
fi
