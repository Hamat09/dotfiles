#!/bin/bash
status=$(warp-cli status)
if [[ "$status" == *"Connected"* ]]; then
  echo '{"text": "<span color=\"#%%color2.hex%%\">VPN</span> | <span color=\"#%%color5.hex%%\">CONNECTED</span>", "class": "connected"}'
else
  echo '{"text": "<span color=\"#%%color2.hex%%\">VPN</span> | <span color=\"#%%color5.hex%%\">DISCONNECTED</span>", "class": "disconnected"}'
fi
