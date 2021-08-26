REPO=/etc/apt/sources.list.d/docker.list

apt update
apt remove -y remove docker docker-engine docker.io containerd runc
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | gpg --dearmor -o /etc/apt/trusted.gpg.d/docker-archive-keyring.gpg
if [ -f "$REPO" ]; then
    echo "Repository $REPO exist, skipping."
else
    echo "deb [arch=amd64 signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu \
  $(lsb_release -cs) stable" | tee --append $REPO
fi 

apt update
apt install -y docker-ce docker-ce-cli containerd.io
echo "${0%.*}: \n $(docker --verion}" >> $DOTFILES/installed 
