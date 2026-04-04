#!/bin/bash

file="Input_Day02_1.txt"

totScore=0
while read -r line; do

	arr=($line)

	if [[ "${arr[1]}" == "Y" ]]; then arr[1]="${arr[0]}"; (( totScore+=3 ));
	elif [[ "${arr[1]}" == "Z" ]]; then
		if [[ "${arr[0]}" == "A" ]]; then arr[1]="B";
        	elif [[ "${arr[0]}" == "B" ]]; then arr[1]="C";
        	elif [[ "${arr[0]}" == "C" ]]; then arr[1]="A";
		fi
		(( totScore+=6 ))
	elif [[ "${arr[1]}" == "X" ]]; then
                if [[ "${arr[0]}" == "A" ]]; then arr[1]="C";
                elif [[ "${arr[0]}" == "B" ]]; then arr[1]="A";
                elif [[ "${arr[0]}" == "C" ]]; then arr[1]="B";
                fi
	fi
	
	if [[ "${arr[1]}" == "A" ]]; then (( totScore+=1 ));
	elif [[ "${arr[1]}" == "B" ]]; then (( totScore+=2 ));
	elif [[ "${arr[1]}" == "C" ]]; then (( totScore+=3 ));
	fi

done < $file

echo "Day 02 part 01 solution: $totScore"
