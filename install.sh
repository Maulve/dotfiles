source $PWD/.install/includes/colors.sh
source $PWD/.install/includes/library.sh

source $PWD/.install/required.sh

source $PWD/.install/confirm-start.sh

cp $PWD ~/dotfiles

echo "Installed to directory. Starting now..."
sleep 3

source $PWD/.install/zsh-setup.sh

source $PWD/.install/packages/general-packages.sh
echo "Installing general packages now..."
source $PWD/.install/install-packages.sh

source $PWD/.install/packages/hyprland-packages.sh
echo "Installing hyprland packages now..."
source $PWD/.install/install-packages.sh

if gum confirm "Do you want to install additional packages?"; then
    source $PWD/.install/packages/additional-packages.sh
    source $PWD/.install/install-packages.sh
fi

source $PWD/.install/wallpaper.sh

source $PWD/.install/hyprland-dotfiles.sh

source $PWD/.install/gtk.sh
source $PWD/.install/cleanup.sh
source $PWD/.install/reboot.sh
sleep 3
