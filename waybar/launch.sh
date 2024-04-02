#!/bin/bash

# Set a theme, must be folder name in waybar/themes
theme="default"

# ------------------------------------
# Quit all running waybar instances
killall waybar
pkill waybar
sleep 0.2
#exit 1
# ------------------------------------
# Get current theme info from ~/.cache/.themestyle.sh

if [ -f ~/.cache/.themestyle.sh ]; then
    themestyle=$(cat ~/.cache/.themestyle.sh)
else
    touch ~/.cache/.themestyle.sh
    echo "$theme" > ~/.cache/.themestyle.sh
fi

# ------------------------------------
# Loading the configuration

config_file="config"
style_file="style.css"

# Standard files can be overwritten with an existing config-custom or style-custom.css
if [ -f ~/dotfiles/waybar/themes/$themestyle/config-custom ] ;then
    config_file="config-custom"
fi
if [ -f ~/dotfiles/waybar/themes/$themestyle/style-custom.css ] ;then
    style_file="style-custom.css"
fi

waybar -c ~/dotfiles/waybar/themes/$themestyle/$config_file -s ~/dotfiles/waybar/themes/$themestyle/$style_file &
