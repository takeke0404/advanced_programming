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
   convert -median 3 "${image}" "${name}"
   seq 1 4 | xargs -P4 -n1 sh level2.sh $name 
fi
if [ $1 = level3 ]
then
   convert -colors 64 "${image}" "${name}"
   seq 1 4 | xargs -P4 -n1 sh level3.sh $name 
fi
if [ $1 = level4 ]
then
   convert "${image}" $name
   seq 1 4 | xargs -P4 -n1 sh level4.sh $name 
fi

	 
