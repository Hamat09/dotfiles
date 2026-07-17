#!/bin/bash
status=$(warp-cli status)
if [[ "$status" == *"Connected"* ]]; then
  echo '{"text": "<span color=\"#717ea9\">VPN</span> | <span color=\"#4265a9\">CONNECTED</span>", "class": "connected"}'
else
  echo '{"text": "<span color=\"#717ea9\">VPN</span> | <span color=\"#b96475\">DISCONNECTED</span>", "class": "disconnected"}'
fi
