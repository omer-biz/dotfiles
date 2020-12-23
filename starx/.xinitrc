# Compositor
# picom &

# x resources
xrdb ~/.Xresources

# set brightness
xbacklight -set 5

# set mouse speed
xinput set-prop "ETPS/2 Elantech Touchpad" 295 0.65

# set touchpad tapping
xinput set-prop 11 327 1

# resolution
xrandr -s 1600x900
xwallpaper --zoom "$HOME/.config/wall.jpg"

# setup the bar
dwmblocks &

# set xorg shortcuts 
xbindkeys --poll-rc


# Notification
dunst &

# This is the only place I could put this
export QT_QPA_PLATFORMTHEME=qt5ct
export AWT_TOOLKIT=MToolkit

# Start the manger
while true; do
    # logging errors
    dwm 2> ~/.dwm.log
done
