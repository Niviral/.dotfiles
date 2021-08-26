#! /bin/bash 

REPO=/etc/apt/sources.list.d/terraform.list
wget -qO - https://apt.releases.hashicorp.com/gpg | gpg --dearmor -o /etc/apt/trusted.gpg.d/terraform.gpg
if [ -f "$REPO" ]; then
    echo "Repository $REPO exist, skipping."
else 
    echo "deb [arch=$(dpkg --print-architecture)] https://apt.releases.hashicorp.com $(lsb_release -cs) main" | tee --append $REPO
fi
apt update 
apt install -y terraform 
echo "${0%.*}: \n $(terraform --verion)" >> $DOTFILES/installed 