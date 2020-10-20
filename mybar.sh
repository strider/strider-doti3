#!/bin/bash

notmuch_query="tag:unread AND folder:redhat-gmail/INBOX"

~/bin/bumblebee-status/./bumblebee-status -m nic \
                                          battery \
                                          pasink \
                                          pasource \
                                          dunst \
                                          bluetooth \
                                          weather \
                                          datetime \
                                          -p nic.states="^down" \
                                          root.path=/  \
                                          nic.format="{intf} {ip} {ssid}" \
                                          battery.showdevice=true \
                                          -t firefox-dark-powerline
