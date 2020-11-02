#!/bin/sh

options="shutdown\nquit dwm\nsuspend"
choice=$(echo -e $options | dmenu -l 4 -p "power")
sure=$(echo -e "yes\nno" | dmenu -p "are you sure ?")

[[ $sure = "yes" ]] || exit

case $choice in
	shutdown) shutdown now ;;
	"quit dwm") pkill x;;
esac

