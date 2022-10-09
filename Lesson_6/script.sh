#!/bin/bash

#set -xe

Help()
{
    echo "Missing inputs: name lastname age gender"
}

name=$1
last_name=$2
age=$3
gender=$4

if [[ -z "${name}" || -z "${last_name}" || -z "${age}" || -z "${gender}" ]]
then
      Help
      exit 1
fi

echo "${name} ${last_name} ${age} ${gender}" >> users && cat users
