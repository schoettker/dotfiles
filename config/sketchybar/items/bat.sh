sketchybar --add item battery right                      \
           --set battery label.font="$FONT:Bold:10.6" \
           --set battery label.color=0xffa6d189 \
           --set battery icon.color=0xffa6d189 \
           --set battery script="$PLUGIN_DIR/bat.sh" \
                         update_freq=10                  \
           --subscribe battery system_woke
