#!/usr/bin/env bash

dirs=$(ls -d */)

for d in $dirs
do
  cd $d
  forge test -vvv
  if [[ $? -ne 0 ]]
  then
    echo "There were failed testcases"
    exit 1 
  fi
  cd ..
done

echo "All testcases passed"