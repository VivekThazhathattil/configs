#!/bin/bash

THERM=$(acpi -t | grep -E -o '[0-9][0-9]')
#THERM=$(acpi -t | awk '/'[0-9][0-9]?%'/{i++}i==2')
# Full and short texts
echo "  $THERM°C "

color=blue
# Set urgent flags above 50 deg and above 60 deg
[ ${THERM%?} -ge 50 ] && echo "FF8000"
[ ${THERM%?} -ge 60 ] && echo "FF8000"
