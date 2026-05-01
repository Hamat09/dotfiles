#!/bin/bash

hyprctl reload

# 1. Define your wallpaper directory
WALLPAPER_DIR="/home/hamato/.config/aether/theme/backgrounds"

# 2. Pick a random image file from the directory
# This finds files and picks one at random using 'shuf'
SELECTED_WALLPAPER=$(find "$WALLPAPER_DIR" -type f | shuf -n 1)

# 3. Apply it using swww with a transition effect
# Available types: simple, fade, left, right, top, bottom, wipe, wave, grow, center, any
awww img "$SELECTED_WALLPAPER" --transition-type none
