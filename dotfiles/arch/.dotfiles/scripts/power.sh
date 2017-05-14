#!/bin/bash

case $BLOCK_BUTTON in
    1) i3-msg exec obshutdown ;;
    *) echo "  " ;;
esac
