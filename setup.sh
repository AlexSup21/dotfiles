#!/bin/bash

repo="$HOME/dotfiles"

function install_q {
    while true; do
        read -p "$* Install packages from list? [y/n]: " yn
        case $yn in
            [Yy]*) return 0  ;;  
            [Nn]*) echo "Aborted" ; return  1 ;;
        esac
    done
}

cat $repo/packages.list

install_q && sudo pacman -S --needed $(comm -12 <(pacman -Slq | sort) <(sort $repo/packages.list))

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
ln -sf $repo/qutebrowser ~/.config
ln -sf $repo/lf ~/.config

echo "Done!"
