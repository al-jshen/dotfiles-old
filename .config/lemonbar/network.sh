#!/bin/bash
connStat=$(iw dev net0 link |head -n 1)
netAddr=$(ifconfig |grep 192.168 |cut -c14-26)
if [[ $connStat == *"Not"* ]]; then
	echo Not Connected
else
	echo Connected to $netAddr
fi

