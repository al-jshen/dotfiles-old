#!/bin/bash

if [ -f /home/js/.config/lemonbar/temps.sh ]; then
    mv /home/js/.config/lemonbar/temps.sh /home/js/.config/lemonbar/temp.sh
else
    mv /home/js/.config/lemonbar/temp.sh /home/js/.config/lemonbar/temps.sh
fi
