#!/bin/sh
time seq 0 9 | xargs -P10 -n1 sh run2.sh $1 
