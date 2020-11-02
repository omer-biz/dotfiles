#! /bin/sh

mount=$(lsblk -pl | grep "part $" | awk '{print $1}' | dmenu -i -p "mount: ")

if [ -z $mount ]
then
	exit 1
fi
notification=$(udisksctl mount -b $mount)

echo $notification 
notify-send "$notification"
