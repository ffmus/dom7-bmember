#!/bin/bash
bmember=/srv/tunneldigger/etc/dom7-bmember

cd $bmember || exit 1

DEFAULTLIF="l2tp-vpn"
INTERFACE="$3"
PEER="$8"

LIF=$(grep -l ^${PEER}: *)

ip link set dev $INTERFACE up mtu 1364
brctl addif ${LIF:=${DEFAULTLIF}} $INTERFACE

