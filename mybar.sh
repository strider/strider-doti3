#!/bin/bash

~/bin/bumblebee-status/./bumblebee-status -m title \
                                          nic \
                                          brightness \
                                          bluetooth \
                                          layout \
                                          dnf  \
                                          pasink \
                                          pasource \
                                          dunst  \
                                          battery \
                                          datetime \
                                          -p nic.states="^down" \
                                          root.path=/  \
                                          time.format="%H:%M CW %V" \
                                          date.format="%a, %b " \
                                          -t solarized-powerline
