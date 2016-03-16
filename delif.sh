#!/bin/bash
INTERFACE="$3"
PEER="$8"

LIF=$(echo $(ip link show $INTERFACE) | sed 's/.* master \([^ ]\+\) .*/\1/g')

brctl delif $LIF $INTERFACE

