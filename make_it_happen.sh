#!/bin/sh

# $1: file
# $2: dest
function overwrite() {
	rm $2$1
	ln -sr $1 $2 2>/dev/null
}


# $1: file
# $2: dest
function link() {
	echo "[*] linking $1 ..."
	ln -sr $1 $2 2>/dev/null

	if [ $? = 0 ]
   	then
		echo "[*] $1 linked"
	else
		echo -n "[!] $1 exists, "
		read -n 1 -p "would you like to overwrite [y/N] " conf

		if [ $conf = "y" ]
		then
			overwrite $1 $2 2>/dev/null
		else
			echo
			echo "[!] $1 skipped"
		fi
	fi
	echo
}


# for those who reside in the home directory
for file in .tmux.conf .vimrc .xinitrc .Xresources .xbindkeysrc .bashrc .gtkrc-2.0 .zshrc
do
	link $file ~/ 
done

# fish config
link config.fish ~/.config/fish/

# gtk3
link settings.ini ~/.config/gtk-3.0/

# nvim
link init.vim ~/.config/nvim/

echo 
