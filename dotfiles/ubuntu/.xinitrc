#!/bin/bash
export LANG=en_US.UTF-8

\033[1;37mxset +fp /home/eeyun/.fonts\033[0m
\033[1;37mxset fp rehash\033[0m

urxvtd -q -o -f

feh --randomize --bg-fill ~/.wallpapers/*
exec compton &
exec i3

