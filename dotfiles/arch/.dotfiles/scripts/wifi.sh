#!/bin/bash

name=`iwconfig wlp59s0 | grep ESSID | awk '{print $4}' | cut -d '"' -f 2`

case $BLOCK_BUTTON in
    1) echo "$name" ;;
    *) echo "" ;;
esac
