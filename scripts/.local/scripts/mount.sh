#! /bin/sh

mount=$(lsblk -l -o NAME,LABEL,TYPE,MOUNTPOINT | awk '/part $/ {print $1 ": " $2}' | dmenu -i -p "mount: ")
[ ! -z $mount ] && notify-send "$(udisksctl mount -b $mount)"
