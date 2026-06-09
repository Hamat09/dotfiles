#!/bin/bash
status=$(warp-cli status)
if [[ "$status" == *"Connected"* ]]; then
  echo '{"text": "<span color=\"#d6b31b\">VPN</span> | <span color=\"#d8b312\">CONNECTED</span>", "class": "connected"}'
else
  echo '{"text": "<span color=\"#d6b31b\">VPN</span> | <span color=\"#fdd100\">DISCONNECTED</span>", "class": "disconnected"}'
fi
