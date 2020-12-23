#!/bin/sh

options="shutdown\nquit dwm\nsuspend\nrestart\nhibernate"
choice=$(echo -e $options | dmenu -p "power")

[[ $choice = '' ]] && exit
sure=$(echo -e "yes\nno" | dmenu -p "are you sure ?")

[[ $sure = "yes" ]] || exit

case $choice in
	shutdown)   loginctl poweroff;;
	restart)    loginctl reboot ;;
	"quit dwm") pkill xinit;;
    suspend)    xautolock -locknow; loginctl suspend;;
    # hibernate) ;;
esac

