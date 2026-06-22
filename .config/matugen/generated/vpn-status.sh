#!/bin/bash
status=$(warp-cli status)
if [[ "$status" == *"Connected"* ]]; then
  echo '{"text": "<span color=\"#3c445e\">VPN</span> | <span color=\"#816f46\">CONNECTED</span>", "class": "connected"}'
else
  echo '{"text": "<span color=\"#3c445e\">VPN</span> | <span color=\"#425331\">DISCONNECTED</span>", "class": "disconnected"}'
fi
