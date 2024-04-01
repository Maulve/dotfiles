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
listThemes=()
listNames=()

# ----------------------------------------------------- 
# Read theme folder
# -----------------------------------------------------
sleep 0.2 

options=$(find $themes_path -maxdepth 1 -type d)
for value in $options
do
    if [ ! $value == "$themes_path" ]; then
        listThemes+=("$value")
        listNames+=("$(basename $value)")
    fi
done

# ----------------------------------------------------- 
# Show rofi dialog
# ----------------------------------------------------- 

choice=$(echo -e "$listNames" | rofi -dmenu -replace -i -config ~/dotfiles/rofi/config-themes.rasi -no-show-icons -width 30 -p "Themes" -format i)

# ----------------------------------------------------- 
# Set new theme by writing the theme information to ~/.cache/.themestyle.sh
# ----------------------------------------------------- 
if [ "$choice" ]; then
    echo "Loading waybar theme..."
    echo "${listThemes[$choice+1]}" > ~/.cache/.themestyle.sh
    ~/dotfiles/waybar/launch.sh
fi
