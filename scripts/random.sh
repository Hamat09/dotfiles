#!/bin/bash
WALLPAPER_DIR="${HOME}/Wallpapers" # Adjust this to your wallpaper directory
DARK_THEME_DIR="/usr/lib/python3.14/site-packages/pywal/colorschemes/dark"
LIGHT_THEME_DIR="/usr/lib/python3.14/site-packages/pywal/colorschemes/light"
CUSTOM_DARK_DIR="/home/hamato/.config/wal/colorschemes/dark"
CUSTOM_LIGHT_DIR="/home/hamato/.config/wal/colorschemes/light"

TOOL=$(shuf -e "PYWAL" "CWAL" "HELLWAL" "MATUGEN" "WALLUST" -n 1)
if [[ $TOOL == "PYWAL" ]]; then
  CHOICE=$(shuf -e "WALLPAPER" "THEME" -n 1)

  if [[ $CHOICE == "THEME" ]]; then
    WALLPAPER=$(find "$WALLPAPER_DIR" -type f \( -iname "*.jpg" -o -iname "*.png" \) | shuf -n 1)

    STHEME=$(shuf -e "DARK" "LIGHT" "CUSTOM_DARK" "CUSTOM_LIGHT" -n 1)

    SATU=$(shuf -e 0 -n 1)

    if [[ $STHEME == "DARK" ]]; then
      DTHEME=$(find "$DARK_THEME_DIR" -type f -printf "%f\\n" -name "*.json" | sed 's/\.json$//' | shuf -n 1)
      wal -q -f $DTHEME --saturate $SATU
    elif [[ $STHEME == "LIGHT" ]]; then
      LTHEME=$(find "$LIGHT_THEME_DIR" -type f -printf "%f\\n" -name "*.json" | sed 's/\.json$//' | shuf -n 1)
      wal -f $LTHEME --saturate $SATU -l
    elif [[ $STHEME == "CUSTOM_DARK" ]]; then
      CDTHEME=$(find "$CUSTOM_DARK_DIR" -type f -printf "%f\\n" -name "*.json" | sed 's/\.json$//' | shuf -n 1)
      wal -f $CDTHEME --saturate $SATU
    else
      CLTHEME=$(find "$CUSTOM_LIGHT_DIR" -type f -printf "%f\\n" -name "*.json" | sed 's/\.json$//' | shuf -n 1)
      wal -f $CLTHEME --saturate $SATU

    fi

  else
    WALLPAPER=$(find "$WALLPAPER_DIR" -type f \( -iname "*.jpg" -o -iname "*.png" \) | shuf -n 1)

    MODE=$(shuf -e "dark" "light" -n 1)

    BACKEND=$(wal --backend | sed "/Backends/d" | tr -d '-' | shuf -n 1)

    SATU=$(shuf -e 0 -n 1)

    CON=$(shuf -e 0 -n 1)

    if [[ $MODE == "light" ]]; then
      wal -n -i $WALLPAPER --backend $BACKEND -l --saturate $SATU --contrast $CON
    else
      wal -n -i $WALLPAPER --backend $BACKEND --saturate $SATU --contrast $CON
    fi

  fi
  awww img $WALLPAPER --transition-type none
  ln -nfs "/home/hamato/.cache/wal/style.css" "/home/hamato/.config/waybar/style.css"
  ln -nfs "/home/hamato/.cache/wal/colors-kitty.conf" "/home/hamato/.config/kitty/kitty-colors.conf"
  ln -nfs "/home/hamato/.cache/wal/pywalfox-colors.json" "/home/hamato/.cache/wal/colors.json"
  ln -nfs "/home/hamato/.cache/wal/pywalfox-colors.json" "/home/hamato/.local/share/torbrowser/tbb/x86_64/tor-browser/Browser/.cache/wal/colors.json"
  ln -nfs "/home/hamato/.cache/wal/pywal.kvconfig" "/home/hamato/.config/Kvantum/pywal/pywal.kvconfig"
  ln -nfs "/home/hamato/.cache/wal/pywal.svg" "/home/hamato/.config/Kvantum/pywal/pywal.svg"
  ln -nfs "/home/hamato/.cache/wal/gtk-colors.css" "/home/hamato/.config/gtk-3.0/gtk.css"
  ln -nfs "/home/hamato/.cache/wal/gtk-colors.css" "/home/hamato/.config/gtk-4.0/gtk.css"
  ln -nfs "/home/hamato/.cache/wal/qtct-colors.conf" "/home/hamato/.config/qt5ct/colors/pywal.conf"
  ln -nfs "/home/hamato/.cache/wal/qtct-colors.conf" "/home/hamato/.config/qt6ct/colors/pywal.conf"
  ln -nfs "/home/hamato/.cache/wal/rofi-config.rasi" "/home/hamato/.config/rofi/config.rasi"
  ln -nfs "/home/hamato/.cache/wal/btop.theme" "/home/hamato/.config/btop/themes/matugen.theme"
  ln -nfs "/home/hamato/.cache/wal/colors-zathura" "/home/hamato/.config/zathura/zathurarc"
  ln -nfs "/home/hamato/.cache/wal/color.lua" "/home/hamato/.config/hypr/modules/color.lua"
  ln -nfs "/home/hamato/.cache/wal/zathura-colors" "/home/hamato/.config/zathura/zathurarc"
  ln -nfs "/home/hamato/.cache/wal/colors-mako" "/home/hamato/.config/mako/config"
  ln -nfs "/home/hamato/.cache/wal/cava-colors.ini" "/home/hamato/.config/cava/themes/cava-colors.ini"
  cp -r "/home/hamato/.cache/wal/kdeglobals" "/home/hamato/.config/kdeglobals"
  ln -nfs "/home/hamato/.cache/wal/config.jsonc" "/home/hamato/.config/waybar/config.jsonc"
  cp -r "/home/hamato/.cache/wal/vpn-status.sh" "/home/hamato/scripts/vpn-status.sh"
  cp -r "/home/hamato/.cache/wal/easyeffectsrc" "/home/hamato/.config/easyeffectsrc"
  pkill -USR1 cava
  pkill -USR2 btop
  pkill -USR1 kitty
  pywalfox update
  pkill mako && mako &
  pkill -SIGUSR2 waybar
  gsettings set org.gnome.desktop.interface gtk-theme "adw-gtk3"

elif [[ $TOOL == "MATUGEN" ]]; then

  STYLE=$(shuf -e "base16" "classic" -n 1)

  WALLPAPER=$(find "$WALLPAPER_DIR" -type f \( -iname "*.jpg" -o -iname "*.png" \) | shuf -n 1)

  MODE=$(shuf -e "dark" "light" -n 1)

  SCHEME=$(shuf -e "scheme-content" "scheme-expressive" "scheme-fidelity" "scheme-fruit-salad" "scheme-monochrome" "scheme-neutral" "scheme-rainbow" "scheme-tonal-spot" "scheme-vibrant" -n 1)

  if [[ $STYLE == "base16" ]]; then
    rm -rf "/home/hamato/.config/matugen/templates"
    cp -r "/home/hamato/.config/matugen/style-base16/templates" "/home/hamato/.config/matugen"
  else
    rm -rf "/home/hamato/.config/matugen/templates"
    cp -r "/home/hamato/.config/matugen/style-classic/templates" "/home/hamato/.config/matugen"
  fi

  matugen image $WALLPAPER --mode $MODE --type $SCHEME
  pkill -USR1 cava
  pkill -USR2 btop
  pkill -USR1 kitty
  pywalfox update
  pkill mako && mako &
  pkill -SIGUSR2 waybar

elif [[ $TOOL == "HELLWAL" ]]; then

  WALLPAPER=$(find "$WALLPAPER_DIR" -type f \( -iname "*.jpg" -o -iname "*.png" \) | shuf -n 1)

  MODE=$(shuf -e "dark" "light" -n 1)

  NEON=$(shuf -e "off" -n 1)

  COLOR=$(shuf -e "off" -n 1)

  INVERT=$(shuf -e "off" -n 1)

  if [[ $MODE == "light" ]]; then
    if [[ $NEON == "on" ]]; then
      if [[ $COLOR == "on" ]]; then
        if [[ $INVERT == "on" ]]; then
          hellwal -i $WALLPAPER -l -m -c -v
        else
          hellwal -i $WALLPAPER -l -m -c
        fi
      else
        if [[ $INVERT == "on" ]]; then
          hellwal -i $WALLPAPER -l -m -v
        else
          hellwal -i $WALLPAPER -l -m
        fi
      fi
    else
      if [[ $COLOR == "on" ]]; then
        if [[ $INVERT == "on" ]]; then
          hellwal -i $WALLPAPER -l -c -v
        else
          hellwal -i $WALLPAPER -l -c
        fi
      else
        if [[ $INVERT == "on" ]]; then
          hellwal -i $WALLPAPER -l -v
        else
          hellwal -i $WALLPAPER -l
        fi
      fi
    fi
  else
    if [[ $NEON == "on" ]]; then
      if [[ $COLOR == "on" ]]; then
        if [[ $INVERT == "on" ]]; then
          hellwal -i $WALLPAPER -m -c -v
        else
          hellwal -i $WALLPAPER -m -c
        fi
      else
        if [[ $INVERT == "on" ]]; then
          hellwal -i $WALLPAPER -m -v
        else
          hellwal -i $WALLPAPER -m
        fi
      fi
    else
      if [[ $COLOR == "on" ]]; then
        if [[ $INVERT == "on" ]]; then
          hellwal -i $WALLPAPER -c -v
        else
          hellwal -i $WALLPAPER -c
        fi
      else
        if [[ $INVERT == "on" ]]; then
          hellwal -i $WALLPAPER -v
        else
          hellwal -i $WALLPAPER
        fi
      fi
    fi
  fi
  awww img $WALLPAPER --transition-type none
  ln -nfs "/home/hamato/.cache/hellwal/style.css" "/home/hamato/.config/waybar/style.css"
  ln -nfs "/home/hamato/.cache/hellwal/colors-kitty.conf" "/home/hamato/.config/kitty/kitty-colors.conf"
  ln -nfs "/home/hamato/.cache/hellwal/pywalfox-colors.json" "/home/hamato/.cache/wal/colors.json"
  ln -nfs "/home/hamato/.cache/hellwal/pywal.kvconfig" "/home/hamato/.config/Kvantum/pywal/pywal.kvconfig"
  ln -nfs "/home/hamato/.cache/hellwal/pywal.svg" "/home/hamato/.config/Kvantum/pywal/pywal.svg"
  ln -nfs "/home/hamato/.cache/hellwal/gtk-colors.css" "/home/hamato/.config/gtk-3.0/gtk.css"
  ln -nfs "/home/hamato/.cache/hellwal/gtk-colors.css" "/home/hamato/.config/gtk-4.0/gtk.css"
  ln -nfs "/home/hamato/.cache/hellwal/qtct-colors.conf" "/home/hamato/.config/qt5ct/colors/pywal.conf"
  ln -nfs "/home/hamato/.cache/hellwal/qtct-colors.conf" "/home/hamato/.config/qt6ct/colors/pywal.conf"
  ln -nfs "/home/hamato/.cache/hellwal/rofi-config.rasi" "/home/hamato/.config/rofi/config.rasi"
  ln -nfs "/home/hamato/.cache/hellwal/btop.theme" "/home/hamato/.config/btop/themes/matugen.theme"
  ln -nfs "/home/hamato/.cache/hellwal/colors-zathura" "/home/hamato/.config/zathura/zathurarc"
  ln -nfs "/home/hamato/.cache/hellwal/zathura-colors" "/home/hamato/.config/zathura/zathurarc"
  cp -r "/home/hamato/.cache/hellwal/colors-wal.vim" "/home/hamato/.cache/wal/colors-wal.vim"
  ln -nfs "/home/hamato/.cache/hellwal/colors-mako" "/home/hamato/.config/mako/config"
  cp -r "/home/hamato/.cache/hellwal/kdeglobals" "/home/hamato/.config/kdeglobals"
  ln -nfs "/home/hamato/.cache/hellwal/config.jsonc" "/home/hamato/.config/waybar/config.jsonc"
  ln -nfs "/home/hamato/.cache/hellwal/color.lua" "/home/hamato/.config/hypr/modules/color.lua"
  cp -r "/home/hamato/.cache/hellwal/vpn-status.sh" "/home/hamato/scripts/vpn-status.sh"
  ln -nfs "/home/hamato/.cache/hellwal/cava-colors.ini" "/home/hamato/.config/cava/themes/cava-colors.ini"
  pkill -USR1 cava
  pkill -USR2 btop
  pkill -USR1 kitty
  pywalfox update
  pkill mako && mako &
  pkill -SIGUSR2 waybar

elif [[ $TOOL == "CWAL" ]]; then

  WALLPAPER=$(find "$WALLPAPER_DIR" -type f \( -iname "*.jpg" -o -iname "*.png" \) | shuf -n 1)

  MODE=$(shuf -e "dark" "light" -n 1)

  BACKEND=$(cwal --list-backends | sed "/Backends/d" | tr -d '>' | tr -d '-' | shuf -n 1)

  SATU=$(shuf -e 0 -n 1)

  CON=$(shuf -e 1 -n 1)

  cwal --mode $MODE --backend $BACKEND --saturation $SATU --contrast $CON --img $WALLPAPER

  awww img $WALLPAPER --transition-type none
  ln -nfs "/home/hamato/.cache/cwal/style.css" "/home/hamato/.config/waybar/style.css"
  ln -nfs "/home/hamato/.cache/cwal/colors-kitty.conf" "/home/hamato/.config/kitty/kitty-colors.conf"
  ln -nfs "/home/hamato/.cache/cwal/pywalfox-colors.json" "/home/hamato/.cache/wal/colors.json"
  ln -nfs "/home/hamato/.cache/cwal/pywalfox-colors.json" "/home/hamato/.local/share/torbrowser/tbb/x86_64/tor-browser/Browser/.cache/wal/colors.json"
  ln -nfs "/home/hamato/.cache/cwal/pywal.kvconfig" "/home/hamato/.config/Kvantum/pywal/pywal.kvconfig"
  ln -nfs "/home/hamato/.cache/cwal/pywal.svg" "/home/hamato/.config/Kvantum/pywal/pywal.svg"
  ln -nfs "/home/hamato/.cache/cwal/gtk-colors.css" "/home/hamato/.config/gtk-3.0/gtk.css"
  ln -nfs "/home/hamato/.cache/cwal/gtk-colors.css" "/home/hamato/.config/gtk-4.0/gtk.css"
  ln -nfs "/home/hamato/.cache/cwal/qtct-colors.conf" "/home/hamato/.config/qt5ct/colors/pywal.conf"
  ln -nfs "/home/hamato/.cache/cwal/qtct-colors.conf" "/home/hamato/.config/qt6ct/colors/pywal.conf"
  ln -nfs "/home/hamato/.cache/cwal/rofi-config.rasi" "/home/hamato/.config/rofi/config.rasi"
  ln -nfs "/home/hamato/.cache/cwal/btop.theme" "/home/hamato/.config/btop/themes/matugen.theme"
  ln -nfs "/home/hamato/.cache/cwal/colors-zathura" "/home/hamato/.config/zathura/zathurarc"
  ln -nfs "/home/hamato/.cache/cwal/color.lua" "/home/hamato/.config/hypr/modules/color.lua"
  ln -nfs "/home/hamato/.cache/cwal/zathura-colors" "/home/hamato/.config/zathura/zathurarc"
  ln -nfs "/home/hamato/.cache/cwal/colors-mako" "/home/hamato/.config/mako/config"
  ln -nfs "/home/hamato/.cache/cwal/cava-colors.ini" "/home/hamato/.config/cava/themes/cava-colors.ini"
  ln -nfs "/home/hamato/.cache/cwal/colors.vim" "/home/hamato/.cache/wal/colors-wal.vim"
  cp -r "/home/hamato/.cache/cwal/kdeglobals" "/home/hamato/.config/kdeglobals"
  ln -nfs "/home/hamato/.cache/cwal/config.jsonc" "/home/hamato/.config/waybar/config.jsonc"
  cp -r "/home/hamato/.cache/cwal/vpn-status.sh" "/home/hamato/scripts/vpn-status.sh"
  pkill -USR1 cava
  pkill -USR2 btop
  pkill -USR1 kitty
  pywalfox update
  pkill mako && mako &
  pkill -SIGUSR2 waybar

elif [[ $TOOL == "WALLUST" ]]; then

  WALLPAPER=$(find "$WALLPAPER_DIR" -type f \( -iname "*.jpg" -o -iname "*.png" \) | shuf -n 1)

  PAL=$(shuf -e "dark" "dark16" "darkcomp" "darkcomp16" "light" "light16" "lightcomp" "lightcomp16" "harddark" "harddark16" "harddarkcomp" "harddarkcomp16" "softdark" "softdark16" "softdarkcomp" "softdarkcomp16" "softlight" "softlight16" "softlightcomp" "softlightcomp16" -n 1)

  BACKEND=$(shuf -e "full" "resized" "wal" "thumb" "fastresize" "kmeans" -n 1)

  SATU=$(shuf -e 1 -n 1)

  COLSP=$(shuf -e "lab" "labmixed" "lch" "lchmixed" -n 1)

  wallust run $WALLPAPER --backend $BACKEND --palette $PAL --saturation $SATU --colorspace $COLSP

  awww img $WALLPAPER --transition-type none
  pkill -USR1 cava
  pkill -USR2 btop
  pkill -USR1 kitty
  pywalfox update
  pkill mako && mako &
  pkill -SIGUSR2 waybar
else
  exit

fi
