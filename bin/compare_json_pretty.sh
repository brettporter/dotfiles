#!/bin/sh

(cat $1 | python -mjson.tool) >/tmp/left.json
(cat $2 | python -mjson.tool) >/tmp/right.json

diff -uwb /tmp/left.json /tmp/right.json
