# ------------------------------------------------------
# Confirm Start
# ------------------------------------------------------

echo "You can cancel the installation at any time with CTRL + C"
if gum confirm "DO YOU WANT TO START THE INSTALLATION OF THE DOTFILES NOW?" ;then
    mkdir ~/dotfiles
    echo "Installation started."
elif [ $? -eq 130 ]; then
        exit 130
else
    echo ":: Installation cancelled."
    exit;
fi
echo ""
