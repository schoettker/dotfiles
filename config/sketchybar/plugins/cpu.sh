#!/usr/bin/env sh

# TOPPROC=$(top -l  1 | grep -E "^CPU" | tail -1 | awk '{ print $3 + $5"%" }' | cut -d "." -f1)
CPU_LOAD=$(top -l  2 | grep -E "^CPU" | tail -1 | awk '{ print $3 + $5"%" }')


sketchybar --set $NAME icon="" label="$CPU_LOAD"
