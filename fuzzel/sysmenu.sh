options="󰍃 Logout\n󰤄 Suspend\n Reboot\n Shutdown"
choice=$(printf "${options}" | anyrun --plugins libstdin.so --show-results-immediately true)

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
