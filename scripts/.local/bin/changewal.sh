#!/bin/bash

awww img "$1" --transition-type grow

wal -i "$1"

pkill waybar
waybar & disown

makoctl reload
