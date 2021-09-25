##!/bin/bash
#
#BAT=$(acpi -b | grep -E -o '[0-9][0-9][0-9]?' | head -n1)
## Full and short texts
#
#[ "$BAT" -le 90 ] && echo "  $BAT% "
#[ "$BAT" -gt 90 ] && echo "  $BAT% "
#
#STATUS=$(cat /sys/class/power_supply/BAT0/status)
##if [ "$STATUS" != "Charging" || "$STATUS" != "Unknown" ]
#if [ "$STATUS" != "Charging" || "$STATUS" != "Full" ]
#then i3lock --fuzzy -r 2 -o -l
#fi
#
## Set urgent flag below 5% or use orange below 20%
##[ ${BAT%?} -le 5 ] && exit 33
##[ ${BAT%?} -le 20 ] && echo "#FF8000"
#
#exit 0
#
#!/bin/bash

#Color
RED="#FF0000"
ORANGE="#FF8000"
GREEN="#00FF00"

#Get data
if [ ! -d /sys/class/power_supply/$1 ]; then exit 0; fi
CHARGE=$(cat /sys/class/power_supply/$1/capacity)
STATUS=$(cat /sys/class/power_supply/$1/status)

#Output
[ $STATUS = "Discharging" ] && EMOJI=🔋 || EMOJI=🔌
[ $CHARGE -lt 15 ] && echo -n "$EMOJI: $CHARGE\n\n$RED\n" && exit 0
[ $CHARGE -lt 25 ] && echo -n "$EMOJI: $CHARGE\n\n$ORANGE\n" && exit 0
printf "$EMOJI: $CHARGE\n\n$GREEN\n" && exit 0
