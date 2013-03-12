#!/bin/bash

find $PWD -name '*.html' | while read source
do

  val=`grep "js/index.js" $source`
  if [ -z "$val" ]; then

    target=$PWD/js

    common_part=$(dirname $source)
    back=
    while [ "${target#$common_part}" = "${target}" ]; do
      common_part=$(dirname $common_part)
      back="../${back}"
    done

    relative=${back}${target#$common_part/}

    echo modifying $source
    sed -i bak "s#</head>#<script type='text/javascript' src='$relative/jquery-1.7.2.min.js'></script><script type='text/javascript' src='$relative/index.js'></script></head>#" $source
  else
    echo skipping $source
  fi
done
