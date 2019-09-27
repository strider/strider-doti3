#!/bin/bash

notmuch_query="tag:unread AND folder:redhat-gmail/INBOX"

~/bin/bumblebee-status/./bumblebee-status -m nic \
                                          vpn \
                                          notmuch_count \
                                          battery \
                                          pasink \
                                          pasource \
                                          dunst \
                                          bluetooth \
                                          datetime \
                                          -p nic.states="^down" \
                                          root.path=/  \
                                          nic.format="{intf} {ip} {ssid}" \
                                          battery.showdevice=true \
                                          notmuch_count.query="${notmuch_query}" \
                                          -t iceberg-dark-powerline
