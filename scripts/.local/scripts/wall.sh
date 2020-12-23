#!/bin/sh

chosen=$(find "$HOME/Pictures/wallpapers" -maxdepth 1 -type f -name "*.jpg" | shuf -n 1)
ln -srf "$chosen" "$HOME/.config/wall.jpg"
xwallpaper --zoom "$HOME/.config/wall.jpg"
