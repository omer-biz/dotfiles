#! /bin/sh

mount=$(lsblk -pl | grep "part $" | awk '{print $1}' | dmenu -i -p "mount: ")
[ ! -z $mount ] && notify-send "$(udisksctl mount -b $mount)"
