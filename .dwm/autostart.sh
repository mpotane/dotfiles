#!/bin/sh

#start status bar
slstatus &

#start feh
~/.fehbg &

#start gnome polkit
sh $HOME/polkit-gnome.sh
