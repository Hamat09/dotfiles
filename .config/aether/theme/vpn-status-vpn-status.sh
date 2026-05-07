#!/bin/bash
status=$(warp-cli status)
if [[ "$status" == *"Connected"* ]]; then
  echo '{"text": "<span color=\"#286983\">VPN</span> | <span color=\"#b4637a\">CONNECTED</span>", "class": "connected"}'
else
  echo '{"text": "<span color=\"#286983\">VPN</span> | <span color=\"#907aa9\">DISCONNECTED</span>", "class": "disconnected"}'
fi
