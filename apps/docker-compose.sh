curl -L "https://github.com/docker/compose/releases/latest/download/1.29.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
chmod +x /usr/local/bin/docker-compose
ln -is /usr/local/bin/docker-compose /usr/bin/docker-compose
echo "${0%.*}: \n $(docker-compose --verion)" >> $DOTFILE/installed 
