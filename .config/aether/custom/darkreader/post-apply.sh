#!/bin/bash

ln -nfs "/home/hamato/.config/aether/theme/btop-btop.theme" "/home/hamato/.config/btop/themes/matugen.theme"
ln -nfs "/home/hamato/.config/aether/theme/cava-cava-colors.ini" "/home/hamato/.config/cava/themes/cava-colors.ini"
ln -nfs "/home/hamato/.config/aether/theme/gtk3-gtk-colors.css" "/home/hamato/.config/gtk-3.0/gtk.css"
ln -nfs "/home/hamato/.config/aether/theme/gtk4-gtk-colors.css" "/home/hamato/.config/gtk-4.0/gtk.css"
ln -nfs "/home/hamato/.config/aether/theme/hyprland-color.lua" "/home/hamato/.config/hypr/modules/color.lua"
ln -nfs "/home/hamato/.config/aether/theme/kitty-colors-kitty.conf" "/home/hamato/.config/kitty/kitty-colors.conf"
ln -nfs "/home/hamato/.config/aether/theme/mako-colors-mako" "/home/hamato/.config/mako/config"
ln -nfs "/home/hamato/.config/aether/theme/nvim-colors.vim" "/home/hamato/.cache/wal/colors-wal.vim"
ln -nfs "/home/hamato/.config/aether/theme/pywalfox-pywalfox-colors.json" "/home/hamato/.cache/wal/colors.json"
ln -nfs "/home/hamato/.config/aether/theme/qtct5-qtct-colors.conf" "/home/hamato/.config/qt5ct/colors/pywal.conf"
ln -nfs "/home/hamato/.config/aether/theme/qtct6-qtct-colors.conf" "/home/hamato/.config/qt6ct/colors/pywal.conf"
ln -nfs "/home/hamato/.config/aether/theme/rofi-rofi-config.rasi" "/home/hamato/.config/rofi/config.rasi"
cp -r "/home/hamato/.config/aether/theme/vpn-status-vpn-status.sh" "/home/hamato/scripts/vpn-status.sh"
ln -nfs "/home/hamato/.config/aether/theme/waybar-config-config.jsonc" "/home/hamato/.config/waybar/config.jsonc"
ln -nfs "/home/hamato/.config/aether/theme/waybar-style.css" "/home/hamato/.config/waybar/style.css"
ln -nfs "/home/hamato/.config/aether/theme/zathura-zathura-colors" "/home/hamato/.config/zathura/zathurarc"

pkill -USR1 cava
pkill -USR2 btop
pkill -USR1 kitty
pywalfox update
pkill mako && mako &
pkill -SIGUSR2 waybar
