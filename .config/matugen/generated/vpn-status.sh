#!/bin/bash
status=$(warp-cli status)
if [[ "$status" == *"Connected"* ]]; then
  echo '{"text": "<span color=\"#5c7443\">VPN</span> | <span color=\"#5a6744\">CONNECTED</span>", "class": "connected"}'
else
  echo '{"text": "<span color=\"#5c7443\">VPN</span> | <span color=\"#617d49\">DISCONNECTED</span>", "class": "disconnected"}'
fi
