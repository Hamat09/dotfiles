#!/bin/bash
status=$(warp-cli status)
if [[ "$status" == *"Connected"* ]]; then
  echo '{"text": "<span color=\"#d97075\">VPN</span> | <span color=\"#a76971\">CONNECTED</span>", "class": "connected"}'
else
  echo '{"text": "<span color=\"#d97075\">VPN</span> | <span color=\"#dda3a3\">DISCONNECTED</span>", "class": "disconnected"}'
fi
