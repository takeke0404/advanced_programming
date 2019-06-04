#!/bin/sh
if [ $1 = 1 ]
then
    for template in tmpproc/inf/rotate0/*.ppm; do
	bname=`basename ${template}`
	convert "${template}" tmpproc/inf/rotate0/1.0/$bname
        convert -resize 50% "${template}" tmpproc/inf/rotate0/0.5/$bname
	convert -resize 200% "${template}" tmpproc/inf/rotate0/2.0/$bname
    done
fi
if [ $1 = 2 ]
then
    for template in tmpproc/inf/rotate90/*.ppm; do
	bname=`basename ${template}`
	convert "${template}" tmpproc/inf/rotate90/1.0/$bname
        convert -resize 50% "${template}" tmpproc/inf/rotate90/0.5/$bname
	convert -resize 200% "${template}" tmpproc/inf/rotate90/2.0/$bname
    done
fi
if [ $1 = 3 ]
then
    for template in tmpproc/inf/rotate180/*.ppm; do
	bname=`basename ${template}`
	convert "${template}" tmpproc/inf/rotate180/1.0/$bname
        convert -resize 50% "${template}" tmpproc/inf/rotate180/0.5/$bname
	convert -resize 200% "${template}" tmpproc/inf/rotate180/2.0/$bname
    done
fi
if [ $1 = 4 ]
then
    for template in tmpproc/inf/rotate270/*.ppm; do
	bname=`basename ${template}`
	convert "${template}" tmpproc/inf/rotate270/1.0/$bname
        convert -resize 50% "${template}" tmpproc/inf/rotate270/0.5/$bname
	convert -resize 200% "${template}" tmpproc/inf/rotate270/2.0/$bname
    done
fi

