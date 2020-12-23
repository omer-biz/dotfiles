#!/usr/bin/sh

pi_status=$(ps aux | grep " picom$")

if [[ -z $pi_status ]] 
then
	picom&
	notify-send 'Compositor On'
else
	kill $(pidof picom)
	notify-send 'Compositor Off'
fi

