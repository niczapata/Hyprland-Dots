#!/usr/bin/env bash
# Set wallpaper using awww (swww fork)

wallpaper="$HOME/.config/hypr/wallpaper_effects/.wallpaper_current"

if [ -f "$wallpaper" ]; then
    awww-daemon --format xrgb &
    sleep 1
    awww img "$wallpaper" --transition-type grow --transition-duration 2 --transition-fps 30
    "$HOME/.config/hypr/scripts/WallustAwww.sh" &
fi
