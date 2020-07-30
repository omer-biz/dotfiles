# compositor
picom &

# wallpaper
feh --bg-scale ~/.wall.jpg &

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
wmname "LG3D"

# window manger
while true; do
	# logging errors
	dwm 2> ~/.dwm.log
done
	
