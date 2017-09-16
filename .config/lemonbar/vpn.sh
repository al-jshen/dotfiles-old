#!/bin/bash
netCheck=$(ifconfig |grep tun)
if [[ $netCheck ]]; then
	echo "(VPN) "
fi

