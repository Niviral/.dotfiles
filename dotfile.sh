#! /bin/bash
DOTFILE=/home/$USER/.dotfiles
. /home/$USER/.dotfiles/tools/toolbox.sh

CODE=$DOFILE/.config/Code/User/settings.json
CODIUM=/home/$USER/.config/VSCodium/User/settings.json

ln -si ~/.dotfiles/.zshrc ~/.zshrc
ln -si ~/.dotfiles/.gitconfig ~/.gitconfig
ln -si ~/.dotfiles/.condarc ~/.condarc
ln -si ~/.dotfiles/.bashrc ~/.bashrc && . ~/.bashrc   
ln -si ~/.dotfiles/.bash_aliases ~/.bash_aliases

if [ -f $CODE ]; then
    ln -si ~/.dotfiles/settings_VScode.json $CODE
else
    echo "VS Code not installed."
fi

if [ -f /usr/bin/codium ]; then
    ln -si ~/.dotfiles/settings_VScode.json $CODIUM
else
    echo "VSCodium not installed."
    confirm  "Do you want install VSCodium [y/n]" $DOTFILE/apps/VSCodium.sh "Skiping VSCodium installation."
    ln -si ~/.dotfiles/settings_VScode.json $CODIUM
fi

