#!/usr/bin/env bash

dir=$HOME/library/images/screenshots
if [ ! -d $dir ]; then
    mkdir -p $dir
fi
maim -u -s -m 1 $dir/$(date +%Y%m%d_%H%M%S).png
xclip -selection clipboard -t image/png -i $dir/`ls -1 -t $dir | head -1` &
# notify-send 'Snap!' 'Selected shot saved and copied to clipboard!'

