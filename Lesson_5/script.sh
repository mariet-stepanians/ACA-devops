#!/bin/bash

file_name=`whoami`-`date '+%Y-%m-%d-%H-%M-%S'`
echo "`last`" > ${file_name}
gzip ${file_name}
