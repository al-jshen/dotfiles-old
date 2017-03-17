#!/bin/sh

clock() {
    date '+%A  |  %B %d, %Y  |  %X'
}

volume() {
#    amixer get Master|grep Mono |sed 's/[^f]//g' > /home/js/.config/lemonbar/mutefile
#    python /home/js/.config/lemonbar/mute.py
    amixer get Headphone | sed -n 's/^.*\[\([0-9]\+\)%.*$/\1/p'| uniq
}

#cpu_usage() {
#    USAGE=`ps -eo pcpu |grep -vE '^\s*(0.0|%CPU)' |sed -n '1h;$!H;$g;s/\n/ +/gp'`
#    bc <<< $USAGE
#}

#ram_usage() {
#    screenfetch -nN |grep --color=never RAM > /home/js/.config/lemonbar/ramfile
#    sed 's/[^0-9/ ]*//g' /home/js/.config/lemonbar/ramfile > /home/js/.config/lemonbar/ramin
#    python /home/js/.config/lemonbar/rampercentage.py
#}

network() {
    iw dev net0 link |grep --color=never onnected > /home/js/.config/lemonbar/netfile
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
    echo "%{B#424242}%{F#00BFA5}%{l}   $(network)   |   VOL: $(volume)% %{c}$(song) $(repeat) %{r}$(clock)     "
    sleep 1
done
