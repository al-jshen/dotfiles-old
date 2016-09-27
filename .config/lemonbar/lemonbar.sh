#!/bin/sh

clock() {
    date '+%A  |  %B %d, %Y  |  %X'
}

volume() {
    amixer get Master|grep Mono |sed 's/[^f]//g' > /home/js/.config/lemonbar/mutefile
    python /home/js/.config/lemonbar/mute.py
    amixer get Headphone | sed -n 's/^.*\[\([0-9]\+\)%.*$/\1/p'| uniq
}

cpu_usage() {
    USAGE=`ps -eo pcpu |grep -vE '^\s*(0.0|%CPU)' |sed -n '1h;$!H;$g;s/\n/ +/gp'`
    bc <<< $USAGE
}

ram_usage() {
    screenfetch -nN |grep --color=never RAM > /home/js/.config/lemonbar/ramfile
    sed 's/[^0-9/ ]*//g' /home/js/.config/lemonbar/ramfile > /home/js/.config/lemonbar/ramin
    python /home/js/.config/lemonbar/rampercentage.py
}

network() {
    iw dev wlp0s20u9 link |grep --color=never onnected > /home/js/.config/lemonbar/netfile
    python /home/js/.config/lemonbar/netstatus.py
}

song() {
    mpc |grep - 
}

while true; do
    echo "%{B#424242}%{F#00BFA5}%{l}   $(network)   |   CPU: $(cpu_usage)%   |   RAM: $(ram_usage)   |   VOL: $(volume)% %{c}$(song) %{r}$(clock)     "
    sleep 1
done
