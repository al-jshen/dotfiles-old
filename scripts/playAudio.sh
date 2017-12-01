#!/bin/bash

VAR1="$(mpc)"

if [[ $VAR1 == *"playing"* ]]; then
	mpc stop
else
	mpc play
fi

