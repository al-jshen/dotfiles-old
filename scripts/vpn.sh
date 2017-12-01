#!/bin/bash
type='tcp'
if [[ $2 == udp ]]; then
	type='udp'
fi
cat /etc/vpn_resolv.conf | sudo tee /etc/resolv.conf > /dev/null 2>&1
sudo openvpn /etc/openvpn/pia/$type/$1.ovpn
resolvconf -l | sudo tee /etc/resolv.conf > /dev/null 2>&1
