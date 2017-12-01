#!/bin/sh

clock() {
    date '+%A, %B %d, %Y  |  %X'
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

temps() {
    /home/js/.config/lemonbar/temps.sh
}

vpn() {
    /home/js/.config/lemonbar/vpn.sh
}

song() {
#    mpc current |cut -d " " -f3-20
    CN=$(playerctl metadata xesam:artist)
    if [[ $CN ]]; then
        playerctl metadata xesam:artist; printf ": "; playerctl metadata xesam:title
    fi
}

repeat() {
    mpc |grep repeat > /home/js/.config/lemonbar/repeat
    python2 /home/js/.config/lemonbar/repeat.py
}

ethprice() {
    cat /home/js/.config/lemonbar/cryptoprice/ethprice
}

btcprice() {
    cat /home/js/.config/lemonbar/cryptoprice/btcprice
}

while true; do
    echo "%{B#262626}%{F#C4C4C4}%{l}   $(network) %{F#20C20E} $(vpn)%{F#C4C4C4}| VOL: $(volume)% $(audioOut) %{c}%{F#3ECAE8}$(song) $(repeat) %{r}%{F#E84A5F} $(temps)%{F#C4C4C4} $(ethprice) $(btcprice) | $(clock)   "
    sleep 1
done

