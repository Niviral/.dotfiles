GPG=/etc/apt/trusted.gpg.d/vscodium.gpg
REPO=/etc/apt/sources.list.d/vscodium.list 
wget -qO - https://gitlab.com/paulcarroty/vscodium-deb-rpm-repo/-/raw/master/pub.gpg | gpg --dearmor | sudo dd of=$GPG
if [ -f "$REPO" ]; then
    echo "Repository $REPO exist, skipping."
else
    echo 'deb https://paulcarroty.gitlab.io/vscodium-deb-rpm-repo/debs/ vscodium main' | sudo tee --append $REPO
fi    
sudo apt-get update 
sudo apt-get install -y codium 
