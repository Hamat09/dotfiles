#!/bin/bash
status=$(warp-cli status)
if [[ "$status" == *"Connected"* ]]; then
  echo '{"text": "<span color=\"#8aa697\">VPN</span> | <span color=\"#929887\">CONNECTED</span>", "class": "connected"}'
else
  echo '{"text": "<span color=\"#8aa697\">VPN</span> | <span color=\"#c7bc9f\">DISCONNECTED</span>", "class": "disconnected"}'
fi
