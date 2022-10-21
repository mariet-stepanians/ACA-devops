#!/bin/bash

read -p 'Enter a Number: ' number

if (($number % 3 == 0 || $number % 5 == 0 || $number % 7 == 0)); then
    echo "Divisible"
else
    echo "Not Divisible"
fi

