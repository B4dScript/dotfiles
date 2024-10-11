#!/bin/bash

LETTERS=$(MediaControl --title | wc -m)

if [ $LETTERS -le 15 ]; then
    title=$(MediaControl --title)
    echo -e $title
else
    lines="$(MediaControl --title | cut -c1-13)"
    sep="..."
    echo -e $lines$sep
fi

