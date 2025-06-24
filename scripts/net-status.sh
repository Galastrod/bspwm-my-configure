#!/bin/sh

# Interface name
WIFI_IFACE="wlan0"
ETH_IFACE="enp3s0"

# Check Ethernet
if ip link show "$ETH_IFACE" | grep -q "state UP"; then
    echo " "
    exit 0
fi

# Check Wi-Fi
if iw dev "$WIFI_IFACE" link | grep -q "Connected"; then
    ESSID=$(iw dev "$WIFI_IFACE" link | awk -F ': ' '/SSID/ {print $2}')
    echo ""
    exit 0
fi

# Not connect
echo ""
exit 0
