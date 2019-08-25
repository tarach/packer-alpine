#!/usr/bin/env sh

IFS= read -rs USER < /dev/tty
IFS= read -rs PASS < /dev/tty

IP=$1
MASK=$2

setup-apkrepos -1
apk add sudo openntpd

sed -i "s/address x.x.x.x/address $IP/" answers
sed -i "s/netmask x.x.x.x/netmask $MASK/" answers
