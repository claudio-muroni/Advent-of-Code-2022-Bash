#!/bin/bash

file="Test_Input_Day01_1.txt"

while read -r line; do

	echo -e "$line"

done < $file
