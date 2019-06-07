#!/bin/sh
name=$1
rotate=$2
if [ $3 = 1 ]
then
    size=0.5
    template="tmpproc/inf/rotate"$rotate"/0.5"
    seq 1 4 | xargs -P4 -n1 sh levelinftmp2.sh $name $template $rotate $size
fi
if [ $3 = 2 ]
then
    size=1.0
    template="tmpproc/inf/rotate"$rotate"/1.0"
    seq 1 4 | xargs -P4 -n1 sh levelinftmp2.sh $name $template $rotate $size
fi
if [ $3 = 3 ]
then
    size=2.0
    template="tmpproc/inf/rotate"$rotate"/2.0"
    seq 1 4 | xargs -P4 -n1 sh levelinftmp2.sh $name $template $rotate $size
fi
