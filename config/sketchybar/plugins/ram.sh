#!/usr/bin/env bash

# TOPPROC=$(ps axo "%cpu,ucomm" | sort -nr | tail +1 | head -n1 | awk '{printf "%.0f%% %s\n", $1, $2}' | sed -e 's/com.apple.//g')
# TOPMEM=$(ps axo "rss" | sort -nr | tail +1 | head -n1 | awk '{printf "%.0fMB %s\n", $1 / 1024, $2}' | sed -e 's/com.apple.//g')
# MEM=$(echo $TOPMEM | sed -nr 's/([^MB]+).*/\1/p')

# inspired by https://github.com/dracula/tmux/tree/master/scripts
MEM=$(vm_stat | grep ' active\|wired ' | sed 's/[^0-9]//g' | paste -sd ' ' - | awk -v pagesize=$(pagesize) '{printf "%d\n", ($1+$2) * pagesize / 1048576 + 1000}')
MEM_FORMATTED="${MEM:0:2}GB"

sketchybar -m --set $NAME label="$MEM_FORMATTED"
