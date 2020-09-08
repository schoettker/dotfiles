#!/usr/bin/env zsh

nodes=( $(bspc query -N -n .hidden) ) && s=$(xtitle ${nodes[@]} | rofi -dmenu -format i -p "Hidden windows:")
bspc node ${$(bspc query -N -n .hidden)[$s]} -g hidden=off -f
