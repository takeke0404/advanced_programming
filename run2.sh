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
if [ $1 = level5 ]
rm -rf result/level5*.txt
then
   rotation=0
   echo $bname:
   for template in tmpproc/0.5/*.ppm; do
       echo `basename ${template}`
       if [ $x = 0 ]
       then
	   ./matching $name "${template}" rotation 0.5 wpg
       else
	   ./matching $name "${template}" rotation 0.5 pg
       fi
   done
   for template in tmpproc/1.0/*.ppm; do
       echo `basename ${template}`
       if [ $x = 0 ]
       then
	   ./matching $name "${template}" rotation 0.3 wpg
       else
	   ./matching $name "${template}" rotation 0.3 wpg
       fi
   done
   for template in tmpproc/2.0/*.ppm; do
       echo `basename ${template}`
       if [ $x = 0 ]
       then
	   ./matching $name "${template}" rotation 0.3 wpg
       else
	   ./matching $name "${template}" rotation 0.3 wpg
       fi
   done
   echo ""
fi
	 
