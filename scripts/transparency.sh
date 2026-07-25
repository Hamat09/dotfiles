#!/bin/bash
CURRENT=$(hyprctl getoption decoration:active_opacity | awk 'NR==1 {print $2}')
if [ "$CURRENT" = "0.900000" ]; then

  sed -i -e '37s/false/true/' -e '34s/50/3/' -e '35s/40/3/' -e '38s/{ 0, 0 }/{ 12, 12 }/' -e '10s/0/2/' -e 's/gaps_in = 10/gaps_in = 20/' -e 's/gaps_out = 20/gaps_out = 30/' -e '29s/active_opacity = 0.9/active_opacity = 1.0/' -e '30s/inactive_opacity = 0.7/inactive_opacity = 1.0/' -e 's/rounding = 5/rounding = 0/' -e 's/rounding_power = 10/rounding_power = 0/' /home/hamato/.config/hypr/modules/decorations.lua

  sed -i -e 's/"margin-top": 10/"margin-top": 0/' -e 's/"margin-left": 20/"margin-left": 0/' -e 's/"margin-right": 20/"margin-right": 0/' /home/hamato/.config/waybar/config.jsonc
  sed -i -e 's/, 0.7)/, 1.0)/' -e 's/border: 2px/border: 0px/' -e 's/border-radius: 5px/border-radius: 0px/' -e '29s/7/10/' -e '30s/margin: 5px 0px 5px 5px/margin: 0px 0px 0px 0px/' /home/hamato/.config/waybar/style.css
  sed -i -e 's/B3/FF/' -e 's/border-radius=5/border-radius=0/' /home/hamato/.config/mako/config
  sed -i -e 's/B3/FF/' -e 's/border-radius:      5px/border-radius:      0px/' /home/hamato/.config/rofi/config.rasi

  sed -i -e 's/"margin-top": 10/"margin-top": 0/' -e 's/"margin-left": 20/"margin-left": 0/' -e 's/"margin-right": 20/"margin-right": 0/' /home/hamato/.config/wal/templates/config.jsonc
  sed -i -e 's/, 0.7)/, 1.0)/' -e 's/border: 2px/border: 0px/' -e 's/border-radius: 5px/border-radius: 0px/' -e '29s/7/10/' -e '30s/margin: 5px 0px 5px 5px/margin: 0px 0px 0px 0px/' /home/hamato/.config/wal/templates/style.css
  sed -i -e 's/B3/FF/' -e 's/border-radius=5/border-radius=0/' /home/hamato/.config/wal/templates/colors-mako
  sed -i -e 's/B3/FF/' -e 's/border-radius:      5px/border-radius:      0px/' /home/hamato/.config/wal/templates/rofi-config.rasi

  sed -i -e 's/"margin-top": 10/"margin-top": 0/' -e 's/"margin-left": 20/"margin-left": 0/' -e 's/"margin-right": 20/"margin-right": 0/' /home/hamato/.config/wallust/templates/config.jsonc
  sed -i -e 's/, 0.7)/, 1.0)/' -e 's/border: 2px/border: 0px/' -e 's/border-radius: 5px/border-radius: 0px/' -e '29s/7/10/' -e '30s/margin: 5px 0px 5px 5px/margin: 0px 0px 0px 0px/' /home/hamato/.config/wallust/templates/style.css
  sed -i -e 's/B3/FF/' -e 's/border-radius=5/border-radius=0/' /home/hamato/.config/wallust/templates/colors-mako
  sed -i -e 's/B3/FF/' -e 's/border-radius:      5px/border-radius:      0px/' /home/hamato/.config/wallust/templates/rofi-config.rasi

  sed -i -e 's/"margin-top": 10/"margin-top": 0/' -e 's/"margin-left": 20/"margin-left": 0/' -e 's/"margin-right": 20/"margin-right": 0/' /home/hamato/.config/cwal/templates/config.jsonc
  sed -i -e 's/, 0.7)/, 1.0)/' -e 's/border: 2px/border: 0px/' -e 's/border-radius: 5px/border-radius: 0px/' -e '29s/7/10/' -e '30s/margin: 5px 0px 5px 5px/margin: 0px 0px 0px 0px/' /home/hamato/.config/cwal/templates/style.css
  sed -i -e 's/B3/FF/' -e 's/border-radius=5/border-radius=0/' /home/hamato/.config/cwal/templates/colors-mako
  sed -i -e 's/B3/FF/' -e 's/border-radius:      5px/border-radius:      0px/' /home/hamato/.config/rofi/rofi-config.rasi

  sed -i -e 's/"margin-top": 10/"margin-top": 0/' -e 's/"margin-left": 20/"margin-left": 0/' -e 's/"margin-right": 20/"margin-right": 0/' /home/hamato/.config/hellwal/templates/config.jsonc
  sed -i -e 's/, 0.7)/, 1.0)/' -e 's/border: 2px/border: 0px/' -e 's/border-radius: 5px/border-radius: 0px/' -e '29s/7/10/' -e '30s/margin: 5px 0px 5px 5px/margin: 0px 0px 0px 0px/' /home/hamato/.config/hellwal/templates/style.css
  sed -i -e 's/B3/FF/' -e 's/border-radius=5/border-radius=0/' /home/hamato/.config/hellwal/templates/colors-mako
  sed -i -e 's/B3/FF/' -e 's/border-radius:      5px/border-radius:      0px/' /home/hamato/.config/hellwal/templates/rofi-config.rasi

  sed -i -e 's/"margin-top": 10/"margin-top": 0/' -e 's/"margin-left": 20/"margin-left": 0/' -e 's/"margin-right": 20/"margin-right": 0/' /home/hamato/.config/aether/custom/waybar-config/config.jsonc
  sed -i -e 's/, 0.7)/, 1.0)/' -e 's/border: 2px/border: 0px/' -e 's/border-radius: 5px/border-radius: 0px/' -e '29s/7/10/' -e '30s/margin: 5px 0px 5px 5px/margin: 0px 0px 0px 0px/' /home/hamato/.config/aether/custom/waybar/style.css
  sed -i -e 's/B3/FF/' -e 's/border-radius=5/border-radius=0/' /home/hamato/.config/aether/custom/mako/colors-mako
  sed -i -e 's/B3/FF/' -e 's/border-radius:      5px/border-radius:      0px/' /home/hamato/.config/aether/custom/rofi/rofi-config.rasi

  sed -i -e 's/"margin-top": 10/"margin-top": 0/' -e 's/"margin-left": 20/"margin-left": 0/' -e 's/"margin-right": 20/"margin-right": 0/' /home/hamato/.config/matugen/style-base16/templates/config.jsonc
  sed -i -e 's/, 0.7)/, 1.0)/' -e 's/border: 2px/border: 0px/' -e 's/border-radius: 5px/border-radius: 0px/' -e '29s/7/10/' -e '30s/margin: 5px 0px 5px 5px/margin: 0px 0px 0px 0px/' /home/hamato/.config/matugen/style-base16/templates/style.css
  sed -i -e 's/B3/FF/' -e 's/border-radius=5/border-radius=0/' /home/hamato/.config/matugen/style-base16/templates/colors-mako
  sed -i -e 's/B3/FF/' -e 's/border-radius:      5px/border-radius:      0px/' /home/hamato/.config/matugen/style-base16/templates/rofi-config.rasi

  sed -i -e 's/"margin-top": 10/"margin-top": 0/' -e 's/"margin-left": 20/"margin-left": 0/' -e 's/"margin-right": 20/"margin-right": 0/' /home/hamato/.config/matugen/style-classic/templates/config.jsonc
  sed -i -e 's/, 0.7)/, 1.0)/' -e 's/border: 2px/border: 0px/' -e 's/border-radius: 5px/border-radius: 0px/' -e '29s/7/10/' -e '30s/margin: 5px 0px 5px 5px/margin: 0px 0px 0px 0px/' /home/hamato/.config/matugen/style-classic/templates/style.css
  sed -i -e 's/B3/FF/' -e 's/border-radius=5/border-radius=0/' /home/hamato/.config/matugen/style-classic/templates/colors-mako
  sed -i -e 's/B3/FF/' -e 's/border-radius:      5px/border-radius:      0px/' /home/hamato/.config/matugen/style-classic/templates/rofi-config.rasi

  sed -i -e 's/"margin-top": 10/"margin-top": 0/' -e 's/"margin-left": 20/"margin-left": 0/' -e 's/"margin-right": 20/"margin-right": 0/' /home/hamato/.config/iris/templates/config.jsonc
  sed -i -e 's/, 0.7)/, 1.0)/' -e 's/border: 2px/border: 0px/' -e 's/border-radius: 5px/border-radius: 0px/' -e '29s/7/10/' -e '30s/margin: 5px 0px 5px 5px/margin: 0px 0px 0px 0px/' /home/hamato/.config/iris/templates/style.css
  sed -i -e 's/B3/FF/' -e 's/border-radius=5/border-radius=0/' /home/hamato/.config/iris/templates/colors-mako
  sed -i -e 's/B3/FF/' -e 's/border-radius:      5px/border-radius:      0px/' /home/hamato/.config/iris/templates/rofi-config.rasi

  pkill -SIGUSR2 waybar
  pkill mako && mako &

else

  sed -i -e '37s/true/false/' -e '34s/3/50/' -e '35s/3/40/' -e '38s/{ 12, 12 }/{ 0, 0 }/' -e '10s/2/0/' -e 's/gaps_in = 20/gaps_in = 10/' -e 's/gaps_out = 30/gaps_out = 20/' -e '29s/active_opacity = 1.0/active_opacity = 0.9/' -e '30s/inactive_opacity = 1.0/inactive_opacity = 0.7/' -e 's/rounding = 0/rounding = 5/' -e 's/rounding_power = 0/rounding_power = 10/' /home/hamato/.config/hypr/modules/decorations.lua

  sed -i -e 's/"margin-top": 0/"margin-top": 10/' -e 's/"margin-left": 0/"margin-left": 20/' -e 's/"margin-right": 0/"margin-right": 20/' /home/hamato/.config/waybar/config.jsonc
  sed -i -e 's/, 1.0)/, 0.7)/' -e 's/border: 2px/border: 0px/' -e 's/border-radius: 0px/border-radius: 5px/' -e '29s/10/7/' -e '30s/margin: 0px 0px 0px 0px/margin: 5px 0px 5px 5px/' /home/hamato/.config/waybar/style.css
  sed -i -e 's/FF/B3/' -e 's/border-radius=0/border-radius=5/' /home/hamato/.config/mako/config
  sed -i -e 's/FF/B3/' -e 's/border-radius:      0px/border-radius:      5px/' /home/hamato/.config/rofi/config.rasi

  sed -i -e 's/"margin-top": 0/"margin-top": 10/' -e 's/"margin-left": 0/"margin-left": 20/' -e 's/"margin-right": 0/"margin-right": 20/' /home/hamato/.config/wal/templates/config.jsonc
  sed -i -e 's/, 1.0)/, 0.7)/' -e 's/border: 2px/border: 0px/' -e 's/border-radius: 0px/border-radius: 5px/' -e '29s/10/7/' -e '30s/margin: 0px 0px 0px 0px/margin: 5px 0px 5px 5px/' /home/hamato/.config/wal/templates/style.css
  sed -i -e 's/FF/B3/' -e 's/border-radius=0/border-radius=5/' /home/hamato/.config/wal/templates/colors-mako
  sed -i -e 's/FF/B3/' -e 's/border-radius:      0px/border-radius:      5px/' /home/hamato/.config/wal/templates/rofi-config.rasi

  sed -i -e 's/"margin-top": 0/"margin-top": 10/' -e 's/"margin-left": 0/"margin-left": 20/' -e 's/"margin-right": 0/"margin-right": 20/' /home/hamato/.config/wallust/templates/config.jsonc
  sed -i -e 's/, 1.0)/, 0.7)/' -e 's/border: 2px/border: 0px/' -e 's/border-radius: 0px/border-radius: 5px/' -e '29s/10/7/' -e '30s/margin: 0px 0px 0px 0px/margin: 5px 0px 5px 5px/' /home/hamato/.config/wallust/templates/style.css
  sed -i -e 's/FF/B3/' -e 's/border-radius=0/border-radius=5/' /home/hamato/.config/wallust/templates/colors-mako
  sed -i -e 's/FF/B3/' -e 's/border-radius:      0px/border-radius:      5px/' /home/hamato/.config/wallust/templates/rofi-config.rasi

  sed -i -e 's/"margin-top": 0/"margin-top": 10/' -e 's/"margin-left": 0/"margin-left": 20/' -e 's/"margin-right": 0/"margin-right": 20/' /home/hamato/.config/cwal/templates/config.jsonc
  sed -i -e 's/, 1.0)/, 0.7)/' -e 's/border: 2px/border: 0px/' -e 's/border-radius: 0px/border-radius: 5px/' -e '29s/10/7/' -e '30s/margin: 0px 0px 0px 0px/margin: 5px 0px 5px 5px/' /home/hamato/.config/cwal/templates/style.css
  sed -i -e 's/FF/B3/' -e 's/border-radius=0/border-radius=5/' /home/hamato/.config/cwal/templates/colors-mako
  sed -i -e 's/FF/B3/' -e 's/border-radius:      0px/border-radius:      5px/' /home/hamato/.config/cwal/templates/rofi-config.rasi

  sed -i -e 's/"margin-top": 0/"margin-top": 10/' -e 's/"margin-left": 0/"margin-left": 20/' -e 's/"margin-right": 0/"margin-right": 20/' /home/hamato/.config/hellwal/templates/config.jsonc
  sed -i -e 's/, 1.0)/, 0.7)/' -e 's/border: 2px/border: 0px/' -e 's/border-radius: 0px/border-radius: 5px/' -e '29s/10/7/' -e '30s/margin: 0px 0px 0px 0px/margin: 5px 0px 5px 5px/' /home/hamato/.config/hellwal/templates/style.css
  sed -i -e 's/FF/B3/' -e 's/border-radius=0/border-radius=5/' /home/hamato/.config/hellwal/templates/colors-mako
  sed -i -e 's/FF/B3/' -e 's/border-radius:      0px/border-radius:      5px/' /home/hamato/.config/hellwal/templates/rofi-config.rasi

  sed -i -e 's/"margin-top": 0/"margin-top": 10/' -e 's/"margin-left": 0/"margin-left": 20/' -e 's/"margin-right": 0/"margin-right": 20/' /home/hamato/.config/aether/custom/waybar-config/config.jsonc
  sed -i -e 's/, 1.0)/, 0.7)/' -e 's/border: 2px/border: 0px/' -e 's/border-radius: 0px/border-radius: 5px/' -e '29s/10/7/' -e '30s/margin: 0px 0px 0px 0px/margin: 5px 0px 5px 5px/' /home/hamato/.config/aether/custom/waybar/style.css
  sed -i -e 's/FF/B3/' -e 's/border-radius=0/border-radius=5/' /home/hamato/.config/aether/custom/mako/colors-mako
  sed -i -e 's/FF/B3/' -e 's/border-radius:      0px/border-radius:      5px/' /home/hamato/.config/aether/custom/rofi/rofi-config.rasi

  sed -i -e 's/"margin-top": 0/"margin-top": 10/' -e 's/"margin-left": 0/"margin-left": 20/' -e 's/"margin-right": 0/"margin-right": 20/' /home/hamato/.config/matugen/style-base16/templates/config.jsonc
  sed -i -e 's/, 1.0)/, 0.7)/' -e 's/border: 2px/border: 0px/' -e 's/border-radius: 0px/border-radius: 5px/' -e '29s/10/7/' -e '30s/margin: 0px 0px 0px 0px/margin: 5px 0px 5px 5px/' /home/hamato/.config/matugen/style-base16/templates/style.css
  sed -i -e 's/FF/B3/' -e 's/border-radius=0/border-radius=5/' /home/hamato/.config/matugen/style-base16/templates/colors-mako
  sed -i -e 's/FF/B3/' -e 's/border-radius:      0px/border-radius:      5px/' /home/hamato/.config/matugen/style-base16/templates/rofi-config.rasi

  sed -i -e 's/"margin-top": 0/"margin-top": 10/' -e 's/"margin-left": 0/"margin-left": 20/' -e 's/"margin-right": 0/"margin-right": 20/' /home/hamato/.config/matugen/style-classic/templates/config.jsonc
  sed -i -e 's/, 1.0)/, 0.7)/' -e 's/border: 2px/border: 0px/' -e 's/border-radius: 0px/border-radius: 5px/' -e '29s/10/7/' -e '30s/margin: 0px 0px 0px 0px/margin: 5px 0px 5px 5px/' /home/hamato/.config/matugen/style-classic/templates/style.css
  sed -i -e 's/FF/B3/' -e 's/border-radius=0/border-radius=5/' /home/hamato/.config/matugen/style-classic/templates/colors-mako
  sed -i -e 's/FF/B3/' -e 's/border-radius:      0px/border-radius:      5px/' /home/hamato/.config/matugen/style-classic/templates/rofi-config.rasi

  sed -i -e 's/"margin-top": 0/"margin-top": 10/' -e 's/"margin-left": 0/"margin-left": 20/' -e 's/"margin-right": 0/"margin-right": 20/' /home/hamato/.config/iris/templates/config.jsonc
  sed -i -e 's/, 1.0)/, 0.7)/' -e 's/border: 2px/border: 0px/' -e 's/border-radius: 0px/border-radius: 5px/' -e '29s/10/7/' -e '30s/margin: 0px 0px 0px 0px/margin: 5px 0px 5px 5px/' /home/hamato/.config/iris/templates/style.css
  sed -i -e 's/FF/B3/' -e 's/border-radius=0/border-radius=5/' /home/hamato/.config/iris/templates/colors-mako
  sed -i -e 's/FF/B3/' -e 's/border-radius:      0px/border-radius:      5px/' /home/hamato/.config/iris/templates/rofi-config.rasi

  pkill -SIGUSR2 waybar
  pkill mako && mako &

fi
