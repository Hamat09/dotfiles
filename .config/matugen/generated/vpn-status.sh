#!/bin/bash
status=$(warp-cli status)
if [[ "$status" == *"Connected"* ]]; then
  echo '{"text": "<span color=\"#314568\">VPN</span> | <span color=\"#4b385b\">CONNECTED</span>", "class": "connected"}'
else
  echo '{"text": "<span color=\"#314568\">VPN</span> | <span color=\"#664f79\">DISCONNECTED</span>", "class": "disconnected"}'
fi
