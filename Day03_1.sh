#!/bin/bash

file="Input_Day03_1.txt"

alphabet="_abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"
tot=0

while read -r line; do

	len=$((${#line}/2))
	h1=${line:0:$len}
	h2=${line:$len}

	for (( i=0; i<${#h1}; i++ )); do
		
		c=${h1:$i:1}
		if [[ $h2 =~ $c ]]; then
			break
		fi

	done

	pre=${alphabet%%$c*}
	(( tot+=${#pre} ))

done < $file

echo "Day 03 part 1 solution: $tot"
