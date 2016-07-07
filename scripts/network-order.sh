#!/bin/bash
# network-order.sh

if [[ $1 == 'wifi' ]]; then
	networksetup -ordernetworkservices "Wi-Fi" "Thunderbolt Ethernet" "Bluetooth PAN" "Thunderbolt Bridge";
	exit 0;
fi

if [[ $1 == 'ethernet' ]]; then
	networksetup -ordernetworkservices "Thunderbolt Ethernet" "Wi-Fi" "Bluetooth PAN" "Thunderbolt Bridge";
	exit 0;
fi
