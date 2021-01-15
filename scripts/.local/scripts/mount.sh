#! /bin/sh

mount=$(lsblk -l -o NAME,LABEL,TYPE,MOUNTPOINT | awk '/[part|disk] $/ {print $1 ": " $2}' | dmenu -i -p "mount: " | cut -d':' -f 1)
[ ! -z $mount ] && notify-send "$(udisksctl mount -b "/dev/$mount")"
