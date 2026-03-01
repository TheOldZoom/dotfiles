#!/bin/bash
clear_option="󰃢  Clear Clipboard History"
result=$( (echo "$clear_option"; cliphist list) | rofi -dmenu -p "Clipboard" -i)

if [ "$result" == "$clear_option" ]; then
    confirm=$(echo -e "Yes\nNo" | rofi -dmenu -p "Clear all history?" -i)
    if [ "$confirm" == "Yes" ]; then
        cliphist wipe
        notify-send "Clipboard" "History cleared!"
    fi
elif [ -n "$result" ]; then
    echo "$result" | cliphist decode | wl-copy
fi
