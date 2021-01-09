#!/bin/bash

cd bin || exit
for script in *; do
    ln -vsf "${PWD}"/"${script}" ~/bin/"${script}"
done
cd - || exit

for tool in i3 rofi dunst conky alacritty; do
    ln -vfs "${PWD}"/"${tool}" ~/.config/
done
