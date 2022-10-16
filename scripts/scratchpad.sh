#!/usr/bin/env bash

declare -A actions

actions["scratchterm"]="alacritty --class=scratchterm --title=scratchterm"
actions["scratchmacs"]="emacs ~/dev/brain/work/spotify.org --name scratchmacs"
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
    # extra code to handle emacs `eval` which didnt work otherwise because bash will ignore the needed single quotes eval='(...)'
    if [ "$action" == "scratchmacs" ]
      then
        emacs --name scratchmacs --eval='(progn  (select-window (split-window-below 14)) (find-file "~/dev/brain/work/spotify.org") (previous-window-any-frame) (org-agenda-list) (previous-window-any-frame))'
    else
        echo $action
      ${actions["${action}"]}
    fi
fi


# actions["scratchmacs"]="emacs ~/dev/brain/work/spotify.org --name scratchmacs --eval='(progn (select-window (split-window-below -20))(org-agenda-list)(previous-window-any-frame))'"

# actions["scratchmacs"]="emacs --name scratchmacs --eval='(progn (find-file \"~/dev/brain/work/spotify.org\") (select-window (split-window-below -20))(org-agenda-list)(previous-window-any-frame))'"
# actions["scratchmacs"]="emacs --name scratchmacs --eval='(progn  (select-window (split-window-below 14)) (find-file "~/dev/brain/work/spotify.org") (previous-window-any-frame) (org-agenda-list) (previous-window-any-frame))'"
# actions["scratchmacs"]="emacs --name scratchmacs --eval='(progn (find-file "~/dev/brain/work/spotify.org") (select-window (split-window-below -20))(org-agenda-list)(previous-window-any-frame))'"
