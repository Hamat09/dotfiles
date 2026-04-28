#!/bin/bash
status=$(warp-cli status)
if [[ "$status" == *"Connected"* ]]; then
  echo '{"text": "<span color=\"#5F4E5B\">VPN</span> | <span color=\"#A5A286\">CONNECTED</span>", "class": "connected"}'
else
  echo '{"text": "<span color=\"#5F4E5B\">VPN</span> | <span color=\"#A5A286\">DISCONNECTED</span>", "class": "disconnected"}'
fi
