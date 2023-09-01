xrdb ~/.Xresources &
slstatus &
~/.fehbg &
picom --config ~/.config/picom/picom.conf &
dunst &
/usr/local/bin/bat_notif.sh &
setxkbmap pl &
xbindkeys &
#iwctl station wlan0 disconnect &
pacman -Qeq > ~/dotfiles/packages.list &
pkttyagent &
aplay -t wav ~/.startup/sound/startup.wav &
exec dwm
