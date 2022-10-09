[[ -f ~/.Xresources ]] && xrdb -merge -I$HOME ~/.Xresources
#~/.monitor.sh
~/dotfiles/scripts/.startscript.sh
exec bspwm
#exec awesome
