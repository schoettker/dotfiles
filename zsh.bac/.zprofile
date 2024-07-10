# automatically startx on login
eval "$(/opt/homebrew/bin/brew shellenv)"
if [ -z "$DISPLAY" ] && [ -n "$XDG_VTNR" ] && [ "$XDG_VTNR" -eq 1 ] && ! type "$startx" > /dev/null; then
	  exec startx
fi

