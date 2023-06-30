#!/bin/bash

# Get current brightness level
brightness=$(xrandr --verbose | grep Brightness: | grep -oP '(?<=Brightness: )[0-9]{1}.?[0-9]+?')
# Get next brightness level
int=$(calc $brightness*10)
nextInt=$(calc $int-1)
nextBrightness=$(calc $nextInt/10)

if [[ "${brightness}" == "0.1" ]];
then
	notify-send "☼ ${brightness}"
 	exit 0
elif [[ "${brightness}" > "0.1" ]];
then
	xrandr --output eDP-1 --brightness $nextBrightness
	exit 0
fi