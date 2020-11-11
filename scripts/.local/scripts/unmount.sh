#!/bin/sh

unmount=$(lsblk -pl | grep "part /.*$" | grep -v "sda" | awk '{print $1}' | dmenu -i -p "unmount: ")
[ ! -z $unmount ] && notify-send "$(udisksctl unmount -f --no-user-interaction -b $unmount)"
