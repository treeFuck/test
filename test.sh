#!/usr/bin/env bash

digit=${1}

if [[ $digit =~ [0-9] ]]
then
  echo "$digit is a digit."
  else
    echo "Oops!"
fi