#!/bin/bash
#                _ _                              
# __      ____ _| | |_ __   __ _ _ __   ___ _ __  
# \ \ /\ / / _` | | | '_ \ / _` | '_ \ / _ \ '__| 
#  \ V  V / (_| | | | |_) | (_| | |_) |  __/ |    
#   \_/\_/ \__,_|_|_| .__/ \__,_| .__/ \___|_|    
#                   |_|         |_|               
#  
# by Stephan Raabe (2023) 
# Source: https://gitlab.com/stephan-raabe/dotfiles/-/blob/main/hypr/scripts/wallpaper.sh
# ----------------------------------------------------- 

# Cache file for holding the current wallpaper
cache_file="$HOME/.cache/current_wallpaper"

# Create cache file if not exists
if [ ! -f $cache_file ] ;then
    touch $cache_file
    echo "$HOME/wallpaper/default.jpg" > "$cache_file"
fi

current_wallpaper=$(cat "$cache_file")

case $1 in

    # Load wallpaper from .cache of last session 
    "init")
        sleep 1
        if [ -f $cache_file ]; then
            wal -q -i $current_wallpaper
        else
            wal -q -i ~/wallpaper/
        fi
    ;;

    # Select wallpaper with rofi
    "select")
        sleep 0.2
        selected=$( find "$HOME/wallpaper" -type f \( -iname "*.jpg" -o -iname "*.jpeg" -o -iname "*.png" \) -exec basename {} \; | sort | while read rfile
        do
            echo -en "$rfile\x00icon\x1f$HOME/wallpaper/${rfile}\n"
        done | wofi --dmenu -I)
        if [ ! "$selected" ]; then
            echo "No wallpaper selected"
            exit
        fi
		#selected=$(ls -p ~/wallpapers | grep -v / | rofi -dmenu -replace -i -config ~/dotfiles/rofi/config-wallpaper.rasi)
        
       # wal -q -i ~/wallpaper/$selected
    ;;

    # Randomly select wallpaper 
    *)
        wal -q -i ~/wallpaper/
    ;;

esac
# ----------------------------------------------------- 
# Load current pywal color scheme
# ----------------------------------------------------- 
#source "$HOME/.cache/wal/colors.sh"
#echo ":: Wallpaper: $wallpaper"

# ----------------------------------------------------- 
# get wallpaper image name
# ----------------------------------------------------- 
newwall=$(echo $wallpaper | sed "s|$HOME/wallpaper/||g")

# ----------------------------------------------------- 
# Reload waybar with new colors
# -----------------------------------------------------
# ~/dotfiles/waybar/launch.sh

# ----------------------------------------------------- 
# Set the new wallpaper
# -----------------------------------------------------

transition_type="simple"

swww img $wallpaper \
#    --transition-bezier .43,1.19,1,.4 \
    --transition-fps=60 \
    --transition-type=$transition_type \
    --transition-duration=0.2 # \
#    --transition-pos "$( hyprctl cursorpos )"

if [ "$1" == "init" ] ;then
    echo ":: Init"
else
    sleep 1
    dunstify "Changing wallpaper ..." "with image $newwall" -h int:value:33 -h string:x-dunst-stack-tag:wallpaper
    sleep 2
fi

# ----------------------------------------------------- 
# Write selected wallpaper into .cache files
# ----------------------------------------------------- 
echo "$wallpaper" > "$cache_file"

# ----------------------------------------------------- 
# Send notification
# ----------------------------------------------------- 

if [ "$1" == "init" ] ;then
    echo ":: Init"
else
    dunstify "Wallpaper procedure complete!" "with image $newwall" -h int:value:100 -h string:x-dunst-stack-tag:wallpaper
fi

echo "DONE!"
