#!/bin/bash

file="Input_Day01_1.txt"
echo "" >> $file

totCal=0
maxCal=0

while read -r line; do

	if [ "$line" != "" ]; then
		(( totCal+=$line ))
	else
		if (( $totCal > $maxCal )); then
			maxCal=$totCal
		fi
		totCal=0
	fi

done < $file

echo "Day 01 part 01 solution: $maxCal"
