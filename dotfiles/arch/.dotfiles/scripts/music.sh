#!/bin/bash
status=`playerctl status`
title=`playerctl metadata title`
artist=`playerctl metadata artist`
if  [ $status == "Playing" ]
then
	echo "$artist - $title ";
else

if  [ $status == "Paused" ]
then
	echo "$artist - $title  ";
else
	echo " ";
fi
echo " ";
fi
