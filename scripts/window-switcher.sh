#!/usr/bin/env bash

# TODO: maybe in py
windows=$(wmctrl -l)
size=${#windows[@]}
# 
# echo $windows[2]
result=$(echo -e "$windows" | rofi -dmenu -i -format i -p "window:")
# echo "$result"
# id=($windows["$result"])
id=(${windows["1"]})
# echo "$id"
# echo "$windows"

fileItemString=$(echo  $windows |tr "\n" " ")

fileItemArray=($fileItemString)
size=${#fileItemArray[@]}
echo $size
# echo ${fileItemArray[*]}ABC
# echo $windows

# echo $windows[$result]
# windowId=${windows[$result]}
# echo $windowId
# xdotool windowactivate $result

# number='^[0-9]+$'
# function focus_if_window {
#     if [[ $1 =~ $number ]] ; then
#         xdotool windowactivate --sync $1
#         exit 0
#     fi
# }

# # Fetch window ids from current desktop
# desktop=$(xdotool get_desktop)
# window_ids=($(xdotool search ""))
# size=${#window_ids[@]}
# if [[ $size -eq 0 ]]; then
#     exit 0
# fi

# # Build window list options
# options=""
# for (( i=0; i<$size; i++ )); do
#     id=${window_ids[$i]}
#     name=$(xdotool getwindowname $id)

#     class=$(xprop -id $id | grep WM_CLASS | awk -F " " '{print $4}')
#     class="${class%\"}"
#     class="${class#\"}"

#     # Cap class name to 16 characters 
#     class=$(echo "$class" | cut -c 1-16)
#     class="$(printf '%-16s' $class)"

#     options+="$class  $name\n"
# done
# options=${options%\\n}

# # Focus selected window
# result=$(echo -e "$options" | rofi -dmenu -i -format i -p "window:")
# focus_if_window "${window_ids[$result]}"
