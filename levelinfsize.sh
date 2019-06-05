#!/bin/sh
name=$1
rotate=$2
if [ $3 = 1 ]
then
    template="tmpproc/inf/rotate"$rotate"/0.5"
    seq 1 4 | xargs -P4 -n1 sh levelinftmp.sh $name $template $rotate
fi
if [ $3 = 2 ]
then
    template="tmpproc/inf/rotate"$rotate"/1.0"
    seq 1 4 | xargs -P4 -n1 sh levelinftmp.sh $name $template $rotate
fi
if [ $3 = 3 ]
then
    template="tmpproc/inf/rotate"$rotate"/2.0"
    seq 1 4 | xargs -P4 -n1 sh levelinftmp.sh $name $template $rotate
fi

