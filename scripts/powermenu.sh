#!/bin/bash

rofi_cmd() {
  rofi -dmenu -theme ~/.config/rofi/powermenu.rasi
}

chosen=$(printf "\n\n" | rofi_cmd)

case "$chosen" in
  "?	poweroff") poweroff ;;
  "?	reboot") reboot ;;
  "?	logout") bspc quit ;;
esac

