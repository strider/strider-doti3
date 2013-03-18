#!/bin/bash

echo -e "Applying i3 configuration"
rm -Rf ~/.i3
mkdir -p ~/.i3
cp -rf i3/*  ~/.i3/
cp -rf i3/.i3status.conf ~/.i3/
ln -sf ~/.i3/dunstrc ~/.config/dunst/dunstrc


