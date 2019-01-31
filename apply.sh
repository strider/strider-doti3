#!/bin/bash

echo -e "Applying i3 configuration"
rm -Rvf ~/.i3
mkdir -p ~/.i3
cp -rvf i3/*  ~/.i3/
cp -rvf i3/.i3status.conf ~/.i3/
ln -vsf ~/.i3/dunstrc ~/.config/dunst/dunstrc
cp -vf passmenu ~/bin
cp -vf i3-touchpad ~/bin
#sudo cp -rvf ./keyboard-backlight.sh /usr/local/bin/
