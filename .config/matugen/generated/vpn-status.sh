#!/bin/bash
status=$(warp-cli status)
if [[ "$status" == *"Connected"* ]]; then
  echo '{"text": "<span color=\"#787D6E\">VPN</span> | <span color=\"#566256\">CONNECTED</span>", "class": "connected"}'
else
  echo '{"text": "<span color=\"#787D6E\">VPN</span> | <span color=\"#566256\">DISCONNECTED</span>", "class": "disconnected"}'
fi
