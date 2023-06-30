#!/bin/sh

# Rofi config file
theme="~/.config/rofi/themes/fullscreen-centered.rasi"

# User
user=$(whoami)

# Hostname
hostname=$(uname -n)

# Uptime
uptime=$(uptime -p | sed -e 's/up //g')

chosen=$(printf '%s\n' "" "" "" "" | rofi -dmenu -theme $theme -p "Uptime: $uptime")

case "$chosen" in
	) i3lock -i /home/alliebeans/Pictures/wallpapers/bg_blue_debian_blur_locked.png -e -u && systemctl suspend ;;
	) systemctl reboot ;;
	) systemctl poweroff ;;
	) bspc quit ;;
esac
