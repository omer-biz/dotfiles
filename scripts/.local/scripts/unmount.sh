#!/bin/sh

unmount=$(lsblk -pl | grep "part /.*$" | grep -v "nvme" | awk '{print $1}' | dmenu -i -p "unmount: ")
[ ! -z $unmount ] && notify-send "$(udisksctl unmount -f --no-user-interaction -b $unmount)"
