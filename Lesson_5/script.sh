#!/bin/bash

set -xe

dir_name=$1
mkdir -p ${dir_name}
file_name=${dir_name}/`whoami`-`date '+%Y-%m-%d-%H-%M-%S'`
echo "`last`" > ${file_name} && gzip ${file_name}
