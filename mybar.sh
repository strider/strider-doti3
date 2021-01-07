#!/bin/bash

~/bin/bumblebee-status/./bumblebee-status -m nic \
                                          yubikey \
                                          battery-upower \
                                          pasink \
                                          pasource \
                                          bluetooth2 \
                                          datetime \
                                          -p nic.states="^down" \
                                          root.path=/  \
                                          todo_org.file="~/org/inbox.org" \
                                          nic.format="{intf} {ip} {ssid}" \
                                          -t iceberg-dark-powerline
