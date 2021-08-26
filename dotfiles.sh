#! /bin/bash
. /home/$USER/.dotfiles/tools/toolbox.sh

CODE=$DOFILE/.config/Code/User/settings.json
CODIUM=/home/$USER/.config/VSCodium/User/settings.json

standard_package

echo -e "\n######## .DOTFILES ########\n"
ln -si $DOTFILE/.zshrc ~/.zshrc
ln -si $DOTFILE/.gitconfig ~/.gitconfig
ln -si $DOTFILE/.condarc ~/.condarc
ln -si $DOTFILE/.bashrc ~/.bashrc  
ln -si $DOTFILE/.bash_aliases ~/.bash_aliases

for FILE in $DOTFILE/apps/*.sh;
do
    confirm  "Do you want install $(basename ${FILE%.*}) [y/n]" $FILE "Skipping $(basename ${FILE%.*}) instalation."
done

