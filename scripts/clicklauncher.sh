#!/usr/bin/env bash
declare -A actions

actions["left-1"]="google-chrome-stable"
actions["middle-1"]="brave"
actions["right-1"]="chromium"
actions["left-2"]="emacs"
actions["left-3"]="alacritty"
actions["left-4"]="caja"
actions["right-4"]="termite -e btm"

click=$1
currentWs=$(($( xdotool get_desktop ) + 1))

${actions["${click}-${currentWs}"]}

