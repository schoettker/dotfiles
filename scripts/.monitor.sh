#!/bin/bash
intern=LVDS1
extern=HDMI1

if xrandr | grep "$extern disconnected"; then
  xrandr --output "$extern" --off --output "$intern" --auto
else
  xrandr --output "$intern" --off --output "$extern" --primary --auto
  #bspc monitor --reset-desktops 1 2 3 4 5 6 7 8 9
fi
