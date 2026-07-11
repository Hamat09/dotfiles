#!/bin/bash
CURRENT=$(hyprctl getoption decoration:active_opacity | awk 'NR==1 {print $2}')
if [ "$CURRENT" = "0.900000" ]; then

  hyprctl eval 'hl.config( {animations = { enabled = true }} )'
  hyprctl eval 'hl.config( {general = { border_size = 2, gaps_in = 20, gaps_out = 30}} )'
  hyprctl eval 'hl.config( {decoration = { active_opacity = 1.0 }} )'
  hyprctl eval 'hl.config( {decoration = { inactive_opacity = 1.0 }} )'
  hyprctl eval 'hl.config( {decoration = { shadow = { enabled = true }}} )'
  hyprctl eval 'hl.config( {decoration = { rounding = 0, rounding_power = 0 }} )'
  sed -i -e 's/"margin-top": 10/"margin-top": 0/' -e 's/"margin-left": 20/"margin-left": 0/' -e 's/"margin-right": 20/"margin-right": 0/' /home/hamato/.config/waybar/config.jsonc
  sed -i -e 's/, 0.7)/, 1.0)/' -e 's/border: 2px/border: 0px/' -e 's/border-radius: 5px/border-radius: 0px/' -e '29s/7/10/' -e '30s/margin: 5px 0px 5px 5px/margin: 0px 0px 0px 0px/' /home/hamato/.config/waybar/style.css
  sed -i -e 's/B3/FF/' -e 's/border-radius=5/border-radius=0/' /home/hamato/.config/mako/config
  sed -i -e 's/B3/FF/' -e 's/border-radius:      5px/border-radius:      0px/' /home/hamato/.config/rofi/config.rasi
  pkill -SIGUSR2 waybar
  pkill mako && mako &

else

  hyprctl eval 'hl.config( {animations = { enabled = true }} )'
  hyprctl eval 'hl.config( {general = { border_size = 2, gaps_in = 10, gaps_out = 20 }} )'
  hyprctl eval 'hl.config( {decoration = { active_opacity = 0.9 }} )'
  hyprctl eval 'hl.config( {decoration = { inactive_opacity = 0.7 }} )'
  hyprctl eval 'hl.config( {decoration = { shadow = { enabled = false }}} )'
  hyprctl eval 'hl.config( {decoration = { rounding = 5, rounding_power = 10 }} )'
  sed -i -e 's/"margin-top": 0/"margin-top": 10/' -e 's/"margin-left": 0/"margin-left": 20/' -e 's/"margin-right": 0/"margin-right": 20/' /home/hamato/.config/waybar/config.jsonc
  sed -i -e 's/, 1.0)/, 0.7)/' -e 's/border: 0px/border: 2px/' -e 's/border-radius: 0px/border-radius: 5px/' -e '29s/10/7/' -e '30s/margin: 0px 0px 0px 0px/margin: 5px 0px 5px 5px/' /home/hamato/.config/waybar/style.css
  sed -i -e 's/FF/B3/' -e 's/border-radius=0/border-radius=5/' /home/hamato/.config/mako/config
  sed -i -e 's/FF/B3/' -e 's/border-radius:      0px/border-radius:      5px/' /home/hamato/.config/rofi/config.rasi
  pkill -SIGUSR2 waybar
  pkill mako && mako &

fi
