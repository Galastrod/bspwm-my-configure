#!/bin/bash

rofi_cmd() {
  rofi -dmenu -theme ~/.config/bspwm/themes/Art/rofi/powermenu.rasi
}

chosen=$(printf " \n \n" | rofi_cmd)
#chosen=$(printf "\uf011 \n\uf021 \n\uf2f5" | rofi_cmd)

case "$chosen" in
  "?	poweroff") poweroff ;;
  "?	reboot") reboot ;;
  "?	logout") bspc quit ;;
esac
