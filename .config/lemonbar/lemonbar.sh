#!/bin/sh

clock() {
    date '+%A, %B %d, %Y  |  %X'
}

volume() {
    pamixer --get-volume
}

audioOut() {
	muteStat=$(pamixer --get-mute)
	output=$(pacmd list-sinks |grep active)
	if [[ $muteStat == *"t"* ]]; then
		echo \(Muted\)
	elif [[ $output == *"headphones"* ]]; then
		echo \(Headphones\)
	elif [[ $output == *"lineout"* ]]; then
		echo \(Speakers\)
	fi
}

network() {
	connStat=$(iw dev net0 link |head -n 1)
	netAddr=$(ip addr |grep 192.168 |cut -c10-22)
	ESSID=$(iw dev net0 link |head -n2 |tail -n1 |cut -c8-)
	if [[ $connStat == *"Not"* ]]; then
		echo Not Connected
	else
		echo $ESSID @ $netAddr
	fi

}

vpn() {
	netCheck=$(ip addr |grep tun)
	if [[ $netCheck ]]; then
		echo "(VPN) "
	fi
}

while true; do
    echo "%{B#262626}%{F#C4C4C4}%{l}   $(network) %{F#20C20E} $(vpn)%{F#C4C4C4}| VOL: $(volume)% $(audioOut) %{r} $(clock)   "
    sleep 1
done

