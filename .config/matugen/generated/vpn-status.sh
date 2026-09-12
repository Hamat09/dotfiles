#!/bin/bash
status=$(warp-cli status)
if [[ "$status" == *"Connected"* ]]; then
  echo '{"text": "<span color=\"#036478\">VPN</span> | <span color=\"#03516a\">CONNECTED</span>", "class": "connected"}'
else
  echo '{"text": "<span color=\"#036478\">VPN</span> | <span color=\"#05718c\">DISCONNECTED</span>", "class": "disconnected"}'
fi
