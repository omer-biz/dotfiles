#!/bin/sh

# $0: file
# $1: dest
function link() {
		echo "[*] linking $file ..."
		ln -sr $1 $2 2>/dev/null

		if [ $? = 0 ]
	   	then
				echo "[*] $file linked"
		else
				echo "[!] $file exists"
		fi

		echo
}


# for those who reside in the home directory
for file in .tmux.conf .vimrc .xinitrc .Xresources .xbindkeysrc
do
	# ln -sr $file ~/ 2>/dev/null
	link $file ~/ 
done

# fish config
# ln -sr config.fish ~/.config/fish/
link config.fish ~/.config/fish

echo "[#] Done .."
 
