choice=$(printf "󰍃 Logout\n󰤄 Suspend\n Reboot\n Shutdown" | wofi --dmenu --style=$HOME/dotfiles/wofi/style-sys.css -p "SysMenu" --width 500 --height 300)

if [[ $choice == "󰍃 Logout" ]]; then
	hyprctl dispatch exit
elif [[ $choice == "󰤄 Suspend" ]]; then
	systemctl suspend
elif [[ $choice == " Reboot" ]]; then
	systemctl reboot
elif [[ $choice == " Shutdown" ]]; then
	systemctl poweroff
else
	exit 1
fi

