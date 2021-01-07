#!/bin/bash

echo -e "Applying i3 configuration"
rm -Rvf ~/.i3
rm -Rvf ~/.config/conky
rm -Rvf ~/.config/alacritty

mkdir -p ~/.i3
cp -rvf i3/*  ~/.i3/
cp -rvf i3/.i3status.conf ~/.i3/
cp -rvf i3/.i3status-rust.toml ~/.i3/
cp -rvf rofi.rasi ~/.i3/
cp -rvf i3-bindsym.sh ~/.i3/
ln -vsf ~/.i3/dunstrc ~/.config/dunst/dunstrc
cp -vf passmenu ~/bin
cp -vf i3-touchpad ~/bin
cp -vf keyboard ~/bin
cp -vf mybar.sh ~/bin

cp -rvf conky ~/.config/
cp -rvf alacritty ~/.config/
