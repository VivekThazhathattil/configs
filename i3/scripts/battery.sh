#!/bin/bash

BAT=$(acpi -b | grep -E -o '[0-9][0-9][0-9]?' | head -n1)
# Full and short texts

[ "$BAT" -le 90 ] && echo "  $BAT% "
[ "$BAT" -gt 90 ] && echo "  $BAT% "

# Set urgent flag below 5% or use orange below 20%
#[ ${BAT%?} -le 5 ] && exit 33
#[ ${BAT%?} -le 20 ] && echo "#FF8000"

exit 0
