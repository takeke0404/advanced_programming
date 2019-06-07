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
if [ $1 = level6 ]
then
    for template in $1/*.ppm; do
	bname=`basename ${template}`
	convert "${template}" tmpproc/rotate0/$bname
        convert -rotate 90 "${template}" tmpproc/rotate90/$bname
	convert -rotate 180 "${template}" tmpproc/rotate180/$bname
	convert -rotate 270 "${template}" tmpproc/rotate270/$bname
    done
fi
if [ $1 = level7 ]
then
    for template in $1/*.ppm; do
	bname=`basename ${template}`
	convert "${template}" tmpproc/1.0/$bname
        convert -resize 50% "${template}" tmpproc/0.5/$bname
	convert -resize 200% "${template}" tmpproc/2.0/$bname
    done
    for template in $1/*.ppm; do
	bname=`basename ${template}`
	convert "${template}" tmpproc/rotate0/$bname
        convert -rotate 90 "${template}" tmpproc/rotate90/$bname
	convert -rotate 180 "${template}" tmpproc/rotate180/$bname
	convert -rotate 270 "${template}" tmpproc/rotate270/$bname
    done
fi
if [ $1 = levelinf ]
then
    for template in $1/*.ppm; do
	bname=`basename ${template}`
	convert "${template}" tmpproc/inf/rotate0/$bname
        convert -rotate 90 "${template}" tmpproc/inf/rotate90/$bname
	convert -rotate 180 "${template}" tmpproc/inf/rotate180/$bname
	convert -rotate 270 "${template}" tmpproc/inf/rotate270/$bname
    done
    seq 1 4 | xargs -P4 -n1 sh resize.sh
fi  
rm -rf result/$1*
time seq 0 9 | xargs -P10 -n1 sh parallel.sh $1 

