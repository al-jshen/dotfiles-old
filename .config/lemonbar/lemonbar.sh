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

<<<<<<< HEAD
temps() {
    /home/js/.config/lemonbar/temps.sh
}

=======
>>>>>>> fee013187a8bc0019b170b8c66dc37a06e3c23c2
vpn() {
    /home/js/.config/lemonbar/vpn.sh
}

song() {
<<<<<<< HEAD
#    mpc current |cut -d " " -f3-20
    playerctl metadata xesam:artist; printf ": "; playerctl metadata xesam:title
=======
    mpc current
>>>>>>> fee013187a8bc0019b170b8c66dc37a06e3c23c2
}

repeat() {
    mpc |grep repeat > /home/js/.config/lemonbar/repeat
    python2 /home/js/.config/lemonbar/repeat.py
<<<<<<< HEAD
}

ethprice() {
    cat /home/js/.config/lemonbar/cryptoprice/ethprice
}

btcprice() {
    cat /home/js/.config/lemonbar/cryptoprice/btcprice
}

while true; do
#    echo "%{B#262626}%{F#C4C4C4}%{l}   $(network) %{F#20C20E}$(vpn)%{F#C4C4C4}| VOL: $(volume)% $(audioOut) %{c}%{F#3ECAE8}$(song) $(repeat) %{r}%{F#E84A5F} $(temps)%{F#C4C4C4} | $(clock)   "
    echo "%{B#262626}%{F#800000}%{l}   $(network) %{F#20C20E}$(vpn)%{F#800000}| VOL: $(volume)% $(audioOut) %{c}%{F#3ECAE8}$(song) $(repeat) %{r}%{F#E84A5F} $(temps)%{F#800000} | $(clock)   "
=======
}

while true; do
    echo "%{B#262626}%{F#C4C4C4}%{l}  $(network) $(vpn) |  VOL: $(volume)% $(audioOut) %{c}$(song) $(repeat) %{r}$(clock)     "
>>>>>>> fee013187a8bc0019b170b8c66dc37a06e3c23c2
    sleep 1
done

