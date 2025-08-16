#!/system/bin/sh

RED_LED="/sys/class/leds/red/brightness"
GREEN_LED="/sys/class/leds/green/brightness"
BLUE_LED="/sys/class/leds/blue/brightness"

set_rgb() {
    echo "$1" > "$RED_LED"
    echo "$2" > "$GREEN_LED"
    echo "$3" > "$BLUE_LED"
}

clamp() {
    if [ "$1" -lt 0 ]; then echo 0
    elif [ "$1" -gt 255 ]; then echo 255
    else echo "$1"
    fi
}

while true; do
    for i in $(seq 0 5 255); do
        set_rgb $(clamp $((255 - i))) $(clamp $i) 0       # Red to Green
        sleep 0.005
    done
    for i in $(seq 0 5 255); do
        set_rgb 0 $(clamp $((255 - i))) $(clamp $i)       # Green to Blue
        sleep 0.005
    done
    for i in $(seq 0 5 255); do
        set_rgb $(clamp $i) 0 $(clamp $((255 - i)))       # Blue to Red
        sleep 0.005
    done
done
