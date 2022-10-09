#!/bin/bash

set -xe

name=$1
last_name=$2
age=$3
gender=$4

echo "${name} ${last_name} ${age} ${gender}" >> users && cat users
