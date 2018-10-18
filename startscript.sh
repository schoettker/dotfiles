./.monitor.sh
feh --bg-scale ~/dls/wallpaper2.jpg
xmodmap ~/.xmodmap
pkill redshift
redshift &
compton &
herbstclient detect_monitors
emacs --daemon &
#syncthing -no-browser &

