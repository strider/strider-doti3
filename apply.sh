#!/bin/bash

echo -e "Applying i3 configuration"
rm -Rvf ~/.i3
rm -Rvf ~/.config/conky
rm -Rvf ~/.config/alacritty

mkdir -p ~/.i3
cp -rvf i3/*  ~/.i3/
cp -rvf rofi.rasi ~/.i3/
ln -vsf ~/.i3/dunstrc ~/.config/dunst/dunstrc

for script in `ls bin/`; do
    cp -vf bin/${script} ~/bin/
done

for tool in conky alacritty; do
    cp -rvf $tool ~/.config/
done
