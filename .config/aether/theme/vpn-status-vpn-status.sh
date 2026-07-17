#!/bin/bash
status=$(warp-cli status)
if [[ "$status" == *"Connected"* ]]; then
  echo '{"text": "<span color=\"#03574C\">VPN</span> | <span color=\"#11B19D\">CONNECTED</span>", "class": "connected"}'
else
  echo '{"text": "<span color=\"#03574C\">VPN</span> | <span color=\"#11B19D\">DISCONNECTED</span>", "class": "disconnected"}'
fi
