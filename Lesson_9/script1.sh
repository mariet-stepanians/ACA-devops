#!/bin/bash

echo "Enter a Number"

read number

if (($number % 3 == 0 || $number % 5 == 0 || $number % 7 == 0)); then
    echo "Divisible"
else
    echo "Not Divisible"
fi

