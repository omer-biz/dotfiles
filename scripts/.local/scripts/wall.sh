#!/bin/sh

# replaced this script with
# `feh -z --bg-scale`
# the `-z` will take of the 
# randomization now

wallpapers=~/.wall
wal_num=$(ls $wallpapers | wc -l)
rand=$(echo $RANDOM % $wal_num | bc)

i=0
for wall in $(ls -1 $wallpapers)
do
	if [ $i = $rand ]
	then
		echo $wall
		feh --bg-scale "$wallpapers/$wall"
		exit 0
	fi
	i=$(( i + 1 ))
done
