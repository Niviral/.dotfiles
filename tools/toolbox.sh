DOTFILE=~/.dotfiles

confirm() {
    local message=${1:?Must provide an message.}
    local installation_path=${2:?Must provide installation script path}
    local falied=${3:-Incorrect response. Exiting}
    read -rp "$message " response
    case "$response" in
        [yY])
            chmod 755 $installation_path 
            sudo sh $installation_path
            ;;
        *)
            $falied
            ;;
    esac
}

standard_package() {
sudo apt update
for LINE in $(cat ~/.dotfiles/apps/standard-package-list)
do 
    if [ ! -f /usr/bin/$LINE ]; then
        sudo apt install -y $LINE
    fi
done 
}

installed_standard_apps() {
for LINE in $(cat $DOTFILE/installed)
do
    echo "$LINE"
done
rm $DOTFILE/installed
}