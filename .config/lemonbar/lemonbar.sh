#!/bin/sh

clock() {
    date '+%A  |  %B %d, %Y  |  %X'
}

volume() {
    pamixer --get-volume
}

audioOut() {
    /home/js/.config/lemonbar/audioOut.sh
}

network() {
    /home/js/.config/lemonbar/network.sh
}

vpn() {
    /home/js/.config/lemonbar/vpn.sh
}

song() {
    mpc current
}

repeat() {
    mpc |grep repeat > /home/js/.config/lemonbar/repeat
    python2 /home/js/.config/lemonbar/repeat.py
}

while true; do
    echo "%{B#262626}%{F#C4C4C4}%{l}  $(network) $(vpn) |  VOL: $(volume)% $(audioOut) %{c}$(song) $(repeat) %{r}$(clock)     "
    sleep 1
done
