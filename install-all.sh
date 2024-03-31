source $PWD/.install/includes/colors.sh
source $PWD/.install/includes/library.sh


source $PWD/.install/required.sh

source $PWD/.install/confirm-start.sh

cp $PWD ~/dotfiles

source $PWD/.install/packages/general-packages.sh
echo "Installing general packages now..."
source $PWD/.install/install-packages.sh

source $PWD/.install/packages/hyprland-packages.sh
echo "Installing hyprland packages now..."
source $PWD/.install/install-packages.sh

source $PWD/.install/wallpaper.sh

source $PWD/.install/hyprland-dotfiles.sh

source $PWD/.install/gtk.sh

#TODO: add .zshrc
source $PWD/.install/cleanup.sh
source $PWD/.install/reboot.sh
sleep 3
