#!/bin/bash

~/bin/bumblebee-status/./bumblebee-status -m nic \
                                          yubikey \
                                          battery-upower \
                                          pasink \
                                          pasource \
                                          bluetooth2 \
                                          dunstctl \
                                          datetime \
                                          -p nic.states="^down" \
                                          nic.format="{intf} {ip} {ssid}" \
                                          -t nord-colorful
