#!/bin/bash

i3status -c /home/eeyun/.i3/i3status.conf | while :
do
        read line
        playing=$(ncmpcpp --current-song)
        echo "$playing | $line" || exit 1
done
