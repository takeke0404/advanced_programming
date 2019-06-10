#!/bin/sh
if [ $1 = 1 ]
then
   dir="tmpproc/1.0/"
   size=100
   seq 1 4 | xargs -P4 -n1 sh size2.sh $dir $size
fi
if [ $1 = 2 ]
then
   dir="tmpproc/0.5/"
   size=50
   seq 1 4 | xargs -P4 -n1 sh size2.sh $dir $size
fi
if [ $1 = 3 ]
then
   dir="tmpproc/2.0/"
   size=200
   seq 1 4 | xargs -P4 -n1 sh size2.sh $dir $size
fi
   
