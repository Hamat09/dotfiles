#!/bin/bash
status=$(warp-cli status)
if [[ "$status" == *"Connected"* ]]; then
  echo '{"text": "<span color=\"#662252\">VPN</span> | <span color=\"#037967\">CONNECTED</span>", "class": "connected"}'
else
  echo '{"text": "<span color=\"#662252\">VPN</span> | <span color=\"#62774c\">DISCONNECTED</span>", "class": "disconnected"}'
fi
