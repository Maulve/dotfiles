#!/bin/bash


# set theme, must be folder name
theme="default"

# ------------------------------------
# Quit all running waybar instances
killall waybar
pkill waybar
sleep 0.2

# ------------------------------------
# Loading the configuration

config_file="config"
style_file="style.css"

# Standard files can be overwritten with an existing config-custom or style-custom.css
if [ -f ~/dotfiles/waybar/themes${arrThemes[0]}/config-custom ] ;then
    config_file="config-custom"
fi
if [ -f ~/dotfiles/waybar/themes${arrThemes[1]}/style-custom.css ] ;then
    style_file="style-custom.css"
fi

waybar -c ~/dotfiles/waybar/themes/$theme/$config_file -s ~/dotfiles/waybar/themes/$theme/$style_file &
