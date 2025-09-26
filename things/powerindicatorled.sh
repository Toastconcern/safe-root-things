#!/system/bin/sh

RED_LED="/sys/class/leds/red/brightness"
GREEN_LED="/sys/class/leds/green/brightness"
BLUE_LED="/sys/class/leds/blue/brightness"

BATTERY_PATH="/sys/class/power_supply/battery/capacity"

set_led() {
    echo "$1" > "$RED_LED"
    echo "$2" > "$GREEN_LED"
    echo "$3" > "$BLUE_LED"
}

while true; do
    battery_level=$(cat "$BATTERY_PATH")

    if (( battery_level >= 95 )); then
        set_led 0 255 0
    elif (( battery_level >= 90 )); then
        set_led 64 255 0
    elif (( battery_level >= 80 )); then
        set_led 128 255 0
    elif (( battery_level >= 70 )); then
        set_led 180 255 0
    elif (( battery_level >= 60 )); then
        set_led 220 255 0
    elif (( battery_level >= 50 )); then
        set_led 255 255 0
    elif (( battery_level >= 40 )); then
        set_led 255 180 0
    elif (( battery_level >= 30 )); then
        set_led 255 128 0
    elif (( battery_level >= 20 )); then
        set_led 255 64 0
    elif (( battery_level >= 10 )); then
        set_led 255 32 0
    else
        set_led 255 0 0
    fi

done
