#! /bin/bash

GPG=/etc/apt/trusted.gpg.d/vscodium.gpg
REPO=/etc/apt/sources.list.d/vscodium.list 

wget -qO - https://gitlab.com/paulcarroty/vscodium-deb-rpm-repo/-/raw/master/pub.gpg | gpg --dearmor | dd of=$GPG

if [ -f "$REPO" ]; then
    echo "Repository $REPO exist, skipping."
else
    echo "deb https://paulcarroty.gitlab.io/vscodium-deb-rpm-repo/debs/ vscodium main" | tee --append $REPO
fi 

apt update 
apt install -y codium

echo -e"${0%.*}: \n $(codium --verion)" >> $DOTFILE/installed

if [ -f $DOTFILE/.dotfiles/settings_VScode.json]; then
    ln -si $DOTFILE/settings_VScode.json /home/$USER/.config/VSCodium/User/settings.json
fi