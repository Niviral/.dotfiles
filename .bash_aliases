alias jlab='source anaconda3/bin/activate && conda activate ML && jupyter lab'

retardedkex () {
        if [ -f /tmp/.X1-lock ]; then
                rm -rf /tmp/.X*
        fi
        vncserver
        /usr/lib/win-kex/win-kex -SecurityTypes VncAuth -passwd /home/mbienias/.vnc/passwd :1
}
