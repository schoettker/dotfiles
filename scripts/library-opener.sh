#!/usr/bin/env bash

librarypath=~/library/books
result=$(ls $librarypath | rofi -theme ~/dotfiles/config/rofi/theme.rasi -dmenu -i -p "pdf:")

echo $result

if [ -z "$result" ]
then
      echo "nothing selected"
else
      xdg-open $librarypath/"$result"
fi
