xset -b
while true; do
    date_str=$(date +"%d.%m.%Y %H:%M")
    energy_str=$(acpi | cut -d, -f2-)
    xsetroot -name "$date_str - power:$energy_str"
    sleep 5
done &
setxkbmap ch
exec dwm
