source .install/required.sh

source .install/confirm-start.sh

source .install/packages/general-packages.sh
echo "Installing general packages now..."
source .install/install-packages.sh

source .install/packages/hyprland-packages.sh
echo "Installing hyprland packages now..."
source .install/install-packages.sh

source .install/wallpaper.sh

source .install/hyprland-dotfiles.sh

source .install/gtk.sh

# add .zshrc
source .install/cleanup.sh
source .install/reboot.sh
sleep 3
