#!/bin/bash

urxvtd -q -o -f

feh --randomize --bg-fill ~/.wallpapers/* 

exec i3
