#!/bin/sh

clock() {
    date '+%A  |  %B %d, %Y  |  %X'
}

volume() {
#    amixer -M get Master | sed -n 's/^.*\[\([0-9]\+\)%.*$/\1/p'| uniq
    pamixer --get-volume
}

mute() {
    pamixer --get-mute > /home/js/.config/lemonbar/mutefile
    python2 /home/js/.config/lemonbar/mute.py
}

#cpu_usage() {
#    conky -t '$cpu%'
#}

#ram_usage() {
#    screenfetch -nN |grep --color=never RAM > /home/js/.config/lemonbar/ramfile
#    sed 's/[^0-9/ ]*//g' /home/js/.config/lemonbar/ramfile > /home/js/.config/lemonbar/ramin
#    python /home/js/.config/lemonbar/rampercentage.py
#    conky -t '$memperc%'
#}

network() {
    iw dev net0 link |head -n 1 > /home/js/.config/lemonbar/netfile
    ifconfig |grep 192.168 |cut -c14-26 > /home/js/.config/lemonbar/netaddr
    python /home/js/.config/lemonbar/netstatus.py
}

song() {
    mpc current
}

repeat() {
    mpc |grep repeat > /home/js/.config/lemonbar/repeat
    python2 /home/js/.config/lemonbar/repeat.py
}

#CPU: $(cpu_usage)%   |   RAM: $(ram_usage)  

while true; do
    echo "%{B#424242}%{F#00BFA5}%{l}  $(network)  |  VOL: $(volume)% $(mute) %{c}$(song) $(repeat) %{r}$(clock)     "
    sleep 1
done
