#!/usr/bin/env python3

import os

stream = os.popen('wmctrl -l')
windows = stream.read()
windows = windows.splitlines()


stream = os.popen('echo -e "%s" | rofi -theme ~/dotfiles/config/rofi/theme.rasi -dmenu -i -format i -p "window:"' % ('\n'.join(windows)))
# stream = os.popen('echo -e "%s" | rofi -dpi 192 -theme ~/dotfiles/config/rofi/theme.rasi -dmenu -i -format i -p "window:"' % ('\n'.join(windows)))
windowIdx = stream.read()
windowId = windows[int(windowIdx)].split(' ', 1)[0]

os.popen('bspc node %s -g hidden=off -f' % windowId).read()

