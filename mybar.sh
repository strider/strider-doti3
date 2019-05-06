#!/bin/bash

~/bin/bumblebee-status/./bumblebee-status -m title \
                                          dnf  \
                                          nic \
                                          publicip \
                                          layout \
                                          dunst  \
                                          brightness \
                                          battery \
                                          pasink \
                                          pasource \
                                          datetime \
                                          -p nic.states="^down" \
                                          root.path=/  \
                                          nic.format="{intf} {ip} {ssid}" \
                                          battery.showdevice=true \
                                          -t powerline
