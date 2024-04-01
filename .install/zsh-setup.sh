echo "Running setup for zsh..."
if gum confirm "This will create a backup of your existing .zshrc; Continue?" ; then
    if [ -f $HOME/.zshrc ]; then
        cp $HOME/.zshrc $HOME/.zshrc.backup
        rm $HOME/.zshrc
    
    _installSymLink .zshrc $HOME/.zshrc $HOME/dotfiles/zsh/.zshrc $HOME/.zshrc

    source $HOME/.zshrc
else
    echo "Cancelled operation."
fi
