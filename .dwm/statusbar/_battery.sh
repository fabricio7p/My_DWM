#!/bin/bash

# Battery stuff

CAP="$(cat /sys/class/power_supply/BAT0/capacity)"
STATUS="$(cat /sys/class/power_supply/BAT0/status)"
STATE="^c#d3869b^"


if [ "$STATUS" = "Discharging" ]; then
    if [ "$CAP" -ge 90 ]; then
        ICON=""; STATE="^c#b8bb26^"
    elif [ "$CAP" -lt 90 ]; then
        ICON=""; STATE="^c#b8bb26^"
    elif [ "$CAP" -lt 80 ]; then
        ICON=""; STATE="^c#b8bb26^"
    elif [ "$CAP" -lt 70 ]; then
        ICON=""; STATE="^c#fabd2f^"
    elif [ "$CAP" -lt 60 ]; then
        ICON=""; STATE="^c#fabd2f^"
    elif [ "$CAP" -lt 50 ]; then
        ICON=""; STATE="^c#fabd2f^"
    elif [ "$CAP" -lt 40 ]; then
        ICON=""; STATE="^c#fb4934^"
    elif [ "$CAP" -lt 30 ]; then
        ICON=""; STATE="^c#fb4934^"
    elif [ "$CAP" -lt 20 ]; then
        ICON=""; STATE="^c#fb4934^"
    else
        ICON=""; STATE="^c#fb4934^"
    fi
elif [ "$STATUS" = "Not charging"  ]; then
    ICON=""

elif [ "$STATUS" = "Charging" ]; then
    ICON=""
fi

echo "${STATE}${CAP}% ${ICON}^d^ "
