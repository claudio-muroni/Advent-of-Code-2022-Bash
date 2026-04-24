#!/bin/bash

file="Input_Day03_1.txt"

alphabet="_abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"
tot=0

mapfile lines < $file

i=0
while [ $i -lt ${#lines[@]} ]; do
	
	line=${lines[i]}

	for (( j=0; j<${#line}; j++ )); do

		c=${line:$j:1}
		if [[ ${lines[i+1]} =~ $c && ${lines[i+2]} =~ $c ]]; then
			break
		fi

	done

	pre=${alphabet%%$c*}
        (( tot+=${#pre} ))


	(( i+=3 ))
done


echo "Day 03 part 2 solution: $tot"
