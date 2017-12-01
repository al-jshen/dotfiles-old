#!/bin/bash

if [ -f /home/js/.config/lemonbar/cryptoprice/ethprice ]; then
	mv /home/js/.config/lemonbar/cryptoprice/ethprice /home/js/.config/lemonbar/cryptoprice/ethprice2
else 
	mv  /home/js/.config/lemonbar/cryptoprice/ethprice2 /home/js/.config/lemonbar/cryptoprice/ethprice
fi

if [ -f /home/js/.config/lemonbar/cryptoprice/btcprice ]; then
	mv /home/js/.config/lemonbar/cryptoprice/btcprice /home/js/.config/lemonbar/cryptoprice/btcprice2
else
	mv /home/js/.config/lemonbar/cryptoprice/btcprice2 /home/js/.config/lemonbar/cryptoprice/btcprice
fi

