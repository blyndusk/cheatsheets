#!/bin/bash 

if [ $2 = "toc" ]; then
  grep -E '\[[0-9]\.?[0-9]?\] - [A-Z]+' $1 | less
elif [ $2 = "goto" ]; then
  less +$(grep -nio "$3" $1 | head -n1 | cut -d : -f 1) $1
fi