xset -b
while true; do
    date_str=$(date +"%a %d.%m.%Y %H:%M")
    energy_str=$(acpi | cut -d ',' -f2 | tr -d '\n' | sed 's/^\s//g')
    memory_str=$(free -h | grep 'Mem:' | awk '{print $3}')
    xsetroot -name " $date_str | $energy_str | $memory_str"
    sleep 10
done &
setxkbmap ch
exec dwm
