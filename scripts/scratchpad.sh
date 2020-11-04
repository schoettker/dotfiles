#!/usr/bin/env bash

declare -A actions

actions["scratchterm"]="termite --class=scratchterm"
actions["scratchmacs"]="emacs ~/library/Dropbox/org/scratchpad.org --name scratchmacs"
actions["scratchbrowser"]="qutebrowser --qt-arg name scratchbrowser"
# actions["scratchbrowser"]="firefox --class scratchbrowser -private"

action=$1
search=$2 || --class
# --class searches WM class, --classname searches instance class

# if [ $action == "scratchmacs" ]
#  then
#   id=$(xdotool search --classname $action | head -1)
# else
# fi
id=$(xdotool search $search $action | head -1)

if [ "$id" != "" ]
 then
	bspc node "$id" -g hidden; bspc node -f "$id"
else
	${actions["${action}"]}
fi

