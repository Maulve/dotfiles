#!/bin/bash
#  _____ _                                       _ _       _                
# |_   _| |__   ___ _ __ ___   ___  _____      _(_) |_ ___| |__   ___ _ __  
#   | | | '_ \ / _ \ '_ ` _ \ / _ \/ __\ \ /\ / / | __/ __| '_ \ / _ \ '__| 
#   | | | | | |  __/ | | | | |  __/\__ \\ V  V /| | || (__| | | |  __/ |    
#   |_| |_| |_|\___|_| |_| |_|\___||___/ \_/\_/ |_|\__\___|_| |_|\___|_|    
#                                                                           
# by Stephan Raabe (2024) 
# ----------------------------------------------------- 

# ----------------------------------------------------- 
# Default theme folder
# ----------------------------------------------------- 
themes_path="$HOME/dotfiles/waybar/themes"

# ----------------------------------------------------- 
# Initialize arrays
# ----------------------------------------------------- 
listNames=()

# ----------------------------------------------------- 
# Read theme folder
# -----------------------------------------------------
#sleep 0.2

list=($(ls ~/dotfiles/waybar/themes))

# ----------------------------------------------------- 
# Show rofi dialog
# -----------------------------------------------------

choice=$(ls ~/dotfiles/waybar/themes | wofi --dmenu -p "Themes")

# ----------------------------------------------------- 
# Set new theme by writing the theme information to ~/.cache/.themestyle.sh
# ----------------------------------------------------- 
if [ "$choice" ]; then
    echo "Loading waybar theme \"$choice\"..."
    echo "${choice}" > ~/.cache/.themestyle.sh
    ~/dotfiles/waybar/launch.sh
fi
