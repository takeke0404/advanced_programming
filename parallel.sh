#!/bin/sh
# imagemagickで何か画像処理をして，/imgprocにかきこみ，テンプレートマッチング
image=$1/test/$1_00$2.ppm
bname=`basename ${image}`
name="imgproc/"$bname
x=0

if [ $1 = level1 ]
then
   convert "${image}" $name
   seq 1 4 | xargs -P4 -n1 sh level1.sh $name 
fi
if [ $1 = level2 ]
then
   convert -blur 2x2 "${image}" "${name}"
   seq 1 4 | xargs -P4 -n1 sh level2.sh $name 
fi
if [ $1 = level3 ]
then
   convert "${image}" "${name}"
   seq 1 4 | xargs -P4 -n1 sh level3.sh $name 
fi
if [ $1 = level4 ]
then
   convert "${image}" $name
   seq 1 4 | xargs -P4 -n1 sh level4.sh $name 
fi
if [ $1 = level5 ]
then
   convert "${image}" $name
   seq 1 12 | xargs -P12 -n1 sh level5.sh $name 
fi
if [ $1 = level6 ]
then
   convert "${image}" $name
   seq 1 16 | xargs -P16 -n1 sh level6.sh $name    
fi

if [ $1 = level7 ]
then
   seq 1 6 | xargs -P6 -n1 sh level7.sh $bname $image
   sed -i -e '2,6d' ./result/level7_00$2.txt
fi
if [ $1 = levelinf ]
then
   convert "${image}" $name
   seq 1 4 | xargs -P4 -n1 sh levelinf.sh $name
fi

