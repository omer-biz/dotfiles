#!/bin/sh

unmount=$(lsblk -l -o NAME,LABEL,TYPE,MOUNTPOINT |  awk '/[part|disk] \/.*$/&&!/nvme/ {print $1 ": " $2}' | dmenu -i -p "unmount: " | cut -d ':' -f 1)
[ ! -z $unmount ] && notify-send "$(udisksctl unmount -f --no-user-interaction -b "/dev/$unmount")"
