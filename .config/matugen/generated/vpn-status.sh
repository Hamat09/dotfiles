#!/bin/bash
status=$(warp-cli status)
if [[ "$status" == *"Connected"* ]]; then
  echo '{"text": "<span color=\"#5fa6be\">VPN</span> | <span color=\"#37adaa\">CONNECTED</span>", "class": "connected"}'
else
  echo '{"text": "<span color=\"#5fa6be\">VPN</span> | <span color=\"#df99ad\">DISCONNECTED</span>", "class": "disconnected"}'
fi
