#!/bin/bash

while true; do
    node /home/js/.config/lemonbar/cryptoprice/ethcad.js > /home/js/.config/lemonbar/cryptoprice/ethprice
    node /home/js/.config/lemonbar/cryptoprice/btcusd.js > /home/js/.config/lemonbar/cryptoprice/btcprice
    sleep 30
done
