#!/bin/bash
WALLPAPER_DIR="${HOME}/Wallpapers" # Adjust this to your wallpaper directory
DARK_THEME_DIR="/usr/lib/python3.14/site-packages/pywal/colorschemes/dark"
LIGHT_THEME_DIR="/usr/lib/python3.14/site-packages/pywal/colorschemes/light"
CUSTOM_DARK_DIR="/home/hamato/.config/wal/colorschemes/dark"
CUSTOM_LIGHT_DIR="/home/hamato/.config/wal/colorschemes/light"

echo "CHOOSE YOUR THEMING TOOL"
TOOL=$(printf "PYWAL\nCWAL\nHELLWAL\nMATUGEN\nWALLUST" | fzf --footer="CHOOSE YOUR THEMING TOOL")
if [[ $TOOL == "PYWAL" ]]; then
  echo "WALLPAPER OR THEME"
  CHOICE=$(printf "WALLPAPER\nTHEME" | fzf --footer="WALLPAPER OR THEME")

  if [[ $CHOICE == "THEME" ]]; then
    echo "TYPE OF THEME"
    STHEME=$(printf "DARK\nLIGHT\nCUSTOM_DARK\nCUSTOM_LIGHT" | fzf --footer="TYPE OF THEME")

    echo "SET COLOR SATURATION"
    SATU=$(seq -1 1 | fzf --footer="SET COLOR SATURATION [-1.0 - 1.0]")

    if [[ $STHEME == "DARK" ]]; then
      DTHEME=$(find "$DARK_THEME_DIR" -type f -printf "%f\\n" -name "*.json" | sed 's/\.json$//' | fzf --preview="wal -f {}" --footer="CHOOSE DARK THEME")
      wal -q -f $DTHEME --saturate $SATU
    elif [[ $STHEME == "LIGHT" ]]; then
      LTHEME=$(find "$LIGHT_THEME_DIR" -type f -printf "%f\\n" -name "*.json" | sed 's/\.json$//' | fzf --preview="wal -f {}" --footer="CHOOSE LIGHT THEME")
      wal -f $LTHEME --saturate $SATU
    elif [[ $STHEME == "CUSTOM_DARK" ]]; then
      CDTHEME=$(find "$CUSTOM_DARK_DIR" -type f -printf "%f\\n" -name "*.json" | sed 's/\.json$//' | fzf --preview="wal -f {}" --footer="CHOOSE CUSTOM DARK THEME")
      wal -f $CDTHEME --saturate $SATU
    else
      CLTHEME=$(find "$CUSTOM_LIGHT_DIR" -type f -printf "%f\\n" -name "*.json" | sed 's/\.json$//' | fzf --preview="wal -f {}" --footer="CHOOSE CUSTOM LIGHT THEME")
      wal -f $CLTHEME --saturate $SATU

    fi

  else
    echo "Choose your wallpaper:"
    WALLPAPER=$(find "$WALLPAPER_DIR" -type f \( -iname "*.jpg" -o -iname "*.png" \) | fzf --footer="CHOOSE WALLPAPER" --preview='chafa -s ${FZF_PREVIEW_COLUMNS}x${FZF_PREVIEW_LINES} {}')
    echo "$WALLPAPER"

    echo "Choose mode [light/dark]:"
    MODE=$(printf "dark\nlight" | fzf --footer="CHOOSE MODE")

    echo "Choose backend:"
    BACKEND=$(wal --backend | sed "/Backends/d" | tr -d '-' | fzf --footer="CHOOSE BACKEND")

    echo "SET COLOR SATURATION"
    SATU=$(seq -1 1 | fzf --footer="SET COLOR SATURATION [-1.0 - 1.0]")

    echo "SET CONTRAST"
    CON=$(seq 1 21 | fzf --footer="SET CONTRAST [1.0 - 21.0]")

    if [[ $MODE == "light" ]]; then
      wal -n -i $WALLPAPER --backend $BACKEND -l --saturate $SATU --contrast $CON
    else
      wal -n -i $WALLPAPER --backend $BACKEND --saturate $SATU --contrast $CON
    fi

  fi
  swww img $WALLPAPER --transition-type none
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
  ln -nfs "/home/hamato/.cache/wal/colors-hyprland.conf" "/home/hamato/.config/hypr/hyprland-colors.conf"
  ln -nfs "/home/hamato/.cache/wal/zathura-colors" "/home/hamato/.config/zathura/zathurarc"
  ln -nfs "/home/hamato/.cache/wal/yazi-theme.toml" "/home/hamato/.config/yazi/theme.toml"
  ln -nfs "/home/hamato/.cache/wal/colors-mako" "/home/hamato/.config/mako/config"
  ln -nfs "/home/hamato/.cache/wal/cava-colors.ini" "/home/hamato/.config/cava/themes/cava-colors.ini"
  cp -r "/home/hamato/.cache/wal/kdeglobals" "/home/hamato/.config/kdeglobals"
  ln -nfs "/home/hamato/.cache/wal/config.jsonc" "/home/hamato/.config/waybar/config.jsonc"
  cp -r "/home/hamato/.cache/wal/vpn-status.sh" "/home/hamato/scripts/vpn-status.sh"
  cp -r "/home/hamato/.cache/wal/easyeffectsrc" "/home/hamato/.config/easyeffectsrc"
  pkill -USR1 cava
  pkill -USR1 btop
  pywalfox update
  pkill mako && mako &
  pkill -SIGUSR2 waybar

elif [[ $TOOL == "MATUGEN" ]]; then

  echo "Choose your wallpaper:"
  WALLPAPER=$(find "$WALLPAPER_DIR" -type f \( -iname "*.jpg" -o -iname "*.png" \) | fzf --footer="CHOOSE WALLPAPER" --preview='chafa -s ${FZF_PREVIEW_COLUMNS}x${FZF_PREVIEW_LINES} {}')
  echo "$WALLPAPER"

  echo "Choose mode [light/dark]:"
  MODE=$(printf "dark\nlight" | fzf --footer="CHOOSE MODE")

  echo "Choose color Scheme:"
  SCHEME=$(printf "scheme-content\nscheme-expressive\nscheme-fidelity\nscheme-fruit-salad\nscheme-monochrome\nscheme-neutral\nscheme-rainbow\nscheme-tonal-spot\nscheme-vibrant" | fzf --footer="CHOOSE SCHEME")

  matugen image $WALLPAPER --mode $MODE --type $SCHEME

elif [[ $TOOL == "HELLWAL" ]]; then

  echo "Choose your wallpaper:"
  WALLPAPER=$(find "$WALLPAPER_DIR" -type f \( -iname "*.jpg" -o -iname "*.png" \) | fzf --footer="CHOOSE WALLPAPER" --preview='chafa -s ${FZF_PREVIEW_COLUMNS}x${FZF_PREVIEW_LINES} {}')
  echo "$WALLPAPER"

  echo "Choose mode [light/dark]:"
  MODE=$(printf "dark\nlight" | fzf --footer="CHOOSE MODE")
  echo $MODE

  echo "Choose to apply neon-mode:"
  NEON=$(printf "on\noff" | fzf --footer="CHOOSE TO APPLY NEON-MODE")

  echo "Choose to apply colorized mode"
  COLOR=$(printf "on\noff" | fzf --footer="CHOOSE TO APPLY COLORIZED MODE")

  echo "Choose to apply invert colors"
  INVERT=$(printf "on\noff" | fzf --footer="CHOOSE TO APPLY INVERT COLORS")

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
  swww img $WALLPAPER --transition-type none
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
  ln -nfs "/home/hamato/.cache/hellwal/colors.vim" "/home/hamato/.cache/wal/colors-wal.vim"
  ln -nfs "/home/hamato/.cache/hellwal/colors-mako" "/home/hamato/.config/mako/config"
  ln -nfs "/home/hamato/.cache/hellwal/yazi-theme.toml" "/home/hamato/.config/yazi/theme.toml"
  cp -r "/home/hamato/.cache/hellwal/kdeglobals" "/home/hamato/.config/kdeglobals"
  ln -nfs "/home/hamato/.cache/hellwal/config.jsonc" "/home/hamato/.config/waybar/config.jsonc"
  ln -nfs "/home/hamato/.cache/hellwal/hyprland-colors.conf" "/home/hamato/.config/hypr/hyprland-colors.conf"
  cp -r "/home/hamato/.cache/hellwal/vpn-status.sh" "/home/hamato/scripts/vpn-status.sh"
  pkill -USR1 cava
  pkill -USR1 btop
  pywalfox update
  pkill mako && mako &
  pkill -SIGUSR2 waybar

elif [[ $TOOL == "CWAL" ]]; then

  echo "Choose your wallpaper:"
  WALLPAPER=$(find "$WALLPAPER_DIR" -type f \( -iname "*.jpg" -o -iname "*.png" \) | fzf --footer="CHOOSE WALLPAPER" --preview='chafa -s ${FZF_PREVIEW_COLUMNS}x${FZF_PREVIEW_LINES} {}')
  echo "$WALLPAPER"

  echo "Choose mode [light/dark]:"
  MODE=$(printf "dark\nlight" | fzf --footer="CHOOSE MODE")

  echo "Choose backend:"
  BACKEND=$(cwal --list-backends | sed "/Backends/d" | tr -d '>' | tr -d '-' | fzf --footer="CHOOSE BACKEND")

  echo "SET COLOR SATURATION"
  SATU=$(seq -1 1 | fzf --footer="SET COLOR SATURATION [-1.0 - 1.0]")

  echo "SET CONTRAST"
  CON=$(seq 1 21 | fzf --footer="SET CONTRAST [1.0 - 21.0]")

  cwal --mode $MODE --backend $BACKEND --saturation $SATU --contrast $CON --img $WALLPAPER

  swww img $WALLPAPER --transition-type none
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
  ln -nfs "/home/hamato/.cache/cwal/colors-hyprland.conf" "/home/hamato/.config/hypr/hyprland-colors.conf"
  ln -nfs "/home/hamato/.cache/cwal/zathura-colors" "/home/hamato/.config/zathura/zathurarc"
  ln -nfs "/home/hamato/.cache/cwal/yazi-theme.toml" "/home/hamato/.config/yazi/theme.toml"
  ln -nfs "/home/hamato/.cache/cwal/colors-mako" "/home/hamato/.config/mako/config"
  ln -nfs "/home/hamato/.cache/cwal/cava-colors.ini" "/home/hamato/.config/cava/themes/cava-colors.ini"
  ln -nfs "/home/hamato/.cache/cwal/colors.vim" "/home/hamato/.cache/wal/colors-wal.vim"
  cp -r "/home/hamato/.cache/cwal/kdeglobals" "/home/hamato/.config/kdeglobals"
  ln -nfs "/home/hamato/.cache/cwal/config.jsonc" "/home/hamato/.config/waybar/config.jsonc"
  cp -r "/home/hamato/.cache/cwal/vpn-status.sh" "/home/hamato/scripts/vpn-status.sh"
  pkill -USR1 cava
  pywalfox update
  pkill mako && mako &
  pkill -SIGUSR2 waybar

elif [[ $TOOL == "WALLUST" ]]; then

  echo "Choose your wallpaper:"
  WALLPAPER=$(find "$WALLPAPER_DIR" -type f \( -iname "*.jpg" -o -iname "*.png" \) | fzf --footer="CHOOSE WALLPAPER" --preview='chafa -s ${FZF_PREVIEW_COLUMNS}x${FZF_PREVIEW_LINES} {}')
  echo "$WALLPAPER"

  echo "Choose palette:"
  PAL=$(printf "dark\ndark16\ndarkcomp\ndarkcomp16\nlight\nlight16\nlightcomp\nlightcomp16\nharddark\nharddark16\nharddarkcomp\nharddarkcomp16\nsoftdark\nsoftdark16\nsoftdarkcomp\nsoftdarkcomp16\nsoftlight\nsoftlight16\nsoftlightcomp\nsoftlightcomp16" | fzf --footer="CHOOSE PALETTE")

  echo "Choose backend:"
  BACKEND=$(printf "full\nresized\nwal\nthumb\nfastresize\nkmeans" | fzf --footer="CHOOSE BACKEND")

  echo "SET COLOR SATURATION"
  SATU=$(seq 1 100 | fzf --footer="SET COLOR SATURATION [1 - 100]")

  echo "SET COLORSPACE"
  COLSP=$(printf "lab\nlabmixed\nlch\nlchmixed\n" | fzf --footer="CHOOSE COLORSPACE")

  wallust run $WALLPAPER --backend $BACKEND --palette $PAL --saturation $SATU --colorspace $COLSP

  swww img $WALLPAPER --transition-type none
  pkill -USR1 cava
  pywalfox update
  pkill mako && mako &
  pkill -SIGUSR2 waybar
else
  exit

fi
