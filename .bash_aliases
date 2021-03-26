alias jlab='source anaconda3/bin/activate && conda activate ML && jupyter lab'

retardedkex () {
        if [ -f /tmp/.X11-unix ]; then
                rm -r /tmp/.X11-unix
        fi
        vncserver
        /usr/lib/win-kex/win-kex -SecurityTypes VncAuth -passwd /home/mbienias/.vnc/passwd :1
}
