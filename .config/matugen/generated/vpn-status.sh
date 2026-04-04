#!/bin/bash
status=$(warp-cli status)
if [[ "$status" == *"Connected"* ]]; then
  echo '{"text": "<span color=\"#0d9ba4\">VPN</span> | <span color=\"#049ca9\">CONNECTED</span>", "class": "connected"}'
else
  echo '{"text": "<span color=\"#0d9ba4\">VPN</span> | <span color=\"#f6c43a\">DISCONNECTED</span>", "class": "disconnected"}'
fi
