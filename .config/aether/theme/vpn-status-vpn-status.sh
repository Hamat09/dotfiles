#!/bin/bash
status=$(warp-cli status)
if [[ "$status" == *"Connected"* ]]; then
  echo '{"text": "<span color=\"#FDAE62\">VPN</span> | <span color=\"#F2A097\">CONNECTED</span>", "class": "connected"}'
else
  echo '{"text": "<span color=\"#FDAE62\">VPN</span> | <span color=\"#AF87AC\">DISCONNECTED</span>", "class": "disconnected"}'
fi
