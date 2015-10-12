#!/bin/bash

function gen_workspaces()
{
    i3-msg -t get_workspaces | tr ',' '\n' | grep "name" | sed 's/"name":"\(.*\)"/\1/g' | sort -n
}


WORKSPACE=$( (echo empty; gen_workspaces)  | rofi -dmenu -p "Select workspace:" -font 'Terminus for Powerline 12' -fg '#f8f8f2' -bg '#272822' -hlfg '#272822' -hlbg '#f92672' -o 85)

if [ x"empty" = x"${WORKSPACE}" ]
then
    i3_empty_workspace.sh
elif [ -n "${WORKSPACE}" ]
then
    i3-msg workspace "${WORKSPACE}"
fi
