#!/bin/bash
status=$(warp-cli status)
if [[ "$status" == *"Connected"* ]]; then
  echo '{"text": "<span color=\"#6d93cc\">VPN</span> | <span color=\"#8e77af\">CONNECTED</span>", "class": "connected"}'
else
  echo '{"text": "<span color=\"#6d93cc\">VPN</span> | <span color=\"#8c92ba\">DISCONNECTED</span>", "class": "disconnected"}'
fi
