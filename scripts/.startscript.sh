# ~/dotfiles/scripts/monitor.sh
# picom -b --experimental-backends --dbus --config ~/.config/picom.conf &
# feh --bg-scale ~/dotfiles/walls/feh_024530_000032_1490826107465.jpg &
# feh --bg-scale ~/dotfiles/walls/mosaik.jpg &
feh --bg-scale ~/dotfiles/walls/mojave-hybdrid-wallpaperflare.jpg &

#feh --bg-scale ~/.config/awesome/theme/yota.jpg &
xsetroot -cursor_name left_ptr &
# setxkbmap -option grp:lctrl_lalt_toggle &
xmodmap ~/.xmodmap &
pkill redshift
redshift &

# compton &
#herbstclient detect_monitors
#emacs --daemon &
#syncthing -no-browser &
flameshot &
dunst &
fusuma -d &
clipster -d &
bitwarden-desktop &
# caffeine & -> as caffeine pkgs don't wanna work anymore, just install xfce4-power-manager and configure never sleep in there and then auto-start
xfce4-power-manager &
gpclient &
slack &
# google-chrome-stable --app="https://calendar.google.com/calendar/render#main_7" &
thunderbird &
# dropbox &
# logseq &
# emacs --name orgmacs --eval='(progn (org-agenda-list)(split-window-right)(org-capture nil "aj"))' &
