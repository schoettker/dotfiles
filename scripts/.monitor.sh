#!/bin/bash
intern=eDP-1
extern=HDMI-1

# TODO: take the monitor file from home folder, same for x resources
if xrandr | grep "$extern disconnected"; then
  xrandr --output "$extern" --off --output "$intern" --mode auto
  # xrandr --output "$extern" --off --output "$intern" --mode 1920x1080_60.00 --dpi 96
else
  # xrandr --output HDMI1 --mode 3440x1440
#  xrandr --output HDMI1 --mode 1920x1080
   # xrandr --output "$intern" --off --output "$extern" --primary --auto
  # xrandr --output HDMI1 --mode 1920x1080
  xrandr --output "$intern" --off --output "$extern" --primary --auto
fi
