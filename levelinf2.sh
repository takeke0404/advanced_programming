#!/bin/sh
name=$1
x=0
if [ $2 = 1 ]
then
    rotate=0
    seq 1 3 | xargs -P4 -n1 sh levelinfsize2.sh $name $rotate
fi
if [ $2 = 2 ]
then
    rotate=90
    seq 1 3 | xargs -P4 -n1 sh levelinfsize2.sh $name $rotate
fi
if [ $2 = 3 ]
then
    rotate=180
    seq 1 3 | xargs -P4 -n1 sh levelinfsize2.sh $name $rotate
fi
if [ $2 = 4 ]
then
    rotate=270
    seq 1 3 | xargs -P4 -n1 sh levelinfsize2.sh $name $rotate
fi
