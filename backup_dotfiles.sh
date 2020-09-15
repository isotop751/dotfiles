#!/usr/bin/env bash

REPO=$HOME/gitcentral/dotfiles
LISTS=(
	"$HOME/.aesthetics"
	"$HOME/.config/bspwm"
	"$HOME/.config/sxhkd"
	"$HOME/.config/polybar"
	"$HOME/.config/pacman"
	"$HOME/.config/mpd"
	"$HOME/.config/vis"
	"$HOME/.config/rofi"
	"$HOME/.config/ranger"
	"$HOME/.config/picom"
	"$HOME/.config/fontconfig"
	"$HOME/.config/mimeapps.list"
	"$HOME/.config/alacritty"
	"$HOME/.environ"
	"$HOME/.gnupg/dirmngr.conf"
	"$HOME/.local/bin"
	"$HOME/.ssh/config"
	"$HOME/.bash_profile"
	"$HOME/.bashrc"
	"$HOME/.xinitrc"
	"$HOME/.Xresources"
	"$HOME/.tmux.conf"
	"$HOME/.zshrc"
	"$HOME/.zprofile"
	"$HOME/.zshenv"
	"/etc/X11/xorg.conf.d/30-touchpad.conf"
	"/etc/systemd/journald.conf"
	"/etc/systemd/swap.conf"
)


for file in ${LISTS[@]}
do

	if [ -f $file ]; then
		base_dir=$(dirname "${file}")
		repo_dir=$REPO$base_dir
		
		if [ ! -d $repo_dir ]; then
			mkdir --parents $repo_dir
		fi

		echo "copying $(basename ${file}) to $repo_dir/$(basename ${file})"
		cp $file $repo_dir


	elif [ -d $file ]; then
		repo_dir=$(dirname $REPO$file)

		if [ ! -d $repo_dir ]; then
			mkdir --parents $repo_dir
		fi
		
		echo "copying the contents of $(basename ${file}) to $repo_dir/$(basename ${file})"
		cp -r $file/ $repo_dir/

	else
		echo "$file does not exist"
	fi

done
