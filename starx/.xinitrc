# compositor
# picom &

# choose wallpapers randomly
# feh -z --bg-scale $HOME/wallpapers
feh -z --bg-scale $HOME/wallpapers/wallhaven-48omy1_1920x1080.png

# music player
# mpd

# x resources !!?
xrdb ~/.Xresources

# set mouse speed
xinput set-prop "ETPS/2 Elantech Touchpad" 295 0.65

# set touchpad tapping
xinput set-prop "ETPS/2 Elantech Touchpad" 280 1

# setup the bar
dwmblocks &

# set xorg shortcuts 
xbindkeys --poll-rc

# for java
export AWT_TOOLKIT=MToolkit
wmname compiz

# notification
dunst &

# nm-applet &
# flameshot &

# autolock screen
# xautolock -time 5 -locker slock

# sxhkd &
# bspwm


# window manger
while true; do
# logging errors
 dwm 2> ~/.dwm.log
done
	
