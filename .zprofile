if [ -z "$DISPLAY" ] && [ -n "$XDG_VTNR" ] && [ "$XDG_VTNR" -eq 1 ] && [startx]; then
	  exec startx
fi

# source ~/.rvm/scripts/rvm
