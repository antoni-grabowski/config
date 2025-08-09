#!/bin/bash
date=$(date +'%a %d/%m/%y %X')
battery=$(acpi -b | awk '{print $4}' | tr -d ',()')
if [ $battery = "charging" ]; then
	battery="Fully charged"
fi
brightness=$(brightnessctl | grep % | cut -d " " -f 4 | tr -d "()")

echo $date "|" $brightness "|" "[" $battery "]"
