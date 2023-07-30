xrdb ~/.Xresources &
slstatus &
~/.fehbg &
picom --config ~/.config/picom/picom.conf &
dunst &
~/.config/notifs/battery/bat_notif.sh &
setxkbmap pl &
xbindkeys &
iwctl station wlan0 disconnect &
pacman -Qeq > ~/dotfiles/packages.list &
aplay -t wav ~/.startup/sound/startup.wav &
exec dwm
