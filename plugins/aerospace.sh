#!/usr/bin/env bash

source "$CONFIG_DIR/colors.sh"

if [ "$1" = "$FOCUSED_WORKSPACE" ]; then
    sketchybar --set $NAME label.color=$ACCENT_COLOR
else
    sketchybar --set $NAME label.color=$SUBTEXT1
fi
