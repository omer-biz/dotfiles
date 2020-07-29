#!/usr/bin/sh

# for those who reside in the home directory
for file in .tmux.conf .vimrc .xinitrc .Xresources
do
	ln -sr $file ~/
	echo "[*] linking $file ..."
done

# fish config
ln -sr config.fish ~/.config/fish/

echo "[!] Done .."

