./.monitor.sh
# feh --bg-scale ~/dotfiles/walls/feh_024530_000032_1490826107465.jpg &
# feh --bg-scale ~/dotfiles/walls/mosaik.jpg &
feh --bg-scale ~/dotfiles/walls/wallmain.jpg &
xsetroot -cursor_name left_ptr &
# setxkbmap -option grp:lctrl_lalt_toggle
xmodmap ~/.xmodmap &
pkill redshift
redshift &

#compton &
#herbstclient detect_monitors
#emacs --daemon &
#syncthing -no-browser &

