#!/bin/sh

state=$(rfkill -o SOFT | tail -1)

[[ $state == "blocked" ]]   && notify-send -t 800 "Airplane Mode On"
[[ $state == "unblocked" ]] && notify-send -t 800 "Airplane Mode Off"

pkill -RTMIN+24 dwmblocks
