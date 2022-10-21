#!/bin/bash

read -p 'Enter number of files: ' file_number
mkdir odd even

for ((i = 1 ; i <= $file_number ; i++)); do 
    if (( $i % 2 == 0 )); then
        touch even/$i.txt
    else
        touch odd/$i.txt
    fi
done
