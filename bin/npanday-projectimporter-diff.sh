#!/bin/sh

find . -name pom.test | grep -v MavenTestProject  \
  | while read t1
do
  f=`echo $t1 | sed 's#src/test/resource#target/test_sample_projects#' | sed 's#test$#xml#'`
  if [ -f "$f" ]; then
    diff -uwb $t1 $f
    if [ $? != 0 ]; then
      echo vi $t1 $f
    fi
  fi
done
