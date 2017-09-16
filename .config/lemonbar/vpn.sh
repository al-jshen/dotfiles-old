#!/bin/bash
netCheck=$(ifconfig |grep tun)
if [[ $netCheck ]]; then
<<<<<<< HEAD
	echo "(VPN) "
=======
	echo \(VPN\)
>>>>>>> fee013187a8bc0019b170b8c66dc37a06e3c23c2
fi

