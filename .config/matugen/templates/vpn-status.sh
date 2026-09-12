#!/bin/bash
status=$(warp-cli status)
if [[ "$status" == *"Connected"* ]]; then
  echo '{"text": "<span color=\"{{base16.base08.default.hex}}\">VPN</span> | <span color=\"{{colors.source_color.default.hex}}\">CONNECTED</span>", "class": "connected"}'
else
  echo '{"text": "<span color=\"{{base16.base08.default.hex}}\">VPN</span> | <span color=\"{{base16.base0b.default.hex}}\">DISCONNECTED</span>", "class": "disconnected"}'
fi
