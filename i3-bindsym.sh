#!/usr/bin/env bash

grep "^bindsym" ~/.i3/config | sed 's/-\(-\w\+\)\+//g;s/$mod/Win/g;s/Mod1/Alt/g;s/exec //;s/bindsym //;s/^\s\+//;s/^\([^ ]\+\) \(.\+\)$/\2: \1/;s/^\s\+//' | tr -s ' ' | rofi -o 85 -dmenu -p "pass:" "$@"
