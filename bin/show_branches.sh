#!/bin/bash

for i in *
do
(
  cd $i
  ref=`git rev-parse --abbrev-ref HEAD`
  printf '%-50s %s\n' $i $ref
)
done
