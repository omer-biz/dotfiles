[ $(tty) = "/dev/tty1" ] && startx 

# no beeps
set -B

export QT_QPA_PLATFORMTHEME=qt5ct
export EDITOR=nvim
export PATH=$PATH:$HOME/.local/scripts
