#!/bin/bash

C_1=$(sensors |grep Core |head -n 1 |cut -c17-20)
C_2=$(sensors |grep Core |tail -n 1 |cut -c17-20)
FT=$(echo "(($C_1 + $C_2) / 2)" |bc -l |cut -c1-4)

G=$(sensors |grep "crit = +120.0 C" |cut -c16-19)

echo "CPU: ${FT} C | GPU: ${G} C"
