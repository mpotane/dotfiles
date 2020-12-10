#!/bin/sh

export PATH=$PATH:$HOME/.local/bin

sleep 1
slstatus &

sleep 1
~/.fehbg &

sleep 1
xfce4-power-manager &

sleep 1
/usr/libexec/xfce-polkit &

sleep 1
pulseaudio -D &

sleep 1
picom &
