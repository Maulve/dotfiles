# ------------------------------------------------------
# Install dotfiles
# ------------------------------------------------------

echo "Making Symbolic links to ~/dotfiles ..."

if [ ! -d ~/.config/alacritty ]; then
    mkdir ~/.config/alacritty
fi
_installSymLink alacritty ~/.config/alacritty ~/dotfiles/alacritty/ ~/.config

if [ ! -d ~/.config/starship ]; then
    mkdir ~/.config/starship
fi
installSymLink starship ~/.config/starship.toml ~/dotfiles/starship/starship.toml ~/.config/starship.toml

if [ ! -d ~/.config/rofi ]; then
    mkdir ~/.config/rofi
fi
_installSymLink rofi ~/.config/rofi ~/dotfiles/rofi/ ~/.config

if [ ! -d ~/.config/dunst ]; then
        mkdir ~/.config/dunst
fi
_installSymLink dunst ~/.config/dunst ~/dotfiles/dunst/ ~/.config

if [ ! -d ~/.config/hypr ]; then
    mkdir ~/.config/hypr
fi
_installSymLink hypr ~/.config/hypr ~/dotfiles/hypr/ ~/.config

if [ ! -d ~/.config/waybar ]; then
    mkdir ~/.config/waybar
fi
_installSymLink waybar ~/.config/waybar ~/dotfiles/waybar/ ~/.config
fi
if [ ! -d ~/.config/wlogout ]; then
    mkdir ~/.config/wlogout
fi
_installSymLink wlogout ~/.config/wlogout ~/dotfiles/wlogout/ ~/.config

if [ ! -d ~/.config/swappy ]; then
    mkdir ~/.config/swappy
fi
_installSymLink swappy ~/.config/swappy ~/dotfiles/swappy/ ~/.config

echo ":: Symbolic links created."
echo