#!/bin/bash

killall -q polybar

polybar --config=/home/alliebeans/.config/polybar/config.ini bspwm 2>&1 | tee -a /tmp/polybar.log & disown