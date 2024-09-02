alias jlab='jupyter lab'
alias k='kubectl'
alias tf='terraform'
alias vim='nvim'

retardedkex() {
        if [ -f /tmp/.X1-lock ]; then
                rm -rf /tmp/.X*
        fi
        vncserver
        /usr/lib/win-kex/win-kex -SecurityTypes VncAuth -passwd /home/mbienias/.vnc/passwd :1
}
