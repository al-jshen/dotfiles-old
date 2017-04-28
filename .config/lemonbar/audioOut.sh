#!/bin/bash
muteStat=$(pamixer --get-mute)
output=$(pacmd list-sinks |grep active)
if [[ $muteStat == *"t"* ]]; then
	echo \(Muted\)
elif [[ $output == *"headphones"* ]]; then
	echo \(Headphones\)
elif [[ $output == *"lineout"* ]]; then
	echo \(Speakers\)
fi

