#!/bin/sh

INTERFACE=$(ifconfig | grep tun0 | awk '{print $1}' | tr -d ':')

if [ "$INTERFACE" = "tun0" ]; then
    echo $(ifconfig tun0 | grep "inet" | head -n 1 | awk '{print $2}')
else
    echo "Disconnected"
fi
