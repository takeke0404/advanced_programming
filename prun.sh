#!/bin/sh
if [ $1 = level5 ]
then
    for template in $1/*.ppm; do
	bname=`basename ${template}`
	convert "${template}" tmpproc/1.0/$bname
        convert -resize 50% "${template}" tmpproc/0.5/$bname
	convert -resize 200% "${template}" tmpproc/2.0/$bname
    done
fi
time seq 0 9 | xargs -P10 -n1 sh run2.sh $1 
