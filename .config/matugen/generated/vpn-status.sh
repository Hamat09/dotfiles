#!/bin/bash
status=$(warp-cli status)
if [[ "$status" == *"Connected"* ]]; then
  echo '{"text": "<span color=\"#849194\">VPN</span> | <span color=\"#94496b\">CONNECTED</span>", "class": "connected"}'
else
  echo '{"text": "<span color=\"#849194\">VPN</span> | <span color=\"#94496b\">DISCONNECTED</span>", "class": "disconnected"}'
fi
