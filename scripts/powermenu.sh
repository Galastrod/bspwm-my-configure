#!/bin/bash

rofi_cmd() {
  rofi -dmenu -theme ~/.config/rofi/powermenu.rasi
}

chosen=$(printf "\uf204  Poweroff\n\uF2f9  Reboot\n\uF2f5  Logout" | rofi_cmd)

case "$chosen" in
  "?  poweroff") poweroff ;;
  "?  reboot") reboot ;;
  "?  logout") bspc quit ;;
esac
