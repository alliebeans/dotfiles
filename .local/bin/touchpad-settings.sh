#! /bin/sh

# Touchpad Settings
# Get Touchpad id
touchpad=$(xinput list | grep Touchpad | grep -oP '(?<=id=)[0-9]+')

# Get Settings id
# Tapping Enabled
tapping=$(xinput list-props $touchpad | grep -oP '(?<=Tapping Enabled \()[0-9]+')
# Natural Scrolling
scrolling=$(xinput list-props $touchpad | grep -oP '(?<=Natural Scrolling Enabled \()[0-9]+')
acc=$(xinput list-props $touchpad | grep -oP '(?<=Accel Speed \()[0-9]+')

#Set Settings
xinput set-prop $touchpad --type=int $tapping 1 &
xinput set-prop $touchpad --type=int $scrolling 1 &
xinput set-prop $touchpad --type=float $acc 0.1 &