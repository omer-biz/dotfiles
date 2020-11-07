#!/usr/bin/sh

pi_status=$(ps aux | grep " picom$")

if [[ -z $pi_status ]] 
then
	picom&
	notify-send 'compositor on'
else
	kill $(pidof picom)
	notify-send 'compositor off'
fi

