#!/bin/sh
image=$2
if [ $3 = 1 ]
then
    name="imgproc/level7/level1/"$1
    convert "${image}" $name
    seq 1 4 | xargs -P4 -n1 sh level1.sh $name
fi
if [ $3 = 2 ]
then
    name="imgproc/level7/level2/"$1
    convert -blur 2x2 "${image}" "${name}"
    seq 1 4 | xargs -P4 -n1 sh level2.sh $name
fi
if [ $3 = 3 ]
then
    name="imgproc/level7/level3/"$1
    convert "${image}" "${name}"
    seq 1 4 | xargs -P4 -n1 sh level3.sh $name
fi
if [ $3 = 4 ]
then
    name="imgproc/level7/level4/"$1
    convert "${image}" $name
    seq 1 4 | xargs -P4 -n1 sh level4.sh $name
fi
if [ $3 = 5 ]
then
    name="imgproc/level7/level5/"$1
    convert "${image}" $name
    seq 1 12 | xargs -P12 -n1 sh level5.sh $name
fi
if [ $3 = 6 ]
then
    name="imgproc/level7/level6/"$1
    convert "${image}" $name
    seq 1 16 | xargs -P16 -n1 sh level6.sh $name
fi
   
