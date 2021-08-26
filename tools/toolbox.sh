confirm() {
    local message=${1:?Must provide an message.}
    local installation_path=${2:?Must provide installation script path}
    local falied=${3:-Incorrect response. Exiting}
    read -rp "$message " response
    case "$response" in
        [yY])
            chmod 755 $installation_path 
            sh $installation_path
            ;;
        *)
            $falied
            ;;
    esac
}
