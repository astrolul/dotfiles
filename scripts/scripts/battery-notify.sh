#!/usr/bin/env bash
source ~/.dbus/session-bus/$(cat /var/lib/dbus/machine-id)-0
export DISPLAY=:0

if [ -z "$BATTERY" ]; then
    BATTERY=$(cat /sys/class/power_supply/BAT*/capacity 2>/dev/null | head -n1)
fi

# Ensure we have a numeric value
if [[ "$BATTERY" =~ ^[0-9]+$ ]]; then
    if [ "$BATTERY" -le 20 ]; then
        notify-send --urgency=critical --icon=battery --expire-time=30000 "⚠️ Battery Running Low" "Please connect a charger."
    fi
fi
