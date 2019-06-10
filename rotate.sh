#!/bin/sh
if [ $1 = 1 ]
then
   dir="tmpproc/rotate0/"
   rotation=0
   seq 1 4 | xargs -P4 -n1 sh rotate2.sh $dir $rotation
fi
if [ $1 = 2 ]
then
   dir="tmpproc/rotate90/"
   rotation=90
   seq 1 4 | xargs -P4 -n1 sh rotate2.sh $dir $rotation
fi
if [ $1 = 3 ]
then
   dir="tmpproc/rotate180/"
   rotation=180
   seq 1 4 | xargs -P4 -n1 sh rotate2.sh $dir $rotation
fi
if [ $1 = 4 ]
then
   dir="tmpproc/rotate270/"
   rotation=270
   seq 1 4 | xargs -P4 -n1 sh rotate2.sh $dir $rotation
fi
