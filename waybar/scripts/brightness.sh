current_brightness=$(cat /sys/class/backlight/intel_backlight/brightness)

if ((current_brightness > 9600)); then
  brightnessctl set 10%-
fi

