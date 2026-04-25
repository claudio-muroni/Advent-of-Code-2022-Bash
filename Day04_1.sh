#!/bin/bash

file="Input_Day04_1.txt"

tot=0
while read -r line; do

	readarray -d "," -t arr <<< "$line"
	
	readarray -d "-" -t e1 <<< "${arr[0]}"
	readarray -d "-" -t e2 <<< "${arr[1]}"

	if [[ ( ${e1[0]} -ge ${e2[0]} && ${e1[1]} -le ${e2[1]} ) || ( ${e2[0]} -ge ${e1[0]} && ${e2[1]} -le ${e1[1]} ) ]]; then
		
		(( tot++ ))

	fi

done < $file

echo "Day 04 part 01 solution: $tot"
