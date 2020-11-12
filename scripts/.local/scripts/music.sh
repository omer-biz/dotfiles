#!/bin/sh

case $@ in
	togg) playerctl play-pause || mpc toggle ;;
	next) playerctl next       || mpc next;;
	prev) playerctl previous   || mpc prev;;
	stop) playerctl stop       || mpc stop;;
esac

