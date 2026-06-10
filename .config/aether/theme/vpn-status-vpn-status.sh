#!/bin/bash
status=$(warp-cli status)
if [[ "$status" == *"Connected"* ]]; then
  echo '{"text": "<span color=\"#9f6361\">VPN</span> | <span color=\"#a9a962\">CONNECTED</span>", "class": "connected"}'
else
  echo '{"text": "<span color=\"#9f6361\">VPN</span> | <span color=\"#733336\">DISCONNECTED</span>", "class": "disconnected"}'
fi
