#!/bin/bash

read -p 'Enter the password length: ' password

if (( $password < 8 || $password > 32 )); then
    echo "Password length must be between 8-32"
else
   echo "Your Password:"
   LC_ALL=C tr -dc A-Za-z0-9_ < /dev/urandom | head -c ${password} | xargs
fi

