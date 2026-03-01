#!/bin/bash
CONFIG_FILE="$HOME/.config/hypr/keybinds.conf"

if pgrep -x "rofi" > /dev/null; then
    pkill -x rofi
    exit 0
fi

grep -E '^bind[a-z]*' "$CONFIG_FILE" | \
    sed -e 's/bind[a-z]* = //g' \
        -e 's/\$mainMod/SUPER/g' \
        -e 's/exec,//g' \
        -e 's/  */ /g' | \
    awk -F '#' '{print $2 "  \t[" $1 "]"}' | \
    sed 's/^[ \t]*//' | \
    rofi -dmenu -i -p "Search Actions" -theme-str 'window {width: 50%;} listview {lines: 12;}'
