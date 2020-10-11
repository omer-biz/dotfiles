# compositor
picom &

# wallpapers
# feh --bg-scale ~/.wall.jpg &
# ~/.local/bin/wall.sh
nitrogen --random --restore

# x resources !!?
xrdb ~/.Xresources

# set mouse speed
xinput set-prop "ETPS/2 Elantech Touchpad" 295 0.65

# set touchpad tapping
xinput set-prop "ETPS/2 Elantech Touchpad" 280 1

# setup the bar
dwmblocks &

# set xorg shortcuts I think
xbindkeys --poll-rc

# for java
export AWT_TOOLKIT=MToolkit
wmname compiz

# notification
dunst &

# autolock screen
# xautolock -time 5 -locker slock

# window manger
while true; do
	# logging errors
	dwm 2> ~/.dwm.log
done
	
