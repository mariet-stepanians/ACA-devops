#!/bin/bash

#set -xe

Help()
{
    echo "Command syntax: ./<scriptfile.sh> <name> <last_name> <age> <gender>"
}

name=$1
last_name=$2
age=$3
gender=$4

while getopts ":h" option; do
   case $option in
      h)
         Help
         exit;;
   esac
done

if [[ -z "${name}" || -z "${last_name}" || -z "${age}" || -z "${gender}" ]]
then
      echo "Missing one of the inputs: name lastname age gender"
      exit 1
fi

echo "${name} ${last_name} ${age} ${gender}" >> users && cat users
