##!/usr/bin/env sh

#sketchybar --add item        cpu.top right                 \
#           --set cpu.top     label.font="$FONT:Semibold:7" \
#                             label=CPU                     \
#                             icon.drawing=off              \
#                             width=0                       \
#                             y_offset=6                    \
#                             background.padding_right=10   \
#                                                           \
#           --add item        cpu.percent right             \
#           --set cpu.percent label.font="$FONT:Heavy:12"   \
#                             label=CPU                     \
#                             y_offset=-4                   \
#                             width=40                      \
#                             icon.drawing=off              \
#                             update_freq=2                 \
#                             background.padding_right=10   \
#                                                           \
#           --add graph       cpu.sys right 100             \
#           --set cpu.sys     width=0                       \
#                             graph.color=$RED              \
#                             graph.fill_color=$RED         \
#                             label.drawing=off             \
#                             icon.drawing=off              \
#                             background.padding_right=10   \
#                                                           \
#           --add graph       cpu.user right 100            \
#           --set cpu.user    graph.color=$BLUE             \
#                             update_freq=2                 \
#                             label.drawing=off             \
#                             icon.drawing=off              \
#                             background.padding_right=10   \
#                             script="$PLUGIN_DIR/cpu.sh"
### cpu Widget ###
sketchybar --add item  cpu right                                                   \
           --set cpu   update_freq=10                                              \
                       icon.font="Font Awesome 6 Free:Solid:12.4"                  \
                       icon.padding_right=4                                        \
                       icon.color=0xffe3c392                                       \
                       icon.y_offset=1                                             \
                       label.y_offset=1                                            \
                       label.font="$FONT:Bold:10.6"                                \
                       label.color=0xffe3c392                                      \
                       label.padding_right=8                                       \
                       background.color=0xffe3c392                                 \
                       background.height=2                                         \
                       background.y_offset=-9                                      \
                       background.padding_right=8                                  \
                       icon.padding_left=0 label.padding_right=2                   \
                       script="$PLUGIN_DIR/cpu.sh"
