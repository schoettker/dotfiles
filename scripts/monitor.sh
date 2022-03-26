#!/bin/bash
intern=eDP-1
extern=HDMI-1

# TODO add this to dotfiles
# if xrandr | grep "$extern disconnected"; then
  # xrandr --output "$extern" --off --output "$intern" --mode 1920x1080_60.00 --dpi 120
  # xrandr --output "$extern" --off --output "$intern" --mode 1920x1080_60.00 --dpi 96
# else
  # xrandr --output HDMI1 --mode 3440x1440
  # xrandr --output HDMI1 --mode 1920x1080
  # xrandr --output "$intern" --off --output "$extern" --primary --auto
  #bspc monitor --reset-desktops 1 2 3 4 5 6 7 8 9
# fi
if xrandr | grep "$extern disconnected"; then
  sed -i 's/!//' ~/.Xresources
  xrandr --output "$extern" --off --output "$intern"  --dpi 120
# --mode 1920x1080_60.00
else
  # xrandr --output HDMI1 --mode 1920x1080
  sed -i 's/^Xft.dpi:/!Xft.dpi:/' ~/.Xresources
  xrandr --output "$intern" --off --output "$extern" --primary --auto
fi

# xrandr --output eDP-1 --primary --mode 1920x1080 --rotate normal --output HDMI-1 --mode 1920x1080 --rotate normal



# Sadly the below is still a bit blurry on the external screen due to '--scale'
# if xrandr | grep "$extern disconnected"; then
#   xrandr --output eDP-1 --primary --mode 1920x1080 --rotate normal
# else
#   # also required 128DPI in ~/.Xresources
#   xrandr --output eDP-1 --primary --mode 1920x1080 --pos 0x1480 --rotate normal --output HDMI-1 --mode 1920x1080 --scale 1.25x1.25 --pos 0x0 --rotate normal
# fi
