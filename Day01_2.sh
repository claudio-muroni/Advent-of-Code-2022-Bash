#!/bin/bash

file="Input_Day01_1.txt"
echo "" >> $file

totCal=0
cal=(0 0 0)

while read -r line; do

	if [ "$line" != "" ]; then
		(( totCal+=$line ))
	else
		if (( $totCal>=${cal[0]} )); then
			cal=("$totCal" "${cal[0]}" "${cal[1]}")
		elif (( $totCal>=${cal[1]} )); then
			cal=("${cal[0]}" "$totCal" "${cal[1]}")
		elif (( $totCal>=${cal[2]} )); then
			cal=("${cal[0]}" "${cal[1]}" "$totCal")
		fi

		totCal=0
	fi

done < "$file"

result=0
for c in "${cal[@]}"; do
	(( result+=$c ))
done

echo "Day 01 part 02 solution: $result"
