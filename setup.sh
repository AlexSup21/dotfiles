#!/bin/bash

repo="$HOME/dotfiles"

echo "Installing packages"
sudo pacman -S --needed $(comm -12 <(pacman -Slq | sort) <(sort $repo/packages.list))

echo "Creating symlinks"
ln -sf $repo/.bashrc ~
ln -sf $repo/.xbindkeysrc ~
ln -sf $repo/.xinitrc ~
ln -sf $repo/.Xresources ~
ln -sf $repo/.fehbg ~
ln -sf $repo/.asoundrc ~
ln -sf $repo/dunst ~/.config
ln -sf $repo/fehbg ~/.config
ln -sf $repo/picom ~/.config
ln -sf $repo/gtk-3.0 ~/.config
ln -sf $repo/SpeedCrunch ~/.config
ln -sf $repo/mpv ~/.config
ln -sf $repo/neofetch ~/.config
ln -sf $repo/nvim ~/.config
ln -sf $repo/vlc ~/.config
