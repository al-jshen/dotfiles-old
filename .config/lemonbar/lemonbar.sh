#!/bin/sh

clock() {
    date '+%A  |  %B %d, %Y  |  %X'
}

volume() {
    amixer get Master | sed -n 's/^.*\[\([0-9]\+\)%.*$/\1/p'| uniq
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

song() {
    mpc |grep - 
}

while true; do
    echo "%{B#424242}%{F#00BFA5}%{c} VOL: $(volume)%   |   CPU: $(cpu_usage)%   |   RAM: $(ram_usage)   |   $(song) %{r}$(clock)     "
    sleep 1
done
